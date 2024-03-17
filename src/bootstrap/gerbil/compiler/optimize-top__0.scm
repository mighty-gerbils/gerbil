(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710677339)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp130379 (list gxc#::void::t))
            (__tmp130377
             (let ((__tmp130378
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130378 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp130379
         '()
         __tmp130377
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args128273_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args128273_)))
    (define gxc#::collect-top-level-type-info-bind-methods!
      (let ((__tmp130380
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#define-values
                  gxc#collect-top-level-type-define-values%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-top-level-type-info::t)))))
        (declare (not safe))
        (make-promise __tmp130380)))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx128265_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self128268_
                (let ((__obj130360
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj130360))
               (__tmp130381
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128268_ _stx128265_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130381
           gxc#current-compile-method
           _self128268_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp130384 (list gxc#::false::t))
            (__tmp130382
             (let ((__tmp130383
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130383 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp130384
         '()
         __tmp130382
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args128262_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args128262_)))
    (define gxc#::basic-expression-top-level-type-bind-methods!
      (let ((__tmp130385
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-top-level-type::t
                  '%#begin-annotation
                  gxc#basic-expression-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-top-level-type::t
                  '%#call
                  gxc#basic-expression-type-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::basic-expression-top-level-type::t)))))
        (declare (not safe))
        (make-promise __tmp130385)))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx128254_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self128257_
                (let ((__obj130362
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj130362))
               (__tmp130386
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128257_ _stx128254_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130386
           gxc#current-compile-method
           _self128257_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp130389 (list gxc#::void::t))
            (__tmp130387
             (let ((__tmp130388
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130388 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp130389
         '()
         __tmp130387
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args128251_
        (apply make-instance gxc#::collect-type-info::t _$args128251_)))
    (define gxc#::collect-type-info-bind-methods!
      (let ((__tmp130390
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#define-values
                  gxc#collect-type-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#let-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#letrec-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#letrec*-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#call
                  gxc#collect-type-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-type-info::t)))))
        (declare (not safe))
        (make-promise __tmp130390)))
    (define gxc#apply-collect-type-info
      (lambda (_stx128243_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self128246_
                (let ((__obj130364
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj130364))
               (__tmp130391
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128246_ _stx128243_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130391
           gxc#current-compile-method
           _self128246_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp130394 (list gxc#::false::t))
            (__tmp130392
             (let ((__tmp130393
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130393 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp130394
         '()
         __tmp130392
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args128240_
        (apply make-instance gxc#::basic-expression-type::t _$args128240_)))
    (define gxc#::basic-expression-type-bind-methods!
      (let ((__tmp130395
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#begin
                  gxc#basic-expression-type-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#begin-annotation
                  gxc#basic-expression-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#lambda
                  gxc#basic-expression-type-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#case-lambda
                  gxc#basic-expression-type-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#let-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#letrec-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#letrec*-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#call
                  gxc#basic-expression-type-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-expression-type::t
                  '%#ref
                  gxc#basic-expression-type-ref%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::basic-expression-type::t)))))
        (declare (not safe))
        (make-promise __tmp130395)))
    (define gxc#apply-basic-expression-type
      (lambda (_stx128232_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self128235_
                (let ((__obj130366
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj130366))
               (__tmp130396
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128235_ _stx128232_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130396
           gxc#current-compile-method
           _self128235_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp130399 (list gxc#::basic-xform::t))
            (__tmp130397
             (let ((__tmp130398
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130398 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp130399
         '()
         __tmp130397
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args128229_
        (apply make-instance gxc#::lift-top-lambdas::t _$args128229_)))
    (define gxc#::lift-top-lambdas-bind-methods!
      (let ((__tmp130400
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#define-values
                  gxc#lift-top-lambda-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#let-values
                  gxc#lift-top-lambda-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#letrec-values
                  gxc#lift-top-lambda-letrec-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-top-lambdas::t
                  '%#letrec*-values
                  gxc#lift-top-lambda-letrec-values%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::lift-top-lambdas::t)))))
        (declare (not safe))
        (make-promise __tmp130400)))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx128221_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self128224_
                (let ((__obj130368
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj130368))
               (__tmp130401
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128224_ _stx128221_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130401
           gxc#current-compile-method
           _self128224_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self128123_ _stx128124_)
        (let* ((___stx128286128287_ _stx128124_)
               (_g128127128147_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128286128287_)))))
          (let ((___kont128288128289_
                 (lambda (_L128191_ _L128192_)
                   (let ((_sym128210_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128192_))))
                     (if (let ((__tmp130402 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130402 _sym128210_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128210_))
                         (let ((_type128211128213_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L128191_))))
                           (if _type128211128213_
                               (let ((_type128216_ _type128211128213_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym128210_
                                  _type128216_))
                               '#f))))))
                (___kont128290128291_ (lambda () '#!void)))
            (let ((___match128319128320_
                   (lambda (_e128133128159_
                            _hd128132128162_
                            _tl128131128164_
                            _e128136128167_
                            _hd128135128170_
                            _tl128134128172_
                            _e128139128175_
                            _hd128138128178_
                            _tl128137128180_
                            _e128142128183_
                            _hd128141128186_
                            _tl128140128188_)
                     (let ((_L128191_ _hd128141128186_)
                           (_L128192_ _hd128138128178_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128192_))
                           (___kont128288128289_ _L128191_ _L128192_)
                           (___kont128290128291_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128286128287_))
                  (let ((_e128133128159_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128286128287_))))
                    (let ((_tl128131128164_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128133128159_)))
                          (_hd128132128162_
                           (let ()
                             (declare (not safe))
                             (##car _e128133128159_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128131128164_))
                          (let ((_e128136128167_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128131128164_))))
                            (let ((_tl128134128172_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128136128167_)))
                                  (_hd128135128170_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128136128167_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128135128170_))
                                  (let ((_e128139128175_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128135128170_))))
                                    (let ((_tl128137128180_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128139128175_)))
                                          (_hd128138128178_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128139128175_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128137128180_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128134128172_))
                                              (let ((_e128142128183_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128134128172_))))
                                                (let ((_tl128140128188_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128142128183_)))
                                                      (_hd128141128186_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128142128183_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128140128188_))
                                                      (___match128319128320_
                                                       _e128133128159_
                                                       _hd128132128162_
                                                       _tl128131128164_
                                                       _e128136128167_
                                                       _hd128135128170_
                                                       _tl128134128172_
                                                       _e128139128175_
                                                       _hd128138128178_
                                                       _tl128137128180_
                                                       _e128142128183_
                                                       _hd128141128186_
                                                       _tl128140128188_)
                                                      (___kont128290128291_))))
                                              (___kont128290128291_))
                                          (___kont128290128291_))))
                                  (___kont128290128291_))))
                          (___kont128290128291_))))
                  (___kont128290128291_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self127978_ _stx127979_)
        (let* ((___stx128322128323_ _stx127979_)
               (_g127982128013_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128322128323_)))))
          (let ((___kont128324128325_
                 (lambda (_L128095_ _L128096_)
                   (let ((_sym128112_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128096_))))
                     (if (let ((__tmp130403 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130403 _sym128112_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128112_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym128112_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym128112_))
                             (let ((_type128113128115_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L128095_))))
                               (if _type128113128115_
                                   (let ((_type128118_ _type128113128115_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym128112_
                                      _type128118_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self127978_ _L128095_)))))
                (___kont128326128327_
                 (lambda (_L128042_ _L128043_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127978_ _L128042_)))))
            (let ((___match128355128356_
                   (lambda (_e127988128063_
                            _hd127987128066_
                            _tl127986128068_
                            _e127991128071_
                            _hd127990128074_
                            _tl127989128076_
                            _e127994128079_
                            _hd127993128082_
                            _tl127992128084_
                            _e127997128087_
                            _hd127996128090_
                            _tl127995128092_)
                     (let ((_L128095_ _hd127996128090_)
                           (_L128096_ _hd127993128082_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128096_))
                           (___kont128324128325_ _L128095_ _L128096_)
                           (___kont128326128327_
                            _hd127996128090_
                            _hd127990128074_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128322128323_))
                  (let ((_e127988128063_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128322128323_))))
                    (let ((_tl127986128068_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127988128063_)))
                          (_hd127987128066_
                           (let ()
                             (declare (not safe))
                             (##car _e127988128063_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127986128068_))
                          (let ((_e127991128071_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127986128068_))))
                            (let ((_tl127989128076_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127991128071_)))
                                  (_hd127990128074_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127991128071_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127990128074_))
                                  (let ((_e127994128079_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127990128074_))))
                                    (let ((_tl127992128084_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127994128079_)))
                                          (_hd127993128082_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127994128079_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127992128084_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127989128076_))
                                              (let ((_e127997128087_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127989128076_))))
                                                (let ((_tl127995128092_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127997128087_)))
                                                      (_hd127996128090_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127997128087_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127995128092_))
                                                      (___match128355128356_
                                                       _e127988128063_
                                                       _hd127987128066_
                                                       _tl127986128068_
                                                       _e127991128071_
                                                       _hd127990128074_
                                                       _tl127989128076_
                                                       _e127994128079_
                                                       _hd127993128082_
                                                       _tl127992128084_
                                                       _e127997128087_
                                                       _hd127996128090_
                                                       _tl127995128092_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127982128013_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127982128013_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127989128076_))
                                              (let ((_e128008128034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127989128076_))))
                                                (let ((_tl128006128039_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128008128034_)))
                                                      (_hd128007128037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128008128034_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128006128039_))
                                                      (___kont128326128327_
                                                       _hd128007128037_
                                                       _hd127990128074_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127982128013_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127982128013_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127989128076_))
                                      (let ((_e128008128034_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127989128076_))))
                                        (let ((_tl128006128039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e128008128034_)))
                                              (_hd128007128037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e128008128034_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl128006128039_))
                                              (___kont128326128327_
                                               _hd128007128037_
                                               _hd127990128074_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127982128013_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127982128013_))))))
                          (let () (declare (not safe)) (_g127982128013_)))))
                  (let () (declare (not safe)) (_g127982128013_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self127758_ _stx127759_)
        (letrec ((_collect-e127761_
                  (lambda (_hd127922_ _expr127923_)
                    (let* ((___stx128378128379_ _hd127922_)
                           (_g127926127936_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx128378128379_)))))
                      (let ((___kont128380128381_
                             (lambda (_L127956_)
                               (let ((_sym127967_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L127956_))))
                                 (if (let ((__tmp130404
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp130404 _sym127967_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym127967_))
                                     (let ((_type127968127970_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr127923_))))
                                       (if _type127968127970_
                                           (let ((_type127973_
                                                  _type127968127970_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym127967_
                                              _type127973_
                                              '#t))
                                           '#f))))))
                            (___kont128382128383_ (lambda () '#!void)))
                        (let ((___match128391128392_
                               (lambda (_e127931127948_
                                        _hd127930127951_
                                        _tl127929127953_)
                                 (let ((_L127956_ _hd127930127951_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L127956_))
                                       (___kont128380128381_ _L127956_)
                                       (___kont128382128383_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx128378128379_))
                              (let ((_e127931127948_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx128378128379_))))
                                (let ((_tl127929127953_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127931127948_)))
                                      (_hd127930127951_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127931127948_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127929127953_))
                                      (___match128391128392_
                                       _e127931127948_
                                       _hd127930127951_
                                       _tl127929127953_)
                                      (___kont128382128383_))))
                              (___kont128382128383_))))))))
          (let* ((_g127763127798_
                  (lambda (_g127764127795_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g127764127795_))))
                 (_g127762127919_
                  (lambda (_g127764127801_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g127764127801_))
                        (let ((_e127770127803_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g127764127801_))))
                          (let ((_hd127769127806_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127770127803_)))
                                (_tl127768127808_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127770127803_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl127768127808_))
                                (let ((_e127773127811_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl127768127808_))))
                                  (let ((_hd127772127814_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e127773127811_)))
                                        (_tl127771127816_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e127773127811_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd127772127814_))
                                        (let ((_g130405_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd127772127814_
                                                  '0))))
                                          (begin
                                            (let ((_g130406_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g130405_)
                                                         (##vector-length
                                                          _g130405_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g130406_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g130406_)))
                                            (let ((_target127774127819_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130405_
                                                      0)))
                                                  (_tl127776127821_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130405_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127776127821_))
                                                  (letrec ((_loop127777127824_
                                                            (lambda (_hd127775127827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr127781127829_
                             _hd127782127831_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127775127827_))
                          (let ((_e127778127834_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127775127827_))))
                            (let ((_lp-hd127779127837_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127778127834_)))
                                  (_lp-tl127780127839_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127778127834_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd127779127837_))
                                  (let ((_e127787127842_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd127779127837_))))
                                    (let ((_hd127786127845_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127787127842_)))
                                          (_tl127785127847_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127787127842_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127785127847_))
                                          (let ((_e127790127850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127785127847_))))
                                            (let ((_hd127789127853_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127790127850_)))
                                                  (_tl127788127855_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127790127850_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127788127855_))
                                                  (let ((__tmp130411
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd127789127853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr127781127829_)))
                (__tmp130410
                 (let ()
                   (declare (not safe))
                   (cons _hd127786127845_ _hd127782127831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop127777127824_
                                                     _lp-tl127780127839_
                                                     __tmp130411
                                                     __tmp130410))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127763127798_
                                                     _g127764127801_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127763127798_
                                             _g127764127801_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127763127798_ _g127764127801_)))))
                          (let ((_expr127783127858_
                                 (reverse _expr127781127829_))
                                (_hd127784127860_ (reverse _hd127782127831_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl127771127816_))
                                (let ((_e127793127863_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl127771127816_))))
                                  (let ((_hd127792127866_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e127793127863_)))
                                        (_tl127791127868_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e127793127863_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127791127868_))
                                        ((lambda (_L127871_
                                                  _L127872_
                                                  _L127873_)
                                           (for-each
                                            _collect-e127761_
                                            (let ((__tmp130407
                                                   (lambda (_g127893127896_
                                                            _g127894127898_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127893127896_
                                                             _g127894127898_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130407
                                                      '()
                                                      _L127873_))
                                            (let ((__tmp130408
                                                   (lambda (_g127900127903_
                                                            _g127901127905_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127900127903_
                                                             _g127901127905_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130408
                                                      '()
                                                      _L127872_)))
                                           (for-each
                                            (lambda (_g127907127909_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self127758_
                                                 _g127907127909_)))
                                            (let ((__tmp130409
                                                   (lambda (_g127911127914_
                                                            _g127912127916_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127911127914_
                                                             _g127912127916_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130409
                                                      '()
                                                      _L127872_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self127758_
                                              _L127871_)))
                                         _hd127792127866_
                                         _expr127783127858_
                                         _hd127784127860_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127763127798_ _g127764127801_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127763127798_ _g127764127801_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop127777127824_
                                                       _target127774127819_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127763127798_
                                                     _g127764127801_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g127763127798_ _g127764127801_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127763127798_ _g127764127801_)))))
                        (let ()
                          (declare (not safe))
                          (_g127763127798_ _g127764127801_))))))
            (declare (not safe))
            (_g127762127919_ _stx127759_)))))
    (define gxc#collect-type-call%
      (lambda (_self127245_ _stx127246_)
        (let* ((___stx128394128395_ _stx127246_)
               (_g127250127365_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128394128395_)))))
          (let ((___kont128396128397_
                 (lambda (_L127708_ _L127709_ _L127710_ _L127711_ _L127712_)
                   (let ((__tmp130415
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127711_)))
                         (__tmp130414
                          (let () (declare (not safe)) (gx#stx-e _L127710_)))
                         (__tmp130413
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127709_)))
                         (__tmp130412
                          (let () (declare (not safe)) (gx#stx-e _L127708_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130415
                      __tmp130414
                      __tmp130413
                      __tmp130412))))
                (___kont128398128399_
                 (lambda (_L127536_ _L127537_ _L127538_ _L127539_)
                   (let ((__tmp130418
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127538_)))
                         (__tmp130417
                          (let () (declare (not safe)) (gx#stx-e _L127537_)))
                         (__tmp130416
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127536_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130418
                      __tmp130417
                      __tmp130416
                      '#f))))
                (___kont128400128401_
                 (lambda (_L127402_)
                   (for-each
                    (lambda (_g127415127417_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self127245_ _g127415127417_)))
                    (let ((__tmp130419
                           (lambda (_g127419127422_ _g127420127424_)
                             (let ()
                               (declare (not safe))
                               (cons _g127419127422_ _g127420127424_)))))
                      (declare (not safe))
                      (foldr1 __tmp130419 '() _L127402_))))))
            (let* ((___match128651128652_
                    (lambda (_e127351127370_
                             _hd127350127373_
                             _tl127349127375_
                             ___splice128402128403_
                             _target127352127378_
                             _tl127354127380_)
                      (letrec ((_loop127355127383_
                                (lambda (_hd127353127386_ _expr127359127388_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd127353127386_))
                                      (let ((_e127356127391_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd127353127386_))))
                                        (let ((_lp-tl127358127396_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127356127391_)))
                                              (_lp-hd127357127394_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127356127391_))))
                                          (let ((__tmp130420
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd127357127394_
                                                         _expr127359127388_))))
                                            (declare (not safe))
                                            (_loop127355127383_
                                             _lp-tl127358127396_
                                             __tmp130420))))
                                      (let ((_expr127360127399_
                                             (reverse _expr127359127388_)))
                                        (___kont128400128401_
                                         _expr127360127399_))))))
                        (let ()
                          (declare (not safe))
                          (_loop127355127383_ _target127352127378_ '())))))
                   (___match128531128532_
                    (lambda (_e127259127580_
                             _hd127258127583_
                             _tl127257127585_
                             _e127262127588_
                             _hd127261127591_
                             _tl127260127593_
                             _e127265127596_
                             _hd127264127599_
                             _tl127263127601_
                             _e127268127604_
                             _hd127267127607_
                             _tl127266127609_
                             _e127271127612_
                             _hd127270127615_
                             _tl127269127617_
                             _e127274127620_
                             _hd127273127623_
                             _tl127272127625_
                             _e127277127628_
                             _hd127276127631_
                             _tl127275127633_
                             _e127280127636_
                             _hd127279127639_
                             _tl127278127641_
                             _e127283127644_
                             _hd127282127647_
                             _tl127281127649_
                             _e127286127652_
                             _hd127285127655_
                             _tl127284127657_
                             _e127289127660_
                             _hd127288127663_
                             _tl127287127665_
                             _e127292127668_
                             _hd127291127671_
                             _tl127290127673_
                             _e127295127676_
                             _hd127294127679_
                             _tl127293127681_
                             _e127298127684_
                             _hd127297127687_
                             _tl127296127689_
                             _e127301127692_
                             _hd127300127695_
                             _tl127299127697_
                             _e127304127700_
                             _hd127303127703_
                             _tl127302127705_)
                      (let ((_L127708_ _hd127303127703_)
                            (_L127709_ _hd127294127679_)
                            (_L127710_ _hd127285127655_)
                            (_L127711_ _hd127276127631_)
                            (_L127712_ _hd127267127607_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L127712_
                               'bind-method!))
                            (___kont128396128397_
                             _L127708_
                             _L127709_
                             _L127710_
                             _L127711_
                             _L127712_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl127257127585_))
                                (let ((___splice128402128403_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl127257127585_
                                          '0))))
                                  (let ((_tl127354127380_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128402128403_
                                            '1)))
                                        (_target127352127378_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128402128403_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127354127380_))
                                        (___match128651128652_
                                         _e127259127580_
                                         _hd127258127583_
                                         _tl127257127585_
                                         ___splice128402128403_
                                         _target127352127378_
                                         _tl127354127380_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127250127365_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127250127365_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128394128395_))
                  (let ((_e127259127580_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128394128395_))))
                    (let ((_tl127257127585_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127259127580_)))
                          (_hd127258127583_
                           (let ()
                             (declare (not safe))
                             (##car _e127259127580_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127257127585_))
                          (let ((_e127262127588_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127257127585_))))
                            (let ((_tl127260127593_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127262127588_)))
                                  (_hd127261127591_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127262127588_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127261127591_))
                                  (let ((_e127265127596_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127261127591_))))
                                    (let ((_tl127263127601_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127265127596_)))
                                          (_hd127264127599_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127265127596_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd127264127599_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd127264127599_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127263127601_))
                                                  (let ((_e127268127604_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127263127601_))))
                                                    (let ((_tl127266127609_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127268127604_)))
                                                          (_hd127267127607_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127268127604_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127266127609_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl127260127593_))
                      (let ((_e127271127612_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127260127593_))))
                        (let ((_tl127269127617_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127271127612_)))
                              (_hd127270127615_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127271127612_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd127270127615_))
                              (let ((_e127274127620_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd127270127615_))))
                                (let ((_tl127272127625_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127274127620_)))
                                      (_hd127273127623_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127274127620_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd127273127623_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd127273127623_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127272127625_))
                                              (let ((_e127277127628_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127272127625_))))
                                                (let ((_tl127275127633_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127277127628_)))
                                                      (_hd127276127631_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127277127628_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127275127633_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl127269127617_))
                                                          (let ((_e127280127636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl127269127617_))))
                    (let ((_tl127278127641_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127280127636_)))
                          (_hd127279127639_
                           (let ()
                             (declare (not safe))
                             (##car _e127280127636_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127279127639_))
                          (let ((_e127283127644_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127279127639_))))
                            (let ((_tl127281127649_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127283127644_)))
                                  (_hd127282127647_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127283127644_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd127282127647_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd127282127647_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127281127649_))
                                          (let ((_e127286127652_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127281127649_))))
                                            (let ((_tl127284127657_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127286127652_)))
                                                  (_hd127285127655_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127286127652_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127284127657_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127278127641_))
                                                      (let ((_e127289127660_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127278127641_))))
                (let ((_tl127287127665_
                       (let () (declare (not safe)) (##cdr _e127289127660_)))
                      (_hd127288127663_
                       (let () (declare (not safe)) (##car _e127289127660_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd127288127663_))
                      (let ((_e127292127668_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd127288127663_))))
                        (let ((_tl127290127673_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127292127668_)))
                              (_hd127291127671_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127292127668_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd127291127671_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd127291127671_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127290127673_))
                                      (let ((_e127295127676_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127290127673_))))
                                        (let ((_tl127293127681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127295127676_)))
                                              (_hd127294127679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127295127676_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127293127681_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127287127665_))
                                                  (let ((_e127298127684_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127287127665_))))
                                                    (let ((_tl127296127689_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127298127684_)))
                                                          (_hd127297127687_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127298127684_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd127297127687_))
                                                          (let ((_e127301127692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd127297127687_))))
                    (let ((_tl127299127697_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127301127692_)))
                          (_hd127300127695_
                           (let ()
                             (declare (not safe))
                             (##car _e127301127692_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd127300127695_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd127300127695_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl127299127697_))
                                  (let ((_e127304127700_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl127299127697_))))
                                    (let ((_tl127302127705_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127304127700_)))
                                          (_hd127303127703_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127304127700_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127302127705_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127296127689_))
                                              (___match128531128532_
                                               _e127259127580_
                                               _hd127258127583_
                                               _tl127257127585_
                                               _e127262127588_
                                               _hd127261127591_
                                               _tl127260127593_
                                               _e127265127596_
                                               _hd127264127599_
                                               _tl127263127601_
                                               _e127268127604_
                                               _hd127267127607_
                                               _tl127266127609_
                                               _e127271127612_
                                               _hd127270127615_
                                               _tl127269127617_
                                               _e127274127620_
                                               _hd127273127623_
                                               _tl127272127625_
                                               _e127277127628_
                                               _hd127276127631_
                                               _tl127275127633_
                                               _e127280127636_
                                               _hd127279127639_
                                               _tl127278127641_
                                               _e127283127644_
                                               _hd127282127647_
                                               _tl127281127649_
                                               _e127286127652_
                                               _hd127285127655_
                                               _tl127284127657_
                                               _e127289127660_
                                               _hd127288127663_
                                               _tl127287127665_
                                               _e127292127668_
                                               _hd127291127671_
                                               _tl127290127673_
                                               _e127295127676_
                                               _hd127294127679_
                                               _tl127293127681_
                                               _e127298127684_
                                               _hd127297127687_
                                               _tl127296127689_
                                               _e127301127692_
                                               _hd127300127695_
                                               _tl127299127697_
                                               _e127304127700_
                                               _hd127303127703_
                                               _tl127302127705_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127257127585_))
                                                  (let ((___splice128402128403_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127257127585_
                                                            '0))))
                                                    (let ((_tl127354127380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128402128403_
                                                              '1)))
                                                          (_target127352127378_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128402128403_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127354127380_))
                                                          (___match128651128652_
                                                           _e127259127580_
                                                           _hd127258127583_
                                                           _tl127257127585_
                                                           ___splice128402128403_
                                                           _target127352127378_
                                                           _tl127354127380_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127250127365_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127250127365_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127257127585_))
                                              (let ((___splice128402128403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127257127585_
                                                        '0))))
                                                (let ((_tl127354127380_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128402128403_
                                                          '1)))
                                                      (_target127352127378_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128402128403_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127354127380_))
                                                      (___match128651128652_
                                                       _e127259127580_
                                                       _hd127258127583_
                                                       _tl127257127585_
                                                       ___splice128402128403_
                                                       _target127352127378_
                                                       _tl127354127380_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127250127365_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127250127365_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127257127585_))
                                      (let ((___splice128402128403_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127257127585_
                                                '0))))
                                        (let ((_tl127354127380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128402128403_
                                                  '1)))
                                              (_target127352127378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128402128403_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127354127380_))
                                              (___match128651128652_
                                               _e127259127580_
                                               _hd127258127583_
                                               _tl127257127585_
                                               ___splice128402128403_
                                               _target127352127378_
                                               _tl127354127380_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127250127365_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127250127365_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127257127585_))
                                  (let ((___splice128402128403_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127257127585_
                                            '0))))
                                    (let ((_tl127354127380_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128402128403_
                                              '1)))
                                          (_target127352127378_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128402128403_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127354127380_))
                                          (___match128651128652_
                                           _e127259127580_
                                           _hd127258127583_
                                           _tl127257127585_
                                           ___splice128402128403_
                                           _target127352127378_
                                           _tl127354127380_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127250127365_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127250127365_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127257127585_))
                              (let ((___splice128402128403_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127257127585_
                                        '0))))
                                (let ((_tl127354127380_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128402128403_
                                          '1)))
                                      (_target127352127378_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128402128403_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127354127380_))
                                      (___match128651128652_
                                       _e127259127580_
                                       _hd127258127583_
                                       _tl127257127585_
                                       ___splice128402128403_
                                       _target127352127378_
                                       _tl127354127380_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127250127365_)))))
                              (let ()
                                (declare (not safe))
                                (_g127250127365_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127257127585_))
                      (let ((___splice128402128403_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127257127585_ '0))))
                        (let ((_tl127354127380_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128402128403_ '1)))
                              (_target127352127378_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128402128403_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127354127380_))
                              (___match128651128652_
                               _e127259127580_
                               _hd127258127583_
                               _tl127257127585_
                               ___splice128402128403_
                               _target127352127378_
                               _tl127354127380_)
                              (let ()
                                (declare (not safe))
                                (_g127250127365_)))))
                      (let () (declare (not safe)) (_g127250127365_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127287127665_))
                                                      (if (let ((__tmp130421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp130421 'bind-method!))
                  (let ((_L127536_ _hd127294127679_)
                        (_L127537_ _hd127285127655_)
                        (_L127538_ _hd127276127631_)
                        (_L127539_ _hd127267127607_))
                    (___kont128398128399_
                     _L127536_
                     _L127537_
                     _L127538_
                     _L127539_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127257127585_))
                      (let ((___splice128402128403_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127257127585_ '0))))
                        (let ((_tl127354127380_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128402128403_ '1)))
                              (_target127352127378_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128402128403_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127354127380_))
                              (___match128651128652_
                               _e127259127580_
                               _hd127258127583_
                               _tl127257127585_
                               ___splice128402128403_
                               _target127352127378_
                               _tl127354127380_)
                              (let ()
                                (declare (not safe))
                                (_g127250127365_)))))
                      (let () (declare (not safe)) (_g127250127365_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127257127585_))
                  (let ((___splice128402128403_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127257127585_ '0))))
                    (let ((_tl127354127380_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128402128403_ '1)))
                          (_target127352127378_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128402128403_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127354127380_))
                          (___match128651128652_
                           _e127259127580_
                           _hd127258127583_
                           _tl127257127585_
                           ___splice128402128403_
                           _target127352127378_
                           _tl127354127380_)
                          (let () (declare (not safe)) (_g127250127365_)))))
                  (let () (declare (not safe)) (_g127250127365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127257127585_))
                                                  (let ((___splice128402128403_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127257127585_
                                                            '0))))
                                                    (let ((_tl127354127380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128402128403_
                                                              '1)))
                                                          (_target127352127378_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128402128403_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127354127380_))
                                                          (___match128651128652_
                                                           _e127259127580_
                                                           _hd127258127583_
                                                           _tl127257127585_
                                                           ___splice128402128403_
                                                           _target127352127378_
                                                           _tl127354127380_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127250127365_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127250127365_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127257127585_))
                                          (let ((___splice128402128403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127257127585_
                                                    '0))))
                                            (let ((_tl127354127380_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128402128403_
                                                      '1)))
                                                  (_target127352127378_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128402128403_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127354127380_))
                                                  (___match128651128652_
                                                   _e127259127580_
                                                   _hd127258127583_
                                                   _tl127257127585_
                                                   ___splice128402128403_
                                                   _target127352127378_
                                                   _tl127354127380_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127250127365_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127250127365_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127257127585_))
                                      (let ((___splice128402128403_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127257127585_
                                                '0))))
                                        (let ((_tl127354127380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128402128403_
                                                  '1)))
                                              (_target127352127378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128402128403_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127354127380_))
                                              (___match128651128652_
                                               _e127259127580_
                                               _hd127258127583_
                                               _tl127257127585_
                                               ___splice128402128403_
                                               _target127352127378_
                                               _tl127354127380_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127250127365_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127250127365_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127257127585_))
                                  (let ((___splice128402128403_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127257127585_
                                            '0))))
                                    (let ((_tl127354127380_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128402128403_
                                              '1)))
                                          (_target127352127378_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128402128403_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127354127380_))
                                          (___match128651128652_
                                           _e127259127580_
                                           _hd127258127583_
                                           _tl127257127585_
                                           ___splice128402128403_
                                           _target127352127378_
                                           _tl127354127380_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127250127365_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127250127365_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127257127585_))
                          (let ((___splice128402128403_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127257127585_
                                    '0))))
                            (let ((_tl127354127380_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128402128403_ '1)))
                                  (_target127352127378_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128402128403_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127354127380_))
                                  (___match128651128652_
                                   _e127259127580_
                                   _hd127258127583_
                                   _tl127257127585_
                                   ___splice128402128403_
                                   _target127352127378_
                                   _tl127354127380_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127250127365_)))))
                          (let () (declare (not safe)) (_g127250127365_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127257127585_))
                  (let ((___splice128402128403_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127257127585_ '0))))
                    (let ((_tl127354127380_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128402128403_ '1)))
                          (_target127352127378_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128402128403_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127354127380_))
                          (___match128651128652_
                           _e127259127580_
                           _hd127258127583_
                           _tl127257127585_
                           ___splice128402128403_
                           _target127352127378_
                           _tl127354127380_)
                          (let () (declare (not safe)) (_g127250127365_)))))
                  (let () (declare (not safe)) (_g127250127365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127257127585_))
                                                      (let ((___splice128402128403_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127257127585_ '0))))
                (let ((_tl127354127380_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128402128403_ '1)))
                      (_target127352127378_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128402128403_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127354127380_))
                      (___match128651128652_
                       _e127259127580_
                       _hd127258127583_
                       _tl127257127585_
                       ___splice128402128403_
                       _target127352127378_
                       _tl127354127380_)
                      (let () (declare (not safe)) (_g127250127365_)))))
              (let () (declare (not safe)) (_g127250127365_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127257127585_))
                                              (let ((___splice128402128403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127257127585_
                                                        '0))))
                                                (let ((_tl127354127380_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128402128403_
                                                          '1)))
                                                      (_target127352127378_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128402128403_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127354127380_))
                                                      (___match128651128652_
                                                       _e127259127580_
                                                       _hd127258127583_
                                                       _tl127257127585_
                                                       ___splice128402128403_
                                                       _target127352127378_
                                                       _tl127354127380_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127250127365_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127250127365_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127257127585_))
                                          (let ((___splice128402128403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127257127585_
                                                    '0))))
                                            (let ((_tl127354127380_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128402128403_
                                                      '1)))
                                                  (_target127352127378_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128402128403_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127354127380_))
                                                  (___match128651128652_
                                                   _e127259127580_
                                                   _hd127258127583_
                                                   _tl127257127585_
                                                   ___splice128402128403_
                                                   _target127352127378_
                                                   _tl127354127380_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127250127365_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127250127365_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127257127585_))
                                      (let ((___splice128402128403_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127257127585_
                                                '0))))
                                        (let ((_tl127354127380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128402128403_
                                                  '1)))
                                              (_target127352127378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128402128403_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127354127380_))
                                              (___match128651128652_
                                               _e127259127580_
                                               _hd127258127583_
                                               _tl127257127585_
                                               ___splice128402128403_
                                               _target127352127378_
                                               _tl127354127380_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127250127365_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127250127365_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127257127585_))
                              (let ((___splice128402128403_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127257127585_
                                        '0))))
                                (let ((_tl127354127380_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128402128403_
                                          '1)))
                                      (_target127352127378_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128402128403_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127354127380_))
                                      (___match128651128652_
                                       _e127259127580_
                                       _hd127258127583_
                                       _tl127257127585_
                                       ___splice128402128403_
                                       _target127352127378_
                                       _tl127354127380_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127250127365_)))))
                              (let ()
                                (declare (not safe))
                                (_g127250127365_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127257127585_))
                      (let ((___splice128402128403_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127257127585_ '0))))
                        (let ((_tl127354127380_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128402128403_ '1)))
                              (_target127352127378_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128402128403_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127354127380_))
                              (___match128651128652_
                               _e127259127580_
                               _hd127258127583_
                               _tl127257127585_
                               ___splice128402128403_
                               _target127352127378_
                               _tl127354127380_)
                              (let ()
                                (declare (not safe))
                                (_g127250127365_)))))
                      (let () (declare (not safe)) (_g127250127365_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127257127585_))
                  (let ((___splice128402128403_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127257127585_ '0))))
                    (let ((_tl127354127380_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128402128403_ '1)))
                          (_target127352127378_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128402128403_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127354127380_))
                          (___match128651128652_
                           _e127259127580_
                           _hd127258127583_
                           _tl127257127585_
                           ___splice128402128403_
                           _target127352127378_
                           _tl127354127380_)
                          (let () (declare (not safe)) (_g127250127365_)))))
                  (let () (declare (not safe)) (_g127250127365_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127257127585_))
                                                  (let ((___splice128402128403_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127257127585_
                                                            '0))))
                                                    (let ((_tl127354127380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128402128403_
                                                              '1)))
                                                          (_target127352127378_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128402128403_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127354127380_))
                                                          (___match128651128652_
                                                           _e127259127580_
                                                           _hd127258127583_
                                                           _tl127257127585_
                                                           ___splice128402128403_
                                                           _target127352127378_
                                                           _tl127354127380_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127250127365_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127250127365_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127257127585_))
                                              (let ((___splice128402128403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127257127585_
                                                        '0))))
                                                (let ((_tl127354127380_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128402128403_
                                                          '1)))
                                                      (_target127352127378_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128402128403_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127354127380_))
                                                      (___match128651128652_
                                                       _e127259127580_
                                                       _hd127258127583_
                                                       _tl127257127585_
                                                       ___splice128402128403_
                                                       _target127352127378_
                                                       _tl127354127380_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127250127365_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127250127365_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127257127585_))
                                          (let ((___splice128402128403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127257127585_
                                                    '0))))
                                            (let ((_tl127354127380_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128402128403_
                                                      '1)))
                                                  (_target127352127378_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128402128403_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127354127380_))
                                                  (___match128651128652_
                                                   _e127259127580_
                                                   _hd127258127583_
                                                   _tl127257127585_
                                                   ___splice128402128403_
                                                   _target127352127378_
                                                   _tl127354127380_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127250127365_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127250127365_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127257127585_))
                                  (let ((___splice128402128403_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127257127585_
                                            '0))))
                                    (let ((_tl127354127380_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128402128403_
                                              '1)))
                                          (_target127352127378_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128402128403_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127354127380_))
                                          (___match128651128652_
                                           _e127259127580_
                                           _hd127258127583_
                                           _tl127257127585_
                                           ___splice128402128403_
                                           _target127352127378_
                                           _tl127354127380_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127250127365_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127250127365_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127257127585_))
                          (let ((___splice128402128403_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127257127585_
                                    '0))))
                            (let ((_tl127354127380_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128402128403_ '1)))
                                  (_target127352127378_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128402128403_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127354127380_))
                                  (___match128651128652_
                                   _e127259127580_
                                   _hd127258127583_
                                   _tl127257127585_
                                   ___splice128402128403_
                                   _target127352127378_
                                   _tl127354127380_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127250127365_)))))
                          (let () (declare (not safe)) (_g127250127365_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127257127585_))
                      (let ((___splice128402128403_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127257127585_ '0))))
                        (let ((_tl127354127380_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128402128403_ '1)))
                              (_target127352127378_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128402128403_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127354127380_))
                              (___match128651128652_
                               _e127259127580_
                               _hd127258127583_
                               _tl127257127585_
                               ___splice128402128403_
                               _target127352127378_
                               _tl127354127380_)
                              (let ()
                                (declare (not safe))
                                (_g127250127365_)))))
                      (let () (declare (not safe)) (_g127250127365_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127257127585_))
                                                      (let ((___splice128402128403_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127257127585_ '0))))
                (let ((_tl127354127380_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128402128403_ '1)))
                      (_target127352127378_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128402128403_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127354127380_))
                      (___match128651128652_
                       _e127259127580_
                       _hd127258127583_
                       _tl127257127585_
                       ___splice128402128403_
                       _target127352127378_
                       _tl127354127380_)
                      (let () (declare (not safe)) (_g127250127365_)))))
              (let () (declare (not safe)) (_g127250127365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127257127585_))
                                                  (let ((___splice128402128403_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127257127585_
                                                            '0))))
                                                    (let ((_tl127354127380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128402128403_
                                                              '1)))
                                                          (_target127352127378_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128402128403_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127354127380_))
                                                          (___match128651128652_
                                                           _e127259127580_
                                                           _hd127258127583_
                                                           _tl127257127585_
                                                           ___splice128402128403_
                                                           _target127352127378_
                                                           _tl127354127380_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127250127365_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127250127365_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127257127585_))
                                              (let ((___splice128402128403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127257127585_
                                                        '0))))
                                                (let ((_tl127354127380_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128402128403_
                                                          '1)))
                                                      (_target127352127378_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128402128403_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127354127380_))
                                                      (___match128651128652_
                                                       _e127259127580_
                                                       _hd127258127583_
                                                       _tl127257127585_
                                                       ___splice128402128403_
                                                       _target127352127378_
                                                       _tl127354127380_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127250127365_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127250127365_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127257127585_))
                                      (let ((___splice128402128403_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127257127585_
                                                '0))))
                                        (let ((_tl127354127380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128402128403_
                                                  '1)))
                                              (_target127352127378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128402128403_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127354127380_))
                                              (___match128651128652_
                                               _e127259127580_
                                               _hd127258127583_
                                               _tl127257127585_
                                               ___splice128402128403_
                                               _target127352127378_
                                               _tl127354127380_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127250127365_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127250127365_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127257127585_))
                              (let ((___splice128402128403_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127257127585_
                                        '0))))
                                (let ((_tl127354127380_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128402128403_
                                          '1)))
                                      (_target127352127378_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128402128403_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127354127380_))
                                      (___match128651128652_
                                       _e127259127580_
                                       _hd127258127583_
                                       _tl127257127585_
                                       ___splice128402128403_
                                       _target127352127378_
                                       _tl127354127380_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127250127365_)))))
                              (let ()
                                (declare (not safe))
                                (_g127250127365_))))))
                  (let () (declare (not safe)) (_g127250127365_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self127184_ _stx127185_)
        (let* ((___stx128654128655_ _stx127185_)
               (_g127188127201_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128654128655_)))))
          (let ((___kont128656128657_
                 (lambda (_L127229_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127184_ _L127229_))))
                (___kont128658128659_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128654128655_))
                (let ((_e127193127213_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128654128655_))))
                  (let ((_tl127191127218_
                         (let () (declare (not safe)) (##cdr _e127193127213_)))
                        (_hd127192127216_
                         (let ()
                           (declare (not safe))
                           (##car _e127193127213_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl127191127218_))
                        (let ((_e127196127221_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl127191127218_))))
                          (let ((_tl127194127226_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127196127221_)))
                                (_hd127195127224_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127196127221_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl127194127226_))
                                (___kont128656128657_ _hd127195127224_)
                                (___kont128658128659_))))
                        (___kont128658128659_))))
                (___kont128658128659_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self127063_ _stx127064_)
        (let* ((_g127066127083_
                (lambda (_g127067127080_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127067127080_))))
               (_g127065127181_
                (lambda (_g127067127086_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127067127086_))
                      (let ((_e127072127088_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127067127086_))))
                        (let ((_hd127071127091_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127072127088_)))
                              (_tl127070127093_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127072127088_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127070127093_))
                              (let ((_e127075127096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127070127093_))))
                                (let ((_hd127074127099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127075127096_)))
                                      (_tl127073127101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127075127096_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127073127101_))
                                      (let ((_e127078127104_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127073127101_))))
                                        (let ((_hd127077127107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127078127104_)))
                                              (_tl127076127109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127078127104_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127076127109_))
                                              ((lambda (_L127112_ _L127113_)
                                                 (let* ((___stx128676128677_
                                                         _L127113_)
                                                        (_g127129127140_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx128676128677_)))))
                                                   (let ((___kont128678128679_
                                                          (lambda (_L127160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L127161_)
                    (let ((_$e127173_
                           (let ((__tmp130422
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L127161_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp130422))))
                      (if _$e127173_
                          ((lambda (_type-e127176_)
                             (_type-e127176_ _stx127064_ _L127113_))
                           _$e127173_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self127063_ _L127112_))))))
                 (___kont128680128681_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self127063_ _L127112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match128687128688_
                                                            (lambda (_e127135127152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd127134127155_
                             _tl127133127157_)
                      (let ((_L127160_ _tl127133127157_)
                            (_L127161_ _hd127134127155_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L127161_))
                            (___kont128678128679_ _L127160_ _L127161_)
                            (___kont128680128681_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx128676128677_))
                   (let ((_e127135127152_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx128676128677_))))
                     (let ((_tl127133127157_
                            (let ()
                              (declare (not safe))
                              (##cdr _e127135127152_)))
                           (_hd127134127155_
                            (let ()
                              (declare (not safe))
                              (##car _e127135127152_))))
                       (___match128687128688_
                        _e127135127152_
                        _hd127134127155_
                        _tl127133127157_)))
                   (___kont128680128681_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd127077127107_
                                               _hd127074127099_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127066127083_
                                                 _g127067127086_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127066127083_ _g127067127086_)))))
                              (let ()
                                (declare (not safe))
                                (_g127066127083_ _g127067127086_)))))
                      (let ()
                        (declare (not safe))
                        (_g127066127083_ _g127067127086_))))))
          (declare (not safe))
          (_g127065127181_ _stx127064_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx126907_ _ann126908_)
        (let* ((_g126910126947_
                (lambda (_g126911126944_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126911126944_))))
               (_g126909127060_
                (lambda (_g126911126950_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126911126950_))
                      (let ((_e126921126952_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126911126950_))))
                        (let ((_hd126920126955_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126921126952_)))
                              (_tl126919126957_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126921126952_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126919126957_))
                              (let ((_e126924126960_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126919126957_))))
                                (let ((_hd126923126963_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126924126960_)))
                                      (_tl126922126965_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126924126960_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126922126965_))
                                      (let ((_e126927126968_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126922126965_))))
                                        (let ((_hd126926126971_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126927126968_)))
                                              (_tl126925126973_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126927126968_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126925126973_))
                                              (let ((_e126930126976_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126925126973_))))
                                                (let ((_hd126929126979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126930126976_)))
                                                      (_tl126928126981_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126930126976_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126928126981_))
                                                      (let ((_e126933126984_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126928126981_))))
                (let ((_hd126932126987_
                       (let () (declare (not safe)) (##car _e126933126984_)))
                      (_tl126931126989_
                       (let () (declare (not safe)) (##cdr _e126933126984_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl126931126989_))
                      (let ((_e126936126992_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126931126989_))))
                        (let ((_hd126935126995_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126936126992_)))
                              (_tl126934126997_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126936126992_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126934126997_))
                              (let ((_e126939127000_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126934126997_))))
                                (let ((_hd126938127003_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126939127000_)))
                                      (_tl126937127005_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126939127000_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126937127005_))
                                      (let ((_e126942127008_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126937127005_))))
                                        (let ((_hd126941127011_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126942127008_)))
                                              (_tl126940127013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126942127008_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126940127013_))
                                              ((lambda (_L127016_
                                                        _L127017_
                                                        _L127018_
                                                        _L127019_
                                                        _L127020_
                                                        _L127021_
                                                        _L127022_)
                                                 (let ((_type-id127052_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127022_)))
                                                       (_super127053_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127021_)))
                                                       (_slots127054_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L127020_)))
                                                       (_ctor-method127055_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127019_)))
                                                       (_struct?127056_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127018_)))
                                                       (_final?127057_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127017_)))
                                                       (_metaclass127058_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L127016_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L127016_))
                                                            '#f)))
                                                   (let ((__obj130369
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure
                                                             gxc#!class::t
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj130369
                                                      _type-id127052_
                                                      _super127053_
                                                      _slots127054_
                                                      _ctor-method127055_
                                                      _struct?127056_
                                                      _final?127057_
                                                      '#f
                                                      _metaclass127058_)
                                                     __obj130369)))
                                               _hd126941127011_
                                               _hd126938127003_
                                               _hd126935126995_
                                               _hd126932126987_
                                               _hd126929126979_
                                               _hd126926126971_
                                               _hd126923126963_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126910126947_
                                                 _g126911126950_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126910126947_ _g126911126950_)))))
                              (let ()
                                (declare (not safe))
                                (_g126910126947_ _g126911126950_)))))
                      (let ()
                        (declare (not safe))
                        (_g126910126947_ _g126911126950_)))))
              (let ()
                (declare (not safe))
                (_g126910126947_ _g126911126950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126910126947_
                                                 _g126911126950_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126910126947_ _g126911126950_)))))
                              (let ()
                                (declare (not safe))
                                (_g126910126947_ _g126911126950_)))))
                      (let ()
                        (declare (not safe))
                        (_g126910126947_ _g126911126950_))))))
          (declare (not safe))
          (_g126909127060_ _ann126908_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_stx126836_ _ann126837_)
        (let* ((_g126839126856_
                (lambda (_g126840126853_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126840126853_))))
               (_g126838126904_
                (lambda (_g126840126859_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126840126859_))
                      (let ((_e126845126861_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126840126859_))))
                        (let ((_hd126844126864_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126845126861_)))
                              (_tl126843126866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126845126861_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126843126866_))
                              (let ((_e126848126869_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126843126866_))))
                                (let ((_hd126847126872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126848126869_)))
                                      (_tl126846126874_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126848126869_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126846126874_))
                                      (let ((_e126851126877_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126846126874_))))
                                        (let ((_hd126850126880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126851126877_)))
                                              (_tl126849126882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126851126877_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126849126882_))
                                              ((lambda (_L126885_ _L126886_)
                                                 (let ((_type-id126901_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126886_)))
                                                       (_super126902_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L126885_))))
                                                   (let ((__obj130370
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure
                                                             gxc#!class::t
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj130370
                                                      _type-id126901_
                                                      _super126902_
                                                      '()
                                                      '#f
                                                      '#f
                                                      '#f
                                                      '#t
                                                      '#f)
                                                     __obj130370)))
                                               _hd126850126880_
                                               _hd126847126872_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126839126856_
                                                 _g126840126859_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126839126856_ _g126840126859_)))))
                              (let ()
                                (declare (not safe))
                                (_g126839126856_ _g126840126859_)))))
                      (let ()
                        (declare (not safe))
                        (_g126839126856_ _g126840126859_))))))
          (declare (not safe))
          (_g126838126904_ _ann126837_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx126784_ _ann126785_)
        (let* ((_g126787126800_
                (lambda (_g126788126797_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126788126797_))))
               (_g126786126833_
                (lambda (_g126788126803_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126788126803_))
                      (let ((_e126792126805_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126788126803_))))
                        (let ((_hd126791126808_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126792126805_)))
                              (_tl126790126810_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126792126805_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126790126810_))
                              (let ((_e126795126813_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126790126810_))))
                                (let ((_hd126794126816_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126795126813_)))
                                      (_tl126793126818_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126795126813_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126793126818_))
                                      ((lambda (_L126821_)
                                         (let ((__tmp130423
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L126821_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp130423)))
                                       _hd126794126816_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126787126800_ _g126788126803_)))))
                              (let ()
                                (declare (not safe))
                                (_g126787126800_ _g126788126803_)))))
                      (let ()
                        (declare (not safe))
                        (_g126787126800_ _g126788126803_))))))
          (declare (not safe))
          (_g126786126833_ _ann126785_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx126732_ _ann126733_)
        (let* ((_g126735126748_
                (lambda (_g126736126745_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126736126745_))))
               (_g126734126781_
                (lambda (_g126736126751_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126736126751_))
                      (let ((_e126740126753_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126736126751_))))
                        (let ((_hd126739126756_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126740126753_)))
                              (_tl126738126758_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126740126753_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126738126758_))
                              (let ((_e126743126761_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126738126758_))))
                                (let ((_hd126742126764_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126743126761_)))
                                      (_tl126741126766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126743126761_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126741126766_))
                                      ((lambda (_L126769_)
                                         (let ((__tmp130424
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L126769_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp130424)))
                                       _hd126742126764_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126735126748_ _g126736126751_)))))
                              (let ()
                                (declare (not safe))
                                (_g126735126748_ _g126736126751_)))))
                      (let ()
                        (declare (not safe))
                        (_g126735126748_ _g126736126751_))))))
          (declare (not safe))
          (_g126734126781_ _ann126733_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx126648_ _ann126649_)
        (let* ((_g126651126672_
                (lambda (_g126652126669_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126652126669_))))
               (_g126650126729_
                (lambda (_g126652126675_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126652126675_))
                      (let ((_e126658126677_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126652126675_))))
                        (let ((_hd126657126680_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126658126677_)))
                              (_tl126656126682_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126658126677_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126656126682_))
                              (let ((_e126661126685_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126656126682_))))
                                (let ((_hd126660126688_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126661126685_)))
                                      (_tl126659126690_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126661126685_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126659126690_))
                                      (let ((_e126664126693_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126659126690_))))
                                        (let ((_hd126663126696_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126664126693_)))
                                              (_tl126662126698_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126664126693_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126662126698_))
                                              (let ((_e126667126701_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126662126698_))))
                                                (let ((_hd126666126704_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126667126701_)))
                                                      (_tl126665126706_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126667126701_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126665126706_))
                                                      ((lambda (_L126709_
                                                                _L126710_
                                                                _L126711_)
                                                         (let ((__tmp130427
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126711_)))
                       (__tmp130426
                        (let () (declare (not safe)) (gx#stx-e _L126710_)))
                       (__tmp130425
                        (let () (declare (not safe)) (gx#stx-e _L126709_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp130427
                    __tmp130426
                    __tmp130425)))
               _hd126666126704_
               _hd126663126696_
               _hd126660126688_)
              (let ()
                (declare (not safe))
                (_g126651126672_ _g126652126675_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126651126672_
                                                 _g126652126675_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126651126672_ _g126652126675_)))))
                              (let ()
                                (declare (not safe))
                                (_g126651126672_ _g126652126675_)))))
                      (let ()
                        (declare (not safe))
                        (_g126651126672_ _g126652126675_))))))
          (declare (not safe))
          (_g126650126729_ _ann126649_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx126564_ _ann126565_)
        (let* ((_g126567126588_
                (lambda (_g126568126585_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126568126585_))))
               (_g126566126645_
                (lambda (_g126568126591_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126568126591_))
                      (let ((_e126574126593_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126568126591_))))
                        (let ((_hd126573126596_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126574126593_)))
                              (_tl126572126598_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126574126593_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126572126598_))
                              (let ((_e126577126601_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126572126598_))))
                                (let ((_hd126576126604_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126577126601_)))
                                      (_tl126575126606_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126577126601_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126575126606_))
                                      (let ((_e126580126609_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126575126606_))))
                                        (let ((_hd126579126612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126580126609_)))
                                              (_tl126578126614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126580126609_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126578126614_))
                                              (let ((_e126583126617_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126578126614_))))
                                                (let ((_hd126582126620_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126583126617_)))
                                                      (_tl126581126622_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126583126617_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126581126622_))
                                                      ((lambda (_L126625_
                                                                _L126626_
                                                                _L126627_)
                                                         (let ((__tmp130430
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126627_)))
                       (__tmp130429
                        (let () (declare (not safe)) (gx#stx-e _L126626_)))
                       (__tmp130428
                        (let () (declare (not safe)) (gx#stx-e _L126625_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp130430
                    __tmp130429
                    __tmp130428)))
               _hd126582126620_
               _hd126579126612_
               _hd126576126604_)
              (let ()
                (declare (not safe))
                (_g126567126588_ _g126568126591_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126567126588_
                                                 _g126568126591_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126567126588_ _g126568126591_)))))
                              (let ()
                                (declare (not safe))
                                (_g126567126588_ _g126568126591_)))))
                      (let ()
                        (declare (not safe))
                        (_g126567126588_ _g126568126591_))))))
          (declare (not safe))
          (_g126566126645_ _ann126565_))))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.class
       gxc#basic-expression-type-annotation-mop.class))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.constructor
       gxc#basic-expression-type-annotation-mop.constructor))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.predicate
       gxc#basic-expression-type-annotation-mop.predicate))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.accessor
       gxc#basic-expression-type-annotation-mop.accessor))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.mutator
       gxc#basic-expression-type-annotation-mop.mutator))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.system
       gxc#basic-expression-type-annotation-mop.system))
    (define gxc#basic-expression-type-lambda%
      (lambda (_self125683_ _stx125684_)
        (let* ((___stx128690128691_ _stx125684_)
               (_g125690125886_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128690128691_)))))
          (let ((___kont128692128693_
                 (lambda (_L126552_)
                   (let ((__obj130371
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130371
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126552_))
                      '#f)
                     __obj130371)))
                (___kont128694128695_
                 (lambda (_L126479_
                          _L126480_
                          _L126481_
                          _L126482_
                          _L126483_
                          _L126484_)
                   (let* ((_tab126534_
                           (let () (declare (not safe)) (gx#stx-e _L126481_)))
                          (_keys126536_
                           (if _tab126534_
                               (filter values (vector->list _tab126534_))
                               '#f)))
                     (let ((__tmp130431
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L126480_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys126536_
                        __tmp130431)))))
                (___kont128696128697_
                 (lambda (_L126212_
                          _L126213_
                          _L126214_
                          _L126215_
                          _L126216_
                          _L126217_
                          _L126218_
                          _L126219_
                          _L126220_
                          _L126221_)
                   (let ((__tmp130433
                          (map gx#stx-e
                               (let ((__tmp130434
                                      (lambda (_g126314126317_ _g126315126319_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g126314126317_
                                                _g126315126319_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp130434 '() _L126214_))))
                         (__tmp130432
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126218_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp130433
                      __tmp130432))))
                (___kont128700128701_
                 (lambda (_L125922_)
                   (let ((__obj130372
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130372
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125922_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L125922_)))
                     __obj130372)))
                (___kont128702128703_
                 (lambda (_L125899_)
                   (let ((__obj130373
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130373
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125899_))
                      '#f)
                     __obj130373))))
            (let* ((___match129009129010_
                    (lambda (_e125877125914_ _hd125876125917_ _tl125875125919_)
                      (let ((_L125922_ _tl125875125919_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L125922_))
                            (___kont128700128701_ _L125922_)
                            (___kont128702128703_ _tl125875125919_)))))
                   (___match129003129004_
                    (lambda (_e125771125936_
                             _hd125770125939_
                             _tl125769125941_
                             _e125774125944_
                             _hd125773125947_
                             _tl125772125949_
                             _e125777125952_
                             _hd125776125955_
                             _tl125775125957_
                             _e125780125960_
                             _hd125779125963_
                             _tl125778125965_
                             _e125783125968_
                             _hd125782125971_
                             _tl125781125973_
                             _e125786125976_
                             _hd125785125979_
                             _tl125784125981_
                             _e125789125984_
                             _hd125788125987_
                             _tl125787125989_
                             _e125792125992_
                             _hd125791125995_
                             _tl125790125997_
                             _e125795126000_
                             _hd125794126003_
                             _tl125793126005_
                             _e125798126008_
                             _hd125797126011_
                             _tl125796126013_
                             _e125801126016_
                             _hd125800126019_
                             _tl125799126021_
                             _e125804126024_
                             _hd125803126027_
                             _tl125802126029_
                             _e125807126032_
                             _hd125806126035_
                             _tl125805126037_
                             _e125810126040_
                             _hd125809126043_
                             _tl125808126045_
                             ___splice128698128699_
                             _target125811126048_
                             _tl125813126050_
                             _e125828126053_
                             _hd125827126056_
                             _tl125826126058_
                             _e125831126061_
                             _hd125830126064_
                             _tl125829126066_
                             _e125834126069_
                             _hd125833126072_
                             _tl125832126074_)
                      (letrec ((_loop125814126077_
                                (lambda (_hd125812126080_
                                         _-absent-value125818126082_
                                         _key125819126084_
                                         _-xkwvar125820126086_
                                         _-hash-ref125821126088_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125812126080_))
                                      (let ((_e125815126091_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125812126080_))))
                                        (let ((_lp-tl125817126096_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125815126091_)))
                                              (_lp-hd125816126094_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125815126091_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd125816126094_))
                                              (let ((_e125837126099_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd125816126094_))))
                                                (let ((_tl125835126104_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125837126099_)))
                                                      (_hd125836126102_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125837126099_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd125836126102_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd125836126102_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125835126104_))
                      (let ((_e125840126107_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125835126104_))))
                        (let ((_tl125838126112_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125840126107_)))
                              (_hd125839126110_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125840126107_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125839126110_))
                              (let ((_e125843126115_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125839126110_))))
                                (let ((_tl125841126120_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125843126115_)))
                                      (_hd125842126118_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125843126115_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125842126118_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125842126118_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125841126120_))
                                              (let ((_e125846126123_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125841126120_))))
                                                (let ((_tl125844126128_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125846126123_)))
                                                      (_hd125845126126_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125846126123_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125844126128_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125838126112_))
                                                          (let ((_e125849126131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125838126112_))))
                    (let ((_tl125847126136_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125849126131_)))
                          (_hd125848126134_
                           (let ()
                             (declare (not safe))
                             (##car _e125849126131_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125848126134_))
                          (let ((_e125852126139_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125848126134_))))
                            (let ((_tl125850126144_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125852126139_)))
                                  (_hd125851126142_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125852126139_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125851126142_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125851126142_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125850126144_))
                                          (let ((_e125855126147_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125850126144_))))
                                            (let ((_tl125853126152_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125855126147_)))
                                                  (_hd125854126150_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125855126147_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125853126152_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125847126136_))
                                                      (let ((_e125858126155_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125847126136_))))
                (let ((_tl125856126160_
                       (let () (declare (not safe)) (##cdr _e125858126155_)))
                      (_hd125857126158_
                       (let () (declare (not safe)) (##car _e125858126155_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125857126158_))
                      (let ((_e125861126163_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125857126158_))))
                        (let ((_tl125859126168_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125861126163_)))
                              (_hd125860126166_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125861126163_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125860126166_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd125860126166_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125859126168_))
                                      (let ((_e125864126171_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125859126168_))))
                                        (let ((_tl125862126176_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125864126171_)))
                                              (_hd125863126174_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125864126171_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125862126176_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125856126160_))
                                                  (let ((_e125867126179_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125856126160_))))
                                                    (let ((_tl125865126184_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125867126179_)))
                                                          (_hd125866126182_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125867126179_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125866126182_))
                                                          (let ((_e125870126187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125866126182_))))
                    (let ((_tl125868126192_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125870126187_)))
                          (_hd125869126190_
                           (let ()
                             (declare (not safe))
                             (##car _e125870126187_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125869126190_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125869126190_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125868126192_))
                                  (let ((_e125873126195_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125868126192_))))
                                    (let ((_tl125871126200_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125873126195_)))
                                          (_hd125872126198_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125873126195_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125871126200_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125865126184_))
                                              (let ((__tmp130449
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125872126198_
                                                             _-absent-value125818126082_)))
                                                    (__tmp130448
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125863126174_
                                                             _key125819126084_)))
                                                    (__tmp130447
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125854126150_
                                                             _-xkwvar125820126086_)))
                                                    (__tmp130446
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125845126126_
                                                             _-hash-ref125821126088_))))
                                                (declare (not safe))
                                                (_loop125814126077_
                                                 _lp-tl125817126096_
                                                 __tmp130449
                                                 __tmp130448
                                                 __tmp130447
                                                 __tmp130446))
                                              (___match129009129010_
                                               _e125771125936_
                                               _hd125770125939_
                                               _tl125769125941_))
                                          (___match129009129010_
                                           _e125771125936_
                                           _hd125770125939_
                                           _tl125769125941_))))
                                  (___match129009129010_
                                   _e125771125936_
                                   _hd125770125939_
                                   _tl125769125941_))
                              (___match129009129010_
                               _e125771125936_
                               _hd125770125939_
                               _tl125769125941_))
                          (___match129009129010_
                           _e125771125936_
                           _hd125770125939_
                           _tl125769125941_))))
                  (___match129009129010_
                   _e125771125936_
                   _hd125770125939_
                   _tl125769125941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129009129010_
                                                   _e125771125936_
                                                   _hd125770125939_
                                                   _tl125769125941_))
                                              (___match129009129010_
                                               _e125771125936_
                                               _hd125770125939_
                                               _tl125769125941_))))
                                      (___match129009129010_
                                       _e125771125936_
                                       _hd125770125939_
                                       _tl125769125941_))
                                  (___match129009129010_
                                   _e125771125936_
                                   _hd125770125939_
                                   _tl125769125941_))
                              (___match129009129010_
                               _e125771125936_
                               _hd125770125939_
                               _tl125769125941_))))
                      (___match129009129010_
                       _e125771125936_
                       _hd125770125939_
                       _tl125769125941_))))
              (___match129009129010_
               _e125771125936_
               _hd125770125939_
               _tl125769125941_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129009129010_
                                                   _e125771125936_
                                                   _hd125770125939_
                                                   _tl125769125941_))))
                                          (___match129009129010_
                                           _e125771125936_
                                           _hd125770125939_
                                           _tl125769125941_))
                                      (___match129009129010_
                                       _e125771125936_
                                       _hd125770125939_
                                       _tl125769125941_))
                                  (___match129009129010_
                                   _e125771125936_
                                   _hd125770125939_
                                   _tl125769125941_))))
                          (___match129009129010_
                           _e125771125936_
                           _hd125770125939_
                           _tl125769125941_))))
                  (___match129009129010_
                   _e125771125936_
                   _hd125770125939_
                   _tl125769125941_))
              (___match129009129010_
               _e125771125936_
               _hd125770125939_
               _tl125769125941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129009129010_
                                               _e125771125936_
                                               _hd125770125939_
                                               _tl125769125941_))
                                          (___match129009129010_
                                           _e125771125936_
                                           _hd125770125939_
                                           _tl125769125941_))
                                      (___match129009129010_
                                       _e125771125936_
                                       _hd125770125939_
                                       _tl125769125941_))))
                              (___match129009129010_
                               _e125771125936_
                               _hd125770125939_
                               _tl125769125941_))))
                      (___match129009129010_
                       _e125771125936_
                       _hd125770125939_
                       _tl125769125941_))
                  (___match129009129010_
                   _e125771125936_
                   _hd125770125939_
                   _tl125769125941_))
              (___match129009129010_
               _e125771125936_
               _hd125770125939_
               _tl125769125941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129009129010_
                                               _e125771125936_
                                               _hd125770125939_
                                               _tl125769125941_))))
                                      (let ((_-hash-ref125825126209_
                                             (reverse _-hash-ref125821126088_))
                                            (_-xkwvar125824126207_
                                             (reverse _-xkwvar125820126086_))
                                            (_key125823126205_
                                             (reverse _key125819126084_))
                                            (_-absent-value125822126203_
                                             (reverse _-absent-value125818126082_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl125778125965_))
                                            (let ((_L126212_ _hd125833126072_)
                                                  (_L126213_
                                                   _-absent-value125822126203_)
                                                  (_L126214_ _key125823126205_)
                                                  (_L126215_
                                                   _-xkwvar125824126207_)
                                                  (_L126216_
                                                   _-hash-ref125825126209_)
                                                  (_L126217_ _hd125809126043_)
                                                  (_L126218_ _hd125800126019_)
                                                  (_L126219_ _hd125791125995_)
                                                  (_L126220_ _tl125775125957_)
                                                  (_L126221_ _hd125776125955_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126221_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126220_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L126219_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L126221_
                                                          _L126217_))
                                                       (let ((__tmp130444
                                                              (let ((__tmp130445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g126274126277_ _g126275126279_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126274126277_ _g126275126279_)))))
                        (declare (not safe))
                        (foldr1 __tmp130445 '() _L126214_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp130444))
               (let ((__tmp130443
                      (lambda (_g126281126283_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126281126283_
                           'hash-ref))))
                     (__tmp130441
                      (let ((__tmp130442
                             (lambda (_g126285126288_ _g126286126290_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126285126288_ _g126286126290_)))))
                        (declare (not safe))
                        (foldr1 __tmp130442 '() _L126216_))))
                 (declare (not safe))
                 (andmap1 __tmp130443 __tmp130441))
               (let ((__tmp130440
                      (lambda (_g126292126294_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126292126294_
                           'absent-value))))
                     (__tmp130438
                      (let ((__tmp130439
                             (lambda (_g126296126299_ _g126297126301_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126296126299_ _g126297126301_)))))
                        (declare (not safe))
                        (foldr1 __tmp130439 '() _L126213_))))
                 (declare (not safe))
                 (andmap1 __tmp130440 __tmp130438))
               (let ((__tmp130437
                      (lambda (_g126303126305_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g126303126305_ _L126221_))))
                     (__tmp130435
                      (let ((__tmp130436
                             (lambda (_g126307126310_ _g126308126312_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126307126310_ _g126308126312_)))))
                        (declare (not safe))
                        (foldr1 __tmp130436 '() _L126215_))))
                 (declare (not safe))
                 (andmap1 __tmp130437 __tmp130435)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128696128697_
                                                   _L126212_
                                                   _L126213_
                                                   _L126214_
                                                   _L126215_
                                                   _L126216_
                                                   _L126217_
                                                   _L126218_
                                                   _L126219_
                                                   _L126220_
                                                   _L126221_)
                                                  (___match129009129010_
                                                   _e125771125936_
                                                   _hd125770125939_
                                                   _tl125769125941_)))
                                            (___match129009129010_
                                             _e125771125936_
                                             _hd125770125939_
                                             _tl125769125941_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop125814126077_
                           _target125811126048_
                           '()
                           '()
                           '()
                           '())))))
                   (___match128875128876_
                    (lambda (_e125771125936_
                             _hd125770125939_
                             _tl125769125941_
                             _e125774125944_
                             _hd125773125947_
                             _tl125772125949_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125773125947_))
                          (let ((_e125777125952_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125773125947_))))
                            (let ((_tl125775125957_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125777125952_)))
                                  (_hd125776125955_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125777125952_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125772125949_))
                                  (let ((_e125780125960_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125772125949_))))
                                    (let ((_tl125778125965_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125780125960_)))
                                          (_hd125779125963_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125780125960_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125779125963_))
                                          (let ((_e125783125968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125779125963_))))
                                            (let ((_tl125781125973_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125783125968_)))
                                                  (_hd125782125971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125783125968_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125782125971_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125782125971_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125781125973_))
                                                          (let ((_e125786125976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125781125973_))))
                    (let ((_tl125784125981_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125786125976_)))
                          (_hd125785125979_
                           (let ()
                             (declare (not safe))
                             (##car _e125786125976_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125785125979_))
                          (let ((_e125789125984_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125785125979_))))
                            (let ((_tl125787125989_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125789125984_)))
                                  (_hd125788125987_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125789125984_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125788125987_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125788125987_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125787125989_))
                                          (let ((_e125792125992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125787125989_))))
                                            (let ((_tl125790125997_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125792125992_)))
                                                  (_hd125791125995_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125792125992_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125790125997_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125784125981_))
                                                      (let ((_e125795126000_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125784125981_))))
                (let ((_tl125793126005_
                       (let () (declare (not safe)) (##cdr _e125795126000_)))
                      (_hd125794126003_
                       (let () (declare (not safe)) (##car _e125795126000_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125794126003_))
                      (let ((_e125798126008_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125794126003_))))
                        (let ((_tl125796126013_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125798126008_)))
                              (_hd125797126011_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125798126008_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125797126011_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125797126011_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125796126013_))
                                      (let ((_e125801126016_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125796126013_))))
                                        (let ((_tl125799126021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125801126016_)))
                                              (_hd125800126019_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125801126016_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125799126021_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125793126005_))
                                                  (let ((_e125804126024_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125793126005_))))
                                                    (let ((_tl125802126029_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125804126024_)))
                                                          (_hd125803126027_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125804126024_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125803126027_))
                                                          (let ((_e125807126032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125803126027_))))
                    (let ((_tl125805126037_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125807126032_)))
                          (_hd125806126035_
                           (let ()
                             (declare (not safe))
                             (##car _e125807126032_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125806126035_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125806126035_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125805126037_))
                                  (let ((_e125810126040_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125805126037_))))
                                    (let ((_tl125808126045_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125810126040_)))
                                          (_hd125809126043_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125810126040_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125808126045_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125802126029_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl125802126029_))
                                                        '1)
                                                  (let ((___splice128698128699_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125802126029_
                                                            '1))))
                                                    (let ((_tl125813126050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128698128699_
                                                              '1)))
                                                          (_target125811126048_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128698128699_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125813126050_))
                                                          (let ((_e125828126053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125813126050_))))
                    (let ((_tl125826126058_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125828126053_)))
                          (_hd125827126056_
                           (let ()
                             (declare (not safe))
                             (##car _e125828126053_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125827126056_))
                          (let ((_e125831126061_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125827126056_))))
                            (let ((_tl125829126066_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125831126061_)))
                                  (_hd125830126064_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125831126061_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125830126064_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125830126064_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125829126066_))
                                          (let ((_e125834126069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125829126066_))))
                                            (let ((_tl125832126074_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125834126069_)))
                                                  (_hd125833126072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125834126069_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125832126074_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125826126058_))
                                                      (___match129003129004_
                                                       _e125771125936_
                                                       _hd125770125939_
                                                       _tl125769125941_
                                                       _e125774125944_
                                                       _hd125773125947_
                                                       _tl125772125949_
                                                       _e125777125952_
                                                       _hd125776125955_
                                                       _tl125775125957_
                                                       _e125780125960_
                                                       _hd125779125963_
                                                       _tl125778125965_
                                                       _e125783125968_
                                                       _hd125782125971_
                                                       _tl125781125973_
                                                       _e125786125976_
                                                       _hd125785125979_
                                                       _tl125784125981_
                                                       _e125789125984_
                                                       _hd125788125987_
                                                       _tl125787125989_
                                                       _e125792125992_
                                                       _hd125791125995_
                                                       _tl125790125997_
                                                       _e125795126000_
                                                       _hd125794126003_
                                                       _tl125793126005_
                                                       _e125798126008_
                                                       _hd125797126011_
                                                       _tl125796126013_
                                                       _e125801126016_
                                                       _hd125800126019_
                                                       _tl125799126021_
                                                       _e125804126024_
                                                       _hd125803126027_
                                                       _tl125802126029_
                                                       _e125807126032_
                                                       _hd125806126035_
                                                       _tl125805126037_
                                                       _e125810126040_
                                                       _hd125809126043_
                                                       _tl125808126045_
                                                       ___splice128698128699_
                                                       _target125811126048_
                                                       _tl125813126050_
                                                       _e125828126053_
                                                       _hd125827126056_
                                                       _tl125826126058_
                                                       _e125831126061_
                                                       _hd125830126064_
                                                       _tl125829126066_
                                                       _e125834126069_
                                                       _hd125833126072_
                                                       _tl125832126074_)
                                                      (___match129009129010_
                                                       _e125771125936_
                                                       _hd125770125939_
                                                       _tl125769125941_))
                                                  (___match129009129010_
                                                   _e125771125936_
                                                   _hd125770125939_
                                                   _tl125769125941_))))
                                          (___match129009129010_
                                           _e125771125936_
                                           _hd125770125939_
                                           _tl125769125941_))
                                      (___match129009129010_
                                       _e125771125936_
                                       _hd125770125939_
                                       _tl125769125941_))
                                  (___match129009129010_
                                   _e125771125936_
                                   _hd125770125939_
                                   _tl125769125941_))))
                          (___match129009129010_
                           _e125771125936_
                           _hd125770125939_
                           _tl125769125941_))))
                  (___match129009129010_
                   _e125771125936_
                   _hd125770125939_
                   _tl125769125941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129009129010_
                                                   _e125771125936_
                                                   _hd125770125939_
                                                   _tl125769125941_))
                                              (___match129009129010_
                                               _e125771125936_
                                               _hd125770125939_
                                               _tl125769125941_))
                                          (___match129009129010_
                                           _e125771125936_
                                           _hd125770125939_
                                           _tl125769125941_))))
                                  (___match129009129010_
                                   _e125771125936_
                                   _hd125770125939_
                                   _tl125769125941_))
                              (___match129009129010_
                               _e125771125936_
                               _hd125770125939_
                               _tl125769125941_))
                          (___match129009129010_
                           _e125771125936_
                           _hd125770125939_
                           _tl125769125941_))))
                  (___match129009129010_
                   _e125771125936_
                   _hd125770125939_
                   _tl125769125941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129009129010_
                                                   _e125771125936_
                                                   _hd125770125939_
                                                   _tl125769125941_))
                                              (___match129009129010_
                                               _e125771125936_
                                               _hd125770125939_
                                               _tl125769125941_))))
                                      (___match129009129010_
                                       _e125771125936_
                                       _hd125770125939_
                                       _tl125769125941_))
                                  (___match129009129010_
                                   _e125771125936_
                                   _hd125770125939_
                                   _tl125769125941_))
                              (___match129009129010_
                               _e125771125936_
                               _hd125770125939_
                               _tl125769125941_))))
                      (___match129009129010_
                       _e125771125936_
                       _hd125770125939_
                       _tl125769125941_))))
              (___match129009129010_
               _e125771125936_
               _hd125770125939_
               _tl125769125941_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129009129010_
                                                   _e125771125936_
                                                   _hd125770125939_
                                                   _tl125769125941_))))
                                          (___match129009129010_
                                           _e125771125936_
                                           _hd125770125939_
                                           _tl125769125941_))
                                      (___match129009129010_
                                       _e125771125936_
                                       _hd125770125939_
                                       _tl125769125941_))
                                  (___match129009129010_
                                   _e125771125936_
                                   _hd125770125939_
                                   _tl125769125941_))))
                          (___match129009129010_
                           _e125771125936_
                           _hd125770125939_
                           _tl125769125941_))))
                  (___match129009129010_
                   _e125771125936_
                   _hd125770125939_
                   _tl125769125941_))
              (___match129009129010_
               _e125771125936_
               _hd125770125939_
               _tl125769125941_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129009129010_
                                                   _e125771125936_
                                                   _hd125770125939_
                                                   _tl125769125941_))))
                                          (___match129009129010_
                                           _e125771125936_
                                           _hd125770125939_
                                           _tl125769125941_))))
                                  (___match129009129010_
                                   _e125771125936_
                                   _hd125770125939_
                                   _tl125769125941_))))
                          (___match129009129010_
                           _e125771125936_
                           _hd125770125939_
                           _tl125769125941_))))
                   (___match128863128864_
                    (lambda (_e125704126327_
                             _hd125703126330_
                             _tl125702126332_
                             _e125707126335_
                             _hd125706126338_
                             _tl125705126340_
                             _e125710126343_
                             _hd125709126346_
                             _tl125708126348_
                             _e125713126351_
                             _hd125712126354_
                             _tl125711126356_
                             _e125716126359_
                             _hd125715126362_
                             _tl125714126364_
                             _e125719126367_
                             _hd125718126370_
                             _tl125717126372_
                             _e125722126375_
                             _hd125721126378_
                             _tl125720126380_
                             _e125725126383_
                             _hd125724126386_
                             _tl125723126388_
                             _e125728126391_
                             _hd125727126394_
                             _tl125726126396_
                             _e125731126399_
                             _hd125730126402_
                             _tl125729126404_
                             _e125734126407_
                             _hd125733126410_
                             _tl125732126412_
                             _e125737126415_
                             _hd125736126418_
                             _tl125735126420_
                             _e125740126423_
                             _hd125739126426_
                             _tl125738126428_
                             _e125743126431_
                             _hd125742126434_
                             _tl125741126436_
                             _e125746126439_
                             _hd125745126442_
                             _tl125744126444_
                             _e125749126447_
                             _hd125748126450_
                             _tl125747126452_
                             _e125752126455_
                             _hd125751126458_
                             _tl125750126460_
                             _e125755126463_
                             _hd125754126466_
                             _tl125753126468_
                             _e125758126471_
                             _hd125757126474_
                             _tl125756126476_)
                      (let ((_L126479_ _hd125757126474_)
                            (_L126480_ _hd125748126450_)
                            (_L126481_ _hd125739126426_)
                            (_L126482_ _hd125730126402_)
                            (_L126483_ _hd125721126378_)
                            (_L126484_ _hd125706126338_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L126484_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L126483_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L126482_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L126484_ _L126479_)))
                            (___kont128694128695_
                             _L126479_
                             _L126480_
                             _L126481_
                             _L126482_
                             _L126483_
                             _L126484_)
                            (___match128875128876_
                             _e125704126327_
                             _hd125703126330_
                             _tl125702126332_
                             _e125707126335_
                             _hd125706126338_
                             _tl125705126340_)))))
                   (___match128717128718_
                    (lambda (_e125704126327_ _hd125703126330_ _tl125702126332_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125702126332_))
                          (let ((_e125707126335_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125702126332_))))
                            (let ((_tl125705126340_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125707126335_)))
                                  (_hd125706126338_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125707126335_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125705126340_))
                                  (let ((_e125710126343_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125705126340_))))
                                    (let ((_tl125708126348_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125710126343_)))
                                          (_hd125709126346_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125710126343_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125709126346_))
                                          (let ((_e125713126351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125709126346_))))
                                            (let ((_tl125711126356_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125713126351_)))
                                                  (_hd125712126354_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125713126351_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125712126354_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125712126354_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125711126356_))
                                                          (let ((_e125716126359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125711126356_))))
                    (let ((_tl125714126364_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125716126359_)))
                          (_hd125715126362_
                           (let ()
                             (declare (not safe))
                             (##car _e125716126359_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125715126362_))
                          (let ((_e125719126367_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125715126362_))))
                            (let ((_tl125717126372_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125719126367_)))
                                  (_hd125718126370_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125719126367_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125718126370_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125718126370_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125717126372_))
                                          (let ((_e125722126375_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125717126372_))))
                                            (let ((_tl125720126380_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125722126375_)))
                                                  (_hd125721126378_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125722126375_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125720126380_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125714126364_))
                                                      (let ((_e125725126383_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125714126364_))))
                (let ((_tl125723126388_
                       (let () (declare (not safe)) (##cdr _e125725126383_)))
                      (_hd125724126386_
                       (let () (declare (not safe)) (##car _e125725126383_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125724126386_))
                      (let ((_e125728126391_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125724126386_))))
                        (let ((_tl125726126396_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125728126391_)))
                              (_hd125727126394_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125728126391_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125727126394_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125727126394_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125726126396_))
                                      (let ((_e125731126399_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125726126396_))))
                                        (let ((_tl125729126404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125731126399_)))
                                              (_hd125730126402_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125731126399_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125729126404_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125723126388_))
                                                  (let ((_e125734126407_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125723126388_))))
                                                    (let ((_tl125732126412_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125734126407_)))
                                                          (_hd125733126410_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125734126407_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125733126410_))
                                                          (let ((_e125737126415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125733126410_))))
                    (let ((_tl125735126420_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125737126415_)))
                          (_hd125736126418_
                           (let ()
                             (declare (not safe))
                             (##car _e125737126415_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125736126418_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125736126418_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125735126420_))
                                  (let ((_e125740126423_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125735126420_))))
                                    (let ((_tl125738126428_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125740126423_)))
                                          (_hd125739126426_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125740126423_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125738126428_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125732126412_))
                                              (let ((_e125743126431_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125732126412_))))
                                                (let ((_tl125741126436_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125743126431_)))
                                                      (_hd125742126434_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125743126431_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd125742126434_))
                                                      (let ((_e125746126439_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd125742126434_))))
                (let ((_tl125744126444_
                       (let () (declare (not safe)) (##cdr _e125746126439_)))
                      (_hd125745126442_
                       (let () (declare (not safe)) (##car _e125746126439_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd125745126442_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd125745126442_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125744126444_))
                              (let ((_e125749126447_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125744126444_))))
                                (let ((_tl125747126452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125749126447_)))
                                      (_hd125748126450_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125749126447_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125747126452_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125741126436_))
                                          (let ((_e125752126455_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125741126436_))))
                                            (let ((_tl125750126460_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125752126455_)))
                                                  (_hd125751126458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125752126455_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd125751126458_))
                                                  (let ((_e125755126463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd125751126458_))))
                                                    (let ((_tl125753126468_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125755126463_)))
                                                          (_hd125754126466_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125755126463_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd125754126466_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd125754126466_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125753126468_))
                          (let ((_e125758126471_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125753126468_))))
                            (let ((_tl125756126476_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125758126471_)))
                                  (_hd125757126474_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125758126471_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125756126476_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125750126460_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125708126348_))
                                          (___match128863128864_
                                           _e125704126327_
                                           _hd125703126330_
                                           _tl125702126332_
                                           _e125707126335_
                                           _hd125706126338_
                                           _tl125705126340_
                                           _e125710126343_
                                           _hd125709126346_
                                           _tl125708126348_
                                           _e125713126351_
                                           _hd125712126354_
                                           _tl125711126356_
                                           _e125716126359_
                                           _hd125715126362_
                                           _tl125714126364_
                                           _e125719126367_
                                           _hd125718126370_
                                           _tl125717126372_
                                           _e125722126375_
                                           _hd125721126378_
                                           _tl125720126380_
                                           _e125725126383_
                                           _hd125724126386_
                                           _tl125723126388_
                                           _e125728126391_
                                           _hd125727126394_
                                           _tl125726126396_
                                           _e125731126399_
                                           _hd125730126402_
                                           _tl125729126404_
                                           _e125734126407_
                                           _hd125733126410_
                                           _tl125732126412_
                                           _e125737126415_
                                           _hd125736126418_
                                           _tl125735126420_
                                           _e125740126423_
                                           _hd125739126426_
                                           _tl125738126428_
                                           _e125743126431_
                                           _hd125742126434_
                                           _tl125741126436_
                                           _e125746126439_
                                           _hd125745126442_
                                           _tl125744126444_
                                           _e125749126447_
                                           _hd125748126450_
                                           _tl125747126452_
                                           _e125752126455_
                                           _hd125751126458_
                                           _tl125750126460_
                                           _e125755126463_
                                           _hd125754126466_
                                           _tl125753126468_
                                           _e125758126471_
                                           _hd125757126474_
                                           _tl125756126476_)
                                          (___match128875128876_
                                           _e125704126327_
                                           _hd125703126330_
                                           _tl125702126332_
                                           _e125707126335_
                                           _hd125706126338_
                                           _tl125705126340_))
                                      (___match128875128876_
                                       _e125704126327_
                                       _hd125703126330_
                                       _tl125702126332_
                                       _e125707126335_
                                       _hd125706126338_
                                       _tl125705126340_))
                                  (___match128875128876_
                                   _e125704126327_
                                   _hd125703126330_
                                   _tl125702126332_
                                   _e125707126335_
                                   _hd125706126338_
                                   _tl125705126340_))))
                          (___match128875128876_
                           _e125704126327_
                           _hd125703126330_
                           _tl125702126332_
                           _e125707126335_
                           _hd125706126338_
                           _tl125705126340_))
                      (___match128875128876_
                       _e125704126327_
                       _hd125703126330_
                       _tl125702126332_
                       _e125707126335_
                       _hd125706126338_
                       _tl125705126340_))
                  (___match128875128876_
                   _e125704126327_
                   _hd125703126330_
                   _tl125702126332_
                   _e125707126335_
                   _hd125706126338_
                   _tl125705126340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128875128876_
                                                   _e125704126327_
                                                   _hd125703126330_
                                                   _tl125702126332_
                                                   _e125707126335_
                                                   _hd125706126338_
                                                   _tl125705126340_))))
                                          (___match128875128876_
                                           _e125704126327_
                                           _hd125703126330_
                                           _tl125702126332_
                                           _e125707126335_
                                           _hd125706126338_
                                           _tl125705126340_))
                                      (___match128875128876_
                                       _e125704126327_
                                       _hd125703126330_
                                       _tl125702126332_
                                       _e125707126335_
                                       _hd125706126338_
                                       _tl125705126340_))))
                              (___match128875128876_
                               _e125704126327_
                               _hd125703126330_
                               _tl125702126332_
                               _e125707126335_
                               _hd125706126338_
                               _tl125705126340_))
                          (___match128875128876_
                           _e125704126327_
                           _hd125703126330_
                           _tl125702126332_
                           _e125707126335_
                           _hd125706126338_
                           _tl125705126340_))
                      (___match128875128876_
                       _e125704126327_
                       _hd125703126330_
                       _tl125702126332_
                       _e125707126335_
                       _hd125706126338_
                       _tl125705126340_))))
              (___match128875128876_
               _e125704126327_
               _hd125703126330_
               _tl125702126332_
               _e125707126335_
               _hd125706126338_
               _tl125705126340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128875128876_
                                               _e125704126327_
                                               _hd125703126330_
                                               _tl125702126332_
                                               _e125707126335_
                                               _hd125706126338_
                                               _tl125705126340_))
                                          (___match128875128876_
                                           _e125704126327_
                                           _hd125703126330_
                                           _tl125702126332_
                                           _e125707126335_
                                           _hd125706126338_
                                           _tl125705126340_))))
                                  (___match128875128876_
                                   _e125704126327_
                                   _hd125703126330_
                                   _tl125702126332_
                                   _e125707126335_
                                   _hd125706126338_
                                   _tl125705126340_))
                              (___match128875128876_
                               _e125704126327_
                               _hd125703126330_
                               _tl125702126332_
                               _e125707126335_
                               _hd125706126338_
                               _tl125705126340_))
                          (___match128875128876_
                           _e125704126327_
                           _hd125703126330_
                           _tl125702126332_
                           _e125707126335_
                           _hd125706126338_
                           _tl125705126340_))))
                  (___match128875128876_
                   _e125704126327_
                   _hd125703126330_
                   _tl125702126332_
                   _e125707126335_
                   _hd125706126338_
                   _tl125705126340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128875128876_
                                                   _e125704126327_
                                                   _hd125703126330_
                                                   _tl125702126332_
                                                   _e125707126335_
                                                   _hd125706126338_
                                                   _tl125705126340_))
                                              (___match128875128876_
                                               _e125704126327_
                                               _hd125703126330_
                                               _tl125702126332_
                                               _e125707126335_
                                               _hd125706126338_
                                               _tl125705126340_))))
                                      (___match128875128876_
                                       _e125704126327_
                                       _hd125703126330_
                                       _tl125702126332_
                                       _e125707126335_
                                       _hd125706126338_
                                       _tl125705126340_))
                                  (___match128875128876_
                                   _e125704126327_
                                   _hd125703126330_
                                   _tl125702126332_
                                   _e125707126335_
                                   _hd125706126338_
                                   _tl125705126340_))
                              (___match128875128876_
                               _e125704126327_
                               _hd125703126330_
                               _tl125702126332_
                               _e125707126335_
                               _hd125706126338_
                               _tl125705126340_))))
                      (___match128875128876_
                       _e125704126327_
                       _hd125703126330_
                       _tl125702126332_
                       _e125707126335_
                       _hd125706126338_
                       _tl125705126340_))))
              (___match128875128876_
               _e125704126327_
               _hd125703126330_
               _tl125702126332_
               _e125707126335_
               _hd125706126338_
               _tl125705126340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128875128876_
                                                   _e125704126327_
                                                   _hd125703126330_
                                                   _tl125702126332_
                                                   _e125707126335_
                                                   _hd125706126338_
                                                   _tl125705126340_))))
                                          (___match128875128876_
                                           _e125704126327_
                                           _hd125703126330_
                                           _tl125702126332_
                                           _e125707126335_
                                           _hd125706126338_
                                           _tl125705126340_))
                                      (___match128875128876_
                                       _e125704126327_
                                       _hd125703126330_
                                       _tl125702126332_
                                       _e125707126335_
                                       _hd125706126338_
                                       _tl125705126340_))
                                  (___match128875128876_
                                   _e125704126327_
                                   _hd125703126330_
                                   _tl125702126332_
                                   _e125707126335_
                                   _hd125706126338_
                                   _tl125705126340_))))
                          (___match128875128876_
                           _e125704126327_
                           _hd125703126330_
                           _tl125702126332_
                           _e125707126335_
                           _hd125706126338_
                           _tl125705126340_))))
                  (___match128875128876_
                   _e125704126327_
                   _hd125703126330_
                   _tl125702126332_
                   _e125707126335_
                   _hd125706126338_
                   _tl125705126340_))
              (___match128875128876_
               _e125704126327_
               _hd125703126330_
               _tl125702126332_
               _e125707126335_
               _hd125706126338_
               _tl125705126340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128875128876_
                                                   _e125704126327_
                                                   _hd125703126330_
                                                   _tl125702126332_
                                                   _e125707126335_
                                                   _hd125706126338_
                                                   _tl125705126340_))))
                                          (___match128875128876_
                                           _e125704126327_
                                           _hd125703126330_
                                           _tl125702126332_
                                           _e125707126335_
                                           _hd125706126338_
                                           _tl125705126340_))))
                                  (___match128875128876_
                                   _e125704126327_
                                   _hd125703126330_
                                   _tl125702126332_
                                   _e125707126335_
                                   _hd125706126338_
                                   _tl125705126340_))))
                          (___match129009129010_
                           _e125704126327_
                           _hd125703126330_
                           _tl125702126332_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128690128691_))
                  (let ((_e125695126544_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128690128691_))))
                    (let ((_tl125693126549_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125695126544_)))
                          (_hd125694126547_
                           (let ()
                             (declare (not safe))
                             (##car _e125695126544_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L126552_ _tl125693126549_))
                            (___kont128692128693_ _L126552_))
                          (___match128717128718_
                           _e125695126544_
                           _hd125694126547_
                           _tl125693126549_))))
                  (let () (declare (not safe)) (_g125690125886_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self125637_ _stx125638_)
        (letrec ((_clause-e125640_
                  (lambda (_form125681_)
                    (let ((__obj130374
                           (let ()
                             (declare (not safe))
                             (##structure
                              gxc#!lambda::t
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f))))
                      (gxc#!lambda:::init!
                       __obj130374
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form125681_))
                       (if (let ((__tmp130450
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp130450))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form125681_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form125681_))
                               '#f)
                           '#f))
                      __obj130374))))
          (let* ((_g125642125652_
                  (lambda (_g125643125649_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125643125649_))))
                 (_g125641125678_
                  (lambda (_g125643125655_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125643125655_))
                        (let ((_e125647125657_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125643125655_))))
                          (let ((_hd125646125660_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125647125657_)))
                                (_tl125645125662_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125647125657_))))
                            ((lambda (_L125665_)
                               (let ((_clauses125676_
                                      (map _clause-e125640_ _L125665_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses125676_)))
                             _tl125645125662_)))
                        (let ()
                          (declare (not safe))
                          (_g125642125652_ _g125643125655_))))))
            (declare (not safe))
            (_g125641125678_ _stx125638_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self125568_ _stx125569_)
        (let* ((_g125571125588_
                (lambda (_g125572125585_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125572125585_))))
               (_g125570125634_
                (lambda (_g125572125591_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125572125591_))
                      (let ((_e125577125593_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125572125591_))))
                        (let ((_hd125576125596_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125577125593_)))
                              (_tl125575125598_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125577125593_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125575125598_))
                              (let ((_e125580125601_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125575125598_))))
                                (let ((_hd125579125604_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125580125601_)))
                                      (_tl125578125606_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125580125601_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125578125606_))
                                      (let ((_e125583125609_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125578125606_))))
                                        (let ((_hd125582125612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125583125609_)))
                                              (_tl125581125614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125583125609_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125581125614_))
                                              ((lambda (_L125617_ _L125618_)
                                                 (let ((__tmp130451
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self125568_
                                                             _L125617_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp130451
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd125582125612_
                                               _hd125579125604_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125571125588_
                                                 _g125572125591_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125571125588_ _g125572125591_)))))
                              (let ()
                                (declare (not safe))
                                (_g125571125588_ _g125572125591_)))))
                      (let ()
                        (declare (not safe))
                        (_g125571125588_ _g125572125591_))))))
          (declare (not safe))
          (_g125570125634_ _stx125569_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self125472_ _stx125473_)
        (let* ((___stx129018129019_ _stx125473_)
               (_g125476125496_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129018129019_)))))
          (let ((___kont129020129021_
                 (lambda (_L125540_ _L125541_)
                   (let ((_type-e125558125560_
                          (let ((__tmp130452
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L125541_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp130452))))
                     (if _type-e125558125560_
                         (let ((_type-e125563_ _type-e125558125560_))
                           (_type-e125563_ _stx125473_ _L125540_))
                         '#f))))
                (___kont129022129023_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129018129019_))
                (let ((_e125482125508_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129018129019_))))
                  (let ((_tl125480125513_
                         (let () (declare (not safe)) (##cdr _e125482125508_)))
                        (_hd125481125511_
                         (let ()
                           (declare (not safe))
                           (##car _e125482125508_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125480125513_))
                        (let ((_e125485125516_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125480125513_))))
                          (let ((_tl125483125521_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125485125516_)))
                                (_hd125484125519_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125485125516_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125484125519_))
                                (let ((_e125488125524_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125484125519_))))
                                  (let ((_tl125486125529_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125488125524_)))
                                        (_hd125487125527_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125488125524_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125487125527_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125487125527_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125486125529_))
                                                (let ((_e125491125532_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125486125529_))))
                                                  (let ((_tl125489125537_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125491125532_)))
                                                        (_hd125490125535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125491125532_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125489125537_))
                                                        (___kont129020129021_
                                                         _tl125483125521_
                                                         _hd125490125535_)
                                                        (___kont129022129023_))))
                                                (___kont129022129023_))
                                            (___kont129022129023_))
                                        (___kont129022129023_))))
                                (___kont129022129023_))))
                        (___kont129022129023_))))
                (___kont129022129023_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self125420_ _stx125421_)
        (let* ((_g125423125436_
                (lambda (_g125424125433_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125424125433_))))
               (_g125422125469_
                (lambda (_g125424125439_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125424125439_))
                      (let ((_e125428125441_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125424125439_))))
                        (let ((_hd125427125444_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125428125441_)))
                              (_tl125426125446_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125428125441_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125426125446_))
                              (let ((_e125431125449_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125426125446_))))
                                (let ((_hd125430125452_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125431125449_)))
                                      (_tl125429125454_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125431125449_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125429125454_))
                                      ((lambda (_L125457_)
                                         (let ((__tmp130453
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125457_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp130453)))
                                       _hd125430125452_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125423125436_ _g125424125439_)))))
                              (let ()
                                (declare (not safe))
                                (_g125423125436_ _g125424125439_)))))
                      (let ()
                        (declare (not safe))
                        (_g125423125436_ _g125424125439_))))))
          (declare (not safe))
          (_g125422125469_ _stx125421_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form124654_)
        (let* ((___stx129056129057_ _form124654_)
               (_g124659124816_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129056129057_)))))
          (let ((___kont129058129059_
                 (lambda (_L125340_ _L125341_ _L125342_) '#t))
                (___kont129064129065_
                 (lambda (_L125128_
                          _L125129_
                          _L125130_
                          _L125131_
                          _L125132_
                          _L125133_)
                   '#t))
                (___kont129070129071_
                 (lambda (_L124924_ _L124925_ _L124926_ _L124927_) '#t))
                (___kont129072129073_ (lambda () '#f)))
            (let* ((___match129197129198_
                    (lambda (_e124778124828_
                             _hd124777124831_
                             _tl124776124833_
                             _e124781124836_
                             _hd124780124839_
                             _tl124779124841_
                             _e124784124844_
                             _hd124783124847_
                             _tl124782124849_
                             _e124787124852_
                             _hd124786124855_
                             _tl124785124857_
                             _e124790124860_
                             _hd124789124863_
                             _tl124788124865_
                             _e124793124868_
                             _hd124792124871_
                             _tl124791124873_
                             _e124796124876_
                             _hd124795124879_
                             _tl124794124881_
                             _e124799124884_
                             _hd124798124887_
                             _tl124797124889_
                             _e124802124892_
                             _hd124801124895_
                             _tl124800124897_
                             _e124805124900_
                             _hd124804124903_
                             _tl124803124905_
                             _e124808124908_
                             _hd124807124911_
                             _tl124806124913_
                             _e124811124916_
                             _hd124810124919_
                             _tl124809124921_)
                      (let ((_L124924_ _hd124810124919_)
                            (_L124925_ _hd124801124895_)
                            (_L124926_ _hd124792124871_)
                            (_L124927_ _hd124777124831_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124927_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124926_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124927_ _L124924_))
                                 (let ((__tmp130454
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L124925_
                                           _L124927_))))
                                   (declare (not safe))
                                   (not __tmp130454)))
                            (___kont129070129071_
                             _L124924_
                             _L124925_
                             _L124926_
                             _L124927_)
                            (___kont129072129073_)))))
                   (___match129169129170_
                    (lambda (_e124778124828_
                             _hd124777124831_
                             _tl124776124833_
                             _e124781124836_
                             _hd124780124839_
                             _tl124779124841_
                             _e124784124844_
                             _hd124783124847_
                             _tl124782124849_
                             _e124787124852_
                             _hd124786124855_
                             _tl124785124857_
                             _e124790124860_
                             _hd124789124863_
                             _tl124788124865_
                             _e124793124868_
                             _hd124792124871_
                             _tl124791124873_
                             _e124796124876_
                             _hd124795124879_
                             _tl124794124881_
                             _e124799124884_
                             _hd124798124887_
                             _tl124797124889_
                             _e124802124892_
                             _hd124801124895_
                             _tl124800124897_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124794124881_))
                          (let ((_e124805124900_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124794124881_))))
                            (let ((_tl124803124905_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124805124900_)))
                                  (_hd124804124903_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124805124900_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd124804124903_))
                                  (let ((_e124808124908_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd124804124903_))))
                                    (let ((_tl124806124913_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124808124908_)))
                                          (_hd124807124911_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124808124908_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd124807124911_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd124807124911_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124806124913_))
                                                  (let ((_e124811124916_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124806124913_))))
                                                    (let ((_tl124809124921_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124811124916_)))
                                                          (_hd124810124919_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124811124916_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124809124921_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl124803124905_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124779124841_))
                          (___match129197129198_
                           _e124778124828_
                           _hd124777124831_
                           _tl124776124833_
                           _e124781124836_
                           _hd124780124839_
                           _tl124779124841_
                           _e124784124844_
                           _hd124783124847_
                           _tl124782124849_
                           _e124787124852_
                           _hd124786124855_
                           _tl124785124857_
                           _e124790124860_
                           _hd124789124863_
                           _tl124788124865_
                           _e124793124868_
                           _hd124792124871_
                           _tl124791124873_
                           _e124796124876_
                           _hd124795124879_
                           _tl124794124881_
                           _e124799124884_
                           _hd124798124887_
                           _tl124797124889_
                           _e124802124892_
                           _hd124801124895_
                           _tl124800124897_
                           _e124805124900_
                           _hd124804124903_
                           _tl124803124905_
                           _e124808124908_
                           _hd124807124911_
                           _tl124806124913_
                           _e124811124916_
                           _hd124810124919_
                           _tl124809124921_)
                          (___kont129072129073_))
                      (___kont129072129073_))
                  (___kont129072129073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129072129073_))
                                              (___kont129072129073_))
                                          (___kont129072129073_))))
                                  (___kont129072129073_))))
                          (___kont129072129073_))))
                   (___match129099129100_
                    (lambda (_e124714124968_
                             _hd124713124971_
                             _tl124712124973_
                             ___splice129066129067_
                             _target124715124976_
                             _tl124717124978_)
                      (letrec ((_loop124718124981_
                                (lambda (_hd124716124984_ _arg124722124986_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124716124984_))
                                      (let ((_e124719124989_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124716124984_))))
                                        (let ((_lp-tl124721124994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124719124989_)))
                                              (_lp-hd124720124992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124719124989_))))
                                          (let ((__tmp130469
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124720124992_
                                                         _arg124722124986_))))
                                            (declare (not safe))
                                            (_loop124718124981_
                                             _lp-tl124721124994_
                                             __tmp130469))))
                                      (let ((_arg124723124997_
                                             (reverse _arg124722124986_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124712124973_))
                                            (let ((_e124726125000_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124712124973_))))
                                              (let ((_tl124724125005_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124726125000_)))
                                                    (_hd124725125003_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124726125000_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124725125003_))
                                                    (let ((_e124729125008_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124725125003_))))
                                                      (let ((_tl124727125013_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124729125008_)))
                    (_hd124728125011_
                     (let () (declare (not safe)) (##car _e124729125008_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124728125011_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124728125011_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124727125013_))
                            (let ((_e124732125016_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124727125013_))))
                              (let ((_tl124730125021_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124732125016_)))
                                    (_hd124731125019_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124732125016_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124731125019_))
                                    (let ((_e124735125024_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124731125019_))))
                                      (let ((_tl124733125029_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124735125024_)))
                                            (_hd124734125027_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124735125024_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124734125027_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124734125027_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124733125029_))
                                                    (let ((_e124738125032_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124733125029_))))
                                                      (let ((_tl124736125037_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124738125032_)))
                    (_hd124737125035_
                     (let () (declare (not safe)) (##car _e124738125032_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124736125037_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124730125021_))
                        (let ((_e124741125040_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124730125021_))))
                          (let ((_tl124739125045_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124741125040_)))
                                (_hd124740125043_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124741125040_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124740125043_))
                                (let ((_e124744125048_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124740125043_))))
                                  (let ((_tl124742125053_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124744125048_)))
                                        (_hd124743125051_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124744125048_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124743125051_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124743125051_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124742125053_))
                                                (let ((_e124747125056_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124742125053_))))
                                                  (let ((_tl124745125061_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124747125056_)))
                                                        (_hd124746125059_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124747125056_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124745125061_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl124739125045_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl124739125045_))
                              '1)
                        (let ((___splice129068129069_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124739125045_
                                  '1))))
                          (let ((_tl124750125066_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129068129069_ '1)))
                                (_target124748125064_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129068129069_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124750125066_))
                                (let ((_e124759125069_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124750125066_))))
                                  (let ((_tl124757125074_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124759125069_)))
                                        (_hd124758125072_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124759125069_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd124758125072_))
                                        (let ((_e124762125077_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd124758125072_))))
                                          (let ((_tl124760125082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e124762125077_)))
                                                (_hd124761125080_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e124762125077_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd124761125080_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd124761125080_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl124760125082_))
                                                        (let ((_e124765125085_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl124760125082_))))
                  (let ((_tl124763125090_
                         (let () (declare (not safe)) (##cdr _e124765125085_)))
                        (_hd124764125088_
                         (let ()
                           (declare (not safe))
                           (##car _e124765125085_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl124763125090_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl124757125074_))
                            (letrec ((_loop124751125093_
                                      (lambda (_hd124749125096_
                                               _xarg124755125098_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd124749125096_))
                                            (let ((_e124752125101_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd124749125096_))))
                                              (let ((_lp-tl124754125106_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124752125101_)))
                                                    (_lp-hd124753125104_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124752125101_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd124753125104_))
                                                    (let ((_e124768125109_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd124753125104_))))
                                                      (let ((_tl124766125114_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124768125109_)))
                    (_hd124767125112_
                     (let () (declare (not safe)) (##car _e124768125109_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124767125112_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd124767125112_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124766125114_))
                            (let ((_e124771125117_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124766125114_))))
                              (let ((_tl124769125122_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124771125117_)))
                                    (_hd124770125120_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124771125117_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl124769125122_))
                                    (let ((__tmp130468
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd124770125120_
                                                   _xarg124755125098_))))
                                      (declare (not safe))
                                      (_loop124751125093_
                                       _lp-tl124754125106_
                                       __tmp130468))
                                    (___match129169129170_
                                     _e124714124968_
                                     _hd124713124971_
                                     _tl124712124973_
                                     _e124726125000_
                                     _hd124725125003_
                                     _tl124724125005_
                                     _e124729125008_
                                     _hd124728125011_
                                     _tl124727125013_
                                     _e124732125016_
                                     _hd124731125019_
                                     _tl124730125021_
                                     _e124735125024_
                                     _hd124734125027_
                                     _tl124733125029_
                                     _e124738125032_
                                     _hd124737125035_
                                     _tl124736125037_
                                     _e124741125040_
                                     _hd124740125043_
                                     _tl124739125045_
                                     _e124744125048_
                                     _hd124743125051_
                                     _tl124742125053_
                                     _e124747125056_
                                     _hd124746125059_
                                     _tl124745125061_))))
                            (___match129169129170_
                             _e124714124968_
                             _hd124713124971_
                             _tl124712124973_
                             _e124726125000_
                             _hd124725125003_
                             _tl124724125005_
                             _e124729125008_
                             _hd124728125011_
                             _tl124727125013_
                             _e124732125016_
                             _hd124731125019_
                             _tl124730125021_
                             _e124735125024_
                             _hd124734125027_
                             _tl124733125029_
                             _e124738125032_
                             _hd124737125035_
                             _tl124736125037_
                             _e124741125040_
                             _hd124740125043_
                             _tl124739125045_
                             _e124744125048_
                             _hd124743125051_
                             _tl124742125053_
                             _e124747125056_
                             _hd124746125059_
                             _tl124745125061_))
                        (___match129169129170_
                         _e124714124968_
                         _hd124713124971_
                         _tl124712124973_
                         _e124726125000_
                         _hd124725125003_
                         _tl124724125005_
                         _e124729125008_
                         _hd124728125011_
                         _tl124727125013_
                         _e124732125016_
                         _hd124731125019_
                         _tl124730125021_
                         _e124735125024_
                         _hd124734125027_
                         _tl124733125029_
                         _e124738125032_
                         _hd124737125035_
                         _tl124736125037_
                         _e124741125040_
                         _hd124740125043_
                         _tl124739125045_
                         _e124744125048_
                         _hd124743125051_
                         _tl124742125053_
                         _e124747125056_
                         _hd124746125059_
                         _tl124745125061_))
                    (___match129169129170_
                     _e124714124968_
                     _hd124713124971_
                     _tl124712124973_
                     _e124726125000_
                     _hd124725125003_
                     _tl124724125005_
                     _e124729125008_
                     _hd124728125011_
                     _tl124727125013_
                     _e124732125016_
                     _hd124731125019_
                     _tl124730125021_
                     _e124735125024_
                     _hd124734125027_
                     _tl124733125029_
                     _e124738125032_
                     _hd124737125035_
                     _tl124736125037_
                     _e124741125040_
                     _hd124740125043_
                     _tl124739125045_
                     _e124744125048_
                     _hd124743125051_
                     _tl124742125053_
                     _e124747125056_
                     _hd124746125059_
                     _tl124745125061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129169129170_
                                                     _e124714124968_
                                                     _hd124713124971_
                                                     _tl124712124973_
                                                     _e124726125000_
                                                     _hd124725125003_
                                                     _tl124724125005_
                                                     _e124729125008_
                                                     _hd124728125011_
                                                     _tl124727125013_
                                                     _e124732125016_
                                                     _hd124731125019_
                                                     _tl124730125021_
                                                     _e124735125024_
                                                     _hd124734125027_
                                                     _tl124733125029_
                                                     _e124738125032_
                                                     _hd124737125035_
                                                     _tl124736125037_
                                                     _e124741125040_
                                                     _hd124740125043_
                                                     _tl124739125045_
                                                     _e124744125048_
                                                     _hd124743125051_
                                                     _tl124742125053_
                                                     _e124747125056_
                                                     _hd124746125059_
                                                     _tl124745125061_))))
                                            (let ((_xarg124756125125_
                                                   (reverse _xarg124755125098_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124724125005_))
                                                  (let ((_L125128_
                                                         _hd124764125088_)
                                                        (_L125129_
                                                         _xarg124756125125_)
                                                        (_L125130_
                                                         _hd124746125059_)
                                                        (_L125131_
                                                         _hd124737125035_)
                                                        (_L125132_
                                                         _tl124717124978_)
                                                        (_L125133_
                                                         _arg124723124997_))
                                                    (if (and (let ((__tmp130466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130467
                                   (lambda (_g125176125179_ _g125177125181_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125176125179_
                                             _g125177125181_)))))
                              (declare (not safe))
                              (foldr1 __tmp130467 '() _L125133_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp130466))
                     (let () (declare (not safe)) (gx#identifier? _L125132_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L125131_ 'apply))
                     (fx= (length (let ((__tmp130464
                                         (lambda (_g125183125186_
                                                  _g125184125188_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125183125186_
                                                   _g125184125188_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130464 '() _L125133_)))
                          (length (let ((__tmp130465
                                         (lambda (_g125190125193_
                                                  _g125191125195_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125190125193_
                                                   _g125191125195_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130465 '() _L125129_))))
                     (let ((__tmp130462
                            (let ((__tmp130463
                                   (lambda (_g125197125200_ _g125198125202_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125197125200_
                                             _g125198125202_)))))
                              (declare (not safe))
                              (foldr1 __tmp130463 '() _L125133_)))
                           (__tmp130460
                            (let ((__tmp130461
                                   (lambda (_g125204125207_ _g125205125209_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125204125207_
                                             _g125205125209_)))))
                              (declare (not safe))
                              (foldr1 __tmp130461 '() _L125129_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp130462 __tmp130460))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L125132_ _L125128_))
                     (let ((__tmp130455
                            (let ((__tmp130459
                                   (lambda (_g125211125213_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g125211125213_
                                        _L125130_))))
                                  (__tmp130456
                                   (let ((__tmp130458
                                          (lambda (_g125215125218_
                                                   _g125216125220_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g125215125218_
                                                    _g125216125220_))))
                                         (__tmp130457
                                          (let ()
                                            (declare (not safe))
                                            (cons _L125132_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp130458
                                             __tmp130457
                                             _L125133_))))
                              (declare (not safe))
                              (find __tmp130459 __tmp130456))))
                       (declare (not safe))
                       (not __tmp130455)))
                (___kont129064129065_
                 _L125128_
                 _L125129_
                 _L125130_
                 _L125131_
                 _L125132_
                 _L125133_)
                (___match129169129170_
                 _e124714124968_
                 _hd124713124971_
                 _tl124712124973_
                 _e124726125000_
                 _hd124725125003_
                 _tl124724125005_
                 _e124729125008_
                 _hd124728125011_
                 _tl124727125013_
                 _e124732125016_
                 _hd124731125019_
                 _tl124730125021_
                 _e124735125024_
                 _hd124734125027_
                 _tl124733125029_
                 _e124738125032_
                 _hd124737125035_
                 _tl124736125037_
                 _e124741125040_
                 _hd124740125043_
                 _tl124739125045_
                 _e124744125048_
                 _hd124743125051_
                 _tl124742125053_
                 _e124747125056_
                 _hd124746125059_
                 _tl124745125061_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129169129170_
                                                   _e124714124968_
                                                   _hd124713124971_
                                                   _tl124712124973_
                                                   _e124726125000_
                                                   _hd124725125003_
                                                   _tl124724125005_
                                                   _e124729125008_
                                                   _hd124728125011_
                                                   _tl124727125013_
                                                   _e124732125016_
                                                   _hd124731125019_
                                                   _tl124730125021_
                                                   _e124735125024_
                                                   _hd124734125027_
                                                   _tl124733125029_
                                                   _e124738125032_
                                                   _hd124737125035_
                                                   _tl124736125037_
                                                   _e124741125040_
                                                   _hd124740125043_
                                                   _tl124739125045_
                                                   _e124744125048_
                                                   _hd124743125051_
                                                   _tl124742125053_
                                                   _e124747125056_
                                                   _hd124746125059_
                                                   _tl124745125061_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop124751125093_ _target124748125064_ '())))
                            (___match129169129170_
                             _e124714124968_
                             _hd124713124971_
                             _tl124712124973_
                             _e124726125000_
                             _hd124725125003_
                             _tl124724125005_
                             _e124729125008_
                             _hd124728125011_
                             _tl124727125013_
                             _e124732125016_
                             _hd124731125019_
                             _tl124730125021_
                             _e124735125024_
                             _hd124734125027_
                             _tl124733125029_
                             _e124738125032_
                             _hd124737125035_
                             _tl124736125037_
                             _e124741125040_
                             _hd124740125043_
                             _tl124739125045_
                             _e124744125048_
                             _hd124743125051_
                             _tl124742125053_
                             _e124747125056_
                             _hd124746125059_
                             _tl124745125061_))
                        (___match129169129170_
                         _e124714124968_
                         _hd124713124971_
                         _tl124712124973_
                         _e124726125000_
                         _hd124725125003_
                         _tl124724125005_
                         _e124729125008_
                         _hd124728125011_
                         _tl124727125013_
                         _e124732125016_
                         _hd124731125019_
                         _tl124730125021_
                         _e124735125024_
                         _hd124734125027_
                         _tl124733125029_
                         _e124738125032_
                         _hd124737125035_
                         _tl124736125037_
                         _e124741125040_
                         _hd124740125043_
                         _tl124739125045_
                         _e124744125048_
                         _hd124743125051_
                         _tl124742125053_
                         _e124747125056_
                         _hd124746125059_
                         _tl124745125061_))))
                (___match129169129170_
                 _e124714124968_
                 _hd124713124971_
                 _tl124712124973_
                 _e124726125000_
                 _hd124725125003_
                 _tl124724125005_
                 _e124729125008_
                 _hd124728125011_
                 _tl124727125013_
                 _e124732125016_
                 _hd124731125019_
                 _tl124730125021_
                 _e124735125024_
                 _hd124734125027_
                 _tl124733125029_
                 _e124738125032_
                 _hd124737125035_
                 _tl124736125037_
                 _e124741125040_
                 _hd124740125043_
                 _tl124739125045_
                 _e124744125048_
                 _hd124743125051_
                 _tl124742125053_
                 _e124747125056_
                 _hd124746125059_
                 _tl124745125061_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129169129170_
                                                     _e124714124968_
                                                     _hd124713124971_
                                                     _tl124712124973_
                                                     _e124726125000_
                                                     _hd124725125003_
                                                     _tl124724125005_
                                                     _e124729125008_
                                                     _hd124728125011_
                                                     _tl124727125013_
                                                     _e124732125016_
                                                     _hd124731125019_
                                                     _tl124730125021_
                                                     _e124735125024_
                                                     _hd124734125027_
                                                     _tl124733125029_
                                                     _e124738125032_
                                                     _hd124737125035_
                                                     _tl124736125037_
                                                     _e124741125040_
                                                     _hd124740125043_
                                                     _tl124739125045_
                                                     _e124744125048_
                                                     _hd124743125051_
                                                     _tl124742125053_
                                                     _e124747125056_
                                                     _hd124746125059_
                                                     _tl124745125061_))
                                                (___match129169129170_
                                                 _e124714124968_
                                                 _hd124713124971_
                                                 _tl124712124973_
                                                 _e124726125000_
                                                 _hd124725125003_
                                                 _tl124724125005_
                                                 _e124729125008_
                                                 _hd124728125011_
                                                 _tl124727125013_
                                                 _e124732125016_
                                                 _hd124731125019_
                                                 _tl124730125021_
                                                 _e124735125024_
                                                 _hd124734125027_
                                                 _tl124733125029_
                                                 _e124738125032_
                                                 _hd124737125035_
                                                 _tl124736125037_
                                                 _e124741125040_
                                                 _hd124740125043_
                                                 _tl124739125045_
                                                 _e124744125048_
                                                 _hd124743125051_
                                                 _tl124742125053_
                                                 _e124747125056_
                                                 _hd124746125059_
                                                 _tl124745125061_))))
                                        (___match129169129170_
                                         _e124714124968_
                                         _hd124713124971_
                                         _tl124712124973_
                                         _e124726125000_
                                         _hd124725125003_
                                         _tl124724125005_
                                         _e124729125008_
                                         _hd124728125011_
                                         _tl124727125013_
                                         _e124732125016_
                                         _hd124731125019_
                                         _tl124730125021_
                                         _e124735125024_
                                         _hd124734125027_
                                         _tl124733125029_
                                         _e124738125032_
                                         _hd124737125035_
                                         _tl124736125037_
                                         _e124741125040_
                                         _hd124740125043_
                                         _tl124739125045_
                                         _e124744125048_
                                         _hd124743125051_
                                         _tl124742125053_
                                         _e124747125056_
                                         _hd124746125059_
                                         _tl124745125061_))))
                                (___match129169129170_
                                 _e124714124968_
                                 _hd124713124971_
                                 _tl124712124973_
                                 _e124726125000_
                                 _hd124725125003_
                                 _tl124724125005_
                                 _e124729125008_
                                 _hd124728125011_
                                 _tl124727125013_
                                 _e124732125016_
                                 _hd124731125019_
                                 _tl124730125021_
                                 _e124735125024_
                                 _hd124734125027_
                                 _tl124733125029_
                                 _e124738125032_
                                 _hd124737125035_
                                 _tl124736125037_
                                 _e124741125040_
                                 _hd124740125043_
                                 _tl124739125045_
                                 _e124744125048_
                                 _hd124743125051_
                                 _tl124742125053_
                                 _e124747125056_
                                 _hd124746125059_
                                 _tl124745125061_))))
                        (___match129169129170_
                         _e124714124968_
                         _hd124713124971_
                         _tl124712124973_
                         _e124726125000_
                         _hd124725125003_
                         _tl124724125005_
                         _e124729125008_
                         _hd124728125011_
                         _tl124727125013_
                         _e124732125016_
                         _hd124731125019_
                         _tl124730125021_
                         _e124735125024_
                         _hd124734125027_
                         _tl124733125029_
                         _e124738125032_
                         _hd124737125035_
                         _tl124736125037_
                         _e124741125040_
                         _hd124740125043_
                         _tl124739125045_
                         _e124744125048_
                         _hd124743125051_
                         _tl124742125053_
                         _e124747125056_
                         _hd124746125059_
                         _tl124745125061_))
                    (___match129169129170_
                     _e124714124968_
                     _hd124713124971_
                     _tl124712124973_
                     _e124726125000_
                     _hd124725125003_
                     _tl124724125005_
                     _e124729125008_
                     _hd124728125011_
                     _tl124727125013_
                     _e124732125016_
                     _hd124731125019_
                     _tl124730125021_
                     _e124735125024_
                     _hd124734125027_
                     _tl124733125029_
                     _e124738125032_
                     _hd124737125035_
                     _tl124736125037_
                     _e124741125040_
                     _hd124740125043_
                     _tl124739125045_
                     _e124744125048_
                     _hd124743125051_
                     _tl124742125053_
                     _e124747125056_
                     _hd124746125059_
                     _tl124745125061_))
                (___kont129072129073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129072129073_))
                                            (___kont129072129073_))
                                        (___kont129072129073_))))
                                (___kont129072129073_))))
                        (___kont129072129073_))
                    (___kont129072129073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129072129073_))
                                                (___kont129072129073_))
                                            (___kont129072129073_))))
                                    (___kont129072129073_))))
                            (___kont129072129073_))
                        (___kont129072129073_))
                    (___kont129072129073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129072129073_))))
                                            (___kont129072129073_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124718124981_ _target124715124976_ '())))))
                   (___match129087129088_
                    (lambda (_e124666125228_
                             _hd124665125231_
                             _tl124664125233_
                             ___splice129060129061_
                             _target124667125236_
                             _tl124669125238_)
                      (letrec ((_loop124670125241_
                                (lambda (_hd124668125244_ _arg124674125246_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124668125244_))
                                      (let ((_e124671125249_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124668125244_))))
                                        (let ((_lp-tl124673125254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124671125249_)))
                                              (_lp-hd124672125252_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124671125249_))))
                                          (let ((__tmp130483
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124672125252_
                                                         _arg124674125246_))))
                                            (declare (not safe))
                                            (_loop124670125241_
                                             _lp-tl124673125254_
                                             __tmp130483))))
                                      (let ((_arg124675125257_
                                             (reverse _arg124674125246_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124664125233_))
                                            (let ((_e124678125260_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124664125233_))))
                                              (let ((_tl124676125265_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124678125260_)))
                                                    (_hd124677125263_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124678125260_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124677125263_))
                                                    (let ((_e124681125268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124677125263_))))
                                                      (let ((_tl124679125273_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124681125268_)))
                    (_hd124680125271_
                     (let () (declare (not safe)) (##car _e124681125268_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124680125271_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124680125271_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124679125273_))
                            (let ((_e124684125276_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124679125273_))))
                              (let ((_tl124682125281_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124684125276_)))
                                    (_hd124683125279_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124684125276_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124683125279_))
                                    (let ((_e124687125284_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124683125279_))))
                                      (let ((_tl124685125289_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124687125284_)))
                                            (_hd124686125287_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124687125284_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124686125287_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124686125287_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124685125289_))
                                                    (let ((_e124690125292_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124685125289_))))
                                                      (let ((_tl124688125297_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124690125292_)))
                    (_hd124689125295_
                     (let () (declare (not safe)) (##car _e124690125292_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124688125297_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124682125281_))
                        (let ((___splice129062129063_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124682125281_
                                  '0))))
                          (let ((_tl124693125302_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129062129063_ '1)))
                                (_target124691125300_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129062129063_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124693125302_))
                                (letrec ((_loop124694125305_
                                          (lambda (_hd124692125308_
                                                   _xarg124698125310_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124692125308_))
                                                (let ((_e124695125313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124692125308_))))
                                                  (let ((_lp-tl124697125318_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124695125313_)))
                                                        (_lp-hd124696125316_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124695125313_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124696125316_))
                                                        (let ((_e124702125321_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124696125316_))))
                  (let ((_tl124700125326_
                         (let () (declare (not safe)) (##cdr _e124702125321_)))
                        (_hd124701125324_
                         (let ()
                           (declare (not safe))
                           (##car _e124702125321_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124701125324_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124701125324_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124700125326_))
                                (let ((_e124705125329_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124700125326_))))
                                  (let ((_tl124703125334_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124705125329_)))
                                        (_hd124704125332_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124705125329_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124703125334_))
                                        (let ((__tmp130482
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124704125332_
                                                       _xarg124698125310_))))
                                          (declare (not safe))
                                          (_loop124694125305_
                                           _lp-tl124697125318_
                                           __tmp130482))
                                        (___match129099129100_
                                         _e124666125228_
                                         _hd124665125231_
                                         _tl124664125233_
                                         ___splice129060129061_
                                         _target124667125236_
                                         _tl124669125238_))))
                                (___match129099129100_
                                 _e124666125228_
                                 _hd124665125231_
                                 _tl124664125233_
                                 ___splice129060129061_
                                 _target124667125236_
                                 _tl124669125238_))
                            (___match129099129100_
                             _e124666125228_
                             _hd124665125231_
                             _tl124664125233_
                             ___splice129060129061_
                             _target124667125236_
                             _tl124669125238_))
                        (___match129099129100_
                         _e124666125228_
                         _hd124665125231_
                         _tl124664125233_
                         ___splice129060129061_
                         _target124667125236_
                         _tl124669125238_))))
                (___match129099129100_
                 _e124666125228_
                 _hd124665125231_
                 _tl124664125233_
                 ___splice129060129061_
                 _target124667125236_
                 _tl124669125238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124699125337_
                                                       (reverse _xarg124698125310_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124676125265_))
                                                      (let ((_L125340_
                                                             _xarg124699125337_)
                                                            (_L125341_
                                                             _hd124689125295_)
                                                            (_L125342_
                                                             _arg124675125257_))
                                                        (if (and (let ((__tmp130480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp130481
                                       (lambda (_g125370125373_
                                                _g125371125375_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125370125373_
                                                 _g125371125375_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130481 '() _L125342_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp130480))
                         (fx= (length (let ((__tmp130478
                                             (lambda (_g125377125380_
                                                      _g125378125382_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125377125380_
                                                       _g125378125382_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130478 '() _L125342_)))
                              (length (let ((__tmp130479
                                             (lambda (_g125384125387_
                                                      _g125385125389_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125384125387_
                                                       _g125385125389_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130479 '() _L125340_))))
                         (let ((__tmp130476
                                (let ((__tmp130477
                                       (lambda (_g125391125394_
                                                _g125392125396_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125391125394_
                                                 _g125392125396_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130477 '() _L125342_)))
                               (__tmp130474
                                (let ((__tmp130475
                                       (lambda (_g125398125401_
                                                _g125399125403_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125398125401_
                                                 _g125399125403_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130475 '() _L125340_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp130476
                                    __tmp130474))
                         (let ((__tmp130470
                                (let ((__tmp130473
                                       (lambda (_g125405125407_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g125405125407_
                                            _L125341_))))
                                      (__tmp130471
                                       (let ((__tmp130472
                                              (lambda (_g125409125412_
                                                       _g125410125414_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g125409125412_
                                                        _g125410125414_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp130472 '() _L125342_))))
                                  (declare (not safe))
                                  (find __tmp130473 __tmp130471))))
                           (declare (not safe))
                           (not __tmp130470)))
                    (___kont129058129059_ _L125340_ _L125341_ _L125342_)
                    (___match129099129100_
                     _e124666125228_
                     _hd124665125231_
                     _tl124664125233_
                     ___splice129060129061_
                     _target124667125236_
                     _tl124669125238_)))
              (___match129099129100_
               _e124666125228_
               _hd124665125231_
               _tl124664125233_
               ___splice129060129061_
               _target124667125236_
               _tl124669125238_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop124694125305_
                                     _target124691125300_
                                     '())))
                                (___match129099129100_
                                 _e124666125228_
                                 _hd124665125231_
                                 _tl124664125233_
                                 ___splice129060129061_
                                 _target124667125236_
                                 _tl124669125238_))))
                        (___match129099129100_
                         _e124666125228_
                         _hd124665125231_
                         _tl124664125233_
                         ___splice129060129061_
                         _target124667125236_
                         _tl124669125238_))
                    (___match129099129100_
                     _e124666125228_
                     _hd124665125231_
                     _tl124664125233_
                     ___splice129060129061_
                     _target124667125236_
                     _tl124669125238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129099129100_
                                                     _e124666125228_
                                                     _hd124665125231_
                                                     _tl124664125233_
                                                     ___splice129060129061_
                                                     _target124667125236_
                                                     _tl124669125238_))
                                                (___match129099129100_
                                                 _e124666125228_
                                                 _hd124665125231_
                                                 _tl124664125233_
                                                 ___splice129060129061_
                                                 _target124667125236_
                                                 _tl124669125238_))
                                            (___match129099129100_
                                             _e124666125228_
                                             _hd124665125231_
                                             _tl124664125233_
                                             ___splice129060129061_
                                             _target124667125236_
                                             _tl124669125238_))))
                                    (___match129099129100_
                                     _e124666125228_
                                     _hd124665125231_
                                     _tl124664125233_
                                     ___splice129060129061_
                                     _target124667125236_
                                     _tl124669125238_))))
                            (___match129099129100_
                             _e124666125228_
                             _hd124665125231_
                             _tl124664125233_
                             ___splice129060129061_
                             _target124667125236_
                             _tl124669125238_))
                        (___match129099129100_
                         _e124666125228_
                         _hd124665125231_
                         _tl124664125233_
                         ___splice129060129061_
                         _target124667125236_
                         _tl124669125238_))
                    (___match129099129100_
                     _e124666125228_
                     _hd124665125231_
                     _tl124664125233_
                     ___splice129060129061_
                     _target124667125236_
                     _tl124669125238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129099129100_
                                                     _e124666125228_
                                                     _hd124665125231_
                                                     _tl124664125233_
                                                     ___splice129060129061_
                                                     _target124667125236_
                                                     _tl124669125238_))))
                                            (___match129099129100_
                                             _e124666125228_
                                             _hd124665125231_
                                             _tl124664125233_
                                             ___splice129060129061_
                                             _target124667125236_
                                             _tl124669125238_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124670125241_ _target124667125236_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129056129057_))
                  (let ((_e124666125228_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129056129057_))))
                    (let ((_tl124664125233_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124666125228_)))
                          (_hd124665125231_
                           (let ()
                             (declare (not safe))
                             (##car _e124666125228_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124665125231_))
                          (let ((___splice129060129061_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124665125231_
                                    '0))))
                            (let ((_tl124669125238_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129060129061_ '1)))
                                  (_target124667125236_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129060129061_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124669125238_))
                                  (___match129087129088_
                                   _e124666125228_
                                   _hd124665125231_
                                   _tl124664125233_
                                   ___splice129060129061_
                                   _target124667125236_
                                   _tl124669125238_)
                                  (___match129099129100_
                                   _e124666125228_
                                   _hd124665125231_
                                   _tl124664125233_
                                   ___splice129060129061_
                                   _target124667125236_
                                   _tl124669125238_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124664125233_))
                              (let ((_e124781124836_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124664125233_))))
                                (let ((_tl124779124841_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124781124836_)))
                                      (_hd124780124839_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124781124836_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124780124839_))
                                      (let ((_e124784124844_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124780124839_))))
                                        (let ((_tl124782124849_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124784124844_)))
                                              (_hd124783124847_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124784124844_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124783124847_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124783124847_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124782124849_))
                                                      (let ((_e124787124852_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124782124849_))))
                (let ((_tl124785124857_
                       (let () (declare (not safe)) (##cdr _e124787124852_)))
                      (_hd124786124855_
                       (let () (declare (not safe)) (##car _e124787124852_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124786124855_))
                      (let ((_e124790124860_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124786124855_))))
                        (let ((_tl124788124865_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124790124860_)))
                              (_hd124789124863_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124790124860_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124789124863_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124789124863_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124788124865_))
                                      (let ((_e124793124868_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124788124865_))))
                                        (let ((_tl124791124873_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124793124868_)))
                                              (_hd124792124871_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124793124868_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124791124873_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124785124857_))
                                                  (let ((_e124796124876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124785124857_))))
                                                    (let ((_tl124794124881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124796124876_)))
                                                          (_hd124795124879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124796124876_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124795124879_))
                                                          (let ((_e124799124884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124795124879_))))
                    (let ((_tl124797124889_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124799124884_)))
                          (_hd124798124887_
                           (let ()
                             (declare (not safe))
                             (##car _e124799124884_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124798124887_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124798124887_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124797124889_))
                                  (let ((_e124802124892_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124797124889_))))
                                    (let ((_tl124800124897_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124802124892_)))
                                          (_hd124801124895_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124802124892_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124800124897_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124794124881_))
                                              (let ((_e124805124900_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124794124881_))))
                                                (let ((_tl124803124905_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124805124900_)))
                                                      (_hd124804124903_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124805124900_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124804124903_))
                                                      (let ((_e124808124908_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124804124903_))))
                (let ((_tl124806124913_
                       (let () (declare (not safe)) (##cdr _e124808124908_)))
                      (_hd124807124911_
                       (let () (declare (not safe)) (##car _e124808124908_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124807124911_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124807124911_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124806124913_))
                              (let ((_e124811124916_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124806124913_))))
                                (let ((_tl124809124921_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124811124916_)))
                                      (_hd124810124919_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124811124916_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124809124921_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124803124905_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124779124841_))
                                              (___match129197129198_
                                               _e124666125228_
                                               _hd124665125231_
                                               _tl124664125233_
                                               _e124781124836_
                                               _hd124780124839_
                                               _tl124779124841_
                                               _e124784124844_
                                               _hd124783124847_
                                               _tl124782124849_
                                               _e124787124852_
                                               _hd124786124855_
                                               _tl124785124857_
                                               _e124790124860_
                                               _hd124789124863_
                                               _tl124788124865_
                                               _e124793124868_
                                               _hd124792124871_
                                               _tl124791124873_
                                               _e124796124876_
                                               _hd124795124879_
                                               _tl124794124881_
                                               _e124799124884_
                                               _hd124798124887_
                                               _tl124797124889_
                                               _e124802124892_
                                               _hd124801124895_
                                               _tl124800124897_
                                               _e124805124900_
                                               _hd124804124903_
                                               _tl124803124905_
                                               _e124808124908_
                                               _hd124807124911_
                                               _tl124806124913_
                                               _e124811124916_
                                               _hd124810124919_
                                               _tl124809124921_)
                                              (___kont129072129073_))
                                          (___kont129072129073_))
                                      (___kont129072129073_))))
                              (___kont129072129073_))
                          (___kont129072129073_))
                      (___kont129072129073_))))
              (___kont129072129073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont129072129073_))
                                          (___kont129072129073_))))
                                  (___kont129072129073_))
                              (___kont129072129073_))
                          (___kont129072129073_))))
                  (___kont129072129073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129072129073_))
                                              (___kont129072129073_))))
                                      (___kont129072129073_))
                                  (___kont129072129073_))
                              (___kont129072129073_))))
                      (___kont129072129073_))))
              (___kont129072129073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129072129073_))
                                              (___kont129072129073_))))
                                      (___kont129072129073_))))
                              (___kont129072129073_)))))
                  (___kont129072129073_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form124122_)
        (let* ((___stx129200129201_ _form124122_)
               (_g124126124250_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129200129201_)))))
          (let ((___kont129202129203_
                 (lambda (_L124620_ _L124621_ _L124622_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124621_))))
                (___kont129208129209_
                 (lambda (_L124468_ _L124469_ _L124470_ _L124471_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124468_))))
                (___kont129212129213_
                 (lambda (_L124335_ _L124336_ _L124337_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124335_)))))
            (let* ((___match129309129310_
                    (lambda (_e124218124255_
                             _hd124217124258_
                             _tl124216124260_
                             _e124221124263_
                             _hd124220124266_
                             _tl124219124268_
                             _e124224124271_
                             _hd124223124274_
                             _tl124222124276_
                             _e124227124279_
                             _hd124226124282_
                             _tl124225124284_
                             _e124230124287_
                             _hd124229124290_
                             _tl124228124292_
                             _e124233124295_
                             _hd124232124298_
                             _tl124231124300_
                             _e124236124303_
                             _hd124235124306_
                             _tl124234124308_
                             _e124239124311_
                             _hd124238124314_
                             _tl124237124316_
                             _e124242124319_
                             _hd124241124322_
                             _tl124240124324_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124234124308_))
                          (let ((_e124245124327_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124234124308_))))
                            (let ((_tl124243124332_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124245124327_)))
                                  (_hd124244124330_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124245124327_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124243124332_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124219124268_))
                                      (___kont129212129213_
                                       _hd124241124322_
                                       _hd124232124298_
                                       _hd124217124258_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124126124250_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124126124250_)))))
                          (let () (declare (not safe)) (_g124126124250_)))))
                   (___match129239129240_
                    (lambda (_e124179124372_
                             _hd124178124375_
                             _tl124177124377_
                             ___splice129210129211_
                             _target124180124380_
                             _tl124182124382_)
                      (letrec ((_loop124183124385_
                                (lambda (_hd124181124388_ _arg124187124390_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124181124388_))
                                      (let ((_e124184124393_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124181124388_))))
                                        (let ((_lp-tl124186124398_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124184124393_)))
                                              (_lp-hd124185124396_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124184124393_))))
                                          (let ((__tmp130484
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124185124396_
                                                         _arg124187124390_))))
                                            (declare (not safe))
                                            (_loop124183124385_
                                             _lp-tl124186124398_
                                             __tmp130484))))
                                      (let ((_arg124188124401_
                                             (reverse _arg124187124390_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124177124377_))
                                            (let ((_e124191124404_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124177124377_))))
                                              (let ((_tl124189124409_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124191124404_)))
                                                    (_hd124190124407_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124191124404_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124190124407_))
                                                    (let ((_e124194124412_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124190124407_))))
                                                      (let ((_tl124192124417_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124194124412_)))
                    (_hd124193124415_
                     (let () (declare (not safe)) (##car _e124194124412_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124193124415_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124193124415_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124192124417_))
                            (let ((_e124197124420_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124192124417_))))
                              (let ((_tl124195124425_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124197124420_)))
                                    (_hd124196124423_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124197124420_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124196124423_))
                                    (let ((_e124200124428_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124196124423_))))
                                      (let ((_tl124198124433_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124200124428_)))
                                            (_hd124199124431_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124200124428_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124199124431_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124199124431_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124198124433_))
                                                    (let ((_e124203124436_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124198124433_))))
                                                      (let ((_tl124201124441_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124203124436_)))
                    (_hd124202124439_
                     (let () (declare (not safe)) (##car _e124203124436_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124201124441_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124195124425_))
                        (let ((_e124206124444_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124195124425_))))
                          (let ((_tl124204124449_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124206124444_)))
                                (_hd124205124447_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124206124444_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124205124447_))
                                (let ((_e124209124452_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124205124447_))))
                                  (let ((_tl124207124457_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124209124452_)))
                                        (_hd124208124455_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124209124452_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124208124455_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124208124455_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124207124457_))
                                                (let ((_e124212124460_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124207124457_))))
                                                  (let ((_tl124210124465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124212124460_)))
                                                        (_hd124211124463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124212124460_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124210124465_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl124189124409_))
                                                            (___kont129208129209_
                                                             _hd124211124463_
                                                             _hd124202124439_
                                                             _tl124182124382_
                                                             _arg124188124401_)
                                                            (___match129309129310_
                                                             _e124179124372_
                                                             _hd124178124375_
                                                             _tl124177124377_
                                                             _e124191124404_
                                                             _hd124190124407_
                                                             _tl124189124409_
                                                             _e124194124412_
                                                             _hd124193124415_
                                                             _tl124192124417_
                                                             _e124197124420_
                                                             _hd124196124423_
                                                             _tl124195124425_
                                                             _e124200124428_
                                                             _hd124199124431_
                                                             _tl124198124433_
                                                             _e124203124436_
                                                             _hd124202124439_
                                                             _tl124201124441_
                                                             _e124206124444_
                                                             _hd124205124447_
                                                             _tl124204124449_
                                                             _e124209124452_
                                                             _hd124208124455_
                                                             _tl124207124457_
                                                             _e124212124460_
                                                             _hd124211124463_
                                                             _tl124210124465_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g124126124250_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124126124250_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124126124250_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g124126124250_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124126124250_)))))
                        (let () (declare (not safe)) (_g124126124250_)))
                    (let () (declare (not safe)) (_g124126124250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124126124250_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124126124250_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124126124250_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g124126124250_)))))
                            (let () (declare (not safe)) (_g124126124250_)))
                        (let () (declare (not safe)) (_g124126124250_)))
                    (let () (declare (not safe)) (_g124126124250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124126124250_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g124126124250_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop124183124385_ _target124180124380_ '())))))
                   (___match129227129228_
                    (lambda (_e124133124508_
                             _hd124132124511_
                             _tl124131124513_
                             ___splice129204129205_
                             _target124134124516_
                             _tl124136124518_)
                      (letrec ((_loop124137124521_
                                (lambda (_hd124135124524_ _arg124141124526_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124135124524_))
                                      (let ((_e124138124529_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124135124524_))))
                                        (let ((_lp-tl124140124534_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124138124529_)))
                                              (_lp-hd124139124532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124138124529_))))
                                          (let ((__tmp130486
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124139124532_
                                                         _arg124141124526_))))
                                            (declare (not safe))
                                            (_loop124137124521_
                                             _lp-tl124140124534_
                                             __tmp130486))))
                                      (let ((_arg124142124537_
                                             (reverse _arg124141124526_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124131124513_))
                                            (let ((_e124145124540_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124131124513_))))
                                              (let ((_tl124143124545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124145124540_)))
                                                    (_hd124144124543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124145124540_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124144124543_))
                                                    (let ((_e124148124548_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124144124543_))))
                                                      (let ((_tl124146124553_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124148124548_)))
                    (_hd124147124551_
                     (let () (declare (not safe)) (##car _e124148124548_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124147124551_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124147124551_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124146124553_))
                            (let ((_e124151124556_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124146124553_))))
                              (let ((_tl124149124561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124151124556_)))
                                    (_hd124150124559_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124151124556_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124150124559_))
                                    (let ((_e124154124564_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124150124559_))))
                                      (let ((_tl124152124569_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124154124564_)))
                                            (_hd124153124567_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124154124564_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124153124567_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124153124567_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124152124569_))
                                                    (let ((_e124157124572_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124152124569_))))
                                                      (let ((_tl124155124577_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124157124572_)))
                    (_hd124156124575_
                     (let () (declare (not safe)) (##car _e124157124572_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124155124577_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124149124561_))
                        (let ((___splice129206129207_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124149124561_
                                  '0))))
                          (let ((_tl124160124582_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129206129207_ '1)))
                                (_target124158124580_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129206129207_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124160124582_))
                                (letrec ((_loop124161124585_
                                          (lambda (_hd124159124588_
                                                   _xarg124165124590_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124159124588_))
                                                (let ((_e124162124593_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124159124588_))))
                                                  (let ((_lp-tl124164124598_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124162124593_)))
                                                        (_lp-hd124163124596_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124162124593_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124163124596_))
                                                        (let ((_e124169124601_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124163124596_))))
                  (let ((_tl124167124606_
                         (let () (declare (not safe)) (##cdr _e124169124601_)))
                        (_hd124168124604_
                         (let ()
                           (declare (not safe))
                           (##car _e124169124601_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124168124604_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124168124604_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124167124606_))
                                (let ((_e124172124609_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124167124606_))))
                                  (let ((_tl124170124614_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124172124609_)))
                                        (_hd124171124612_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124172124609_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124170124614_))
                                        (let ((__tmp130485
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124171124612_
                                                       _xarg124165124590_))))
                                          (declare (not safe))
                                          (_loop124161124585_
                                           _lp-tl124164124598_
                                           __tmp130485))
                                        (___match129239129240_
                                         _e124133124508_
                                         _hd124132124511_
                                         _tl124131124513_
                                         ___splice129204129205_
                                         _target124134124516_
                                         _tl124136124518_))))
                                (___match129239129240_
                                 _e124133124508_
                                 _hd124132124511_
                                 _tl124131124513_
                                 ___splice129204129205_
                                 _target124134124516_
                                 _tl124136124518_))
                            (___match129239129240_
                             _e124133124508_
                             _hd124132124511_
                             _tl124131124513_
                             ___splice129204129205_
                             _target124134124516_
                             _tl124136124518_))
                        (___match129239129240_
                         _e124133124508_
                         _hd124132124511_
                         _tl124131124513_
                         ___splice129204129205_
                         _target124134124516_
                         _tl124136124518_))))
                (___match129239129240_
                 _e124133124508_
                 _hd124132124511_
                 _tl124131124513_
                 ___splice129204129205_
                 _target124134124516_
                 _tl124136124518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124166124617_
                                                       (reverse _xarg124165124590_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124143124545_))
                                                      (___kont129202129203_
                                                       _xarg124166124617_
                                                       _hd124156124575_
                                                       _arg124142124537_)
                                                      (___match129239129240_
                                                       _e124133124508_
                                                       _hd124132124511_
                                                       _tl124131124513_
                                                       ___splice129204129205_
                                                       _target124134124516_
                                                       _tl124136124518_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop124161124585_
                                     _target124158124580_
                                     '())))
                                (___match129239129240_
                                 _e124133124508_
                                 _hd124132124511_
                                 _tl124131124513_
                                 ___splice129204129205_
                                 _target124134124516_
                                 _tl124136124518_))))
                        (___match129239129240_
                         _e124133124508_
                         _hd124132124511_
                         _tl124131124513_
                         ___splice129204129205_
                         _target124134124516_
                         _tl124136124518_))
                    (___match129239129240_
                     _e124133124508_
                     _hd124132124511_
                     _tl124131124513_
                     ___splice129204129205_
                     _target124134124516_
                     _tl124136124518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129239129240_
                                                     _e124133124508_
                                                     _hd124132124511_
                                                     _tl124131124513_
                                                     ___splice129204129205_
                                                     _target124134124516_
                                                     _tl124136124518_))
                                                (___match129239129240_
                                                 _e124133124508_
                                                 _hd124132124511_
                                                 _tl124131124513_
                                                 ___splice129204129205_
                                                 _target124134124516_
                                                 _tl124136124518_))
                                            (___match129239129240_
                                             _e124133124508_
                                             _hd124132124511_
                                             _tl124131124513_
                                             ___splice129204129205_
                                             _target124134124516_
                                             _tl124136124518_))))
                                    (___match129239129240_
                                     _e124133124508_
                                     _hd124132124511_
                                     _tl124131124513_
                                     ___splice129204129205_
                                     _target124134124516_
                                     _tl124136124518_))))
                            (___match129239129240_
                             _e124133124508_
                             _hd124132124511_
                             _tl124131124513_
                             ___splice129204129205_
                             _target124134124516_
                             _tl124136124518_))
                        (___match129239129240_
                         _e124133124508_
                         _hd124132124511_
                         _tl124131124513_
                         ___splice129204129205_
                         _target124134124516_
                         _tl124136124518_))
                    (___match129239129240_
                     _e124133124508_
                     _hd124132124511_
                     _tl124131124513_
                     ___splice129204129205_
                     _target124134124516_
                     _tl124136124518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129239129240_
                                                     _e124133124508_
                                                     _hd124132124511_
                                                     _tl124131124513_
                                                     ___splice129204129205_
                                                     _target124134124516_
                                                     _tl124136124518_))))
                                            (___match129239129240_
                                             _e124133124508_
                                             _hd124132124511_
                                             _tl124131124513_
                                             ___splice129204129205_
                                             _target124134124516_
                                             _tl124136124518_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124137124521_ _target124134124516_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129200129201_))
                  (let ((_e124133124508_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129200129201_))))
                    (let ((_tl124131124513_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124133124508_)))
                          (_hd124132124511_
                           (let ()
                             (declare (not safe))
                             (##car _e124133124508_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124132124511_))
                          (let ((___splice129204129205_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124132124511_
                                    '0))))
                            (let ((_tl124136124518_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129204129205_ '1)))
                                  (_target124134124516_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129204129205_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124136124518_))
                                  (___match129227129228_
                                   _e124133124508_
                                   _hd124132124511_
                                   _tl124131124513_
                                   ___splice129204129205_
                                   _target124134124516_
                                   _tl124136124518_)
                                  (___match129239129240_
                                   _e124133124508_
                                   _hd124132124511_
                                   _tl124131124513_
                                   ___splice129204129205_
                                   _target124134124516_
                                   _tl124136124518_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124131124513_))
                              (let ((_e124221124263_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124131124513_))))
                                (let ((_tl124219124268_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124221124263_)))
                                      (_hd124220124266_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124221124263_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124220124266_))
                                      (let ((_e124224124271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124220124266_))))
                                        (let ((_tl124222124276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124224124271_)))
                                              (_hd124223124274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124224124271_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124223124274_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124223124274_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124222124276_))
                                                      (let ((_e124227124279_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124222124276_))))
                (let ((_tl124225124284_
                       (let () (declare (not safe)) (##cdr _e124227124279_)))
                      (_hd124226124282_
                       (let () (declare (not safe)) (##car _e124227124279_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124226124282_))
                      (let ((_e124230124287_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124226124282_))))
                        (let ((_tl124228124292_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124230124287_)))
                              (_hd124229124290_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124230124287_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124229124290_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124229124290_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124228124292_))
                                      (let ((_e124233124295_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124228124292_))))
                                        (let ((_tl124231124300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124233124295_)))
                                              (_hd124232124298_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124233124295_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124231124300_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124225124284_))
                                                  (let ((_e124236124303_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124225124284_))))
                                                    (let ((_tl124234124308_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124236124303_)))
                                                          (_hd124235124306_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124236124303_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124235124306_))
                                                          (let ((_e124239124311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124235124306_))))
                    (let ((_tl124237124316_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124239124311_)))
                          (_hd124238124314_
                           (let ()
                             (declare (not safe))
                             (##car _e124239124311_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124238124314_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124238124314_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124237124316_))
                                  (let ((_e124242124319_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124237124316_))))
                                    (let ((_tl124240124324_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124242124319_)))
                                          (_hd124241124322_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124242124319_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124240124324_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124234124308_))
                                              (let ((_e124245124327_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124234124308_))))
                                                (let ((_tl124243124332_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124245124327_)))
                                                      (_hd124244124330_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124245124327_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124243124332_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124219124268_))
                                                          (___kont129212129213_
                                                           _hd124241124322_
                                                           _hd124232124298_
                                                           _hd124132124511_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124126124250_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124126124250_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124126124250_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g124126124250_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124126124250_)))
                              (let () (declare (not safe)) (_g124126124250_)))
                          (let () (declare (not safe)) (_g124126124250_)))))
                  (let () (declare (not safe)) (_g124126124250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124126124250_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124126124250_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124126124250_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124126124250_)))
                              (let ()
                                (declare (not safe))
                                (_g124126124250_)))))
                      (let () (declare (not safe)) (_g124126124250_)))))
              (let () (declare (not safe)) (_g124126124250_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124126124250_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124126124250_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124126124250_)))))
                              (let ()
                                (declare (not safe))
                                (_g124126124250_))))))
                  (let () (declare (not safe)) (_g124126124250_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form123926_)
        (let* ((_g123928123942_
                (lambda (_g123929123939_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123929123939_))))
               (_g123927124119_
                (lambda (_g123929123945_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123929123945_))
                      (let ((_e123934123947_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123929123945_))))
                        (let ((_hd123933123950_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123934123947_)))
                              (_tl123932123952_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123934123947_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123932123952_))
                              (let ((_e123937123955_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123932123952_))))
                                (let ((_hd123936123958_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123937123955_)))
                                      (_tl123935123960_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123937123955_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123935123960_))
                                      ((lambda (_L123963_ _L123964_)
                                         (let* ((___stx129322129323_ _L123964_)
                                                (_g123979124007_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx129322129323_)))))
                                           (let ((___kont129324129325_
                                                  (lambda (_L124098_)
                                                    (length (let ((__tmp130487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124108124111_ _g124109124113_)
                             (let ()
                               (declare (not safe))
                               (cons _g124108124111_ _g124109124113_)))))
                      (declare (not safe))
                      (foldr1 __tmp130487 '() _L124098_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129328129329_
                                                  (lambda (_L124049_ _L124050_)
                                                    (let ((__tmp130488
                                                           (length (let ((__tmp130489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g124061124064_ _g124062124066_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g124061124064_
                                            _g124062124066_)))))
                             (declare (not safe))
                             (foldr1 __tmp130489 '() _L124050_)))))
              (declare (not safe))
              (cons __tmp130488 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129332129333_
                                                  (lambda (_L124012_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match129347129348_
                                                     (lambda (___splice129330129331_
                                                              _target123993124025_
                                                              _tl123995124027_)
                                                       (letrec ((_loop123996124030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123994124033_ _arg124000124035_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123994124033_))
                               (let ((_e123997124038_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123994124033_))))
                                 (let ((_lp-tl123999124043_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123997124038_)))
                                       (_lp-hd123998124041_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123997124038_))))
                                   (let ((__tmp130490
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123998124041_
                                                  _arg124000124035_))))
                                     (declare (not safe))
                                     (_loop123996124030_
                                      _lp-tl123999124043_
                                      __tmp130490))))
                               (let ((_arg124001124046_
                                      (reverse _arg124000124035_)))
                                 (___kont129328129329_
                                  _tl123995124027_
                                  _arg124001124046_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123996124030_ _target123993124025_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129341129342_
                                                     (lambda (___splice129326129327_
                                                              _target123982124074_
                                                              _tl123984124076_)
                                                       (letrec ((_loop123985124079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123983124082_ _arg123989124084_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123983124082_))
                               (let ((_e123986124087_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123983124082_))))
                                 (let ((_lp-tl123988124092_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123986124087_)))
                                       (_lp-hd123987124090_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123986124087_))))
                                   (let ((__tmp130491
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123987124090_
                                                  _arg123989124084_))))
                                     (declare (not safe))
                                     (_loop123985124079_
                                      _lp-tl123988124092_
                                      __tmp130491))))
                               (let ((_arg123990124095_
                                      (reverse _arg123989124084_)))
                                 (___kont129324129325_ _arg123990124095_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123985124079_ _target123982124074_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx129322129323_))
                                                   (let ((___splice129326129327_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx129322129323_
                                                             '0))))
                                                     (let ((_tl123984124076_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129326129327_
                                                               '1)))
                                                           (_target123982124074_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129326129327_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl123984124076_))
                                                           (___match129341129342_
                                                            ___splice129326129327_
                                                            _target123982124074_
                                                            _tl123984124076_)
                                                           (___match129347129348_
                                                            ___splice129326129327_
                                                            _target123982124074_
                                                            _tl123984124076_))))
                                                   (___kont129332129333_
                                                    ___stx129322129323_))))))
                                       _hd123936123958_
                                       _hd123933123950_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123928123942_ _g123929123945_)))))
                              (let ()
                                (declare (not safe))
                                (_g123928123942_ _g123929123945_)))))
                      (let ()
                        (declare (not safe))
                        (_g123928123942_ _g123929123945_))))))
          (declare (not safe))
          (_g123927124119_ _form123926_))))
    (define gxc#lambda-expr?
      (lambda (_expr123879_)
        (let* ((___stx129350129351_ _expr123879_)
               (_g123882123892_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129350129351_)))))
          (let ((___kont129352129353_ (lambda (_L123912_) '#t))
                (___kont129354129355_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129350129351_))
                (let ((_e123887123904_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129350129351_))))
                  (let ((_tl123885123909_
                         (let () (declare (not safe)) (##cdr _e123887123904_)))
                        (_hd123886123907_
                         (let ()
                           (declare (not safe))
                           (##car _e123887123904_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123886123907_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd123886123907_))
                            (___kont129352129353_ _tl123885123909_)
                            (___kont129354129355_))
                        (___kont129354129355_))))
                (___kont129354129355_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr123832_)
        (let* ((___stx129368129369_ _expr123832_)
               (_g123835123845_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129368129369_)))))
          (let ((___kont129370129371_ (lambda (_L123865_) '#t))
                (___kont129372129373_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129368129369_))
                (let ((_e123840123857_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129368129369_))))
                  (let ((_tl123838123862_
                         (let () (declare (not safe)) (##cdr _e123840123857_)))
                        (_hd123839123860_
                         (let ()
                           (declare (not safe))
                           (##car _e123840123857_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123839123860_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd123839123860_))
                            (___kont129370129371_ _tl123838123862_)
                            (___kont129372129373_))
                        (___kont129372129373_))))
                (___kont129372129373_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr123701_)
        (let* ((___stx129386129387_ _expr123701_)
               (_g123704123734_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129386129387_)))))
          (let ((___kont129388129389_
                 (lambda (_L123802_ _L123803_ _L123804_)
                   (if (let () (declare (not safe)) (gx#identifier? _L123804_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L123803_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L123802_))
                           '#f)
                       '#f)))
                (___kont129390129391_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129386129387_))
                (let ((_e123711123746_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129386129387_))))
                  (let ((_tl123709123751_
                         (let () (declare (not safe)) (##cdr _e123711123746_)))
                        (_hd123710123749_
                         (let ()
                           (declare (not safe))
                           (##car _e123711123746_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123710123749_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123710123749_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123709123751_))
                                (let ((_e123714123754_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123709123751_))))
                                  (let ((_tl123712123759_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123714123754_)))
                                        (_hd123713123757_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123714123754_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123713123757_))
                                        (let ((_e123717123762_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123713123757_))))
                                          (let ((_tl123715123767_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123717123762_)))
                                                (_hd123716123765_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123717123762_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123716123765_))
                                                (let ((_e123720123770_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123716123765_))))
                                                  (let ((_tl123718123775_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123720123770_)))
                                                        (_hd123719123773_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123720123770_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123719123773_))
                                                        (let ((_e123723123778_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123719123773_))))
                  (let ((_tl123721123783_
                         (let () (declare (not safe)) (##cdr _e123723123778_)))
                        (_hd123722123781_
                         (let ()
                           (declare (not safe))
                           (##car _e123723123778_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123721123783_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123718123775_))
                            (let ((_e123726123786_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123718123775_))))
                              (let ((_tl123724123791_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123726123786_)))
                                    (_hd123725123789_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123726123786_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123724123791_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123715123767_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123712123759_))
                                            (let ((_e123729123794_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123712123759_))))
                                              (let ((_tl123727123799_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123729123794_)))
                                                    (_hd123728123797_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123729123794_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123727123799_))
                                                    (___kont129388129389_
                                                     _hd123728123797_
                                                     _hd123725123789_
                                                     _hd123722123781_)
                                                    (___kont129390129391_))))
                                            (___kont129390129391_))
                                        (___kont129390129391_))
                                    (___kont129390129391_))))
                            (___kont129390129391_))
                        (___kont129390129391_))))
                (___kont129390129391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129390129391_))))
                                        (___kont129390129391_))))
                                (___kont129390129391_))
                            (___kont129390129391_))
                        (___kont129390129391_))))
                (___kont129390129391_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr123026_)
        (let* ((___stx129448129449_ _expr123026_)
               (_g123029123187_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129448129449_)))))
          (let ((___kont129450129451_
                 (lambda (_L123575_
                          _L123576_
                          _L123577_
                          _L123578_
                          _L123579_
                          _L123580_
                          _L123581_
                          _L123582_
                          _L123583_
                          _L123584_
                          _L123585_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L123582_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L123578_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L123577_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L123585_
                                      _L123576_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L123584_
                                          _L123581_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123579_
                                              _L123575_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123583_
                                              _L123580_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont129452129453_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129448129449_))
                (let ((_e123044123199_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129448129449_))))
                  (let ((_tl123042123204_
                         (let () (declare (not safe)) (##cdr _e123044123199_)))
                        (_hd123043123202_
                         (let ()
                           (declare (not safe))
                           (##car _e123044123199_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123043123202_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123043123202_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123042123204_))
                                (let ((_e123047123207_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123042123204_))))
                                  (let ((_tl123045123212_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123047123207_)))
                                        (_hd123046123210_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123047123207_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123046123210_))
                                        (let ((_e123050123215_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123046123210_))))
                                          (let ((_tl123048123220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123050123215_)))
                                                (_hd123049123218_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123050123215_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123049123218_))
                                                (let ((_e123053123223_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123049123218_))))
                                                  (let ((_tl123051123228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123053123223_)))
                                                        (_hd123052123226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123053123223_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123052123226_))
                                                        (let ((_e123056123231_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123052123226_))))
                  (let ((_tl123054123236_
                         (let () (declare (not safe)) (##cdr _e123056123231_)))
                        (_hd123055123234_
                         (let ()
                           (declare (not safe))
                           (##car _e123056123231_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123054123236_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123051123228_))
                            (let ((_e123059123239_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123051123228_))))
                              (let ((_tl123057123244_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123059123239_)))
                                    (_hd123058123242_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123059123239_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123058123242_))
                                    (let ((_e123062123247_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123058123242_))))
                                      (let ((_tl123060123252_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123062123247_)))
                                            (_hd123061123250_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123062123247_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123061123250_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd123061123250_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123060123252_))
                                                    (let ((_e123065123255_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123060123252_))))
                                                      (let ((_tl123063123260_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123065123255_)))
                    (_hd123064123258_
                     (let () (declare (not safe)) (##car _e123065123255_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123064123258_))
                    (let ((_e123068123263_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123064123258_))))
                      (let ((_tl123066123268_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123068123263_)))
                            (_hd123067123266_
                             (let ()
                               (declare (not safe))
                               (##car _e123068123263_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123067123266_))
                            (let ((_e123071123271_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123067123266_))))
                              (let ((_tl123069123276_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123071123271_)))
                                    (_hd123070123274_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123071123271_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123070123274_))
                                    (let ((_e123074123279_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123070123274_))))
                                      (let ((_tl123072123284_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123074123279_)))
                                            (_hd123073123282_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123074123279_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123072123284_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123069123276_))
                                                (let ((_e123077123287_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123069123276_))))
                                                  (let ((_tl123075123292_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123077123287_)))
                                                        (_hd123076123290_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123077123287_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123075123292_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl123066123268_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123063123260_))
                        (let ((_e123080123295_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123063123260_))))
                          (let ((_tl123078123300_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123080123295_)))
                                (_hd123079123298_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123080123295_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123079123298_))
                                (let ((_e123083123303_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123079123298_))))
                                  (let ((_tl123081123308_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123083123303_)))
                                        (_hd123082123306_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123083123303_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123082123306_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd123082123306_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123081123308_))
                                                (let ((_e123086123311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123081123308_))))
                                                  (let ((_tl123084123316_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123086123311_)))
                                                        (_hd123085123314_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123086123311_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123085123314_))
                                                        (let ((_e123089123319_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123085123314_))))
                  (let ((_tl123087123324_
                         (let () (declare (not safe)) (##cdr _e123089123319_)))
                        (_hd123088123322_
                         (let ()
                           (declare (not safe))
                           (##car _e123089123319_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123084123316_))
                        (let ((_e123092123327_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123084123316_))))
                          (let ((_tl123090123332_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123092123327_)))
                                (_hd123091123330_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123092123327_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123091123330_))
                                (let ((_e123095123335_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123091123330_))))
                                  (let ((_tl123093123340_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123095123335_)))
                                        (_hd123094123338_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123095123335_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123094123338_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd123094123338_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123093123340_))
                                                (let ((_e123098123343_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123093123340_))))
                                                  (let ((_tl123096123348_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123098123343_)))
                                                        (_hd123097123346_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123098123343_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123097123346_))
                                                        (let ((_e123101123351_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123097123346_))))
                  (let ((_tl123099123356_
                         (let () (declare (not safe)) (##cdr _e123101123351_)))
                        (_hd123100123354_
                         (let ()
                           (declare (not safe))
                           (##car _e123101123351_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123100123354_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123100123354_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123099123356_))
                                (let ((_e123104123359_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123099123356_))))
                                  (let ((_tl123102123364_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123104123359_)))
                                        (_hd123103123362_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123104123359_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123102123364_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123096123348_))
                                            (let ((_e123107123367_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123096123348_))))
                                              (let ((_tl123105123372_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123107123367_)))
                                                    (_hd123106123370_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123107123367_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123106123370_))
                                                    (let ((_e123110123375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123106123370_))))
                                                      (let ((_tl123108123380_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123110123375_)))
                    (_hd123109123378_
                     (let () (declare (not safe)) (##car _e123110123375_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123109123378_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123109123378_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123108123380_))
                            (let ((_e123113123383_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123108123380_))))
                              (let ((_tl123111123388_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123113123383_)))
                                    (_hd123112123386_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123113123383_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123111123388_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123105123372_))
                                        (let ((_e123116123391_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123105123372_))))
                                          (let ((_tl123114123396_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123116123391_)))
                                                (_hd123115123394_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123116123391_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123115123394_))
                                                (let ((_e123119123399_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123115123394_))))
                                                  (let ((_tl123117123404_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123119123399_)))
                                                        (_hd123118123402_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123119123399_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd123118123402_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd123118123402_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123117123404_))
                        (let ((_e123122123407_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123117123404_))))
                          (let ((_tl123120123412_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123122123407_)))
                                (_hd123121123410_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123122123407_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123120123412_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123090123332_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123078123300_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123057123244_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123048123220_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123045123212_))
                                                    (let ((_e123125123415_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123045123212_))))
                                                      (let ((_tl123123123420_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123125123415_)))
                    (_hd123124123418_
                     (let () (declare (not safe)) (##car _e123125123415_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123124123418_))
                    (let ((_e123128123423_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123124123418_))))
                      (let ((_tl123126123428_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123128123423_)))
                            (_hd123127123426_
                             (let ()
                               (declare (not safe))
                               (##car _e123128123423_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123127123426_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd123127123426_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123126123428_))
                                    (let ((_e123131123431_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123126123428_))))
                                      (let ((_tl123129123436_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123131123431_)))
                                            (_hd123130123434_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123131123431_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123129123436_))
                                            (let ((_e123134123439_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123129123436_))))
                                              (let ((_tl123132123444_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123134123439_)))
                                                    (_hd123133123442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123134123439_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123133123442_))
                                                    (let ((_e123137123447_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123133123442_))))
                                                      (let ((_tl123135123452_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123137123447_)))
                    (_hd123136123450_
                     (let () (declare (not safe)) (##car _e123137123447_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123136123450_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123136123450_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123135123452_))
                            (let ((_e123140123455_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123135123452_))))
                              (let ((_tl123138123460_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123140123455_)))
                                    (_hd123139123458_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123140123455_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123139123458_))
                                    (let ((_e123143123463_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123139123458_))))
                                      (let ((_tl123141123468_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123143123463_)))
                                            (_hd123142123466_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123143123463_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123142123466_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123142123466_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123141123468_))
                                                    (let ((_e123146123471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123141123468_))))
                                                      (let ((_tl123144123476_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123146123471_)))
                    (_hd123145123474_
                     (let () (declare (not safe)) (##car _e123146123471_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123144123476_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123138123460_))
                        (let ((_e123149123479_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123138123460_))))
                          (let ((_tl123147123484_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123149123479_)))
                                (_hd123148123482_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123149123479_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123148123482_))
                                (let ((_e123152123487_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123148123482_))))
                                  (let ((_tl123150123492_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123152123487_)))
                                        (_hd123151123490_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123152123487_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123151123490_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123151123490_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123150123492_))
                                                (let ((_e123155123495_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123150123492_))))
                                                  (let ((_tl123153123500_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123155123495_)))
                                                        (_hd123154123498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123155123495_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123153123500_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl123147123484_))
                                                            (let ((_e123158123503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl123147123484_))))
                      (let ((_tl123156123508_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123158123503_)))
                            (_hd123157123506_
                             (let ()
                               (declare (not safe))
                               (##car _e123158123503_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123157123506_))
                            (let ((_e123161123511_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123157123506_))))
                              (let ((_tl123159123516_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123161123511_)))
                                    (_hd123160123514_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123161123511_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd123160123514_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd123160123514_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123159123516_))
                                            (let ((_e123164123519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123159123516_))))
                                              (let ((_tl123162123524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123164123519_)))
                                                    (_hd123163123522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123164123519_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123162123524_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123156123508_))
                                                        (let ((_e123167123527_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123156123508_))))
                  (let ((_tl123165123532_
                         (let () (declare (not safe)) (##cdr _e123167123527_)))
                        (_hd123166123530_
                         (let ()
                           (declare (not safe))
                           (##car _e123167123527_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd123166123530_))
                        (let ((_e123170123535_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd123166123530_))))
                          (let ((_tl123168123540_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123170123535_)))
                                (_hd123169123538_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123170123535_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd123169123538_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd123169123538_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123168123540_))
                                        (let ((_e123173123543_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123168123540_))))
                                          (let ((_tl123171123548_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123173123543_)))
                                                (_hd123172123546_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123173123543_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123171123548_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123165123532_))
                                                    (let ((_e123176123551_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123165123532_))))
                                                      (let ((_tl123174123556_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123176123551_)))
                    (_hd123175123554_
                     (let () (declare (not safe)) (##car _e123176123551_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123175123554_))
                    (let ((_e123179123559_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123175123554_))))
                      (let ((_tl123177123564_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123179123559_)))
                            (_hd123178123562_
                             (let ()
                               (declare (not safe))
                               (##car _e123179123559_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123178123562_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd123178123562_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123177123564_))
                                    (let ((_e123182123567_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123177123564_))))
                                      (let ((_tl123180123572_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123182123567_)))
                                            (_hd123181123570_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123182123567_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123180123572_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123174123556_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123132123444_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123123123420_))
                                                        (___kont129450129451_
                                                         _hd123181123570_
                                                         _hd123172123546_
                                                         _hd123154123498_
                                                         _hd123145123474_
                                                         _hd123130123434_
                                                         _hd123121123410_
                                                         _hd123112123386_
                                                         _hd123103123362_
                                                         _hd123088123322_
                                                         _hd123073123282_
                                                         _hd123055123234_)
                                                        (___kont129452129453_))
                                                    (___kont129452129453_))
                                                (___kont129452129453_))
                                            (___kont129452129453_))))
                                    (___kont129452129453_))
                                (___kont129452129453_))
                            (___kont129452129453_))))
                    (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129452129453_))
                                                (___kont129452129453_))))
                                        (___kont129452129453_))
                                    (___kont129452129453_))
                                (___kont129452129453_))))
                        (___kont129452129453_))))
                (___kont129452129453_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129452129453_))))
                                            (___kont129452129453_))
                                        (___kont129452129453_))
                                    (___kont129452129453_))))
                            (___kont129452129453_))))
                    (___kont129452129453_))
                (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129452129453_))
                                            (___kont129452129453_))
                                        (___kont129452129453_))))
                                (___kont129452129453_))))
                        (___kont129452129453_))
                    (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129452129453_))
                                                (___kont129452129453_))
                                            (___kont129452129453_))))
                                    (___kont129452129453_))))
                            (___kont129452129453_))
                        (___kont129452129453_))
                    (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129452129453_))))
                                            (___kont129452129453_))))
                                    (___kont129452129453_))
                                (___kont129452129453_))
                            (___kont129452129453_))))
                    (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129452129453_))
                                                (___kont129452129453_))
                                            (___kont129452129453_))
                                        (___kont129452129453_))
                                    (___kont129452129453_))
                                (___kont129452129453_))))
                        (___kont129452129453_))
                    (___kont129452129453_))
                (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129452129453_))))
                                        (___kont129452129453_))
                                    (___kont129452129453_))))
                            (___kont129452129453_))
                        (___kont129452129453_))
                    (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129452129453_))))
                                            (___kont129452129453_))
                                        (___kont129452129453_))))
                                (___kont129452129453_))
                            (___kont129452129453_))
                        (___kont129452129453_))))
                (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129452129453_))
                                            (___kont129452129453_))
                                        (___kont129452129453_))))
                                (___kont129452129453_))))
                        (___kont129452129453_))))
                (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129452129453_))
                                            (___kont129452129453_))
                                        (___kont129452129453_))))
                                (___kont129452129453_))))
                        (___kont129452129453_))
                    (___kont129452129453_))
                (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129452129453_))
                                            (___kont129452129453_))))
                                    (___kont129452129453_))))
                            (___kont129452129453_))))
                    (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129452129453_))
                                                (___kont129452129453_))
                                            (___kont129452129453_))))
                                    (___kont129452129453_))))
                            (___kont129452129453_))
                        (___kont129452129453_))))
                (___kont129452129453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129452129453_))))
                                        (___kont129452129453_))))
                                (___kont129452129453_))
                            (___kont129452129453_))
                        (___kont129452129453_))))
                (___kont129452129453_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx122768_ _id122769_ _clauses122770_ _gensym?122771_)
        (let _lp122773_ ((_rest122775_ _clauses122770_)
                         (_ids122776_ '())
                         (_impls122777_ '())
                         (_clauses122778_ '()))
          (let* ((_rest122779122787_ _rest122775_)
                 (_else122781122795_
                  (lambda ()
                    (values (reverse _ids122776_)
                            (reverse _impls122777_)
                            (reverse _clauses122778_))))
                 (_K122783123000_
                  (lambda (_rest122798_ _clause122799_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause122799_))
                        (let ((__tmp130547
                               (let ()
                                 (declare (not safe))
                                 (cons _clause122799_ _clauses122778_))))
                          (declare (not safe))
                          (_lp122773_
                           _rest122798_
                           _ids122776_
                           _impls122777_
                           __tmp130547))
                        (let* ((_g122801122812_
                                (lambda (_g122802122809_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g122802122809_))))
                               (_g122800122997_
                                (lambda (_g122802122815_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g122802122815_))
                                      (let ((_e122807122817_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g122802122815_))))
                                        (let ((_hd122806122820_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122807122817_)))
                                              (_tl122805122822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122807122817_))))
                                          ((lambda (_L122825_ _L122826_)
                                             (let* ((_id122843_
                                                     (let ((__tmp130494
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id122769_)))
                                                           (__tmp130493
                                                            (length _clauses122778_))
                                                           (__tmp130492
                                                            (if _gensym?122771_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp130494
                                                        '"__"
                                                        __tmp130493
                                                        __tmp130492)))
                                                    (_id122845_
                                                     (let ((__tmp130495
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx122768_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id122843_
                                                        __tmp130495)))
                                                    (_impl122847_
                                                     (let ((__tmp130496
                                                            (let ((__tmp130498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp130497
                           (let ()
                             (declare (not safe))
                             (cons _L122826_ _L122825_))))
                      (declare (not safe))
                      (cons __tmp130498 __tmp130497))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp130496 _stx122768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause122994_
                                                     (let* ((___stx129832129833_
                                                             _L122826_)
                                                            (_g122851122879_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx129832129833_)))))
               (let ((___kont129834129835_
                      (lambda (_L122973_)
                        (let ((__tmp130499
                               (let ((__tmp130500
                                      (let ((__tmp130501
                                             (let ((__tmp130502
                                                    (let ((__tmp130508
                                                           (let ((__tmp130509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id122845_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130509)))
                  (__tmp130503
                   (let ((__tmp130504
                          (lambda (_g122983122986_ _g122984122988_)
                            (let ((__tmp130505
                                   (let ((__tmp130507
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp130506
                                          (let ()
                                            (declare (not safe))
                                            (cons _g122983122986_ '()))))
                                     (declare (not safe))
                                     (cons __tmp130507 __tmp130506))))
                              (declare (not safe))
                              (cons __tmp130505 _g122984122988_)))))
                     (declare (not safe))
                     (foldr1 __tmp130504 '() _L122973_))))
              (declare (not safe))
              (cons __tmp130508 __tmp130503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130502))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130501
                                         _stx122768_))))
                                 (declare (not safe))
                                 (cons __tmp130500 '()))))
                          (declare (not safe))
                          (cons _L122826_ __tmp130499))))
                     (___kont129838129839_
                      (lambda (_L122924_ _L122925_)
                        (let ((__tmp130510
                               (let ((__tmp130511
                                      (let ((__tmp130512
                                             (let ((__tmp130513
                                                    (let ((__tmp130527
                                                           (let ((__tmp130528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130528)))
                  (__tmp130514
                   (let ((__tmp130525
                          (let ((__tmp130526
                                 (let ()
                                   (declare (not safe))
                                   (cons _id122845_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130526)))
                         (__tmp130515
                          (let ((__tmp130521
                                 (let ((__tmp130522
                                        (let ((__tmp130524
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp130523
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L122924_ '()))))
                                          (declare (not safe))
                                          (cons __tmp130524 __tmp130523))))
                                   (declare (not safe))
                                   (cons __tmp130522 '())))
                                (__tmp130516
                                 (let ((__tmp130517
                                        (lambda (_g122936122939_
                                                 _g122937122941_)
                                          (let ((__tmp130518
                                                 (let ((__tmp130520
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp130519
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g122936122939_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp130520
                                                         __tmp130519))))
                                            (declare (not safe))
                                            (cons __tmp130518
                                                  _g122937122941_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp130517 '() _L122925_))))
                            (declare (not safe))
                            (foldr1 cons __tmp130521 __tmp130516))))
                     (declare (not safe))
                     (cons __tmp130525 __tmp130515))))
              (declare (not safe))
              (cons __tmp130527 __tmp130514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130513))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130512
                                         _stx122768_))))
                                 (declare (not safe))
                                 (cons __tmp130511 '()))))
                          (declare (not safe))
                          (cons _L122826_ __tmp130510))))
                     (___kont129842129843_
                      (lambda (_L122884_)
                        (let ((__tmp130529
                               (let ((__tmp130530
                                      (let ((__tmp130531
                                             (let ((__tmp130532
                                                    (let ((__tmp130540
                                                           (let ((__tmp130541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130541)))
                  (__tmp130533
                   (let ((__tmp130538
                          (let ((__tmp130539
                                 (let ()
                                   (declare (not safe))
                                   (cons _id122845_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130539)))
                         (__tmp130534
                          (let ((__tmp130535
                                 (let ((__tmp130537
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp130536
                                        (let ()
                                          (declare (not safe))
                                          (cons _L122884_ '()))))
                                   (declare (not safe))
                                   (cons __tmp130537 __tmp130536))))
                            (declare (not safe))
                            (cons __tmp130535 '()))))
                     (declare (not safe))
                     (cons __tmp130538 __tmp130534))))
              (declare (not safe))
              (cons __tmp130540 __tmp130533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130532))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130531
                                         _stx122768_))))
                                 (declare (not safe))
                                 (cons __tmp130530 '()))))
                          (declare (not safe))
                          (cons _L122826_ __tmp130529)))))
                 (let* ((___match129857129858_
                         (lambda (___splice129840129841_
                                  _target122865122900_
                                  _tl122867122902_)
                           (letrec ((_loop122868122905_
                                     (lambda (_hd122866122908_
                                              _arg122872122910_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd122866122908_))
                                           (let ((_e122869122913_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd122866122908_))))
                                             (let ((_lp-tl122871122918_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122869122913_)))
                                                   (_lp-hd122870122916_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122869122913_))))
                                               (let ((__tmp130542
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd122870122916_
                                                              _arg122872122910_))))
                                                 (declare (not safe))
                                                 (_loop122868122905_
                                                  _lp-tl122871122918_
                                                  __tmp130542))))
                                           (let ((_arg122873122921_
                                                  (reverse _arg122872122910_)))
                                             (___kont129838129839_
                                              _tl122867122902_
                                              _arg122873122921_))))))
                             (let ()
                               (declare (not safe))
                               (_loop122868122905_
                                _target122865122900_
                                '())))))
                        (___match129851129852_
                         (lambda (___splice129836129837_
                                  _target122854122949_
                                  _tl122856122951_)
                           (letrec ((_loop122857122954_
                                     (lambda (_hd122855122957_
                                              _arg122861122959_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd122855122957_))
                                           (let ((_e122858122962_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd122855122957_))))
                                             (let ((_lp-tl122860122967_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122858122962_)))
                                                   (_lp-hd122859122965_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122858122962_))))
                                               (let ((__tmp130543
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd122859122965_
                                                              _arg122861122959_))))
                                                 (declare (not safe))
                                                 (_loop122857122954_
                                                  _lp-tl122860122967_
                                                  __tmp130543))))
                                           (let ((_arg122862122970_
                                                  (reverse _arg122861122959_)))
                                             (___kont129834129835_
                                              _arg122862122970_))))))
                             (let ()
                               (declare (not safe))
                               (_loop122857122954_
                                _target122854122949_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx129832129833_))
                       (let ((___splice129836129837_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx129832129833_
                                 '0))))
                         (let ((_tl122856122951_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice129836129837_ '1)))
                               (_target122854122949_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice129836129837_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl122856122951_))
                               (___match129851129852_
                                ___splice129836129837_
                                _target122854122949_
                                _tl122856122951_)
                               (___match129857129858_
                                ___splice129836129837_
                                _target122854122949_
                                _tl122856122951_))))
                       (___kont129842129843_ ___stx129832129833_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp130546
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id122845_
                                                              _ids122776_)))
                                                     (__tmp130545
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl122847_
                                                              _impls122777_)))
                                                     (__tmp130544
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause122994_
                                                              _clauses122778_))))
                                                 (declare (not safe))
                                                 (_lp122773_
                                                  _rest122798_
                                                  __tmp130546
                                                  __tmp130545
                                                  __tmp130544))))
                                           _tl122805122822_
                                           _hd122806122820_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g122801122812_ _g122802122815_))))))
                          (declare (not safe))
                          (_g122800122997_ _clause122799_))))))
            (if (let () (declare (not safe)) (##pair? _rest122779122787_))
                (let ((_hd122784123003_
                       (let ()
                         (declare (not safe))
                         (##car _rest122779122787_)))
                      (_tl122785123005_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest122779122787_))))
                  (let* ((_clause123008_ _hd122784123003_)
                         (_rest123010_ _tl122785123005_))
                    (declare (not safe))
                    (_K122783123000_ _rest123010_ _clause123008_)))
                (let () (declare (not safe)) (_else122781122795_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx123015_ _id123016_ _clauses123017_)
        (let ((_gensym?123019_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx123015_
           _id123016_
           _clauses123017_
           _gensym?123019_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g130549_
        (let ((_g130548_ (let () (declare (not safe)) (##length _g130549_))))
          (cond ((let () (declare (not safe)) (##fx= _g130548_ 3))
                 (apply (lambda (_stx123015_ _id123016_ _clauses123017_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx123015_
                             _id123016_
                             _clauses123017_)))
                        _g130549_))
                ((let () (declare (not safe)) (##fx= _g130548_ 4))
                 (apply (lambda (_stx123021_
                                 _id123022_
                                 _clauses123023_
                                 _gensym?123024_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx123021_
                             _id123022_
                             _clauses123023_
                             _gensym?123024_)))
                        _g130549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g130549_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self122044_ _stx122045_)
        (letrec ((_case-lambda-clause-def122047_
                  (lambda (_id122764_ _impl122765_)
                    (let ((__tmp130550
                           (let ((__tmp130551
                                  (let ((__tmp130554
                                         (let ()
                                           (declare (not safe))
                                           (cons _id122764_ '())))
                                        (__tmp130552
                                         (let ((__tmp130553
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self122044_
                                                   _impl122765_))))
                                           (declare (not safe))
                                           (cons __tmp130553 '()))))
                                    (declare (not safe))
                                    (cons __tmp130554 __tmp130552))))
                             (declare (not safe))
                             (cons '%#define-values __tmp130551))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130550 _stx122045_))))
                 (_opt-lambda-dispatch-name122048_
                  (lambda (_id122760_)
                    (if (uninterned-symbol? _id122760_)
                        (let ((_str122762_ (symbol->string _id122760_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str122762_))
                              '"%"
                              _id122760_))
                        _id122760_)))
                 (_kw-lambda-dispatch-name122049_
                  (lambda (_id122755_ _name122756_)
                    (if (uninterned-symbol? _id122755_)
                        (let ((_str122758_ (symbol->string _id122755_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str122758_))
                              _name122756_
                              _id122755_))
                        _id122755_))))
          (let* ((___stx129880129881_ _stx122045_)
                 (_g122054122113_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx129880129881_)))))
            (let ((___kont129882129883_
                   (lambda (_L122664_ _L122665_)
                     (let* ((___stx129860129861_ _L122664_)
                            (_g122682122696_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx129860129861_)))))
                       (let ((___kont129862129863_
                              (lambda (_L122740_) _stx122045_))
                             (___kont129864129865_
                              (lambda (_L122709_)
                                (let ((_g130555_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx122045_
                                          _L122665_
                                          _L122709_))))
                                  (begin
                                    (let ((_g130556_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130555_)
                                                 (##vector-length _g130555_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130556_ 3)))
                                          (error "Context expects 3 values"
                                                 _g130556_)))
                                    (let ((_ids122719_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130555_ 0)))
                                          (_impls122720_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130555_ 1)))
                                          (_clauses122721_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130555_ 2))))
                                      (let* ((_g130557_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids122719_))
                                             (_defs122724_
                                              (map _case-lambda-clause-def122047_
                                                   _ids122719_
                                                   _impls122720_)))
                                        (let ((__tmp130559
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L122665_)))
                                              (__tmp130558
                                               (map gxc#identifier-symbol
                                                    _ids122719_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp130559
                                           '" => "
                                           __tmp130558))
                                        (let ((__tmp130560
                                               (let ((__tmp130561
                                                      (let ((__tmp130562
                                                             (let ((__tmp130563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130564
                                   (let ((__tmp130565
                                          (let ((__tmp130570
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L122665_ '())))
                                                (__tmp130566
                                                 (let ((__tmp130567
                                                        (let ((__tmp130569
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses122721_)))
                      (__tmp130568
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp130569 __tmp130568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130567 '()))))
                                            (declare (not safe))
                                            (cons __tmp130570 __tmp130566))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp130565))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130564
                               _stx122045_))))
                       (declare (not safe))
                       (cons __tmp130563 '()))))
                (declare (not safe))
                (foldr1 cons __tmp130562 _defs122724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp130561))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp130560
                                           _stx122045_)))))))))
                         (let ((___match129871129872_
                                (lambda (_e122687122732_
                                         _hd122686122735_
                                         _tl122685122737_)
                                  (let ((_L122740_ _tl122685122737_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L122740_))
                                        (___kont129862129863_ _L122740_)
                                        (___kont129864129865_
                                         _tl122685122737_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx129860129861_))
                               (let ((_e122687122732_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx129860129861_))))
                                 (let ((_tl122685122737_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122687122732_)))
                                       (_hd122686122735_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122687122732_))))
                                   (___match129871129872_
                                    _e122687122732_
                                    _hd122686122735_
                                    _tl122685122737_)))
                               (let ()
                                 (declare (not safe))
                                 (_g122682122696_))))))))
                  (___kont129884129885_
                   (lambda (_L122482_ _L122483_)
                     (let* ((_g122499122529_
                             (lambda (_g122500122526_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122500122526_))))
                            (_g122498122624_
                             (lambda (_g122500122532_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122500122532_))
                                   (let ((_e122506122534_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122500122532_))))
                                     (let ((_hd122505122537_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122506122534_)))
                                           (_tl122504122539_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122506122534_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122504122539_))
                                           (let ((_e122509122542_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122504122539_))))
                                             (let ((_hd122508122545_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122509122542_)))
                                                   (_tl122507122547_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122509122542_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122508122545_))
                                                   (let ((_e122512122550_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122508122545_))))
                                                     (let ((_hd122511122553_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122512122550_)))
                                                           (_tl122510122555_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122512122550_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122511122553_))
                                                           (let ((_e122515122558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122511122553_))))
                     (let ((_hd122514122561_
                            (let ()
                              (declare (not safe))
                              (##car _e122515122558_)))
                           (_tl122513122563_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122515122558_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122514122561_))
                           (let ((_e122518122566_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122514122561_))))
                             (let ((_hd122517122569_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122518122566_)))
                                   (_tl122516122571_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122518122566_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122516122571_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122513122563_))
                                       (let ((_e122521122574_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122513122563_))))
                                         (let ((_hd122520122577_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122521122574_)))
                                               (_tl122519122579_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122521122574_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122519122579_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl122510122555_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122507122547_))
                                                       (let ((_e122524122582_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122507122547_))))
                 (let ((_hd122523122585_
                        (let () (declare (not safe)) (##car _e122524122582_)))
                       (_tl122522122587_
                        (let () (declare (not safe)) (##cdr _e122524122582_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl122522122587_))
                       ((lambda (_L122590_ _L122591_ _L122592_)
                          (let* ((_lambda-id122616_
                                  (let ((__tmp130573
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L122483_)))
                                        (__tmp130571
                                         (let ((__tmp130572
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L122592_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name122048_
                                            __tmp130572))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp130573
                                     '"__"
                                     __tmp130571)))
                                 (_lambda-id122618_
                                  (let ((__tmp130574
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx122045_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id122616_
                                     __tmp130574)))
                                 (_g130575_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id122618_)))
                                 (_new-case-lambda-expr122621_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L122590_
                                     'id:
                                     _L122592_
                                     'new-id:
                                     _lambda-id122618_))))
                            (let ((__tmp130577
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L122483_)))
                                  (__tmp130576
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id122618_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp130577
                               '" => "
                               __tmp130576))
                            (let ((__tmp130578
                                   (let ((__tmp130579
                                          (let ((__tmp130587
                                                 (let ((__tmp130588
                                                        (let ((__tmp130589
                                                               (let ((__tmp130592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id122618_ '())))
                             (__tmp130590
                              (let ((__tmp130591
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self122044_
                                        _L122591_))))
                                (declare (not safe))
                                (cons __tmp130591 '()))))
                         (declare (not safe))
                         (cons __tmp130592 __tmp130590))))
                  (declare (not safe))
                  (cons '%#define-values __tmp130589))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp130588
                                                    _stx122045_)))
                                                (__tmp130580
                                                 (let ((__tmp130581
                                                        (let ((__tmp130582
                                                               (let ((__tmp130583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp130584
                                     (let ((__tmp130586
                                            (let ()
                                              (declare (not safe))
                                              (cons _L122483_ '())))
                                           (__tmp130585
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr122621_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp130586 __tmp130585))))
                                (declare (not safe))
                                (cons '%#define-values __tmp130584))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp130583 _stx122045_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self122044_
                   __tmp130582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130581 '()))))
                                            (declare (not safe))
                                            (cons __tmp130587 __tmp130580))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp130579))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130578
                               _stx122045_))))
                        _hd122523122585_
                        _hd122520122577_
                        _hd122517122569_)
                       (let ()
                         (declare (not safe))
                         (_g122499122529_ _g122500122532_)))))
               (let () (declare (not safe)) (_g122499122529_ _g122500122532_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122499122529_
                                                      _g122500122532_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122499122529_
                                                  _g122500122532_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122499122529_ _g122500122532_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122499122529_ _g122500122532_)))))
                           (let ()
                             (declare (not safe))
                             (_g122499122529_ _g122500122532_)))))
                   (let ()
                     (declare (not safe))
                     (_g122499122529_ _g122500122532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122499122529_
                                                      _g122500122532_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122499122529_
                                              _g122500122532_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122499122529_ _g122500122532_))))))
                       (declare (not safe))
                       (_g122498122624_ _L122482_))))
                  (___kont129886129887_
                   (lambda (_L122196_ _L122197_)
                     (let* ((_g122213122266_
                             (lambda (_g122214122263_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122214122263_))))
                            (_g122212122442_
                             (lambda (_g122214122269_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122214122269_))
                                   (let ((_e122222122271_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122214122269_))))
                                     (let ((_hd122221122274_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122222122271_)))
                                           (_tl122220122276_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122222122271_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122220122276_))
                                           (let ((_e122225122279_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122220122276_))))
                                             (let ((_hd122224122282_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122225122279_)))
                                                   (_tl122223122284_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122225122279_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122224122282_))
                                                   (let ((_e122228122287_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122224122282_))))
                                                     (let ((_hd122227122290_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122228122287_)))
                                                           (_tl122226122292_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122228122287_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122227122290_))
                                                           (let ((_e122231122295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122227122290_))))
                     (let ((_hd122230122298_
                            (let ()
                              (declare (not safe))
                              (##car _e122231122295_)))
                           (_tl122229122300_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122231122295_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122230122298_))
                           (let ((_e122234122303_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122230122298_))))
                             (let ((_hd122233122306_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122234122303_)))
                                   (_tl122232122308_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122234122303_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122232122308_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122229122300_))
                                       (let ((_e122237122311_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122229122300_))))
                                         (let ((_hd122236122314_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122237122311_)))
                                               (_tl122235122316_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122237122311_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd122236122314_))
                                               (let ((_e122240122319_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd122236122314_))))
                                                 (let ((_hd122239122322_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122240122319_)))
                                                       (_tl122238122324_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122240122319_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122238122324_))
                                                       (let ((_e122243122327_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122238122324_))))
                 (let ((_hd122242122330_
                        (let () (declare (not safe)) (##car _e122243122327_)))
                       (_tl122241122332_
                        (let () (declare (not safe)) (##cdr _e122243122327_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd122242122330_))
                       (let ((_e122246122335_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd122242122330_))))
                         (let ((_hd122245122338_
                                (let ()
                                  (declare (not safe))
                                  (##car _e122246122335_)))
                               (_tl122244122340_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e122246122335_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122245122338_))
                               (let ((_e122249122343_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122245122338_))))
                                 (let ((_hd122248122346_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122249122343_)))
                                       (_tl122247122348_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122249122343_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd122248122346_))
                                       (let ((_e122252122351_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd122248122346_))))
                                         (let ((_hd122251122354_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122252122351_)))
                                               (_tl122250122356_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122252122351_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122250122356_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl122247122348_))
                                                   (let ((_e122255122359_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl122247122348_))))
                                                     (let ((_hd122254122362_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122255122359_)))
                                                           (_tl122253122364_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122255122359_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122253122364_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl122244122340_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl122241122332_))
                           (let ((_e122258122367_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl122241122332_))))
                             (let ((_hd122257122370_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122258122367_)))
                                   (_tl122256122372_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122258122367_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122256122372_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl122235122316_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl122226122292_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl122223122284_))
                                               (let ((_e122261122375_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl122223122284_))))
                                                 (let ((_hd122260122378_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122261122375_)))
                                                       (_tl122259122380_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122261122375_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl122259122380_))
                                                       ((lambda (_L122383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L122384_
                         _L122385_
                         _L122386_
                         _L122387_)
                  (let* ((_get-kws-id122427_
                          (let ((__tmp130595
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122197_)))
                                (__tmp130593
                                 (let ((__tmp130594
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122387_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122049_
                                    __tmp130594
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130595 '"__" __tmp130593)))
                         (_get-kws-id122429_
                          (let ((__tmp130596
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122045_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id122427_
                             __tmp130596)))
                         (_main-id122431_
                          (let ((__tmp130599
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122197_)))
                                (__tmp130597
                                 (let ((__tmp130598
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122386_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122049_
                                    __tmp130598
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130599 '"__" __tmp130597)))
                         (_main-id122433_
                          (let ((__tmp130600
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122045_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id122431_
                             __tmp130600)))
                         (_g130601_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id122429_)))
                         (_g130602_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id122433_)))
                         (_new-kw-dispatch122437_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122383_
                             'id:
                             _L122387_
                             'new-id:
                             _get-kws-id122429_)))
                         (_new-get-kws122439_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122384_
                             'id:
                             _L122386_
                             'new-id:
                             _main-id122433_))))
                    (let ((__tmp130605
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L122197_)))
                          (__tmp130604
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id122429_)))
                          (__tmp130603
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id122433_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp130605
                       '" => "
                       __tmp130604
                       '" => "
                       __tmp130603))
                    (let ((__tmp130606
                           (let ((__tmp130607
                                  (let ((__tmp130620
                                         (let ((__tmp130621
                                                (let ((__tmp130622
                                                       (let ((__tmp130623
                                                              (let ((__tmp130625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id122433_ '())))
                            (__tmp130624
                             (let ()
                               (declare (not safe))
                               (cons _L122385_ '()))))
                        (declare (not safe))
                        (cons __tmp130625 __tmp130624))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130622
                                                   _stx122045_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self122044_
                                            __tmp130621)))
                                        (__tmp130608
                                         (let ((__tmp130615
                                                (let ((__tmp130616
                                                       (let ((__tmp130617
                                                              (let ((__tmp130619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id122429_ '())))
                            (__tmp130618
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws122439_ '()))))
                        (declare (not safe))
                        (cons __tmp130619 __tmp130618))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130616
                                                   _stx122045_)))
                                               (__tmp130609
                                                (let ((__tmp130610
                                                       (let ((__tmp130611
                                                              (let ((__tmp130612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp130614
                                    (let ()
                                      (declare (not safe))
                                      (cons _L122197_ '())))
                                   (__tmp130613
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch122437_ '()))))
                               (declare (not safe))
                               (cons __tmp130614 __tmp130613))))
                        (declare (not safe))
                        (cons '%#define-values __tmp130612))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp130611 _stx122045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp130610 '()))))
                                           (declare (not safe))
                                           (cons __tmp130615 __tmp130609))))
                                    (declare (not safe))
                                    (cons __tmp130620 __tmp130608))))
                             (declare (not safe))
                             (cons '%#begin __tmp130607))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130606 _stx122045_))))
                _hd122260122378_
                _hd122257122370_
                _hd122254122362_
                _hd122251122354_
                _hd122233122306_)
               (let ()
                 (declare (not safe))
                 (_g122213122266_ _g122214122269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122213122266_
                                                  _g122214122269_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g122213122266_
                                              _g122214122269_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g122213122266_ _g122214122269_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122213122266_ _g122214122269_)))))
                           (let ()
                             (declare (not safe))
                             (_g122213122266_ _g122214122269_)))
                       (let ()
                         (declare (not safe))
                         (_g122213122266_ _g122214122269_)))
                   (let ()
                     (declare (not safe))
                     (_g122213122266_ _g122214122269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122213122266_
                                                      _g122214122269_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122213122266_
                                                  _g122214122269_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122213122266_ _g122214122269_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g122213122266_ _g122214122269_)))))
                       (let ()
                         (declare (not safe))
                         (_g122213122266_ _g122214122269_)))))
               (let ()
                 (declare (not safe))
                 (_g122213122266_ _g122214122269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122213122266_
                                                  _g122214122269_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122213122266_ _g122214122269_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122213122266_ _g122214122269_)))))
                           (let ()
                             (declare (not safe))
                             (_g122213122266_ _g122214122269_)))))
                   (let ()
                     (declare (not safe))
                     (_g122213122266_ _g122214122269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122213122266_
                                                      _g122214122269_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122213122266_
                                              _g122214122269_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122213122266_ _g122214122269_))))))
                       (declare (not safe))
                       (_g122212122442_ _L122196_))))
                  (___kont129888129889_
                   (lambda (_L122142_ _L122143_)
                     (let ((__tmp130626
                            (let ((__tmp130627
                                   (let ((__tmp130628
                                          (let ((__tmp130629
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self122044_
                                                    _L122142_))))
                                            (declare (not safe))
                                            (cons __tmp130629 '()))))
                                     (declare (not safe))
                                     (cons _L122143_ __tmp130628))))
                              (declare (not safe))
                              (cons '%#define-values __tmp130627))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp130626 _stx122045_)))))
              (let* ((___match129973129974_
                      (lambda (_e122088122164_
                               _hd122087122167_
                               _tl122086122169_
                               _e122091122172_
                               _hd122090122175_
                               _tl122089122177_
                               _e122094122180_
                               _hd122093122183_
                               _tl122092122185_
                               _e122097122188_
                               _hd122096122191_
                               _tl122095122193_)
                        (let ((_L122196_ _hd122096122191_)
                              (_L122197_ _hd122093122183_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122197_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L122196_)))
                              (___kont129886129887_ _L122196_ _L122197_)
                              (___kont129888129889_
                               _hd122096122191_
                               _hd122090122175_)))))
                     (___match129945129946_
                      (lambda (_e122074122450_
                               _hd122073122453_
                               _tl122072122455_
                               _e122077122458_
                               _hd122076122461_
                               _tl122075122463_
                               _e122080122466_
                               _hd122079122469_
                               _tl122078122471_
                               _e122083122474_
                               _hd122082122477_
                               _tl122081122479_)
                        (let ((_L122482_ _hd122082122477_)
                              (_L122483_ _hd122079122469_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122483_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L122482_)))
                              (___kont129884129885_ _L122482_ _L122483_)
                              (___match129973129974_
                               _e122074122450_
                               _hd122073122453_
                               _tl122072122455_
                               _e122077122458_
                               _hd122076122461_
                               _tl122075122463_
                               _e122080122466_
                               _hd122079122469_
                               _tl122078122471_
                               _e122083122474_
                               _hd122082122477_
                               _tl122081122479_)))))
                     (___match129917129918_
                      (lambda (_e122060122632_
                               _hd122059122635_
                               _tl122058122637_
                               _e122063122640_
                               _hd122062122643_
                               _tl122061122645_
                               _e122066122648_
                               _hd122065122651_
                               _tl122064122653_
                               _e122069122656_
                               _hd122068122659_
                               _tl122067122661_)
                        (let ((_L122664_ _hd122068122659_)
                              (_L122665_ _hd122065122651_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122665_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L122664_)))
                              (___kont129882129883_ _L122664_ _L122665_)
                              (___match129945129946_
                               _e122060122632_
                               _hd122059122635_
                               _tl122058122637_
                               _e122063122640_
                               _hd122062122643_
                               _tl122061122645_
                               _e122066122648_
                               _hd122065122651_
                               _tl122064122653_
                               _e122069122656_
                               _hd122068122659_
                               _tl122067122661_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx129880129881_))
                    (let ((_e122060122632_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx129880129881_))))
                      (let ((_tl122058122637_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122060122632_)))
                            (_hd122059122635_
                             (let ()
                               (declare (not safe))
                               (##car _e122060122632_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122058122637_))
                            (let ((_e122063122640_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122058122637_))))
                              (let ((_tl122061122645_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122063122640_)))
                                    (_hd122062122643_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122063122640_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122062122643_))
                                    (let ((_e122066122648_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122062122643_))))
                                      (let ((_tl122064122653_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122066122648_)))
                                            (_hd122065122651_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122066122648_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122064122653_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122061122645_))
                                                (let ((_e122069122656_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122061122645_))))
                                                  (let ((_tl122067122661_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122069122656_)))
                                                        (_hd122068122659_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122069122656_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122067122661_))
                                                        (___match129917129918_
                                                         _e122060122632_
                                                         _hd122059122635_
                                                         _tl122058122637_
                                                         _e122063122640_
                                                         _hd122062122643_
                                                         _tl122061122645_
                                                         _e122066122648_
                                                         _hd122065122651_
                                                         _tl122064122653_
                                                         _e122069122656_
                                                         _hd122068122659_
                                                         _tl122067122661_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122054122113_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122054122113_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122061122645_))
                                                (let ((_e122108122134_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122061122645_))))
                                                  (let ((_tl122106122139_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122108122134_)))
                                                        (_hd122107122137_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122108122134_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122106122139_))
                                                        (___kont129888129889_
                                                         _hd122107122137_
                                                         _hd122062122643_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122054122113_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122054122113_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122061122645_))
                                        (let ((_e122108122134_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122061122645_))))
                                          (let ((_tl122106122139_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122108122134_)))
                                                (_hd122107122137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122108122134_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122106122139_))
                                                (___kont129888129889_
                                                 _hd122107122137_
                                                 _hd122062122643_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122054122113_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g122054122113_))))))
                            (let () (declare (not safe)) (_g122054122113_)))))
                    (let () (declare (not safe)) (_g122054122113_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self120975_ _stx120976_)
        (letrec* ((_bind-e__128276128277_
                   (lambda (_id122028_ _expr122029_ _compile?122030_)
                     (let ((__tmp130632
                            (let ()
                              (declare (not safe))
                              (cons _id122028_ '())))
                           (__tmp130630
                            (let ((__tmp130631
                                   (if _compile?122030_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120975_
                                          _expr122029_))
                                       _expr122029_)))
                              (declare (not safe))
                              (cons __tmp130631 '()))))
                       (declare (not safe))
                       (cons __tmp130632 __tmp130630))))
                  (_bind-e__0__128278128279_
                   (lambda (_id122035_ _expr122036_)
                     (let ((_compile?122038_ '#t))
                       (declare (not safe))
                       (_bind-e__128276128277_
                        _id122035_
                        _expr122036_
                        _compile?122038_))))
                  (_bind-e120978_
                   (lambda _g130634_
                     (let ((_g130633_
                            (let ()
                              (declare (not safe))
                              (##length _g130634_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130633_ 2))
                              (apply (lambda (_id122035_ _expr122036_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128278128279_
                                          _id122035_
                                          _expr122036_)))
                                     _g130634_))
                             ((let () (declare (not safe)) (##fx= _g130633_ 3))
                              (apply (lambda (_id122040_
                                              _expr122041_
                                              _compile?122042_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128276128277_
                                          _id122040_
                                          _expr122041_
                                          _compile?122042_)))
                                     _g130634_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130634_))))))
                  (_compile-bindings120979_
                   (lambda (_bindings121612_)
                     (let _lp121614_ ((_rest121616_ _bindings121612_)
                                      (_lift1121617_ '())
                                      (_lift2121618_ '())
                                      (_bind121619_ '()))
                       (let* ((_rest121620121628_ _rest121616_)
                              (_else121622121636_
                               (lambda ()
                                 (values (reverse _lift1121617_)
                                         (reverse _lift2121618_)
                                         (reverse _bind121619_))))
                              (_K121624122015_
                               (lambda (_rest121639_ _hd121640_)
                                 (let* ((___stx130016130017_ _hd121640_)
                                        (_g121644121680_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130016130017_)))))
                                   (let ((___kont130018130019_
                                          (lambda (_L121922_ _L121923_)
                                            (let* ((___stx129996129997_
                                                    _L121922_)
                                                   (_g121938121952_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx129996129997_)))))
                                              (let ((___kont129998129999_
                                                     (lambda (_L122000_)
                                                       (let ((__tmp130635
                                                              (let ((__tmp130636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128276128277_
                                _L121923_
                                _L121922_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130636 _bind121619_))))
                 (declare (not safe))
                 (_lp121614_
                  _rest121639_
                  _lift1121617_
                  _lift2121618_
                  __tmp130635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130000130001_
                                                     (lambda (_L121965_)
                                                       (let ((_g130637_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120976_
                         _L121923_
                         _L121965_
                         '#t))))
                 (begin
                   (let ((_g130638_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130637_)
                                (##vector-length _g130637_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130638_ 3)))
                         (error "Context expects 3 values" _g130638_)))
                   (let ((_ids121975_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130637_ 0)))
                         (_impls121976_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130637_ 1)))
                         (_clauses121977_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130637_ 2))))
                     (let* ((_g130639_
                             (for-each gx#core-bind-runtime! _ids121975_))
                            (_xbind121980_
                             (map _bind-e120978_ _ids121975_ _impls121976_))
                            (_expr*121982_
                             (let ((__tmp130641
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121977_)))
                                   (__tmp130640
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130641
                                __tmp130640)))
                            (_bind*121984_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128276128277_
                                _L121923_
                                _expr*121982_
                                '#f))))
                       (let ((__tmp130643
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121923_)))
                             (__tmp130642
                              (map gxc#identifier-symbol _ids121975_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130643
                          '" => "
                          __tmp130642))
                       (let ((__tmp130645
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2121618_ _xbind121980_)))
                             (__tmp130644
                              (let ()
                                (declare (not safe))
                                (cons _bind*121984_ _bind121619_))))
                         (declare (not safe))
                         (_lp121614_
                          _rest121639_
                          _lift1121617_
                          __tmp130645
                          __tmp130644)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130007130008_
                                                       (lambda (_e121943121992_
                                                                _hd121942121995_
                                                                _tl121941121997_)
                                                         (let ((_L122000_
                                                                _tl121941121997_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L122000_))
                       (___kont129998129999_ _L122000_)
                       (___kont130000130001_ _tl121941121997_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx129996129997_))
                                                      (let ((_e121943121992_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx129996129997_))))
                (let ((_tl121941121997_
                       (let () (declare (not safe)) (##cdr _e121943121992_)))
                      (_hd121942121995_
                       (let () (declare (not safe)) (##car _e121943121992_))))
                  (___match130007130008_
                   _e121943121992_
                   _hd121942121995_
                   _tl121941121997_)))
              (let () (declare (not safe)) (_g121938121952_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130020130021_
                                          (lambda (_L121750_ _L121751_)
                                            (let* ((_g121765121795_
                                                    (lambda (_g121766121792_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121766121792_))))
                                                   (_g121764121890_
                                                    (lambda (_g121766121798_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121766121798_))
                                                          (let ((_e121772121800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121766121798_))))
                    (let ((_hd121771121803_
                           (let ()
                             (declare (not safe))
                             (##car _e121772121800_)))
                          (_tl121770121805_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121772121800_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121770121805_))
                          (let ((_e121775121808_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121770121805_))))
                            (let ((_hd121774121811_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121775121808_)))
                                  (_tl121773121813_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121775121808_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121774121811_))
                                  (let ((_e121778121816_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121774121811_))))
                                    (let ((_hd121777121819_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121778121816_)))
                                          (_tl121776121821_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121778121816_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121777121819_))
                                          (let ((_e121781121824_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121777121819_))))
                                            (let ((_hd121780121827_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121781121824_)))
                                                  (_tl121779121829_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121781121824_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121780121827_))
                                                  (let ((_e121784121832_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121780121827_))))
                                                    (let ((_hd121783121835_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121784121832_)))
                                                          (_tl121782121837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121784121832_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121782121837_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121779121829_))
                      (let ((_e121787121840_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121779121829_))))
                        (let ((_hd121786121843_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121787121840_)))
                              (_tl121785121845_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121787121840_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121785121845_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121776121821_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121773121813_))
                                      (let ((_e121790121848_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121773121813_))))
                                        (let ((_hd121789121851_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121790121848_)))
                                              (_tl121788121853_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121790121848_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121788121853_))
                                              ((lambda (_L121856_
                                                        _L121857_
                                                        _L121858_)
                                                 (let* ((_lambda-id121882_
                                                         (let ((__tmp130647
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L121751_)))
                       (__tmp130646 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130647 __tmp130646)))
                (_lambda-id121884_
                 (let ((__tmp130648
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120976_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id121882_ __tmp130648)))
                (_g130649_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id121884_)))
                (_new-case-lambda-expr121887_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L121856_
                    'id:
                    _L121858_
                    'new-id:
                    _lambda-id121884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130651
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L121751_)))
                                                         (__tmp130650
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id121884_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130651
                                                      '" => "
                                                      __tmp130650))
                                                   (let ((__tmp130654
                                                          (let ((__tmp130655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128276128277_
                            _L121751_
                            _new-case-lambda-expr121887_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130655 _rest121639_)))
                 (__tmp130652
                  (let ((__tmp130653
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128278128279_
                            _lambda-id121884_
                            _L121857_))))
                    (declare (not safe))
                    (cons __tmp130653 _lift1121617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp121614_
                                                      __tmp130654
                                                      __tmp130652
                                                      _lift2121618_
                                                      _bind121619_))))
                                               _hd121789121851_
                                               _hd121786121843_
                                               _hd121783121835_)
                                              (let ()
                                                (declare (not safe))
                                                (_g121765121795_
                                                 _g121766121798_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121765121795_ _g121766121798_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121765121795_ _g121766121798_)))
                              (let ()
                                (declare (not safe))
                                (_g121765121795_ _g121766121798_)))))
                      (let ()
                        (declare (not safe))
                        (_g121765121795_ _g121766121798_)))
                  (let ()
                    (declare (not safe))
                    (_g121765121795_ _g121766121798_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121765121795_
                                                     _g121766121798_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121765121795_
                                             _g121766121798_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121765121795_ _g121766121798_)))))
                          (let ()
                            (declare (not safe))
                            (_g121765121795_ _g121766121798_)))))
                  (let ()
                    (declare (not safe))
                    (_g121765121795_ _g121766121798_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121764121890_ _L121750_))))
                                         (___kont130022130023_
                                          (lambda (_L121701_ _L121702_)
                                            (let ((__tmp130656
                                                   (let ((__tmp130657
                                                          (let ((__tmp130658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130659
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120975_ _L121701_))))
                           (declare (not safe))
                           (cons __tmp130659 '()))))
                    (declare (not safe))
                    (cons _L121702_ __tmp130658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130657
                                                           _bind121619_))))
                                              (declare (not safe))
                                              (_lp121614_
                                               _rest121639_
                                               _lift1121617_
                                               _lift2121618_
                                               __tmp130656)))))
                                     (let* ((___match130067130068_
                                             (lambda (_e121661121726_
                                                      _hd121660121729_
                                                      _tl121659121731_
                                                      _e121664121734_
                                                      _hd121663121737_
                                                      _tl121662121739_
                                                      _e121667121742_
                                                      _hd121666121745_
                                                      _tl121665121747_)
                                               (let ((_L121750_
                                                      _hd121666121745_)
                                                     (_L121751_
                                                      _hd121663121737_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121751_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L121750_)))
                                                     (___kont130020130021_
                                                      _L121750_
                                                      _L121751_)
                                                     (___kont130022130023_
                                                      _hd121666121745_
                                                      _hd121660121729_)))))
                                            (___match130045130046_
                                             (lambda (_e121650121898_
                                                      _hd121649121901_
                                                      _tl121648121903_
                                                      _e121653121906_
                                                      _hd121652121909_
                                                      _tl121651121911_
                                                      _e121656121914_
                                                      _hd121655121917_
                                                      _tl121654121919_)
                                               (let ((_L121922_
                                                      _hd121655121917_)
                                                     (_L121923_
                                                      _hd121652121909_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121923_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121922_)))
                                                     (___kont130018130019_
                                                      _L121922_
                                                      _L121923_)
                                                     (___match130067130068_
                                                      _e121650121898_
                                                      _hd121649121901_
                                                      _tl121648121903_
                                                      _e121653121906_
                                                      _hd121652121909_
                                                      _tl121651121911_
                                                      _e121656121914_
                                                      _hd121655121917_
                                                      _tl121654121919_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130016130017_))
                                           (let ((_e121650121898_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130016130017_))))
                                             (let ((_tl121648121903_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121650121898_)))
                                                   (_hd121649121901_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121650121898_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121649121901_))
                                                   (let ((_e121653121906_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121649121901_))))
                                                     (let ((_tl121651121911_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121653121906_)))
                                                           (_hd121652121909_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121653121906_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121651121911_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121648121903_))
                       (let ((_e121656121914_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121648121903_))))
                         (let ((_tl121654121919_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121656121914_)))
                               (_hd121655121917_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121656121914_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121654121919_))
                               (___match130045130046_
                                _e121650121898_
                                _hd121649121901_
                                _tl121648121903_
                                _e121653121906_
                                _hd121652121909_
                                _tl121651121911_
                                _e121656121914_
                                _hd121655121917_
                                _tl121654121919_)
                               (let ()
                                 (declare (not safe))
                                 (_g121644121680_)))))
                       (let () (declare (not safe)) (_g121644121680_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121648121903_))
                       (let ((_e121675121693_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121648121903_))))
                         (let ((_tl121673121698_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121675121693_)))
                               (_hd121674121696_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121675121693_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121673121698_))
                               (___kont130022130023_
                                _hd121674121696_
                                _hd121649121901_)
                               (let ()
                                 (declare (not safe))
                                 (_g121644121680_)))))
                       (let () (declare (not safe)) (_g121644121680_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121648121903_))
                                                       (let ((_e121675121693_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121648121903_))))
                 (let ((_tl121673121698_
                        (let () (declare (not safe)) (##cdr _e121675121693_)))
                       (_hd121674121696_
                        (let () (declare (not safe)) (##car _e121675121693_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121673121698_))
                       (___kont130022130023_ _hd121674121696_ _hd121649121901_)
                       (let () (declare (not safe)) (_g121644121680_)))))
               (let () (declare (not safe)) (_g121644121680_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121644121680_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121620121628_))
                             (let ((_hd121625122018_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121620121628_)))
                                   (_tl121626122020_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121620121628_))))
                               (let* ((_hd122023_ _hd121625122018_)
                                      (_rest122025_ _tl121626122020_))
                                 (declare (not safe))
                                 (_K121624122015_ _rest122025_ _hd122023_)))
                             (let ()
                               (declare (not safe))
                               (_else121622121636_)))))))
                  (_lift-kw-lambda?120980_
                   (lambda (_bind121536_)
                     (let* ((___stx130084130085_ _bind121536_)
                            (_g121539121556_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130084130085_)))))
                       (let ((___kont130086130087_
                              (lambda (_L121592_ _L121593_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L121593_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L121592_))
                                    '#f)))
                             (___kont130088130089_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx130084130085_))
                             (let ((_e121545121568_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx130084130085_))))
                               (let ((_tl121543121573_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e121545121568_)))
                                     (_hd121544121571_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e121545121568_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd121544121571_))
                                     (let ((_e121548121576_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd121544121571_))))
                                       (let ((_tl121546121581_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e121548121576_)))
                                             (_hd121547121579_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e121548121576_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl121546121581_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl121543121573_))
                                                 (let ((_e121551121584_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl121543121573_))))
                                                   (let ((_tl121549121589_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e121551121584_)))
                                                         (_hd121550121587_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e121551121584_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl121549121589_))
                                                         (___kont130086130087_
                                                          _hd121550121587_
                                                          _hd121547121579_)
                                                         (___kont130088130089_))))
                                                 (___kont130088130089_))
                                             (___kont130088130089_))))
                                     (___kont130088130089_))))
                             (___kont130088130089_))))))
                  (_lift-kw-lambda-bindings120981_
                   (lambda (_bindings121148_)
                     (let _lp121150_ ((_rest121152_ _bindings121148_)
                                      (_lift1121153_ '())
                                      (_lift2121154_ '())
                                      (_bind121155_ '()))
                       (let* ((_rest121156121164_ _rest121152_)
                              (_else121158121172_
                               (lambda ()
                                 (values (reverse _lift1121153_)
                                         (reverse _lift2121154_)
                                         (reverse _bind121155_))))
                              (_K121160121524_
                               (lambda (_rest121175_ _hd121176_)
                                 (let* ((___stx130114130115_ _hd121176_)
                                        (_g121179121204_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130114130115_)))))
                                   (let ((___kont130116130117_
                                          (lambda (_L121274_ _L121275_)
                                            (let* ((_g121289121342_
                                                    (lambda (_g121290121339_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121290121339_))))
                                                   (_g121288121518_
                                                    (lambda (_g121290121345_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121290121345_))
                                                          (let ((_e121298121347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121290121345_))))
                    (let ((_hd121297121350_
                           (let ()
                             (declare (not safe))
                             (##car _e121298121347_)))
                          (_tl121296121352_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121298121347_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121296121352_))
                          (let ((_e121301121355_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121296121352_))))
                            (let ((_hd121300121358_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121301121355_)))
                                  (_tl121299121360_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121301121355_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121300121358_))
                                  (let ((_e121304121363_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121300121358_))))
                                    (let ((_hd121303121366_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121304121363_)))
                                          (_tl121302121368_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121304121363_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121303121366_))
                                          (let ((_e121307121371_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121303121366_))))
                                            (let ((_hd121306121374_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121307121371_)))
                                                  (_tl121305121376_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121307121371_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121306121374_))
                                                  (let ((_e121310121379_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121306121374_))))
                                                    (let ((_hd121309121382_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121310121379_)))
                                                          (_tl121308121384_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121310121379_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121308121384_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121305121376_))
                      (let ((_e121313121387_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121305121376_))))
                        (let ((_hd121312121390_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121313121387_)))
                              (_tl121311121392_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121313121387_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd121312121390_))
                              (let ((_e121316121395_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd121312121390_))))
                                (let ((_hd121315121398_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121316121395_)))
                                      (_tl121314121400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121316121395_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121314121400_))
                                      (let ((_e121319121403_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121314121400_))))
                                        (let ((_hd121318121406_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121319121403_)))
                                              (_tl121317121408_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121319121403_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd121318121406_))
                                              (let ((_e121322121411_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd121318121406_))))
                                                (let ((_hd121321121414_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121322121411_)))
                                                      (_tl121320121416_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121322121411_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd121321121414_))
                                                      (let ((_e121325121419_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd121321121414_))))
                (let ((_hd121324121422_
                       (let () (declare (not safe)) (##car _e121325121419_)))
                      (_tl121323121424_
                       (let () (declare (not safe)) (##cdr _e121325121419_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121324121422_))
                      (let ((_e121328121427_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121324121422_))))
                        (let ((_hd121327121430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121328121427_)))
                              (_tl121326121432_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121328121427_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121326121432_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121323121424_))
                                  (let ((_e121331121435_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121323121424_))))
                                    (let ((_hd121330121438_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121331121435_)))
                                          (_tl121329121440_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121331121435_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121329121440_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121320121416_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121317121408_))
                                                  (let ((_e121334121443_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121317121408_))))
                                                    (let ((_hd121333121446_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121334121443_)))
                                                          (_tl121332121448_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121334121443_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121332121448_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl121311121392_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl121302121368_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121299121360_))
                              (let ((_e121337121451_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121299121360_))))
                                (let ((_hd121336121454_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121337121451_)))
                                      (_tl121335121456_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121337121451_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121335121456_))
                                      ((lambda (_L121459_
                                                _L121460_
                                                _L121461_
                                                _L121462_
                                                _L121463_)
                                         (let* ((_get-kws-id121503_
                                                 (let ((__tmp130661
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121275_)))
                                                       (__tmp130660
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130661
                                                    __tmp130660)))
                                                (_get-kws-id121505_
                                                 (let ((__tmp130662
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120976_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id121503_
                                                    __tmp130662)))
                                                (_main-id121507_
                                                 (let ((__tmp130664
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121275_)))
                                                       (__tmp130663
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130664
                                                    __tmp130663)))
                                                (_main-id121509_
                                                 (let ((__tmp130665
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120976_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id121507_
                                                    __tmp130665)))
                                                (_g130666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id121505_)))
                                                (_g130667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id121509_)))
                                                (_new-kw-dispatch121513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121459_
                                                    'id:
                                                    _L121463_
                                                    'new-id:
                                                    _get-kws-id121505_)))
                                                (_new-get-kws121515_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121460_
                                                    'id:
                                                    _L121462_
                                                    'new-id:
                                                    _main-id121509_))))
                                           (let ((__tmp130670
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L121275_)))
                                                 (__tmp130669
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id121505_)))
                                                 (__tmp130668
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id121509_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130670
                                              '" => "
                                              __tmp130669
                                              '" => "
                                              __tmp130668))
                                           (let ((__tmp130675
                                                  (let ((__tmp130676
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128276128277_
                                                            _main-id121509_
                                                            _L121461_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130676
                                                          _lift1121153_)))
                                                 (__tmp130673
                                                  (let ((__tmp130674
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128276128277_
                                                            _get-kws-id121505_
                                                            _new-get-kws121515_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130674
                                                          _lift2121154_)))
                                                 (__tmp130671
                                                  (let ((__tmp130672
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128276128277_
                                                            _L121275_
                                                            _new-kw-dispatch121513_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130672
                                                          _bind121155_))))
                                             (declare (not safe))
                                             (_lp121150_
                                              _rest121175_
                                              __tmp130675
                                              __tmp130673
                                              __tmp130671))))
                                       _hd121336121454_
                                       _hd121333121446_
                                       _hd121330121438_
                                       _hd121327121430_
                                       _hd121309121382_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121289121342_ _g121290121345_)))))
                              (let ()
                                (declare (not safe))
                                (_g121289121342_ _g121290121345_)))
                          (let ()
                            (declare (not safe))
                            (_g121289121342_ _g121290121345_)))
                      (let ()
                        (declare (not safe))
                        (_g121289121342_ _g121290121345_)))
                  (let ()
                    (declare (not safe))
                    (_g121289121342_ _g121290121345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121289121342_
                                                     _g121290121345_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121289121342_
                                                 _g121290121345_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121289121342_
                                             _g121290121345_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121289121342_ _g121290121345_)))
                              (let ()
                                (declare (not safe))
                                (_g121289121342_ _g121290121345_)))))
                      (let ()
                        (declare (not safe))
                        (_g121289121342_ _g121290121345_)))))
              (let ()
                (declare (not safe))
                (_g121289121342_ _g121290121345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121289121342_
                                                 _g121290121345_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121289121342_ _g121290121345_)))))
                              (let ()
                                (declare (not safe))
                                (_g121289121342_ _g121290121345_)))))
                      (let ()
                        (declare (not safe))
                        (_g121289121342_ _g121290121345_)))
                  (let ()
                    (declare (not safe))
                    (_g121289121342_ _g121290121345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121289121342_
                                                     _g121290121345_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121289121342_
                                             _g121290121345_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121289121342_ _g121290121345_)))))
                          (let ()
                            (declare (not safe))
                            (_g121289121342_ _g121290121345_)))))
                  (let ()
                    (declare (not safe))
                    (_g121289121342_ _g121290121345_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121288121518_ _L121274_))))
                                         (___kont130118130119_
                                          (lambda (_L121225_ _L121226_)
                                            (let ((__tmp130677
                                                   (let ((__tmp130678
                                                          (let ((__tmp130679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L121225_ '()))))
                    (declare (not safe))
                    (cons _L121226_ __tmp130679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130678
                                                           _bind121155_))))
                                              (declare (not safe))
                                              (_lp121150_
                                               _rest121175_
                                               _lift1121153_
                                               _lift2121154_
                                               __tmp130677)))))
                                     (let ((___match130141130142_
                                            (lambda (_e121185121250_
                                                     _hd121184121253_
                                                     _tl121183121255_
                                                     _e121188121258_
                                                     _hd121187121261_
                                                     _tl121186121263_
                                                     _e121191121266_
                                                     _hd121190121269_
                                                     _tl121189121271_)
                                              (let ((_L121274_
                                                     _hd121190121269_)
                                                    (_L121275_
                                                     _hd121187121261_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L121275_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L121274_)))
                                                    (___kont130116130117_
                                                     _L121274_
                                                     _L121275_)
                                                    (___kont130118130119_
                                                     _hd121190121269_
                                                     _hd121184121253_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130114130115_))
                                           (let ((_e121185121250_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130114130115_))))
                                             (let ((_tl121183121255_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121185121250_)))
                                                   (_hd121184121253_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121185121250_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121184121253_))
                                                   (let ((_e121188121258_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121184121253_))))
                                                     (let ((_tl121186121263_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121188121258_)))
                                                           (_hd121187121261_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121188121258_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121186121263_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121183121255_))
                       (let ((_e121191121266_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121183121255_))))
                         (let ((_tl121189121271_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121191121266_)))
                               (_hd121190121269_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121191121266_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121189121271_))
                               (___match130141130142_
                                _e121185121250_
                                _hd121184121253_
                                _tl121183121255_
                                _e121188121258_
                                _hd121187121261_
                                _tl121186121263_
                                _e121191121266_
                                _hd121190121269_
                                _tl121189121271_)
                               (let ()
                                 (declare (not safe))
                                 (_g121179121204_)))))
                       (let () (declare (not safe)) (_g121179121204_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121183121255_))
                       (let ((_e121199121217_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121183121255_))))
                         (let ((_tl121197121222_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121199121217_)))
                               (_hd121198121220_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121199121217_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121197121222_))
                               (___kont130118130119_
                                _hd121198121220_
                                _hd121184121253_)
                               (let ()
                                 (declare (not safe))
                                 (_g121179121204_)))))
                       (let () (declare (not safe)) (_g121179121204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121183121255_))
                                                       (let ((_e121199121217_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121183121255_))))
                 (let ((_tl121197121222_
                        (let () (declare (not safe)) (##cdr _e121199121217_)))
                       (_hd121198121220_
                        (let () (declare (not safe)) (##car _e121199121217_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121197121222_))
                       (___kont130118130119_ _hd121198121220_ _hd121184121253_)
                       (let () (declare (not safe)) (_g121179121204_)))))
               (let () (declare (not safe)) (_g121179121204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121179121204_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121156121164_))
                             (let ((_hd121161121527_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121156121164_)))
                                   (_tl121162121529_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121156121164_))))
                               (let* ((_hd121532_ _hd121161121527_)
                                      (_rest121534_ _tl121162121529_))
                                 (declare (not safe))
                                 (_K121160121524_ _rest121534_ _hd121532_)))
                             (let ()
                               (declare (not safe))
                               (_else121158121172_))))))))
          (let* ((___stx130158130159_ _stx120976_)
                 (_g120984121010_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130158130159_)))))
            (let ((___kont130160130161_
                   (lambda (_L121070_ _L121071_)
                     (let ((__tmp130681
                            (lambda ()
                              (if (let ((__tmp130708
                                         (let ((__tmp130709
                                                (lambda (_g121099121102_
                                                         _g121100121104_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g121099121102_
                                                          _g121100121104_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp130709
                                                   '()
                                                   _L121071_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?120980_
                                            __tmp130708))
                                  (let ((_g130695_
                                         (let ((__tmp130697
                                                (let ((__tmp130698
                                                       (lambda (_g121106121109_
                                                                _g121107121111_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121106121109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121107121111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130698
                                                          '()
                                                          _L121071_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings120981_
                                            __tmp130697))))
                                    (begin
                                      (let ((_g130696_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130695_)
                                                   (##vector-length _g130695_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130696_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130696_)))
                                      (let ((_lift1121114_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130695_ 0)))
                                            (_lift2121115_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130695_ 1)))
                                            (_hd121116_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130695_ 2))))
                                        (let* ((_expr121118_
                                                (let ((__tmp130699
                                                       (let ((__tmp130700
                                                              (let ((__tmp130701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L121070_ '()))))
                        (declare (not safe))
                        (cons _hd121116_ __tmp130701))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130699
                                                   _stx120976_)))
                                               (_expr121120_
                                                (let ((__tmp130702
                                                       (let ((__tmp130703
                                                              (let ((__tmp130704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121118_ '()))))
                        (declare (not safe))
                        (cons _lift2121115_ __tmp130704))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130702
                                                   _stx120976_)))
                                               (_expr121122_
                                                (let ((__tmp130705
                                                       (let ((__tmp130706
                                                              (let ((__tmp130707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121120_ '()))))
                        (declare (not safe))
                        (cons _lift1121114_ __tmp130707))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130705
                                                   _stx120976_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self120975_
                                             _expr121122_))))))
                                  (let ((_g130682_
                                         (let ((__tmp130684
                                                (let ((__tmp130685
                                                       (lambda (_g121124121127_
                                                                _g121125121129_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121124121127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121125121129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130685
                                                          '()
                                                          _L121071_))))
                                           (declare (not safe))
                                           (_compile-bindings120979_
                                            __tmp130684))))
                                    (begin
                                      (let ((_g130683_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130682_)
                                                   (##vector-length _g130682_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130683_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130683_)))
                                      (let ((_lift1121132_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130682_ 0)))
                                            (_lift2121133_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130682_ 1)))
                                            (_hd121134_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130682_ 2))))
                                        (let* ((_body121136_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self120975_
                                                   _L121070_)))
                                               (_expr121138_
                                                (let ((__tmp130686
                                                       (let ((__tmp130687
                                                              (let ((__tmp130688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body121136_ '()))))
                        (declare (not safe))
                        (cons _hd121134_ __tmp130688))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130686
                                                   _stx120976_)))
                                               (_expr121140_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2121133_))
                                                    _expr121138_
                                                    (let ((__tmp130689
                                                           (let ((__tmp130690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130691
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121138_ '()))))
                            (declare (not safe))
                            (cons _lift2121133_ __tmp130691))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130690))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130689 _stx120976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr121142_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1121132_))
                                                    _expr121140_
                                                    (let ((__tmp130692
                                                           (let ((__tmp130693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130694
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121140_ '()))))
                            (declare (not safe))
                            (cons _lift1121132_ __tmp130694))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130693))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130692 _stx120976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr121142_)))))))
                           (__tmp130680
                            (let ((__obj130375
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130375)
                              __obj130375)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130681
                        gx#current-expander-context
                        __tmp130680))))
                  (___kont130164130165_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120975_ _stx120976_)))))
              (let ((___match130185130186_
                     (lambda (_e120990121022_
                              _hd120989121025_
                              _tl120988121027_
                              _e120993121030_
                              _hd120992121033_
                              _tl120991121035_
                              ___splice130162130163_
                              _target120994121038_
                              _tl120996121040_)
                       (letrec ((_loop120997121043_
                                 (lambda (_hd120995121046_ _bind121001121048_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120995121046_))
                                       (let ((_e120998121051_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120995121046_))))
                                         (let ((_lp-tl121000121056_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120998121051_)))
                                               (_lp-hd120999121054_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120998121051_))))
                                           (let ((__tmp130712
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120999121054_
                                                          _bind121001121048_))))
                                             (declare (not safe))
                                             (_loop120997121043_
                                              _lp-tl121000121056_
                                              __tmp130712))))
                                       (let ((_bind121002121059_
                                              (reverse _bind121001121048_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120991121035_))
                                             (let ((_e121005121062_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120991121035_))))
                                               (let ((_tl121003121067_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e121005121062_)))
                                                     (_hd121004121065_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e121005121062_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl121003121067_))
                                                     (let ((_L121070_
                                                            _hd121004121065_)
                                                           (_L121071_
                                                            _bind121002121059_))
                                                       (if (let ((__tmp130710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130711
                                 (lambda (_g121091121094_ _g121092121096_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g121091121094_ _g121092121096_)))))
                            (declare (not safe))
                            (foldr1 __tmp130711 '() _L121071_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130710))
                   (___kont130160130161_ _L121070_ _L121071_)
                   (___kont130164130165_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130164130165_))))
                                             (___kont130164130165_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120997121043_ _target120994121038_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130158130159_))
                    (let ((_e120990121022_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130158130159_))))
                      (let ((_tl120988121027_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120990121022_)))
                            (_hd120989121025_
                             (let ()
                               (declare (not safe))
                               (##car _e120990121022_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120988121027_))
                            (let ((_e120993121030_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120988121027_))))
                              (let ((_tl120991121035_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120993121030_)))
                                    (_hd120992121033_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120993121030_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120992121033_))
                                    (let ((___splice130162130163_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120992121033_
                                              '0))))
                                      (let ((_tl120996121040_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130162130163_
                                                '1)))
                                            (_target120994121038_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130162130163_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120996121040_))
                                            (___match130185130186_
                                             _e120990121022_
                                             _hd120989121025_
                                             _tl120988121027_
                                             _e120993121030_
                                             _hd120992121033_
                                             _tl120991121035_
                                             ___splice130162130163_
                                             _target120994121038_
                                             _tl120996121040_)
                                            (___kont130164130165_))))
                                    (___kont130164130165_))))
                            (___kont130164130165_))))
                    (___kont130164130165_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self120118_ _stx120119_)
        (letrec* ((_bind-e__128281128282_
                   (lambda (_id120959_ _expr120960_ _compile?120961_)
                     (let ((__tmp130715
                            (let ()
                              (declare (not safe))
                              (cons _id120959_ '())))
                           (__tmp130713
                            (let ((__tmp130714
                                   (if _compile?120961_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120118_
                                          _expr120960_))
                                       _expr120960_)))
                              (declare (not safe))
                              (cons __tmp130714 '()))))
                       (declare (not safe))
                       (cons __tmp130715 __tmp130713))))
                  (_bind-e__0__128283128284_
                   (lambda (_id120966_ _expr120967_)
                     (let ((_compile?120969_ '#t))
                       (declare (not safe))
                       (_bind-e__128281128282_
                        _id120966_
                        _expr120967_
                        _compile?120969_))))
                  (_bind-e120121_
                   (lambda _g130717_
                     (let ((_g130716_
                            (let ()
                              (declare (not safe))
                              (##length _g130717_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130716_ 2))
                              (apply (lambda (_id120966_ _expr120967_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128283128284_
                                          _id120966_
                                          _expr120967_)))
                                     _g130717_))
                             ((let () (declare (not safe)) (##fx= _g130716_ 3))
                              (apply (lambda (_id120971_
                                              _expr120972_
                                              _compile?120973_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128281128282_
                                          _id120971_
                                          _expr120972_
                                          _compile?120973_)))
                                     _g130717_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130717_))))))
                  (_compile-bindings120122_
                   (lambda (_rest120257_)
                     (let _lp120259_ ((_rest120261_ _rest120257_)
                                      (_bind120262_ '()))
                       (let* ((_rest120263120271_ _rest120261_)
                              (_else120265120279_
                               (lambda () (reverse _bind120262_)))
                              (_K120267120946_
                               (lambda (_rest120282_ _hd120283_)
                                 (let* ((___stx130208130209_ _hd120283_)
                                        (_g120288120335_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130208130209_)))))
                                   (let ((___kont130210130211_
                                          (lambda (_L120853_ _L120854_)
                                            (let* ((___stx130188130189_
                                                    _L120853_)
                                                   (_g120869120883_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130188130189_)))))
                                              (let ((___kont130190130191_
                                                     (lambda (_L120931_)
                                                       (let ((__tmp130718
                                                              (let ((__tmp130719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128281128282_
                                _L120854_
                                _L120853_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130719 _bind120262_))))
                 (declare (not safe))
                 (_lp120259_ _rest120282_ __tmp130718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130192130193_
                                                     (lambda (_L120896_)
                                                       (let ((_g130720_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120119_
                         _L120854_
                         _L120896_
                         '#t))))
                 (begin
                   (let ((_g130721_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130720_)
                                (##vector-length _g130720_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130721_ 3)))
                         (error "Context expects 3 values" _g130721_)))
                   (let ((_ids120906_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130720_ 0)))
                         (_impls120907_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130720_ 1)))
                         (_clauses120908_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130720_ 2))))
                     (let* ((_g130722_
                             (for-each gx#core-bind-runtime! _ids120906_))
                            (_xbind120911_
                             (map _bind-e120121_ _ids120906_ _impls120907_))
                            (_expr*120913_
                             (let ((__tmp130724
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120908_)))
                                   (__tmp130723
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130724
                                __tmp130723)))
                            (_bind*120915_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128281128282_
                                _L120854_
                                _expr*120913_
                                '#f))))
                       (let ((__tmp130726
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120854_)))
                             (__tmp130725
                              (map gxc#identifier-symbol _ids120906_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130726
                          '" => "
                          __tmp130725))
                       (let ((__tmp130727
                              (let ((__tmp130728
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind120262_
                                               _xbind120911_))))
                                (declare (not safe))
                                (cons _bind*120915_ __tmp130728))))
                         (declare (not safe))
                         (_lp120259_ _rest120282_ __tmp130727)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130199130200_
                                                       (lambda (_e120874120923_
                                                                _hd120873120926_
                                                                _tl120872120928_)
                                                         (let ((_L120931_
                                                                _tl120872120928_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120931_))
                       (___kont130190130191_ _L120931_)
                       (___kont130192130193_ _tl120872120928_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130188130189_))
                                                      (let ((_e120874120923_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130188130189_))))
                (let ((_tl120872120928_
                       (let () (declare (not safe)) (##cdr _e120874120923_)))
                      (_hd120873120926_
                       (let () (declare (not safe)) (##car _e120874120923_))))
                  (___match130199130200_
                   _e120874120923_
                   _hd120873120926_
                   _tl120872120928_)))
              (let () (declare (not safe)) (_g120869120883_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130212130213_
                                          (lambda (_L120681_ _L120682_)
                                            (let* ((_g120696120726_
                                                    (lambda (_g120697120723_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120697120723_))))
                                                   (_g120695120821_
                                                    (lambda (_g120697120729_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120697120729_))
                                                          (let ((_e120703120731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120697120729_))))
                    (let ((_hd120702120734_
                           (let ()
                             (declare (not safe))
                             (##car _e120703120731_)))
                          (_tl120701120736_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120703120731_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120701120736_))
                          (let ((_e120706120739_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120701120736_))))
                            (let ((_hd120705120742_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120706120739_)))
                                  (_tl120704120744_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120706120739_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120705120742_))
                                  (let ((_e120709120747_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120705120742_))))
                                    (let ((_hd120708120750_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120709120747_)))
                                          (_tl120707120752_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120709120747_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120708120750_))
                                          (let ((_e120712120755_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120708120750_))))
                                            (let ((_hd120711120758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120712120755_)))
                                                  (_tl120710120760_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120712120755_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120711120758_))
                                                  (let ((_e120715120763_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120711120758_))))
                                                    (let ((_hd120714120766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120715120763_)))
                                                          (_tl120713120768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120715120763_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120713120768_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120710120760_))
                      (let ((_e120718120771_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120710120760_))))
                        (let ((_hd120717120774_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120718120771_)))
                              (_tl120716120776_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120718120771_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120716120776_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120707120752_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120704120744_))
                                      (let ((_e120721120779_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120704120744_))))
                                        (let ((_hd120720120782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120721120779_)))
                                              (_tl120719120784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120721120779_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120719120784_))
                                              ((lambda (_L120787_
                                                        _L120788_
                                                        _L120789_)
                                                 (let* ((_lambda-id120813_
                                                         (let ((__tmp130730
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120682_)))
                       (__tmp130729 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130730 __tmp130729)))
                (_lambda-id120815_
                 (let ((__tmp130731
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120119_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120813_ __tmp130731)))
                (_g130732_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120815_)))
                (_new-case-lambda-expr120818_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120787_
                    'id:
                    _L120789_
                    'new-id:
                    _lambda-id120815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130734
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120682_)))
                                                         (__tmp130733
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120815_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130734
                                                      '" => "
                                                      __tmp130733))
                                                   (let ((__tmp130737
                                                          (let ((__tmp130738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128281128282_
                            _L120682_
                            _new-case-lambda-expr120818_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130738 _rest120282_)))
                 (__tmp130735
                  (let ((__tmp130736
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128283128284_
                            _lambda-id120815_
                            _L120788_))))
                    (declare (not safe))
                    (cons __tmp130736 _bind120262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120259_
                                                      __tmp130737
                                                      __tmp130735))))
                                               _hd120720120782_
                                               _hd120717120774_
                                               _hd120714120766_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120696120726_
                                                 _g120697120729_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120696120726_ _g120697120729_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120696120726_ _g120697120729_)))
                              (let ()
                                (declare (not safe))
                                (_g120696120726_ _g120697120729_)))))
                      (let ()
                        (declare (not safe))
                        (_g120696120726_ _g120697120729_)))
                  (let ()
                    (declare (not safe))
                    (_g120696120726_ _g120697120729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120696120726_
                                                     _g120697120729_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120696120726_
                                             _g120697120729_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120696120726_ _g120697120729_)))))
                          (let ()
                            (declare (not safe))
                            (_g120696120726_ _g120697120729_)))))
                  (let ()
                    (declare (not safe))
                    (_g120696120726_ _g120697120729_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120695120821_ _L120681_))))
                                         (___kont130214130215_
                                          (lambda (_L120405_ _L120406_)
                                            (let* ((_g120420120473_
                                                    (lambda (_g120421120470_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120421120470_))))
                                                   (_g120419120649_
                                                    (lambda (_g120421120476_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120421120476_))
                                                          (let ((_e120429120478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120421120476_))))
                    (let ((_hd120428120481_
                           (let ()
                             (declare (not safe))
                             (##car _e120429120478_)))
                          (_tl120427120483_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120429120478_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120427120483_))
                          (let ((_e120432120486_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120427120483_))))
                            (let ((_hd120431120489_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120432120486_)))
                                  (_tl120430120491_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120432120486_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120431120489_))
                                  (let ((_e120435120494_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120431120489_))))
                                    (let ((_hd120434120497_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120435120494_)))
                                          (_tl120433120499_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120435120494_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120434120497_))
                                          (let ((_e120438120502_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120434120497_))))
                                            (let ((_hd120437120505_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120438120502_)))
                                                  (_tl120436120507_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120438120502_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120437120505_))
                                                  (let ((_e120441120510_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120437120505_))))
                                                    (let ((_hd120440120513_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120441120510_)))
                                                          (_tl120439120515_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120441120510_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120439120515_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120436120507_))
                      (let ((_e120444120518_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120436120507_))))
                        (let ((_hd120443120521_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120444120518_)))
                              (_tl120442120523_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120444120518_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120443120521_))
                              (let ((_e120447120526_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120443120521_))))
                                (let ((_hd120446120529_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120447120526_)))
                                      (_tl120445120531_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120447120526_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120445120531_))
                                      (let ((_e120450120534_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120445120531_))))
                                        (let ((_hd120449120537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120450120534_)))
                                              (_tl120448120539_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120450120534_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120449120537_))
                                              (let ((_e120453120542_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120449120537_))))
                                                (let ((_hd120452120545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120453120542_)))
                                                      (_tl120451120547_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120453120542_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120452120545_))
                                                      (let ((_e120456120550_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120452120545_))))
                (let ((_hd120455120553_
                       (let () (declare (not safe)) (##car _e120456120550_)))
                      (_tl120454120555_
                       (let () (declare (not safe)) (##cdr _e120456120550_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120455120553_))
                      (let ((_e120459120558_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120455120553_))))
                        (let ((_hd120458120561_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120459120558_)))
                              (_tl120457120563_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120459120558_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120457120563_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120454120555_))
                                  (let ((_e120462120566_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120454120555_))))
                                    (let ((_hd120461120569_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120462120566_)))
                                          (_tl120460120571_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120462120566_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120460120571_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120451120547_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120448120539_))
                                                  (let ((_e120465120574_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120448120539_))))
                                                    (let ((_hd120464120577_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120465120574_)))
                                                          (_tl120463120579_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120465120574_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120463120579_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120442120523_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120433120499_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120430120491_))
                              (let ((_e120468120582_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120430120491_))))
                                (let ((_hd120467120585_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120468120582_)))
                                      (_tl120466120587_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120468120582_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120466120587_))
                                      ((lambda (_L120590_
                                                _L120591_
                                                _L120592_
                                                _L120593_
                                                _L120594_)
                                         (let* ((_get-kws-id120634_
                                                 (let ((__tmp130740
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120406_)))
                                                       (__tmp130739
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130740
                                                    __tmp130739)))
                                                (_get-kws-id120636_
                                                 (let ((__tmp130741
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120119_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120634_
                                                    __tmp130741)))
                                                (_main-id120638_
                                                 (let ((__tmp130743
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120406_)))
                                                       (__tmp130742
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130743
                                                    __tmp130742)))
                                                (_main-id120640_
                                                 (let ((__tmp130744
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120119_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120638_
                                                    __tmp130744)))
                                                (_g130745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120636_)))
                                                (_g130746_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120640_)))
                                                (_new-kw-dispatch120644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120590_
                                                    'id:
                                                    _L120594_
                                                    'new-id:
                                                    _get-kws-id120636_)))
                                                (_new-get-kws120646_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120591_
                                                    'id:
                                                    _L120593_
                                                    'new-id:
                                                    _main-id120640_))))
                                           (let ((__tmp130749
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120406_)))
                                                 (__tmp130748
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120636_)))
                                                 (__tmp130747
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120640_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130749
                                              '" => "
                                              __tmp130748
                                              '" => "
                                              __tmp130747))
                                           (let ((__tmp130750
                                                  (let ((__tmp130755
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128281128282_
                                                            _main-id120640_
                                                            _L120592_
                                                            '#f)))
                                                        (__tmp130751
                                                         (let ((__tmp130754
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__128281128282_
                           _get-kws-id120636_
                           _new-get-kws120646_
                           '#f)))
                       (__tmp130752
                        (let ((__tmp130753
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__128281128282_
                                  _L120406_
                                  _new-kw-dispatch120644_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp130753 _rest120282_))))
                   (declare (not safe))
                   (cons __tmp130754 __tmp130752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130755
                                                          __tmp130751))))
                                             (declare (not safe))
                                             (_lp120259_
                                              __tmp130750
                                              _bind120262_))))
                                       _hd120467120585_
                                       _hd120464120577_
                                       _hd120461120569_
                                       _hd120458120561_
                                       _hd120440120513_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120420120473_ _g120421120476_)))))
                              (let ()
                                (declare (not safe))
                                (_g120420120473_ _g120421120476_)))
                          (let ()
                            (declare (not safe))
                            (_g120420120473_ _g120421120476_)))
                      (let ()
                        (declare (not safe))
                        (_g120420120473_ _g120421120476_)))
                  (let ()
                    (declare (not safe))
                    (_g120420120473_ _g120421120476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120420120473_
                                                     _g120421120476_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120420120473_
                                                 _g120421120476_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120420120473_
                                             _g120421120476_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120420120473_ _g120421120476_)))
                              (let ()
                                (declare (not safe))
                                (_g120420120473_ _g120421120476_)))))
                      (let ()
                        (declare (not safe))
                        (_g120420120473_ _g120421120476_)))))
              (let ()
                (declare (not safe))
                (_g120420120473_ _g120421120476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120420120473_
                                                 _g120421120476_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120420120473_ _g120421120476_)))))
                              (let ()
                                (declare (not safe))
                                (_g120420120473_ _g120421120476_)))))
                      (let ()
                        (declare (not safe))
                        (_g120420120473_ _g120421120476_)))
                  (let ()
                    (declare (not safe))
                    (_g120420120473_ _g120421120476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120420120473_
                                                     _g120421120476_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120420120473_
                                             _g120421120476_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120420120473_ _g120421120476_)))))
                          (let ()
                            (declare (not safe))
                            (_g120420120473_ _g120421120476_)))))
                  (let ()
                    (declare (not safe))
                    (_g120420120473_ _g120421120476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120419120649_ _L120405_))))
                                         (___kont130216130217_
                                          (lambda (_L120356_ _L120357_)
                                            (let ((__tmp130756
                                                   (let ((__tmp130757
                                                          (let ((__tmp130758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130759
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120118_ _L120356_))))
                           (declare (not safe))
                           (cons __tmp130759 '()))))
                    (declare (not safe))
                    (cons _L120357_ __tmp130758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130757
                                                           _bind120262_))))
                                              (declare (not safe))
                                              (_lp120259_
                                               _rest120282_
                                               __tmp130756)))))
                                     (let* ((___match130283130284_
                                             (lambda (_e120316120381_
                                                      _hd120315120384_
                                                      _tl120314120386_
                                                      _e120319120389_
                                                      _hd120318120392_
                                                      _tl120317120394_
                                                      _e120322120397_
                                                      _hd120321120400_
                                                      _tl120320120402_)
                                               (let ((_L120405_
                                                      _hd120321120400_)
                                                     (_L120406_
                                                      _hd120318120392_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120406_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L120405_)))
                                                     (___kont130214130215_
                                                      _L120405_
                                                      _L120406_)
                                                     (___kont130216130217_
                                                      _hd120321120400_
                                                      _hd120315120384_)))))
                                            (___match130261130262_
                                             (lambda (_e120305120657_
                                                      _hd120304120660_
                                                      _tl120303120662_
                                                      _e120308120665_
                                                      _hd120307120668_
                                                      _tl120306120670_
                                                      _e120311120673_
                                                      _hd120310120676_
                                                      _tl120309120678_)
                                               (let ((_L120681_
                                                      _hd120310120676_)
                                                     (_L120682_
                                                      _hd120307120668_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120682_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120681_)))
                                                     (___kont130212130213_
                                                      _L120681_
                                                      _L120682_)
                                                     (___match130283130284_
                                                      _e120305120657_
                                                      _hd120304120660_
                                                      _tl120303120662_
                                                      _e120308120665_
                                                      _hd120307120668_
                                                      _tl120306120670_
                                                      _e120311120673_
                                                      _hd120310120676_
                                                      _tl120309120678_)))))
                                            (___match130239130240_
                                             (lambda (_e120294120829_
                                                      _hd120293120832_
                                                      _tl120292120834_
                                                      _e120297120837_
                                                      _hd120296120840_
                                                      _tl120295120842_
                                                      _e120300120845_
                                                      _hd120299120848_
                                                      _tl120298120850_)
                                               (let ((_L120853_
                                                      _hd120299120848_)
                                                     (_L120854_
                                                      _hd120296120840_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120854_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120853_)))
                                                     (___kont130210130211_
                                                      _L120853_
                                                      _L120854_)
                                                     (___match130261130262_
                                                      _e120294120829_
                                                      _hd120293120832_
                                                      _tl120292120834_
                                                      _e120297120837_
                                                      _hd120296120840_
                                                      _tl120295120842_
                                                      _e120300120845_
                                                      _hd120299120848_
                                                      _tl120298120850_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130208130209_))
                                           (let ((_e120294120829_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130208130209_))))
                                             (let ((_tl120292120834_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120294120829_)))
                                                   (_hd120293120832_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120294120829_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120293120832_))
                                                   (let ((_e120297120837_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120293120832_))))
                                                     (let ((_tl120295120842_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120297120837_)))
                                                           (_hd120296120840_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120297120837_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120295120842_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120292120834_))
                       (let ((_e120300120845_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120292120834_))))
                         (let ((_tl120298120850_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120300120845_)))
                               (_hd120299120848_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120300120845_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120298120850_))
                               (___match130239130240_
                                _e120294120829_
                                _hd120293120832_
                                _tl120292120834_
                                _e120297120837_
                                _hd120296120840_
                                _tl120295120842_
                                _e120300120845_
                                _hd120299120848_
                                _tl120298120850_)
                               (let ()
                                 (declare (not safe))
                                 (_g120288120335_)))))
                       (let () (declare (not safe)) (_g120288120335_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120292120834_))
                       (let ((_e120330120348_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120292120834_))))
                         (let ((_tl120328120353_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120330120348_)))
                               (_hd120329120351_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120330120348_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120328120353_))
                               (___kont130216130217_
                                _hd120329120351_
                                _hd120293120832_)
                               (let ()
                                 (declare (not safe))
                                 (_g120288120335_)))))
                       (let () (declare (not safe)) (_g120288120335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120292120834_))
                                                       (let ((_e120330120348_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120292120834_))))
                 (let ((_tl120328120353_
                        (let () (declare (not safe)) (##cdr _e120330120348_)))
                       (_hd120329120351_
                        (let () (declare (not safe)) (##car _e120330120348_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120328120353_))
                       (___kont130216130217_ _hd120329120351_ _hd120293120832_)
                       (let () (declare (not safe)) (_g120288120335_)))))
               (let () (declare (not safe)) (_g120288120335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120288120335_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120263120271_))
                             (let ((_hd120268120949_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120263120271_)))
                                   (_tl120269120951_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120263120271_))))
                               (let* ((_hd120954_ _hd120268120949_)
                                      (_rest120956_ _tl120269120951_))
                                 (declare (not safe))
                                 (_K120267120946_ _rest120956_ _hd120954_)))
                             (let ()
                               (declare (not safe))
                               (_else120265120279_))))))))
          (let* ((___stx130300130301_ _stx120119_)
                 (_g120125120152_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130300130301_)))))
            (let ((___kont130302130303_
                   (lambda (_L120212_ _L120213_ _L120214_)
                     (let ((__tmp130761
                            (lambda ()
                              (let ((_hd120251_
                                     (let ((__tmp130762
                                            (let ((__tmp130763
                                                   (lambda (_g120243120246_
                                                            _g120244120248_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g120243120246_
                                                             _g120244120248_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130763
                                                      '()
                                                      _L120213_))))
                                       (declare (not safe))
                                       (_compile-bindings120122_ __tmp130762)))
                                    (_body120252_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120118_
                                        _L120212_))))
                                (let ((__tmp130764
                                       (let ((__tmp130765
                                              (let ((__tmp130766
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body120252_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd120251_
                                                      __tmp130766))))
                                         (declare (not safe))
                                         (cons _L120214_ __tmp130765))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp130764
                                   _stx120119_)))))
                           (__tmp130760
                            (let ((__obj130376
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130376)
                              __obj130376)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130761
                        gx#current-expander-context
                        __tmp130760))))
                  (___kont130306130307_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120118_ _stx120119_)))))
              (let ((___match130327130328_
                     (lambda (_e120132120164_
                              _hd120131120167_
                              _tl120130120169_
                              _e120135120172_
                              _hd120134120175_
                              _tl120133120177_
                              ___splice130304130305_
                              _target120136120180_
                              _tl120138120182_)
                       (letrec ((_loop120139120185_
                                 (lambda (_hd120137120188_ _bind120143120190_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120137120188_))
                                       (let ((_e120140120193_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120137120188_))))
                                         (let ((_lp-tl120142120198_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120140120193_)))
                                               (_lp-hd120141120196_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120140120193_))))
                                           (let ((__tmp130769
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120141120196_
                                                          _bind120143120190_))))
                                             (declare (not safe))
                                             (_loop120139120185_
                                              _lp-tl120142120198_
                                              __tmp130769))))
                                       (let ((_bind120144120201_
                                              (reverse _bind120143120190_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120133120177_))
                                             (let ((_e120147120204_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120133120177_))))
                                               (let ((_tl120145120209_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120147120204_)))
                                                     (_hd120146120207_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120147120204_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120145120209_))
                                                     (let ((_L120212_
                                                            _hd120146120207_)
                                                           (_L120213_
                                                            _bind120144120201_)
                                                           (_L120214_
                                                            _hd120131120167_))
                                                       (if (let ((__tmp130767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130768
                                 (lambda (_g120235120238_ _g120236120240_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120235120238_ _g120236120240_)))))
                            (declare (not safe))
                            (foldr1 __tmp130768 '() _L120213_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130767))
                   (___kont130302130303_ _L120212_ _L120213_ _L120214_)
                   (___kont130306130307_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130306130307_))))
                                             (___kont130306130307_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120139120185_ _target120136120180_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130300130301_))
                    (let ((_e120132120164_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130300130301_))))
                      (let ((_tl120130120169_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120132120164_)))
                            (_hd120131120167_
                             (let ()
                               (declare (not safe))
                               (##car _e120132120164_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120130120169_))
                            (let ((_e120135120172_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120130120169_))))
                              (let ((_tl120133120177_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120135120172_)))
                                    (_hd120134120175_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120135120172_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120134120175_))
                                    (let ((___splice130304130305_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120134120175_
                                              '0))))
                                      (let ((_tl120138120182_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130304130305_
                                                '1)))
                                            (_target120136120180_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130304130305_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120138120182_))
                                            (___match130327130328_
                                             _e120132120164_
                                             _hd120131120167_
                                             _tl120130120169_
                                             _e120135120172_
                                             _hd120134120175_
                                             _tl120133120177_
                                             ___splice130304130305_
                                             _target120136120180_
                                             _tl120138120182_)
                                            (___kont130306130307_))))
                                    (___kont130306130307_))))
                            (___kont130306130307_))))
                    (___kont130306130307_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind120036_)
        (let* ((___stx130330130331_ _bind120036_)
               (_g120039120056_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx130330130331_)))))
          (let ((___kont130332130333_
                 (lambda (_L120092_ _L120093_)
                   (if (let () (declare (not safe)) (gx#identifier? _L120093_))
                       (let ((_$e120109_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L120092_))))
                         (if _$e120109_
                             _$e120109_
                             (let ((_$e120112_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L120092_))))
                               (if _$e120112_
                                   _$e120112_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120092_))))))
                       '#f)))
                (___kont130334130335_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx130330130331_))
                (let ((_e120045120068_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx130330130331_))))
                  (let ((_tl120043120073_
                         (let () (declare (not safe)) (##cdr _e120045120068_)))
                        (_hd120044120071_
                         (let ()
                           (declare (not safe))
                           (##car _e120045120068_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120044120071_))
                        (let ((_e120048120076_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120044120071_))))
                          (let ((_tl120046120081_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120048120076_)))
                                (_hd120047120079_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120048120076_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120046120081_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120043120073_))
                                    (let ((_e120051120084_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120043120073_))))
                                      (let ((_tl120049120089_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120051120084_)))
                                            (_hd120050120087_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120051120084_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120049120089_))
                                            (___kont130332130333_
                                             _hd120050120087_
                                             _hd120047120079_)
                                            (___kont130334130335_))))
                                    (___kont130334130335_))
                                (___kont130334130335_))))
                        (___kont130334130335_))))
                (___kont130334130335_))))))))
