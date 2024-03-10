(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710106262)
  (begin
    (define gxc#&collect-top-level-type-info::t
      (let ((__tmp129494 (list gxc#&void::t))
            (__tmp129492
             (let ((__tmp129493
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129493 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-top-level-type-info::t
         '&collect-top-level-type-info
         __tmp129494
         '()
         __tmp129492
         '#f)))
    (define gxc#&collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-top-level-type-info::t)))
    (define gxc#make-&collect-top-level-type-info
      (lambda _$args127389_
        (apply make-instance
               gxc#&collect-top-level-type-info::t
               _$args127389_)))
    (define gxc#&collect-top-level-type-info-bind-methods!
      (let ((__tmp129495
             (lambda ()
               (force gxc#&void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-top-level-type-info::t
                  '%#begin
                  gxc#collect-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-top-level-type-info::t
                  '%#begin-syntax
                  gxc#collect-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-top-level-type-info::t
                  '%#module
                  gxc#collect-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-top-level-type-info::t
                  '%#define-values
                  gxc#collect-top-level-type-define-values%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&collect-top-level-type-info::t)))))
        (declare (not safe))
        (make-promise __tmp129495)))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx127381_)
        (force gxc#&collect-top-level-type-info-bind-methods!)
        (let* ((_self127384_
                (let ((__obj129476
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&collect-top-level-type-info::t))))
                  __obj129476))
               (__tmp129496
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127384_ _stx127381_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129496
           gxc#current-compile-method
           _self127384_))))
    (define gxc#&basic-expression-top-level-type::t
      (let ((__tmp129499 (list gxc#&false::t))
            (__tmp129497
             (let ((__tmp129498
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129498 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&basic-expression-top-level-type::t
         '&basic-expression-top-level-type
         __tmp129499
         '()
         __tmp129497
         '#f)))
    (define gxc#&basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&basic-expression-top-level-type::t)))
    (define gxc#make-&basic-expression-top-level-type
      (lambda _$args127378_
        (apply make-instance
               gxc#&basic-expression-top-level-type::t
               _$args127378_)))
    (define gxc#&basic-expression-top-level-type-bind-methods!
      (let ((__tmp129500
             (lambda ()
               (force gxc#&false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-expression-top-level-type::t
                  '%#begin-annotation
                  gxc#basic-expression-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-expression-top-level-type::t
                  '%#call
                  gxc#basic-expression-type-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&basic-expression-top-level-type::t)))))
        (declare (not safe))
        (make-promise __tmp129500)))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx127370_)
        (force gxc#&basic-expression-top-level-type-bind-methods!)
        (let* ((_self127373_
                (let ((__obj129478
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#&basic-expression-top-level-type::t))))
                  __obj129478))
               (__tmp129501
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127373_ _stx127370_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129501
           gxc#current-compile-method
           _self127373_))))
    (define gxc#&collect-type-info::t
      (let ((__tmp129504 (list gxc#&void::t))
            (__tmp129502
             (let ((__tmp129503
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129503 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-type-info::t
         '&collect-type-info
         __tmp129504
         '()
         __tmp129502
         '#f)))
    (define gxc#&collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-type-info::t)))
    (define gxc#make-&collect-type-info
      (lambda _$args127367_
        (apply make-instance gxc#&collect-type-info::t _$args127367_)))
    (define gxc#&collect-type-info-bind-methods!
      (let ((__tmp129505
             (lambda ()
               (force gxc#&void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#begin
                  gxc#collect-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#begin-syntax
                  gxc#collect-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#module
                  gxc#collect-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#define-values
                  gxc#collect-type-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#begin-annotation
                  gxc#collect-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#lambda
                  gxc#collect-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#case-lambda
                  gxc#collect-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#let-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#letrec-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#letrec*-values
                  gxc#collect-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#call
                  gxc#collect-type-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#if
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-type-info::t
                  '%#set!
                  gxc#collect-body-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&collect-type-info::t)))))
        (declare (not safe))
        (make-promise __tmp129505)))
    (define gxc#apply-collect-type-info
      (lambda (_stx127359_)
        (force gxc#&collect-type-info-bind-methods!)
        (let* ((_self127362_
                (let ((__obj129480
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&collect-type-info::t))))
                  __obj129480))
               (__tmp129506
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127362_ _stx127359_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129506
           gxc#current-compile-method
           _self127362_))))
    (define gxc#&basic-expression-type::t
      (let ((__tmp129509 (list gxc#&false::t))
            (__tmp129507
             (let ((__tmp129508
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129508 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&basic-expression-type::t
         '&basic-expression-type
         __tmp129509
         '()
         __tmp129507
         '#f)))
    (define gxc#&basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&basic-expression-type::t)))
    (define gxc#make-&basic-expression-type
      (lambda _$args127356_
        (apply make-instance gxc#&basic-expression-type::t _$args127356_)))
    (define gxc#&basic-expression-type-bind-methods!
      (let ((__tmp129510
             (lambda ()
               (force gxc#&false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-expression-type::t
                  '%#begin
                  gxc#basic-expression-type-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-expression-type::t
                  '%#begin-annotation
                  gxc#basic-expression-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-expression-type::t
                  '%#lambda
                  gxc#basic-expression-type-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-expression-type::t
                  '%#case-lambda
                  gxc#basic-expression-type-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-expression-type::t
                  '%#let-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-expression-type::t
                  '%#letrec-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-expression-type::t
                  '%#letrec*-values
                  gxc#basic-expression-type-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-expression-type::t
                  '%#call
                  gxc#basic-expression-type-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-expression-type::t
                  '%#ref
                  gxc#basic-expression-type-ref%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&basic-expression-type::t)))))
        (declare (not safe))
        (make-promise __tmp129510)))
    (define gxc#apply-basic-expression-type
      (lambda (_stx127348_)
        (force gxc#&basic-expression-type-bind-methods!)
        (let* ((_self127351_
                (let ((__obj129482
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&basic-expression-type::t))))
                  __obj129482))
               (__tmp129511
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127351_ _stx127348_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129511
           gxc#current-compile-method
           _self127351_))))
    (define gxc#&lift-top-lambdas::t
      (let ((__tmp129514 (list gxc#&basic-xform::t))
            (__tmp129512
             (let ((__tmp129513
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129513 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&lift-top-lambdas::t
         '&lift-top-lambdas
         __tmp129514
         '()
         __tmp129512
         '#f)))
    (define gxc#&lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&lift-top-lambdas::t)))
    (define gxc#make-&lift-top-lambdas
      (lambda _$args127345_
        (apply make-instance gxc#&lift-top-lambdas::t _$args127345_)))
    (define gxc#&lift-top-lambdas-bind-methods!
      (let ((__tmp129515
             (lambda ()
               (force gxc#&basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&lift-top-lambdas::t
                  '%#define-values
                  gxc#lift-top-lambda-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&lift-top-lambdas::t
                  '%#let-values
                  gxc#lift-top-lambda-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&lift-top-lambdas::t
                  '%#letrec-values
                  gxc#lift-top-lambda-letrec-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&lift-top-lambdas::t
                  '%#letrec*-values
                  gxc#lift-top-lambda-letrec-values%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&lift-top-lambdas::t)))))
        (declare (not safe))
        (make-promise __tmp129515)))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx127337_)
        (force gxc#&lift-top-lambdas-bind-methods!)
        (let* ((_self127340_
                (let ((__obj129484
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&lift-top-lambdas::t))))
                  __obj129484))
               (__tmp129516
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127340_ _stx127337_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129516
           gxc#current-compile-method
           _self127340_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self127239_ _stx127240_)
        (let* ((___stx127402127403_ _stx127240_)
               (_g127243127263_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127402127403_)))))
          (let ((___kont127404127405_
                 (lambda (_L127307_ _L127308_)
                   (let ((_sym127326_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127308_))))
                     (if (let ((__tmp129517 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp129517 _sym127326_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym127326_))
                         (let ((_type127327127329_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L127307_))))
                           (if _type127327127329_
                               (let ((_type127332_ _type127327127329_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym127326_
                                  _type127332_))
                               '#f))))))
                (___kont127406127407_ (lambda () '#!void)))
            (let ((___match127435127436_
                   (lambda (_e127249127275_
                            _hd127248127278_
                            _tl127247127280_
                            _e127252127283_
                            _hd127251127286_
                            _tl127250127288_
                            _e127255127291_
                            _hd127254127294_
                            _tl127253127296_
                            _e127258127299_
                            _hd127257127302_
                            _tl127256127304_)
                     (let ((_L127307_ _hd127257127302_)
                           (_L127308_ _hd127254127294_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L127308_))
                           (___kont127404127405_ _L127307_ _L127308_)
                           (___kont127406127407_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127402127403_))
                  (let ((_e127249127275_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127402127403_))))
                    (let ((_tl127247127280_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127249127275_)))
                          (_hd127248127278_
                           (let ()
                             (declare (not safe))
                             (##car _e127249127275_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127247127280_))
                          (let ((_e127252127283_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127247127280_))))
                            (let ((_tl127250127288_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127252127283_)))
                                  (_hd127251127286_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127252127283_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127251127286_))
                                  (let ((_e127255127291_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127251127286_))))
                                    (let ((_tl127253127296_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127255127291_)))
                                          (_hd127254127294_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127255127291_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127253127296_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127250127288_))
                                              (let ((_e127258127299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127250127288_))))
                                                (let ((_tl127256127304_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127258127299_)))
                                                      (_hd127257127302_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127258127299_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127256127304_))
                                                      (___match127435127436_
                                                       _e127249127275_
                                                       _hd127248127278_
                                                       _tl127247127280_
                                                       _e127252127283_
                                                       _hd127251127286_
                                                       _tl127250127288_
                                                       _e127255127291_
                                                       _hd127254127294_
                                                       _tl127253127296_
                                                       _e127258127299_
                                                       _hd127257127302_
                                                       _tl127256127304_)
                                                      (___kont127406127407_))))
                                              (___kont127406127407_))
                                          (___kont127406127407_))))
                                  (___kont127406127407_))))
                          (___kont127406127407_))))
                  (___kont127406127407_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self127094_ _stx127095_)
        (let* ((___stx127438127439_ _stx127095_)
               (_g127098127129_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127438127439_)))))
          (let ((___kont127440127441_
                 (lambda (_L127211_ _L127212_)
                   (let ((_sym127228_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127212_))))
                     (if (let ((__tmp129518 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp129518 _sym127228_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym127228_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym127228_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym127228_))
                             (let ((_type127229127231_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L127211_))))
                               (if _type127229127231_
                                   (let ((_type127234_ _type127229127231_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym127228_
                                      _type127234_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self127094_ _L127211_)))))
                (___kont127442127443_
                 (lambda (_L127158_ _L127159_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127094_ _L127158_)))))
            (let ((___match127471127472_
                   (lambda (_e127104127179_
                            _hd127103127182_
                            _tl127102127184_
                            _e127107127187_
                            _hd127106127190_
                            _tl127105127192_
                            _e127110127195_
                            _hd127109127198_
                            _tl127108127200_
                            _e127113127203_
                            _hd127112127206_
                            _tl127111127208_)
                     (let ((_L127211_ _hd127112127206_)
                           (_L127212_ _hd127109127198_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L127212_))
                           (___kont127440127441_ _L127211_ _L127212_)
                           (___kont127442127443_
                            _hd127112127206_
                            _hd127106127190_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127438127439_))
                  (let ((_e127104127179_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127438127439_))))
                    (let ((_tl127102127184_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127104127179_)))
                          (_hd127103127182_
                           (let ()
                             (declare (not safe))
                             (##car _e127104127179_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127102127184_))
                          (let ((_e127107127187_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127102127184_))))
                            (let ((_tl127105127192_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127107127187_)))
                                  (_hd127106127190_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127107127187_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127106127190_))
                                  (let ((_e127110127195_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127106127190_))))
                                    (let ((_tl127108127200_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127110127195_)))
                                          (_hd127109127198_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127110127195_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127108127200_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127105127192_))
                                              (let ((_e127113127203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127105127192_))))
                                                (let ((_tl127111127208_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127113127203_)))
                                                      (_hd127112127206_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127113127203_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127111127208_))
                                                      (___match127471127472_
                                                       _e127104127179_
                                                       _hd127103127182_
                                                       _tl127102127184_
                                                       _e127107127187_
                                                       _hd127106127190_
                                                       _tl127105127192_
                                                       _e127110127195_
                                                       _hd127109127198_
                                                       _tl127108127200_
                                                       _e127113127203_
                                                       _hd127112127206_
                                                       _tl127111127208_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127098127129_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127098127129_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127105127192_))
                                              (let ((_e127124127150_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127105127192_))))
                                                (let ((_tl127122127155_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127124127150_)))
                                                      (_hd127123127153_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127124127150_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127122127155_))
                                                      (___kont127442127443_
                                                       _hd127123127153_
                                                       _hd127106127190_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127098127129_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127098127129_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127105127192_))
                                      (let ((_e127124127150_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127105127192_))))
                                        (let ((_tl127122127155_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127124127150_)))
                                              (_hd127123127153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127124127150_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127122127155_))
                                              (___kont127442127443_
                                               _hd127123127153_
                                               _hd127106127190_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127098127129_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127098127129_))))))
                          (let () (declare (not safe)) (_g127098127129_)))))
                  (let () (declare (not safe)) (_g127098127129_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self126874_ _stx126875_)
        (letrec ((_collect-e126877_
                  (lambda (_hd127038_ _expr127039_)
                    (let* ((___stx127494127495_ _hd127038_)
                           (_g127042127052_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx127494127495_)))))
                      (let ((___kont127496127497_
                             (lambda (_L127072_)
                               (let ((_sym127083_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L127072_))))
                                 (if (let ((__tmp129519
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp129519 _sym127083_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym127083_))
                                     (let ((_type127084127086_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr127039_))))
                                       (if _type127084127086_
                                           (let ((_type127089_
                                                  _type127084127086_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym127083_
                                              _type127089_
                                              '#t))
                                           '#f))))))
                            (___kont127498127499_ (lambda () '#!void)))
                        (let ((___match127507127508_
                               (lambda (_e127047127064_
                                        _hd127046127067_
                                        _tl127045127069_)
                                 (let ((_L127072_ _hd127046127067_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L127072_))
                                       (___kont127496127497_ _L127072_)
                                       (___kont127498127499_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx127494127495_))
                              (let ((_e127047127064_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx127494127495_))))
                                (let ((_tl127045127069_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127047127064_)))
                                      (_hd127046127067_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127047127064_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127045127069_))
                                      (___match127507127508_
                                       _e127047127064_
                                       _hd127046127067_
                                       _tl127045127069_)
                                      (___kont127498127499_))))
                              (___kont127498127499_))))))))
          (let* ((_g126879126914_
                  (lambda (_g126880126911_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126880126911_))))
                 (_g126878127035_
                  (lambda (_g126880126917_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126880126917_))
                        (let ((_e126886126919_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126880126917_))))
                          (let ((_hd126885126922_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126886126919_)))
                                (_tl126884126924_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126886126919_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126884126924_))
                                (let ((_e126889126927_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126884126924_))))
                                  (let ((_hd126888126930_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126889126927_)))
                                        (_tl126887126932_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126889126927_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126888126930_))
                                        (let ((_g129520_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126888126930_
                                                  '0))))
                                          (begin
                                            (let ((_g129521_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g129520_)
                                                         (##vector-length
                                                          _g129520_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g129521_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g129521_)))
                                            (let ((_target126890126935_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129520_
                                                      0)))
                                                  (_tl126892126937_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129520_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126892126937_))
                                                  (letrec ((_loop126893126940_
                                                            (lambda (_hd126891126943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126897126945_
                             _hd126898126947_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126891126943_))
                          (let ((_e126894126950_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126891126943_))))
                            (let ((_lp-hd126895126953_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126894126950_)))
                                  (_lp-tl126896126955_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126894126950_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126895126953_))
                                  (let ((_e126903126958_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126895126953_))))
                                    (let ((_hd126902126961_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126903126958_)))
                                          (_tl126901126963_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126903126958_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126901126963_))
                                          (let ((_e126906126966_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126901126963_))))
                                            (let ((_hd126905126969_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126906126966_)))
                                                  (_tl126904126971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126906126966_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126904126971_))
                                                  (let ((__tmp129526
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126905126969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126897126945_)))
                (__tmp129525
                 (let ()
                   (declare (not safe))
                   (cons _hd126902126961_ _hd126898126947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126893126940_
                                                     _lp-tl126896126955_
                                                     __tmp129526
                                                     __tmp129525))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126879126914_
                                                     _g126880126917_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126879126914_
                                             _g126880126917_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126879126914_ _g126880126917_)))))
                          (let ((_expr126899126974_
                                 (reverse _expr126897126945_))
                                (_hd126900126976_ (reverse _hd126898126947_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126887126932_))
                                (let ((_e126909126979_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126887126932_))))
                                  (let ((_hd126908126982_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126909126979_)))
                                        (_tl126907126984_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126909126979_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126907126984_))
                                        ((lambda (_L126987_
                                                  _L126988_
                                                  _L126989_)
                                           (for-each
                                            _collect-e126877_
                                            (let ((__tmp129522
                                                   (lambda (_g127009127012_
                                                            _g127010127014_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127009127012_
                                                             _g127010127014_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129522
                                                      '()
                                                      _L126989_))
                                            (let ((__tmp129523
                                                   (lambda (_g127016127019_
                                                            _g127017127021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127016127019_
                                                             _g127017127021_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129523
                                                      '()
                                                      _L126988_)))
                                           (for-each
                                            (lambda (_g127023127025_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self126874_
                                                 _g127023127025_)))
                                            (let ((__tmp129524
                                                   (lambda (_g127027127030_
                                                            _g127028127032_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g127027127030_
                                                             _g127028127032_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129524
                                                      '()
                                                      _L126988_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self126874_
                                              _L126987_)))
                                         _hd126908126982_
                                         _expr126899126974_
                                         _hd126900126976_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126879126914_ _g126880126917_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126879126914_ _g126880126917_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126893126940_
                                                       _target126890126935_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126879126914_
                                                     _g126880126917_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126879126914_ _g126880126917_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126879126914_ _g126880126917_)))))
                        (let ()
                          (declare (not safe))
                          (_g126879126914_ _g126880126917_))))))
            (declare (not safe))
            (_g126878127035_ _stx126875_)))))
    (define gxc#collect-type-call%
      (lambda (_self126361_ _stx126362_)
        (let* ((___stx127510127511_ _stx126362_)
               (_g126366126481_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127510127511_)))))
          (let ((___kont127512127513_
                 (lambda (_L126824_ _L126825_ _L126826_ _L126827_ _L126828_)
                   (let ((__tmp129530
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126827_)))
                         (__tmp129529
                          (let () (declare (not safe)) (gx#stx-e _L126826_)))
                         (__tmp129528
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126825_)))
                         (__tmp129527
                          (let () (declare (not safe)) (gx#stx-e _L126824_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp129530
                      __tmp129529
                      __tmp129528
                      __tmp129527))))
                (___kont127514127515_
                 (lambda (_L126652_ _L126653_ _L126654_ _L126655_)
                   (let ((__tmp129533
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126654_)))
                         (__tmp129532
                          (let () (declare (not safe)) (gx#stx-e _L126653_)))
                         (__tmp129531
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126652_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp129533
                      __tmp129532
                      __tmp129531
                      '#f))))
                (___kont127516127517_
                 (lambda (_L126518_)
                   (for-each
                    (lambda (_g126531126533_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self126361_ _g126531126533_)))
                    (let ((__tmp129534
                           (lambda (_g126535126538_ _g126536126540_)
                             (let ()
                               (declare (not safe))
                               (cons _g126535126538_ _g126536126540_)))))
                      (declare (not safe))
                      (foldr1 __tmp129534 '() _L126518_))))))
            (let* ((___match127767127768_
                    (lambda (_e126467126486_
                             _hd126466126489_
                             _tl126465126491_
                             ___splice127518127519_
                             _target126468126494_
                             _tl126470126496_)
                      (letrec ((_loop126471126499_
                                (lambda (_hd126469126502_ _expr126475126504_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126469126502_))
                                      (let ((_e126472126507_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126469126502_))))
                                        (let ((_lp-tl126474126512_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126472126507_)))
                                              (_lp-hd126473126510_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126472126507_))))
                                          (let ((__tmp129535
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd126473126510_
                                                         _expr126475126504_))))
                                            (declare (not safe))
                                            (_loop126471126499_
                                             _lp-tl126474126512_
                                             __tmp129535))))
                                      (let ((_expr126476126515_
                                             (reverse _expr126475126504_)))
                                        (___kont127516127517_
                                         _expr126476126515_))))))
                        (let ()
                          (declare (not safe))
                          (_loop126471126499_ _target126468126494_ '())))))
                   (___match127647127648_
                    (lambda (_e126375126696_
                             _hd126374126699_
                             _tl126373126701_
                             _e126378126704_
                             _hd126377126707_
                             _tl126376126709_
                             _e126381126712_
                             _hd126380126715_
                             _tl126379126717_
                             _e126384126720_
                             _hd126383126723_
                             _tl126382126725_
                             _e126387126728_
                             _hd126386126731_
                             _tl126385126733_
                             _e126390126736_
                             _hd126389126739_
                             _tl126388126741_
                             _e126393126744_
                             _hd126392126747_
                             _tl126391126749_
                             _e126396126752_
                             _hd126395126755_
                             _tl126394126757_
                             _e126399126760_
                             _hd126398126763_
                             _tl126397126765_
                             _e126402126768_
                             _hd126401126771_
                             _tl126400126773_
                             _e126405126776_
                             _hd126404126779_
                             _tl126403126781_
                             _e126408126784_
                             _hd126407126787_
                             _tl126406126789_
                             _e126411126792_
                             _hd126410126795_
                             _tl126409126797_
                             _e126414126800_
                             _hd126413126803_
                             _tl126412126805_
                             _e126417126808_
                             _hd126416126811_
                             _tl126415126813_
                             _e126420126816_
                             _hd126419126819_
                             _tl126418126821_)
                      (let ((_L126824_ _hd126419126819_)
                            (_L126825_ _hd126410126795_)
                            (_L126826_ _hd126401126771_)
                            (_L126827_ _hd126392126747_)
                            (_L126828_ _hd126383126723_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126828_
                               'bind-method!))
                            (___kont127512127513_
                             _L126824_
                             _L126825_
                             _L126826_
                             _L126827_
                             _L126828_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl126373126701_))
                                (let ((___splice127518127519_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl126373126701_
                                          '0))))
                                  (let ((_tl126470126496_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice127518127519_
                                            '1)))
                                        (_target126468126494_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice127518127519_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126470126496_))
                                        (___match127767127768_
                                         _e126375126696_
                                         _hd126374126699_
                                         _tl126373126701_
                                         ___splice127518127519_
                                         _target126468126494_
                                         _tl126470126496_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126366126481_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126366126481_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127510127511_))
                  (let ((_e126375126696_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127510127511_))))
                    (let ((_tl126373126701_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126375126696_)))
                          (_hd126374126699_
                           (let ()
                             (declare (not safe))
                             (##car _e126375126696_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126373126701_))
                          (let ((_e126378126704_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126373126701_))))
                            (let ((_tl126376126709_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126378126704_)))
                                  (_hd126377126707_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126378126704_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126377126707_))
                                  (let ((_e126381126712_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126377126707_))))
                                    (let ((_tl126379126717_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126381126712_)))
                                          (_hd126380126715_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126381126712_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd126380126715_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd126380126715_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126379126717_))
                                                  (let ((_e126384126720_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126379126717_))))
                                                    (let ((_tl126382126725_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126384126720_)))
                                                          (_hd126383126723_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126384126720_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126382126725_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl126376126709_))
                      (let ((_e126387126728_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126376126709_))))
                        (let ((_tl126385126733_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126387126728_)))
                              (_hd126386126731_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126387126728_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd126386126731_))
                              (let ((_e126390126736_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd126386126731_))))
                                (let ((_tl126388126741_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126390126736_)))
                                      (_hd126389126739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126390126736_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd126389126739_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd126389126739_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126388126741_))
                                              (let ((_e126393126744_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126388126741_))))
                                                (let ((_tl126391126749_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126393126744_)))
                                                      (_hd126392126747_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126393126744_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126391126749_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126385126733_))
                                                          (let ((_e126396126752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126385126733_))))
                    (let ((_tl126394126757_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126396126752_)))
                          (_hd126395126755_
                           (let ()
                             (declare (not safe))
                             (##car _e126396126752_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126395126755_))
                          (let ((_e126399126760_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126395126755_))))
                            (let ((_tl126397126765_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126399126760_)))
                                  (_hd126398126763_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126399126760_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126398126763_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd126398126763_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126397126765_))
                                          (let ((_e126402126768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126397126765_))))
                                            (let ((_tl126400126773_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126402126768_)))
                                                  (_hd126401126771_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126402126768_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126400126773_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126394126757_))
                                                      (let ((_e126405126776_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126394126757_))))
                (let ((_tl126403126781_
                       (let () (declare (not safe)) (##cdr _e126405126776_)))
                      (_hd126404126779_
                       (let () (declare (not safe)) (##car _e126405126776_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126404126779_))
                      (let ((_e126408126784_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126404126779_))))
                        (let ((_tl126406126789_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126408126784_)))
                              (_hd126407126787_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126408126784_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126407126787_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd126407126787_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126406126789_))
                                      (let ((_e126411126792_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126406126789_))))
                                        (let ((_tl126409126797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126411126792_)))
                                              (_hd126410126795_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126411126792_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126409126797_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126403126781_))
                                                  (let ((_e126414126800_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126403126781_))))
                                                    (let ((_tl126412126805_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126414126800_)))
                                                          (_hd126413126803_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126414126800_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126413126803_))
                                                          (let ((_e126417126808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126413126803_))))
                    (let ((_tl126415126813_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126417126808_)))
                          (_hd126416126811_
                           (let ()
                             (declare (not safe))
                             (##car _e126417126808_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126416126811_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd126416126811_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126415126813_))
                                  (let ((_e126420126816_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126415126813_))))
                                    (let ((_tl126418126821_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126420126816_)))
                                          (_hd126419126819_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126420126816_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126418126821_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126412126805_))
                                              (___match127647127648_
                                               _e126375126696_
                                               _hd126374126699_
                                               _tl126373126701_
                                               _e126378126704_
                                               _hd126377126707_
                                               _tl126376126709_
                                               _e126381126712_
                                               _hd126380126715_
                                               _tl126379126717_
                                               _e126384126720_
                                               _hd126383126723_
                                               _tl126382126725_
                                               _e126387126728_
                                               _hd126386126731_
                                               _tl126385126733_
                                               _e126390126736_
                                               _hd126389126739_
                                               _tl126388126741_
                                               _e126393126744_
                                               _hd126392126747_
                                               _tl126391126749_
                                               _e126396126752_
                                               _hd126395126755_
                                               _tl126394126757_
                                               _e126399126760_
                                               _hd126398126763_
                                               _tl126397126765_
                                               _e126402126768_
                                               _hd126401126771_
                                               _tl126400126773_
                                               _e126405126776_
                                               _hd126404126779_
                                               _tl126403126781_
                                               _e126408126784_
                                               _hd126407126787_
                                               _tl126406126789_
                                               _e126411126792_
                                               _hd126410126795_
                                               _tl126409126797_
                                               _e126414126800_
                                               _hd126413126803_
                                               _tl126412126805_
                                               _e126417126808_
                                               _hd126416126811_
                                               _tl126415126813_
                                               _e126420126816_
                                               _hd126419126819_
                                               _tl126418126821_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126373126701_))
                                                  (let ((___splice127518127519_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126373126701_
                                                            '0))))
                                                    (let ((_tl126470126496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127518127519_
                                                              '1)))
                                                          (_target126468126494_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127518127519_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126470126496_))
                                                          (___match127767127768_
                                                           _e126375126696_
                                                           _hd126374126699_
                                                           _tl126373126701_
                                                           ___splice127518127519_
                                                           _target126468126494_
                                                           _tl126470126496_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126366126481_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126366126481_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126373126701_))
                                              (let ((___splice127518127519_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126373126701_
                                                        '0))))
                                                (let ((_tl126470126496_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127518127519_
                                                          '1)))
                                                      (_target126468126494_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127518127519_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126470126496_))
                                                      (___match127767127768_
                                                       _e126375126696_
                                                       _hd126374126699_
                                                       _tl126373126701_
                                                       ___splice127518127519_
                                                       _target126468126494_
                                                       _tl126470126496_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126366126481_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126366126481_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126373126701_))
                                      (let ((___splice127518127519_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126373126701_
                                                '0))))
                                        (let ((_tl126470126496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127518127519_
                                                  '1)))
                                              (_target126468126494_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127518127519_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126470126496_))
                                              (___match127767127768_
                                               _e126375126696_
                                               _hd126374126699_
                                               _tl126373126701_
                                               ___splice127518127519_
                                               _target126468126494_
                                               _tl126470126496_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126366126481_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126366126481_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl126373126701_))
                                  (let ((___splice127518127519_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl126373126701_
                                            '0))))
                                    (let ((_tl126470126496_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127518127519_
                                              '1)))
                                          (_target126468126494_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127518127519_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126470126496_))
                                          (___match127767127768_
                                           _e126375126696_
                                           _hd126374126699_
                                           _tl126373126701_
                                           ___splice127518127519_
                                           _target126468126494_
                                           _tl126470126496_)
                                          (let ()
                                            (declare (not safe))
                                            (_g126366126481_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126366126481_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl126373126701_))
                              (let ((___splice127518127519_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl126373126701_
                                        '0))))
                                (let ((_tl126470126496_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127518127519_
                                          '1)))
                                      (_target126468126494_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127518127519_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126470126496_))
                                      (___match127767127768_
                                       _e126375126696_
                                       _hd126374126699_
                                       _tl126373126701_
                                       ___splice127518127519_
                                       _target126468126494_
                                       _tl126470126496_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126366126481_)))))
                              (let ()
                                (declare (not safe))
                                (_g126366126481_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126373126701_))
                      (let ((___splice127518127519_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126373126701_ '0))))
                        (let ((_tl126470126496_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127518127519_ '1)))
                              (_target126468126494_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127518127519_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126470126496_))
                              (___match127767127768_
                               _e126375126696_
                               _hd126374126699_
                               _tl126373126701_
                               ___splice127518127519_
                               _target126468126494_
                               _tl126470126496_)
                              (let ()
                                (declare (not safe))
                                (_g126366126481_)))))
                      (let () (declare (not safe)) (_g126366126481_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126403126781_))
                                                      (if (let ((__tmp129536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp129536 'bind-method!))
                  (let ((_L126652_ _hd126410126795_)
                        (_L126653_ _hd126401126771_)
                        (_L126654_ _hd126392126747_)
                        (_L126655_ _hd126383126723_))
                    (___kont127514127515_
                     _L126652_
                     _L126653_
                     _L126654_
                     _L126655_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126373126701_))
                      (let ((___splice127518127519_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126373126701_ '0))))
                        (let ((_tl126470126496_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127518127519_ '1)))
                              (_target126468126494_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127518127519_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126470126496_))
                              (___match127767127768_
                               _e126375126696_
                               _hd126374126699_
                               _tl126373126701_
                               ___splice127518127519_
                               _target126468126494_
                               _tl126470126496_)
                              (let ()
                                (declare (not safe))
                                (_g126366126481_)))))
                      (let () (declare (not safe)) (_g126366126481_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl126373126701_))
                  (let ((___splice127518127519_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl126373126701_ '0))))
                    (let ((_tl126470126496_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127518127519_ '1)))
                          (_target126468126494_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127518127519_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126470126496_))
                          (___match127767127768_
                           _e126375126696_
                           _hd126374126699_
                           _tl126373126701_
                           ___splice127518127519_
                           _target126468126494_
                           _tl126470126496_)
                          (let () (declare (not safe)) (_g126366126481_)))))
                  (let () (declare (not safe)) (_g126366126481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126373126701_))
                                                  (let ((___splice127518127519_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126373126701_
                                                            '0))))
                                                    (let ((_tl126470126496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127518127519_
                                                              '1)))
                                                          (_target126468126494_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127518127519_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126470126496_))
                                                          (___match127767127768_
                                                           _e126375126696_
                                                           _hd126374126699_
                                                           _tl126373126701_
                                                           ___splice127518127519_
                                                           _target126468126494_
                                                           _tl126470126496_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126366126481_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126366126481_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl126373126701_))
                                          (let ((___splice127518127519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl126373126701_
                                                    '0))))
                                            (let ((_tl126470126496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127518127519_
                                                      '1)))
                                                  (_target126468126494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127518127519_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126470126496_))
                                                  (___match127767127768_
                                                   _e126375126696_
                                                   _hd126374126699_
                                                   _tl126373126701_
                                                   ___splice127518127519_
                                                   _target126468126494_
                                                   _tl126470126496_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126366126481_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126366126481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126373126701_))
                                      (let ((___splice127518127519_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126373126701_
                                                '0))))
                                        (let ((_tl126470126496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127518127519_
                                                  '1)))
                                              (_target126468126494_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127518127519_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126470126496_))
                                              (___match127767127768_
                                               _e126375126696_
                                               _hd126374126699_
                                               _tl126373126701_
                                               ___splice127518127519_
                                               _target126468126494_
                                               _tl126470126496_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126366126481_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126366126481_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl126373126701_))
                                  (let ((___splice127518127519_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl126373126701_
                                            '0))))
                                    (let ((_tl126470126496_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127518127519_
                                              '1)))
                                          (_target126468126494_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127518127519_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126470126496_))
                                          (___match127767127768_
                                           _e126375126696_
                                           _hd126374126699_
                                           _tl126373126701_
                                           ___splice127518127519_
                                           _target126468126494_
                                           _tl126470126496_)
                                          (let ()
                                            (declare (not safe))
                                            (_g126366126481_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126366126481_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl126373126701_))
                          (let ((___splice127518127519_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl126373126701_
                                    '0))))
                            (let ((_tl126470126496_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127518127519_ '1)))
                                  (_target126468126494_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127518127519_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126470126496_))
                                  (___match127767127768_
                                   _e126375126696_
                                   _hd126374126699_
                                   _tl126373126701_
                                   ___splice127518127519_
                                   _target126468126494_
                                   _tl126470126496_)
                                  (let ()
                                    (declare (not safe))
                                    (_g126366126481_)))))
                          (let () (declare (not safe)) (_g126366126481_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl126373126701_))
                  (let ((___splice127518127519_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl126373126701_ '0))))
                    (let ((_tl126470126496_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127518127519_ '1)))
                          (_target126468126494_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127518127519_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126470126496_))
                          (___match127767127768_
                           _e126375126696_
                           _hd126374126699_
                           _tl126373126701_
                           ___splice127518127519_
                           _target126468126494_
                           _tl126470126496_)
                          (let () (declare (not safe)) (_g126366126481_)))))
                  (let () (declare (not safe)) (_g126366126481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl126373126701_))
                                                      (let ((___splice127518127519_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl126373126701_ '0))))
                (let ((_tl126470126496_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127518127519_ '1)))
                      (_target126468126494_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127518127519_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl126470126496_))
                      (___match127767127768_
                       _e126375126696_
                       _hd126374126699_
                       _tl126373126701_
                       ___splice127518127519_
                       _target126468126494_
                       _tl126470126496_)
                      (let () (declare (not safe)) (_g126366126481_)))))
              (let () (declare (not safe)) (_g126366126481_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126373126701_))
                                              (let ((___splice127518127519_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126373126701_
                                                        '0))))
                                                (let ((_tl126470126496_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127518127519_
                                                          '1)))
                                                      (_target126468126494_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127518127519_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126470126496_))
                                                      (___match127767127768_
                                                       _e126375126696_
                                                       _hd126374126699_
                                                       _tl126373126701_
                                                       ___splice127518127519_
                                                       _target126468126494_
                                                       _tl126470126496_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126366126481_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126366126481_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl126373126701_))
                                          (let ((___splice127518127519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl126373126701_
                                                    '0))))
                                            (let ((_tl126470126496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127518127519_
                                                      '1)))
                                                  (_target126468126494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127518127519_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126470126496_))
                                                  (___match127767127768_
                                                   _e126375126696_
                                                   _hd126374126699_
                                                   _tl126373126701_
                                                   ___splice127518127519_
                                                   _target126468126494_
                                                   _tl126470126496_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126366126481_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126366126481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126373126701_))
                                      (let ((___splice127518127519_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126373126701_
                                                '0))))
                                        (let ((_tl126470126496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127518127519_
                                                  '1)))
                                              (_target126468126494_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127518127519_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126470126496_))
                                              (___match127767127768_
                                               _e126375126696_
                                               _hd126374126699_
                                               _tl126373126701_
                                               ___splice127518127519_
                                               _target126468126494_
                                               _tl126470126496_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126366126481_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126366126481_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl126373126701_))
                              (let ((___splice127518127519_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl126373126701_
                                        '0))))
                                (let ((_tl126470126496_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127518127519_
                                          '1)))
                                      (_target126468126494_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127518127519_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126470126496_))
                                      (___match127767127768_
                                       _e126375126696_
                                       _hd126374126699_
                                       _tl126373126701_
                                       ___splice127518127519_
                                       _target126468126494_
                                       _tl126470126496_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126366126481_)))))
                              (let ()
                                (declare (not safe))
                                (_g126366126481_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126373126701_))
                      (let ((___splice127518127519_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126373126701_ '0))))
                        (let ((_tl126470126496_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127518127519_ '1)))
                              (_target126468126494_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127518127519_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126470126496_))
                              (___match127767127768_
                               _e126375126696_
                               _hd126374126699_
                               _tl126373126701_
                               ___splice127518127519_
                               _target126468126494_
                               _tl126470126496_)
                              (let ()
                                (declare (not safe))
                                (_g126366126481_)))))
                      (let () (declare (not safe)) (_g126366126481_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl126373126701_))
                  (let ((___splice127518127519_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl126373126701_ '0))))
                    (let ((_tl126470126496_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127518127519_ '1)))
                          (_target126468126494_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127518127519_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126470126496_))
                          (___match127767127768_
                           _e126375126696_
                           _hd126374126699_
                           _tl126373126701_
                           ___splice127518127519_
                           _target126468126494_
                           _tl126470126496_)
                          (let () (declare (not safe)) (_g126366126481_)))))
                  (let () (declare (not safe)) (_g126366126481_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126373126701_))
                                                  (let ((___splice127518127519_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126373126701_
                                                            '0))))
                                                    (let ((_tl126470126496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127518127519_
                                                              '1)))
                                                          (_target126468126494_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127518127519_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126470126496_))
                                                          (___match127767127768_
                                                           _e126375126696_
                                                           _hd126374126699_
                                                           _tl126373126701_
                                                           ___splice127518127519_
                                                           _target126468126494_
                                                           _tl126470126496_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126366126481_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126366126481_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126373126701_))
                                              (let ((___splice127518127519_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126373126701_
                                                        '0))))
                                                (let ((_tl126470126496_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127518127519_
                                                          '1)))
                                                      (_target126468126494_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127518127519_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126470126496_))
                                                      (___match127767127768_
                                                       _e126375126696_
                                                       _hd126374126699_
                                                       _tl126373126701_
                                                       ___splice127518127519_
                                                       _target126468126494_
                                                       _tl126470126496_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126366126481_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126366126481_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl126373126701_))
                                          (let ((___splice127518127519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl126373126701_
                                                    '0))))
                                            (let ((_tl126470126496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127518127519_
                                                      '1)))
                                                  (_target126468126494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127518127519_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126470126496_))
                                                  (___match127767127768_
                                                   _e126375126696_
                                                   _hd126374126699_
                                                   _tl126373126701_
                                                   ___splice127518127519_
                                                   _target126468126494_
                                                   _tl126470126496_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126366126481_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126366126481_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl126373126701_))
                                  (let ((___splice127518127519_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl126373126701_
                                            '0))))
                                    (let ((_tl126470126496_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127518127519_
                                              '1)))
                                          (_target126468126494_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127518127519_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126470126496_))
                                          (___match127767127768_
                                           _e126375126696_
                                           _hd126374126699_
                                           _tl126373126701_
                                           ___splice127518127519_
                                           _target126468126494_
                                           _tl126470126496_)
                                          (let ()
                                            (declare (not safe))
                                            (_g126366126481_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126366126481_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl126373126701_))
                          (let ((___splice127518127519_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl126373126701_
                                    '0))))
                            (let ((_tl126470126496_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127518127519_ '1)))
                                  (_target126468126494_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127518127519_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126470126496_))
                                  (___match127767127768_
                                   _e126375126696_
                                   _hd126374126699_
                                   _tl126373126701_
                                   ___splice127518127519_
                                   _target126468126494_
                                   _tl126470126496_)
                                  (let ()
                                    (declare (not safe))
                                    (_g126366126481_)))))
                          (let () (declare (not safe)) (_g126366126481_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126373126701_))
                      (let ((___splice127518127519_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126373126701_ '0))))
                        (let ((_tl126470126496_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127518127519_ '1)))
                              (_target126468126494_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127518127519_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126470126496_))
                              (___match127767127768_
                               _e126375126696_
                               _hd126374126699_
                               _tl126373126701_
                               ___splice127518127519_
                               _target126468126494_
                               _tl126470126496_)
                              (let ()
                                (declare (not safe))
                                (_g126366126481_)))))
                      (let () (declare (not safe)) (_g126366126481_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl126373126701_))
                                                      (let ((___splice127518127519_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl126373126701_ '0))))
                (let ((_tl126470126496_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127518127519_ '1)))
                      (_target126468126494_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127518127519_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl126470126496_))
                      (___match127767127768_
                       _e126375126696_
                       _hd126374126699_
                       _tl126373126701_
                       ___splice127518127519_
                       _target126468126494_
                       _tl126470126496_)
                      (let () (declare (not safe)) (_g126366126481_)))))
              (let () (declare (not safe)) (_g126366126481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126373126701_))
                                                  (let ((___splice127518127519_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126373126701_
                                                            '0))))
                                                    (let ((_tl126470126496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127518127519_
                                                              '1)))
                                                          (_target126468126494_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127518127519_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126470126496_))
                                                          (___match127767127768_
                                                           _e126375126696_
                                                           _hd126374126699_
                                                           _tl126373126701_
                                                           ___splice127518127519_
                                                           _target126468126494_
                                                           _tl126470126496_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126366126481_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126366126481_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126373126701_))
                                              (let ((___splice127518127519_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126373126701_
                                                        '0))))
                                                (let ((_tl126470126496_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127518127519_
                                                          '1)))
                                                      (_target126468126494_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127518127519_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126470126496_))
                                                      (___match127767127768_
                                                       _e126375126696_
                                                       _hd126374126699_
                                                       _tl126373126701_
                                                       ___splice127518127519_
                                                       _target126468126494_
                                                       _tl126470126496_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126366126481_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126366126481_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126373126701_))
                                      (let ((___splice127518127519_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126373126701_
                                                '0))))
                                        (let ((_tl126470126496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127518127519_
                                                  '1)))
                                              (_target126468126494_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127518127519_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126470126496_))
                                              (___match127767127768_
                                               _e126375126696_
                                               _hd126374126699_
                                               _tl126373126701_
                                               ___splice127518127519_
                                               _target126468126494_
                                               _tl126470126496_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126366126481_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126366126481_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl126373126701_))
                              (let ((___splice127518127519_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl126373126701_
                                        '0))))
                                (let ((_tl126470126496_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127518127519_
                                          '1)))
                                      (_target126468126494_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127518127519_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126470126496_))
                                      (___match127767127768_
                                       _e126375126696_
                                       _hd126374126699_
                                       _tl126373126701_
                                       ___splice127518127519_
                                       _target126468126494_
                                       _tl126470126496_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126366126481_)))))
                              (let ()
                                (declare (not safe))
                                (_g126366126481_))))))
                  (let () (declare (not safe)) (_g126366126481_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self126300_ _stx126301_)
        (let* ((___stx127770127771_ _stx126301_)
               (_g126304126317_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127770127771_)))))
          (let ((___kont127772127773_
                 (lambda (_L126345_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self126300_ _L126345_))))
                (___kont127774127775_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127770127771_))
                (let ((_e126309126329_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127770127771_))))
                  (let ((_tl126307126334_
                         (let () (declare (not safe)) (##cdr _e126309126329_)))
                        (_hd126308126332_
                         (let ()
                           (declare (not safe))
                           (##car _e126309126329_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl126307126334_))
                        (let ((_e126312126337_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl126307126334_))))
                          (let ((_tl126310126342_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126312126337_)))
                                (_hd126311126340_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126312126337_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl126310126342_))
                                (___kont127772127773_ _hd126311126340_)
                                (___kont127774127775_))))
                        (___kont127774127775_))))
                (___kont127774127775_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self126179_ _stx126180_)
        (let* ((_g126182126199_
                (lambda (_g126183126196_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126183126196_))))
               (_g126181126297_
                (lambda (_g126183126202_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126183126202_))
                      (let ((_e126188126204_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126183126202_))))
                        (let ((_hd126187126207_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126188126204_)))
                              (_tl126186126209_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126188126204_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126186126209_))
                              (let ((_e126191126212_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126186126209_))))
                                (let ((_hd126190126215_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126191126212_)))
                                      (_tl126189126217_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126191126212_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126189126217_))
                                      (let ((_e126194126220_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126189126217_))))
                                        (let ((_hd126193126223_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126194126220_)))
                                              (_tl126192126225_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126194126220_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126192126225_))
                                              ((lambda (_L126228_ _L126229_)
                                                 (let* ((___stx127792127793_
                                                         _L126229_)
                                                        (_g126245126256_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127792127793_)))))
                                                   (let ((___kont127794127795_
                                                          (lambda (_L126276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L126277_)
                    (let ((_$e126289_
                           (let ((__tmp129537
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L126277_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp129537))))
                      (if _$e126289_
                          ((lambda (_type-e126292_)
                             (_type-e126292_ _stx126180_ _L126229_))
                           _$e126289_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self126179_ _L126228_))))))
                 (___kont127796127797_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self126179_ _L126228_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127803127804_
                                                            (lambda (_e126251126268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd126250126271_
                             _tl126249126273_)
                      (let ((_L126276_ _tl126249126273_)
                            (_L126277_ _hd126250126271_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L126277_))
                            (___kont127794127795_ _L126276_ _L126277_)
                            (___kont127796127797_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127792127793_))
                   (let ((_e126251126268_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127792127793_))))
                     (let ((_tl126249126273_
                            (let ()
                              (declare (not safe))
                              (##cdr _e126251126268_)))
                           (_hd126250126271_
                            (let ()
                              (declare (not safe))
                              (##car _e126251126268_))))
                       (___match127803127804_
                        _e126251126268_
                        _hd126250126271_
                        _tl126249126273_)))
                   (___kont127796127797_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd126193126223_
                                               _hd126190126215_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126182126199_
                                                 _g126183126202_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126182126199_ _g126183126202_)))))
                              (let ()
                                (declare (not safe))
                                (_g126182126199_ _g126183126202_)))))
                      (let ()
                        (declare (not safe))
                        (_g126182126199_ _g126183126202_))))))
          (declare (not safe))
          (_g126181126297_ _stx126180_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx126023_ _ann126024_)
        (let* ((_g126026126063_
                (lambda (_g126027126060_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126027126060_))))
               (_g126025126176_
                (lambda (_g126027126066_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126027126066_))
                      (let ((_e126037126068_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126027126066_))))
                        (let ((_hd126036126071_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126037126068_)))
                              (_tl126035126073_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126037126068_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126035126073_))
                              (let ((_e126040126076_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126035126073_))))
                                (let ((_hd126039126079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126040126076_)))
                                      (_tl126038126081_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126040126076_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126038126081_))
                                      (let ((_e126043126084_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126038126081_))))
                                        (let ((_hd126042126087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126043126084_)))
                                              (_tl126041126089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126043126084_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126041126089_))
                                              (let ((_e126046126092_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126041126089_))))
                                                (let ((_hd126045126095_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126046126092_)))
                                                      (_tl126044126097_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126046126092_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126044126097_))
                                                      (let ((_e126049126100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126044126097_))))
                (let ((_hd126048126103_
                       (let () (declare (not safe)) (##car _e126049126100_)))
                      (_tl126047126105_
                       (let () (declare (not safe)) (##cdr _e126049126100_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl126047126105_))
                      (let ((_e126052126108_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126047126105_))))
                        (let ((_hd126051126111_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126052126108_)))
                              (_tl126050126113_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126052126108_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126050126113_))
                              (let ((_e126055126116_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126050126113_))))
                                (let ((_hd126054126119_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126055126116_)))
                                      (_tl126053126121_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126055126116_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126053126121_))
                                      (let ((_e126058126124_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126053126121_))))
                                        (let ((_hd126057126127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126058126124_)))
                                              (_tl126056126129_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126058126124_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126056126129_))
                                              ((lambda (_L126132_
                                                        _L126133_
                                                        _L126134_
                                                        _L126135_
                                                        _L126136_
                                                        _L126137_
                                                        _L126138_)
                                                 (let ((_type-id126168_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126138_)))
                                                       (_super126169_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L126137_)))
                                                       (_slots126170_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L126136_)))
                                                       (_ctor-method126171_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126135_)))
                                                       (_struct?126172_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126134_)))
                                                       (_final?126173_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126133_)))
                                                       (_metaclass126174_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L126132_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L126132_))
                                                            '#f)))
                                                   (let ((__obj129485
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
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj129485
                                                      _type-id126168_
                                                      _super126169_
                                                      _slots126170_
                                                      _ctor-method126171_
                                                      _struct?126172_
                                                      _final?126173_
                                                      _metaclass126174_)
                                                     __obj129485)))
                                               _hd126057126127_
                                               _hd126054126119_
                                               _hd126051126111_
                                               _hd126048126103_
                                               _hd126045126095_
                                               _hd126042126087_
                                               _hd126039126079_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126026126063_
                                                 _g126027126066_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126026126063_ _g126027126066_)))))
                              (let ()
                                (declare (not safe))
                                (_g126026126063_ _g126027126066_)))))
                      (let ()
                        (declare (not safe))
                        (_g126026126063_ _g126027126066_)))))
              (let ()
                (declare (not safe))
                (_g126026126063_ _g126027126066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126026126063_
                                                 _g126027126066_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126026126063_ _g126027126066_)))))
                              (let ()
                                (declare (not safe))
                                (_g126026126063_ _g126027126066_)))))
                      (let ()
                        (declare (not safe))
                        (_g126026126063_ _g126027126066_))))))
          (declare (not safe))
          (_g126025126176_ _ann126024_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125971_ _ann125972_)
        (let* ((_g125974125987_
                (lambda (_g125975125984_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125975125984_))))
               (_g125973126020_
                (lambda (_g125975125990_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125975125990_))
                      (let ((_e125979125992_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125975125990_))))
                        (let ((_hd125978125995_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125979125992_)))
                              (_tl125977125997_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125979125992_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125977125997_))
                              (let ((_e125982126000_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125977125997_))))
                                (let ((_hd125981126003_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125982126000_)))
                                      (_tl125980126005_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125982126000_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125980126005_))
                                      ((lambda (_L126008_)
                                         (let ((__tmp129538
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L126008_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp129538)))
                                       _hd125981126003_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125974125987_ _g125975125990_)))))
                              (let ()
                                (declare (not safe))
                                (_g125974125987_ _g125975125990_)))))
                      (let ()
                        (declare (not safe))
                        (_g125974125987_ _g125975125990_))))))
          (declare (not safe))
          (_g125973126020_ _ann125972_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125919_ _ann125920_)
        (let* ((_g125922125935_
                (lambda (_g125923125932_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125923125932_))))
               (_g125921125968_
                (lambda (_g125923125938_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125923125938_))
                      (let ((_e125927125940_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125923125938_))))
                        (let ((_hd125926125943_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125927125940_)))
                              (_tl125925125945_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125927125940_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125925125945_))
                              (let ((_e125930125948_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125925125945_))))
                                (let ((_hd125929125951_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125930125948_)))
                                      (_tl125928125953_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125930125948_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125928125953_))
                                      ((lambda (_L125956_)
                                         (let ((__tmp129539
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125956_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp129539)))
                                       _hd125929125951_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125922125935_ _g125923125938_)))))
                              (let ()
                                (declare (not safe))
                                (_g125922125935_ _g125923125938_)))))
                      (let ()
                        (declare (not safe))
                        (_g125922125935_ _g125923125938_))))))
          (declare (not safe))
          (_g125921125968_ _ann125920_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125835_ _ann125836_)
        (let* ((_g125838125859_
                (lambda (_g125839125856_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125839125856_))))
               (_g125837125916_
                (lambda (_g125839125862_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125839125862_))
                      (let ((_e125845125864_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125839125862_))))
                        (let ((_hd125844125867_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125845125864_)))
                              (_tl125843125869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125845125864_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125843125869_))
                              (let ((_e125848125872_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125843125869_))))
                                (let ((_hd125847125875_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125848125872_)))
                                      (_tl125846125877_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125848125872_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125846125877_))
                                      (let ((_e125851125880_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125846125877_))))
                                        (let ((_hd125850125883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125851125880_)))
                                              (_tl125849125885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125851125880_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125849125885_))
                                              (let ((_e125854125888_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125849125885_))))
                                                (let ((_hd125853125891_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125854125888_)))
                                                      (_tl125852125893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125854125888_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125852125893_))
                                                      ((lambda (_L125896_
                                                                _L125897_
                                                                _L125898_)
                                                         (let ((__tmp129542
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125898_)))
                       (__tmp129541
                        (let () (declare (not safe)) (gx#stx-e _L125897_)))
                       (__tmp129540
                        (let () (declare (not safe)) (gx#stx-e _L125896_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp129542
                    __tmp129541
                    __tmp129540)))
               _hd125853125891_
               _hd125850125883_
               _hd125847125875_)
              (let ()
                (declare (not safe))
                (_g125838125859_ _g125839125862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125838125859_
                                                 _g125839125862_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125838125859_ _g125839125862_)))))
                              (let ()
                                (declare (not safe))
                                (_g125838125859_ _g125839125862_)))))
                      (let ()
                        (declare (not safe))
                        (_g125838125859_ _g125839125862_))))))
          (declare (not safe))
          (_g125837125916_ _ann125836_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125751_ _ann125752_)
        (let* ((_g125754125775_
                (lambda (_g125755125772_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125755125772_))))
               (_g125753125832_
                (lambda (_g125755125778_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125755125778_))
                      (let ((_e125761125780_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125755125778_))))
                        (let ((_hd125760125783_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125761125780_)))
                              (_tl125759125785_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125761125780_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125759125785_))
                              (let ((_e125764125788_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125759125785_))))
                                (let ((_hd125763125791_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125764125788_)))
                                      (_tl125762125793_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125764125788_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125762125793_))
                                      (let ((_e125767125796_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125762125793_))))
                                        (let ((_hd125766125799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125767125796_)))
                                              (_tl125765125801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125767125796_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125765125801_))
                                              (let ((_e125770125804_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125765125801_))))
                                                (let ((_hd125769125807_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125770125804_)))
                                                      (_tl125768125809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125770125804_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125768125809_))
                                                      ((lambda (_L125812_
                                                                _L125813_
                                                                _L125814_)
                                                         (let ((__tmp129545
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125814_)))
                       (__tmp129544
                        (let () (declare (not safe)) (gx#stx-e _L125813_)))
                       (__tmp129543
                        (let () (declare (not safe)) (gx#stx-e _L125812_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp129545
                    __tmp129544
                    __tmp129543)))
               _hd125769125807_
               _hd125766125799_
               _hd125763125791_)
              (let ()
                (declare (not safe))
                (_g125754125775_ _g125755125778_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125754125775_
                                                 _g125755125778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125754125775_ _g125755125778_)))))
                              (let ()
                                (declare (not safe))
                                (_g125754125775_ _g125755125778_)))))
                      (let ()
                        (declare (not safe))
                        (_g125754125775_ _g125755125778_))))))
          (declare (not safe))
          (_g125753125832_ _ann125752_))))
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
    (define gxc#basic-expression-type-lambda%
      (lambda (_self124870_ _stx124871_)
        (let* ((___stx127806127807_ _stx124871_)
               (_g124877125073_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127806127807_)))))
          (let ((___kont127808127809_
                 (lambda (_L125739_)
                   (let ((__obj129486
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129486
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125739_))
                      '#f)
                     __obj129486)))
                (___kont127810127811_
                 (lambda (_L125666_
                          _L125667_
                          _L125668_
                          _L125669_
                          _L125670_
                          _L125671_)
                   (let* ((_tab125721_
                           (let () (declare (not safe)) (gx#stx-e _L125668_)))
                          (_keys125723_
                           (if _tab125721_
                               (filter values (vector->list _tab125721_))
                               '#f)))
                     (let ((__tmp129546
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L125667_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125723_
                        __tmp129546)))))
                (___kont127812127813_
                 (lambda (_L125399_
                          _L125400_
                          _L125401_
                          _L125402_
                          _L125403_
                          _L125404_
                          _L125405_
                          _L125406_
                          _L125407_
                          _L125408_)
                   (let ((__tmp129548
                          (map gx#stx-e
                               (let ((__tmp129549
                                      (lambda (_g125501125504_ _g125502125506_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g125501125504_
                                                _g125502125506_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp129549 '() _L125401_))))
                         (__tmp129547
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125405_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp129548
                      __tmp129547))))
                (___kont127816127817_
                 (lambda (_L125109_)
                   (let ((__obj129487
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129487
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125109_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L125109_)))
                     __obj129487)))
                (___kont127818127819_
                 (lambda (_L125086_)
                   (let ((__obj129488
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129488
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125086_))
                      '#f)
                     __obj129488))))
            (let* ((___match128125128126_
                    (lambda (_e125064125101_ _hd125063125104_ _tl125062125106_)
                      (let ((_L125109_ _tl125062125106_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L125109_))
                            (___kont127816127817_ _L125109_)
                            (___kont127818127819_ _tl125062125106_)))))
                   (___match128119128120_
                    (lambda (_e124958125123_
                             _hd124957125126_
                             _tl124956125128_
                             _e124961125131_
                             _hd124960125134_
                             _tl124959125136_
                             _e124964125139_
                             _hd124963125142_
                             _tl124962125144_
                             _e124967125147_
                             _hd124966125150_
                             _tl124965125152_
                             _e124970125155_
                             _hd124969125158_
                             _tl124968125160_
                             _e124973125163_
                             _hd124972125166_
                             _tl124971125168_
                             _e124976125171_
                             _hd124975125174_
                             _tl124974125176_
                             _e124979125179_
                             _hd124978125182_
                             _tl124977125184_
                             _e124982125187_
                             _hd124981125190_
                             _tl124980125192_
                             _e124985125195_
                             _hd124984125198_
                             _tl124983125200_
                             _e124988125203_
                             _hd124987125206_
                             _tl124986125208_
                             _e124991125211_
                             _hd124990125214_
                             _tl124989125216_
                             _e124994125219_
                             _hd124993125222_
                             _tl124992125224_
                             _e124997125227_
                             _hd124996125230_
                             _tl124995125232_
                             ___splice127814127815_
                             _target124998125235_
                             _tl125000125237_
                             _e125015125240_
                             _hd125014125243_
                             _tl125013125245_
                             _e125018125248_
                             _hd125017125251_
                             _tl125016125253_
                             _e125021125256_
                             _hd125020125259_
                             _tl125019125261_)
                      (letrec ((_loop125001125264_
                                (lambda (_hd124999125267_
                                         _-absent-value125005125269_
                                         _key125006125271_
                                         _-xkwvar125007125273_
                                         _-hash-ref125008125275_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124999125267_))
                                      (let ((_e125002125278_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124999125267_))))
                                        (let ((_lp-tl125004125283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125002125278_)))
                                              (_lp-hd125003125281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125002125278_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd125003125281_))
                                              (let ((_e125024125286_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd125003125281_))))
                                                (let ((_tl125022125291_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125024125286_)))
                                                      (_hd125023125289_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125024125286_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd125023125289_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd125023125289_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125022125291_))
                      (let ((_e125027125294_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125022125291_))))
                        (let ((_tl125025125299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125027125294_)))
                              (_hd125026125297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125027125294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125026125297_))
                              (let ((_e125030125302_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125026125297_))))
                                (let ((_tl125028125307_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125030125302_)))
                                      (_hd125029125305_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125030125302_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125029125305_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125029125305_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125028125307_))
                                              (let ((_e125033125310_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125028125307_))))
                                                (let ((_tl125031125315_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125033125310_)))
                                                      (_hd125032125313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125033125310_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125031125315_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125025125299_))
                                                          (let ((_e125036125318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125025125299_))))
                    (let ((_tl125034125323_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125036125318_)))
                          (_hd125035125321_
                           (let ()
                             (declare (not safe))
                             (##car _e125036125318_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125035125321_))
                          (let ((_e125039125326_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125035125321_))))
                            (let ((_tl125037125331_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125039125326_)))
                                  (_hd125038125329_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125039125326_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125038125329_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125038125329_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125037125331_))
                                          (let ((_e125042125334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125037125331_))))
                                            (let ((_tl125040125339_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125042125334_)))
                                                  (_hd125041125337_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125042125334_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125040125339_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125034125323_))
                                                      (let ((_e125045125342_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125034125323_))))
                (let ((_tl125043125347_
                       (let () (declare (not safe)) (##cdr _e125045125342_)))
                      (_hd125044125345_
                       (let () (declare (not safe)) (##car _e125045125342_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125044125345_))
                      (let ((_e125048125350_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125044125345_))))
                        (let ((_tl125046125355_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125048125350_)))
                              (_hd125047125353_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125048125350_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125047125353_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd125047125353_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125046125355_))
                                      (let ((_e125051125358_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125046125355_))))
                                        (let ((_tl125049125363_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125051125358_)))
                                              (_hd125050125361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125051125358_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125049125363_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125043125347_))
                                                  (let ((_e125054125366_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125043125347_))))
                                                    (let ((_tl125052125371_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125054125366_)))
                                                          (_hd125053125369_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125054125366_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125053125369_))
                                                          (let ((_e125057125374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125053125369_))))
                    (let ((_tl125055125379_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125057125374_)))
                          (_hd125056125377_
                           (let ()
                             (declare (not safe))
                             (##car _e125057125374_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125056125377_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125056125377_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125055125379_))
                                  (let ((_e125060125382_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125055125379_))))
                                    (let ((_tl125058125387_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125060125382_)))
                                          (_hd125059125385_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125060125382_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125058125387_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125052125371_))
                                              (let ((__tmp129564
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125059125385_
                                                             _-absent-value125005125269_)))
                                                    (__tmp129563
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125050125361_
                                                             _key125006125271_)))
                                                    (__tmp129562
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125041125337_
                                                             _-xkwvar125007125273_)))
                                                    (__tmp129561
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd125032125313_
                                                             _-hash-ref125008125275_))))
                                                (declare (not safe))
                                                (_loop125001125264_
                                                 _lp-tl125004125283_
                                                 __tmp129564
                                                 __tmp129563
                                                 __tmp129562
                                                 __tmp129561))
                                              (___match128125128126_
                                               _e124958125123_
                                               _hd124957125126_
                                               _tl124956125128_))
                                          (___match128125128126_
                                           _e124958125123_
                                           _hd124957125126_
                                           _tl124956125128_))))
                                  (___match128125128126_
                                   _e124958125123_
                                   _hd124957125126_
                                   _tl124956125128_))
                              (___match128125128126_
                               _e124958125123_
                               _hd124957125126_
                               _tl124956125128_))
                          (___match128125128126_
                           _e124958125123_
                           _hd124957125126_
                           _tl124956125128_))))
                  (___match128125128126_
                   _e124958125123_
                   _hd124957125126_
                   _tl124956125128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128125128126_
                                                   _e124958125123_
                                                   _hd124957125126_
                                                   _tl124956125128_))
                                              (___match128125128126_
                                               _e124958125123_
                                               _hd124957125126_
                                               _tl124956125128_))))
                                      (___match128125128126_
                                       _e124958125123_
                                       _hd124957125126_
                                       _tl124956125128_))
                                  (___match128125128126_
                                   _e124958125123_
                                   _hd124957125126_
                                   _tl124956125128_))
                              (___match128125128126_
                               _e124958125123_
                               _hd124957125126_
                               _tl124956125128_))))
                      (___match128125128126_
                       _e124958125123_
                       _hd124957125126_
                       _tl124956125128_))))
              (___match128125128126_
               _e124958125123_
               _hd124957125126_
               _tl124956125128_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128125128126_
                                                   _e124958125123_
                                                   _hd124957125126_
                                                   _tl124956125128_))))
                                          (___match128125128126_
                                           _e124958125123_
                                           _hd124957125126_
                                           _tl124956125128_))
                                      (___match128125128126_
                                       _e124958125123_
                                       _hd124957125126_
                                       _tl124956125128_))
                                  (___match128125128126_
                                   _e124958125123_
                                   _hd124957125126_
                                   _tl124956125128_))))
                          (___match128125128126_
                           _e124958125123_
                           _hd124957125126_
                           _tl124956125128_))))
                  (___match128125128126_
                   _e124958125123_
                   _hd124957125126_
                   _tl124956125128_))
              (___match128125128126_
               _e124958125123_
               _hd124957125126_
               _tl124956125128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128125128126_
                                               _e124958125123_
                                               _hd124957125126_
                                               _tl124956125128_))
                                          (___match128125128126_
                                           _e124958125123_
                                           _hd124957125126_
                                           _tl124956125128_))
                                      (___match128125128126_
                                       _e124958125123_
                                       _hd124957125126_
                                       _tl124956125128_))))
                              (___match128125128126_
                               _e124958125123_
                               _hd124957125126_
                               _tl124956125128_))))
                      (___match128125128126_
                       _e124958125123_
                       _hd124957125126_
                       _tl124956125128_))
                  (___match128125128126_
                   _e124958125123_
                   _hd124957125126_
                   _tl124956125128_))
              (___match128125128126_
               _e124958125123_
               _hd124957125126_
               _tl124956125128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128125128126_
                                               _e124958125123_
                                               _hd124957125126_
                                               _tl124956125128_))))
                                      (let ((_-hash-ref125012125396_
                                             (reverse _-hash-ref125008125275_))
                                            (_-xkwvar125011125394_
                                             (reverse _-xkwvar125007125273_))
                                            (_key125010125392_
                                             (reverse _key125006125271_))
                                            (_-absent-value125009125390_
                                             (reverse _-absent-value125005125269_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124965125152_))
                                            (let ((_L125399_ _hd125020125259_)
                                                  (_L125400_
                                                   _-absent-value125009125390_)
                                                  (_L125401_ _key125010125392_)
                                                  (_L125402_
                                                   _-xkwvar125011125394_)
                                                  (_L125403_
                                                   _-hash-ref125012125396_)
                                                  (_L125404_ _hd124996125230_)
                                                  (_L125405_ _hd124987125206_)
                                                  (_L125406_ _hd124978125182_)
                                                  (_L125407_ _tl124962125144_)
                                                  (_L125408_ _hd124963125142_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L125408_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L125407_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L125406_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L125408_
                                                          _L125404_))
                                                       (let ((__tmp129559
                                                              (let ((__tmp129560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g125461125464_ _g125462125466_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125461125464_ _g125462125466_)))))
                        (declare (not safe))
                        (foldr1 __tmp129560 '() _L125401_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp129559))
               (let ((__tmp129558
                      (lambda (_g125468125470_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g125468125470_
                           'hash-ref))))
                     (__tmp129556
                      (let ((__tmp129557
                             (lambda (_g125472125475_ _g125473125477_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125472125475_ _g125473125477_)))))
                        (declare (not safe))
                        (foldr1 __tmp129557 '() _L125403_))))
                 (declare (not safe))
                 (andmap1 __tmp129558 __tmp129556))
               (let ((__tmp129555
                      (lambda (_g125479125481_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g125479125481_
                           'absent-value))))
                     (__tmp129553
                      (let ((__tmp129554
                             (lambda (_g125483125486_ _g125484125488_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125483125486_ _g125484125488_)))))
                        (declare (not safe))
                        (foldr1 __tmp129554 '() _L125400_))))
                 (declare (not safe))
                 (andmap1 __tmp129555 __tmp129553))
               (let ((__tmp129552
                      (lambda (_g125490125492_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g125490125492_ _L125408_))))
                     (__tmp129550
                      (let ((__tmp129551
                             (lambda (_g125494125497_ _g125495125499_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125494125497_ _g125495125499_)))))
                        (declare (not safe))
                        (foldr1 __tmp129551 '() _L125402_))))
                 (declare (not safe))
                 (andmap1 __tmp129552 __tmp129550)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127812127813_
                                                   _L125399_
                                                   _L125400_
                                                   _L125401_
                                                   _L125402_
                                                   _L125403_
                                                   _L125404_
                                                   _L125405_
                                                   _L125406_
                                                   _L125407_
                                                   _L125408_)
                                                  (___match128125128126_
                                                   _e124958125123_
                                                   _hd124957125126_
                                                   _tl124956125128_)))
                                            (___match128125128126_
                                             _e124958125123_
                                             _hd124957125126_
                                             _tl124956125128_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop125001125264_
                           _target124998125235_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127991127992_
                    (lambda (_e124958125123_
                             _hd124957125126_
                             _tl124956125128_
                             _e124961125131_
                             _hd124960125134_
                             _tl124959125136_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124960125134_))
                          (let ((_e124964125139_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124960125134_))))
                            (let ((_tl124962125144_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124964125139_)))
                                  (_hd124963125142_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124964125139_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124959125136_))
                                  (let ((_e124967125147_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124959125136_))))
                                    (let ((_tl124965125152_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124967125147_)))
                                          (_hd124966125150_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124967125147_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124966125150_))
                                          (let ((_e124970125155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124966125150_))))
                                            (let ((_tl124968125160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124970125155_)))
                                                  (_hd124969125158_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124970125155_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124969125158_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124969125158_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124968125160_))
                                                          (let ((_e124973125163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124968125160_))))
                    (let ((_tl124971125168_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124973125163_)))
                          (_hd124972125166_
                           (let ()
                             (declare (not safe))
                             (##car _e124973125163_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124972125166_))
                          (let ((_e124976125171_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124972125166_))))
                            (let ((_tl124974125176_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124976125171_)))
                                  (_hd124975125174_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124976125171_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124975125174_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124975125174_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124974125176_))
                                          (let ((_e124979125179_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124974125176_))))
                                            (let ((_tl124977125184_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124979125179_)))
                                                  (_hd124978125182_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124979125179_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124977125184_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124971125168_))
                                                      (let ((_e124982125187_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124971125168_))))
                (let ((_tl124980125192_
                       (let () (declare (not safe)) (##cdr _e124982125187_)))
                      (_hd124981125190_
                       (let () (declare (not safe)) (##car _e124982125187_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124981125190_))
                      (let ((_e124985125195_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124981125190_))))
                        (let ((_tl124983125200_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124985125195_)))
                              (_hd124984125198_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124985125195_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124984125198_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124984125198_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124983125200_))
                                      (let ((_e124988125203_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124983125200_))))
                                        (let ((_tl124986125208_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124988125203_)))
                                              (_hd124987125206_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124988125203_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124986125208_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124980125192_))
                                                  (let ((_e124991125211_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124980125192_))))
                                                    (let ((_tl124989125216_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124991125211_)))
                                                          (_hd124990125214_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124991125211_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124990125214_))
                                                          (let ((_e124994125219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124990125214_))))
                    (let ((_tl124992125224_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124994125219_)))
                          (_hd124993125222_
                           (let ()
                             (declare (not safe))
                             (##car _e124994125219_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124993125222_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124993125222_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124992125224_))
                                  (let ((_e124997125227_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124992125224_))))
                                    (let ((_tl124995125232_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124997125227_)))
                                          (_hd124996125230_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124997125227_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124995125232_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124989125216_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124989125216_))
                                                        '1)
                                                  (let ((___splice127814127815_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124989125216_
                                                            '1))))
                                                    (let ((_tl125000125237_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127814127815_
                                                              '1)))
                                                          (_target124998125235_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127814127815_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125000125237_))
                                                          (let ((_e125015125240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125000125237_))))
                    (let ((_tl125013125245_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125015125240_)))
                          (_hd125014125243_
                           (let ()
                             (declare (not safe))
                             (##car _e125015125240_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125014125243_))
                          (let ((_e125018125248_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125014125243_))))
                            (let ((_tl125016125253_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125018125248_)))
                                  (_hd125017125251_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125018125248_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125017125251_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125017125251_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125016125253_))
                                          (let ((_e125021125256_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125016125253_))))
                                            (let ((_tl125019125261_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125021125256_)))
                                                  (_hd125020125259_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125021125256_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125019125261_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125013125245_))
                                                      (___match128119128120_
                                                       _e124958125123_
                                                       _hd124957125126_
                                                       _tl124956125128_
                                                       _e124961125131_
                                                       _hd124960125134_
                                                       _tl124959125136_
                                                       _e124964125139_
                                                       _hd124963125142_
                                                       _tl124962125144_
                                                       _e124967125147_
                                                       _hd124966125150_
                                                       _tl124965125152_
                                                       _e124970125155_
                                                       _hd124969125158_
                                                       _tl124968125160_
                                                       _e124973125163_
                                                       _hd124972125166_
                                                       _tl124971125168_
                                                       _e124976125171_
                                                       _hd124975125174_
                                                       _tl124974125176_
                                                       _e124979125179_
                                                       _hd124978125182_
                                                       _tl124977125184_
                                                       _e124982125187_
                                                       _hd124981125190_
                                                       _tl124980125192_
                                                       _e124985125195_
                                                       _hd124984125198_
                                                       _tl124983125200_
                                                       _e124988125203_
                                                       _hd124987125206_
                                                       _tl124986125208_
                                                       _e124991125211_
                                                       _hd124990125214_
                                                       _tl124989125216_
                                                       _e124994125219_
                                                       _hd124993125222_
                                                       _tl124992125224_
                                                       _e124997125227_
                                                       _hd124996125230_
                                                       _tl124995125232_
                                                       ___splice127814127815_
                                                       _target124998125235_
                                                       _tl125000125237_
                                                       _e125015125240_
                                                       _hd125014125243_
                                                       _tl125013125245_
                                                       _e125018125248_
                                                       _hd125017125251_
                                                       _tl125016125253_
                                                       _e125021125256_
                                                       _hd125020125259_
                                                       _tl125019125261_)
                                                      (___match128125128126_
                                                       _e124958125123_
                                                       _hd124957125126_
                                                       _tl124956125128_))
                                                  (___match128125128126_
                                                   _e124958125123_
                                                   _hd124957125126_
                                                   _tl124956125128_))))
                                          (___match128125128126_
                                           _e124958125123_
                                           _hd124957125126_
                                           _tl124956125128_))
                                      (___match128125128126_
                                       _e124958125123_
                                       _hd124957125126_
                                       _tl124956125128_))
                                  (___match128125128126_
                                   _e124958125123_
                                   _hd124957125126_
                                   _tl124956125128_))))
                          (___match128125128126_
                           _e124958125123_
                           _hd124957125126_
                           _tl124956125128_))))
                  (___match128125128126_
                   _e124958125123_
                   _hd124957125126_
                   _tl124956125128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128125128126_
                                                   _e124958125123_
                                                   _hd124957125126_
                                                   _tl124956125128_))
                                              (___match128125128126_
                                               _e124958125123_
                                               _hd124957125126_
                                               _tl124956125128_))
                                          (___match128125128126_
                                           _e124958125123_
                                           _hd124957125126_
                                           _tl124956125128_))))
                                  (___match128125128126_
                                   _e124958125123_
                                   _hd124957125126_
                                   _tl124956125128_))
                              (___match128125128126_
                               _e124958125123_
                               _hd124957125126_
                               _tl124956125128_))
                          (___match128125128126_
                           _e124958125123_
                           _hd124957125126_
                           _tl124956125128_))))
                  (___match128125128126_
                   _e124958125123_
                   _hd124957125126_
                   _tl124956125128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128125128126_
                                                   _e124958125123_
                                                   _hd124957125126_
                                                   _tl124956125128_))
                                              (___match128125128126_
                                               _e124958125123_
                                               _hd124957125126_
                                               _tl124956125128_))))
                                      (___match128125128126_
                                       _e124958125123_
                                       _hd124957125126_
                                       _tl124956125128_))
                                  (___match128125128126_
                                   _e124958125123_
                                   _hd124957125126_
                                   _tl124956125128_))
                              (___match128125128126_
                               _e124958125123_
                               _hd124957125126_
                               _tl124956125128_))))
                      (___match128125128126_
                       _e124958125123_
                       _hd124957125126_
                       _tl124956125128_))))
              (___match128125128126_
               _e124958125123_
               _hd124957125126_
               _tl124956125128_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128125128126_
                                                   _e124958125123_
                                                   _hd124957125126_
                                                   _tl124956125128_))))
                                          (___match128125128126_
                                           _e124958125123_
                                           _hd124957125126_
                                           _tl124956125128_))
                                      (___match128125128126_
                                       _e124958125123_
                                       _hd124957125126_
                                       _tl124956125128_))
                                  (___match128125128126_
                                   _e124958125123_
                                   _hd124957125126_
                                   _tl124956125128_))))
                          (___match128125128126_
                           _e124958125123_
                           _hd124957125126_
                           _tl124956125128_))))
                  (___match128125128126_
                   _e124958125123_
                   _hd124957125126_
                   _tl124956125128_))
              (___match128125128126_
               _e124958125123_
               _hd124957125126_
               _tl124956125128_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128125128126_
                                                   _e124958125123_
                                                   _hd124957125126_
                                                   _tl124956125128_))))
                                          (___match128125128126_
                                           _e124958125123_
                                           _hd124957125126_
                                           _tl124956125128_))))
                                  (___match128125128126_
                                   _e124958125123_
                                   _hd124957125126_
                                   _tl124956125128_))))
                          (___match128125128126_
                           _e124958125123_
                           _hd124957125126_
                           _tl124956125128_))))
                   (___match127979127980_
                    (lambda (_e124891125514_
                             _hd124890125517_
                             _tl124889125519_
                             _e124894125522_
                             _hd124893125525_
                             _tl124892125527_
                             _e124897125530_
                             _hd124896125533_
                             _tl124895125535_
                             _e124900125538_
                             _hd124899125541_
                             _tl124898125543_
                             _e124903125546_
                             _hd124902125549_
                             _tl124901125551_
                             _e124906125554_
                             _hd124905125557_
                             _tl124904125559_
                             _e124909125562_
                             _hd124908125565_
                             _tl124907125567_
                             _e124912125570_
                             _hd124911125573_
                             _tl124910125575_
                             _e124915125578_
                             _hd124914125581_
                             _tl124913125583_
                             _e124918125586_
                             _hd124917125589_
                             _tl124916125591_
                             _e124921125594_
                             _hd124920125597_
                             _tl124919125599_
                             _e124924125602_
                             _hd124923125605_
                             _tl124922125607_
                             _e124927125610_
                             _hd124926125613_
                             _tl124925125615_
                             _e124930125618_
                             _hd124929125621_
                             _tl124928125623_
                             _e124933125626_
                             _hd124932125629_
                             _tl124931125631_
                             _e124936125634_
                             _hd124935125637_
                             _tl124934125639_
                             _e124939125642_
                             _hd124938125645_
                             _tl124937125647_
                             _e124942125650_
                             _hd124941125653_
                             _tl124940125655_
                             _e124945125658_
                             _hd124944125661_
                             _tl124943125663_)
                      (let ((_L125666_ _hd124944125661_)
                            (_L125667_ _hd124935125637_)
                            (_L125668_ _hd124926125613_)
                            (_L125669_ _hd124917125589_)
                            (_L125670_ _hd124908125565_)
                            (_L125671_ _hd124893125525_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125671_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125670_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L125669_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125671_ _L125666_)))
                            (___kont127810127811_
                             _L125666_
                             _L125667_
                             _L125668_
                             _L125669_
                             _L125670_
                             _L125671_)
                            (___match127991127992_
                             _e124891125514_
                             _hd124890125517_
                             _tl124889125519_
                             _e124894125522_
                             _hd124893125525_
                             _tl124892125527_)))))
                   (___match127833127834_
                    (lambda (_e124891125514_ _hd124890125517_ _tl124889125519_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124889125519_))
                          (let ((_e124894125522_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124889125519_))))
                            (let ((_tl124892125527_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124894125522_)))
                                  (_hd124893125525_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124894125522_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124892125527_))
                                  (let ((_e124897125530_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124892125527_))))
                                    (let ((_tl124895125535_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124897125530_)))
                                          (_hd124896125533_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124897125530_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124896125533_))
                                          (let ((_e124900125538_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124896125533_))))
                                            (let ((_tl124898125543_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124900125538_)))
                                                  (_hd124899125541_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124900125538_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124899125541_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124899125541_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124898125543_))
                                                          (let ((_e124903125546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124898125543_))))
                    (let ((_tl124901125551_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124903125546_)))
                          (_hd124902125549_
                           (let ()
                             (declare (not safe))
                             (##car _e124903125546_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124902125549_))
                          (let ((_e124906125554_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124902125549_))))
                            (let ((_tl124904125559_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124906125554_)))
                                  (_hd124905125557_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124906125554_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124905125557_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124905125557_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124904125559_))
                                          (let ((_e124909125562_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124904125559_))))
                                            (let ((_tl124907125567_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124909125562_)))
                                                  (_hd124908125565_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124909125562_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124907125567_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124901125551_))
                                                      (let ((_e124912125570_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124901125551_))))
                (let ((_tl124910125575_
                       (let () (declare (not safe)) (##cdr _e124912125570_)))
                      (_hd124911125573_
                       (let () (declare (not safe)) (##car _e124912125570_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124911125573_))
                      (let ((_e124915125578_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124911125573_))))
                        (let ((_tl124913125583_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124915125578_)))
                              (_hd124914125581_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124915125578_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124914125581_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124914125581_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124913125583_))
                                      (let ((_e124918125586_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124913125583_))))
                                        (let ((_tl124916125591_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124918125586_)))
                                              (_hd124917125589_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124918125586_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124916125591_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124910125575_))
                                                  (let ((_e124921125594_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124910125575_))))
                                                    (let ((_tl124919125599_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124921125594_)))
                                                          (_hd124920125597_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124921125594_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124920125597_))
                                                          (let ((_e124924125602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124920125597_))))
                    (let ((_tl124922125607_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124924125602_)))
                          (_hd124923125605_
                           (let ()
                             (declare (not safe))
                             (##car _e124924125602_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124923125605_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124923125605_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124922125607_))
                                  (let ((_e124927125610_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124922125607_))))
                                    (let ((_tl124925125615_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124927125610_)))
                                          (_hd124926125613_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124927125610_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124925125615_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124919125599_))
                                              (let ((_e124930125618_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124919125599_))))
                                                (let ((_tl124928125623_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124930125618_)))
                                                      (_hd124929125621_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124930125618_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124929125621_))
                                                      (let ((_e124933125626_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124929125621_))))
                (let ((_tl124931125631_
                       (let () (declare (not safe)) (##cdr _e124933125626_)))
                      (_hd124932125629_
                       (let () (declare (not safe)) (##car _e124933125626_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124932125629_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124932125629_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124931125631_))
                              (let ((_e124936125634_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124931125631_))))
                                (let ((_tl124934125639_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124936125634_)))
                                      (_hd124935125637_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124936125634_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124934125639_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124928125623_))
                                          (let ((_e124939125642_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124928125623_))))
                                            (let ((_tl124937125647_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124939125642_)))
                                                  (_hd124938125645_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124939125642_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124938125645_))
                                                  (let ((_e124942125650_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124938125645_))))
                                                    (let ((_tl124940125655_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124942125650_)))
                                                          (_hd124941125653_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124942125650_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124941125653_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124941125653_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124940125655_))
                          (let ((_e124945125658_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124940125655_))))
                            (let ((_tl124943125663_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124945125658_)))
                                  (_hd124944125661_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124945125658_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124943125663_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124937125647_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124895125535_))
                                          (___match127979127980_
                                           _e124891125514_
                                           _hd124890125517_
                                           _tl124889125519_
                                           _e124894125522_
                                           _hd124893125525_
                                           _tl124892125527_
                                           _e124897125530_
                                           _hd124896125533_
                                           _tl124895125535_
                                           _e124900125538_
                                           _hd124899125541_
                                           _tl124898125543_
                                           _e124903125546_
                                           _hd124902125549_
                                           _tl124901125551_
                                           _e124906125554_
                                           _hd124905125557_
                                           _tl124904125559_
                                           _e124909125562_
                                           _hd124908125565_
                                           _tl124907125567_
                                           _e124912125570_
                                           _hd124911125573_
                                           _tl124910125575_
                                           _e124915125578_
                                           _hd124914125581_
                                           _tl124913125583_
                                           _e124918125586_
                                           _hd124917125589_
                                           _tl124916125591_
                                           _e124921125594_
                                           _hd124920125597_
                                           _tl124919125599_
                                           _e124924125602_
                                           _hd124923125605_
                                           _tl124922125607_
                                           _e124927125610_
                                           _hd124926125613_
                                           _tl124925125615_
                                           _e124930125618_
                                           _hd124929125621_
                                           _tl124928125623_
                                           _e124933125626_
                                           _hd124932125629_
                                           _tl124931125631_
                                           _e124936125634_
                                           _hd124935125637_
                                           _tl124934125639_
                                           _e124939125642_
                                           _hd124938125645_
                                           _tl124937125647_
                                           _e124942125650_
                                           _hd124941125653_
                                           _tl124940125655_
                                           _e124945125658_
                                           _hd124944125661_
                                           _tl124943125663_)
                                          (___match127991127992_
                                           _e124891125514_
                                           _hd124890125517_
                                           _tl124889125519_
                                           _e124894125522_
                                           _hd124893125525_
                                           _tl124892125527_))
                                      (___match127991127992_
                                       _e124891125514_
                                       _hd124890125517_
                                       _tl124889125519_
                                       _e124894125522_
                                       _hd124893125525_
                                       _tl124892125527_))
                                  (___match127991127992_
                                   _e124891125514_
                                   _hd124890125517_
                                   _tl124889125519_
                                   _e124894125522_
                                   _hd124893125525_
                                   _tl124892125527_))))
                          (___match127991127992_
                           _e124891125514_
                           _hd124890125517_
                           _tl124889125519_
                           _e124894125522_
                           _hd124893125525_
                           _tl124892125527_))
                      (___match127991127992_
                       _e124891125514_
                       _hd124890125517_
                       _tl124889125519_
                       _e124894125522_
                       _hd124893125525_
                       _tl124892125527_))
                  (___match127991127992_
                   _e124891125514_
                   _hd124890125517_
                   _tl124889125519_
                   _e124894125522_
                   _hd124893125525_
                   _tl124892125527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127991127992_
                                                   _e124891125514_
                                                   _hd124890125517_
                                                   _tl124889125519_
                                                   _e124894125522_
                                                   _hd124893125525_
                                                   _tl124892125527_))))
                                          (___match127991127992_
                                           _e124891125514_
                                           _hd124890125517_
                                           _tl124889125519_
                                           _e124894125522_
                                           _hd124893125525_
                                           _tl124892125527_))
                                      (___match127991127992_
                                       _e124891125514_
                                       _hd124890125517_
                                       _tl124889125519_
                                       _e124894125522_
                                       _hd124893125525_
                                       _tl124892125527_))))
                              (___match127991127992_
                               _e124891125514_
                               _hd124890125517_
                               _tl124889125519_
                               _e124894125522_
                               _hd124893125525_
                               _tl124892125527_))
                          (___match127991127992_
                           _e124891125514_
                           _hd124890125517_
                           _tl124889125519_
                           _e124894125522_
                           _hd124893125525_
                           _tl124892125527_))
                      (___match127991127992_
                       _e124891125514_
                       _hd124890125517_
                       _tl124889125519_
                       _e124894125522_
                       _hd124893125525_
                       _tl124892125527_))))
              (___match127991127992_
               _e124891125514_
               _hd124890125517_
               _tl124889125519_
               _e124894125522_
               _hd124893125525_
               _tl124892125527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127991127992_
                                               _e124891125514_
                                               _hd124890125517_
                                               _tl124889125519_
                                               _e124894125522_
                                               _hd124893125525_
                                               _tl124892125527_))
                                          (___match127991127992_
                                           _e124891125514_
                                           _hd124890125517_
                                           _tl124889125519_
                                           _e124894125522_
                                           _hd124893125525_
                                           _tl124892125527_))))
                                  (___match127991127992_
                                   _e124891125514_
                                   _hd124890125517_
                                   _tl124889125519_
                                   _e124894125522_
                                   _hd124893125525_
                                   _tl124892125527_))
                              (___match127991127992_
                               _e124891125514_
                               _hd124890125517_
                               _tl124889125519_
                               _e124894125522_
                               _hd124893125525_
                               _tl124892125527_))
                          (___match127991127992_
                           _e124891125514_
                           _hd124890125517_
                           _tl124889125519_
                           _e124894125522_
                           _hd124893125525_
                           _tl124892125527_))))
                  (___match127991127992_
                   _e124891125514_
                   _hd124890125517_
                   _tl124889125519_
                   _e124894125522_
                   _hd124893125525_
                   _tl124892125527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127991127992_
                                                   _e124891125514_
                                                   _hd124890125517_
                                                   _tl124889125519_
                                                   _e124894125522_
                                                   _hd124893125525_
                                                   _tl124892125527_))
                                              (___match127991127992_
                                               _e124891125514_
                                               _hd124890125517_
                                               _tl124889125519_
                                               _e124894125522_
                                               _hd124893125525_
                                               _tl124892125527_))))
                                      (___match127991127992_
                                       _e124891125514_
                                       _hd124890125517_
                                       _tl124889125519_
                                       _e124894125522_
                                       _hd124893125525_
                                       _tl124892125527_))
                                  (___match127991127992_
                                   _e124891125514_
                                   _hd124890125517_
                                   _tl124889125519_
                                   _e124894125522_
                                   _hd124893125525_
                                   _tl124892125527_))
                              (___match127991127992_
                               _e124891125514_
                               _hd124890125517_
                               _tl124889125519_
                               _e124894125522_
                               _hd124893125525_
                               _tl124892125527_))))
                      (___match127991127992_
                       _e124891125514_
                       _hd124890125517_
                       _tl124889125519_
                       _e124894125522_
                       _hd124893125525_
                       _tl124892125527_))))
              (___match127991127992_
               _e124891125514_
               _hd124890125517_
               _tl124889125519_
               _e124894125522_
               _hd124893125525_
               _tl124892125527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127991127992_
                                                   _e124891125514_
                                                   _hd124890125517_
                                                   _tl124889125519_
                                                   _e124894125522_
                                                   _hd124893125525_
                                                   _tl124892125527_))))
                                          (___match127991127992_
                                           _e124891125514_
                                           _hd124890125517_
                                           _tl124889125519_
                                           _e124894125522_
                                           _hd124893125525_
                                           _tl124892125527_))
                                      (___match127991127992_
                                       _e124891125514_
                                       _hd124890125517_
                                       _tl124889125519_
                                       _e124894125522_
                                       _hd124893125525_
                                       _tl124892125527_))
                                  (___match127991127992_
                                   _e124891125514_
                                   _hd124890125517_
                                   _tl124889125519_
                                   _e124894125522_
                                   _hd124893125525_
                                   _tl124892125527_))))
                          (___match127991127992_
                           _e124891125514_
                           _hd124890125517_
                           _tl124889125519_
                           _e124894125522_
                           _hd124893125525_
                           _tl124892125527_))))
                  (___match127991127992_
                   _e124891125514_
                   _hd124890125517_
                   _tl124889125519_
                   _e124894125522_
                   _hd124893125525_
                   _tl124892125527_))
              (___match127991127992_
               _e124891125514_
               _hd124890125517_
               _tl124889125519_
               _e124894125522_
               _hd124893125525_
               _tl124892125527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127991127992_
                                                   _e124891125514_
                                                   _hd124890125517_
                                                   _tl124889125519_
                                                   _e124894125522_
                                                   _hd124893125525_
                                                   _tl124892125527_))))
                                          (___match127991127992_
                                           _e124891125514_
                                           _hd124890125517_
                                           _tl124889125519_
                                           _e124894125522_
                                           _hd124893125525_
                                           _tl124892125527_))))
                                  (___match127991127992_
                                   _e124891125514_
                                   _hd124890125517_
                                   _tl124889125519_
                                   _e124894125522_
                                   _hd124893125525_
                                   _tl124892125527_))))
                          (___match128125128126_
                           _e124891125514_
                           _hd124890125517_
                           _tl124889125519_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127806127807_))
                  (let ((_e124882125731_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127806127807_))))
                    (let ((_tl124880125736_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124882125731_)))
                          (_hd124881125734_
                           (let ()
                             (declare (not safe))
                             (##car _e124882125731_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125739_ _tl124880125736_))
                            (___kont127808127809_ _L125739_))
                          (___match127833127834_
                           _e124882125731_
                           _hd124881125734_
                           _tl124880125736_))))
                  (let () (declare (not safe)) (_g124877125073_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self124824_ _stx124825_)
        (letrec ((_clause-e124827_
                  (lambda (_form124868_)
                    (let ((__obj129489
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
                       __obj129489
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124868_))
                       (if (let ((__tmp129565
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp129565))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124868_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124868_))
                               '#f)
                           '#f))
                      __obj129489))))
          (let* ((_g124829124839_
                  (lambda (_g124830124836_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124830124836_))))
                 (_g124828124865_
                  (lambda (_g124830124842_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124830124842_))
                        (let ((_e124834124844_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124830124842_))))
                          (let ((_hd124833124847_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124834124844_)))
                                (_tl124832124849_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124834124844_))))
                            ((lambda (_L124852_)
                               (let ((_clauses124863_
                                      (map _clause-e124827_ _L124852_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124863_)))
                             _tl124832124849_)))
                        (let ()
                          (declare (not safe))
                          (_g124829124839_ _g124830124842_))))))
            (declare (not safe))
            (_g124828124865_ _stx124825_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self124755_ _stx124756_)
        (let* ((_g124758124775_
                (lambda (_g124759124772_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124759124772_))))
               (_g124757124821_
                (lambda (_g124759124778_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124759124778_))
                      (let ((_e124764124780_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124759124778_))))
                        (let ((_hd124763124783_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124764124780_)))
                              (_tl124762124785_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124764124780_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124762124785_))
                              (let ((_e124767124788_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124762124785_))))
                                (let ((_hd124766124791_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124767124788_)))
                                      (_tl124765124793_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124767124788_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124765124793_))
                                      (let ((_e124770124796_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124765124793_))))
                                        (let ((_hd124769124799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124770124796_)))
                                              (_tl124768124801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124770124796_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124768124801_))
                                              ((lambda (_L124804_ _L124805_)
                                                 (let ((__tmp129566
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self124755_
                                                             _L124804_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp129566
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124769124799_
                                               _hd124766124791_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124758124775_
                                                 _g124759124778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124758124775_ _g124759124778_)))))
                              (let ()
                                (declare (not safe))
                                (_g124758124775_ _g124759124778_)))))
                      (let ()
                        (declare (not safe))
                        (_g124758124775_ _g124759124778_))))))
          (declare (not safe))
          (_g124757124821_ _stx124756_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self124659_ _stx124660_)
        (let* ((___stx128134128135_ _stx124660_)
               (_g124663124683_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128134128135_)))))
          (let ((___kont128136128137_
                 (lambda (_L124727_ _L124728_)
                   (let ((_type-e124745124747_
                          (let ((__tmp129567
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124728_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp129567))))
                     (if _type-e124745124747_
                         (let ((_type-e124750_ _type-e124745124747_))
                           (_type-e124750_ _stx124660_ _L124727_))
                         '#f))))
                (___kont128138128139_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128134128135_))
                (let ((_e124669124695_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128134128135_))))
                  (let ((_tl124667124700_
                         (let () (declare (not safe)) (##cdr _e124669124695_)))
                        (_hd124668124698_
                         (let ()
                           (declare (not safe))
                           (##car _e124669124695_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124667124700_))
                        (let ((_e124672124703_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124667124700_))))
                          (let ((_tl124670124708_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124672124703_)))
                                (_hd124671124706_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124672124703_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124671124706_))
                                (let ((_e124675124711_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124671124706_))))
                                  (let ((_tl124673124716_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124675124711_)))
                                        (_hd124674124714_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124675124711_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124674124714_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124674124714_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124673124716_))
                                                (let ((_e124678124719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124673124716_))))
                                                  (let ((_tl124676124724_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124678124719_)))
                                                        (_hd124677124722_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124678124719_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124676124724_))
                                                        (___kont128136128137_
                                                         _tl124670124708_
                                                         _hd124677124722_)
                                                        (___kont128138128139_))))
                                                (___kont128138128139_))
                                            (___kont128138128139_))
                                        (___kont128138128139_))))
                                (___kont128138128139_))))
                        (___kont128138128139_))))
                (___kont128138128139_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self124607_ _stx124608_)
        (let* ((_g124610124623_
                (lambda (_g124611124620_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124611124620_))))
               (_g124609124656_
                (lambda (_g124611124626_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124611124626_))
                      (let ((_e124615124628_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124611124626_))))
                        (let ((_hd124614124631_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124615124628_)))
                              (_tl124613124633_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124615124628_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124613124633_))
                              (let ((_e124618124636_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124613124633_))))
                                (let ((_hd124617124639_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124618124636_)))
                                      (_tl124616124641_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124618124636_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124616124641_))
                                      ((lambda (_L124644_)
                                         (let ((__tmp129568
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124644_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp129568)))
                                       _hd124617124639_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124610124623_ _g124611124626_)))))
                              (let ()
                                (declare (not safe))
                                (_g124610124623_ _g124611124626_)))))
                      (let ()
                        (declare (not safe))
                        (_g124610124623_ _g124611124626_))))))
          (declare (not safe))
          (_g124609124656_ _stx124608_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123841_)
        (let* ((___stx128172128173_ _form123841_)
               (_g123846124003_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128172128173_)))))
          (let ((___kont128174128175_
                 (lambda (_L124527_ _L124528_ _L124529_) '#t))
                (___kont128180128181_
                 (lambda (_L124315_
                          _L124316_
                          _L124317_
                          _L124318_
                          _L124319_
                          _L124320_)
                   '#t))
                (___kont128186128187_
                 (lambda (_L124111_ _L124112_ _L124113_ _L124114_) '#t))
                (___kont128188128189_ (lambda () '#f)))
            (let* ((___match128313128314_
                    (lambda (_e123965124015_
                             _hd123964124018_
                             _tl123963124020_
                             _e123968124023_
                             _hd123967124026_
                             _tl123966124028_
                             _e123971124031_
                             _hd123970124034_
                             _tl123969124036_
                             _e123974124039_
                             _hd123973124042_
                             _tl123972124044_
                             _e123977124047_
                             _hd123976124050_
                             _tl123975124052_
                             _e123980124055_
                             _hd123979124058_
                             _tl123978124060_
                             _e123983124063_
                             _hd123982124066_
                             _tl123981124068_
                             _e123986124071_
                             _hd123985124074_
                             _tl123984124076_
                             _e123989124079_
                             _hd123988124082_
                             _tl123987124084_
                             _e123992124087_
                             _hd123991124090_
                             _tl123990124092_
                             _e123995124095_
                             _hd123994124098_
                             _tl123993124100_
                             _e123998124103_
                             _hd123997124106_
                             _tl123996124108_)
                      (let ((_L124111_ _hd123997124106_)
                            (_L124112_ _hd123988124082_)
                            (_L124113_ _hd123979124058_)
                            (_L124114_ _hd123964124018_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124114_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124113_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124114_ _L124111_))
                                 (let ((__tmp129569
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L124112_
                                           _L124114_))))
                                   (declare (not safe))
                                   (not __tmp129569)))
                            (___kont128186128187_
                             _L124111_
                             _L124112_
                             _L124113_
                             _L124114_)
                            (___kont128188128189_)))))
                   (___match128285128286_
                    (lambda (_e123965124015_
                             _hd123964124018_
                             _tl123963124020_
                             _e123968124023_
                             _hd123967124026_
                             _tl123966124028_
                             _e123971124031_
                             _hd123970124034_
                             _tl123969124036_
                             _e123974124039_
                             _hd123973124042_
                             _tl123972124044_
                             _e123977124047_
                             _hd123976124050_
                             _tl123975124052_
                             _e123980124055_
                             _hd123979124058_
                             _tl123978124060_
                             _e123983124063_
                             _hd123982124066_
                             _tl123981124068_
                             _e123986124071_
                             _hd123985124074_
                             _tl123984124076_
                             _e123989124079_
                             _hd123988124082_
                             _tl123987124084_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123981124068_))
                          (let ((_e123992124087_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123981124068_))))
                            (let ((_tl123990124092_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123992124087_)))
                                  (_hd123991124090_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123992124087_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123991124090_))
                                  (let ((_e123995124095_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123991124090_))))
                                    (let ((_tl123993124100_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123995124095_)))
                                          (_hd123994124098_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123995124095_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123994124098_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123994124098_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123993124100_))
                                                  (let ((_e123998124103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123993124100_))))
                                                    (let ((_tl123996124108_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123998124103_)))
                                                          (_hd123997124106_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123998124103_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123996124108_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123990124092_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123966124028_))
                          (___match128313128314_
                           _e123965124015_
                           _hd123964124018_
                           _tl123963124020_
                           _e123968124023_
                           _hd123967124026_
                           _tl123966124028_
                           _e123971124031_
                           _hd123970124034_
                           _tl123969124036_
                           _e123974124039_
                           _hd123973124042_
                           _tl123972124044_
                           _e123977124047_
                           _hd123976124050_
                           _tl123975124052_
                           _e123980124055_
                           _hd123979124058_
                           _tl123978124060_
                           _e123983124063_
                           _hd123982124066_
                           _tl123981124068_
                           _e123986124071_
                           _hd123985124074_
                           _tl123984124076_
                           _e123989124079_
                           _hd123988124082_
                           _tl123987124084_
                           _e123992124087_
                           _hd123991124090_
                           _tl123990124092_
                           _e123995124095_
                           _hd123994124098_
                           _tl123993124100_
                           _e123998124103_
                           _hd123997124106_
                           _tl123996124108_)
                          (___kont128188128189_))
                      (___kont128188128189_))
                  (___kont128188128189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128188128189_))
                                              (___kont128188128189_))
                                          (___kont128188128189_))))
                                  (___kont128188128189_))))
                          (___kont128188128189_))))
                   (___match128215128216_
                    (lambda (_e123901124155_
                             _hd123900124158_
                             _tl123899124160_
                             ___splice128182128183_
                             _target123902124163_
                             _tl123904124165_)
                      (letrec ((_loop123905124168_
                                (lambda (_hd123903124171_ _arg123909124173_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123903124171_))
                                      (let ((_e123906124176_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123903124171_))))
                                        (let ((_lp-tl123908124181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123906124176_)))
                                              (_lp-hd123907124179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123906124176_))))
                                          (let ((__tmp129584
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123907124179_
                                                         _arg123909124173_))))
                                            (declare (not safe))
                                            (_loop123905124168_
                                             _lp-tl123908124181_
                                             __tmp129584))))
                                      (let ((_arg123910124184_
                                             (reverse _arg123909124173_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123899124160_))
                                            (let ((_e123913124187_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123899124160_))))
                                              (let ((_tl123911124192_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123913124187_)))
                                                    (_hd123912124190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123913124187_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123912124190_))
                                                    (let ((_e123916124195_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123912124190_))))
                                                      (let ((_tl123914124200_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123916124195_)))
                    (_hd123915124198_
                     (let () (declare (not safe)) (##car _e123916124195_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123915124198_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123915124198_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123914124200_))
                            (let ((_e123919124203_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123914124200_))))
                              (let ((_tl123917124208_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123919124203_)))
                                    (_hd123918124206_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123919124203_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123918124206_))
                                    (let ((_e123922124211_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123918124206_))))
                                      (let ((_tl123920124216_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123922124211_)))
                                            (_hd123921124214_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123922124211_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123921124214_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123921124214_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123920124216_))
                                                    (let ((_e123925124219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123920124216_))))
                                                      (let ((_tl123923124224_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123925124219_)))
                    (_hd123924124222_
                     (let () (declare (not safe)) (##car _e123925124219_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123923124224_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123917124208_))
                        (let ((_e123928124227_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123917124208_))))
                          (let ((_tl123926124232_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123928124227_)))
                                (_hd123927124230_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123928124227_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123927124230_))
                                (let ((_e123931124235_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123927124230_))))
                                  (let ((_tl123929124240_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123931124235_)))
                                        (_hd123930124238_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123931124235_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123930124238_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123930124238_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123929124240_))
                                                (let ((_e123934124243_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123929124240_))))
                                                  (let ((_tl123932124248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123934124243_)))
                                                        (_hd123933124246_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123934124243_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123932124248_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123926124232_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123926124232_))
                              '1)
                        (let ((___splice128184128185_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123926124232_
                                  '1))))
                          (let ((_tl123937124253_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128184128185_ '1)))
                                (_target123935124251_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128184128185_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123937124253_))
                                (let ((_e123946124256_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123937124253_))))
                                  (let ((_tl123944124261_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123946124256_)))
                                        (_hd123945124259_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123946124256_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123945124259_))
                                        (let ((_e123949124264_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123945124259_))))
                                          (let ((_tl123947124269_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123949124264_)))
                                                (_hd123948124267_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123949124264_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123948124267_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123948124267_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123947124269_))
                                                        (let ((_e123952124272_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123947124269_))))
                  (let ((_tl123950124277_
                         (let () (declare (not safe)) (##cdr _e123952124272_)))
                        (_hd123951124275_
                         (let ()
                           (declare (not safe))
                           (##car _e123952124272_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123950124277_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123944124261_))
                            (letrec ((_loop123938124280_
                                      (lambda (_hd123936124283_
                                               _xarg123942124285_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123936124283_))
                                            (let ((_e123939124288_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123936124283_))))
                                              (let ((_lp-tl123941124293_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123939124288_)))
                                                    (_lp-hd123940124291_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123939124288_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123940124291_))
                                                    (let ((_e123955124296_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123940124291_))))
                                                      (let ((_tl123953124301_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123955124296_)))
                    (_hd123954124299_
                     (let () (declare (not safe)) (##car _e123955124296_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123954124299_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123954124299_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123953124301_))
                            (let ((_e123958124304_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123953124301_))))
                              (let ((_tl123956124309_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123958124304_)))
                                    (_hd123957124307_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123958124304_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123956124309_))
                                    (let ((__tmp129583
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123957124307_
                                                   _xarg123942124285_))))
                                      (declare (not safe))
                                      (_loop123938124280_
                                       _lp-tl123941124293_
                                       __tmp129583))
                                    (___match128285128286_
                                     _e123901124155_
                                     _hd123900124158_
                                     _tl123899124160_
                                     _e123913124187_
                                     _hd123912124190_
                                     _tl123911124192_
                                     _e123916124195_
                                     _hd123915124198_
                                     _tl123914124200_
                                     _e123919124203_
                                     _hd123918124206_
                                     _tl123917124208_
                                     _e123922124211_
                                     _hd123921124214_
                                     _tl123920124216_
                                     _e123925124219_
                                     _hd123924124222_
                                     _tl123923124224_
                                     _e123928124227_
                                     _hd123927124230_
                                     _tl123926124232_
                                     _e123931124235_
                                     _hd123930124238_
                                     _tl123929124240_
                                     _e123934124243_
                                     _hd123933124246_
                                     _tl123932124248_))))
                            (___match128285128286_
                             _e123901124155_
                             _hd123900124158_
                             _tl123899124160_
                             _e123913124187_
                             _hd123912124190_
                             _tl123911124192_
                             _e123916124195_
                             _hd123915124198_
                             _tl123914124200_
                             _e123919124203_
                             _hd123918124206_
                             _tl123917124208_
                             _e123922124211_
                             _hd123921124214_
                             _tl123920124216_
                             _e123925124219_
                             _hd123924124222_
                             _tl123923124224_
                             _e123928124227_
                             _hd123927124230_
                             _tl123926124232_
                             _e123931124235_
                             _hd123930124238_
                             _tl123929124240_
                             _e123934124243_
                             _hd123933124246_
                             _tl123932124248_))
                        (___match128285128286_
                         _e123901124155_
                         _hd123900124158_
                         _tl123899124160_
                         _e123913124187_
                         _hd123912124190_
                         _tl123911124192_
                         _e123916124195_
                         _hd123915124198_
                         _tl123914124200_
                         _e123919124203_
                         _hd123918124206_
                         _tl123917124208_
                         _e123922124211_
                         _hd123921124214_
                         _tl123920124216_
                         _e123925124219_
                         _hd123924124222_
                         _tl123923124224_
                         _e123928124227_
                         _hd123927124230_
                         _tl123926124232_
                         _e123931124235_
                         _hd123930124238_
                         _tl123929124240_
                         _e123934124243_
                         _hd123933124246_
                         _tl123932124248_))
                    (___match128285128286_
                     _e123901124155_
                     _hd123900124158_
                     _tl123899124160_
                     _e123913124187_
                     _hd123912124190_
                     _tl123911124192_
                     _e123916124195_
                     _hd123915124198_
                     _tl123914124200_
                     _e123919124203_
                     _hd123918124206_
                     _tl123917124208_
                     _e123922124211_
                     _hd123921124214_
                     _tl123920124216_
                     _e123925124219_
                     _hd123924124222_
                     _tl123923124224_
                     _e123928124227_
                     _hd123927124230_
                     _tl123926124232_
                     _e123931124235_
                     _hd123930124238_
                     _tl123929124240_
                     _e123934124243_
                     _hd123933124246_
                     _tl123932124248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128285128286_
                                                     _e123901124155_
                                                     _hd123900124158_
                                                     _tl123899124160_
                                                     _e123913124187_
                                                     _hd123912124190_
                                                     _tl123911124192_
                                                     _e123916124195_
                                                     _hd123915124198_
                                                     _tl123914124200_
                                                     _e123919124203_
                                                     _hd123918124206_
                                                     _tl123917124208_
                                                     _e123922124211_
                                                     _hd123921124214_
                                                     _tl123920124216_
                                                     _e123925124219_
                                                     _hd123924124222_
                                                     _tl123923124224_
                                                     _e123928124227_
                                                     _hd123927124230_
                                                     _tl123926124232_
                                                     _e123931124235_
                                                     _hd123930124238_
                                                     _tl123929124240_
                                                     _e123934124243_
                                                     _hd123933124246_
                                                     _tl123932124248_))))
                                            (let ((_xarg123943124312_
                                                   (reverse _xarg123942124285_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123911124192_))
                                                  (let ((_L124315_
                                                         _hd123951124275_)
                                                        (_L124316_
                                                         _xarg123943124312_)
                                                        (_L124317_
                                                         _hd123933124246_)
                                                        (_L124318_
                                                         _hd123924124222_)
                                                        (_L124319_
                                                         _tl123904124165_)
                                                        (_L124320_
                                                         _arg123910124184_))
                                                    (if (and (let ((__tmp129581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129582
                                   (lambda (_g124363124366_ _g124364124368_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g124363124366_
                                             _g124364124368_)))))
                              (declare (not safe))
                              (foldr1 __tmp129582 '() _L124320_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp129581))
                     (let () (declare (not safe)) (gx#identifier? _L124319_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L124318_ 'apply))
                     (fx= (length (let ((__tmp129579
                                         (lambda (_g124370124373_
                                                  _g124371124375_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g124370124373_
                                                   _g124371124375_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp129579 '() _L124320_)))
                          (length (let ((__tmp129580
                                         (lambda (_g124377124380_
                                                  _g124378124382_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g124377124380_
                                                   _g124378124382_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp129580 '() _L124316_))))
                     (let ((__tmp129577
                            (let ((__tmp129578
                                   (lambda (_g124384124387_ _g124385124389_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g124384124387_
                                             _g124385124389_)))))
                              (declare (not safe))
                              (foldr1 __tmp129578 '() _L124320_)))
                           (__tmp129575
                            (let ((__tmp129576
                                   (lambda (_g124391124394_ _g124392124396_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g124391124394_
                                             _g124392124396_)))))
                              (declare (not safe))
                              (foldr1 __tmp129576 '() _L124316_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp129577 __tmp129575))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L124319_ _L124315_))
                     (let ((__tmp129570
                            (let ((__tmp129574
                                   (lambda (_g124398124400_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g124398124400_
                                        _L124317_))))
                                  (__tmp129571
                                   (let ((__tmp129573
                                          (lambda (_g124402124405_
                                                   _g124403124407_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g124402124405_
                                                    _g124403124407_))))
                                         (__tmp129572
                                          (let ()
                                            (declare (not safe))
                                            (cons _L124319_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp129573
                                             __tmp129572
                                             _L124320_))))
                              (declare (not safe))
                              (find __tmp129574 __tmp129571))))
                       (declare (not safe))
                       (not __tmp129570)))
                (___kont128180128181_
                 _L124315_
                 _L124316_
                 _L124317_
                 _L124318_
                 _L124319_
                 _L124320_)
                (___match128285128286_
                 _e123901124155_
                 _hd123900124158_
                 _tl123899124160_
                 _e123913124187_
                 _hd123912124190_
                 _tl123911124192_
                 _e123916124195_
                 _hd123915124198_
                 _tl123914124200_
                 _e123919124203_
                 _hd123918124206_
                 _tl123917124208_
                 _e123922124211_
                 _hd123921124214_
                 _tl123920124216_
                 _e123925124219_
                 _hd123924124222_
                 _tl123923124224_
                 _e123928124227_
                 _hd123927124230_
                 _tl123926124232_
                 _e123931124235_
                 _hd123930124238_
                 _tl123929124240_
                 _e123934124243_
                 _hd123933124246_
                 _tl123932124248_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128285128286_
                                                   _e123901124155_
                                                   _hd123900124158_
                                                   _tl123899124160_
                                                   _e123913124187_
                                                   _hd123912124190_
                                                   _tl123911124192_
                                                   _e123916124195_
                                                   _hd123915124198_
                                                   _tl123914124200_
                                                   _e123919124203_
                                                   _hd123918124206_
                                                   _tl123917124208_
                                                   _e123922124211_
                                                   _hd123921124214_
                                                   _tl123920124216_
                                                   _e123925124219_
                                                   _hd123924124222_
                                                   _tl123923124224_
                                                   _e123928124227_
                                                   _hd123927124230_
                                                   _tl123926124232_
                                                   _e123931124235_
                                                   _hd123930124238_
                                                   _tl123929124240_
                                                   _e123934124243_
                                                   _hd123933124246_
                                                   _tl123932124248_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123938124280_ _target123935124251_ '())))
                            (___match128285128286_
                             _e123901124155_
                             _hd123900124158_
                             _tl123899124160_
                             _e123913124187_
                             _hd123912124190_
                             _tl123911124192_
                             _e123916124195_
                             _hd123915124198_
                             _tl123914124200_
                             _e123919124203_
                             _hd123918124206_
                             _tl123917124208_
                             _e123922124211_
                             _hd123921124214_
                             _tl123920124216_
                             _e123925124219_
                             _hd123924124222_
                             _tl123923124224_
                             _e123928124227_
                             _hd123927124230_
                             _tl123926124232_
                             _e123931124235_
                             _hd123930124238_
                             _tl123929124240_
                             _e123934124243_
                             _hd123933124246_
                             _tl123932124248_))
                        (___match128285128286_
                         _e123901124155_
                         _hd123900124158_
                         _tl123899124160_
                         _e123913124187_
                         _hd123912124190_
                         _tl123911124192_
                         _e123916124195_
                         _hd123915124198_
                         _tl123914124200_
                         _e123919124203_
                         _hd123918124206_
                         _tl123917124208_
                         _e123922124211_
                         _hd123921124214_
                         _tl123920124216_
                         _e123925124219_
                         _hd123924124222_
                         _tl123923124224_
                         _e123928124227_
                         _hd123927124230_
                         _tl123926124232_
                         _e123931124235_
                         _hd123930124238_
                         _tl123929124240_
                         _e123934124243_
                         _hd123933124246_
                         _tl123932124248_))))
                (___match128285128286_
                 _e123901124155_
                 _hd123900124158_
                 _tl123899124160_
                 _e123913124187_
                 _hd123912124190_
                 _tl123911124192_
                 _e123916124195_
                 _hd123915124198_
                 _tl123914124200_
                 _e123919124203_
                 _hd123918124206_
                 _tl123917124208_
                 _e123922124211_
                 _hd123921124214_
                 _tl123920124216_
                 _e123925124219_
                 _hd123924124222_
                 _tl123923124224_
                 _e123928124227_
                 _hd123927124230_
                 _tl123926124232_
                 _e123931124235_
                 _hd123930124238_
                 _tl123929124240_
                 _e123934124243_
                 _hd123933124246_
                 _tl123932124248_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128285128286_
                                                     _e123901124155_
                                                     _hd123900124158_
                                                     _tl123899124160_
                                                     _e123913124187_
                                                     _hd123912124190_
                                                     _tl123911124192_
                                                     _e123916124195_
                                                     _hd123915124198_
                                                     _tl123914124200_
                                                     _e123919124203_
                                                     _hd123918124206_
                                                     _tl123917124208_
                                                     _e123922124211_
                                                     _hd123921124214_
                                                     _tl123920124216_
                                                     _e123925124219_
                                                     _hd123924124222_
                                                     _tl123923124224_
                                                     _e123928124227_
                                                     _hd123927124230_
                                                     _tl123926124232_
                                                     _e123931124235_
                                                     _hd123930124238_
                                                     _tl123929124240_
                                                     _e123934124243_
                                                     _hd123933124246_
                                                     _tl123932124248_))
                                                (___match128285128286_
                                                 _e123901124155_
                                                 _hd123900124158_
                                                 _tl123899124160_
                                                 _e123913124187_
                                                 _hd123912124190_
                                                 _tl123911124192_
                                                 _e123916124195_
                                                 _hd123915124198_
                                                 _tl123914124200_
                                                 _e123919124203_
                                                 _hd123918124206_
                                                 _tl123917124208_
                                                 _e123922124211_
                                                 _hd123921124214_
                                                 _tl123920124216_
                                                 _e123925124219_
                                                 _hd123924124222_
                                                 _tl123923124224_
                                                 _e123928124227_
                                                 _hd123927124230_
                                                 _tl123926124232_
                                                 _e123931124235_
                                                 _hd123930124238_
                                                 _tl123929124240_
                                                 _e123934124243_
                                                 _hd123933124246_
                                                 _tl123932124248_))))
                                        (___match128285128286_
                                         _e123901124155_
                                         _hd123900124158_
                                         _tl123899124160_
                                         _e123913124187_
                                         _hd123912124190_
                                         _tl123911124192_
                                         _e123916124195_
                                         _hd123915124198_
                                         _tl123914124200_
                                         _e123919124203_
                                         _hd123918124206_
                                         _tl123917124208_
                                         _e123922124211_
                                         _hd123921124214_
                                         _tl123920124216_
                                         _e123925124219_
                                         _hd123924124222_
                                         _tl123923124224_
                                         _e123928124227_
                                         _hd123927124230_
                                         _tl123926124232_
                                         _e123931124235_
                                         _hd123930124238_
                                         _tl123929124240_
                                         _e123934124243_
                                         _hd123933124246_
                                         _tl123932124248_))))
                                (___match128285128286_
                                 _e123901124155_
                                 _hd123900124158_
                                 _tl123899124160_
                                 _e123913124187_
                                 _hd123912124190_
                                 _tl123911124192_
                                 _e123916124195_
                                 _hd123915124198_
                                 _tl123914124200_
                                 _e123919124203_
                                 _hd123918124206_
                                 _tl123917124208_
                                 _e123922124211_
                                 _hd123921124214_
                                 _tl123920124216_
                                 _e123925124219_
                                 _hd123924124222_
                                 _tl123923124224_
                                 _e123928124227_
                                 _hd123927124230_
                                 _tl123926124232_
                                 _e123931124235_
                                 _hd123930124238_
                                 _tl123929124240_
                                 _e123934124243_
                                 _hd123933124246_
                                 _tl123932124248_))))
                        (___match128285128286_
                         _e123901124155_
                         _hd123900124158_
                         _tl123899124160_
                         _e123913124187_
                         _hd123912124190_
                         _tl123911124192_
                         _e123916124195_
                         _hd123915124198_
                         _tl123914124200_
                         _e123919124203_
                         _hd123918124206_
                         _tl123917124208_
                         _e123922124211_
                         _hd123921124214_
                         _tl123920124216_
                         _e123925124219_
                         _hd123924124222_
                         _tl123923124224_
                         _e123928124227_
                         _hd123927124230_
                         _tl123926124232_
                         _e123931124235_
                         _hd123930124238_
                         _tl123929124240_
                         _e123934124243_
                         _hd123933124246_
                         _tl123932124248_))
                    (___match128285128286_
                     _e123901124155_
                     _hd123900124158_
                     _tl123899124160_
                     _e123913124187_
                     _hd123912124190_
                     _tl123911124192_
                     _e123916124195_
                     _hd123915124198_
                     _tl123914124200_
                     _e123919124203_
                     _hd123918124206_
                     _tl123917124208_
                     _e123922124211_
                     _hd123921124214_
                     _tl123920124216_
                     _e123925124219_
                     _hd123924124222_
                     _tl123923124224_
                     _e123928124227_
                     _hd123927124230_
                     _tl123926124232_
                     _e123931124235_
                     _hd123930124238_
                     _tl123929124240_
                     _e123934124243_
                     _hd123933124246_
                     _tl123932124248_))
                (___kont128188128189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128188128189_))
                                            (___kont128188128189_))
                                        (___kont128188128189_))))
                                (___kont128188128189_))))
                        (___kont128188128189_))
                    (___kont128188128189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128188128189_))
                                                (___kont128188128189_))
                                            (___kont128188128189_))))
                                    (___kont128188128189_))))
                            (___kont128188128189_))
                        (___kont128188128189_))
                    (___kont128188128189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128188128189_))))
                                            (___kont128188128189_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123905124168_ _target123902124163_ '())))))
                   (___match128203128204_
                    (lambda (_e123853124415_
                             _hd123852124418_
                             _tl123851124420_
                             ___splice128176128177_
                             _target123854124423_
                             _tl123856124425_)
                      (letrec ((_loop123857124428_
                                (lambda (_hd123855124431_ _arg123861124433_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123855124431_))
                                      (let ((_e123858124436_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123855124431_))))
                                        (let ((_lp-tl123860124441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123858124436_)))
                                              (_lp-hd123859124439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123858124436_))))
                                          (let ((__tmp129598
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123859124439_
                                                         _arg123861124433_))))
                                            (declare (not safe))
                                            (_loop123857124428_
                                             _lp-tl123860124441_
                                             __tmp129598))))
                                      (let ((_arg123862124444_
                                             (reverse _arg123861124433_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123851124420_))
                                            (let ((_e123865124447_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123851124420_))))
                                              (let ((_tl123863124452_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123865124447_)))
                                                    (_hd123864124450_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123865124447_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123864124450_))
                                                    (let ((_e123868124455_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123864124450_))))
                                                      (let ((_tl123866124460_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123868124455_)))
                    (_hd123867124458_
                     (let () (declare (not safe)) (##car _e123868124455_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123867124458_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123867124458_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123866124460_))
                            (let ((_e123871124463_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123866124460_))))
                              (let ((_tl123869124468_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123871124463_)))
                                    (_hd123870124466_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123871124463_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123870124466_))
                                    (let ((_e123874124471_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123870124466_))))
                                      (let ((_tl123872124476_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123874124471_)))
                                            (_hd123873124474_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123874124471_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123873124474_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123873124474_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123872124476_))
                                                    (let ((_e123877124479_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123872124476_))))
                                                      (let ((_tl123875124484_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123877124479_)))
                    (_hd123876124482_
                     (let () (declare (not safe)) (##car _e123877124479_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123875124484_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123869124468_))
                        (let ((___splice128178128179_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123869124468_
                                  '0))))
                          (let ((_tl123880124489_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128178128179_ '1)))
                                (_target123878124487_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128178128179_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123880124489_))
                                (letrec ((_loop123881124492_
                                          (lambda (_hd123879124495_
                                                   _xarg123885124497_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123879124495_))
                                                (let ((_e123882124500_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123879124495_))))
                                                  (let ((_lp-tl123884124505_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123882124500_)))
                                                        (_lp-hd123883124503_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123882124500_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123883124503_))
                                                        (let ((_e123889124508_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123883124503_))))
                  (let ((_tl123887124513_
                         (let () (declare (not safe)) (##cdr _e123889124508_)))
                        (_hd123888124511_
                         (let ()
                           (declare (not safe))
                           (##car _e123889124508_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123888124511_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123888124511_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123887124513_))
                                (let ((_e123892124516_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123887124513_))))
                                  (let ((_tl123890124521_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123892124516_)))
                                        (_hd123891124519_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123892124516_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123890124521_))
                                        (let ((__tmp129597
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123891124519_
                                                       _xarg123885124497_))))
                                          (declare (not safe))
                                          (_loop123881124492_
                                           _lp-tl123884124505_
                                           __tmp129597))
                                        (___match128215128216_
                                         _e123853124415_
                                         _hd123852124418_
                                         _tl123851124420_
                                         ___splice128176128177_
                                         _target123854124423_
                                         _tl123856124425_))))
                                (___match128215128216_
                                 _e123853124415_
                                 _hd123852124418_
                                 _tl123851124420_
                                 ___splice128176128177_
                                 _target123854124423_
                                 _tl123856124425_))
                            (___match128215128216_
                             _e123853124415_
                             _hd123852124418_
                             _tl123851124420_
                             ___splice128176128177_
                             _target123854124423_
                             _tl123856124425_))
                        (___match128215128216_
                         _e123853124415_
                         _hd123852124418_
                         _tl123851124420_
                         ___splice128176128177_
                         _target123854124423_
                         _tl123856124425_))))
                (___match128215128216_
                 _e123853124415_
                 _hd123852124418_
                 _tl123851124420_
                 ___splice128176128177_
                 _target123854124423_
                 _tl123856124425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123886124524_
                                                       (reverse _xarg123885124497_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123863124452_))
                                                      (let ((_L124527_
                                                             _xarg123886124524_)
                                                            (_L124528_
                                                             _hd123876124482_)
                                                            (_L124529_
                                                             _arg123862124444_))
                                                        (if (and (let ((__tmp129595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp129596
                                       (lambda (_g124557124560_
                                                _g124558124562_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124557124560_
                                                 _g124558124562_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129596 '() _L124529_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp129595))
                         (fx= (length (let ((__tmp129593
                                             (lambda (_g124564124567_
                                                      _g124565124569_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g124564124567_
                                                       _g124565124569_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp129593 '() _L124529_)))
                              (length (let ((__tmp129594
                                             (lambda (_g124571124574_
                                                      _g124572124576_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g124571124574_
                                                       _g124572124576_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp129594 '() _L124527_))))
                         (let ((__tmp129591
                                (let ((__tmp129592
                                       (lambda (_g124578124581_
                                                _g124579124583_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124578124581_
                                                 _g124579124583_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129592 '() _L124529_)))
                               (__tmp129589
                                (let ((__tmp129590
                                       (lambda (_g124585124588_
                                                _g124586124590_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124585124588_
                                                 _g124586124590_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129590 '() _L124527_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp129591
                                    __tmp129589))
                         (let ((__tmp129585
                                (let ((__tmp129588
                                       (lambda (_g124592124594_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g124592124594_
                                            _L124528_))))
                                      (__tmp129586
                                       (let ((__tmp129587
                                              (lambda (_g124596124599_
                                                       _g124597124601_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g124596124599_
                                                        _g124597124601_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp129587 '() _L124529_))))
                                  (declare (not safe))
                                  (find __tmp129588 __tmp129586))))
                           (declare (not safe))
                           (not __tmp129585)))
                    (___kont128174128175_ _L124527_ _L124528_ _L124529_)
                    (___match128215128216_
                     _e123853124415_
                     _hd123852124418_
                     _tl123851124420_
                     ___splice128176128177_
                     _target123854124423_
                     _tl123856124425_)))
              (___match128215128216_
               _e123853124415_
               _hd123852124418_
               _tl123851124420_
               ___splice128176128177_
               _target123854124423_
               _tl123856124425_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123881124492_
                                     _target123878124487_
                                     '())))
                                (___match128215128216_
                                 _e123853124415_
                                 _hd123852124418_
                                 _tl123851124420_
                                 ___splice128176128177_
                                 _target123854124423_
                                 _tl123856124425_))))
                        (___match128215128216_
                         _e123853124415_
                         _hd123852124418_
                         _tl123851124420_
                         ___splice128176128177_
                         _target123854124423_
                         _tl123856124425_))
                    (___match128215128216_
                     _e123853124415_
                     _hd123852124418_
                     _tl123851124420_
                     ___splice128176128177_
                     _target123854124423_
                     _tl123856124425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128215128216_
                                                     _e123853124415_
                                                     _hd123852124418_
                                                     _tl123851124420_
                                                     ___splice128176128177_
                                                     _target123854124423_
                                                     _tl123856124425_))
                                                (___match128215128216_
                                                 _e123853124415_
                                                 _hd123852124418_
                                                 _tl123851124420_
                                                 ___splice128176128177_
                                                 _target123854124423_
                                                 _tl123856124425_))
                                            (___match128215128216_
                                             _e123853124415_
                                             _hd123852124418_
                                             _tl123851124420_
                                             ___splice128176128177_
                                             _target123854124423_
                                             _tl123856124425_))))
                                    (___match128215128216_
                                     _e123853124415_
                                     _hd123852124418_
                                     _tl123851124420_
                                     ___splice128176128177_
                                     _target123854124423_
                                     _tl123856124425_))))
                            (___match128215128216_
                             _e123853124415_
                             _hd123852124418_
                             _tl123851124420_
                             ___splice128176128177_
                             _target123854124423_
                             _tl123856124425_))
                        (___match128215128216_
                         _e123853124415_
                         _hd123852124418_
                         _tl123851124420_
                         ___splice128176128177_
                         _target123854124423_
                         _tl123856124425_))
                    (___match128215128216_
                     _e123853124415_
                     _hd123852124418_
                     _tl123851124420_
                     ___splice128176128177_
                     _target123854124423_
                     _tl123856124425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128215128216_
                                                     _e123853124415_
                                                     _hd123852124418_
                                                     _tl123851124420_
                                                     ___splice128176128177_
                                                     _target123854124423_
                                                     _tl123856124425_))))
                                            (___match128215128216_
                                             _e123853124415_
                                             _hd123852124418_
                                             _tl123851124420_
                                             ___splice128176128177_
                                             _target123854124423_
                                             _tl123856124425_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123857124428_ _target123854124423_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128172128173_))
                  (let ((_e123853124415_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128172128173_))))
                    (let ((_tl123851124420_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123853124415_)))
                          (_hd123852124418_
                           (let ()
                             (declare (not safe))
                             (##car _e123853124415_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123852124418_))
                          (let ((___splice128176128177_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123852124418_
                                    '0))))
                            (let ((_tl123856124425_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128176128177_ '1)))
                                  (_target123854124423_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128176128177_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123856124425_))
                                  (___match128203128204_
                                   _e123853124415_
                                   _hd123852124418_
                                   _tl123851124420_
                                   ___splice128176128177_
                                   _target123854124423_
                                   _tl123856124425_)
                                  (___match128215128216_
                                   _e123853124415_
                                   _hd123852124418_
                                   _tl123851124420_
                                   ___splice128176128177_
                                   _target123854124423_
                                   _tl123856124425_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123851124420_))
                              (let ((_e123968124023_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123851124420_))))
                                (let ((_tl123966124028_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123968124023_)))
                                      (_hd123967124026_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123968124023_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123967124026_))
                                      (let ((_e123971124031_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123967124026_))))
                                        (let ((_tl123969124036_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123971124031_)))
                                              (_hd123970124034_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123971124031_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123970124034_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123970124034_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123969124036_))
                                                      (let ((_e123974124039_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123969124036_))))
                (let ((_tl123972124044_
                       (let () (declare (not safe)) (##cdr _e123974124039_)))
                      (_hd123973124042_
                       (let () (declare (not safe)) (##car _e123974124039_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123973124042_))
                      (let ((_e123977124047_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123973124042_))))
                        (let ((_tl123975124052_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123977124047_)))
                              (_hd123976124050_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123977124047_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123976124050_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123976124050_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123975124052_))
                                      (let ((_e123980124055_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123975124052_))))
                                        (let ((_tl123978124060_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123980124055_)))
                                              (_hd123979124058_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123980124055_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123978124060_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123972124044_))
                                                  (let ((_e123983124063_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123972124044_))))
                                                    (let ((_tl123981124068_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123983124063_)))
                                                          (_hd123982124066_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123983124063_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123982124066_))
                                                          (let ((_e123986124071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123982124066_))))
                    (let ((_tl123984124076_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123986124071_)))
                          (_hd123985124074_
                           (let ()
                             (declare (not safe))
                             (##car _e123986124071_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123985124074_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123985124074_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123984124076_))
                                  (let ((_e123989124079_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123984124076_))))
                                    (let ((_tl123987124084_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123989124079_)))
                                          (_hd123988124082_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123989124079_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123987124084_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123981124068_))
                                              (let ((_e123992124087_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123981124068_))))
                                                (let ((_tl123990124092_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123992124087_)))
                                                      (_hd123991124090_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123992124087_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123991124090_))
                                                      (let ((_e123995124095_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123991124090_))))
                (let ((_tl123993124100_
                       (let () (declare (not safe)) (##cdr _e123995124095_)))
                      (_hd123994124098_
                       (let () (declare (not safe)) (##car _e123995124095_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123994124098_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123994124098_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123993124100_))
                              (let ((_e123998124103_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123993124100_))))
                                (let ((_tl123996124108_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123998124103_)))
                                      (_hd123997124106_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123998124103_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123996124108_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123990124092_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123966124028_))
                                              (___match128313128314_
                                               _e123853124415_
                                               _hd123852124418_
                                               _tl123851124420_
                                               _e123968124023_
                                               _hd123967124026_
                                               _tl123966124028_
                                               _e123971124031_
                                               _hd123970124034_
                                               _tl123969124036_
                                               _e123974124039_
                                               _hd123973124042_
                                               _tl123972124044_
                                               _e123977124047_
                                               _hd123976124050_
                                               _tl123975124052_
                                               _e123980124055_
                                               _hd123979124058_
                                               _tl123978124060_
                                               _e123983124063_
                                               _hd123982124066_
                                               _tl123981124068_
                                               _e123986124071_
                                               _hd123985124074_
                                               _tl123984124076_
                                               _e123989124079_
                                               _hd123988124082_
                                               _tl123987124084_
                                               _e123992124087_
                                               _hd123991124090_
                                               _tl123990124092_
                                               _e123995124095_
                                               _hd123994124098_
                                               _tl123993124100_
                                               _e123998124103_
                                               _hd123997124106_
                                               _tl123996124108_)
                                              (___kont128188128189_))
                                          (___kont128188128189_))
                                      (___kont128188128189_))))
                              (___kont128188128189_))
                          (___kont128188128189_))
                      (___kont128188128189_))))
              (___kont128188128189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont128188128189_))
                                          (___kont128188128189_))))
                                  (___kont128188128189_))
                              (___kont128188128189_))
                          (___kont128188128189_))))
                  (___kont128188128189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128188128189_))
                                              (___kont128188128189_))))
                                      (___kont128188128189_))
                                  (___kont128188128189_))
                              (___kont128188128189_))))
                      (___kont128188128189_))))
              (___kont128188128189_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128188128189_))
                                              (___kont128188128189_))))
                                      (___kont128188128189_))))
                              (___kont128188128189_)))))
                  (___kont128188128189_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form123309_)
        (let* ((___stx128316128317_ _form123309_)
               (_g123313123437_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128316128317_)))))
          (let ((___kont128318128319_
                 (lambda (_L123807_ _L123808_ _L123809_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123808_))))
                (___kont128324128325_
                 (lambda (_L123655_ _L123656_ _L123657_ _L123658_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123655_))))
                (___kont128328128329_
                 (lambda (_L123522_ _L123523_ _L123524_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123522_)))))
            (let* ((___match128425128426_
                    (lambda (_e123405123442_
                             _hd123404123445_
                             _tl123403123447_
                             _e123408123450_
                             _hd123407123453_
                             _tl123406123455_
                             _e123411123458_
                             _hd123410123461_
                             _tl123409123463_
                             _e123414123466_
                             _hd123413123469_
                             _tl123412123471_
                             _e123417123474_
                             _hd123416123477_
                             _tl123415123479_
                             _e123420123482_
                             _hd123419123485_
                             _tl123418123487_
                             _e123423123490_
                             _hd123422123493_
                             _tl123421123495_
                             _e123426123498_
                             _hd123425123501_
                             _tl123424123503_
                             _e123429123506_
                             _hd123428123509_
                             _tl123427123511_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123421123495_))
                          (let ((_e123432123514_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123421123495_))))
                            (let ((_tl123430123519_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123432123514_)))
                                  (_hd123431123517_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123432123514_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123430123519_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123406123455_))
                                      (___kont128328128329_
                                       _hd123428123509_
                                       _hd123419123485_
                                       _hd123404123445_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123313123437_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g123313123437_)))))
                          (let () (declare (not safe)) (_g123313123437_)))))
                   (___match128355128356_
                    (lambda (_e123366123559_
                             _hd123365123562_
                             _tl123364123564_
                             ___splice128326128327_
                             _target123367123567_
                             _tl123369123569_)
                      (letrec ((_loop123370123572_
                                (lambda (_hd123368123575_ _arg123374123577_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123368123575_))
                                      (let ((_e123371123580_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123368123575_))))
                                        (let ((_lp-tl123373123585_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123371123580_)))
                                              (_lp-hd123372123583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123371123580_))))
                                          (let ((__tmp129599
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123372123583_
                                                         _arg123374123577_))))
                                            (declare (not safe))
                                            (_loop123370123572_
                                             _lp-tl123373123585_
                                             __tmp129599))))
                                      (let ((_arg123375123588_
                                             (reverse _arg123374123577_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123364123564_))
                                            (let ((_e123378123591_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123364123564_))))
                                              (let ((_tl123376123596_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123378123591_)))
                                                    (_hd123377123594_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123378123591_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123377123594_))
                                                    (let ((_e123381123599_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123377123594_))))
                                                      (let ((_tl123379123604_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123381123599_)))
                    (_hd123380123602_
                     (let () (declare (not safe)) (##car _e123381123599_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123380123602_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123380123602_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123379123604_))
                            (let ((_e123384123607_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123379123604_))))
                              (let ((_tl123382123612_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123384123607_)))
                                    (_hd123383123610_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123384123607_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123383123610_))
                                    (let ((_e123387123615_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123383123610_))))
                                      (let ((_tl123385123620_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123387123615_)))
                                            (_hd123386123618_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123387123615_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123386123618_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123386123618_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123385123620_))
                                                    (let ((_e123390123623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123385123620_))))
                                                      (let ((_tl123388123628_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123390123623_)))
                    (_hd123389123626_
                     (let () (declare (not safe)) (##car _e123390123623_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123388123628_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123382123612_))
                        (let ((_e123393123631_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123382123612_))))
                          (let ((_tl123391123636_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123393123631_)))
                                (_hd123392123634_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123393123631_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123392123634_))
                                (let ((_e123396123639_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123392123634_))))
                                  (let ((_tl123394123644_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123396123639_)))
                                        (_hd123395123642_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123396123639_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123395123642_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123395123642_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123394123644_))
                                                (let ((_e123399123647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123394123644_))))
                                                  (let ((_tl123397123652_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123399123647_)))
                                                        (_hd123398123650_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123399123647_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123397123652_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl123376123596_))
                                                            (___kont128324128325_
                                                             _hd123398123650_
                                                             _hd123389123626_
                                                             _tl123369123569_
                                                             _arg123375123588_)
                                                            (___match128425128426_
                                                             _e123366123559_
                                                             _hd123365123562_
                                                             _tl123364123564_
                                                             _e123378123591_
                                                             _hd123377123594_
                                                             _tl123376123596_
                                                             _e123381123599_
                                                             _hd123380123602_
                                                             _tl123379123604_
                                                             _e123384123607_
                                                             _hd123383123610_
                                                             _tl123382123612_
                                                             _e123387123615_
                                                             _hd123386123618_
                                                             _tl123385123620_
                                                             _e123390123623_
                                                             _hd123389123626_
                                                             _tl123388123628_
                                                             _e123393123631_
                                                             _hd123392123634_
                                                             _tl123391123636_
                                                             _e123396123639_
                                                             _hd123395123642_
                                                             _tl123394123644_
                                                             _e123399123647_
                                                             _hd123398123650_
                                                             _tl123397123652_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g123313123437_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g123313123437_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g123313123437_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g123313123437_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g123313123437_)))))
                        (let () (declare (not safe)) (_g123313123437_)))
                    (let () (declare (not safe)) (_g123313123437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g123313123437_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g123313123437_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g123313123437_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g123313123437_)))))
                            (let () (declare (not safe)) (_g123313123437_)))
                        (let () (declare (not safe)) (_g123313123437_)))
                    (let () (declare (not safe)) (_g123313123437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g123313123437_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g123313123437_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop123370123572_ _target123367123567_ '())))))
                   (___match128343128344_
                    (lambda (_e123320123695_
                             _hd123319123698_
                             _tl123318123700_
                             ___splice128320128321_
                             _target123321123703_
                             _tl123323123705_)
                      (letrec ((_loop123324123708_
                                (lambda (_hd123322123711_ _arg123328123713_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123322123711_))
                                      (let ((_e123325123716_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123322123711_))))
                                        (let ((_lp-tl123327123721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123325123716_)))
                                              (_lp-hd123326123719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123325123716_))))
                                          (let ((__tmp129601
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123326123719_
                                                         _arg123328123713_))))
                                            (declare (not safe))
                                            (_loop123324123708_
                                             _lp-tl123327123721_
                                             __tmp129601))))
                                      (let ((_arg123329123724_
                                             (reverse _arg123328123713_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123318123700_))
                                            (let ((_e123332123727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123318123700_))))
                                              (let ((_tl123330123732_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123332123727_)))
                                                    (_hd123331123730_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123332123727_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123331123730_))
                                                    (let ((_e123335123735_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123331123730_))))
                                                      (let ((_tl123333123740_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123335123735_)))
                    (_hd123334123738_
                     (let () (declare (not safe)) (##car _e123335123735_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123334123738_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123334123738_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123333123740_))
                            (let ((_e123338123743_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123333123740_))))
                              (let ((_tl123336123748_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123338123743_)))
                                    (_hd123337123746_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123338123743_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123337123746_))
                                    (let ((_e123341123751_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123337123746_))))
                                      (let ((_tl123339123756_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123341123751_)))
                                            (_hd123340123754_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123341123751_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123340123754_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123340123754_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123339123756_))
                                                    (let ((_e123344123759_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123339123756_))))
                                                      (let ((_tl123342123764_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123344123759_)))
                    (_hd123343123762_
                     (let () (declare (not safe)) (##car _e123344123759_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123342123764_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123336123748_))
                        (let ((___splice128322128323_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123336123748_
                                  '0))))
                          (let ((_tl123347123769_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128322128323_ '1)))
                                (_target123345123767_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128322128323_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123347123769_))
                                (letrec ((_loop123348123772_
                                          (lambda (_hd123346123775_
                                                   _xarg123352123777_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123346123775_))
                                                (let ((_e123349123780_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123346123775_))))
                                                  (let ((_lp-tl123351123785_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123349123780_)))
                                                        (_lp-hd123350123783_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123349123780_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123350123783_))
                                                        (let ((_e123356123788_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123350123783_))))
                  (let ((_tl123354123793_
                         (let () (declare (not safe)) (##cdr _e123356123788_)))
                        (_hd123355123791_
                         (let ()
                           (declare (not safe))
                           (##car _e123356123788_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123355123791_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123355123791_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123354123793_))
                                (let ((_e123359123796_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123354123793_))))
                                  (let ((_tl123357123801_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123359123796_)))
                                        (_hd123358123799_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123359123796_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123357123801_))
                                        (let ((__tmp129600
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123358123799_
                                                       _xarg123352123777_))))
                                          (declare (not safe))
                                          (_loop123348123772_
                                           _lp-tl123351123785_
                                           __tmp129600))
                                        (___match128355128356_
                                         _e123320123695_
                                         _hd123319123698_
                                         _tl123318123700_
                                         ___splice128320128321_
                                         _target123321123703_
                                         _tl123323123705_))))
                                (___match128355128356_
                                 _e123320123695_
                                 _hd123319123698_
                                 _tl123318123700_
                                 ___splice128320128321_
                                 _target123321123703_
                                 _tl123323123705_))
                            (___match128355128356_
                             _e123320123695_
                             _hd123319123698_
                             _tl123318123700_
                             ___splice128320128321_
                             _target123321123703_
                             _tl123323123705_))
                        (___match128355128356_
                         _e123320123695_
                         _hd123319123698_
                         _tl123318123700_
                         ___splice128320128321_
                         _target123321123703_
                         _tl123323123705_))))
                (___match128355128356_
                 _e123320123695_
                 _hd123319123698_
                 _tl123318123700_
                 ___splice128320128321_
                 _target123321123703_
                 _tl123323123705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123353123804_
                                                       (reverse _xarg123352123777_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123330123732_))
                                                      (___kont128318128319_
                                                       _xarg123353123804_
                                                       _hd123343123762_
                                                       _arg123329123724_)
                                                      (___match128355128356_
                                                       _e123320123695_
                                                       _hd123319123698_
                                                       _tl123318123700_
                                                       ___splice128320128321_
                                                       _target123321123703_
                                                       _tl123323123705_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop123348123772_
                                     _target123345123767_
                                     '())))
                                (___match128355128356_
                                 _e123320123695_
                                 _hd123319123698_
                                 _tl123318123700_
                                 ___splice128320128321_
                                 _target123321123703_
                                 _tl123323123705_))))
                        (___match128355128356_
                         _e123320123695_
                         _hd123319123698_
                         _tl123318123700_
                         ___splice128320128321_
                         _target123321123703_
                         _tl123323123705_))
                    (___match128355128356_
                     _e123320123695_
                     _hd123319123698_
                     _tl123318123700_
                     ___splice128320128321_
                     _target123321123703_
                     _tl123323123705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128355128356_
                                                     _e123320123695_
                                                     _hd123319123698_
                                                     _tl123318123700_
                                                     ___splice128320128321_
                                                     _target123321123703_
                                                     _tl123323123705_))
                                                (___match128355128356_
                                                 _e123320123695_
                                                 _hd123319123698_
                                                 _tl123318123700_
                                                 ___splice128320128321_
                                                 _target123321123703_
                                                 _tl123323123705_))
                                            (___match128355128356_
                                             _e123320123695_
                                             _hd123319123698_
                                             _tl123318123700_
                                             ___splice128320128321_
                                             _target123321123703_
                                             _tl123323123705_))))
                                    (___match128355128356_
                                     _e123320123695_
                                     _hd123319123698_
                                     _tl123318123700_
                                     ___splice128320128321_
                                     _target123321123703_
                                     _tl123323123705_))))
                            (___match128355128356_
                             _e123320123695_
                             _hd123319123698_
                             _tl123318123700_
                             ___splice128320128321_
                             _target123321123703_
                             _tl123323123705_))
                        (___match128355128356_
                         _e123320123695_
                         _hd123319123698_
                         _tl123318123700_
                         ___splice128320128321_
                         _target123321123703_
                         _tl123323123705_))
                    (___match128355128356_
                     _e123320123695_
                     _hd123319123698_
                     _tl123318123700_
                     ___splice128320128321_
                     _target123321123703_
                     _tl123323123705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128355128356_
                                                     _e123320123695_
                                                     _hd123319123698_
                                                     _tl123318123700_
                                                     ___splice128320128321_
                                                     _target123321123703_
                                                     _tl123323123705_))))
                                            (___match128355128356_
                                             _e123320123695_
                                             _hd123319123698_
                                             _tl123318123700_
                                             ___splice128320128321_
                                             _target123321123703_
                                             _tl123323123705_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123324123708_ _target123321123703_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128316128317_))
                  (let ((_e123320123695_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128316128317_))))
                    (let ((_tl123318123700_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123320123695_)))
                          (_hd123319123698_
                           (let ()
                             (declare (not safe))
                             (##car _e123320123695_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123319123698_))
                          (let ((___splice128320128321_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123319123698_
                                    '0))))
                            (let ((_tl123323123705_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128320128321_ '1)))
                                  (_target123321123703_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128320128321_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123323123705_))
                                  (___match128343128344_
                                   _e123320123695_
                                   _hd123319123698_
                                   _tl123318123700_
                                   ___splice128320128321_
                                   _target123321123703_
                                   _tl123323123705_)
                                  (___match128355128356_
                                   _e123320123695_
                                   _hd123319123698_
                                   _tl123318123700_
                                   ___splice128320128321_
                                   _target123321123703_
                                   _tl123323123705_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123318123700_))
                              (let ((_e123408123450_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123318123700_))))
                                (let ((_tl123406123455_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123408123450_)))
                                      (_hd123407123453_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123408123450_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123407123453_))
                                      (let ((_e123411123458_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123407123453_))))
                                        (let ((_tl123409123463_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123411123458_)))
                                              (_hd123410123461_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123411123458_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123410123461_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123410123461_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123409123463_))
                                                      (let ((_e123414123466_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123409123463_))))
                (let ((_tl123412123471_
                       (let () (declare (not safe)) (##cdr _e123414123466_)))
                      (_hd123413123469_
                       (let () (declare (not safe)) (##car _e123414123466_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123413123469_))
                      (let ((_e123417123474_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123413123469_))))
                        (let ((_tl123415123479_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123417123474_)))
                              (_hd123416123477_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123417123474_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123416123477_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123416123477_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123415123479_))
                                      (let ((_e123420123482_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123415123479_))))
                                        (let ((_tl123418123487_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123420123482_)))
                                              (_hd123419123485_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123420123482_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123418123487_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123412123471_))
                                                  (let ((_e123423123490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123412123471_))))
                                                    (let ((_tl123421123495_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123423123490_)))
                                                          (_hd123422123493_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123423123490_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123422123493_))
                                                          (let ((_e123426123498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123422123493_))))
                    (let ((_tl123424123503_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123426123498_)))
                          (_hd123425123501_
                           (let ()
                             (declare (not safe))
                             (##car _e123426123498_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123425123501_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123425123501_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123424123503_))
                                  (let ((_e123429123506_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123424123503_))))
                                    (let ((_tl123427123511_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123429123506_)))
                                          (_hd123428123509_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123429123506_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123427123511_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123421123495_))
                                              (let ((_e123432123514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123421123495_))))
                                                (let ((_tl123430123519_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123432123514_)))
                                                      (_hd123431123517_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123432123514_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123430123519_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123406123455_))
                                                          (___kont128328128329_
                                                           _hd123428123509_
                                                           _hd123419123485_
                                                           _hd123319123698_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g123313123437_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g123313123437_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g123313123437_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g123313123437_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g123313123437_)))
                              (let () (declare (not safe)) (_g123313123437_)))
                          (let () (declare (not safe)) (_g123313123437_)))))
                  (let () (declare (not safe)) (_g123313123437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g123313123437_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g123313123437_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123313123437_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g123313123437_)))
                              (let ()
                                (declare (not safe))
                                (_g123313123437_)))))
                      (let () (declare (not safe)) (_g123313123437_)))))
              (let () (declare (not safe)) (_g123313123437_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g123313123437_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g123313123437_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123313123437_)))))
                              (let ()
                                (declare (not safe))
                                (_g123313123437_))))))
                  (let () (declare (not safe)) (_g123313123437_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form123113_)
        (let* ((_g123115123129_
                (lambda (_g123116123126_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123116123126_))))
               (_g123114123306_
                (lambda (_g123116123132_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123116123132_))
                      (let ((_e123121123134_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123116123132_))))
                        (let ((_hd123120123137_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123121123134_)))
                              (_tl123119123139_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123121123134_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123119123139_))
                              (let ((_e123124123142_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123119123139_))))
                                (let ((_hd123123123145_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123124123142_)))
                                      (_tl123122123147_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123124123142_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123122123147_))
                                      ((lambda (_L123150_ _L123151_)
                                         (let* ((___stx128438128439_ _L123151_)
                                                (_g123166123194_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx128438128439_)))))
                                           (let ((___kont128440128441_
                                                  (lambda (_L123285_)
                                                    (length (let ((__tmp129602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g123295123298_ _g123296123300_)
                             (let ()
                               (declare (not safe))
                               (cons _g123295123298_ _g123296123300_)))))
                      (declare (not safe))
                      (foldr1 __tmp129602 '() _L123285_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont128444128445_
                                                  (lambda (_L123236_ _L123237_)
                                                    (let ((__tmp129603
                                                           (length (let ((__tmp129604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g123248123251_ _g123249123253_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g123248123251_
                                            _g123249123253_)))))
                             (declare (not safe))
                             (foldr1 __tmp129604 '() _L123237_)))))
              (declare (not safe))
              (cons __tmp129603 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont128448128449_
                                                  (lambda (_L123199_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match128463128464_
                                                     (lambda (___splice128446128447_
                                                              _target123180123212_
                                                              _tl123182123214_)
                                                       (letrec ((_loop123183123217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123181123220_ _arg123187123222_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123181123220_))
                               (let ((_e123184123225_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123181123220_))))
                                 (let ((_lp-tl123186123230_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123184123225_)))
                                       (_lp-hd123185123228_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123184123225_))))
                                   (let ((__tmp129605
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123185123228_
                                                  _arg123187123222_))))
                                     (declare (not safe))
                                     (_loop123183123217_
                                      _lp-tl123186123230_
                                      __tmp129605))))
                               (let ((_arg123188123233_
                                      (reverse _arg123187123222_)))
                                 (___kont128444128445_
                                  _tl123182123214_
                                  _arg123188123233_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123183123217_ _target123180123212_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128457128458_
                                                     (lambda (___splice128442128443_
                                                              _target123169123261_
                                                              _tl123171123263_)
                                                       (letrec ((_loop123172123266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123170123269_ _arg123176123271_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123170123269_))
                               (let ((_e123173123274_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123170123269_))))
                                 (let ((_lp-tl123175123279_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123173123274_)))
                                       (_lp-hd123174123277_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123173123274_))))
                                   (let ((__tmp129606
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123174123277_
                                                  _arg123176123271_))))
                                     (declare (not safe))
                                     (_loop123172123266_
                                      _lp-tl123175123279_
                                      __tmp129606))))
                               (let ((_arg123177123282_
                                      (reverse _arg123176123271_)))
                                 (___kont128440128441_ _arg123177123282_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123172123266_ _target123169123261_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx128438128439_))
                                                   (let ((___splice128442128443_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx128438128439_
                                                             '0))))
                                                     (let ((_tl123171123263_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice128442128443_
                                                               '1)))
                                                           (_target123169123261_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice128442128443_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl123171123263_))
                                                           (___match128457128458_
                                                            ___splice128442128443_
                                                            _target123169123261_
                                                            _tl123171123263_)
                                                           (___match128463128464_
                                                            ___splice128442128443_
                                                            _target123169123261_
                                                            _tl123171123263_))))
                                                   (___kont128448128449_
                                                    ___stx128438128439_))))))
                                       _hd123123123145_
                                       _hd123120123137_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123115123129_ _g123116123132_)))))
                              (let ()
                                (declare (not safe))
                                (_g123115123129_ _g123116123132_)))))
                      (let ()
                        (declare (not safe))
                        (_g123115123129_ _g123116123132_))))))
          (declare (not safe))
          (_g123114123306_ _form123113_))))
    (define gxc#lambda-expr?
      (lambda (_expr123066_)
        (let* ((___stx128466128467_ _expr123066_)
               (_g123069123079_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128466128467_)))))
          (let ((___kont128468128469_ (lambda (_L123099_) '#t))
                (___kont128470128471_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128466128467_))
                (let ((_e123074123091_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128466128467_))))
                  (let ((_tl123072123096_
                         (let () (declare (not safe)) (##cdr _e123074123091_)))
                        (_hd123073123094_
                         (let ()
                           (declare (not safe))
                           (##car _e123074123091_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123073123094_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd123073123094_))
                            (___kont128468128469_ _tl123072123096_)
                            (___kont128470128471_))
                        (___kont128470128471_))))
                (___kont128470128471_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr123019_)
        (let* ((___stx128484128485_ _expr123019_)
               (_g123022123032_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128484128485_)))))
          (let ((___kont128486128487_ (lambda (_L123052_) '#t))
                (___kont128488128489_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128484128485_))
                (let ((_e123027123044_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128484128485_))))
                  (let ((_tl123025123049_
                         (let () (declare (not safe)) (##cdr _e123027123044_)))
                        (_hd123026123047_
                         (let ()
                           (declare (not safe))
                           (##car _e123027123044_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123026123047_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd123026123047_))
                            (___kont128486128487_ _tl123025123049_)
                            (___kont128488128489_))
                        (___kont128488128489_))))
                (___kont128488128489_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122888_)
        (let* ((___stx128502128503_ _expr122888_)
               (_g122891122921_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128502128503_)))))
          (let ((___kont128504128505_
                 (lambda (_L122989_ _L122990_ _L122991_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122991_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122990_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122989_))
                           '#f)
                       '#f)))
                (___kont128506128507_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128502128503_))
                (let ((_e122898122933_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128502128503_))))
                  (let ((_tl122896122938_
                         (let () (declare (not safe)) (##cdr _e122898122933_)))
                        (_hd122897122936_
                         (let ()
                           (declare (not safe))
                           (##car _e122898122933_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122897122936_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122897122936_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122896122938_))
                                (let ((_e122901122941_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122896122938_))))
                                  (let ((_tl122899122946_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122901122941_)))
                                        (_hd122900122944_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122901122941_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122900122944_))
                                        (let ((_e122904122949_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122900122944_))))
                                          (let ((_tl122902122954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122904122949_)))
                                                (_hd122903122952_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122904122949_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122903122952_))
                                                (let ((_e122907122957_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122903122952_))))
                                                  (let ((_tl122905122962_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122907122957_)))
                                                        (_hd122906122960_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122907122957_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122906122960_))
                                                        (let ((_e122910122965_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122906122960_))))
                  (let ((_tl122908122970_
                         (let () (declare (not safe)) (##cdr _e122910122965_)))
                        (_hd122909122968_
                         (let ()
                           (declare (not safe))
                           (##car _e122910122965_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122908122970_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122905122962_))
                            (let ((_e122913122973_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122905122962_))))
                              (let ((_tl122911122978_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122913122973_)))
                                    (_hd122912122976_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122913122973_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122911122978_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122902122954_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122899122946_))
                                            (let ((_e122916122981_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122899122946_))))
                                              (let ((_tl122914122986_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122916122981_)))
                                                    (_hd122915122984_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122916122981_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122914122986_))
                                                    (___kont128504128505_
                                                     _hd122915122984_
                                                     _hd122912122976_
                                                     _hd122909122968_)
                                                    (___kont128506128507_))))
                                            (___kont128506128507_))
                                        (___kont128506128507_))
                                    (___kont128506128507_))))
                            (___kont128506128507_))
                        (___kont128506128507_))))
                (___kont128506128507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128506128507_))))
                                        (___kont128506128507_))))
                                (___kont128506128507_))
                            (___kont128506128507_))
                        (___kont128506128507_))))
                (___kont128506128507_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr122213_)
        (let* ((___stx128564128565_ _expr122213_)
               (_g122216122374_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128564128565_)))))
          (let ((___kont128566128567_
                 (lambda (_L122762_
                          _L122763_
                          _L122764_
                          _L122765_
                          _L122766_
                          _L122767_
                          _L122768_
                          _L122769_
                          _L122770_
                          _L122771_
                          _L122772_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122769_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122765_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122764_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122772_
                                      _L122763_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122771_
                                          _L122768_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122766_
                                              _L122762_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122770_
                                              _L122767_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont128568128569_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128564128565_))
                (let ((_e122231122386_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128564128565_))))
                  (let ((_tl122229122391_
                         (let () (declare (not safe)) (##cdr _e122231122386_)))
                        (_hd122230122389_
                         (let ()
                           (declare (not safe))
                           (##car _e122231122386_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122230122389_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122230122389_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122229122391_))
                                (let ((_e122234122394_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122229122391_))))
                                  (let ((_tl122232122399_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122234122394_)))
                                        (_hd122233122397_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122234122394_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122233122397_))
                                        (let ((_e122237122402_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122233122397_))))
                                          (let ((_tl122235122407_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122237122402_)))
                                                (_hd122236122405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122237122402_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122236122405_))
                                                (let ((_e122240122410_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122236122405_))))
                                                  (let ((_tl122238122415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122240122410_)))
                                                        (_hd122239122413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122240122410_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122239122413_))
                                                        (let ((_e122243122418_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122239122413_))))
                  (let ((_tl122241122423_
                         (let () (declare (not safe)) (##cdr _e122243122418_)))
                        (_hd122242122421_
                         (let ()
                           (declare (not safe))
                           (##car _e122243122418_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122241122423_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122238122415_))
                            (let ((_e122246122426_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122238122415_))))
                              (let ((_tl122244122431_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122246122426_)))
                                    (_hd122245122429_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122246122426_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122245122429_))
                                    (let ((_e122249122434_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122245122429_))))
                                      (let ((_tl122247122439_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122249122434_)))
                                            (_hd122248122437_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122249122434_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122248122437_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd122248122437_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122247122439_))
                                                    (let ((_e122252122442_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122247122439_))))
                                                      (let ((_tl122250122447_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122252122442_)))
                    (_hd122251122445_
                     (let () (declare (not safe)) (##car _e122252122442_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd122251122445_))
                    (let ((_e122255122450_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd122251122445_))))
                      (let ((_tl122253122455_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122255122450_)))
                            (_hd122254122453_
                             (let ()
                               (declare (not safe))
                               (##car _e122255122450_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd122254122453_))
                            (let ((_e122258122458_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd122254122453_))))
                              (let ((_tl122256122463_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122258122458_)))
                                    (_hd122257122461_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122258122458_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122257122461_))
                                    (let ((_e122261122466_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122257122461_))))
                                      (let ((_tl122259122471_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122261122466_)))
                                            (_hd122260122469_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122261122466_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122259122471_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122256122463_))
                                                (let ((_e122264122474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122256122463_))))
                                                  (let ((_tl122262122479_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122264122474_)))
                                                        (_hd122263122477_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122264122474_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122262122479_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122253122455_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl122250122447_))
                        (let ((_e122267122482_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122250122447_))))
                          (let ((_tl122265122487_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122267122482_)))
                                (_hd122266122485_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122267122482_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122266122485_))
                                (let ((_e122270122490_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122266122485_))))
                                  (let ((_tl122268122495_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122270122490_)))
                                        (_hd122269122493_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122270122490_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122269122493_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd122269122493_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122268122495_))
                                                (let ((_e122273122498_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122268122495_))))
                                                  (let ((_tl122271122503_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122273122498_)))
                                                        (_hd122272122501_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122273122498_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122272122501_))
                                                        (let ((_e122276122506_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122272122501_))))
                  (let ((_tl122274122511_
                         (let () (declare (not safe)) (##cdr _e122276122506_)))
                        (_hd122275122509_
                         (let ()
                           (declare (not safe))
                           (##car _e122276122506_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122271122503_))
                        (let ((_e122279122514_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122271122503_))))
                          (let ((_tl122277122519_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122279122514_)))
                                (_hd122278122517_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122279122514_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122278122517_))
                                (let ((_e122282122522_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122278122517_))))
                                  (let ((_tl122280122527_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122282122522_)))
                                        (_hd122281122525_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122282122522_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122281122525_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd122281122525_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122280122527_))
                                                (let ((_e122285122530_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122280122527_))))
                                                  (let ((_tl122283122535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122285122530_)))
                                                        (_hd122284122533_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122285122530_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122284122533_))
                                                        (let ((_e122288122538_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122284122533_))))
                  (let ((_tl122286122543_
                         (let () (declare (not safe)) (##cdr _e122288122538_)))
                        (_hd122287122541_
                         (let ()
                           (declare (not safe))
                           (##car _e122288122538_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122287122541_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122287122541_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122286122543_))
                                (let ((_e122291122546_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122286122543_))))
                                  (let ((_tl122289122551_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122291122546_)))
                                        (_hd122290122549_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122291122546_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122289122551_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122283122535_))
                                            (let ((_e122294122554_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122283122535_))))
                                              (let ((_tl122292122559_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122294122554_)))
                                                    (_hd122293122557_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122294122554_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122293122557_))
                                                    (let ((_e122297122562_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122293122557_))))
                                                      (let ((_tl122295122567_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122297122562_)))
                    (_hd122296122565_
                     (let () (declare (not safe)) (##car _e122297122562_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122296122565_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122296122565_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122295122567_))
                            (let ((_e122300122570_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122295122567_))))
                              (let ((_tl122298122575_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122300122570_)))
                                    (_hd122299122573_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122300122570_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122298122575_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122292122559_))
                                        (let ((_e122303122578_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122292122559_))))
                                          (let ((_tl122301122583_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122303122578_)))
                                                (_hd122302122581_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122303122578_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122302122581_))
                                                (let ((_e122306122586_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122302122581_))))
                                                  (let ((_tl122304122591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122306122586_)))
                                                        (_hd122305122589_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122306122586_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd122305122589_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd122305122589_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl122304122591_))
                        (let ((_e122309122594_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122304122591_))))
                          (let ((_tl122307122599_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122309122594_)))
                                (_hd122308122597_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122309122594_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122307122599_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122277122519_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122265122487_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122244122431_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122235122407_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122232122399_))
                                                    (let ((_e122312122602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122232122399_))))
                                                      (let ((_tl122310122607_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122312122602_)))
                    (_hd122311122605_
                     (let () (declare (not safe)) (##car _e122312122602_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd122311122605_))
                    (let ((_e122315122610_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd122311122605_))))
                      (let ((_tl122313122615_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122315122610_)))
                            (_hd122314122613_
                             (let ()
                               (declare (not safe))
                               (##car _e122315122610_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd122314122613_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd122314122613_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl122313122615_))
                                    (let ((_e122318122618_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl122313122615_))))
                                      (let ((_tl122316122623_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122318122618_)))
                                            (_hd122317122621_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122318122618_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122316122623_))
                                            (let ((_e122321122626_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122316122623_))))
                                              (let ((_tl122319122631_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122321122626_)))
                                                    (_hd122320122629_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122321122626_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122320122629_))
                                                    (let ((_e122324122634_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122320122629_))))
                                                      (let ((_tl122322122639_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122324122634_)))
                    (_hd122323122637_
                     (let () (declare (not safe)) (##car _e122324122634_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122323122637_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122323122637_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122322122639_))
                            (let ((_e122327122642_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122322122639_))))
                              (let ((_tl122325122647_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122327122642_)))
                                    (_hd122326122645_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122327122642_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122326122645_))
                                    (let ((_e122330122650_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122326122645_))))
                                      (let ((_tl122328122655_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122330122650_)))
                                            (_hd122329122653_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122330122650_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122329122653_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122329122653_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122328122655_))
                                                    (let ((_e122333122658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122328122655_))))
                                                      (let ((_tl122331122663_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122333122658_)))
                    (_hd122332122661_
                     (let () (declare (not safe)) (##car _e122333122658_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122331122663_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122325122647_))
                        (let ((_e122336122666_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122325122647_))))
                          (let ((_tl122334122671_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122336122666_)))
                                (_hd122335122669_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122336122666_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122335122669_))
                                (let ((_e122339122674_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122335122669_))))
                                  (let ((_tl122337122679_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122339122674_)))
                                        (_hd122338122677_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122339122674_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122338122677_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122338122677_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122337122679_))
                                                (let ((_e122342122682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122337122679_))))
                                                  (let ((_tl122340122687_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122342122682_)))
                                                        (_hd122341122685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122342122682_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122340122687_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl122334122671_))
                                                            (let ((_e122345122690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl122334122671_))))
                      (let ((_tl122343122695_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122345122690_)))
                            (_hd122344122693_
                             (let ()
                               (declare (not safe))
                               (##car _e122345122690_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd122344122693_))
                            (let ((_e122348122698_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd122344122693_))))
                              (let ((_tl122346122703_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122348122698_)))
                                    (_hd122347122701_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122348122698_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd122347122701_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd122347122701_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122346122703_))
                                            (let ((_e122351122706_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122346122703_))))
                                              (let ((_tl122349122711_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122351122706_)))
                                                    (_hd122350122709_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122351122706_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122349122711_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl122343122695_))
                                                        (let ((_e122354122714_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl122343122695_))))
                  (let ((_tl122352122719_
                         (let () (declare (not safe)) (##cdr _e122354122714_)))
                        (_hd122353122717_
                         (let ()
                           (declare (not safe))
                           (##car _e122354122714_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd122353122717_))
                        (let ((_e122357122722_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd122353122717_))))
                          (let ((_tl122355122727_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122357122722_)))
                                (_hd122356122725_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122357122722_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd122356122725_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd122356122725_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122355122727_))
                                        (let ((_e122360122730_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122355122727_))))
                                          (let ((_tl122358122735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122360122730_)))
                                                (_hd122359122733_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122360122730_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122358122735_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122352122719_))
                                                    (let ((_e122363122738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122352122719_))))
                                                      (let ((_tl122361122743_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122363122738_)))
                    (_hd122362122741_
                     (let () (declare (not safe)) (##car _e122363122738_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd122362122741_))
                    (let ((_e122366122746_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd122362122741_))))
                      (let ((_tl122364122751_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122366122746_)))
                            (_hd122365122749_
                             (let ()
                               (declare (not safe))
                               (##car _e122366122746_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd122365122749_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd122365122749_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl122364122751_))
                                    (let ((_e122369122754_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl122364122751_))))
                                      (let ((_tl122367122759_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122369122754_)))
                                            (_hd122368122757_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122369122754_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122367122759_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122361122743_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122319122631_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122310122607_))
                                                        (___kont128566128567_
                                                         _hd122368122757_
                                                         _hd122359122733_
                                                         _hd122341122685_
                                                         _hd122332122661_
                                                         _hd122317122621_
                                                         _hd122308122597_
                                                         _hd122299122573_
                                                         _hd122290122549_
                                                         _hd122275122509_
                                                         _hd122260122469_
                                                         _hd122242122421_)
                                                        (___kont128568128569_))
                                                    (___kont128568128569_))
                                                (___kont128568128569_))
                                            (___kont128568128569_))))
                                    (___kont128568128569_))
                                (___kont128568128569_))
                            (___kont128568128569_))))
                    (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128568128569_))
                                                (___kont128568128569_))))
                                        (___kont128568128569_))
                                    (___kont128568128569_))
                                (___kont128568128569_))))
                        (___kont128568128569_))))
                (___kont128568128569_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128568128569_))))
                                            (___kont128568128569_))
                                        (___kont128568128569_))
                                    (___kont128568128569_))))
                            (___kont128568128569_))))
                    (___kont128568128569_))
                (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128568128569_))
                                            (___kont128568128569_))
                                        (___kont128568128569_))))
                                (___kont128568128569_))))
                        (___kont128568128569_))
                    (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128568128569_))
                                                (___kont128568128569_))
                                            (___kont128568128569_))))
                                    (___kont128568128569_))))
                            (___kont128568128569_))
                        (___kont128568128569_))
                    (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128568128569_))))
                                            (___kont128568128569_))))
                                    (___kont128568128569_))
                                (___kont128568128569_))
                            (___kont128568128569_))))
                    (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128568128569_))
                                                (___kont128568128569_))
                                            (___kont128568128569_))
                                        (___kont128568128569_))
                                    (___kont128568128569_))
                                (___kont128568128569_))))
                        (___kont128568128569_))
                    (___kont128568128569_))
                (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128568128569_))))
                                        (___kont128568128569_))
                                    (___kont128568128569_))))
                            (___kont128568128569_))
                        (___kont128568128569_))
                    (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128568128569_))))
                                            (___kont128568128569_))
                                        (___kont128568128569_))))
                                (___kont128568128569_))
                            (___kont128568128569_))
                        (___kont128568128569_))))
                (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128568128569_))
                                            (___kont128568128569_))
                                        (___kont128568128569_))))
                                (___kont128568128569_))))
                        (___kont128568128569_))))
                (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128568128569_))
                                            (___kont128568128569_))
                                        (___kont128568128569_))))
                                (___kont128568128569_))))
                        (___kont128568128569_))
                    (___kont128568128569_))
                (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128568128569_))
                                            (___kont128568128569_))))
                                    (___kont128568128569_))))
                            (___kont128568128569_))))
                    (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128568128569_))
                                                (___kont128568128569_))
                                            (___kont128568128569_))))
                                    (___kont128568128569_))))
                            (___kont128568128569_))
                        (___kont128568128569_))))
                (___kont128568128569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128568128569_))))
                                        (___kont128568128569_))))
                                (___kont128568128569_))
                            (___kont128568128569_))
                        (___kont128568128569_))))
                (___kont128568128569_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121955_ _id121956_ _clauses121957_ _gensym?121958_)
        (let _lp121960_ ((_rest121962_ _clauses121957_)
                         (_ids121963_ '())
                         (_impls121964_ '())
                         (_clauses121965_ '()))
          (let* ((_rest121966121974_ _rest121962_)
                 (_else121968121982_
                  (lambda ()
                    (values (reverse _ids121963_)
                            (reverse _impls121964_)
                            (reverse _clauses121965_))))
                 (_K121970122187_
                  (lambda (_rest121985_ _clause121986_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121986_))
                        (let ((__tmp129662
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121986_ _clauses121965_))))
                          (declare (not safe))
                          (_lp121960_
                           _rest121985_
                           _ids121963_
                           _impls121964_
                           __tmp129662))
                        (let* ((_g121988121999_
                                (lambda (_g121989121996_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121989121996_))))
                               (_g121987122184_
                                (lambda (_g121989122002_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121989122002_))
                                      (let ((_e121994122004_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121989122002_))))
                                        (let ((_hd121993122007_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121994122004_)))
                                              (_tl121992122009_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121994122004_))))
                                          ((lambda (_L122012_ _L122013_)
                                             (let* ((_id122030_
                                                     (let ((__tmp129609
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121956_)))
                                                           (__tmp129608
                                                            (length _clauses121965_))
                                                           (__tmp129607
                                                            (if _gensym?121958_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp129609
                                                        '"__"
                                                        __tmp129608
                                                        __tmp129607)))
                                                    (_id122032_
                                                     (let ((__tmp129610
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121955_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id122030_
                                                        __tmp129610)))
                                                    (_impl122034_
                                                     (let ((__tmp129611
                                                            (let ((__tmp129613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp129612
                           (let ()
                             (declare (not safe))
                             (cons _L122013_ _L122012_))))
                      (declare (not safe))
                      (cons __tmp129613 __tmp129612))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp129611 _stx121955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause122181_
                                                     (let* ((___stx128948128949_
                                                             _L122013_)
                                                            (_g122038122066_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128948128949_)))))
               (let ((___kont128950128951_
                      (lambda (_L122160_)
                        (let ((__tmp129614
                               (let ((__tmp129615
                                      (let ((__tmp129616
                                             (let ((__tmp129617
                                                    (let ((__tmp129623
                                                           (let ((__tmp129624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id122032_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129624)))
                  (__tmp129618
                   (let ((__tmp129619
                          (lambda (_g122170122173_ _g122171122175_)
                            (let ((__tmp129620
                                   (let ((__tmp129622
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp129621
                                          (let ()
                                            (declare (not safe))
                                            (cons _g122170122173_ '()))))
                                     (declare (not safe))
                                     (cons __tmp129622 __tmp129621))))
                              (declare (not safe))
                              (cons __tmp129620 _g122171122175_)))))
                     (declare (not safe))
                     (foldr1 __tmp129619 '() _L122160_))))
              (declare (not safe))
              (cons __tmp129623 __tmp129618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129617))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129616
                                         _stx121955_))))
                                 (declare (not safe))
                                 (cons __tmp129615 '()))))
                          (declare (not safe))
                          (cons _L122013_ __tmp129614))))
                     (___kont128954128955_
                      (lambda (_L122111_ _L122112_)
                        (let ((__tmp129625
                               (let ((__tmp129626
                                      (let ((__tmp129627
                                             (let ((__tmp129628
                                                    (let ((__tmp129642
                                                           (let ((__tmp129643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129643)))
                  (__tmp129629
                   (let ((__tmp129640
                          (let ((__tmp129641
                                 (let ()
                                   (declare (not safe))
                                   (cons _id122032_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129641)))
                         (__tmp129630
                          (let ((__tmp129636
                                 (let ((__tmp129637
                                        (let ((__tmp129639
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp129638
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L122111_ '()))))
                                          (declare (not safe))
                                          (cons __tmp129639 __tmp129638))))
                                   (declare (not safe))
                                   (cons __tmp129637 '())))
                                (__tmp129631
                                 (let ((__tmp129632
                                        (lambda (_g122123122126_
                                                 _g122124122128_)
                                          (let ((__tmp129633
                                                 (let ((__tmp129635
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp129634
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g122123122126_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp129635
                                                         __tmp129634))))
                                            (declare (not safe))
                                            (cons __tmp129633
                                                  _g122124122128_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp129632 '() _L122112_))))
                            (declare (not safe))
                            (foldr1 cons __tmp129636 __tmp129631))))
                     (declare (not safe))
                     (cons __tmp129640 __tmp129630))))
              (declare (not safe))
              (cons __tmp129642 __tmp129629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129628))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129627
                                         _stx121955_))))
                                 (declare (not safe))
                                 (cons __tmp129626 '()))))
                          (declare (not safe))
                          (cons _L122013_ __tmp129625))))
                     (___kont128958128959_
                      (lambda (_L122071_)
                        (let ((__tmp129644
                               (let ((__tmp129645
                                      (let ((__tmp129646
                                             (let ((__tmp129647
                                                    (let ((__tmp129655
                                                           (let ((__tmp129656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129656)))
                  (__tmp129648
                   (let ((__tmp129653
                          (let ((__tmp129654
                                 (let ()
                                   (declare (not safe))
                                   (cons _id122032_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129654)))
                         (__tmp129649
                          (let ((__tmp129650
                                 (let ((__tmp129652
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp129651
                                        (let ()
                                          (declare (not safe))
                                          (cons _L122071_ '()))))
                                   (declare (not safe))
                                   (cons __tmp129652 __tmp129651))))
                            (declare (not safe))
                            (cons __tmp129650 '()))))
                     (declare (not safe))
                     (cons __tmp129653 __tmp129649))))
              (declare (not safe))
              (cons __tmp129655 __tmp129648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129647))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129646
                                         _stx121955_))))
                                 (declare (not safe))
                                 (cons __tmp129645 '()))))
                          (declare (not safe))
                          (cons _L122013_ __tmp129644)))))
                 (let* ((___match128973128974_
                         (lambda (___splice128956128957_
                                  _target122052122087_
                                  _tl122054122089_)
                           (letrec ((_loop122055122092_
                                     (lambda (_hd122053122095_
                                              _arg122059122097_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd122053122095_))
                                           (let ((_e122056122100_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd122053122095_))))
                                             (let ((_lp-tl122058122105_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122056122100_)))
                                                   (_lp-hd122057122103_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122056122100_))))
                                               (let ((__tmp129657
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd122057122103_
                                                              _arg122059122097_))))
                                                 (declare (not safe))
                                                 (_loop122055122092_
                                                  _lp-tl122058122105_
                                                  __tmp129657))))
                                           (let ((_arg122060122108_
                                                  (reverse _arg122059122097_)))
                                             (___kont128954128955_
                                              _tl122054122089_
                                              _arg122060122108_))))))
                             (let ()
                               (declare (not safe))
                               (_loop122055122092_
                                _target122052122087_
                                '())))))
                        (___match128967128968_
                         (lambda (___splice128952128953_
                                  _target122041122136_
                                  _tl122043122138_)
                           (letrec ((_loop122044122141_
                                     (lambda (_hd122042122144_
                                              _arg122048122146_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd122042122144_))
                                           (let ((_e122045122149_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd122042122144_))))
                                             (let ((_lp-tl122047122154_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122045122149_)))
                                                   (_lp-hd122046122152_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122045122149_))))
                                               (let ((__tmp129658
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd122046122152_
                                                              _arg122048122146_))))
                                                 (declare (not safe))
                                                 (_loop122044122141_
                                                  _lp-tl122047122154_
                                                  __tmp129658))))
                                           (let ((_arg122049122157_
                                                  (reverse _arg122048122146_)))
                                             (___kont128950128951_
                                              _arg122049122157_))))))
                             (let ()
                               (declare (not safe))
                               (_loop122044122141_
                                _target122041122136_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128948128949_))
                       (let ((___splice128952128953_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128948128949_
                                 '0))))
                         (let ((_tl122043122138_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128952128953_ '1)))
                               (_target122041122136_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128952128953_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl122043122138_))
                               (___match128967128968_
                                ___splice128952128953_
                                _target122041122136_
                                _tl122043122138_)
                               (___match128973128974_
                                ___splice128952128953_
                                _target122041122136_
                                _tl122043122138_))))
                       (___kont128958128959_ ___stx128948128949_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp129661
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id122032_
                                                              _ids121963_)))
                                                     (__tmp129660
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl122034_
                                                              _impls121964_)))
                                                     (__tmp129659
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause122181_
                                                              _clauses121965_))))
                                                 (declare (not safe))
                                                 (_lp121960_
                                                  _rest121985_
                                                  __tmp129661
                                                  __tmp129660
                                                  __tmp129659))))
                                           _tl121992122009_
                                           _hd121993122007_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121988121999_ _g121989122002_))))))
                          (declare (not safe))
                          (_g121987122184_ _clause121986_))))))
            (if (let () (declare (not safe)) (##pair? _rest121966121974_))
                (let ((_hd121971122190_
                       (let ()
                         (declare (not safe))
                         (##car _rest121966121974_)))
                      (_tl121972122192_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121966121974_))))
                  (let* ((_clause122195_ _hd121971122190_)
                         (_rest122197_ _tl121972122192_))
                    (declare (not safe))
                    (_K121970122187_ _rest122197_ _clause122195_)))
                (let () (declare (not safe)) (_else121968121982_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx122202_ _id122203_ _clauses122204_)
        (let ((_gensym?122206_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx122202_
           _id122203_
           _clauses122204_
           _gensym?122206_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g129664_
        (let ((_g129663_ (let () (declare (not safe)) (##length _g129664_))))
          (cond ((let () (declare (not safe)) (##fx= _g129663_ 3))
                 (apply (lambda (_stx122202_ _id122203_ _clauses122204_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx122202_
                             _id122203_
                             _clauses122204_)))
                        _g129664_))
                ((let () (declare (not safe)) (##fx= _g129663_ 4))
                 (apply (lambda (_stx122208_
                                 _id122209_
                                 _clauses122210_
                                 _gensym?122211_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx122208_
                             _id122209_
                             _clauses122210_
                             _gensym?122211_)))
                        _g129664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g129664_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self121231_ _stx121232_)
        (letrec ((_case-lambda-clause-def121234_
                  (lambda (_id121951_ _impl121952_)
                    (let ((__tmp129665
                           (let ((__tmp129666
                                  (let ((__tmp129669
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121951_ '())))
                                        (__tmp129667
                                         (let ((__tmp129668
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self121231_
                                                   _impl121952_))))
                                           (declare (not safe))
                                           (cons __tmp129668 '()))))
                                    (declare (not safe))
                                    (cons __tmp129669 __tmp129667))))
                             (declare (not safe))
                             (cons '%#define-values __tmp129666))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129665 _stx121232_))))
                 (_opt-lambda-dispatch-name121235_
                  (lambda (_id121947_)
                    (if (uninterned-symbol? _id121947_)
                        (let ((_str121949_ (symbol->string _id121947_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121949_))
                              '"%"
                              _id121947_))
                        _id121947_)))
                 (_kw-lambda-dispatch-name121236_
                  (lambda (_id121942_ _name121943_)
                    (if (uninterned-symbol? _id121942_)
                        (let ((_str121945_ (symbol->string _id121942_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121945_))
                              _name121943_
                              _id121942_))
                        _id121942_))))
          (let* ((___stx128996128997_ _stx121232_)
                 (_g121241121300_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128996128997_)))))
            (let ((___kont128998128999_
                   (lambda (_L121851_ _L121852_)
                     (let* ((___stx128976128977_ _L121851_)
                            (_g121869121883_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128976128977_)))))
                       (let ((___kont128978128979_
                              (lambda (_L121927_) _stx121232_))
                             (___kont128980128981_
                              (lambda (_L121896_)
                                (let ((_g129670_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx121232_
                                          _L121852_
                                          _L121896_))))
                                  (begin
                                    (let ((_g129671_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129670_)
                                                 (##vector-length _g129670_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129671_ 3)))
                                          (error "Context expects 3 values"
                                                 _g129671_)))
                                    (let ((_ids121906_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129670_ 0)))
                                          (_impls121907_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129670_ 1)))
                                          (_clauses121908_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129670_ 2))))
                                      (let* ((_g129672_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121906_))
                                             (_defs121911_
                                              (map _case-lambda-clause-def121234_
                                                   _ids121906_
                                                   _impls121907_)))
                                        (let ((__tmp129674
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121852_)))
                                              (__tmp129673
                                               (map gxc#identifier-symbol
                                                    _ids121906_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp129674
                                           '" => "
                                           __tmp129673))
                                        (let ((__tmp129675
                                               (let ((__tmp129676
                                                      (let ((__tmp129677
                                                             (let ((__tmp129678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129679
                                   (let ((__tmp129680
                                          (let ((__tmp129685
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121852_ '())))
                                                (__tmp129681
                                                 (let ((__tmp129682
                                                        (let ((__tmp129684
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121908_)))
                      (__tmp129683
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp129684 __tmp129683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129682 '()))))
                                            (declare (not safe))
                                            (cons __tmp129685 __tmp129681))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp129680))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129679
                               _stx121232_))))
                       (declare (not safe))
                       (cons __tmp129678 '()))))
                (declare (not safe))
                (foldr1 cons __tmp129677 _defs121911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp129676))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp129675
                                           _stx121232_)))))))))
                         (let ((___match128987128988_
                                (lambda (_e121874121919_
                                         _hd121873121922_
                                         _tl121872121924_)
                                  (let ((_L121927_ _tl121872121924_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121927_))
                                        (___kont128978128979_ _L121927_)
                                        (___kont128980128981_
                                         _tl121872121924_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128976128977_))
                               (let ((_e121874121919_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128976128977_))))
                                 (let ((_tl121872121924_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121874121919_)))
                                       (_hd121873121922_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121874121919_))))
                                   (___match128987128988_
                                    _e121874121919_
                                    _hd121873121922_
                                    _tl121872121924_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121869121883_))))))))
                  (___kont129000129001_
                   (lambda (_L121669_ _L121670_)
                     (let* ((_g121686121716_
                             (lambda (_g121687121713_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g121687121713_))))
                            (_g121685121811_
                             (lambda (_g121687121719_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g121687121719_))
                                   (let ((_e121693121721_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g121687121719_))))
                                     (let ((_hd121692121724_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e121693121721_)))
                                           (_tl121691121726_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e121693121721_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl121691121726_))
                                           (let ((_e121696121729_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl121691121726_))))
                                             (let ((_hd121695121732_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121696121729_)))
                                                   (_tl121694121734_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121696121729_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121695121732_))
                                                   (let ((_e121699121737_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121695121732_))))
                                                     (let ((_hd121698121740_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121699121737_)))
                                                           (_tl121697121742_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121699121737_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121698121740_))
                                                           (let ((_e121702121745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121698121740_))))
                     (let ((_hd121701121748_
                            (let ()
                              (declare (not safe))
                              (##car _e121702121745_)))
                           (_tl121700121750_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121702121745_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121701121748_))
                           (let ((_e121705121753_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121701121748_))))
                             (let ((_hd121704121756_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121705121753_)))
                                   (_tl121703121758_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121705121753_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121703121758_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121700121750_))
                                       (let ((_e121708121761_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121700121750_))))
                                         (let ((_hd121707121764_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121708121761_)))
                                               (_tl121706121766_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121708121761_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121706121766_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl121697121742_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121694121734_))
                                                       (let ((_e121711121769_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121694121734_))))
                 (let ((_hd121710121772_
                        (let () (declare (not safe)) (##car _e121711121769_)))
                       (_tl121709121774_
                        (let () (declare (not safe)) (##cdr _e121711121769_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121709121774_))
                       ((lambda (_L121777_ _L121778_ _L121779_)
                          (let* ((_lambda-id121803_
                                  (let ((__tmp129688
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L121670_)))
                                        (__tmp129686
                                         (let ((__tmp129687
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121779_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name121235_
                                            __tmp129687))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp129688
                                     '"__"
                                     __tmp129686)))
                                 (_lambda-id121805_
                                  (let ((__tmp129689
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx121232_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121803_
                                     __tmp129689)))
                                 (_g129690_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121805_)))
                                 (_new-case-lambda-expr121808_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121777_
                                     'id:
                                     _L121779_
                                     'new-id:
                                     _lambda-id121805_))))
                            (let ((__tmp129692
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L121670_)))
                                  (__tmp129691
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121805_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp129692
                               '" => "
                               __tmp129691))
                            (let ((__tmp129693
                                   (let ((__tmp129694
                                          (let ((__tmp129702
                                                 (let ((__tmp129703
                                                        (let ((__tmp129704
                                                               (let ((__tmp129707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121805_ '())))
                             (__tmp129705
                              (let ((__tmp129706
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self121231_
                                        _L121778_))))
                                (declare (not safe))
                                (cons __tmp129706 '()))))
                         (declare (not safe))
                         (cons __tmp129707 __tmp129705))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129703
                                                    _stx121232_)))
                                                (__tmp129695
                                                 (let ((__tmp129696
                                                        (let ((__tmp129697
                                                               (let ((__tmp129698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp129699
                                     (let ((__tmp129701
                                            (let ()
                                              (declare (not safe))
                                              (cons _L121670_ '())))
                                           (__tmp129700
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121808_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp129701 __tmp129700))))
                                (declare (not safe))
                                (cons '%#define-values __tmp129699))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp129698 _stx121232_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self121231_
                   __tmp129697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129696 '()))))
                                            (declare (not safe))
                                            (cons __tmp129702 __tmp129695))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp129694))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129693
                               _stx121232_))))
                        _hd121710121772_
                        _hd121707121764_
                        _hd121704121756_)
                       (let ()
                         (declare (not safe))
                         (_g121686121716_ _g121687121719_)))))
               (let () (declare (not safe)) (_g121686121716_ _g121687121719_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121686121716_
                                                      _g121687121719_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121686121716_
                                                  _g121687121719_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121686121716_ _g121687121719_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121686121716_ _g121687121719_)))))
                           (let ()
                             (declare (not safe))
                             (_g121686121716_ _g121687121719_)))))
                   (let ()
                     (declare (not safe))
                     (_g121686121716_ _g121687121719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121686121716_
                                                      _g121687121719_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g121686121716_
                                              _g121687121719_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g121686121716_ _g121687121719_))))))
                       (declare (not safe))
                       (_g121685121811_ _L121669_))))
                  (___kont129002129003_
                   (lambda (_L121383_ _L121384_)
                     (let* ((_g121400121453_
                             (lambda (_g121401121450_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g121401121450_))))
                            (_g121399121629_
                             (lambda (_g121401121456_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g121401121456_))
                                   (let ((_e121409121458_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g121401121456_))))
                                     (let ((_hd121408121461_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e121409121458_)))
                                           (_tl121407121463_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e121409121458_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl121407121463_))
                                           (let ((_e121412121466_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl121407121463_))))
                                             (let ((_hd121411121469_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121412121466_)))
                                                   (_tl121410121471_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121412121466_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121411121469_))
                                                   (let ((_e121415121474_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121411121469_))))
                                                     (let ((_hd121414121477_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121415121474_)))
                                                           (_tl121413121479_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121415121474_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121414121477_))
                                                           (let ((_e121418121482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121414121477_))))
                     (let ((_hd121417121485_
                            (let ()
                              (declare (not safe))
                              (##car _e121418121482_)))
                           (_tl121416121487_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121418121482_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121417121485_))
                           (let ((_e121421121490_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121417121485_))))
                             (let ((_hd121420121493_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121421121490_)))
                                   (_tl121419121495_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121421121490_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121419121495_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121416121487_))
                                       (let ((_e121424121498_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121416121487_))))
                                         (let ((_hd121423121501_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121424121498_)))
                                               (_tl121422121503_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121424121498_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd121423121501_))
                                               (let ((_e121427121506_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd121423121501_))))
                                                 (let ((_hd121426121509_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e121427121506_)))
                                                       (_tl121425121511_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e121427121506_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121425121511_))
                                                       (let ((_e121430121514_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121425121511_))))
                 (let ((_hd121429121517_
                        (let () (declare (not safe)) (##car _e121430121514_)))
                       (_tl121428121519_
                        (let () (declare (not safe)) (##cdr _e121430121514_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd121429121517_))
                       (let ((_e121433121522_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd121429121517_))))
                         (let ((_hd121432121525_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121433121522_)))
                               (_tl121431121527_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121433121522_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121432121525_))
                               (let ((_e121436121530_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121432121525_))))
                                 (let ((_hd121435121533_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121436121530_)))
                                       (_tl121434121535_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121436121530_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd121435121533_))
                                       (let ((_e121439121538_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd121435121533_))))
                                         (let ((_hd121438121541_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121439121538_)))
                                               (_tl121437121543_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121439121538_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121437121543_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl121434121535_))
                                                   (let ((_e121442121546_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl121434121535_))))
                                                     (let ((_hd121441121549_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121442121546_)))
                                                           (_tl121440121551_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121442121546_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121440121551_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl121431121527_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl121428121519_))
                           (let ((_e121445121554_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl121428121519_))))
                             (let ((_hd121444121557_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121445121554_)))
                                   (_tl121443121559_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121445121554_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121443121559_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl121422121503_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl121413121479_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl121410121471_))
                                               (let ((_e121448121562_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl121410121471_))))
                                                 (let ((_hd121447121565_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e121448121562_)))
                                                       (_tl121446121567_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e121448121562_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl121446121567_))
                                                       ((lambda (_L121570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L121571_
                         _L121572_
                         _L121573_
                         _L121574_)
                  (let* ((_get-kws-id121614_
                          (let ((__tmp129710
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L121384_)))
                                (__tmp129708
                                 (let ((__tmp129709
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L121574_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name121236_
                                    __tmp129709
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129710 '"__" __tmp129708)))
                         (_get-kws-id121616_
                          (let ((__tmp129711
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx121232_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id121614_
                             __tmp129711)))
                         (_main-id121618_
                          (let ((__tmp129714
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L121384_)))
                                (__tmp129712
                                 (let ((__tmp129713
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L121573_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name121236_
                                    __tmp129713
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129714 '"__" __tmp129712)))
                         (_main-id121620_
                          (let ((__tmp129715
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx121232_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id121618_
                             __tmp129715)))
                         (_g129716_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id121616_)))
                         (_g129717_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id121620_)))
                         (_new-kw-dispatch121624_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L121570_
                             'id:
                             _L121574_
                             'new-id:
                             _get-kws-id121616_)))
                         (_new-get-kws121626_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L121571_
                             'id:
                             _L121573_
                             'new-id:
                             _main-id121620_))))
                    (let ((__tmp129720
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L121384_)))
                          (__tmp129719
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id121616_)))
                          (__tmp129718
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id121620_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129720
                       '" => "
                       __tmp129719
                       '" => "
                       __tmp129718))
                    (let ((__tmp129721
                           (let ((__tmp129722
                                  (let ((__tmp129735
                                         (let ((__tmp129736
                                                (let ((__tmp129737
                                                       (let ((__tmp129738
                                                              (let ((__tmp129740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id121620_ '())))
                            (__tmp129739
                             (let ()
                               (declare (not safe))
                               (cons _L121572_ '()))))
                        (declare (not safe))
                        (cons __tmp129740 __tmp129739))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129737
                                                   _stx121232_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self121231_
                                            __tmp129736)))
                                        (__tmp129723
                                         (let ((__tmp129730
                                                (let ((__tmp129731
                                                       (let ((__tmp129732
                                                              (let ((__tmp129734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id121616_ '())))
                            (__tmp129733
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws121626_ '()))))
                        (declare (not safe))
                        (cons __tmp129734 __tmp129733))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129731
                                                   _stx121232_)))
                                               (__tmp129724
                                                (let ((__tmp129725
                                                       (let ((__tmp129726
                                                              (let ((__tmp129727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129729
                                    (let ()
                                      (declare (not safe))
                                      (cons _L121384_ '())))
                                   (__tmp129728
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch121624_ '()))))
                               (declare (not safe))
                               (cons __tmp129729 __tmp129728))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129727))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129726 _stx121232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129725 '()))))
                                           (declare (not safe))
                                           (cons __tmp129730 __tmp129724))))
                                    (declare (not safe))
                                    (cons __tmp129735 __tmp129723))))
                             (declare (not safe))
                             (cons '%#begin __tmp129722))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129721 _stx121232_))))
                _hd121447121565_
                _hd121444121557_
                _hd121441121549_
                _hd121438121541_
                _hd121420121493_)
               (let ()
                 (declare (not safe))
                 (_g121400121453_ _g121401121456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121400121453_
                                                  _g121401121456_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g121400121453_
                                              _g121401121456_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g121400121453_ _g121401121456_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121400121453_ _g121401121456_)))))
                           (let ()
                             (declare (not safe))
                             (_g121400121453_ _g121401121456_)))
                       (let ()
                         (declare (not safe))
                         (_g121400121453_ _g121401121456_)))
                   (let ()
                     (declare (not safe))
                     (_g121400121453_ _g121401121456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121400121453_
                                                      _g121401121456_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121400121453_
                                                  _g121401121456_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121400121453_ _g121401121456_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g121400121453_ _g121401121456_)))))
                       (let ()
                         (declare (not safe))
                         (_g121400121453_ _g121401121456_)))))
               (let ()
                 (declare (not safe))
                 (_g121400121453_ _g121401121456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121400121453_
                                                  _g121401121456_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121400121453_ _g121401121456_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121400121453_ _g121401121456_)))))
                           (let ()
                             (declare (not safe))
                             (_g121400121453_ _g121401121456_)))))
                   (let ()
                     (declare (not safe))
                     (_g121400121453_ _g121401121456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121400121453_
                                                      _g121401121456_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g121400121453_
                                              _g121401121456_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g121400121453_ _g121401121456_))))))
                       (declare (not safe))
                       (_g121399121629_ _L121383_))))
                  (___kont129004129005_
                   (lambda (_L121329_ _L121330_)
                     (let ((__tmp129741
                            (let ((__tmp129742
                                   (let ((__tmp129743
                                          (let ((__tmp129744
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self121231_
                                                    _L121329_))))
                                            (declare (not safe))
                                            (cons __tmp129744 '()))))
                                     (declare (not safe))
                                     (cons _L121330_ __tmp129743))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129742))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129741 _stx121232_)))))
              (let* ((___match129089129090_
                      (lambda (_e121275121351_
                               _hd121274121354_
                               _tl121273121356_
                               _e121278121359_
                               _hd121277121362_
                               _tl121276121364_
                               _e121281121367_
                               _hd121280121370_
                               _tl121279121372_
                               _e121284121375_
                               _hd121283121378_
                               _tl121282121380_)
                        (let ((_L121383_ _hd121283121378_)
                              (_L121384_ _hd121280121370_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121384_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L121383_)))
                              (___kont129002129003_ _L121383_ _L121384_)
                              (___kont129004129005_
                               _hd121283121378_
                               _hd121277121362_)))))
                     (___match129061129062_
                      (lambda (_e121261121637_
                               _hd121260121640_
                               _tl121259121642_
                               _e121264121645_
                               _hd121263121648_
                               _tl121262121650_
                               _e121267121653_
                               _hd121266121656_
                               _tl121265121658_
                               _e121270121661_
                               _hd121269121664_
                               _tl121268121666_)
                        (let ((_L121669_ _hd121269121664_)
                              (_L121670_ _hd121266121656_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121670_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L121669_)))
                              (___kont129000129001_ _L121669_ _L121670_)
                              (___match129089129090_
                               _e121261121637_
                               _hd121260121640_
                               _tl121259121642_
                               _e121264121645_
                               _hd121263121648_
                               _tl121262121650_
                               _e121267121653_
                               _hd121266121656_
                               _tl121265121658_
                               _e121270121661_
                               _hd121269121664_
                               _tl121268121666_)))))
                     (___match129033129034_
                      (lambda (_e121247121819_
                               _hd121246121822_
                               _tl121245121824_
                               _e121250121827_
                               _hd121249121830_
                               _tl121248121832_
                               _e121253121835_
                               _hd121252121838_
                               _tl121251121840_
                               _e121256121843_
                               _hd121255121846_
                               _tl121254121848_)
                        (let ((_L121851_ _hd121255121846_)
                              (_L121852_ _hd121252121838_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121852_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121851_)))
                              (___kont128998128999_ _L121851_ _L121852_)
                              (___match129061129062_
                               _e121247121819_
                               _hd121246121822_
                               _tl121245121824_
                               _e121250121827_
                               _hd121249121830_
                               _tl121248121832_
                               _e121253121835_
                               _hd121252121838_
                               _tl121251121840_
                               _e121256121843_
                               _hd121255121846_
                               _tl121254121848_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128996128997_))
                    (let ((_e121247121819_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128996128997_))))
                      (let ((_tl121245121824_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121247121819_)))
                            (_hd121246121822_
                             (let ()
                               (declare (not safe))
                               (##car _e121247121819_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121245121824_))
                            (let ((_e121250121827_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121245121824_))))
                              (let ((_tl121248121832_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121250121827_)))
                                    (_hd121249121830_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121250121827_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121249121830_))
                                    (let ((_e121253121835_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121249121830_))))
                                      (let ((_tl121251121840_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121253121835_)))
                                            (_hd121252121838_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121253121835_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121251121840_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121248121832_))
                                                (let ((_e121256121843_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121248121832_))))
                                                  (let ((_tl121254121848_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121256121843_)))
                                                        (_hd121255121846_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121256121843_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121254121848_))
                                                        (___match129033129034_
                                                         _e121247121819_
                                                         _hd121246121822_
                                                         _tl121245121824_
                                                         _e121250121827_
                                                         _hd121249121830_
                                                         _tl121248121832_
                                                         _e121253121835_
                                                         _hd121252121838_
                                                         _tl121251121840_
                                                         _e121256121843_
                                                         _hd121255121846_
                                                         _tl121254121848_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121241121300_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121241121300_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121248121832_))
                                                (let ((_e121295121321_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121248121832_))))
                                                  (let ((_tl121293121326_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121295121321_)))
                                                        (_hd121294121324_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121295121321_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121293121326_))
                                                        (___kont129004129005_
                                                         _hd121294121324_
                                                         _hd121249121830_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121241121300_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121241121300_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121248121832_))
                                        (let ((_e121295121321_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121248121832_))))
                                          (let ((_tl121293121326_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121295121321_)))
                                                (_hd121294121324_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121295121321_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121293121326_))
                                                (___kont129004129005_
                                                 _hd121294121324_
                                                 _hd121249121830_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121241121300_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g121241121300_))))))
                            (let () (declare (not safe)) (_g121241121300_)))))
                    (let () (declare (not safe)) (_g121241121300_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self120162_ _stx120163_)
        (letrec* ((_bind-e__127392127393_
                   (lambda (_id121215_ _expr121216_ _compile?121217_)
                     (let ((__tmp129747
                            (let ()
                              (declare (not safe))
                              (cons _id121215_ '())))
                           (__tmp129745
                            (let ((__tmp129746
                                   (if _compile?121217_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120162_
                                          _expr121216_))
                                       _expr121216_)))
                              (declare (not safe))
                              (cons __tmp129746 '()))))
                       (declare (not safe))
                       (cons __tmp129747 __tmp129745))))
                  (_bind-e__0__127394127395_
                   (lambda (_id121222_ _expr121223_)
                     (let ((_compile?121225_ '#t))
                       (declare (not safe))
                       (_bind-e__127392127393_
                        _id121222_
                        _expr121223_
                        _compile?121225_))))
                  (_bind-e120165_
                   (lambda _g129749_
                     (let ((_g129748_
                            (let ()
                              (declare (not safe))
                              (##length _g129749_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129748_ 2))
                              (apply (lambda (_id121222_ _expr121223_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__127394127395_
                                          _id121222_
                                          _expr121223_)))
                                     _g129749_))
                             ((let () (declare (not safe)) (##fx= _g129748_ 3))
                              (apply (lambda (_id121227_
                                              _expr121228_
                                              _compile?121229_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__127392127393_
                                          _id121227_
                                          _expr121228_
                                          _compile?121229_)))
                                     _g129749_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129749_))))))
                  (_compile-bindings120166_
                   (lambda (_bindings120799_)
                     (let _lp120801_ ((_rest120803_ _bindings120799_)
                                      (_lift1120804_ '())
                                      (_lift2120805_ '())
                                      (_bind120806_ '()))
                       (let* ((_rest120807120815_ _rest120803_)
                              (_else120809120823_
                               (lambda ()
                                 (values (reverse _lift1120804_)
                                         (reverse _lift2120805_)
                                         (reverse _bind120806_))))
                              (_K120811121202_
                               (lambda (_rest120826_ _hd120827_)
                                 (let* ((___stx129132129133_ _hd120827_)
                                        (_g120831120867_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx129132129133_)))))
                                   (let ((___kont129134129135_
                                          (lambda (_L121109_ _L121110_)
                                            (let* ((___stx129112129113_
                                                    _L121109_)
                                                   (_g121125121139_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx129112129113_)))))
                                              (let ((___kont129114129115_
                                                     (lambda (_L121187_)
                                                       (let ((__tmp129750
                                                              (let ((__tmp129751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__127392127393_
                                _L121110_
                                _L121109_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129751 _bind120806_))))
                 (declare (not safe))
                 (_lp120801_
                  _rest120826_
                  _lift1120804_
                  _lift2120805_
                  __tmp129750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129116129117_
                                                     (lambda (_L121152_)
                                                       (let ((_g129752_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120163_
                         _L121110_
                         _L121152_
                         '#t))))
                 (begin
                   (let ((_g129753_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129752_)
                                (##vector-length _g129752_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129753_ 3)))
                         (error "Context expects 3 values" _g129753_)))
                   (let ((_ids121162_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129752_ 0)))
                         (_impls121163_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129752_ 1)))
                         (_clauses121164_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129752_ 2))))
                     (let* ((_g129754_
                             (for-each gx#core-bind-runtime! _ids121162_))
                            (_xbind121167_
                             (map _bind-e120165_ _ids121162_ _impls121163_))
                            (_expr*121169_
                             (let ((__tmp129756
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121164_)))
                                   (__tmp129755
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129756
                                __tmp129755)))
                            (_bind*121171_
                             (let ()
                               (declare (not safe))
                               (_bind-e__127392127393_
                                _L121110_
                                _expr*121169_
                                '#f))))
                       (let ((__tmp129758
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121110_)))
                             (__tmp129757
                              (map gxc#identifier-symbol _ids121162_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129758
                          '" => "
                          __tmp129757))
                       (let ((__tmp129760
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120805_ _xbind121167_)))
                             (__tmp129759
                              (let ()
                                (declare (not safe))
                                (cons _bind*121171_ _bind120806_))))
                         (declare (not safe))
                         (_lp120801_
                          _rest120826_
                          _lift1120804_
                          __tmp129760
                          __tmp129759)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match129123129124_
                                                       (lambda (_e121130121179_
                                                                _hd121129121182_
                                                                _tl121128121184_)
                                                         (let ((_L121187_
                                                                _tl121128121184_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L121187_))
                       (___kont129114129115_ _L121187_)
                       (___kont129116129117_ _tl121128121184_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx129112129113_))
                                                      (let ((_e121130121179_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx129112129113_))))
                (let ((_tl121128121184_
                       (let () (declare (not safe)) (##cdr _e121130121179_)))
                      (_hd121129121182_
                       (let () (declare (not safe)) (##car _e121130121179_))))
                  (___match129123129124_
                   _e121130121179_
                   _hd121129121182_
                   _tl121128121184_)))
              (let () (declare (not safe)) (_g121125121139_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont129136129137_
                                          (lambda (_L120937_ _L120938_)
                                            (let* ((_g120952120982_
                                                    (lambda (_g120953120979_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120953120979_))))
                                                   (_g120951121077_
                                                    (lambda (_g120953120985_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120953120985_))
                                                          (let ((_e120959120987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120953120985_))))
                    (let ((_hd120958120990_
                           (let ()
                             (declare (not safe))
                             (##car _e120959120987_)))
                          (_tl120957120992_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120959120987_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120957120992_))
                          (let ((_e120962120995_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120957120992_))))
                            (let ((_hd120961120998_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120962120995_)))
                                  (_tl120960121000_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120962120995_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120961120998_))
                                  (let ((_e120965121003_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120961120998_))))
                                    (let ((_hd120964121006_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120965121003_)))
                                          (_tl120963121008_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120965121003_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120964121006_))
                                          (let ((_e120968121011_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120964121006_))))
                                            (let ((_hd120967121014_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120968121011_)))
                                                  (_tl120966121016_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120968121011_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120967121014_))
                                                  (let ((_e120971121019_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120967121014_))))
                                                    (let ((_hd120970121022_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120971121019_)))
                                                          (_tl120969121024_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120971121019_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120969121024_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120966121016_))
                      (let ((_e120974121027_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120966121016_))))
                        (let ((_hd120973121030_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120974121027_)))
                              (_tl120972121032_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120974121027_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120972121032_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120963121008_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120960121000_))
                                      (let ((_e120977121035_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120960121000_))))
                                        (let ((_hd120976121038_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120977121035_)))
                                              (_tl120975121040_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120977121035_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120975121040_))
                                              ((lambda (_L121043_
                                                        _L121044_
                                                        _L121045_)
                                                 (let* ((_lambda-id121069_
                                                         (let ((__tmp129762
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120938_)))
                       (__tmp129761 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129762 __tmp129761)))
                (_lambda-id121071_
                 (let ((__tmp129763
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120163_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id121069_ __tmp129763)))
                (_g129764_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id121071_)))
                (_new-case-lambda-expr121074_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L121043_
                    'id:
                    _L121045_
                    'new-id:
                    _lambda-id121071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129766
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120938_)))
                                                         (__tmp129765
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id121071_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129766
                                                      '" => "
                                                      __tmp129765))
                                                   (let ((__tmp129769
                                                          (let ((__tmp129770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__127392127393_
                            _L120938_
                            _new-case-lambda-expr121074_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129770 _rest120826_)))
                 (__tmp129767
                  (let ((__tmp129768
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__127394127395_
                            _lambda-id121071_
                            _L121044_))))
                    (declare (not safe))
                    (cons __tmp129768 _lift1120804_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120801_
                                                      __tmp129769
                                                      __tmp129767
                                                      _lift2120805_
                                                      _bind120806_))))
                                               _hd120976121038_
                                               _hd120973121030_
                                               _hd120970121022_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120952120982_
                                                 _g120953120985_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120952120982_ _g120953120985_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120952120982_ _g120953120985_)))
                              (let ()
                                (declare (not safe))
                                (_g120952120982_ _g120953120985_)))))
                      (let ()
                        (declare (not safe))
                        (_g120952120982_ _g120953120985_)))
                  (let ()
                    (declare (not safe))
                    (_g120952120982_ _g120953120985_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120952120982_
                                                     _g120953120985_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120952120982_
                                             _g120953120985_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120952120982_ _g120953120985_)))))
                          (let ()
                            (declare (not safe))
                            (_g120952120982_ _g120953120985_)))))
                  (let ()
                    (declare (not safe))
                    (_g120952120982_ _g120953120985_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120951121077_ _L120937_))))
                                         (___kont129138129139_
                                          (lambda (_L120888_ _L120889_)
                                            (let ((__tmp129771
                                                   (let ((__tmp129772
                                                          (let ((__tmp129773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129774
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120162_ _L120888_))))
                           (declare (not safe))
                           (cons __tmp129774 '()))))
                    (declare (not safe))
                    (cons _L120889_ __tmp129773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129772
                                                           _bind120806_))))
                                              (declare (not safe))
                                              (_lp120801_
                                               _rest120826_
                                               _lift1120804_
                                               _lift2120805_
                                               __tmp129771)))))
                                     (let* ((___match129183129184_
                                             (lambda (_e120848120913_
                                                      _hd120847120916_
                                                      _tl120846120918_
                                                      _e120851120921_
                                                      _hd120850120924_
                                                      _tl120849120926_
                                                      _e120854120929_
                                                      _hd120853120932_
                                                      _tl120852120934_)
                                               (let ((_L120937_
                                                      _hd120853120932_)
                                                     (_L120938_
                                                      _hd120850120924_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120938_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120937_)))
                                                     (___kont129136129137_
                                                      _L120937_
                                                      _L120938_)
                                                     (___kont129138129139_
                                                      _hd120853120932_
                                                      _hd120847120916_)))))
                                            (___match129161129162_
                                             (lambda (_e120837121085_
                                                      _hd120836121088_
                                                      _tl120835121090_
                                                      _e120840121093_
                                                      _hd120839121096_
                                                      _tl120838121098_
                                                      _e120843121101_
                                                      _hd120842121104_
                                                      _tl120841121106_)
                                               (let ((_L121109_
                                                      _hd120842121104_)
                                                     (_L121110_
                                                      _hd120839121096_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121110_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121109_)))
                                                     (___kont129134129135_
                                                      _L121109_
                                                      _L121110_)
                                                     (___match129183129184_
                                                      _e120837121085_
                                                      _hd120836121088_
                                                      _tl120835121090_
                                                      _e120840121093_
                                                      _hd120839121096_
                                                      _tl120838121098_
                                                      _e120843121101_
                                                      _hd120842121104_
                                                      _tl120841121106_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx129132129133_))
                                           (let ((_e120837121085_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx129132129133_))))
                                             (let ((_tl120835121090_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120837121085_)))
                                                   (_hd120836121088_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120837121085_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120836121088_))
                                                   (let ((_e120840121093_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120836121088_))))
                                                     (let ((_tl120838121098_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120840121093_)))
                                                           (_hd120839121096_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120840121093_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120838121098_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120835121090_))
                       (let ((_e120843121101_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120835121090_))))
                         (let ((_tl120841121106_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120843121101_)))
                               (_hd120842121104_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120843121101_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120841121106_))
                               (___match129161129162_
                                _e120837121085_
                                _hd120836121088_
                                _tl120835121090_
                                _e120840121093_
                                _hd120839121096_
                                _tl120838121098_
                                _e120843121101_
                                _hd120842121104_
                                _tl120841121106_)
                               (let ()
                                 (declare (not safe))
                                 (_g120831120867_)))))
                       (let () (declare (not safe)) (_g120831120867_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120835121090_))
                       (let ((_e120862120880_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120835121090_))))
                         (let ((_tl120860120885_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120862120880_)))
                               (_hd120861120883_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120862120880_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120860120885_))
                               (___kont129138129139_
                                _hd120861120883_
                                _hd120836121088_)
                               (let ()
                                 (declare (not safe))
                                 (_g120831120867_)))))
                       (let () (declare (not safe)) (_g120831120867_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120835121090_))
                                                       (let ((_e120862120880_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120835121090_))))
                 (let ((_tl120860120885_
                        (let () (declare (not safe)) (##cdr _e120862120880_)))
                       (_hd120861120883_
                        (let () (declare (not safe)) (##car _e120862120880_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120860120885_))
                       (___kont129138129139_ _hd120861120883_ _hd120836121088_)
                       (let () (declare (not safe)) (_g120831120867_)))))
               (let () (declare (not safe)) (_g120831120867_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120831120867_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120807120815_))
                             (let ((_hd120812121205_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120807120815_)))
                                   (_tl120813121207_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120807120815_))))
                               (let* ((_hd121210_ _hd120812121205_)
                                      (_rest121212_ _tl120813121207_))
                                 (declare (not safe))
                                 (_K120811121202_ _rest121212_ _hd121210_)))
                             (let ()
                               (declare (not safe))
                               (_else120809120823_)))))))
                  (_lift-kw-lambda?120167_
                   (lambda (_bind120723_)
                     (let* ((___stx129200129201_ _bind120723_)
                            (_g120726120743_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx129200129201_)))))
                       (let ((___kont129202129203_
                              (lambda (_L120779_ _L120780_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120780_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120779_))
                                    '#f)))
                             (___kont129204129205_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx129200129201_))
                             (let ((_e120732120755_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx129200129201_))))
                               (let ((_tl120730120760_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120732120755_)))
                                     (_hd120731120758_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120732120755_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120731120758_))
                                     (let ((_e120735120763_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120731120758_))))
                                       (let ((_tl120733120768_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120735120763_)))
                                             (_hd120734120766_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120735120763_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120733120768_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120730120760_))
                                                 (let ((_e120738120771_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120730120760_))))
                                                   (let ((_tl120736120776_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120738120771_)))
                                                         (_hd120737120774_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120738120771_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120736120776_))
                                                         (___kont129202129203_
                                                          _hd120737120774_
                                                          _hd120734120766_)
                                                         (___kont129204129205_))))
                                                 (___kont129204129205_))
                                             (___kont129204129205_))))
                                     (___kont129204129205_))))
                             (___kont129204129205_))))))
                  (_lift-kw-lambda-bindings120168_
                   (lambda (_bindings120335_)
                     (let _lp120337_ ((_rest120339_ _bindings120335_)
                                      (_lift1120340_ '())
                                      (_lift2120341_ '())
                                      (_bind120342_ '()))
                       (let* ((_rest120343120351_ _rest120339_)
                              (_else120345120359_
                               (lambda ()
                                 (values (reverse _lift1120340_)
                                         (reverse _lift2120341_)
                                         (reverse _bind120342_))))
                              (_K120347120711_
                               (lambda (_rest120362_ _hd120363_)
                                 (let* ((___stx129230129231_ _hd120363_)
                                        (_g120366120391_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx129230129231_)))))
                                   (let ((___kont129232129233_
                                          (lambda (_L120461_ _L120462_)
                                            (let* ((_g120476120529_
                                                    (lambda (_g120477120526_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120477120526_))))
                                                   (_g120475120705_
                                                    (lambda (_g120477120532_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120477120532_))
                                                          (let ((_e120485120534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120477120532_))))
                    (let ((_hd120484120537_
                           (let ()
                             (declare (not safe))
                             (##car _e120485120534_)))
                          (_tl120483120539_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120485120534_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120483120539_))
                          (let ((_e120488120542_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120483120539_))))
                            (let ((_hd120487120545_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120488120542_)))
                                  (_tl120486120547_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120488120542_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120487120545_))
                                  (let ((_e120491120550_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120487120545_))))
                                    (let ((_hd120490120553_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120491120550_)))
                                          (_tl120489120555_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120491120550_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120490120553_))
                                          (let ((_e120494120558_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120490120553_))))
                                            (let ((_hd120493120561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120494120558_)))
                                                  (_tl120492120563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120494120558_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120493120561_))
                                                  (let ((_e120497120566_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120493120561_))))
                                                    (let ((_hd120496120569_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120497120566_)))
                                                          (_tl120495120571_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120497120566_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120495120571_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120492120563_))
                      (let ((_e120500120574_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120492120563_))))
                        (let ((_hd120499120577_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120500120574_)))
                              (_tl120498120579_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120500120574_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120499120577_))
                              (let ((_e120503120582_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120499120577_))))
                                (let ((_hd120502120585_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120503120582_)))
                                      (_tl120501120587_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120503120582_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120501120587_))
                                      (let ((_e120506120590_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120501120587_))))
                                        (let ((_hd120505120593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120506120590_)))
                                              (_tl120504120595_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120506120590_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120505120593_))
                                              (let ((_e120509120598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120505120593_))))
                                                (let ((_hd120508120601_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120509120598_)))
                                                      (_tl120507120603_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120509120598_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120508120601_))
                                                      (let ((_e120512120606_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120508120601_))))
                (let ((_hd120511120609_
                       (let () (declare (not safe)) (##car _e120512120606_)))
                      (_tl120510120611_
                       (let () (declare (not safe)) (##cdr _e120512120606_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120511120609_))
                      (let ((_e120515120614_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120511120609_))))
                        (let ((_hd120514120617_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120515120614_)))
                              (_tl120513120619_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120515120614_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120513120619_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120510120611_))
                                  (let ((_e120518120622_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120510120611_))))
                                    (let ((_hd120517120625_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120518120622_)))
                                          (_tl120516120627_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120518120622_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120516120627_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120507120603_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120504120595_))
                                                  (let ((_e120521120630_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120504120595_))))
                                                    (let ((_hd120520120633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120521120630_)))
                                                          (_tl120519120635_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120521120630_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120519120635_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120498120579_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120489120555_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120486120547_))
                              (let ((_e120524120638_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120486120547_))))
                                (let ((_hd120523120641_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120524120638_)))
                                      (_tl120522120643_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120524120638_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120522120643_))
                                      ((lambda (_L120646_
                                                _L120647_
                                                _L120648_
                                                _L120649_
                                                _L120650_)
                                         (let* ((_get-kws-id120690_
                                                 (let ((__tmp129776
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120462_)))
                                                       (__tmp129775
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129776
                                                    __tmp129775)))
                                                (_get-kws-id120692_
                                                 (let ((__tmp129777
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120163_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120690_
                                                    __tmp129777)))
                                                (_main-id120694_
                                                 (let ((__tmp129779
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120462_)))
                                                       (__tmp129778
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129779
                                                    __tmp129778)))
                                                (_main-id120696_
                                                 (let ((__tmp129780
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120163_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120694_
                                                    __tmp129780)))
                                                (_g129781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120692_)))
                                                (_g129782_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120696_)))
                                                (_new-kw-dispatch120700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120646_
                                                    'id:
                                                    _L120650_
                                                    'new-id:
                                                    _get-kws-id120692_)))
                                                (_new-get-kws120702_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120647_
                                                    'id:
                                                    _L120649_
                                                    'new-id:
                                                    _main-id120696_))))
                                           (let ((__tmp129785
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120462_)))
                                                 (__tmp129784
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120692_)))
                                                 (__tmp129783
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120696_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129785
                                              '" => "
                                              __tmp129784
                                              '" => "
                                              __tmp129783))
                                           (let ((__tmp129790
                                                  (let ((__tmp129791
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127392127393_
                                                            _main-id120696_
                                                            _L120648_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129791
                                                          _lift1120340_)))
                                                 (__tmp129788
                                                  (let ((__tmp129789
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127392127393_
                                                            _get-kws-id120692_
                                                            _new-get-kws120702_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129789
                                                          _lift2120341_)))
                                                 (__tmp129786
                                                  (let ((__tmp129787
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127392127393_
                                                            _L120462_
                                                            _new-kw-dispatch120700_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129787
                                                          _bind120342_))))
                                             (declare (not safe))
                                             (_lp120337_
                                              _rest120362_
                                              __tmp129790
                                              __tmp129788
                                              __tmp129786))))
                                       _hd120523120641_
                                       _hd120520120633_
                                       _hd120517120625_
                                       _hd120514120617_
                                       _hd120496120569_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120476120529_ _g120477120532_)))))
                              (let ()
                                (declare (not safe))
                                (_g120476120529_ _g120477120532_)))
                          (let ()
                            (declare (not safe))
                            (_g120476120529_ _g120477120532_)))
                      (let ()
                        (declare (not safe))
                        (_g120476120529_ _g120477120532_)))
                  (let ()
                    (declare (not safe))
                    (_g120476120529_ _g120477120532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120476120529_
                                                     _g120477120532_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120476120529_
                                                 _g120477120532_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120476120529_
                                             _g120477120532_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120476120529_ _g120477120532_)))
                              (let ()
                                (declare (not safe))
                                (_g120476120529_ _g120477120532_)))))
                      (let ()
                        (declare (not safe))
                        (_g120476120529_ _g120477120532_)))))
              (let ()
                (declare (not safe))
                (_g120476120529_ _g120477120532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120476120529_
                                                 _g120477120532_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120476120529_ _g120477120532_)))))
                              (let ()
                                (declare (not safe))
                                (_g120476120529_ _g120477120532_)))))
                      (let ()
                        (declare (not safe))
                        (_g120476120529_ _g120477120532_)))
                  (let ()
                    (declare (not safe))
                    (_g120476120529_ _g120477120532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120476120529_
                                                     _g120477120532_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120476120529_
                                             _g120477120532_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120476120529_ _g120477120532_)))))
                          (let ()
                            (declare (not safe))
                            (_g120476120529_ _g120477120532_)))))
                  (let ()
                    (declare (not safe))
                    (_g120476120529_ _g120477120532_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120475120705_ _L120461_))))
                                         (___kont129234129235_
                                          (lambda (_L120412_ _L120413_)
                                            (let ((__tmp129792
                                                   (let ((__tmp129793
                                                          (let ((__tmp129794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L120412_ '()))))
                    (declare (not safe))
                    (cons _L120413_ __tmp129794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129793
                                                           _bind120342_))))
                                              (declare (not safe))
                                              (_lp120337_
                                               _rest120362_
                                               _lift1120340_
                                               _lift2120341_
                                               __tmp129792)))))
                                     (let ((___match129257129258_
                                            (lambda (_e120372120437_
                                                     _hd120371120440_
                                                     _tl120370120442_
                                                     _e120375120445_
                                                     _hd120374120448_
                                                     _tl120373120450_
                                                     _e120378120453_
                                                     _hd120377120456_
                                                     _tl120376120458_)
                                              (let ((_L120461_
                                                     _hd120377120456_)
                                                    (_L120462_
                                                     _hd120374120448_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L120462_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L120461_)))
                                                    (___kont129232129233_
                                                     _L120461_
                                                     _L120462_)
                                                    (___kont129234129235_
                                                     _hd120377120456_
                                                     _hd120371120440_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx129230129231_))
                                           (let ((_e120372120437_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx129230129231_))))
                                             (let ((_tl120370120442_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120372120437_)))
                                                   (_hd120371120440_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120372120437_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120371120440_))
                                                   (let ((_e120375120445_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120371120440_))))
                                                     (let ((_tl120373120450_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120375120445_)))
                                                           (_hd120374120448_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120375120445_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120373120450_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120370120442_))
                       (let ((_e120378120453_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120370120442_))))
                         (let ((_tl120376120458_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120378120453_)))
                               (_hd120377120456_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120378120453_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120376120458_))
                               (___match129257129258_
                                _e120372120437_
                                _hd120371120440_
                                _tl120370120442_
                                _e120375120445_
                                _hd120374120448_
                                _tl120373120450_
                                _e120378120453_
                                _hd120377120456_
                                _tl120376120458_)
                               (let ()
                                 (declare (not safe))
                                 (_g120366120391_)))))
                       (let () (declare (not safe)) (_g120366120391_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120370120442_))
                       (let ((_e120386120404_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120370120442_))))
                         (let ((_tl120384120409_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120386120404_)))
                               (_hd120385120407_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120386120404_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120384120409_))
                               (___kont129234129235_
                                _hd120385120407_
                                _hd120371120440_)
                               (let ()
                                 (declare (not safe))
                                 (_g120366120391_)))))
                       (let () (declare (not safe)) (_g120366120391_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120370120442_))
                                                       (let ((_e120386120404_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120370120442_))))
                 (let ((_tl120384120409_
                        (let () (declare (not safe)) (##cdr _e120386120404_)))
                       (_hd120385120407_
                        (let () (declare (not safe)) (##car _e120386120404_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120384120409_))
                       (___kont129234129235_ _hd120385120407_ _hd120371120440_)
                       (let () (declare (not safe)) (_g120366120391_)))))
               (let () (declare (not safe)) (_g120366120391_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120366120391_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120343120351_))
                             (let ((_hd120348120714_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120343120351_)))
                                   (_tl120349120716_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120343120351_))))
                               (let* ((_hd120719_ _hd120348120714_)
                                      (_rest120721_ _tl120349120716_))
                                 (declare (not safe))
                                 (_K120347120711_ _rest120721_ _hd120719_)))
                             (let ()
                               (declare (not safe))
                               (_else120345120359_))))))))
          (let* ((___stx129274129275_ _stx120163_)
                 (_g120171120197_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx129274129275_)))))
            (let ((___kont129276129277_
                   (lambda (_L120257_ _L120258_)
                     (let ((__tmp129796
                            (lambda ()
                              (if (let ((__tmp129823
                                         (let ((__tmp129824
                                                (lambda (_g120286120289_
                                                         _g120287120291_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g120286120289_
                                                          _g120287120291_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129824
                                                   '()
                                                   _L120258_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?120167_
                                            __tmp129823))
                                  (let ((_g129810_
                                         (let ((__tmp129812
                                                (let ((__tmp129813
                                                       (lambda (_g120293120296_
                                                                _g120294120298_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g120293120296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g120294120298_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129813
                                                          '()
                                                          _L120258_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings120168_
                                            __tmp129812))))
                                    (begin
                                      (let ((_g129811_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129810_)
                                                   (##vector-length _g129810_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129811_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129811_)))
                                      (let ((_lift1120301_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129810_ 0)))
                                            (_lift2120302_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129810_ 1)))
                                            (_hd120303_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129810_ 2))))
                                        (let* ((_expr120305_
                                                (let ((__tmp129814
                                                       (let ((__tmp129815
                                                              (let ((__tmp129816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L120257_ '()))))
                        (declare (not safe))
                        (cons _hd120303_ __tmp129816))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129814
                                                   _stx120163_)))
                                               (_expr120307_
                                                (let ((__tmp129817
                                                       (let ((__tmp129818
                                                              (let ((__tmp129819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr120305_ '()))))
                        (declare (not safe))
                        (cons _lift2120302_ __tmp129819))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129817
                                                   _stx120163_)))
                                               (_expr120309_
                                                (let ((__tmp129820
                                                       (let ((__tmp129821
                                                              (let ((__tmp129822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr120307_ '()))))
                        (declare (not safe))
                        (cons _lift1120301_ __tmp129822))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129820
                                                   _stx120163_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self120162_
                                             _expr120309_))))))
                                  (let ((_g129797_
                                         (let ((__tmp129799
                                                (let ((__tmp129800
                                                       (lambda (_g120311120314_
                                                                _g120312120316_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g120311120314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g120312120316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129800
                                                          '()
                                                          _L120258_))))
                                           (declare (not safe))
                                           (_compile-bindings120166_
                                            __tmp129799))))
                                    (begin
                                      (let ((_g129798_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129797_)
                                                   (##vector-length _g129797_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129798_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129798_)))
                                      (let ((_lift1120319_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129797_ 0)))
                                            (_lift2120320_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129797_ 1)))
                                            (_hd120321_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129797_ 2))))
                                        (let* ((_body120323_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self120162_
                                                   _L120257_)))
                                               (_expr120325_
                                                (let ((__tmp129801
                                                       (let ((__tmp129802
                                                              (let ((__tmp129803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body120323_ '()))))
                        (declare (not safe))
                        (cons _hd120321_ __tmp129803))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129801
                                                   _stx120163_)))
                                               (_expr120327_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2120320_))
                                                    _expr120325_
                                                    (let ((__tmp129804
                                                           (let ((__tmp129805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129806
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr120325_ '()))))
                            (declare (not safe))
                            (cons _lift2120320_ __tmp129806))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129805))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129804 _stx120163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr120329_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1120319_))
                                                    _expr120327_
                                                    (let ((__tmp129807
                                                           (let ((__tmp129808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129809
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr120327_ '()))))
                            (declare (not safe))
                            (cons _lift1120319_ __tmp129809))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129808))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129807 _stx120163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr120329_)))))))
                           (__tmp129795
                            (let ((__obj129490
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj129490)
                              __obj129490)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129796
                        gx#current-expander-context
                        __tmp129795))))
                  (___kont129280129281_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120162_ _stx120163_)))))
              (let ((___match129301129302_
                     (lambda (_e120177120209_
                              _hd120176120212_
                              _tl120175120214_
                              _e120180120217_
                              _hd120179120220_
                              _tl120178120222_
                              ___splice129278129279_
                              _target120181120225_
                              _tl120183120227_)
                       (letrec ((_loop120184120230_
                                 (lambda (_hd120182120233_ _bind120188120235_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120182120233_))
                                       (let ((_e120185120238_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120182120233_))))
                                         (let ((_lp-tl120187120243_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120185120238_)))
                                               (_lp-hd120186120241_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120185120238_))))
                                           (let ((__tmp129827
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120186120241_
                                                          _bind120188120235_))))
                                             (declare (not safe))
                                             (_loop120184120230_
                                              _lp-tl120187120243_
                                              __tmp129827))))
                                       (let ((_bind120189120246_
                                              (reverse _bind120188120235_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120178120222_))
                                             (let ((_e120192120249_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120178120222_))))
                                               (let ((_tl120190120254_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120192120249_)))
                                                     (_hd120191120252_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120192120249_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120190120254_))
                                                     (let ((_L120257_
                                                            _hd120191120252_)
                                                           (_L120258_
                                                            _bind120189120246_))
                                                       (if (let ((__tmp129825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129826
                                 (lambda (_g120278120281_ _g120279120283_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120278120281_ _g120279120283_)))))
                            (declare (not safe))
                            (foldr1 __tmp129826 '() _L120258_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129825))
                   (___kont129276129277_ _L120257_ _L120258_)
                   (___kont129280129281_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129280129281_))))
                                             (___kont129280129281_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120184120230_ _target120181120225_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx129274129275_))
                    (let ((_e120177120209_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx129274129275_))))
                      (let ((_tl120175120214_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120177120209_)))
                            (_hd120176120212_
                             (let ()
                               (declare (not safe))
                               (##car _e120177120209_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120175120214_))
                            (let ((_e120180120217_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120175120214_))))
                              (let ((_tl120178120222_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120180120217_)))
                                    (_hd120179120220_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120180120217_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120179120220_))
                                    (let ((___splice129278129279_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120179120220_
                                              '0))))
                                      (let ((_tl120183120227_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129278129279_
                                                '1)))
                                            (_target120181120225_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129278129279_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120183120227_))
                                            (___match129301129302_
                                             _e120177120209_
                                             _hd120176120212_
                                             _tl120175120214_
                                             _e120180120217_
                                             _hd120179120220_
                                             _tl120178120222_
                                             ___splice129278129279_
                                             _target120181120225_
                                             _tl120183120227_)
                                            (___kont129280129281_))))
                                    (___kont129280129281_))))
                            (___kont129280129281_))))
                    (___kont129280129281_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self119305_ _stx119306_)
        (letrec* ((_bind-e__127397127398_
                   (lambda (_id120146_ _expr120147_ _compile?120148_)
                     (let ((__tmp129830
                            (let ()
                              (declare (not safe))
                              (cons _id120146_ '())))
                           (__tmp129828
                            (let ((__tmp129829
                                   (if _compile?120148_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self119305_
                                          _expr120147_))
                                       _expr120147_)))
                              (declare (not safe))
                              (cons __tmp129829 '()))))
                       (declare (not safe))
                       (cons __tmp129830 __tmp129828))))
                  (_bind-e__0__127399127400_
                   (lambda (_id120153_ _expr120154_)
                     (let ((_compile?120156_ '#t))
                       (declare (not safe))
                       (_bind-e__127397127398_
                        _id120153_
                        _expr120154_
                        _compile?120156_))))
                  (_bind-e119308_
                   (lambda _g129832_
                     (let ((_g129831_
                            (let ()
                              (declare (not safe))
                              (##length _g129832_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129831_ 2))
                              (apply (lambda (_id120153_ _expr120154_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__127399127400_
                                          _id120153_
                                          _expr120154_)))
                                     _g129832_))
                             ((let () (declare (not safe)) (##fx= _g129831_ 3))
                              (apply (lambda (_id120158_
                                              _expr120159_
                                              _compile?120160_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__127397127398_
                                          _id120158_
                                          _expr120159_
                                          _compile?120160_)))
                                     _g129832_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129832_))))))
                  (_compile-bindings119309_
                   (lambda (_rest119444_)
                     (let _lp119446_ ((_rest119448_ _rest119444_)
                                      (_bind119449_ '()))
                       (let* ((_rest119450119458_ _rest119448_)
                              (_else119452119466_
                               (lambda () (reverse _bind119449_)))
                              (_K119454120133_
                               (lambda (_rest119469_ _hd119470_)
                                 (let* ((___stx129324129325_ _hd119470_)
                                        (_g119475119522_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx129324129325_)))))
                                   (let ((___kont129326129327_
                                          (lambda (_L120040_ _L120041_)
                                            (let* ((___stx129304129305_
                                                    _L120040_)
                                                   (_g120056120070_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx129304129305_)))))
                                              (let ((___kont129306129307_
                                                     (lambda (_L120118_)
                                                       (let ((__tmp129833
                                                              (let ((__tmp129834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__127397127398_
                                _L120041_
                                _L120040_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129834 _bind119449_))))
                 (declare (not safe))
                 (_lp119446_ _rest119469_ __tmp129833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129308129309_
                                                     (lambda (_L120083_)
                                                       (let ((_g129835_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119306_
                         _L120041_
                         _L120083_
                         '#t))))
                 (begin
                   (let ((_g129836_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129835_)
                                (##vector-length _g129835_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129836_ 3)))
                         (error "Context expects 3 values" _g129836_)))
                   (let ((_ids120093_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129835_ 0)))
                         (_impls120094_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129835_ 1)))
                         (_clauses120095_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129835_ 2))))
                     (let* ((_g129837_
                             (for-each gx#core-bind-runtime! _ids120093_))
                            (_xbind120098_
                             (map _bind-e119308_ _ids120093_ _impls120094_))
                            (_expr*120100_
                             (let ((__tmp129839
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120095_)))
                                   (__tmp129838
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129839
                                __tmp129838)))
                            (_bind*120102_
                             (let ()
                               (declare (not safe))
                               (_bind-e__127397127398_
                                _L120041_
                                _expr*120100_
                                '#f))))
                       (let ((__tmp129841
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120041_)))
                             (__tmp129840
                              (map gxc#identifier-symbol _ids120093_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129841
                          '" => "
                          __tmp129840))
                       (let ((__tmp129842
                              (let ((__tmp129843
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind119449_
                                               _xbind120098_))))
                                (declare (not safe))
                                (cons _bind*120102_ __tmp129843))))
                         (declare (not safe))
                         (_lp119446_ _rest119469_ __tmp129842)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match129315129316_
                                                       (lambda (_e120061120110_
                                                                _hd120060120113_
                                                                _tl120059120115_)
                                                         (let ((_L120118_
                                                                _tl120059120115_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120118_))
                       (___kont129306129307_ _L120118_)
                       (___kont129308129309_ _tl120059120115_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx129304129305_))
                                                      (let ((_e120061120110_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx129304129305_))))
                (let ((_tl120059120115_
                       (let () (declare (not safe)) (##cdr _e120061120110_)))
                      (_hd120060120113_
                       (let () (declare (not safe)) (##car _e120061120110_))))
                  (___match129315129316_
                   _e120061120110_
                   _hd120060120113_
                   _tl120059120115_)))
              (let () (declare (not safe)) (_g120056120070_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont129328129329_
                                          (lambda (_L119868_ _L119869_)
                                            (let* ((_g119883119913_
                                                    (lambda (_g119884119910_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119884119910_))))
                                                   (_g119882120008_
                                                    (lambda (_g119884119916_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119884119916_))
                                                          (let ((_e119890119918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119884119916_))))
                    (let ((_hd119889119921_
                           (let ()
                             (declare (not safe))
                             (##car _e119890119918_)))
                          (_tl119888119923_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119890119918_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119888119923_))
                          (let ((_e119893119926_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119888119923_))))
                            (let ((_hd119892119929_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119893119926_)))
                                  (_tl119891119931_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119893119926_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119892119929_))
                                  (let ((_e119896119934_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119892119929_))))
                                    (let ((_hd119895119937_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119896119934_)))
                                          (_tl119894119939_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119896119934_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119895119937_))
                                          (let ((_e119899119942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119895119937_))))
                                            (let ((_hd119898119945_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119899119942_)))
                                                  (_tl119897119947_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119899119942_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119898119945_))
                                                  (let ((_e119902119950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119898119945_))))
                                                    (let ((_hd119901119953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119902119950_)))
                                                          (_tl119900119955_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119902119950_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119900119955_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119897119947_))
                      (let ((_e119905119958_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119897119947_))))
                        (let ((_hd119904119961_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119905119958_)))
                              (_tl119903119963_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119905119958_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119903119963_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119894119939_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119891119931_))
                                      (let ((_e119908119966_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119891119931_))))
                                        (let ((_hd119907119969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119908119966_)))
                                              (_tl119906119971_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119908119966_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119906119971_))
                                              ((lambda (_L119974_
                                                        _L119975_
                                                        _L119976_)
                                                 (let* ((_lambda-id120000_
                                                         (let ((__tmp129845
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119869_)))
                       (__tmp129844 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129845 __tmp129844)))
                (_lambda-id120002_
                 (let ((__tmp129846
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119306_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120000_ __tmp129846)))
                (_g129847_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120002_)))
                (_new-case-lambda-expr120005_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119974_
                    'id:
                    _L119976_
                    'new-id:
                    _lambda-id120002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129849
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119869_)))
                                                         (__tmp129848
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120002_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129849
                                                      '" => "
                                                      __tmp129848))
                                                   (let ((__tmp129852
                                                          (let ((__tmp129853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__127397127398_
                            _L119869_
                            _new-case-lambda-expr120005_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129853 _rest119469_)))
                 (__tmp129850
                  (let ((__tmp129851
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__127399127400_
                            _lambda-id120002_
                            _L119975_))))
                    (declare (not safe))
                    (cons __tmp129851 _bind119449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp119446_
                                                      __tmp129852
                                                      __tmp129850))))
                                               _hd119907119969_
                                               _hd119904119961_
                                               _hd119901119953_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119883119913_
                                                 _g119884119916_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119883119913_ _g119884119916_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119883119913_ _g119884119916_)))
                              (let ()
                                (declare (not safe))
                                (_g119883119913_ _g119884119916_)))))
                      (let ()
                        (declare (not safe))
                        (_g119883119913_ _g119884119916_)))
                  (let ()
                    (declare (not safe))
                    (_g119883119913_ _g119884119916_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119883119913_
                                                     _g119884119916_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119883119913_
                                             _g119884119916_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119883119913_ _g119884119916_)))))
                          (let ()
                            (declare (not safe))
                            (_g119883119913_ _g119884119916_)))))
                  (let ()
                    (declare (not safe))
                    (_g119883119913_ _g119884119916_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119882120008_ _L119868_))))
                                         (___kont129330129331_
                                          (lambda (_L119592_ _L119593_)
                                            (let* ((_g119607119660_
                                                    (lambda (_g119608119657_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119608119657_))))
                                                   (_g119606119836_
                                                    (lambda (_g119608119663_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119608119663_))
                                                          (let ((_e119616119665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119608119663_))))
                    (let ((_hd119615119668_
                           (let ()
                             (declare (not safe))
                             (##car _e119616119665_)))
                          (_tl119614119670_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119616119665_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119614119670_))
                          (let ((_e119619119673_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119614119670_))))
                            (let ((_hd119618119676_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119619119673_)))
                                  (_tl119617119678_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119619119673_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119618119676_))
                                  (let ((_e119622119681_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119618119676_))))
                                    (let ((_hd119621119684_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119622119681_)))
                                          (_tl119620119686_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119622119681_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119621119684_))
                                          (let ((_e119625119689_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119621119684_))))
                                            (let ((_hd119624119692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119625119689_)))
                                                  (_tl119623119694_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119625119689_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119624119692_))
                                                  (let ((_e119628119697_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119624119692_))))
                                                    (let ((_hd119627119700_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119628119697_)))
                                                          (_tl119626119702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119628119697_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119626119702_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119623119694_))
                      (let ((_e119631119705_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119623119694_))))
                        (let ((_hd119630119708_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119631119705_)))
                              (_tl119629119710_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119631119705_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119630119708_))
                              (let ((_e119634119713_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119630119708_))))
                                (let ((_hd119633119716_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119634119713_)))
                                      (_tl119632119718_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119634119713_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119632119718_))
                                      (let ((_e119637119721_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119632119718_))))
                                        (let ((_hd119636119724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119637119721_)))
                                              (_tl119635119726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119637119721_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119636119724_))
                                              (let ((_e119640119729_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119636119724_))))
                                                (let ((_hd119639119732_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119640119729_)))
                                                      (_tl119638119734_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119640119729_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119639119732_))
                                                      (let ((_e119643119737_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119639119732_))))
                (let ((_hd119642119740_
                       (let () (declare (not safe)) (##car _e119643119737_)))
                      (_tl119641119742_
                       (let () (declare (not safe)) (##cdr _e119643119737_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119642119740_))
                      (let ((_e119646119745_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119642119740_))))
                        (let ((_hd119645119748_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119646119745_)))
                              (_tl119644119750_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119646119745_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119644119750_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119641119742_))
                                  (let ((_e119649119753_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119641119742_))))
                                    (let ((_hd119648119756_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119649119753_)))
                                          (_tl119647119758_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119649119753_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119647119758_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119638119734_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119635119726_))
                                                  (let ((_e119652119761_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119635119726_))))
                                                    (let ((_hd119651119764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119652119761_)))
                                                          (_tl119650119766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119652119761_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119650119766_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119629119710_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119620119686_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119617119678_))
                              (let ((_e119655119769_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119617119678_))))
                                (let ((_hd119654119772_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119655119769_)))
                                      (_tl119653119774_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119655119769_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119653119774_))
                                      ((lambda (_L119777_
                                                _L119778_
                                                _L119779_
                                                _L119780_
                                                _L119781_)
                                         (let* ((_get-kws-id119821_
                                                 (let ((__tmp129855
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119593_)))
                                                       (__tmp129854
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129855
                                                    __tmp129854)))
                                                (_get-kws-id119823_
                                                 (let ((__tmp129856
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119306_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119821_
                                                    __tmp129856)))
                                                (_main-id119825_
                                                 (let ((__tmp129858
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119593_)))
                                                       (__tmp129857
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129858
                                                    __tmp129857)))
                                                (_main-id119827_
                                                 (let ((__tmp129859
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119306_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119825_
                                                    __tmp129859)))
                                                (_g129860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119823_)))
                                                (_g129861_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119827_)))
                                                (_new-kw-dispatch119831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119777_
                                                    'id:
                                                    _L119781_
                                                    'new-id:
                                                    _get-kws-id119823_)))
                                                (_new-get-kws119833_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119778_
                                                    'id:
                                                    _L119780_
                                                    'new-id:
                                                    _main-id119827_))))
                                           (let ((__tmp129864
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119593_)))
                                                 (__tmp129863
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119823_)))
                                                 (__tmp129862
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119827_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129864
                                              '" => "
                                              __tmp129863
                                              '" => "
                                              __tmp129862))
                                           (let ((__tmp129865
                                                  (let ((__tmp129870
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127397127398_
                                                            _main-id119827_
                                                            _L119779_
                                                            '#f)))
                                                        (__tmp129866
                                                         (let ((__tmp129869
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__127397127398_
                           _get-kws-id119823_
                           _new-get-kws119833_
                           '#f)))
                       (__tmp129867
                        (let ((__tmp129868
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__127397127398_
                                  _L119593_
                                  _new-kw-dispatch119831_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129868 _rest119469_))))
                   (declare (not safe))
                   (cons __tmp129869 __tmp129867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129870
                                                          __tmp129866))))
                                             (declare (not safe))
                                             (_lp119446_
                                              __tmp129865
                                              _bind119449_))))
                                       _hd119654119772_
                                       _hd119651119764_
                                       _hd119648119756_
                                       _hd119645119748_
                                       _hd119627119700_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119607119660_ _g119608119663_)))))
                              (let ()
                                (declare (not safe))
                                (_g119607119660_ _g119608119663_)))
                          (let ()
                            (declare (not safe))
                            (_g119607119660_ _g119608119663_)))
                      (let ()
                        (declare (not safe))
                        (_g119607119660_ _g119608119663_)))
                  (let ()
                    (declare (not safe))
                    (_g119607119660_ _g119608119663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119607119660_
                                                     _g119608119663_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119607119660_
                                                 _g119608119663_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119607119660_
                                             _g119608119663_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119607119660_ _g119608119663_)))
                              (let ()
                                (declare (not safe))
                                (_g119607119660_ _g119608119663_)))))
                      (let ()
                        (declare (not safe))
                        (_g119607119660_ _g119608119663_)))))
              (let ()
                (declare (not safe))
                (_g119607119660_ _g119608119663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119607119660_
                                                 _g119608119663_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119607119660_ _g119608119663_)))))
                              (let ()
                                (declare (not safe))
                                (_g119607119660_ _g119608119663_)))))
                      (let ()
                        (declare (not safe))
                        (_g119607119660_ _g119608119663_)))
                  (let ()
                    (declare (not safe))
                    (_g119607119660_ _g119608119663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119607119660_
                                                     _g119608119663_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119607119660_
                                             _g119608119663_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119607119660_ _g119608119663_)))))
                          (let ()
                            (declare (not safe))
                            (_g119607119660_ _g119608119663_)))))
                  (let ()
                    (declare (not safe))
                    (_g119607119660_ _g119608119663_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119606119836_ _L119592_))))
                                         (___kont129332129333_
                                          (lambda (_L119543_ _L119544_)
                                            (let ((__tmp129871
                                                   (let ((__tmp129872
                                                          (let ((__tmp129873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129874
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self119305_ _L119543_))))
                           (declare (not safe))
                           (cons __tmp129874 '()))))
                    (declare (not safe))
                    (cons _L119544_ __tmp129873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129872
                                                           _bind119449_))))
                                              (declare (not safe))
                                              (_lp119446_
                                               _rest119469_
                                               __tmp129871)))))
                                     (let* ((___match129399129400_
                                             (lambda (_e119503119568_
                                                      _hd119502119571_
                                                      _tl119501119573_
                                                      _e119506119576_
                                                      _hd119505119579_
                                                      _tl119504119581_
                                                      _e119509119584_
                                                      _hd119508119587_
                                                      _tl119507119589_)
                                               (let ((_L119592_
                                                      _hd119508119587_)
                                                     (_L119593_
                                                      _hd119505119579_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119593_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L119592_)))
                                                     (___kont129330129331_
                                                      _L119592_
                                                      _L119593_)
                                                     (___kont129332129333_
                                                      _hd119508119587_
                                                      _hd119502119571_)))))
                                            (___match129377129378_
                                             (lambda (_e119492119844_
                                                      _hd119491119847_
                                                      _tl119490119849_
                                                      _e119495119852_
                                                      _hd119494119855_
                                                      _tl119493119857_
                                                      _e119498119860_
                                                      _hd119497119863_
                                                      _tl119496119865_)
                                               (let ((_L119868_
                                                      _hd119497119863_)
                                                     (_L119869_
                                                      _hd119494119855_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119869_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119868_)))
                                                     (___kont129328129329_
                                                      _L119868_
                                                      _L119869_)
                                                     (___match129399129400_
                                                      _e119492119844_
                                                      _hd119491119847_
                                                      _tl119490119849_
                                                      _e119495119852_
                                                      _hd119494119855_
                                                      _tl119493119857_
                                                      _e119498119860_
                                                      _hd119497119863_
                                                      _tl119496119865_)))))
                                            (___match129355129356_
                                             (lambda (_e119481120016_
                                                      _hd119480120019_
                                                      _tl119479120021_
                                                      _e119484120024_
                                                      _hd119483120027_
                                                      _tl119482120029_
                                                      _e119487120032_
                                                      _hd119486120035_
                                                      _tl119485120037_)
                                               (let ((_L120040_
                                                      _hd119486120035_)
                                                     (_L120041_
                                                      _hd119483120027_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120041_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120040_)))
                                                     (___kont129326129327_
                                                      _L120040_
                                                      _L120041_)
                                                     (___match129377129378_
                                                      _e119481120016_
                                                      _hd119480120019_
                                                      _tl119479120021_
                                                      _e119484120024_
                                                      _hd119483120027_
                                                      _tl119482120029_
                                                      _e119487120032_
                                                      _hd119486120035_
                                                      _tl119485120037_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx129324129325_))
                                           (let ((_e119481120016_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx129324129325_))))
                                             (let ((_tl119479120021_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119481120016_)))
                                                   (_hd119480120019_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119481120016_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119480120019_))
                                                   (let ((_e119484120024_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119480120019_))))
                                                     (let ((_tl119482120029_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119484120024_)))
                                                           (_hd119483120027_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119484120024_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119482120029_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119479120021_))
                       (let ((_e119487120032_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119479120021_))))
                         (let ((_tl119485120037_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119487120032_)))
                               (_hd119486120035_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119487120032_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119485120037_))
                               (___match129355129356_
                                _e119481120016_
                                _hd119480120019_
                                _tl119479120021_
                                _e119484120024_
                                _hd119483120027_
                                _tl119482120029_
                                _e119487120032_
                                _hd119486120035_
                                _tl119485120037_)
                               (let ()
                                 (declare (not safe))
                                 (_g119475119522_)))))
                       (let () (declare (not safe)) (_g119475119522_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119479120021_))
                       (let ((_e119517119535_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119479120021_))))
                         (let ((_tl119515119540_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119517119535_)))
                               (_hd119516119538_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119517119535_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119515119540_))
                               (___kont129332129333_
                                _hd119516119538_
                                _hd119480120019_)
                               (let ()
                                 (declare (not safe))
                                 (_g119475119522_)))))
                       (let () (declare (not safe)) (_g119475119522_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119479120021_))
                                                       (let ((_e119517119535_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119479120021_))))
                 (let ((_tl119515119540_
                        (let () (declare (not safe)) (##cdr _e119517119535_)))
                       (_hd119516119538_
                        (let () (declare (not safe)) (##car _e119517119535_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119515119540_))
                       (___kont129332129333_ _hd119516119538_ _hd119480120019_)
                       (let () (declare (not safe)) (_g119475119522_)))))
               (let () (declare (not safe)) (_g119475119522_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119475119522_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119450119458_))
                             (let ((_hd119455120136_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119450119458_)))
                                   (_tl119456120138_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119450119458_))))
                               (let* ((_hd120141_ _hd119455120136_)
                                      (_rest120143_ _tl119456120138_))
                                 (declare (not safe))
                                 (_K119454120133_ _rest120143_ _hd120141_)))
                             (let ()
                               (declare (not safe))
                               (_else119452119466_))))))))
          (let* ((___stx129416129417_ _stx119306_)
                 (_g119312119339_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx129416129417_)))))
            (let ((___kont129418129419_
                   (lambda (_L119399_ _L119400_ _L119401_)
                     (let ((__tmp129876
                            (lambda ()
                              (let ((_hd119438_
                                     (let ((__tmp129877
                                            (let ((__tmp129878
                                                   (lambda (_g119430119433_
                                                            _g119431119435_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g119430119433_
                                                             _g119431119435_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129878
                                                      '()
                                                      _L119400_))))
                                       (declare (not safe))
                                       (_compile-bindings119309_ __tmp129877)))
                                    (_body119439_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self119305_
                                        _L119399_))))
                                (let ((__tmp129879
                                       (let ((__tmp129880
                                              (let ((__tmp129881
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body119439_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd119438_
                                                      __tmp129881))))
                                         (declare (not safe))
                                         (cons _L119401_ __tmp129880))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129879
                                   _stx119306_)))))
                           (__tmp129875
                            (let ((__obj129491
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj129491)
                              __obj129491)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129876
                        gx#current-expander-context
                        __tmp129875))))
                  (___kont129422129423_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self119305_ _stx119306_)))))
              (let ((___match129443129444_
                     (lambda (_e119319119351_
                              _hd119318119354_
                              _tl119317119356_
                              _e119322119359_
                              _hd119321119362_
                              _tl119320119364_
                              ___splice129420129421_
                              _target119323119367_
                              _tl119325119369_)
                       (letrec ((_loop119326119372_
                                 (lambda (_hd119324119375_ _bind119330119377_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119324119375_))
                                       (let ((_e119327119380_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119324119375_))))
                                         (let ((_lp-tl119329119385_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119327119380_)))
                                               (_lp-hd119328119383_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119327119380_))))
                                           (let ((__tmp129884
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119328119383_
                                                          _bind119330119377_))))
                                             (declare (not safe))
                                             (_loop119326119372_
                                              _lp-tl119329119385_
                                              __tmp129884))))
                                       (let ((_bind119331119388_
                                              (reverse _bind119330119377_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119320119364_))
                                             (let ((_e119334119391_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119320119364_))))
                                               (let ((_tl119332119396_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119334119391_)))
                                                     (_hd119333119394_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119334119391_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119332119396_))
                                                     (let ((_L119399_
                                                            _hd119333119394_)
                                                           (_L119400_
                                                            _bind119331119388_)
                                                           (_L119401_
                                                            _hd119318119354_))
                                                       (if (let ((__tmp129882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129883
                                 (lambda (_g119422119425_ _g119423119427_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119422119425_ _g119423119427_)))))
                            (declare (not safe))
                            (foldr1 __tmp129883 '() _L119400_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129882))
                   (___kont129418129419_ _L119399_ _L119400_ _L119401_)
                   (___kont129422129423_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129422129423_))))
                                             (___kont129422129423_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119326119372_ _target119323119367_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx129416129417_))
                    (let ((_e119319119351_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx129416129417_))))
                      (let ((_tl119317119356_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119319119351_)))
                            (_hd119318119354_
                             (let ()
                               (declare (not safe))
                               (##car _e119319119351_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119317119356_))
                            (let ((_e119322119359_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119317119356_))))
                              (let ((_tl119320119364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119322119359_)))
                                    (_hd119321119362_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119322119359_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119321119362_))
                                    (let ((___splice129420129421_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119321119362_
                                              '0))))
                                      (let ((_tl119325119369_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129420129421_
                                                '1)))
                                            (_target119323119367_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129420129421_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119325119369_))
                                            (___match129443129444_
                                             _e119319119351_
                                             _hd119318119354_
                                             _tl119317119356_
                                             _e119322119359_
                                             _hd119321119362_
                                             _tl119320119364_
                                             ___splice129420129421_
                                             _target119323119367_
                                             _tl119325119369_)
                                            (___kont129422129423_))))
                                    (___kont129422129423_))))
                            (___kont129422129423_))))
                    (___kont129422129423_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind119223_)
        (let* ((___stx129446129447_ _bind119223_)
               (_g119226119243_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129446129447_)))))
          (let ((___kont129448129449_
                 (lambda (_L119279_ _L119280_)
                   (if (let () (declare (not safe)) (gx#identifier? _L119280_))
                       (let ((_$e119296_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L119279_))))
                         (if _$e119296_
                             _$e119296_
                             (let ((_$e119299_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L119279_))))
                               (if _$e119299_
                                   _$e119299_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L119279_))))))
                       '#f)))
                (___kont129450129451_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129446129447_))
                (let ((_e119232119255_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129446129447_))))
                  (let ((_tl119230119260_
                         (let () (declare (not safe)) (##cdr _e119232119255_)))
                        (_hd119231119258_
                         (let ()
                           (declare (not safe))
                           (##car _e119232119255_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd119231119258_))
                        (let ((_e119235119263_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd119231119258_))))
                          (let ((_tl119233119268_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e119235119263_)))
                                (_hd119234119266_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e119235119263_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl119233119268_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl119230119260_))
                                    (let ((_e119238119271_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl119230119260_))))
                                      (let ((_tl119236119276_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119238119271_)))
                                            (_hd119237119274_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119238119271_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119236119276_))
                                            (___kont129448129449_
                                             _hd119237119274_
                                             _hd119234119266_)
                                            (___kont129450129451_))))
                                    (___kont129450129451_))
                                (___kont129450129451_))))
                        (___kont129450129451_))))
                (___kont129450129451_))))))))
