(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710140931)
  (begin
    (define gxc#&collect-top-level-type-info::t
      (let ((__tmp129422 (list gxc#&void::t))
            (__tmp129420
             (let ((__tmp129421
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129421 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-top-level-type-info::t
         '&collect-top-level-type-info
         __tmp129422
         '()
         __tmp129420
         '#f)))
    (define gxc#&collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-top-level-type-info::t)))
    (define gxc#make-&collect-top-level-type-info
      (lambda _$args127317_
        (apply make-instance
               gxc#&collect-top-level-type-info::t
               _$args127317_)))
    (define gxc#&collect-top-level-type-info-bind-methods!
      (let ((__tmp129423
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
        (make-promise __tmp129423)))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx127309_)
        (force gxc#&collect-top-level-type-info-bind-methods!)
        (let* ((_self127312_
                (let ((__obj129404
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&collect-top-level-type-info::t))))
                  __obj129404))
               (__tmp129424
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127312_ _stx127309_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129424
           gxc#current-compile-method
           _self127312_))))
    (define gxc#&basic-expression-top-level-type::t
      (let ((__tmp129427 (list gxc#&false::t))
            (__tmp129425
             (let ((__tmp129426
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129426 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&basic-expression-top-level-type::t
         '&basic-expression-top-level-type
         __tmp129427
         '()
         __tmp129425
         '#f)))
    (define gxc#&basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&basic-expression-top-level-type::t)))
    (define gxc#make-&basic-expression-top-level-type
      (lambda _$args127306_
        (apply make-instance
               gxc#&basic-expression-top-level-type::t
               _$args127306_)))
    (define gxc#&basic-expression-top-level-type-bind-methods!
      (let ((__tmp129428
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
        (make-promise __tmp129428)))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx127298_)
        (force gxc#&basic-expression-top-level-type-bind-methods!)
        (let* ((_self127301_
                (let ((__obj129406
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#&basic-expression-top-level-type::t))))
                  __obj129406))
               (__tmp129429
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127301_ _stx127298_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129429
           gxc#current-compile-method
           _self127301_))))
    (define gxc#&collect-type-info::t
      (let ((__tmp129432 (list gxc#&void::t))
            (__tmp129430
             (let ((__tmp129431
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129431 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-type-info::t
         '&collect-type-info
         __tmp129432
         '()
         __tmp129430
         '#f)))
    (define gxc#&collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-type-info::t)))
    (define gxc#make-&collect-type-info
      (lambda _$args127295_
        (apply make-instance gxc#&collect-type-info::t _$args127295_)))
    (define gxc#&collect-type-info-bind-methods!
      (let ((__tmp129433
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
        (make-promise __tmp129433)))
    (define gxc#apply-collect-type-info
      (lambda (_stx127287_)
        (force gxc#&collect-type-info-bind-methods!)
        (let* ((_self127290_
                (let ((__obj129408
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&collect-type-info::t))))
                  __obj129408))
               (__tmp129434
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127290_ _stx127287_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129434
           gxc#current-compile-method
           _self127290_))))
    (define gxc#&basic-expression-type::t
      (let ((__tmp129437 (list gxc#&false::t))
            (__tmp129435
             (let ((__tmp129436
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129436 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&basic-expression-type::t
         '&basic-expression-type
         __tmp129437
         '()
         __tmp129435
         '#f)))
    (define gxc#&basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&basic-expression-type::t)))
    (define gxc#make-&basic-expression-type
      (lambda _$args127284_
        (apply make-instance gxc#&basic-expression-type::t _$args127284_)))
    (define gxc#&basic-expression-type-bind-methods!
      (let ((__tmp129438
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
        (make-promise __tmp129438)))
    (define gxc#apply-basic-expression-type
      (lambda (_stx127276_)
        (force gxc#&basic-expression-type-bind-methods!)
        (let* ((_self127279_
                (let ((__obj129410
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&basic-expression-type::t))))
                  __obj129410))
               (__tmp129439
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127279_ _stx127276_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129439
           gxc#current-compile-method
           _self127279_))))
    (define gxc#&lift-top-lambdas::t
      (let ((__tmp129442 (list gxc#&basic-xform::t))
            (__tmp129440
             (let ((__tmp129441
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129441 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&lift-top-lambdas::t
         '&lift-top-lambdas
         __tmp129442
         '()
         __tmp129440
         '#f)))
    (define gxc#&lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&lift-top-lambdas::t)))
    (define gxc#make-&lift-top-lambdas
      (lambda _$args127273_
        (apply make-instance gxc#&lift-top-lambdas::t _$args127273_)))
    (define gxc#&lift-top-lambdas-bind-methods!
      (let ((__tmp129443
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
        (make-promise __tmp129443)))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx127265_)
        (force gxc#&lift-top-lambdas-bind-methods!)
        (let* ((_self127268_
                (let ((__obj129412
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&lift-top-lambdas::t))))
                  __obj129412))
               (__tmp129444
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127268_ _stx127265_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129444
           gxc#current-compile-method
           _self127268_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self127167_ _stx127168_)
        (let* ((___stx127330127331_ _stx127168_)
               (_g127171127191_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127330127331_)))))
          (let ((___kont127332127333_
                 (lambda (_L127235_ _L127236_)
                   (let ((_sym127254_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127236_))))
                     (if (let ((__tmp129445 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp129445 _sym127254_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym127254_))
                         (let ((_type127255127257_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L127235_))))
                           (if _type127255127257_
                               (let ((_type127260_ _type127255127257_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym127254_
                                  _type127260_))
                               '#f))))))
                (___kont127334127335_ (lambda () '#!void)))
            (let ((___match127363127364_
                   (lambda (_e127177127203_
                            _hd127176127206_
                            _tl127175127208_
                            _e127180127211_
                            _hd127179127214_
                            _tl127178127216_
                            _e127183127219_
                            _hd127182127222_
                            _tl127181127224_
                            _e127186127227_
                            _hd127185127230_
                            _tl127184127232_)
                     (let ((_L127235_ _hd127185127230_)
                           (_L127236_ _hd127182127222_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L127236_))
                           (___kont127332127333_ _L127235_ _L127236_)
                           (___kont127334127335_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127330127331_))
                  (let ((_e127177127203_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127330127331_))))
                    (let ((_tl127175127208_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127177127203_)))
                          (_hd127176127206_
                           (let ()
                             (declare (not safe))
                             (##car _e127177127203_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127175127208_))
                          (let ((_e127180127211_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127175127208_))))
                            (let ((_tl127178127216_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127180127211_)))
                                  (_hd127179127214_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127180127211_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127179127214_))
                                  (let ((_e127183127219_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127179127214_))))
                                    (let ((_tl127181127224_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127183127219_)))
                                          (_hd127182127222_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127183127219_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127181127224_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127178127216_))
                                              (let ((_e127186127227_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127178127216_))))
                                                (let ((_tl127184127232_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127186127227_)))
                                                      (_hd127185127230_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127186127227_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127184127232_))
                                                      (___match127363127364_
                                                       _e127177127203_
                                                       _hd127176127206_
                                                       _tl127175127208_
                                                       _e127180127211_
                                                       _hd127179127214_
                                                       _tl127178127216_
                                                       _e127183127219_
                                                       _hd127182127222_
                                                       _tl127181127224_
                                                       _e127186127227_
                                                       _hd127185127230_
                                                       _tl127184127232_)
                                                      (___kont127334127335_))))
                                              (___kont127334127335_))
                                          (___kont127334127335_))))
                                  (___kont127334127335_))))
                          (___kont127334127335_))))
                  (___kont127334127335_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self127022_ _stx127023_)
        (let* ((___stx127366127367_ _stx127023_)
               (_g127026127057_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127366127367_)))))
          (let ((___kont127368127369_
                 (lambda (_L127139_ _L127140_)
                   (let ((_sym127156_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127140_))))
                     (if (let ((__tmp129446 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp129446 _sym127156_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym127156_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym127156_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym127156_))
                             (let ((_type127157127159_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L127139_))))
                               (if _type127157127159_
                                   (let ((_type127162_ _type127157127159_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym127156_
                                      _type127162_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self127022_ _L127139_)))))
                (___kont127370127371_
                 (lambda (_L127086_ _L127087_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127022_ _L127086_)))))
            (let ((___match127399127400_
                   (lambda (_e127032127107_
                            _hd127031127110_
                            _tl127030127112_
                            _e127035127115_
                            _hd127034127118_
                            _tl127033127120_
                            _e127038127123_
                            _hd127037127126_
                            _tl127036127128_
                            _e127041127131_
                            _hd127040127134_
                            _tl127039127136_)
                     (let ((_L127139_ _hd127040127134_)
                           (_L127140_ _hd127037127126_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L127140_))
                           (___kont127368127369_ _L127139_ _L127140_)
                           (___kont127370127371_
                            _hd127040127134_
                            _hd127034127118_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127366127367_))
                  (let ((_e127032127107_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127366127367_))))
                    (let ((_tl127030127112_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127032127107_)))
                          (_hd127031127110_
                           (let ()
                             (declare (not safe))
                             (##car _e127032127107_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127030127112_))
                          (let ((_e127035127115_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127030127112_))))
                            (let ((_tl127033127120_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127035127115_)))
                                  (_hd127034127118_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127035127115_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127034127118_))
                                  (let ((_e127038127123_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127034127118_))))
                                    (let ((_tl127036127128_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127038127123_)))
                                          (_hd127037127126_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127038127123_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127036127128_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127033127120_))
                                              (let ((_e127041127131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127033127120_))))
                                                (let ((_tl127039127136_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127041127131_)))
                                                      (_hd127040127134_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127041127131_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127039127136_))
                                                      (___match127399127400_
                                                       _e127032127107_
                                                       _hd127031127110_
                                                       _tl127030127112_
                                                       _e127035127115_
                                                       _hd127034127118_
                                                       _tl127033127120_
                                                       _e127038127123_
                                                       _hd127037127126_
                                                       _tl127036127128_
                                                       _e127041127131_
                                                       _hd127040127134_
                                                       _tl127039127136_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127026127057_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127026127057_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127033127120_))
                                              (let ((_e127052127078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127033127120_))))
                                                (let ((_tl127050127083_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127052127078_)))
                                                      (_hd127051127081_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127052127078_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127050127083_))
                                                      (___kont127370127371_
                                                       _hd127051127081_
                                                       _hd127034127118_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127026127057_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127026127057_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127033127120_))
                                      (let ((_e127052127078_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127033127120_))))
                                        (let ((_tl127050127083_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127052127078_)))
                                              (_hd127051127081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127052127078_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127050127083_))
                                              (___kont127370127371_
                                               _hd127051127081_
                                               _hd127034127118_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127026127057_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127026127057_))))))
                          (let () (declare (not safe)) (_g127026127057_)))))
                  (let () (declare (not safe)) (_g127026127057_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self126802_ _stx126803_)
        (letrec ((_collect-e126805_
                  (lambda (_hd126966_ _expr126967_)
                    (let* ((___stx127422127423_ _hd126966_)
                           (_g126970126980_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx127422127423_)))))
                      (let ((___kont127424127425_
                             (lambda (_L127000_)
                               (let ((_sym127011_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L127000_))))
                                 (if (let ((__tmp129447
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp129447 _sym127011_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym127011_))
                                     (let ((_type127012127014_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr126967_))))
                                       (if _type127012127014_
                                           (let ((_type127017_
                                                  _type127012127014_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym127011_
                                              _type127017_
                                              '#t))
                                           '#f))))))
                            (___kont127426127427_ (lambda () '#!void)))
                        (let ((___match127435127436_
                               (lambda (_e126975126992_
                                        _hd126974126995_
                                        _tl126973126997_)
                                 (let ((_L127000_ _hd126974126995_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L127000_))
                                       (___kont127424127425_ _L127000_)
                                       (___kont127426127427_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx127422127423_))
                              (let ((_e126975126992_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx127422127423_))))
                                (let ((_tl126973126997_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126975126992_)))
                                      (_hd126974126995_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126975126992_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126973126997_))
                                      (___match127435127436_
                                       _e126975126992_
                                       _hd126974126995_
                                       _tl126973126997_)
                                      (___kont127426127427_))))
                              (___kont127426127427_))))))))
          (let* ((_g126807126842_
                  (lambda (_g126808126839_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126808126839_))))
                 (_g126806126963_
                  (lambda (_g126808126845_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126808126845_))
                        (let ((_e126814126847_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126808126845_))))
                          (let ((_hd126813126850_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126814126847_)))
                                (_tl126812126852_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126814126847_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126812126852_))
                                (let ((_e126817126855_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126812126852_))))
                                  (let ((_hd126816126858_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126817126855_)))
                                        (_tl126815126860_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126817126855_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126816126858_))
                                        (let ((_g129448_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126816126858_
                                                  '0))))
                                          (begin
                                            (let ((_g129449_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g129448_)
                                                         (##vector-length
                                                          _g129448_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g129449_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g129449_)))
                                            (let ((_target126818126863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129448_
                                                      0)))
                                                  (_tl126820126865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129448_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126820126865_))
                                                  (letrec ((_loop126821126868_
                                                            (lambda (_hd126819126871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126825126873_
                             _hd126826126875_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126819126871_))
                          (let ((_e126822126878_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126819126871_))))
                            (let ((_lp-hd126823126881_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126822126878_)))
                                  (_lp-tl126824126883_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126822126878_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126823126881_))
                                  (let ((_e126831126886_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126823126881_))))
                                    (let ((_hd126830126889_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126831126886_)))
                                          (_tl126829126891_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126831126886_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126829126891_))
                                          (let ((_e126834126894_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126829126891_))))
                                            (let ((_hd126833126897_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126834126894_)))
                                                  (_tl126832126899_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126834126894_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126832126899_))
                                                  (let ((__tmp129454
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126833126897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126825126873_)))
                (__tmp129453
                 (let ()
                   (declare (not safe))
                   (cons _hd126830126889_ _hd126826126875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126821126868_
                                                     _lp-tl126824126883_
                                                     __tmp129454
                                                     __tmp129453))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126807126842_
                                                     _g126808126845_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126807126842_
                                             _g126808126845_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126807126842_ _g126808126845_)))))
                          (let ((_expr126827126902_
                                 (reverse _expr126825126873_))
                                (_hd126828126904_ (reverse _hd126826126875_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126815126860_))
                                (let ((_e126837126907_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126815126860_))))
                                  (let ((_hd126836126910_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126837126907_)))
                                        (_tl126835126912_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126837126907_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126835126912_))
                                        ((lambda (_L126915_
                                                  _L126916_
                                                  _L126917_)
                                           (for-each
                                            _collect-e126805_
                                            (let ((__tmp129450
                                                   (lambda (_g126937126940_
                                                            _g126938126942_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126937126940_
                                                             _g126938126942_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129450
                                                      '()
                                                      _L126917_))
                                            (let ((__tmp129451
                                                   (lambda (_g126944126947_
                                                            _g126945126949_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126944126947_
                                                             _g126945126949_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129451
                                                      '()
                                                      _L126916_)))
                                           (for-each
                                            (lambda (_g126951126953_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self126802_
                                                 _g126951126953_)))
                                            (let ((__tmp129452
                                                   (lambda (_g126955126958_
                                                            _g126956126960_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126955126958_
                                                             _g126956126960_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129452
                                                      '()
                                                      _L126916_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self126802_
                                              _L126915_)))
                                         _hd126836126910_
                                         _expr126827126902_
                                         _hd126828126904_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126807126842_ _g126808126845_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126807126842_ _g126808126845_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126821126868_
                                                       _target126818126863_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126807126842_
                                                     _g126808126845_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126807126842_ _g126808126845_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126807126842_ _g126808126845_)))))
                        (let ()
                          (declare (not safe))
                          (_g126807126842_ _g126808126845_))))))
            (declare (not safe))
            (_g126806126963_ _stx126803_)))))
    (define gxc#collect-type-call%
      (lambda (_self126289_ _stx126290_)
        (let* ((___stx127438127439_ _stx126290_)
               (_g126294126409_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127438127439_)))))
          (let ((___kont127440127441_
                 (lambda (_L126752_ _L126753_ _L126754_ _L126755_ _L126756_)
                   (let ((__tmp129458
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126755_)))
                         (__tmp129457
                          (let () (declare (not safe)) (gx#stx-e _L126754_)))
                         (__tmp129456
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126753_)))
                         (__tmp129455
                          (let () (declare (not safe)) (gx#stx-e _L126752_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp129458
                      __tmp129457
                      __tmp129456
                      __tmp129455))))
                (___kont127442127443_
                 (lambda (_L126580_ _L126581_ _L126582_ _L126583_)
                   (let ((__tmp129461
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126582_)))
                         (__tmp129460
                          (let () (declare (not safe)) (gx#stx-e _L126581_)))
                         (__tmp129459
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126580_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp129461
                      __tmp129460
                      __tmp129459
                      '#f))))
                (___kont127444127445_
                 (lambda (_L126446_)
                   (for-each
                    (lambda (_g126459126461_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self126289_ _g126459126461_)))
                    (let ((__tmp129462
                           (lambda (_g126463126466_ _g126464126468_)
                             (let ()
                               (declare (not safe))
                               (cons _g126463126466_ _g126464126468_)))))
                      (declare (not safe))
                      (foldr1 __tmp129462 '() _L126446_))))))
            (let* ((___match127695127696_
                    (lambda (_e126395126414_
                             _hd126394126417_
                             _tl126393126419_
                             ___splice127446127447_
                             _target126396126422_
                             _tl126398126424_)
                      (letrec ((_loop126399126427_
                                (lambda (_hd126397126430_ _expr126403126432_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126397126430_))
                                      (let ((_e126400126435_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126397126430_))))
                                        (let ((_lp-tl126402126440_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126400126435_)))
                                              (_lp-hd126401126438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126400126435_))))
                                          (let ((__tmp129463
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd126401126438_
                                                         _expr126403126432_))))
                                            (declare (not safe))
                                            (_loop126399126427_
                                             _lp-tl126402126440_
                                             __tmp129463))))
                                      (let ((_expr126404126443_
                                             (reverse _expr126403126432_)))
                                        (___kont127444127445_
                                         _expr126404126443_))))))
                        (let ()
                          (declare (not safe))
                          (_loop126399126427_ _target126396126422_ '())))))
                   (___match127575127576_
                    (lambda (_e126303126624_
                             _hd126302126627_
                             _tl126301126629_
                             _e126306126632_
                             _hd126305126635_
                             _tl126304126637_
                             _e126309126640_
                             _hd126308126643_
                             _tl126307126645_
                             _e126312126648_
                             _hd126311126651_
                             _tl126310126653_
                             _e126315126656_
                             _hd126314126659_
                             _tl126313126661_
                             _e126318126664_
                             _hd126317126667_
                             _tl126316126669_
                             _e126321126672_
                             _hd126320126675_
                             _tl126319126677_
                             _e126324126680_
                             _hd126323126683_
                             _tl126322126685_
                             _e126327126688_
                             _hd126326126691_
                             _tl126325126693_
                             _e126330126696_
                             _hd126329126699_
                             _tl126328126701_
                             _e126333126704_
                             _hd126332126707_
                             _tl126331126709_
                             _e126336126712_
                             _hd126335126715_
                             _tl126334126717_
                             _e126339126720_
                             _hd126338126723_
                             _tl126337126725_
                             _e126342126728_
                             _hd126341126731_
                             _tl126340126733_
                             _e126345126736_
                             _hd126344126739_
                             _tl126343126741_
                             _e126348126744_
                             _hd126347126747_
                             _tl126346126749_)
                      (let ((_L126752_ _hd126347126747_)
                            (_L126753_ _hd126338126723_)
                            (_L126754_ _hd126329126699_)
                            (_L126755_ _hd126320126675_)
                            (_L126756_ _hd126311126651_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126756_
                               'bind-method!))
                            (___kont127440127441_
                             _L126752_
                             _L126753_
                             _L126754_
                             _L126755_
                             _L126756_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl126301126629_))
                                (let ((___splice127446127447_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl126301126629_
                                          '0))))
                                  (let ((_tl126398126424_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice127446127447_
                                            '1)))
                                        (_target126396126422_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice127446127447_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126398126424_))
                                        (___match127695127696_
                                         _e126303126624_
                                         _hd126302126627_
                                         _tl126301126629_
                                         ___splice127446127447_
                                         _target126396126422_
                                         _tl126398126424_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126294126409_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126294126409_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127438127439_))
                  (let ((_e126303126624_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127438127439_))))
                    (let ((_tl126301126629_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126303126624_)))
                          (_hd126302126627_
                           (let ()
                             (declare (not safe))
                             (##car _e126303126624_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126301126629_))
                          (let ((_e126306126632_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126301126629_))))
                            (let ((_tl126304126637_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126306126632_)))
                                  (_hd126305126635_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126306126632_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126305126635_))
                                  (let ((_e126309126640_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126305126635_))))
                                    (let ((_tl126307126645_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126309126640_)))
                                          (_hd126308126643_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126309126640_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd126308126643_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd126308126643_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126307126645_))
                                                  (let ((_e126312126648_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126307126645_))))
                                                    (let ((_tl126310126653_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126312126648_)))
                                                          (_hd126311126651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126312126648_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126310126653_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl126304126637_))
                      (let ((_e126315126656_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126304126637_))))
                        (let ((_tl126313126661_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126315126656_)))
                              (_hd126314126659_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126315126656_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd126314126659_))
                              (let ((_e126318126664_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd126314126659_))))
                                (let ((_tl126316126669_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126318126664_)))
                                      (_hd126317126667_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126318126664_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd126317126667_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd126317126667_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126316126669_))
                                              (let ((_e126321126672_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126316126669_))))
                                                (let ((_tl126319126677_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126321126672_)))
                                                      (_hd126320126675_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126321126672_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126319126677_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126313126661_))
                                                          (let ((_e126324126680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126313126661_))))
                    (let ((_tl126322126685_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126324126680_)))
                          (_hd126323126683_
                           (let ()
                             (declare (not safe))
                             (##car _e126324126680_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126323126683_))
                          (let ((_e126327126688_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126323126683_))))
                            (let ((_tl126325126693_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126327126688_)))
                                  (_hd126326126691_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126327126688_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126326126691_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd126326126691_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126325126693_))
                                          (let ((_e126330126696_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126325126693_))))
                                            (let ((_tl126328126701_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126330126696_)))
                                                  (_hd126329126699_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126330126696_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126328126701_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126322126685_))
                                                      (let ((_e126333126704_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126322126685_))))
                (let ((_tl126331126709_
                       (let () (declare (not safe)) (##cdr _e126333126704_)))
                      (_hd126332126707_
                       (let () (declare (not safe)) (##car _e126333126704_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126332126707_))
                      (let ((_e126336126712_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126332126707_))))
                        (let ((_tl126334126717_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126336126712_)))
                              (_hd126335126715_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126336126712_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126335126715_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd126335126715_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126334126717_))
                                      (let ((_e126339126720_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126334126717_))))
                                        (let ((_tl126337126725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126339126720_)))
                                              (_hd126338126723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126339126720_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126337126725_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126331126709_))
                                                  (let ((_e126342126728_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126331126709_))))
                                                    (let ((_tl126340126733_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126342126728_)))
                                                          (_hd126341126731_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126342126728_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126341126731_))
                                                          (let ((_e126345126736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126341126731_))))
                    (let ((_tl126343126741_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126345126736_)))
                          (_hd126344126739_
                           (let ()
                             (declare (not safe))
                             (##car _e126345126736_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126344126739_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd126344126739_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126343126741_))
                                  (let ((_e126348126744_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126343126741_))))
                                    (let ((_tl126346126749_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126348126744_)))
                                          (_hd126347126747_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126348126744_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126346126749_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126340126733_))
                                              (___match127575127576_
                                               _e126303126624_
                                               _hd126302126627_
                                               _tl126301126629_
                                               _e126306126632_
                                               _hd126305126635_
                                               _tl126304126637_
                                               _e126309126640_
                                               _hd126308126643_
                                               _tl126307126645_
                                               _e126312126648_
                                               _hd126311126651_
                                               _tl126310126653_
                                               _e126315126656_
                                               _hd126314126659_
                                               _tl126313126661_
                                               _e126318126664_
                                               _hd126317126667_
                                               _tl126316126669_
                                               _e126321126672_
                                               _hd126320126675_
                                               _tl126319126677_
                                               _e126324126680_
                                               _hd126323126683_
                                               _tl126322126685_
                                               _e126327126688_
                                               _hd126326126691_
                                               _tl126325126693_
                                               _e126330126696_
                                               _hd126329126699_
                                               _tl126328126701_
                                               _e126333126704_
                                               _hd126332126707_
                                               _tl126331126709_
                                               _e126336126712_
                                               _hd126335126715_
                                               _tl126334126717_
                                               _e126339126720_
                                               _hd126338126723_
                                               _tl126337126725_
                                               _e126342126728_
                                               _hd126341126731_
                                               _tl126340126733_
                                               _e126345126736_
                                               _hd126344126739_
                                               _tl126343126741_
                                               _e126348126744_
                                               _hd126347126747_
                                               _tl126346126749_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126301126629_))
                                                  (let ((___splice127446127447_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126301126629_
                                                            '0))))
                                                    (let ((_tl126398126424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127446127447_
                                                              '1)))
                                                          (_target126396126422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127446127447_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126398126424_))
                                                          (___match127695127696_
                                                           _e126303126624_
                                                           _hd126302126627_
                                                           _tl126301126629_
                                                           ___splice127446127447_
                                                           _target126396126422_
                                                           _tl126398126424_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126294126409_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126294126409_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126301126629_))
                                              (let ((___splice127446127447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126301126629_
                                                        '0))))
                                                (let ((_tl126398126424_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127446127447_
                                                          '1)))
                                                      (_target126396126422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127446127447_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126398126424_))
                                                      (___match127695127696_
                                                       _e126303126624_
                                                       _hd126302126627_
                                                       _tl126301126629_
                                                       ___splice127446127447_
                                                       _target126396126422_
                                                       _tl126398126424_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126294126409_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126294126409_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126301126629_))
                                      (let ((___splice127446127447_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126301126629_
                                                '0))))
                                        (let ((_tl126398126424_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127446127447_
                                                  '1)))
                                              (_target126396126422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127446127447_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126398126424_))
                                              (___match127695127696_
                                               _e126303126624_
                                               _hd126302126627_
                                               _tl126301126629_
                                               ___splice127446127447_
                                               _target126396126422_
                                               _tl126398126424_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126294126409_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126294126409_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl126301126629_))
                                  (let ((___splice127446127447_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl126301126629_
                                            '0))))
                                    (let ((_tl126398126424_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127446127447_
                                              '1)))
                                          (_target126396126422_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127446127447_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126398126424_))
                                          (___match127695127696_
                                           _e126303126624_
                                           _hd126302126627_
                                           _tl126301126629_
                                           ___splice127446127447_
                                           _target126396126422_
                                           _tl126398126424_)
                                          (let ()
                                            (declare (not safe))
                                            (_g126294126409_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126294126409_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl126301126629_))
                              (let ((___splice127446127447_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl126301126629_
                                        '0))))
                                (let ((_tl126398126424_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127446127447_
                                          '1)))
                                      (_target126396126422_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127446127447_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126398126424_))
                                      (___match127695127696_
                                       _e126303126624_
                                       _hd126302126627_
                                       _tl126301126629_
                                       ___splice127446127447_
                                       _target126396126422_
                                       _tl126398126424_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126294126409_)))))
                              (let ()
                                (declare (not safe))
                                (_g126294126409_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126301126629_))
                      (let ((___splice127446127447_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126301126629_ '0))))
                        (let ((_tl126398126424_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127446127447_ '1)))
                              (_target126396126422_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127446127447_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126398126424_))
                              (___match127695127696_
                               _e126303126624_
                               _hd126302126627_
                               _tl126301126629_
                               ___splice127446127447_
                               _target126396126422_
                               _tl126398126424_)
                              (let ()
                                (declare (not safe))
                                (_g126294126409_)))))
                      (let () (declare (not safe)) (_g126294126409_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126331126709_))
                                                      (if (let ((__tmp129464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp129464 'bind-method!))
                  (let ((_L126580_ _hd126338126723_)
                        (_L126581_ _hd126329126699_)
                        (_L126582_ _hd126320126675_)
                        (_L126583_ _hd126311126651_))
                    (___kont127442127443_
                     _L126580_
                     _L126581_
                     _L126582_
                     _L126583_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126301126629_))
                      (let ((___splice127446127447_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126301126629_ '0))))
                        (let ((_tl126398126424_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127446127447_ '1)))
                              (_target126396126422_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127446127447_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126398126424_))
                              (___match127695127696_
                               _e126303126624_
                               _hd126302126627_
                               _tl126301126629_
                               ___splice127446127447_
                               _target126396126422_
                               _tl126398126424_)
                              (let ()
                                (declare (not safe))
                                (_g126294126409_)))))
                      (let () (declare (not safe)) (_g126294126409_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl126301126629_))
                  (let ((___splice127446127447_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl126301126629_ '0))))
                    (let ((_tl126398126424_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127446127447_ '1)))
                          (_target126396126422_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127446127447_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126398126424_))
                          (___match127695127696_
                           _e126303126624_
                           _hd126302126627_
                           _tl126301126629_
                           ___splice127446127447_
                           _target126396126422_
                           _tl126398126424_)
                          (let () (declare (not safe)) (_g126294126409_)))))
                  (let () (declare (not safe)) (_g126294126409_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126301126629_))
                                                  (let ((___splice127446127447_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126301126629_
                                                            '0))))
                                                    (let ((_tl126398126424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127446127447_
                                                              '1)))
                                                          (_target126396126422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127446127447_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126398126424_))
                                                          (___match127695127696_
                                                           _e126303126624_
                                                           _hd126302126627_
                                                           _tl126301126629_
                                                           ___splice127446127447_
                                                           _target126396126422_
                                                           _tl126398126424_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126294126409_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126294126409_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl126301126629_))
                                          (let ((___splice127446127447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl126301126629_
                                                    '0))))
                                            (let ((_tl126398126424_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127446127447_
                                                      '1)))
                                                  (_target126396126422_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127446127447_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126398126424_))
                                                  (___match127695127696_
                                                   _e126303126624_
                                                   _hd126302126627_
                                                   _tl126301126629_
                                                   ___splice127446127447_
                                                   _target126396126422_
                                                   _tl126398126424_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126294126409_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126294126409_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126301126629_))
                                      (let ((___splice127446127447_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126301126629_
                                                '0))))
                                        (let ((_tl126398126424_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127446127447_
                                                  '1)))
                                              (_target126396126422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127446127447_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126398126424_))
                                              (___match127695127696_
                                               _e126303126624_
                                               _hd126302126627_
                                               _tl126301126629_
                                               ___splice127446127447_
                                               _target126396126422_
                                               _tl126398126424_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126294126409_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126294126409_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl126301126629_))
                                  (let ((___splice127446127447_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl126301126629_
                                            '0))))
                                    (let ((_tl126398126424_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127446127447_
                                              '1)))
                                          (_target126396126422_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127446127447_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126398126424_))
                                          (___match127695127696_
                                           _e126303126624_
                                           _hd126302126627_
                                           _tl126301126629_
                                           ___splice127446127447_
                                           _target126396126422_
                                           _tl126398126424_)
                                          (let ()
                                            (declare (not safe))
                                            (_g126294126409_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126294126409_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl126301126629_))
                          (let ((___splice127446127447_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl126301126629_
                                    '0))))
                            (let ((_tl126398126424_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127446127447_ '1)))
                                  (_target126396126422_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127446127447_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126398126424_))
                                  (___match127695127696_
                                   _e126303126624_
                                   _hd126302126627_
                                   _tl126301126629_
                                   ___splice127446127447_
                                   _target126396126422_
                                   _tl126398126424_)
                                  (let ()
                                    (declare (not safe))
                                    (_g126294126409_)))))
                          (let () (declare (not safe)) (_g126294126409_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl126301126629_))
                  (let ((___splice127446127447_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl126301126629_ '0))))
                    (let ((_tl126398126424_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127446127447_ '1)))
                          (_target126396126422_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127446127447_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126398126424_))
                          (___match127695127696_
                           _e126303126624_
                           _hd126302126627_
                           _tl126301126629_
                           ___splice127446127447_
                           _target126396126422_
                           _tl126398126424_)
                          (let () (declare (not safe)) (_g126294126409_)))))
                  (let () (declare (not safe)) (_g126294126409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl126301126629_))
                                                      (let ((___splice127446127447_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl126301126629_ '0))))
                (let ((_tl126398126424_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127446127447_ '1)))
                      (_target126396126422_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127446127447_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl126398126424_))
                      (___match127695127696_
                       _e126303126624_
                       _hd126302126627_
                       _tl126301126629_
                       ___splice127446127447_
                       _target126396126422_
                       _tl126398126424_)
                      (let () (declare (not safe)) (_g126294126409_)))))
              (let () (declare (not safe)) (_g126294126409_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126301126629_))
                                              (let ((___splice127446127447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126301126629_
                                                        '0))))
                                                (let ((_tl126398126424_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127446127447_
                                                          '1)))
                                                      (_target126396126422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127446127447_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126398126424_))
                                                      (___match127695127696_
                                                       _e126303126624_
                                                       _hd126302126627_
                                                       _tl126301126629_
                                                       ___splice127446127447_
                                                       _target126396126422_
                                                       _tl126398126424_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126294126409_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126294126409_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl126301126629_))
                                          (let ((___splice127446127447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl126301126629_
                                                    '0))))
                                            (let ((_tl126398126424_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127446127447_
                                                      '1)))
                                                  (_target126396126422_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127446127447_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126398126424_))
                                                  (___match127695127696_
                                                   _e126303126624_
                                                   _hd126302126627_
                                                   _tl126301126629_
                                                   ___splice127446127447_
                                                   _target126396126422_
                                                   _tl126398126424_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126294126409_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126294126409_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126301126629_))
                                      (let ((___splice127446127447_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126301126629_
                                                '0))))
                                        (let ((_tl126398126424_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127446127447_
                                                  '1)))
                                              (_target126396126422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127446127447_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126398126424_))
                                              (___match127695127696_
                                               _e126303126624_
                                               _hd126302126627_
                                               _tl126301126629_
                                               ___splice127446127447_
                                               _target126396126422_
                                               _tl126398126424_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126294126409_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126294126409_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl126301126629_))
                              (let ((___splice127446127447_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl126301126629_
                                        '0))))
                                (let ((_tl126398126424_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127446127447_
                                          '1)))
                                      (_target126396126422_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127446127447_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126398126424_))
                                      (___match127695127696_
                                       _e126303126624_
                                       _hd126302126627_
                                       _tl126301126629_
                                       ___splice127446127447_
                                       _target126396126422_
                                       _tl126398126424_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126294126409_)))))
                              (let ()
                                (declare (not safe))
                                (_g126294126409_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126301126629_))
                      (let ((___splice127446127447_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126301126629_ '0))))
                        (let ((_tl126398126424_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127446127447_ '1)))
                              (_target126396126422_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127446127447_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126398126424_))
                              (___match127695127696_
                               _e126303126624_
                               _hd126302126627_
                               _tl126301126629_
                               ___splice127446127447_
                               _target126396126422_
                               _tl126398126424_)
                              (let ()
                                (declare (not safe))
                                (_g126294126409_)))))
                      (let () (declare (not safe)) (_g126294126409_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl126301126629_))
                  (let ((___splice127446127447_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl126301126629_ '0))))
                    (let ((_tl126398126424_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127446127447_ '1)))
                          (_target126396126422_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127446127447_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126398126424_))
                          (___match127695127696_
                           _e126303126624_
                           _hd126302126627_
                           _tl126301126629_
                           ___splice127446127447_
                           _target126396126422_
                           _tl126398126424_)
                          (let () (declare (not safe)) (_g126294126409_)))))
                  (let () (declare (not safe)) (_g126294126409_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126301126629_))
                                                  (let ((___splice127446127447_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126301126629_
                                                            '0))))
                                                    (let ((_tl126398126424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127446127447_
                                                              '1)))
                                                          (_target126396126422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127446127447_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126398126424_))
                                                          (___match127695127696_
                                                           _e126303126624_
                                                           _hd126302126627_
                                                           _tl126301126629_
                                                           ___splice127446127447_
                                                           _target126396126422_
                                                           _tl126398126424_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126294126409_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126294126409_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126301126629_))
                                              (let ((___splice127446127447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126301126629_
                                                        '0))))
                                                (let ((_tl126398126424_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127446127447_
                                                          '1)))
                                                      (_target126396126422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127446127447_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126398126424_))
                                                      (___match127695127696_
                                                       _e126303126624_
                                                       _hd126302126627_
                                                       _tl126301126629_
                                                       ___splice127446127447_
                                                       _target126396126422_
                                                       _tl126398126424_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126294126409_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126294126409_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl126301126629_))
                                          (let ((___splice127446127447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl126301126629_
                                                    '0))))
                                            (let ((_tl126398126424_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127446127447_
                                                      '1)))
                                                  (_target126396126422_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127446127447_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126398126424_))
                                                  (___match127695127696_
                                                   _e126303126624_
                                                   _hd126302126627_
                                                   _tl126301126629_
                                                   ___splice127446127447_
                                                   _target126396126422_
                                                   _tl126398126424_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126294126409_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126294126409_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl126301126629_))
                                  (let ((___splice127446127447_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl126301126629_
                                            '0))))
                                    (let ((_tl126398126424_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127446127447_
                                              '1)))
                                          (_target126396126422_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127446127447_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126398126424_))
                                          (___match127695127696_
                                           _e126303126624_
                                           _hd126302126627_
                                           _tl126301126629_
                                           ___splice127446127447_
                                           _target126396126422_
                                           _tl126398126424_)
                                          (let ()
                                            (declare (not safe))
                                            (_g126294126409_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126294126409_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl126301126629_))
                          (let ((___splice127446127447_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl126301126629_
                                    '0))))
                            (let ((_tl126398126424_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127446127447_ '1)))
                                  (_target126396126422_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127446127447_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126398126424_))
                                  (___match127695127696_
                                   _e126303126624_
                                   _hd126302126627_
                                   _tl126301126629_
                                   ___splice127446127447_
                                   _target126396126422_
                                   _tl126398126424_)
                                  (let ()
                                    (declare (not safe))
                                    (_g126294126409_)))))
                          (let () (declare (not safe)) (_g126294126409_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126301126629_))
                      (let ((___splice127446127447_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126301126629_ '0))))
                        (let ((_tl126398126424_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127446127447_ '1)))
                              (_target126396126422_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127446127447_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126398126424_))
                              (___match127695127696_
                               _e126303126624_
                               _hd126302126627_
                               _tl126301126629_
                               ___splice127446127447_
                               _target126396126422_
                               _tl126398126424_)
                              (let ()
                                (declare (not safe))
                                (_g126294126409_)))))
                      (let () (declare (not safe)) (_g126294126409_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl126301126629_))
                                                      (let ((___splice127446127447_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl126301126629_ '0))))
                (let ((_tl126398126424_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127446127447_ '1)))
                      (_target126396126422_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127446127447_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl126398126424_))
                      (___match127695127696_
                       _e126303126624_
                       _hd126302126627_
                       _tl126301126629_
                       ___splice127446127447_
                       _target126396126422_
                       _tl126398126424_)
                      (let () (declare (not safe)) (_g126294126409_)))))
              (let () (declare (not safe)) (_g126294126409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126301126629_))
                                                  (let ((___splice127446127447_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126301126629_
                                                            '0))))
                                                    (let ((_tl126398126424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127446127447_
                                                              '1)))
                                                          (_target126396126422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127446127447_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126398126424_))
                                                          (___match127695127696_
                                                           _e126303126624_
                                                           _hd126302126627_
                                                           _tl126301126629_
                                                           ___splice127446127447_
                                                           _target126396126422_
                                                           _tl126398126424_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126294126409_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126294126409_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126301126629_))
                                              (let ((___splice127446127447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126301126629_
                                                        '0))))
                                                (let ((_tl126398126424_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127446127447_
                                                          '1)))
                                                      (_target126396126422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127446127447_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126398126424_))
                                                      (___match127695127696_
                                                       _e126303126624_
                                                       _hd126302126627_
                                                       _tl126301126629_
                                                       ___splice127446127447_
                                                       _target126396126422_
                                                       _tl126398126424_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126294126409_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126294126409_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126301126629_))
                                      (let ((___splice127446127447_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126301126629_
                                                '0))))
                                        (let ((_tl126398126424_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127446127447_
                                                  '1)))
                                              (_target126396126422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127446127447_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126398126424_))
                                              (___match127695127696_
                                               _e126303126624_
                                               _hd126302126627_
                                               _tl126301126629_
                                               ___splice127446127447_
                                               _target126396126422_
                                               _tl126398126424_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126294126409_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126294126409_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl126301126629_))
                              (let ((___splice127446127447_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl126301126629_
                                        '0))))
                                (let ((_tl126398126424_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127446127447_
                                          '1)))
                                      (_target126396126422_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127446127447_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126398126424_))
                                      (___match127695127696_
                                       _e126303126624_
                                       _hd126302126627_
                                       _tl126301126629_
                                       ___splice127446127447_
                                       _target126396126422_
                                       _tl126398126424_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126294126409_)))))
                              (let ()
                                (declare (not safe))
                                (_g126294126409_))))))
                  (let () (declare (not safe)) (_g126294126409_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self126228_ _stx126229_)
        (let* ((___stx127698127699_ _stx126229_)
               (_g126232126245_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127698127699_)))))
          (let ((___kont127700127701_
                 (lambda (_L126273_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self126228_ _L126273_))))
                (___kont127702127703_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127698127699_))
                (let ((_e126237126257_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127698127699_))))
                  (let ((_tl126235126262_
                         (let () (declare (not safe)) (##cdr _e126237126257_)))
                        (_hd126236126260_
                         (let ()
                           (declare (not safe))
                           (##car _e126237126257_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl126235126262_))
                        (let ((_e126240126265_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl126235126262_))))
                          (let ((_tl126238126270_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126240126265_)))
                                (_hd126239126268_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126240126265_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl126238126270_))
                                (___kont127700127701_ _hd126239126268_)
                                (___kont127702127703_))))
                        (___kont127702127703_))))
                (___kont127702127703_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self126107_ _stx126108_)
        (let* ((_g126110126127_
                (lambda (_g126111126124_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126111126124_))))
               (_g126109126225_
                (lambda (_g126111126130_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126111126130_))
                      (let ((_e126116126132_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126111126130_))))
                        (let ((_hd126115126135_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126116126132_)))
                              (_tl126114126137_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126116126132_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126114126137_))
                              (let ((_e126119126140_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126114126137_))))
                                (let ((_hd126118126143_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126119126140_)))
                                      (_tl126117126145_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126119126140_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126117126145_))
                                      (let ((_e126122126148_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126117126145_))))
                                        (let ((_hd126121126151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126122126148_)))
                                              (_tl126120126153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126122126148_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126120126153_))
                                              ((lambda (_L126156_ _L126157_)
                                                 (let* ((___stx127720127721_
                                                         _L126157_)
                                                        (_g126173126184_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127720127721_)))))
                                                   (let ((___kont127722127723_
                                                          (lambda (_L126204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L126205_)
                    (let ((_$e126217_
                           (let ((__tmp129465
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L126205_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp129465))))
                      (if _$e126217_
                          ((lambda (_type-e126220_)
                             (_type-e126220_ _stx126108_ _L126157_))
                           _$e126217_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self126107_ _L126156_))))))
                 (___kont127724127725_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self126107_ _L126156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127731127732_
                                                            (lambda (_e126179126196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd126178126199_
                             _tl126177126201_)
                      (let ((_L126204_ _tl126177126201_)
                            (_L126205_ _hd126178126199_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L126205_))
                            (___kont127722127723_ _L126204_ _L126205_)
                            (___kont127724127725_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127720127721_))
                   (let ((_e126179126196_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127720127721_))))
                     (let ((_tl126177126201_
                            (let ()
                              (declare (not safe))
                              (##cdr _e126179126196_)))
                           (_hd126178126199_
                            (let ()
                              (declare (not safe))
                              (##car _e126179126196_))))
                       (___match127731127732_
                        _e126179126196_
                        _hd126178126199_
                        _tl126177126201_)))
                   (___kont127724127725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd126121126151_
                                               _hd126118126143_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126110126127_
                                                 _g126111126130_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126110126127_ _g126111126130_)))))
                              (let ()
                                (declare (not safe))
                                (_g126110126127_ _g126111126130_)))))
                      (let ()
                        (declare (not safe))
                        (_g126110126127_ _g126111126130_))))))
          (declare (not safe))
          (_g126109126225_ _stx126108_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx125951_ _ann125952_)
        (let* ((_g125954125991_
                (lambda (_g125955125988_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125955125988_))))
               (_g125953126104_
                (lambda (_g125955125994_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125955125994_))
                      (let ((_e125965125996_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125955125994_))))
                        (let ((_hd125964125999_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125965125996_)))
                              (_tl125963126001_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125965125996_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125963126001_))
                              (let ((_e125968126004_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125963126001_))))
                                (let ((_hd125967126007_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125968126004_)))
                                      (_tl125966126009_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125968126004_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125966126009_))
                                      (let ((_e125971126012_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125966126009_))))
                                        (let ((_hd125970126015_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125971126012_)))
                                              (_tl125969126017_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125971126012_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125969126017_))
                                              (let ((_e125974126020_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125969126017_))))
                                                (let ((_hd125973126023_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125974126020_)))
                                                      (_tl125972126025_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125974126020_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125972126025_))
                                                      (let ((_e125977126028_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125972126025_))))
                (let ((_hd125976126031_
                       (let () (declare (not safe)) (##car _e125977126028_)))
                      (_tl125975126033_
                       (let () (declare (not safe)) (##cdr _e125977126028_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl125975126033_))
                      (let ((_e125980126036_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125975126033_))))
                        (let ((_hd125979126039_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125980126036_)))
                              (_tl125978126041_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125980126036_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125978126041_))
                              (let ((_e125983126044_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125978126041_))))
                                (let ((_hd125982126047_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125983126044_)))
                                      (_tl125981126049_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125983126044_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125981126049_))
                                      (let ((_e125986126052_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125981126049_))))
                                        (let ((_hd125985126055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125986126052_)))
                                              (_tl125984126057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125986126052_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125984126057_))
                                              ((lambda (_L126060_
                                                        _L126061_
                                                        _L126062_
                                                        _L126063_
                                                        _L126064_
                                                        _L126065_
                                                        _L126066_)
                                                 (let ((_type-id126096_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126066_)))
                                                       (_super126097_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L126065_)))
                                                       (_slots126098_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L126064_)))
                                                       (_ctor-method126099_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126063_)))
                                                       (_struct?126100_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126062_)))
                                                       (_final?126101_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126061_)))
                                                       (_metaclass126102_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L126060_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L126060_))
                                                            '#f)))
                                                   (let ((__obj129413
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
                                                      __obj129413
                                                      _type-id126096_
                                                      _super126097_
                                                      _slots126098_
                                                      _ctor-method126099_
                                                      _struct?126100_
                                                      _final?126101_
                                                      _metaclass126102_)
                                                     __obj129413)))
                                               _hd125985126055_
                                               _hd125982126047_
                                               _hd125979126039_
                                               _hd125976126031_
                                               _hd125973126023_
                                               _hd125970126015_
                                               _hd125967126007_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125954125991_
                                                 _g125955125994_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125954125991_ _g125955125994_)))))
                              (let ()
                                (declare (not safe))
                                (_g125954125991_ _g125955125994_)))))
                      (let ()
                        (declare (not safe))
                        (_g125954125991_ _g125955125994_)))))
              (let ()
                (declare (not safe))
                (_g125954125991_ _g125955125994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125954125991_
                                                 _g125955125994_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125954125991_ _g125955125994_)))))
                              (let ()
                                (declare (not safe))
                                (_g125954125991_ _g125955125994_)))))
                      (let ()
                        (declare (not safe))
                        (_g125954125991_ _g125955125994_))))))
          (declare (not safe))
          (_g125953126104_ _ann125952_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125899_ _ann125900_)
        (let* ((_g125902125915_
                (lambda (_g125903125912_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125903125912_))))
               (_g125901125948_
                (lambda (_g125903125918_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125903125918_))
                      (let ((_e125907125920_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125903125918_))))
                        (let ((_hd125906125923_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125907125920_)))
                              (_tl125905125925_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125907125920_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125905125925_))
                              (let ((_e125910125928_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125905125925_))))
                                (let ((_hd125909125931_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125910125928_)))
                                      (_tl125908125933_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125910125928_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125908125933_))
                                      ((lambda (_L125936_)
                                         (let ((__tmp129466
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125936_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp129466)))
                                       _hd125909125931_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125902125915_ _g125903125918_)))))
                              (let ()
                                (declare (not safe))
                                (_g125902125915_ _g125903125918_)))))
                      (let ()
                        (declare (not safe))
                        (_g125902125915_ _g125903125918_))))))
          (declare (not safe))
          (_g125901125948_ _ann125900_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125847_ _ann125848_)
        (let* ((_g125850125863_
                (lambda (_g125851125860_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125851125860_))))
               (_g125849125896_
                (lambda (_g125851125866_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125851125866_))
                      (let ((_e125855125868_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125851125866_))))
                        (let ((_hd125854125871_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125855125868_)))
                              (_tl125853125873_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125855125868_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125853125873_))
                              (let ((_e125858125876_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125853125873_))))
                                (let ((_hd125857125879_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125858125876_)))
                                      (_tl125856125881_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125858125876_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125856125881_))
                                      ((lambda (_L125884_)
                                         (let ((__tmp129467
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125884_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp129467)))
                                       _hd125857125879_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125850125863_ _g125851125866_)))))
                              (let ()
                                (declare (not safe))
                                (_g125850125863_ _g125851125866_)))))
                      (let ()
                        (declare (not safe))
                        (_g125850125863_ _g125851125866_))))))
          (declare (not safe))
          (_g125849125896_ _ann125848_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125763_ _ann125764_)
        (let* ((_g125766125787_
                (lambda (_g125767125784_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125767125784_))))
               (_g125765125844_
                (lambda (_g125767125790_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125767125790_))
                      (let ((_e125773125792_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125767125790_))))
                        (let ((_hd125772125795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125773125792_)))
                              (_tl125771125797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125773125792_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125771125797_))
                              (let ((_e125776125800_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125771125797_))))
                                (let ((_hd125775125803_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125776125800_)))
                                      (_tl125774125805_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125776125800_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125774125805_))
                                      (let ((_e125779125808_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125774125805_))))
                                        (let ((_hd125778125811_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125779125808_)))
                                              (_tl125777125813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125779125808_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125777125813_))
                                              (let ((_e125782125816_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125777125813_))))
                                                (let ((_hd125781125819_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125782125816_)))
                                                      (_tl125780125821_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125782125816_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125780125821_))
                                                      ((lambda (_L125824_
                                                                _L125825_
                                                                _L125826_)
                                                         (let ((__tmp129470
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125826_)))
                       (__tmp129469
                        (let () (declare (not safe)) (gx#stx-e _L125825_)))
                       (__tmp129468
                        (let () (declare (not safe)) (gx#stx-e _L125824_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp129470
                    __tmp129469
                    __tmp129468)))
               _hd125781125819_
               _hd125778125811_
               _hd125775125803_)
              (let ()
                (declare (not safe))
                (_g125766125787_ _g125767125790_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125766125787_
                                                 _g125767125790_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125766125787_ _g125767125790_)))))
                              (let ()
                                (declare (not safe))
                                (_g125766125787_ _g125767125790_)))))
                      (let ()
                        (declare (not safe))
                        (_g125766125787_ _g125767125790_))))))
          (declare (not safe))
          (_g125765125844_ _ann125764_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125679_ _ann125680_)
        (let* ((_g125682125703_
                (lambda (_g125683125700_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125683125700_))))
               (_g125681125760_
                (lambda (_g125683125706_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125683125706_))
                      (let ((_e125689125708_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125683125706_))))
                        (let ((_hd125688125711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125689125708_)))
                              (_tl125687125713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125689125708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125687125713_))
                              (let ((_e125692125716_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125687125713_))))
                                (let ((_hd125691125719_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125692125716_)))
                                      (_tl125690125721_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125692125716_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125690125721_))
                                      (let ((_e125695125724_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125690125721_))))
                                        (let ((_hd125694125727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125695125724_)))
                                              (_tl125693125729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125695125724_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125693125729_))
                                              (let ((_e125698125732_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125693125729_))))
                                                (let ((_hd125697125735_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125698125732_)))
                                                      (_tl125696125737_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125698125732_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125696125737_))
                                                      ((lambda (_L125740_
                                                                _L125741_
                                                                _L125742_)
                                                         (let ((__tmp129473
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125742_)))
                       (__tmp129472
                        (let () (declare (not safe)) (gx#stx-e _L125741_)))
                       (__tmp129471
                        (let () (declare (not safe)) (gx#stx-e _L125740_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp129473
                    __tmp129472
                    __tmp129471)))
               _hd125697125735_
               _hd125694125727_
               _hd125691125719_)
              (let ()
                (declare (not safe))
                (_g125682125703_ _g125683125706_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125682125703_
                                                 _g125683125706_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125682125703_ _g125683125706_)))))
                              (let ()
                                (declare (not safe))
                                (_g125682125703_ _g125683125706_)))))
                      (let ()
                        (declare (not safe))
                        (_g125682125703_ _g125683125706_))))))
          (declare (not safe))
          (_g125681125760_ _ann125680_))))
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
      (lambda (_self124798_ _stx124799_)
        (let* ((___stx127734127735_ _stx124799_)
               (_g124805125001_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127734127735_)))))
          (let ((___kont127736127737_
                 (lambda (_L125667_)
                   (let ((__obj129414
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129414
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125667_))
                      '#f)
                     __obj129414)))
                (___kont127738127739_
                 (lambda (_L125594_
                          _L125595_
                          _L125596_
                          _L125597_
                          _L125598_
                          _L125599_)
                   (let* ((_tab125649_
                           (let () (declare (not safe)) (gx#stx-e _L125596_)))
                          (_keys125651_
                           (if _tab125649_
                               (filter values (vector->list _tab125649_))
                               '#f)))
                     (let ((__tmp129474
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L125595_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125651_
                        __tmp129474)))))
                (___kont127740127741_
                 (lambda (_L125327_
                          _L125328_
                          _L125329_
                          _L125330_
                          _L125331_
                          _L125332_
                          _L125333_
                          _L125334_
                          _L125335_
                          _L125336_)
                   (let ((__tmp129476
                          (map gx#stx-e
                               (let ((__tmp129477
                                      (lambda (_g125429125432_ _g125430125434_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g125429125432_
                                                _g125430125434_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp129477 '() _L125329_))))
                         (__tmp129475
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125333_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp129476
                      __tmp129475))))
                (___kont127744127745_
                 (lambda (_L125037_)
                   (let ((__obj129415
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129415
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125037_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L125037_)))
                     __obj129415)))
                (___kont127746127747_
                 (lambda (_L125014_)
                   (let ((__obj129416
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129416
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125014_))
                      '#f)
                     __obj129416))))
            (let* ((___match128053128054_
                    (lambda (_e124992125029_ _hd124991125032_ _tl124990125034_)
                      (let ((_L125037_ _tl124990125034_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L125037_))
                            (___kont127744127745_ _L125037_)
                            (___kont127746127747_ _tl124990125034_)))))
                   (___match128047128048_
                    (lambda (_e124886125051_
                             _hd124885125054_
                             _tl124884125056_
                             _e124889125059_
                             _hd124888125062_
                             _tl124887125064_
                             _e124892125067_
                             _hd124891125070_
                             _tl124890125072_
                             _e124895125075_
                             _hd124894125078_
                             _tl124893125080_
                             _e124898125083_
                             _hd124897125086_
                             _tl124896125088_
                             _e124901125091_
                             _hd124900125094_
                             _tl124899125096_
                             _e124904125099_
                             _hd124903125102_
                             _tl124902125104_
                             _e124907125107_
                             _hd124906125110_
                             _tl124905125112_
                             _e124910125115_
                             _hd124909125118_
                             _tl124908125120_
                             _e124913125123_
                             _hd124912125126_
                             _tl124911125128_
                             _e124916125131_
                             _hd124915125134_
                             _tl124914125136_
                             _e124919125139_
                             _hd124918125142_
                             _tl124917125144_
                             _e124922125147_
                             _hd124921125150_
                             _tl124920125152_
                             _e124925125155_
                             _hd124924125158_
                             _tl124923125160_
                             ___splice127742127743_
                             _target124926125163_
                             _tl124928125165_
                             _e124943125168_
                             _hd124942125171_
                             _tl124941125173_
                             _e124946125176_
                             _hd124945125179_
                             _tl124944125181_
                             _e124949125184_
                             _hd124948125187_
                             _tl124947125189_)
                      (letrec ((_loop124929125192_
                                (lambda (_hd124927125195_
                                         _-absent-value124933125197_
                                         _key124934125199_
                                         _-xkwvar124935125201_
                                         _-hash-ref124936125203_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124927125195_))
                                      (let ((_e124930125206_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124927125195_))))
                                        (let ((_lp-tl124932125211_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124930125206_)))
                                              (_lp-hd124931125209_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124930125206_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd124931125209_))
                                              (let ((_e124952125214_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd124931125209_))))
                                                (let ((_tl124950125219_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124952125214_)))
                                                      (_hd124951125217_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124952125214_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd124951125217_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd124951125217_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124950125219_))
                      (let ((_e124955125222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124950125219_))))
                        (let ((_tl124953125227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124955125222_)))
                              (_hd124954125225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124955125222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124954125225_))
                              (let ((_e124958125230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124954125225_))))
                                (let ((_tl124956125235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124958125230_)))
                                      (_hd124957125233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124958125230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124957125233_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124957125233_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124956125235_))
                                              (let ((_e124961125238_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124956125235_))))
                                                (let ((_tl124959125243_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124961125238_)))
                                                      (_hd124960125241_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124961125238_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124959125243_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124953125227_))
                                                          (let ((_e124964125246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124953125227_))))
                    (let ((_tl124962125251_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124964125246_)))
                          (_hd124963125249_
                           (let ()
                             (declare (not safe))
                             (##car _e124964125246_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124963125249_))
                          (let ((_e124967125254_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124963125249_))))
                            (let ((_tl124965125259_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124967125254_)))
                                  (_hd124966125257_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124967125254_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124966125257_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124966125257_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124965125259_))
                                          (let ((_e124970125262_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124965125259_))))
                                            (let ((_tl124968125267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124970125262_)))
                                                  (_hd124969125265_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124970125262_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124968125267_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124962125251_))
                                                      (let ((_e124973125270_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124962125251_))))
                (let ((_tl124971125275_
                       (let () (declare (not safe)) (##cdr _e124973125270_)))
                      (_hd124972125273_
                       (let () (declare (not safe)) (##car _e124973125270_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124972125273_))
                      (let ((_e124976125278_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124972125273_))))
                        (let ((_tl124974125283_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124976125278_)))
                              (_hd124975125281_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124976125278_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124975125281_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd124975125281_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124974125283_))
                                      (let ((_e124979125286_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124974125283_))))
                                        (let ((_tl124977125291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124979125286_)))
                                              (_hd124978125289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124979125286_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124977125291_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124971125275_))
                                                  (let ((_e124982125294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124971125275_))))
                                                    (let ((_tl124980125299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124982125294_)))
                                                          (_hd124981125297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124982125294_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124981125297_))
                                                          (let ((_e124985125302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124981125297_))))
                    (let ((_tl124983125307_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124985125302_)))
                          (_hd124984125305_
                           (let ()
                             (declare (not safe))
                             (##car _e124985125302_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124984125305_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124984125305_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124983125307_))
                                  (let ((_e124988125310_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124983125307_))))
                                    (let ((_tl124986125315_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124988125310_)))
                                          (_hd124987125313_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124988125310_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124986125315_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124980125299_))
                                              (let ((__tmp129492
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124987125313_
                                                             _-absent-value124933125197_)))
                                                    (__tmp129491
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124978125289_
                                                             _key124934125199_)))
                                                    (__tmp129490
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124969125265_
                                                             _-xkwvar124935125201_)))
                                                    (__tmp129489
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124960125241_
                                                             _-hash-ref124936125203_))))
                                                (declare (not safe))
                                                (_loop124929125192_
                                                 _lp-tl124932125211_
                                                 __tmp129492
                                                 __tmp129491
                                                 __tmp129490
                                                 __tmp129489))
                                              (___match128053128054_
                                               _e124886125051_
                                               _hd124885125054_
                                               _tl124884125056_))
                                          (___match128053128054_
                                           _e124886125051_
                                           _hd124885125054_
                                           _tl124884125056_))))
                                  (___match128053128054_
                                   _e124886125051_
                                   _hd124885125054_
                                   _tl124884125056_))
                              (___match128053128054_
                               _e124886125051_
                               _hd124885125054_
                               _tl124884125056_))
                          (___match128053128054_
                           _e124886125051_
                           _hd124885125054_
                           _tl124884125056_))))
                  (___match128053128054_
                   _e124886125051_
                   _hd124885125054_
                   _tl124884125056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128053128054_
                                                   _e124886125051_
                                                   _hd124885125054_
                                                   _tl124884125056_))
                                              (___match128053128054_
                                               _e124886125051_
                                               _hd124885125054_
                                               _tl124884125056_))))
                                      (___match128053128054_
                                       _e124886125051_
                                       _hd124885125054_
                                       _tl124884125056_))
                                  (___match128053128054_
                                   _e124886125051_
                                   _hd124885125054_
                                   _tl124884125056_))
                              (___match128053128054_
                               _e124886125051_
                               _hd124885125054_
                               _tl124884125056_))))
                      (___match128053128054_
                       _e124886125051_
                       _hd124885125054_
                       _tl124884125056_))))
              (___match128053128054_
               _e124886125051_
               _hd124885125054_
               _tl124884125056_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128053128054_
                                                   _e124886125051_
                                                   _hd124885125054_
                                                   _tl124884125056_))))
                                          (___match128053128054_
                                           _e124886125051_
                                           _hd124885125054_
                                           _tl124884125056_))
                                      (___match128053128054_
                                       _e124886125051_
                                       _hd124885125054_
                                       _tl124884125056_))
                                  (___match128053128054_
                                   _e124886125051_
                                   _hd124885125054_
                                   _tl124884125056_))))
                          (___match128053128054_
                           _e124886125051_
                           _hd124885125054_
                           _tl124884125056_))))
                  (___match128053128054_
                   _e124886125051_
                   _hd124885125054_
                   _tl124884125056_))
              (___match128053128054_
               _e124886125051_
               _hd124885125054_
               _tl124884125056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128053128054_
                                               _e124886125051_
                                               _hd124885125054_
                                               _tl124884125056_))
                                          (___match128053128054_
                                           _e124886125051_
                                           _hd124885125054_
                                           _tl124884125056_))
                                      (___match128053128054_
                                       _e124886125051_
                                       _hd124885125054_
                                       _tl124884125056_))))
                              (___match128053128054_
                               _e124886125051_
                               _hd124885125054_
                               _tl124884125056_))))
                      (___match128053128054_
                       _e124886125051_
                       _hd124885125054_
                       _tl124884125056_))
                  (___match128053128054_
                   _e124886125051_
                   _hd124885125054_
                   _tl124884125056_))
              (___match128053128054_
               _e124886125051_
               _hd124885125054_
               _tl124884125056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128053128054_
                                               _e124886125051_
                                               _hd124885125054_
                                               _tl124884125056_))))
                                      (let ((_-hash-ref124940125324_
                                             (reverse _-hash-ref124936125203_))
                                            (_-xkwvar124939125322_
                                             (reverse _-xkwvar124935125201_))
                                            (_key124938125320_
                                             (reverse _key124934125199_))
                                            (_-absent-value124937125318_
                                             (reverse _-absent-value124933125197_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124893125080_))
                                            (let ((_L125327_ _hd124948125187_)
                                                  (_L125328_
                                                   _-absent-value124937125318_)
                                                  (_L125329_ _key124938125320_)
                                                  (_L125330_
                                                   _-xkwvar124939125322_)
                                                  (_L125331_
                                                   _-hash-ref124940125324_)
                                                  (_L125332_ _hd124924125158_)
                                                  (_L125333_ _hd124915125134_)
                                                  (_L125334_ _hd124906125110_)
                                                  (_L125335_ _tl124890125072_)
                                                  (_L125336_ _hd124891125070_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L125336_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L125335_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L125334_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L125336_
                                                          _L125332_))
                                                       (let ((__tmp129487
                                                              (let ((__tmp129488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g125389125392_ _g125390125394_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125389125392_ _g125390125394_)))))
                        (declare (not safe))
                        (foldr1 __tmp129488 '() _L125329_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp129487))
               (let ((__tmp129486
                      (lambda (_g125396125398_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g125396125398_
                           'hash-ref))))
                     (__tmp129484
                      (let ((__tmp129485
                             (lambda (_g125400125403_ _g125401125405_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125400125403_ _g125401125405_)))))
                        (declare (not safe))
                        (foldr1 __tmp129485 '() _L125331_))))
                 (declare (not safe))
                 (andmap1 __tmp129486 __tmp129484))
               (let ((__tmp129483
                      (lambda (_g125407125409_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g125407125409_
                           'absent-value))))
                     (__tmp129481
                      (let ((__tmp129482
                             (lambda (_g125411125414_ _g125412125416_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125411125414_ _g125412125416_)))))
                        (declare (not safe))
                        (foldr1 __tmp129482 '() _L125328_))))
                 (declare (not safe))
                 (andmap1 __tmp129483 __tmp129481))
               (let ((__tmp129480
                      (lambda (_g125418125420_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g125418125420_ _L125336_))))
                     (__tmp129478
                      (let ((__tmp129479
                             (lambda (_g125422125425_ _g125423125427_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125422125425_ _g125423125427_)))))
                        (declare (not safe))
                        (foldr1 __tmp129479 '() _L125330_))))
                 (declare (not safe))
                 (andmap1 __tmp129480 __tmp129478)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127740127741_
                                                   _L125327_
                                                   _L125328_
                                                   _L125329_
                                                   _L125330_
                                                   _L125331_
                                                   _L125332_
                                                   _L125333_
                                                   _L125334_
                                                   _L125335_
                                                   _L125336_)
                                                  (___match128053128054_
                                                   _e124886125051_
                                                   _hd124885125054_
                                                   _tl124884125056_)))
                                            (___match128053128054_
                                             _e124886125051_
                                             _hd124885125054_
                                             _tl124884125056_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124929125192_
                           _target124926125163_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127919127920_
                    (lambda (_e124886125051_
                             _hd124885125054_
                             _tl124884125056_
                             _e124889125059_
                             _hd124888125062_
                             _tl124887125064_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124888125062_))
                          (let ((_e124892125067_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124888125062_))))
                            (let ((_tl124890125072_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124892125067_)))
                                  (_hd124891125070_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124892125067_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124887125064_))
                                  (let ((_e124895125075_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124887125064_))))
                                    (let ((_tl124893125080_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124895125075_)))
                                          (_hd124894125078_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124895125075_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124894125078_))
                                          (let ((_e124898125083_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124894125078_))))
                                            (let ((_tl124896125088_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124898125083_)))
                                                  (_hd124897125086_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124898125083_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124897125086_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124897125086_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124896125088_))
                                                          (let ((_e124901125091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124896125088_))))
                    (let ((_tl124899125096_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124901125091_)))
                          (_hd124900125094_
                           (let ()
                             (declare (not safe))
                             (##car _e124901125091_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124900125094_))
                          (let ((_e124904125099_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124900125094_))))
                            (let ((_tl124902125104_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124904125099_)))
                                  (_hd124903125102_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124904125099_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124903125102_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124903125102_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124902125104_))
                                          (let ((_e124907125107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124902125104_))))
                                            (let ((_tl124905125112_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124907125107_)))
                                                  (_hd124906125110_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124907125107_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124905125112_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124899125096_))
                                                      (let ((_e124910125115_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124899125096_))))
                (let ((_tl124908125120_
                       (let () (declare (not safe)) (##cdr _e124910125115_)))
                      (_hd124909125118_
                       (let () (declare (not safe)) (##car _e124910125115_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124909125118_))
                      (let ((_e124913125123_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124909125118_))))
                        (let ((_tl124911125128_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124913125123_)))
                              (_hd124912125126_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124913125123_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124912125126_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124912125126_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124911125128_))
                                      (let ((_e124916125131_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124911125128_))))
                                        (let ((_tl124914125136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124916125131_)))
                                              (_hd124915125134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124916125131_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124914125136_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124908125120_))
                                                  (let ((_e124919125139_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124908125120_))))
                                                    (let ((_tl124917125144_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124919125139_)))
                                                          (_hd124918125142_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124919125139_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124918125142_))
                                                          (let ((_e124922125147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124918125142_))))
                    (let ((_tl124920125152_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124922125147_)))
                          (_hd124921125150_
                           (let ()
                             (declare (not safe))
                             (##car _e124922125147_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124921125150_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124921125150_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124920125152_))
                                  (let ((_e124925125155_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124920125152_))))
                                    (let ((_tl124923125160_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124925125155_)))
                                          (_hd124924125158_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124925125155_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124923125160_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124917125144_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124917125144_))
                                                        '1)
                                                  (let ((___splice127742127743_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124917125144_
                                                            '1))))
                                                    (let ((_tl124928125165_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127742127743_
                                                              '1)))
                                                          (_target124926125163_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127742127743_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124928125165_))
                                                          (let ((_e124943125168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124928125165_))))
                    (let ((_tl124941125173_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124943125168_)))
                          (_hd124942125171_
                           (let ()
                             (declare (not safe))
                             (##car _e124943125168_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124942125171_))
                          (let ((_e124946125176_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124942125171_))))
                            (let ((_tl124944125181_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124946125176_)))
                                  (_hd124945125179_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124946125176_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124945125179_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124945125179_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124944125181_))
                                          (let ((_e124949125184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124944125181_))))
                                            (let ((_tl124947125189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124949125184_)))
                                                  (_hd124948125187_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124949125184_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124947125189_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124941125173_))
                                                      (___match128047128048_
                                                       _e124886125051_
                                                       _hd124885125054_
                                                       _tl124884125056_
                                                       _e124889125059_
                                                       _hd124888125062_
                                                       _tl124887125064_
                                                       _e124892125067_
                                                       _hd124891125070_
                                                       _tl124890125072_
                                                       _e124895125075_
                                                       _hd124894125078_
                                                       _tl124893125080_
                                                       _e124898125083_
                                                       _hd124897125086_
                                                       _tl124896125088_
                                                       _e124901125091_
                                                       _hd124900125094_
                                                       _tl124899125096_
                                                       _e124904125099_
                                                       _hd124903125102_
                                                       _tl124902125104_
                                                       _e124907125107_
                                                       _hd124906125110_
                                                       _tl124905125112_
                                                       _e124910125115_
                                                       _hd124909125118_
                                                       _tl124908125120_
                                                       _e124913125123_
                                                       _hd124912125126_
                                                       _tl124911125128_
                                                       _e124916125131_
                                                       _hd124915125134_
                                                       _tl124914125136_
                                                       _e124919125139_
                                                       _hd124918125142_
                                                       _tl124917125144_
                                                       _e124922125147_
                                                       _hd124921125150_
                                                       _tl124920125152_
                                                       _e124925125155_
                                                       _hd124924125158_
                                                       _tl124923125160_
                                                       ___splice127742127743_
                                                       _target124926125163_
                                                       _tl124928125165_
                                                       _e124943125168_
                                                       _hd124942125171_
                                                       _tl124941125173_
                                                       _e124946125176_
                                                       _hd124945125179_
                                                       _tl124944125181_
                                                       _e124949125184_
                                                       _hd124948125187_
                                                       _tl124947125189_)
                                                      (___match128053128054_
                                                       _e124886125051_
                                                       _hd124885125054_
                                                       _tl124884125056_))
                                                  (___match128053128054_
                                                   _e124886125051_
                                                   _hd124885125054_
                                                   _tl124884125056_))))
                                          (___match128053128054_
                                           _e124886125051_
                                           _hd124885125054_
                                           _tl124884125056_))
                                      (___match128053128054_
                                       _e124886125051_
                                       _hd124885125054_
                                       _tl124884125056_))
                                  (___match128053128054_
                                   _e124886125051_
                                   _hd124885125054_
                                   _tl124884125056_))))
                          (___match128053128054_
                           _e124886125051_
                           _hd124885125054_
                           _tl124884125056_))))
                  (___match128053128054_
                   _e124886125051_
                   _hd124885125054_
                   _tl124884125056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128053128054_
                                                   _e124886125051_
                                                   _hd124885125054_
                                                   _tl124884125056_))
                                              (___match128053128054_
                                               _e124886125051_
                                               _hd124885125054_
                                               _tl124884125056_))
                                          (___match128053128054_
                                           _e124886125051_
                                           _hd124885125054_
                                           _tl124884125056_))))
                                  (___match128053128054_
                                   _e124886125051_
                                   _hd124885125054_
                                   _tl124884125056_))
                              (___match128053128054_
                               _e124886125051_
                               _hd124885125054_
                               _tl124884125056_))
                          (___match128053128054_
                           _e124886125051_
                           _hd124885125054_
                           _tl124884125056_))))
                  (___match128053128054_
                   _e124886125051_
                   _hd124885125054_
                   _tl124884125056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128053128054_
                                                   _e124886125051_
                                                   _hd124885125054_
                                                   _tl124884125056_))
                                              (___match128053128054_
                                               _e124886125051_
                                               _hd124885125054_
                                               _tl124884125056_))))
                                      (___match128053128054_
                                       _e124886125051_
                                       _hd124885125054_
                                       _tl124884125056_))
                                  (___match128053128054_
                                   _e124886125051_
                                   _hd124885125054_
                                   _tl124884125056_))
                              (___match128053128054_
                               _e124886125051_
                               _hd124885125054_
                               _tl124884125056_))))
                      (___match128053128054_
                       _e124886125051_
                       _hd124885125054_
                       _tl124884125056_))))
              (___match128053128054_
               _e124886125051_
               _hd124885125054_
               _tl124884125056_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128053128054_
                                                   _e124886125051_
                                                   _hd124885125054_
                                                   _tl124884125056_))))
                                          (___match128053128054_
                                           _e124886125051_
                                           _hd124885125054_
                                           _tl124884125056_))
                                      (___match128053128054_
                                       _e124886125051_
                                       _hd124885125054_
                                       _tl124884125056_))
                                  (___match128053128054_
                                   _e124886125051_
                                   _hd124885125054_
                                   _tl124884125056_))))
                          (___match128053128054_
                           _e124886125051_
                           _hd124885125054_
                           _tl124884125056_))))
                  (___match128053128054_
                   _e124886125051_
                   _hd124885125054_
                   _tl124884125056_))
              (___match128053128054_
               _e124886125051_
               _hd124885125054_
               _tl124884125056_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128053128054_
                                                   _e124886125051_
                                                   _hd124885125054_
                                                   _tl124884125056_))))
                                          (___match128053128054_
                                           _e124886125051_
                                           _hd124885125054_
                                           _tl124884125056_))))
                                  (___match128053128054_
                                   _e124886125051_
                                   _hd124885125054_
                                   _tl124884125056_))))
                          (___match128053128054_
                           _e124886125051_
                           _hd124885125054_
                           _tl124884125056_))))
                   (___match127907127908_
                    (lambda (_e124819125442_
                             _hd124818125445_
                             _tl124817125447_
                             _e124822125450_
                             _hd124821125453_
                             _tl124820125455_
                             _e124825125458_
                             _hd124824125461_
                             _tl124823125463_
                             _e124828125466_
                             _hd124827125469_
                             _tl124826125471_
                             _e124831125474_
                             _hd124830125477_
                             _tl124829125479_
                             _e124834125482_
                             _hd124833125485_
                             _tl124832125487_
                             _e124837125490_
                             _hd124836125493_
                             _tl124835125495_
                             _e124840125498_
                             _hd124839125501_
                             _tl124838125503_
                             _e124843125506_
                             _hd124842125509_
                             _tl124841125511_
                             _e124846125514_
                             _hd124845125517_
                             _tl124844125519_
                             _e124849125522_
                             _hd124848125525_
                             _tl124847125527_
                             _e124852125530_
                             _hd124851125533_
                             _tl124850125535_
                             _e124855125538_
                             _hd124854125541_
                             _tl124853125543_
                             _e124858125546_
                             _hd124857125549_
                             _tl124856125551_
                             _e124861125554_
                             _hd124860125557_
                             _tl124859125559_
                             _e124864125562_
                             _hd124863125565_
                             _tl124862125567_
                             _e124867125570_
                             _hd124866125573_
                             _tl124865125575_
                             _e124870125578_
                             _hd124869125581_
                             _tl124868125583_
                             _e124873125586_
                             _hd124872125589_
                             _tl124871125591_)
                      (let ((_L125594_ _hd124872125589_)
                            (_L125595_ _hd124863125565_)
                            (_L125596_ _hd124854125541_)
                            (_L125597_ _hd124845125517_)
                            (_L125598_ _hd124836125493_)
                            (_L125599_ _hd124821125453_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125599_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125598_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L125597_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125599_ _L125594_)))
                            (___kont127738127739_
                             _L125594_
                             _L125595_
                             _L125596_
                             _L125597_
                             _L125598_
                             _L125599_)
                            (___match127919127920_
                             _e124819125442_
                             _hd124818125445_
                             _tl124817125447_
                             _e124822125450_
                             _hd124821125453_
                             _tl124820125455_)))))
                   (___match127761127762_
                    (lambda (_e124819125442_ _hd124818125445_ _tl124817125447_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124817125447_))
                          (let ((_e124822125450_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124817125447_))))
                            (let ((_tl124820125455_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124822125450_)))
                                  (_hd124821125453_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124822125450_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124820125455_))
                                  (let ((_e124825125458_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124820125455_))))
                                    (let ((_tl124823125463_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124825125458_)))
                                          (_hd124824125461_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124825125458_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124824125461_))
                                          (let ((_e124828125466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124824125461_))))
                                            (let ((_tl124826125471_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124828125466_)))
                                                  (_hd124827125469_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124828125466_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124827125469_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124827125469_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124826125471_))
                                                          (let ((_e124831125474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124826125471_))))
                    (let ((_tl124829125479_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124831125474_)))
                          (_hd124830125477_
                           (let ()
                             (declare (not safe))
                             (##car _e124831125474_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124830125477_))
                          (let ((_e124834125482_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124830125477_))))
                            (let ((_tl124832125487_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124834125482_)))
                                  (_hd124833125485_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124834125482_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124833125485_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124833125485_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124832125487_))
                                          (let ((_e124837125490_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124832125487_))))
                                            (let ((_tl124835125495_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124837125490_)))
                                                  (_hd124836125493_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124837125490_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124835125495_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124829125479_))
                                                      (let ((_e124840125498_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124829125479_))))
                (let ((_tl124838125503_
                       (let () (declare (not safe)) (##cdr _e124840125498_)))
                      (_hd124839125501_
                       (let () (declare (not safe)) (##car _e124840125498_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124839125501_))
                      (let ((_e124843125506_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124839125501_))))
                        (let ((_tl124841125511_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124843125506_)))
                              (_hd124842125509_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124843125506_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124842125509_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124842125509_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124841125511_))
                                      (let ((_e124846125514_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124841125511_))))
                                        (let ((_tl124844125519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124846125514_)))
                                              (_hd124845125517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124846125514_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124844125519_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124838125503_))
                                                  (let ((_e124849125522_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124838125503_))))
                                                    (let ((_tl124847125527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124849125522_)))
                                                          (_hd124848125525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124849125522_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124848125525_))
                                                          (let ((_e124852125530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124848125525_))))
                    (let ((_tl124850125535_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124852125530_)))
                          (_hd124851125533_
                           (let ()
                             (declare (not safe))
                             (##car _e124852125530_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124851125533_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124851125533_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124850125535_))
                                  (let ((_e124855125538_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124850125535_))))
                                    (let ((_tl124853125543_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124855125538_)))
                                          (_hd124854125541_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124855125538_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124853125543_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124847125527_))
                                              (let ((_e124858125546_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124847125527_))))
                                                (let ((_tl124856125551_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124858125546_)))
                                                      (_hd124857125549_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124858125546_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124857125549_))
                                                      (let ((_e124861125554_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124857125549_))))
                (let ((_tl124859125559_
                       (let () (declare (not safe)) (##cdr _e124861125554_)))
                      (_hd124860125557_
                       (let () (declare (not safe)) (##car _e124861125554_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124860125557_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124860125557_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124859125559_))
                              (let ((_e124864125562_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124859125559_))))
                                (let ((_tl124862125567_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124864125562_)))
                                      (_hd124863125565_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124864125562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124862125567_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124856125551_))
                                          (let ((_e124867125570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124856125551_))))
                                            (let ((_tl124865125575_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124867125570_)))
                                                  (_hd124866125573_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124867125570_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124866125573_))
                                                  (let ((_e124870125578_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124866125573_))))
                                                    (let ((_tl124868125583_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124870125578_)))
                                                          (_hd124869125581_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124870125578_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124869125581_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124869125581_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124868125583_))
                          (let ((_e124873125586_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124868125583_))))
                            (let ((_tl124871125591_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124873125586_)))
                                  (_hd124872125589_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124873125586_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124871125591_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124865125575_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124823125463_))
                                          (___match127907127908_
                                           _e124819125442_
                                           _hd124818125445_
                                           _tl124817125447_
                                           _e124822125450_
                                           _hd124821125453_
                                           _tl124820125455_
                                           _e124825125458_
                                           _hd124824125461_
                                           _tl124823125463_
                                           _e124828125466_
                                           _hd124827125469_
                                           _tl124826125471_
                                           _e124831125474_
                                           _hd124830125477_
                                           _tl124829125479_
                                           _e124834125482_
                                           _hd124833125485_
                                           _tl124832125487_
                                           _e124837125490_
                                           _hd124836125493_
                                           _tl124835125495_
                                           _e124840125498_
                                           _hd124839125501_
                                           _tl124838125503_
                                           _e124843125506_
                                           _hd124842125509_
                                           _tl124841125511_
                                           _e124846125514_
                                           _hd124845125517_
                                           _tl124844125519_
                                           _e124849125522_
                                           _hd124848125525_
                                           _tl124847125527_
                                           _e124852125530_
                                           _hd124851125533_
                                           _tl124850125535_
                                           _e124855125538_
                                           _hd124854125541_
                                           _tl124853125543_
                                           _e124858125546_
                                           _hd124857125549_
                                           _tl124856125551_
                                           _e124861125554_
                                           _hd124860125557_
                                           _tl124859125559_
                                           _e124864125562_
                                           _hd124863125565_
                                           _tl124862125567_
                                           _e124867125570_
                                           _hd124866125573_
                                           _tl124865125575_
                                           _e124870125578_
                                           _hd124869125581_
                                           _tl124868125583_
                                           _e124873125586_
                                           _hd124872125589_
                                           _tl124871125591_)
                                          (___match127919127920_
                                           _e124819125442_
                                           _hd124818125445_
                                           _tl124817125447_
                                           _e124822125450_
                                           _hd124821125453_
                                           _tl124820125455_))
                                      (___match127919127920_
                                       _e124819125442_
                                       _hd124818125445_
                                       _tl124817125447_
                                       _e124822125450_
                                       _hd124821125453_
                                       _tl124820125455_))
                                  (___match127919127920_
                                   _e124819125442_
                                   _hd124818125445_
                                   _tl124817125447_
                                   _e124822125450_
                                   _hd124821125453_
                                   _tl124820125455_))))
                          (___match127919127920_
                           _e124819125442_
                           _hd124818125445_
                           _tl124817125447_
                           _e124822125450_
                           _hd124821125453_
                           _tl124820125455_))
                      (___match127919127920_
                       _e124819125442_
                       _hd124818125445_
                       _tl124817125447_
                       _e124822125450_
                       _hd124821125453_
                       _tl124820125455_))
                  (___match127919127920_
                   _e124819125442_
                   _hd124818125445_
                   _tl124817125447_
                   _e124822125450_
                   _hd124821125453_
                   _tl124820125455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127919127920_
                                                   _e124819125442_
                                                   _hd124818125445_
                                                   _tl124817125447_
                                                   _e124822125450_
                                                   _hd124821125453_
                                                   _tl124820125455_))))
                                          (___match127919127920_
                                           _e124819125442_
                                           _hd124818125445_
                                           _tl124817125447_
                                           _e124822125450_
                                           _hd124821125453_
                                           _tl124820125455_))
                                      (___match127919127920_
                                       _e124819125442_
                                       _hd124818125445_
                                       _tl124817125447_
                                       _e124822125450_
                                       _hd124821125453_
                                       _tl124820125455_))))
                              (___match127919127920_
                               _e124819125442_
                               _hd124818125445_
                               _tl124817125447_
                               _e124822125450_
                               _hd124821125453_
                               _tl124820125455_))
                          (___match127919127920_
                           _e124819125442_
                           _hd124818125445_
                           _tl124817125447_
                           _e124822125450_
                           _hd124821125453_
                           _tl124820125455_))
                      (___match127919127920_
                       _e124819125442_
                       _hd124818125445_
                       _tl124817125447_
                       _e124822125450_
                       _hd124821125453_
                       _tl124820125455_))))
              (___match127919127920_
               _e124819125442_
               _hd124818125445_
               _tl124817125447_
               _e124822125450_
               _hd124821125453_
               _tl124820125455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127919127920_
                                               _e124819125442_
                                               _hd124818125445_
                                               _tl124817125447_
                                               _e124822125450_
                                               _hd124821125453_
                                               _tl124820125455_))
                                          (___match127919127920_
                                           _e124819125442_
                                           _hd124818125445_
                                           _tl124817125447_
                                           _e124822125450_
                                           _hd124821125453_
                                           _tl124820125455_))))
                                  (___match127919127920_
                                   _e124819125442_
                                   _hd124818125445_
                                   _tl124817125447_
                                   _e124822125450_
                                   _hd124821125453_
                                   _tl124820125455_))
                              (___match127919127920_
                               _e124819125442_
                               _hd124818125445_
                               _tl124817125447_
                               _e124822125450_
                               _hd124821125453_
                               _tl124820125455_))
                          (___match127919127920_
                           _e124819125442_
                           _hd124818125445_
                           _tl124817125447_
                           _e124822125450_
                           _hd124821125453_
                           _tl124820125455_))))
                  (___match127919127920_
                   _e124819125442_
                   _hd124818125445_
                   _tl124817125447_
                   _e124822125450_
                   _hd124821125453_
                   _tl124820125455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127919127920_
                                                   _e124819125442_
                                                   _hd124818125445_
                                                   _tl124817125447_
                                                   _e124822125450_
                                                   _hd124821125453_
                                                   _tl124820125455_))
                                              (___match127919127920_
                                               _e124819125442_
                                               _hd124818125445_
                                               _tl124817125447_
                                               _e124822125450_
                                               _hd124821125453_
                                               _tl124820125455_))))
                                      (___match127919127920_
                                       _e124819125442_
                                       _hd124818125445_
                                       _tl124817125447_
                                       _e124822125450_
                                       _hd124821125453_
                                       _tl124820125455_))
                                  (___match127919127920_
                                   _e124819125442_
                                   _hd124818125445_
                                   _tl124817125447_
                                   _e124822125450_
                                   _hd124821125453_
                                   _tl124820125455_))
                              (___match127919127920_
                               _e124819125442_
                               _hd124818125445_
                               _tl124817125447_
                               _e124822125450_
                               _hd124821125453_
                               _tl124820125455_))))
                      (___match127919127920_
                       _e124819125442_
                       _hd124818125445_
                       _tl124817125447_
                       _e124822125450_
                       _hd124821125453_
                       _tl124820125455_))))
              (___match127919127920_
               _e124819125442_
               _hd124818125445_
               _tl124817125447_
               _e124822125450_
               _hd124821125453_
               _tl124820125455_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127919127920_
                                                   _e124819125442_
                                                   _hd124818125445_
                                                   _tl124817125447_
                                                   _e124822125450_
                                                   _hd124821125453_
                                                   _tl124820125455_))))
                                          (___match127919127920_
                                           _e124819125442_
                                           _hd124818125445_
                                           _tl124817125447_
                                           _e124822125450_
                                           _hd124821125453_
                                           _tl124820125455_))
                                      (___match127919127920_
                                       _e124819125442_
                                       _hd124818125445_
                                       _tl124817125447_
                                       _e124822125450_
                                       _hd124821125453_
                                       _tl124820125455_))
                                  (___match127919127920_
                                   _e124819125442_
                                   _hd124818125445_
                                   _tl124817125447_
                                   _e124822125450_
                                   _hd124821125453_
                                   _tl124820125455_))))
                          (___match127919127920_
                           _e124819125442_
                           _hd124818125445_
                           _tl124817125447_
                           _e124822125450_
                           _hd124821125453_
                           _tl124820125455_))))
                  (___match127919127920_
                   _e124819125442_
                   _hd124818125445_
                   _tl124817125447_
                   _e124822125450_
                   _hd124821125453_
                   _tl124820125455_))
              (___match127919127920_
               _e124819125442_
               _hd124818125445_
               _tl124817125447_
               _e124822125450_
               _hd124821125453_
               _tl124820125455_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127919127920_
                                                   _e124819125442_
                                                   _hd124818125445_
                                                   _tl124817125447_
                                                   _e124822125450_
                                                   _hd124821125453_
                                                   _tl124820125455_))))
                                          (___match127919127920_
                                           _e124819125442_
                                           _hd124818125445_
                                           _tl124817125447_
                                           _e124822125450_
                                           _hd124821125453_
                                           _tl124820125455_))))
                                  (___match127919127920_
                                   _e124819125442_
                                   _hd124818125445_
                                   _tl124817125447_
                                   _e124822125450_
                                   _hd124821125453_
                                   _tl124820125455_))))
                          (___match128053128054_
                           _e124819125442_
                           _hd124818125445_
                           _tl124817125447_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127734127735_))
                  (let ((_e124810125659_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127734127735_))))
                    (let ((_tl124808125664_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124810125659_)))
                          (_hd124809125662_
                           (let ()
                             (declare (not safe))
                             (##car _e124810125659_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125667_ _tl124808125664_))
                            (___kont127736127737_ _L125667_))
                          (___match127761127762_
                           _e124810125659_
                           _hd124809125662_
                           _tl124808125664_))))
                  (let () (declare (not safe)) (_g124805125001_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self124752_ _stx124753_)
        (letrec ((_clause-e124755_
                  (lambda (_form124796_)
                    (let ((__obj129417
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
                       __obj129417
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124796_))
                       (if (let ((__tmp129493
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp129493))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124796_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124796_))
                               '#f)
                           '#f))
                      __obj129417))))
          (let* ((_g124757124767_
                  (lambda (_g124758124764_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124758124764_))))
                 (_g124756124793_
                  (lambda (_g124758124770_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124758124770_))
                        (let ((_e124762124772_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124758124770_))))
                          (let ((_hd124761124775_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124762124772_)))
                                (_tl124760124777_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124762124772_))))
                            ((lambda (_L124780_)
                               (let ((_clauses124791_
                                      (map _clause-e124755_ _L124780_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124791_)))
                             _tl124760124777_)))
                        (let ()
                          (declare (not safe))
                          (_g124757124767_ _g124758124770_))))))
            (declare (not safe))
            (_g124756124793_ _stx124753_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self124683_ _stx124684_)
        (let* ((_g124686124703_
                (lambda (_g124687124700_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124687124700_))))
               (_g124685124749_
                (lambda (_g124687124706_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124687124706_))
                      (let ((_e124692124708_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124687124706_))))
                        (let ((_hd124691124711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124692124708_)))
                              (_tl124690124713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124692124708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124690124713_))
                              (let ((_e124695124716_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124690124713_))))
                                (let ((_hd124694124719_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124695124716_)))
                                      (_tl124693124721_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124695124716_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124693124721_))
                                      (let ((_e124698124724_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124693124721_))))
                                        (let ((_hd124697124727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124698124724_)))
                                              (_tl124696124729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124698124724_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124696124729_))
                                              ((lambda (_L124732_ _L124733_)
                                                 (let ((__tmp129494
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self124683_
                                                             _L124732_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp129494
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124697124727_
                                               _hd124694124719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124686124703_
                                                 _g124687124706_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124686124703_ _g124687124706_)))))
                              (let ()
                                (declare (not safe))
                                (_g124686124703_ _g124687124706_)))))
                      (let ()
                        (declare (not safe))
                        (_g124686124703_ _g124687124706_))))))
          (declare (not safe))
          (_g124685124749_ _stx124684_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self124587_ _stx124588_)
        (let* ((___stx128062128063_ _stx124588_)
               (_g124591124611_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128062128063_)))))
          (let ((___kont128064128065_
                 (lambda (_L124655_ _L124656_)
                   (let ((_type-e124673124675_
                          (let ((__tmp129495
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124656_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp129495))))
                     (if _type-e124673124675_
                         (let ((_type-e124678_ _type-e124673124675_))
                           (_type-e124678_ _stx124588_ _L124655_))
                         '#f))))
                (___kont128066128067_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128062128063_))
                (let ((_e124597124623_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128062128063_))))
                  (let ((_tl124595124628_
                         (let () (declare (not safe)) (##cdr _e124597124623_)))
                        (_hd124596124626_
                         (let ()
                           (declare (not safe))
                           (##car _e124597124623_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124595124628_))
                        (let ((_e124600124631_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124595124628_))))
                          (let ((_tl124598124636_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124600124631_)))
                                (_hd124599124634_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124600124631_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124599124634_))
                                (let ((_e124603124639_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124599124634_))))
                                  (let ((_tl124601124644_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124603124639_)))
                                        (_hd124602124642_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124603124639_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124602124642_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124602124642_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124601124644_))
                                                (let ((_e124606124647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124601124644_))))
                                                  (let ((_tl124604124652_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124606124647_)))
                                                        (_hd124605124650_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124606124647_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124604124652_))
                                                        (___kont128064128065_
                                                         _tl124598124636_
                                                         _hd124605124650_)
                                                        (___kont128066128067_))))
                                                (___kont128066128067_))
                                            (___kont128066128067_))
                                        (___kont128066128067_))))
                                (___kont128066128067_))))
                        (___kont128066128067_))))
                (___kont128066128067_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self124535_ _stx124536_)
        (let* ((_g124538124551_
                (lambda (_g124539124548_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124539124548_))))
               (_g124537124584_
                (lambda (_g124539124554_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124539124554_))
                      (let ((_e124543124556_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124539124554_))))
                        (let ((_hd124542124559_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124543124556_)))
                              (_tl124541124561_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124543124556_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124541124561_))
                              (let ((_e124546124564_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124541124561_))))
                                (let ((_hd124545124567_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124546124564_)))
                                      (_tl124544124569_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124546124564_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124544124569_))
                                      ((lambda (_L124572_)
                                         (let ((__tmp129496
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124572_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp129496)))
                                       _hd124545124567_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124538124551_ _g124539124554_)))))
                              (let ()
                                (declare (not safe))
                                (_g124538124551_ _g124539124554_)))))
                      (let ()
                        (declare (not safe))
                        (_g124538124551_ _g124539124554_))))))
          (declare (not safe))
          (_g124537124584_ _stx124536_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123769_)
        (let* ((___stx128100128101_ _form123769_)
               (_g123774123931_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128100128101_)))))
          (let ((___kont128102128103_
                 (lambda (_L124455_ _L124456_ _L124457_) '#t))
                (___kont128108128109_
                 (lambda (_L124243_
                          _L124244_
                          _L124245_
                          _L124246_
                          _L124247_
                          _L124248_)
                   '#t))
                (___kont128114128115_
                 (lambda (_L124039_ _L124040_ _L124041_ _L124042_) '#t))
                (___kont128116128117_ (lambda () '#f)))
            (let* ((___match128241128242_
                    (lambda (_e123893123943_
                             _hd123892123946_
                             _tl123891123948_
                             _e123896123951_
                             _hd123895123954_
                             _tl123894123956_
                             _e123899123959_
                             _hd123898123962_
                             _tl123897123964_
                             _e123902123967_
                             _hd123901123970_
                             _tl123900123972_
                             _e123905123975_
                             _hd123904123978_
                             _tl123903123980_
                             _e123908123983_
                             _hd123907123986_
                             _tl123906123988_
                             _e123911123991_
                             _hd123910123994_
                             _tl123909123996_
                             _e123914123999_
                             _hd123913124002_
                             _tl123912124004_
                             _e123917124007_
                             _hd123916124010_
                             _tl123915124012_
                             _e123920124015_
                             _hd123919124018_
                             _tl123918124020_
                             _e123923124023_
                             _hd123922124026_
                             _tl123921124028_
                             _e123926124031_
                             _hd123925124034_
                             _tl123924124036_)
                      (let ((_L124039_ _hd123925124034_)
                            (_L124040_ _hd123916124010_)
                            (_L124041_ _hd123907123986_)
                            (_L124042_ _hd123892123946_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124042_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124041_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124042_ _L124039_))
                                 (let ((__tmp129497
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L124040_
                                           _L124042_))))
                                   (declare (not safe))
                                   (not __tmp129497)))
                            (___kont128114128115_
                             _L124039_
                             _L124040_
                             _L124041_
                             _L124042_)
                            (___kont128116128117_)))))
                   (___match128213128214_
                    (lambda (_e123893123943_
                             _hd123892123946_
                             _tl123891123948_
                             _e123896123951_
                             _hd123895123954_
                             _tl123894123956_
                             _e123899123959_
                             _hd123898123962_
                             _tl123897123964_
                             _e123902123967_
                             _hd123901123970_
                             _tl123900123972_
                             _e123905123975_
                             _hd123904123978_
                             _tl123903123980_
                             _e123908123983_
                             _hd123907123986_
                             _tl123906123988_
                             _e123911123991_
                             _hd123910123994_
                             _tl123909123996_
                             _e123914123999_
                             _hd123913124002_
                             _tl123912124004_
                             _e123917124007_
                             _hd123916124010_
                             _tl123915124012_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123909123996_))
                          (let ((_e123920124015_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123909123996_))))
                            (let ((_tl123918124020_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123920124015_)))
                                  (_hd123919124018_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123920124015_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123919124018_))
                                  (let ((_e123923124023_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123919124018_))))
                                    (let ((_tl123921124028_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123923124023_)))
                                          (_hd123922124026_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123923124023_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123922124026_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123922124026_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123921124028_))
                                                  (let ((_e123926124031_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123921124028_))))
                                                    (let ((_tl123924124036_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123926124031_)))
                                                          (_hd123925124034_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123926124031_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123924124036_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123918124020_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123894123956_))
                          (___match128241128242_
                           _e123893123943_
                           _hd123892123946_
                           _tl123891123948_
                           _e123896123951_
                           _hd123895123954_
                           _tl123894123956_
                           _e123899123959_
                           _hd123898123962_
                           _tl123897123964_
                           _e123902123967_
                           _hd123901123970_
                           _tl123900123972_
                           _e123905123975_
                           _hd123904123978_
                           _tl123903123980_
                           _e123908123983_
                           _hd123907123986_
                           _tl123906123988_
                           _e123911123991_
                           _hd123910123994_
                           _tl123909123996_
                           _e123914123999_
                           _hd123913124002_
                           _tl123912124004_
                           _e123917124007_
                           _hd123916124010_
                           _tl123915124012_
                           _e123920124015_
                           _hd123919124018_
                           _tl123918124020_
                           _e123923124023_
                           _hd123922124026_
                           _tl123921124028_
                           _e123926124031_
                           _hd123925124034_
                           _tl123924124036_)
                          (___kont128116128117_))
                      (___kont128116128117_))
                  (___kont128116128117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128116128117_))
                                              (___kont128116128117_))
                                          (___kont128116128117_))))
                                  (___kont128116128117_))))
                          (___kont128116128117_))))
                   (___match128143128144_
                    (lambda (_e123829124083_
                             _hd123828124086_
                             _tl123827124088_
                             ___splice128110128111_
                             _target123830124091_
                             _tl123832124093_)
                      (letrec ((_loop123833124096_
                                (lambda (_hd123831124099_ _arg123837124101_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123831124099_))
                                      (let ((_e123834124104_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123831124099_))))
                                        (let ((_lp-tl123836124109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123834124104_)))
                                              (_lp-hd123835124107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123834124104_))))
                                          (let ((__tmp129512
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123835124107_
                                                         _arg123837124101_))))
                                            (declare (not safe))
                                            (_loop123833124096_
                                             _lp-tl123836124109_
                                             __tmp129512))))
                                      (let ((_arg123838124112_
                                             (reverse _arg123837124101_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123827124088_))
                                            (let ((_e123841124115_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123827124088_))))
                                              (let ((_tl123839124120_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123841124115_)))
                                                    (_hd123840124118_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123841124115_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123840124118_))
                                                    (let ((_e123844124123_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123840124118_))))
                                                      (let ((_tl123842124128_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123844124123_)))
                    (_hd123843124126_
                     (let () (declare (not safe)) (##car _e123844124123_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123843124126_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123843124126_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123842124128_))
                            (let ((_e123847124131_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123842124128_))))
                              (let ((_tl123845124136_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123847124131_)))
                                    (_hd123846124134_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123847124131_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123846124134_))
                                    (let ((_e123850124139_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123846124134_))))
                                      (let ((_tl123848124144_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123850124139_)))
                                            (_hd123849124142_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123850124139_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123849124142_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123849124142_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123848124144_))
                                                    (let ((_e123853124147_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123848124144_))))
                                                      (let ((_tl123851124152_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123853124147_)))
                    (_hd123852124150_
                     (let () (declare (not safe)) (##car _e123853124147_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123851124152_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123845124136_))
                        (let ((_e123856124155_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123845124136_))))
                          (let ((_tl123854124160_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123856124155_)))
                                (_hd123855124158_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123856124155_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123855124158_))
                                (let ((_e123859124163_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123855124158_))))
                                  (let ((_tl123857124168_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123859124163_)))
                                        (_hd123858124166_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123859124163_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123858124166_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123858124166_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123857124168_))
                                                (let ((_e123862124171_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123857124168_))))
                                                  (let ((_tl123860124176_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123862124171_)))
                                                        (_hd123861124174_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123862124171_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123860124176_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123854124160_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123854124160_))
                              '1)
                        (let ((___splice128112128113_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123854124160_
                                  '1))))
                          (let ((_tl123865124181_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128112128113_ '1)))
                                (_target123863124179_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128112128113_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123865124181_))
                                (let ((_e123874124184_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123865124181_))))
                                  (let ((_tl123872124189_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123874124184_)))
                                        (_hd123873124187_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123874124184_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123873124187_))
                                        (let ((_e123877124192_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123873124187_))))
                                          (let ((_tl123875124197_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123877124192_)))
                                                (_hd123876124195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123877124192_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123876124195_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123876124195_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123875124197_))
                                                        (let ((_e123880124200_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123875124197_))))
                  (let ((_tl123878124205_
                         (let () (declare (not safe)) (##cdr _e123880124200_)))
                        (_hd123879124203_
                         (let ()
                           (declare (not safe))
                           (##car _e123880124200_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123878124205_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123872124189_))
                            (letrec ((_loop123866124208_
                                      (lambda (_hd123864124211_
                                               _xarg123870124213_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123864124211_))
                                            (let ((_e123867124216_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123864124211_))))
                                              (let ((_lp-tl123869124221_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123867124216_)))
                                                    (_lp-hd123868124219_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123867124216_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123868124219_))
                                                    (let ((_e123883124224_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123868124219_))))
                                                      (let ((_tl123881124229_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123883124224_)))
                    (_hd123882124227_
                     (let () (declare (not safe)) (##car _e123883124224_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123882124227_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123882124227_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123881124229_))
                            (let ((_e123886124232_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123881124229_))))
                              (let ((_tl123884124237_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123886124232_)))
                                    (_hd123885124235_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123886124232_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123884124237_))
                                    (let ((__tmp129511
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123885124235_
                                                   _xarg123870124213_))))
                                      (declare (not safe))
                                      (_loop123866124208_
                                       _lp-tl123869124221_
                                       __tmp129511))
                                    (___match128213128214_
                                     _e123829124083_
                                     _hd123828124086_
                                     _tl123827124088_
                                     _e123841124115_
                                     _hd123840124118_
                                     _tl123839124120_
                                     _e123844124123_
                                     _hd123843124126_
                                     _tl123842124128_
                                     _e123847124131_
                                     _hd123846124134_
                                     _tl123845124136_
                                     _e123850124139_
                                     _hd123849124142_
                                     _tl123848124144_
                                     _e123853124147_
                                     _hd123852124150_
                                     _tl123851124152_
                                     _e123856124155_
                                     _hd123855124158_
                                     _tl123854124160_
                                     _e123859124163_
                                     _hd123858124166_
                                     _tl123857124168_
                                     _e123862124171_
                                     _hd123861124174_
                                     _tl123860124176_))))
                            (___match128213128214_
                             _e123829124083_
                             _hd123828124086_
                             _tl123827124088_
                             _e123841124115_
                             _hd123840124118_
                             _tl123839124120_
                             _e123844124123_
                             _hd123843124126_
                             _tl123842124128_
                             _e123847124131_
                             _hd123846124134_
                             _tl123845124136_
                             _e123850124139_
                             _hd123849124142_
                             _tl123848124144_
                             _e123853124147_
                             _hd123852124150_
                             _tl123851124152_
                             _e123856124155_
                             _hd123855124158_
                             _tl123854124160_
                             _e123859124163_
                             _hd123858124166_
                             _tl123857124168_
                             _e123862124171_
                             _hd123861124174_
                             _tl123860124176_))
                        (___match128213128214_
                         _e123829124083_
                         _hd123828124086_
                         _tl123827124088_
                         _e123841124115_
                         _hd123840124118_
                         _tl123839124120_
                         _e123844124123_
                         _hd123843124126_
                         _tl123842124128_
                         _e123847124131_
                         _hd123846124134_
                         _tl123845124136_
                         _e123850124139_
                         _hd123849124142_
                         _tl123848124144_
                         _e123853124147_
                         _hd123852124150_
                         _tl123851124152_
                         _e123856124155_
                         _hd123855124158_
                         _tl123854124160_
                         _e123859124163_
                         _hd123858124166_
                         _tl123857124168_
                         _e123862124171_
                         _hd123861124174_
                         _tl123860124176_))
                    (___match128213128214_
                     _e123829124083_
                     _hd123828124086_
                     _tl123827124088_
                     _e123841124115_
                     _hd123840124118_
                     _tl123839124120_
                     _e123844124123_
                     _hd123843124126_
                     _tl123842124128_
                     _e123847124131_
                     _hd123846124134_
                     _tl123845124136_
                     _e123850124139_
                     _hd123849124142_
                     _tl123848124144_
                     _e123853124147_
                     _hd123852124150_
                     _tl123851124152_
                     _e123856124155_
                     _hd123855124158_
                     _tl123854124160_
                     _e123859124163_
                     _hd123858124166_
                     _tl123857124168_
                     _e123862124171_
                     _hd123861124174_
                     _tl123860124176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128213128214_
                                                     _e123829124083_
                                                     _hd123828124086_
                                                     _tl123827124088_
                                                     _e123841124115_
                                                     _hd123840124118_
                                                     _tl123839124120_
                                                     _e123844124123_
                                                     _hd123843124126_
                                                     _tl123842124128_
                                                     _e123847124131_
                                                     _hd123846124134_
                                                     _tl123845124136_
                                                     _e123850124139_
                                                     _hd123849124142_
                                                     _tl123848124144_
                                                     _e123853124147_
                                                     _hd123852124150_
                                                     _tl123851124152_
                                                     _e123856124155_
                                                     _hd123855124158_
                                                     _tl123854124160_
                                                     _e123859124163_
                                                     _hd123858124166_
                                                     _tl123857124168_
                                                     _e123862124171_
                                                     _hd123861124174_
                                                     _tl123860124176_))))
                                            (let ((_xarg123871124240_
                                                   (reverse _xarg123870124213_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123839124120_))
                                                  (let ((_L124243_
                                                         _hd123879124203_)
                                                        (_L124244_
                                                         _xarg123871124240_)
                                                        (_L124245_
                                                         _hd123861124174_)
                                                        (_L124246_
                                                         _hd123852124150_)
                                                        (_L124247_
                                                         _tl123832124093_)
                                                        (_L124248_
                                                         _arg123838124112_))
                                                    (if (and (let ((__tmp129509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129510
                                   (lambda (_g124291124294_ _g124292124296_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g124291124294_
                                             _g124292124296_)))))
                              (declare (not safe))
                              (foldr1 __tmp129510 '() _L124248_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp129509))
                     (let () (declare (not safe)) (gx#identifier? _L124247_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L124246_ 'apply))
                     (fx= (length (let ((__tmp129507
                                         (lambda (_g124298124301_
                                                  _g124299124303_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g124298124301_
                                                   _g124299124303_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp129507 '() _L124248_)))
                          (length (let ((__tmp129508
                                         (lambda (_g124305124308_
                                                  _g124306124310_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g124305124308_
                                                   _g124306124310_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp129508 '() _L124244_))))
                     (let ((__tmp129505
                            (let ((__tmp129506
                                   (lambda (_g124312124315_ _g124313124317_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g124312124315_
                                             _g124313124317_)))))
                              (declare (not safe))
                              (foldr1 __tmp129506 '() _L124248_)))
                           (__tmp129503
                            (let ((__tmp129504
                                   (lambda (_g124319124322_ _g124320124324_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g124319124322_
                                             _g124320124324_)))))
                              (declare (not safe))
                              (foldr1 __tmp129504 '() _L124244_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp129505 __tmp129503))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L124247_ _L124243_))
                     (let ((__tmp129498
                            (let ((__tmp129502
                                   (lambda (_g124326124328_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g124326124328_
                                        _L124245_))))
                                  (__tmp129499
                                   (let ((__tmp129501
                                          (lambda (_g124330124333_
                                                   _g124331124335_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g124330124333_
                                                    _g124331124335_))))
                                         (__tmp129500
                                          (let ()
                                            (declare (not safe))
                                            (cons _L124247_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp129501
                                             __tmp129500
                                             _L124248_))))
                              (declare (not safe))
                              (find __tmp129502 __tmp129499))))
                       (declare (not safe))
                       (not __tmp129498)))
                (___kont128108128109_
                 _L124243_
                 _L124244_
                 _L124245_
                 _L124246_
                 _L124247_
                 _L124248_)
                (___match128213128214_
                 _e123829124083_
                 _hd123828124086_
                 _tl123827124088_
                 _e123841124115_
                 _hd123840124118_
                 _tl123839124120_
                 _e123844124123_
                 _hd123843124126_
                 _tl123842124128_
                 _e123847124131_
                 _hd123846124134_
                 _tl123845124136_
                 _e123850124139_
                 _hd123849124142_
                 _tl123848124144_
                 _e123853124147_
                 _hd123852124150_
                 _tl123851124152_
                 _e123856124155_
                 _hd123855124158_
                 _tl123854124160_
                 _e123859124163_
                 _hd123858124166_
                 _tl123857124168_
                 _e123862124171_
                 _hd123861124174_
                 _tl123860124176_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128213128214_
                                                   _e123829124083_
                                                   _hd123828124086_
                                                   _tl123827124088_
                                                   _e123841124115_
                                                   _hd123840124118_
                                                   _tl123839124120_
                                                   _e123844124123_
                                                   _hd123843124126_
                                                   _tl123842124128_
                                                   _e123847124131_
                                                   _hd123846124134_
                                                   _tl123845124136_
                                                   _e123850124139_
                                                   _hd123849124142_
                                                   _tl123848124144_
                                                   _e123853124147_
                                                   _hd123852124150_
                                                   _tl123851124152_
                                                   _e123856124155_
                                                   _hd123855124158_
                                                   _tl123854124160_
                                                   _e123859124163_
                                                   _hd123858124166_
                                                   _tl123857124168_
                                                   _e123862124171_
                                                   _hd123861124174_
                                                   _tl123860124176_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123866124208_ _target123863124179_ '())))
                            (___match128213128214_
                             _e123829124083_
                             _hd123828124086_
                             _tl123827124088_
                             _e123841124115_
                             _hd123840124118_
                             _tl123839124120_
                             _e123844124123_
                             _hd123843124126_
                             _tl123842124128_
                             _e123847124131_
                             _hd123846124134_
                             _tl123845124136_
                             _e123850124139_
                             _hd123849124142_
                             _tl123848124144_
                             _e123853124147_
                             _hd123852124150_
                             _tl123851124152_
                             _e123856124155_
                             _hd123855124158_
                             _tl123854124160_
                             _e123859124163_
                             _hd123858124166_
                             _tl123857124168_
                             _e123862124171_
                             _hd123861124174_
                             _tl123860124176_))
                        (___match128213128214_
                         _e123829124083_
                         _hd123828124086_
                         _tl123827124088_
                         _e123841124115_
                         _hd123840124118_
                         _tl123839124120_
                         _e123844124123_
                         _hd123843124126_
                         _tl123842124128_
                         _e123847124131_
                         _hd123846124134_
                         _tl123845124136_
                         _e123850124139_
                         _hd123849124142_
                         _tl123848124144_
                         _e123853124147_
                         _hd123852124150_
                         _tl123851124152_
                         _e123856124155_
                         _hd123855124158_
                         _tl123854124160_
                         _e123859124163_
                         _hd123858124166_
                         _tl123857124168_
                         _e123862124171_
                         _hd123861124174_
                         _tl123860124176_))))
                (___match128213128214_
                 _e123829124083_
                 _hd123828124086_
                 _tl123827124088_
                 _e123841124115_
                 _hd123840124118_
                 _tl123839124120_
                 _e123844124123_
                 _hd123843124126_
                 _tl123842124128_
                 _e123847124131_
                 _hd123846124134_
                 _tl123845124136_
                 _e123850124139_
                 _hd123849124142_
                 _tl123848124144_
                 _e123853124147_
                 _hd123852124150_
                 _tl123851124152_
                 _e123856124155_
                 _hd123855124158_
                 _tl123854124160_
                 _e123859124163_
                 _hd123858124166_
                 _tl123857124168_
                 _e123862124171_
                 _hd123861124174_
                 _tl123860124176_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128213128214_
                                                     _e123829124083_
                                                     _hd123828124086_
                                                     _tl123827124088_
                                                     _e123841124115_
                                                     _hd123840124118_
                                                     _tl123839124120_
                                                     _e123844124123_
                                                     _hd123843124126_
                                                     _tl123842124128_
                                                     _e123847124131_
                                                     _hd123846124134_
                                                     _tl123845124136_
                                                     _e123850124139_
                                                     _hd123849124142_
                                                     _tl123848124144_
                                                     _e123853124147_
                                                     _hd123852124150_
                                                     _tl123851124152_
                                                     _e123856124155_
                                                     _hd123855124158_
                                                     _tl123854124160_
                                                     _e123859124163_
                                                     _hd123858124166_
                                                     _tl123857124168_
                                                     _e123862124171_
                                                     _hd123861124174_
                                                     _tl123860124176_))
                                                (___match128213128214_
                                                 _e123829124083_
                                                 _hd123828124086_
                                                 _tl123827124088_
                                                 _e123841124115_
                                                 _hd123840124118_
                                                 _tl123839124120_
                                                 _e123844124123_
                                                 _hd123843124126_
                                                 _tl123842124128_
                                                 _e123847124131_
                                                 _hd123846124134_
                                                 _tl123845124136_
                                                 _e123850124139_
                                                 _hd123849124142_
                                                 _tl123848124144_
                                                 _e123853124147_
                                                 _hd123852124150_
                                                 _tl123851124152_
                                                 _e123856124155_
                                                 _hd123855124158_
                                                 _tl123854124160_
                                                 _e123859124163_
                                                 _hd123858124166_
                                                 _tl123857124168_
                                                 _e123862124171_
                                                 _hd123861124174_
                                                 _tl123860124176_))))
                                        (___match128213128214_
                                         _e123829124083_
                                         _hd123828124086_
                                         _tl123827124088_
                                         _e123841124115_
                                         _hd123840124118_
                                         _tl123839124120_
                                         _e123844124123_
                                         _hd123843124126_
                                         _tl123842124128_
                                         _e123847124131_
                                         _hd123846124134_
                                         _tl123845124136_
                                         _e123850124139_
                                         _hd123849124142_
                                         _tl123848124144_
                                         _e123853124147_
                                         _hd123852124150_
                                         _tl123851124152_
                                         _e123856124155_
                                         _hd123855124158_
                                         _tl123854124160_
                                         _e123859124163_
                                         _hd123858124166_
                                         _tl123857124168_
                                         _e123862124171_
                                         _hd123861124174_
                                         _tl123860124176_))))
                                (___match128213128214_
                                 _e123829124083_
                                 _hd123828124086_
                                 _tl123827124088_
                                 _e123841124115_
                                 _hd123840124118_
                                 _tl123839124120_
                                 _e123844124123_
                                 _hd123843124126_
                                 _tl123842124128_
                                 _e123847124131_
                                 _hd123846124134_
                                 _tl123845124136_
                                 _e123850124139_
                                 _hd123849124142_
                                 _tl123848124144_
                                 _e123853124147_
                                 _hd123852124150_
                                 _tl123851124152_
                                 _e123856124155_
                                 _hd123855124158_
                                 _tl123854124160_
                                 _e123859124163_
                                 _hd123858124166_
                                 _tl123857124168_
                                 _e123862124171_
                                 _hd123861124174_
                                 _tl123860124176_))))
                        (___match128213128214_
                         _e123829124083_
                         _hd123828124086_
                         _tl123827124088_
                         _e123841124115_
                         _hd123840124118_
                         _tl123839124120_
                         _e123844124123_
                         _hd123843124126_
                         _tl123842124128_
                         _e123847124131_
                         _hd123846124134_
                         _tl123845124136_
                         _e123850124139_
                         _hd123849124142_
                         _tl123848124144_
                         _e123853124147_
                         _hd123852124150_
                         _tl123851124152_
                         _e123856124155_
                         _hd123855124158_
                         _tl123854124160_
                         _e123859124163_
                         _hd123858124166_
                         _tl123857124168_
                         _e123862124171_
                         _hd123861124174_
                         _tl123860124176_))
                    (___match128213128214_
                     _e123829124083_
                     _hd123828124086_
                     _tl123827124088_
                     _e123841124115_
                     _hd123840124118_
                     _tl123839124120_
                     _e123844124123_
                     _hd123843124126_
                     _tl123842124128_
                     _e123847124131_
                     _hd123846124134_
                     _tl123845124136_
                     _e123850124139_
                     _hd123849124142_
                     _tl123848124144_
                     _e123853124147_
                     _hd123852124150_
                     _tl123851124152_
                     _e123856124155_
                     _hd123855124158_
                     _tl123854124160_
                     _e123859124163_
                     _hd123858124166_
                     _tl123857124168_
                     _e123862124171_
                     _hd123861124174_
                     _tl123860124176_))
                (___kont128116128117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128116128117_))
                                            (___kont128116128117_))
                                        (___kont128116128117_))))
                                (___kont128116128117_))))
                        (___kont128116128117_))
                    (___kont128116128117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128116128117_))
                                                (___kont128116128117_))
                                            (___kont128116128117_))))
                                    (___kont128116128117_))))
                            (___kont128116128117_))
                        (___kont128116128117_))
                    (___kont128116128117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128116128117_))))
                                            (___kont128116128117_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123833124096_ _target123830124091_ '())))))
                   (___match128131128132_
                    (lambda (_e123781124343_
                             _hd123780124346_
                             _tl123779124348_
                             ___splice128104128105_
                             _target123782124351_
                             _tl123784124353_)
                      (letrec ((_loop123785124356_
                                (lambda (_hd123783124359_ _arg123789124361_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123783124359_))
                                      (let ((_e123786124364_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123783124359_))))
                                        (let ((_lp-tl123788124369_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123786124364_)))
                                              (_lp-hd123787124367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123786124364_))))
                                          (let ((__tmp129526
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123787124367_
                                                         _arg123789124361_))))
                                            (declare (not safe))
                                            (_loop123785124356_
                                             _lp-tl123788124369_
                                             __tmp129526))))
                                      (let ((_arg123790124372_
                                             (reverse _arg123789124361_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123779124348_))
                                            (let ((_e123793124375_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123779124348_))))
                                              (let ((_tl123791124380_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123793124375_)))
                                                    (_hd123792124378_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123793124375_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123792124378_))
                                                    (let ((_e123796124383_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123792124378_))))
                                                      (let ((_tl123794124388_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123796124383_)))
                    (_hd123795124386_
                     (let () (declare (not safe)) (##car _e123796124383_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123795124386_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123795124386_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123794124388_))
                            (let ((_e123799124391_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123794124388_))))
                              (let ((_tl123797124396_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123799124391_)))
                                    (_hd123798124394_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123799124391_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123798124394_))
                                    (let ((_e123802124399_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123798124394_))))
                                      (let ((_tl123800124404_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123802124399_)))
                                            (_hd123801124402_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123802124399_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123801124402_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123801124402_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123800124404_))
                                                    (let ((_e123805124407_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123800124404_))))
                                                      (let ((_tl123803124412_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123805124407_)))
                    (_hd123804124410_
                     (let () (declare (not safe)) (##car _e123805124407_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123803124412_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123797124396_))
                        (let ((___splice128106128107_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123797124396_
                                  '0))))
                          (let ((_tl123808124417_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128106128107_ '1)))
                                (_target123806124415_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128106128107_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123808124417_))
                                (letrec ((_loop123809124420_
                                          (lambda (_hd123807124423_
                                                   _xarg123813124425_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123807124423_))
                                                (let ((_e123810124428_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123807124423_))))
                                                  (let ((_lp-tl123812124433_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123810124428_)))
                                                        (_lp-hd123811124431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123810124428_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123811124431_))
                                                        (let ((_e123817124436_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123811124431_))))
                  (let ((_tl123815124441_
                         (let () (declare (not safe)) (##cdr _e123817124436_)))
                        (_hd123816124439_
                         (let ()
                           (declare (not safe))
                           (##car _e123817124436_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123816124439_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123816124439_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123815124441_))
                                (let ((_e123820124444_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123815124441_))))
                                  (let ((_tl123818124449_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123820124444_)))
                                        (_hd123819124447_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123820124444_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123818124449_))
                                        (let ((__tmp129525
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123819124447_
                                                       _xarg123813124425_))))
                                          (declare (not safe))
                                          (_loop123809124420_
                                           _lp-tl123812124433_
                                           __tmp129525))
                                        (___match128143128144_
                                         _e123781124343_
                                         _hd123780124346_
                                         _tl123779124348_
                                         ___splice128104128105_
                                         _target123782124351_
                                         _tl123784124353_))))
                                (___match128143128144_
                                 _e123781124343_
                                 _hd123780124346_
                                 _tl123779124348_
                                 ___splice128104128105_
                                 _target123782124351_
                                 _tl123784124353_))
                            (___match128143128144_
                             _e123781124343_
                             _hd123780124346_
                             _tl123779124348_
                             ___splice128104128105_
                             _target123782124351_
                             _tl123784124353_))
                        (___match128143128144_
                         _e123781124343_
                         _hd123780124346_
                         _tl123779124348_
                         ___splice128104128105_
                         _target123782124351_
                         _tl123784124353_))))
                (___match128143128144_
                 _e123781124343_
                 _hd123780124346_
                 _tl123779124348_
                 ___splice128104128105_
                 _target123782124351_
                 _tl123784124353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123814124452_
                                                       (reverse _xarg123813124425_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123791124380_))
                                                      (let ((_L124455_
                                                             _xarg123814124452_)
                                                            (_L124456_
                                                             _hd123804124410_)
                                                            (_L124457_
                                                             _arg123790124372_))
                                                        (if (and (let ((__tmp129523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp129524
                                       (lambda (_g124485124488_
                                                _g124486124490_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124485124488_
                                                 _g124486124490_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129524 '() _L124457_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp129523))
                         (fx= (length (let ((__tmp129521
                                             (lambda (_g124492124495_
                                                      _g124493124497_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g124492124495_
                                                       _g124493124497_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp129521 '() _L124457_)))
                              (length (let ((__tmp129522
                                             (lambda (_g124499124502_
                                                      _g124500124504_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g124499124502_
                                                       _g124500124504_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp129522 '() _L124455_))))
                         (let ((__tmp129519
                                (let ((__tmp129520
                                       (lambda (_g124506124509_
                                                _g124507124511_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124506124509_
                                                 _g124507124511_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129520 '() _L124457_)))
                               (__tmp129517
                                (let ((__tmp129518
                                       (lambda (_g124513124516_
                                                _g124514124518_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124513124516_
                                                 _g124514124518_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129518 '() _L124455_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp129519
                                    __tmp129517))
                         (let ((__tmp129513
                                (let ((__tmp129516
                                       (lambda (_g124520124522_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g124520124522_
                                            _L124456_))))
                                      (__tmp129514
                                       (let ((__tmp129515
                                              (lambda (_g124524124527_
                                                       _g124525124529_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g124524124527_
                                                        _g124525124529_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp129515 '() _L124457_))))
                                  (declare (not safe))
                                  (find __tmp129516 __tmp129514))))
                           (declare (not safe))
                           (not __tmp129513)))
                    (___kont128102128103_ _L124455_ _L124456_ _L124457_)
                    (___match128143128144_
                     _e123781124343_
                     _hd123780124346_
                     _tl123779124348_
                     ___splice128104128105_
                     _target123782124351_
                     _tl123784124353_)))
              (___match128143128144_
               _e123781124343_
               _hd123780124346_
               _tl123779124348_
               ___splice128104128105_
               _target123782124351_
               _tl123784124353_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123809124420_
                                     _target123806124415_
                                     '())))
                                (___match128143128144_
                                 _e123781124343_
                                 _hd123780124346_
                                 _tl123779124348_
                                 ___splice128104128105_
                                 _target123782124351_
                                 _tl123784124353_))))
                        (___match128143128144_
                         _e123781124343_
                         _hd123780124346_
                         _tl123779124348_
                         ___splice128104128105_
                         _target123782124351_
                         _tl123784124353_))
                    (___match128143128144_
                     _e123781124343_
                     _hd123780124346_
                     _tl123779124348_
                     ___splice128104128105_
                     _target123782124351_
                     _tl123784124353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128143128144_
                                                     _e123781124343_
                                                     _hd123780124346_
                                                     _tl123779124348_
                                                     ___splice128104128105_
                                                     _target123782124351_
                                                     _tl123784124353_))
                                                (___match128143128144_
                                                 _e123781124343_
                                                 _hd123780124346_
                                                 _tl123779124348_
                                                 ___splice128104128105_
                                                 _target123782124351_
                                                 _tl123784124353_))
                                            (___match128143128144_
                                             _e123781124343_
                                             _hd123780124346_
                                             _tl123779124348_
                                             ___splice128104128105_
                                             _target123782124351_
                                             _tl123784124353_))))
                                    (___match128143128144_
                                     _e123781124343_
                                     _hd123780124346_
                                     _tl123779124348_
                                     ___splice128104128105_
                                     _target123782124351_
                                     _tl123784124353_))))
                            (___match128143128144_
                             _e123781124343_
                             _hd123780124346_
                             _tl123779124348_
                             ___splice128104128105_
                             _target123782124351_
                             _tl123784124353_))
                        (___match128143128144_
                         _e123781124343_
                         _hd123780124346_
                         _tl123779124348_
                         ___splice128104128105_
                         _target123782124351_
                         _tl123784124353_))
                    (___match128143128144_
                     _e123781124343_
                     _hd123780124346_
                     _tl123779124348_
                     ___splice128104128105_
                     _target123782124351_
                     _tl123784124353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128143128144_
                                                     _e123781124343_
                                                     _hd123780124346_
                                                     _tl123779124348_
                                                     ___splice128104128105_
                                                     _target123782124351_
                                                     _tl123784124353_))))
                                            (___match128143128144_
                                             _e123781124343_
                                             _hd123780124346_
                                             _tl123779124348_
                                             ___splice128104128105_
                                             _target123782124351_
                                             _tl123784124353_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123785124356_ _target123782124351_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128100128101_))
                  (let ((_e123781124343_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128100128101_))))
                    (let ((_tl123779124348_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123781124343_)))
                          (_hd123780124346_
                           (let ()
                             (declare (not safe))
                             (##car _e123781124343_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123780124346_))
                          (let ((___splice128104128105_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123780124346_
                                    '0))))
                            (let ((_tl123784124353_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128104128105_ '1)))
                                  (_target123782124351_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128104128105_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123784124353_))
                                  (___match128131128132_
                                   _e123781124343_
                                   _hd123780124346_
                                   _tl123779124348_
                                   ___splice128104128105_
                                   _target123782124351_
                                   _tl123784124353_)
                                  (___match128143128144_
                                   _e123781124343_
                                   _hd123780124346_
                                   _tl123779124348_
                                   ___splice128104128105_
                                   _target123782124351_
                                   _tl123784124353_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123779124348_))
                              (let ((_e123896123951_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123779124348_))))
                                (let ((_tl123894123956_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123896123951_)))
                                      (_hd123895123954_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123896123951_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123895123954_))
                                      (let ((_e123899123959_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123895123954_))))
                                        (let ((_tl123897123964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123899123959_)))
                                              (_hd123898123962_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123899123959_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123898123962_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123898123962_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123897123964_))
                                                      (let ((_e123902123967_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123897123964_))))
                (let ((_tl123900123972_
                       (let () (declare (not safe)) (##cdr _e123902123967_)))
                      (_hd123901123970_
                       (let () (declare (not safe)) (##car _e123902123967_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123901123970_))
                      (let ((_e123905123975_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123901123970_))))
                        (let ((_tl123903123980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123905123975_)))
                              (_hd123904123978_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123905123975_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123904123978_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123904123978_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123903123980_))
                                      (let ((_e123908123983_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123903123980_))))
                                        (let ((_tl123906123988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123908123983_)))
                                              (_hd123907123986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123908123983_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123906123988_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123900123972_))
                                                  (let ((_e123911123991_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123900123972_))))
                                                    (let ((_tl123909123996_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123911123991_)))
                                                          (_hd123910123994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123911123991_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123910123994_))
                                                          (let ((_e123914123999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123910123994_))))
                    (let ((_tl123912124004_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123914123999_)))
                          (_hd123913124002_
                           (let ()
                             (declare (not safe))
                             (##car _e123914123999_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123913124002_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123913124002_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123912124004_))
                                  (let ((_e123917124007_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123912124004_))))
                                    (let ((_tl123915124012_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123917124007_)))
                                          (_hd123916124010_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123917124007_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123915124012_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123909123996_))
                                              (let ((_e123920124015_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123909123996_))))
                                                (let ((_tl123918124020_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123920124015_)))
                                                      (_hd123919124018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123920124015_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123919124018_))
                                                      (let ((_e123923124023_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123919124018_))))
                (let ((_tl123921124028_
                       (let () (declare (not safe)) (##cdr _e123923124023_)))
                      (_hd123922124026_
                       (let () (declare (not safe)) (##car _e123923124023_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123922124026_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123922124026_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123921124028_))
                              (let ((_e123926124031_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123921124028_))))
                                (let ((_tl123924124036_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123926124031_)))
                                      (_hd123925124034_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123926124031_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123924124036_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123918124020_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123894123956_))
                                              (___match128241128242_
                                               _e123781124343_
                                               _hd123780124346_
                                               _tl123779124348_
                                               _e123896123951_
                                               _hd123895123954_
                                               _tl123894123956_
                                               _e123899123959_
                                               _hd123898123962_
                                               _tl123897123964_
                                               _e123902123967_
                                               _hd123901123970_
                                               _tl123900123972_
                                               _e123905123975_
                                               _hd123904123978_
                                               _tl123903123980_
                                               _e123908123983_
                                               _hd123907123986_
                                               _tl123906123988_
                                               _e123911123991_
                                               _hd123910123994_
                                               _tl123909123996_
                                               _e123914123999_
                                               _hd123913124002_
                                               _tl123912124004_
                                               _e123917124007_
                                               _hd123916124010_
                                               _tl123915124012_
                                               _e123920124015_
                                               _hd123919124018_
                                               _tl123918124020_
                                               _e123923124023_
                                               _hd123922124026_
                                               _tl123921124028_
                                               _e123926124031_
                                               _hd123925124034_
                                               _tl123924124036_)
                                              (___kont128116128117_))
                                          (___kont128116128117_))
                                      (___kont128116128117_))))
                              (___kont128116128117_))
                          (___kont128116128117_))
                      (___kont128116128117_))))
              (___kont128116128117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont128116128117_))
                                          (___kont128116128117_))))
                                  (___kont128116128117_))
                              (___kont128116128117_))
                          (___kont128116128117_))))
                  (___kont128116128117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128116128117_))
                                              (___kont128116128117_))))
                                      (___kont128116128117_))
                                  (___kont128116128117_))
                              (___kont128116128117_))))
                      (___kont128116128117_))))
              (___kont128116128117_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128116128117_))
                                              (___kont128116128117_))))
                                      (___kont128116128117_))))
                              (___kont128116128117_)))))
                  (___kont128116128117_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form123237_)
        (let* ((___stx128244128245_ _form123237_)
               (_g123241123365_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128244128245_)))))
          (let ((___kont128246128247_
                 (lambda (_L123735_ _L123736_ _L123737_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123736_))))
                (___kont128252128253_
                 (lambda (_L123583_ _L123584_ _L123585_ _L123586_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123583_))))
                (___kont128256128257_
                 (lambda (_L123450_ _L123451_ _L123452_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123450_)))))
            (let* ((___match128353128354_
                    (lambda (_e123333123370_
                             _hd123332123373_
                             _tl123331123375_
                             _e123336123378_
                             _hd123335123381_
                             _tl123334123383_
                             _e123339123386_
                             _hd123338123389_
                             _tl123337123391_
                             _e123342123394_
                             _hd123341123397_
                             _tl123340123399_
                             _e123345123402_
                             _hd123344123405_
                             _tl123343123407_
                             _e123348123410_
                             _hd123347123413_
                             _tl123346123415_
                             _e123351123418_
                             _hd123350123421_
                             _tl123349123423_
                             _e123354123426_
                             _hd123353123429_
                             _tl123352123431_
                             _e123357123434_
                             _hd123356123437_
                             _tl123355123439_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123349123423_))
                          (let ((_e123360123442_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123349123423_))))
                            (let ((_tl123358123447_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123360123442_)))
                                  (_hd123359123445_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123360123442_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123358123447_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123334123383_))
                                      (___kont128256128257_
                                       _hd123356123437_
                                       _hd123347123413_
                                       _hd123332123373_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123241123365_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g123241123365_)))))
                          (let () (declare (not safe)) (_g123241123365_)))))
                   (___match128283128284_
                    (lambda (_e123294123487_
                             _hd123293123490_
                             _tl123292123492_
                             ___splice128254128255_
                             _target123295123495_
                             _tl123297123497_)
                      (letrec ((_loop123298123500_
                                (lambda (_hd123296123503_ _arg123302123505_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123296123503_))
                                      (let ((_e123299123508_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123296123503_))))
                                        (let ((_lp-tl123301123513_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123299123508_)))
                                              (_lp-hd123300123511_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123299123508_))))
                                          (let ((__tmp129527
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123300123511_
                                                         _arg123302123505_))))
                                            (declare (not safe))
                                            (_loop123298123500_
                                             _lp-tl123301123513_
                                             __tmp129527))))
                                      (let ((_arg123303123516_
                                             (reverse _arg123302123505_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123292123492_))
                                            (let ((_e123306123519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123292123492_))))
                                              (let ((_tl123304123524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123306123519_)))
                                                    (_hd123305123522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123306123519_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123305123522_))
                                                    (let ((_e123309123527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123305123522_))))
                                                      (let ((_tl123307123532_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123309123527_)))
                    (_hd123308123530_
                     (let () (declare (not safe)) (##car _e123309123527_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123308123530_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123308123530_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123307123532_))
                            (let ((_e123312123535_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123307123532_))))
                              (let ((_tl123310123540_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123312123535_)))
                                    (_hd123311123538_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123312123535_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123311123538_))
                                    (let ((_e123315123543_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123311123538_))))
                                      (let ((_tl123313123548_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123315123543_)))
                                            (_hd123314123546_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123315123543_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123314123546_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123314123546_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123313123548_))
                                                    (let ((_e123318123551_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123313123548_))))
                                                      (let ((_tl123316123556_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123318123551_)))
                    (_hd123317123554_
                     (let () (declare (not safe)) (##car _e123318123551_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123316123556_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123310123540_))
                        (let ((_e123321123559_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123310123540_))))
                          (let ((_tl123319123564_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123321123559_)))
                                (_hd123320123562_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123321123559_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123320123562_))
                                (let ((_e123324123567_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123320123562_))))
                                  (let ((_tl123322123572_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123324123567_)))
                                        (_hd123323123570_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123324123567_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123323123570_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123323123570_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123322123572_))
                                                (let ((_e123327123575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123322123572_))))
                                                  (let ((_tl123325123580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123327123575_)))
                                                        (_hd123326123578_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123327123575_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123325123580_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl123304123524_))
                                                            (___kont128252128253_
                                                             _hd123326123578_
                                                             _hd123317123554_
                                                             _tl123297123497_
                                                             _arg123303123516_)
                                                            (___match128353128354_
                                                             _e123294123487_
                                                             _hd123293123490_
                                                             _tl123292123492_
                                                             _e123306123519_
                                                             _hd123305123522_
                                                             _tl123304123524_
                                                             _e123309123527_
                                                             _hd123308123530_
                                                             _tl123307123532_
                                                             _e123312123535_
                                                             _hd123311123538_
                                                             _tl123310123540_
                                                             _e123315123543_
                                                             _hd123314123546_
                                                             _tl123313123548_
                                                             _e123318123551_
                                                             _hd123317123554_
                                                             _tl123316123556_
                                                             _e123321123559_
                                                             _hd123320123562_
                                                             _tl123319123564_
                                                             _e123324123567_
                                                             _hd123323123570_
                                                             _tl123322123572_
                                                             _e123327123575_
                                                             _hd123326123578_
                                                             _tl123325123580_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g123241123365_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g123241123365_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g123241123365_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g123241123365_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g123241123365_)))))
                        (let () (declare (not safe)) (_g123241123365_)))
                    (let () (declare (not safe)) (_g123241123365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g123241123365_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g123241123365_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g123241123365_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g123241123365_)))))
                            (let () (declare (not safe)) (_g123241123365_)))
                        (let () (declare (not safe)) (_g123241123365_)))
                    (let () (declare (not safe)) (_g123241123365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g123241123365_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g123241123365_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop123298123500_ _target123295123495_ '())))))
                   (___match128271128272_
                    (lambda (_e123248123623_
                             _hd123247123626_
                             _tl123246123628_
                             ___splice128248128249_
                             _target123249123631_
                             _tl123251123633_)
                      (letrec ((_loop123252123636_
                                (lambda (_hd123250123639_ _arg123256123641_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123250123639_))
                                      (let ((_e123253123644_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123250123639_))))
                                        (let ((_lp-tl123255123649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123253123644_)))
                                              (_lp-hd123254123647_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123253123644_))))
                                          (let ((__tmp129529
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123254123647_
                                                         _arg123256123641_))))
                                            (declare (not safe))
                                            (_loop123252123636_
                                             _lp-tl123255123649_
                                             __tmp129529))))
                                      (let ((_arg123257123652_
                                             (reverse _arg123256123641_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123246123628_))
                                            (let ((_e123260123655_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123246123628_))))
                                              (let ((_tl123258123660_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123260123655_)))
                                                    (_hd123259123658_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123260123655_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123259123658_))
                                                    (let ((_e123263123663_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123259123658_))))
                                                      (let ((_tl123261123668_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123263123663_)))
                    (_hd123262123666_
                     (let () (declare (not safe)) (##car _e123263123663_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123262123666_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123262123666_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123261123668_))
                            (let ((_e123266123671_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123261123668_))))
                              (let ((_tl123264123676_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123266123671_)))
                                    (_hd123265123674_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123266123671_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123265123674_))
                                    (let ((_e123269123679_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123265123674_))))
                                      (let ((_tl123267123684_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123269123679_)))
                                            (_hd123268123682_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123269123679_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123268123682_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123268123682_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123267123684_))
                                                    (let ((_e123272123687_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123267123684_))))
                                                      (let ((_tl123270123692_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123272123687_)))
                    (_hd123271123690_
                     (let () (declare (not safe)) (##car _e123272123687_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123270123692_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123264123676_))
                        (let ((___splice128250128251_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123264123676_
                                  '0))))
                          (let ((_tl123275123697_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128250128251_ '1)))
                                (_target123273123695_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128250128251_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123275123697_))
                                (letrec ((_loop123276123700_
                                          (lambda (_hd123274123703_
                                                   _xarg123280123705_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123274123703_))
                                                (let ((_e123277123708_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123274123703_))))
                                                  (let ((_lp-tl123279123713_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123277123708_)))
                                                        (_lp-hd123278123711_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123277123708_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123278123711_))
                                                        (let ((_e123284123716_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123278123711_))))
                  (let ((_tl123282123721_
                         (let () (declare (not safe)) (##cdr _e123284123716_)))
                        (_hd123283123719_
                         (let ()
                           (declare (not safe))
                           (##car _e123284123716_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123283123719_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123283123719_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123282123721_))
                                (let ((_e123287123724_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123282123721_))))
                                  (let ((_tl123285123729_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123287123724_)))
                                        (_hd123286123727_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123287123724_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123285123729_))
                                        (let ((__tmp129528
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123286123727_
                                                       _xarg123280123705_))))
                                          (declare (not safe))
                                          (_loop123276123700_
                                           _lp-tl123279123713_
                                           __tmp129528))
                                        (___match128283128284_
                                         _e123248123623_
                                         _hd123247123626_
                                         _tl123246123628_
                                         ___splice128248128249_
                                         _target123249123631_
                                         _tl123251123633_))))
                                (___match128283128284_
                                 _e123248123623_
                                 _hd123247123626_
                                 _tl123246123628_
                                 ___splice128248128249_
                                 _target123249123631_
                                 _tl123251123633_))
                            (___match128283128284_
                             _e123248123623_
                             _hd123247123626_
                             _tl123246123628_
                             ___splice128248128249_
                             _target123249123631_
                             _tl123251123633_))
                        (___match128283128284_
                         _e123248123623_
                         _hd123247123626_
                         _tl123246123628_
                         ___splice128248128249_
                         _target123249123631_
                         _tl123251123633_))))
                (___match128283128284_
                 _e123248123623_
                 _hd123247123626_
                 _tl123246123628_
                 ___splice128248128249_
                 _target123249123631_
                 _tl123251123633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123281123732_
                                                       (reverse _xarg123280123705_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123258123660_))
                                                      (___kont128246128247_
                                                       _xarg123281123732_
                                                       _hd123271123690_
                                                       _arg123257123652_)
                                                      (___match128283128284_
                                                       _e123248123623_
                                                       _hd123247123626_
                                                       _tl123246123628_
                                                       ___splice128248128249_
                                                       _target123249123631_
                                                       _tl123251123633_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop123276123700_
                                     _target123273123695_
                                     '())))
                                (___match128283128284_
                                 _e123248123623_
                                 _hd123247123626_
                                 _tl123246123628_
                                 ___splice128248128249_
                                 _target123249123631_
                                 _tl123251123633_))))
                        (___match128283128284_
                         _e123248123623_
                         _hd123247123626_
                         _tl123246123628_
                         ___splice128248128249_
                         _target123249123631_
                         _tl123251123633_))
                    (___match128283128284_
                     _e123248123623_
                     _hd123247123626_
                     _tl123246123628_
                     ___splice128248128249_
                     _target123249123631_
                     _tl123251123633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128283128284_
                                                     _e123248123623_
                                                     _hd123247123626_
                                                     _tl123246123628_
                                                     ___splice128248128249_
                                                     _target123249123631_
                                                     _tl123251123633_))
                                                (___match128283128284_
                                                 _e123248123623_
                                                 _hd123247123626_
                                                 _tl123246123628_
                                                 ___splice128248128249_
                                                 _target123249123631_
                                                 _tl123251123633_))
                                            (___match128283128284_
                                             _e123248123623_
                                             _hd123247123626_
                                             _tl123246123628_
                                             ___splice128248128249_
                                             _target123249123631_
                                             _tl123251123633_))))
                                    (___match128283128284_
                                     _e123248123623_
                                     _hd123247123626_
                                     _tl123246123628_
                                     ___splice128248128249_
                                     _target123249123631_
                                     _tl123251123633_))))
                            (___match128283128284_
                             _e123248123623_
                             _hd123247123626_
                             _tl123246123628_
                             ___splice128248128249_
                             _target123249123631_
                             _tl123251123633_))
                        (___match128283128284_
                         _e123248123623_
                         _hd123247123626_
                         _tl123246123628_
                         ___splice128248128249_
                         _target123249123631_
                         _tl123251123633_))
                    (___match128283128284_
                     _e123248123623_
                     _hd123247123626_
                     _tl123246123628_
                     ___splice128248128249_
                     _target123249123631_
                     _tl123251123633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128283128284_
                                                     _e123248123623_
                                                     _hd123247123626_
                                                     _tl123246123628_
                                                     ___splice128248128249_
                                                     _target123249123631_
                                                     _tl123251123633_))))
                                            (___match128283128284_
                                             _e123248123623_
                                             _hd123247123626_
                                             _tl123246123628_
                                             ___splice128248128249_
                                             _target123249123631_
                                             _tl123251123633_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123252123636_ _target123249123631_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128244128245_))
                  (let ((_e123248123623_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128244128245_))))
                    (let ((_tl123246123628_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123248123623_)))
                          (_hd123247123626_
                           (let ()
                             (declare (not safe))
                             (##car _e123248123623_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123247123626_))
                          (let ((___splice128248128249_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123247123626_
                                    '0))))
                            (let ((_tl123251123633_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128248128249_ '1)))
                                  (_target123249123631_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128248128249_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123251123633_))
                                  (___match128271128272_
                                   _e123248123623_
                                   _hd123247123626_
                                   _tl123246123628_
                                   ___splice128248128249_
                                   _target123249123631_
                                   _tl123251123633_)
                                  (___match128283128284_
                                   _e123248123623_
                                   _hd123247123626_
                                   _tl123246123628_
                                   ___splice128248128249_
                                   _target123249123631_
                                   _tl123251123633_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123246123628_))
                              (let ((_e123336123378_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123246123628_))))
                                (let ((_tl123334123383_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123336123378_)))
                                      (_hd123335123381_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123336123378_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123335123381_))
                                      (let ((_e123339123386_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123335123381_))))
                                        (let ((_tl123337123391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123339123386_)))
                                              (_hd123338123389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123339123386_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123338123389_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123338123389_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123337123391_))
                                                      (let ((_e123342123394_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123337123391_))))
                (let ((_tl123340123399_
                       (let () (declare (not safe)) (##cdr _e123342123394_)))
                      (_hd123341123397_
                       (let () (declare (not safe)) (##car _e123342123394_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123341123397_))
                      (let ((_e123345123402_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123341123397_))))
                        (let ((_tl123343123407_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123345123402_)))
                              (_hd123344123405_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123345123402_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123344123405_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123344123405_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123343123407_))
                                      (let ((_e123348123410_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123343123407_))))
                                        (let ((_tl123346123415_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123348123410_)))
                                              (_hd123347123413_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123348123410_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123346123415_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123340123399_))
                                                  (let ((_e123351123418_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123340123399_))))
                                                    (let ((_tl123349123423_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123351123418_)))
                                                          (_hd123350123421_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123351123418_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123350123421_))
                                                          (let ((_e123354123426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123350123421_))))
                    (let ((_tl123352123431_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123354123426_)))
                          (_hd123353123429_
                           (let ()
                             (declare (not safe))
                             (##car _e123354123426_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123353123429_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123353123429_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123352123431_))
                                  (let ((_e123357123434_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123352123431_))))
                                    (let ((_tl123355123439_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123357123434_)))
                                          (_hd123356123437_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123357123434_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123355123439_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123349123423_))
                                              (let ((_e123360123442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123349123423_))))
                                                (let ((_tl123358123447_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123360123442_)))
                                                      (_hd123359123445_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123360123442_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123358123447_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123334123383_))
                                                          (___kont128256128257_
                                                           _hd123356123437_
                                                           _hd123347123413_
                                                           _hd123247123626_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g123241123365_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g123241123365_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g123241123365_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g123241123365_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g123241123365_)))
                              (let () (declare (not safe)) (_g123241123365_)))
                          (let () (declare (not safe)) (_g123241123365_)))))
                  (let () (declare (not safe)) (_g123241123365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g123241123365_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g123241123365_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123241123365_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g123241123365_)))
                              (let ()
                                (declare (not safe))
                                (_g123241123365_)))))
                      (let () (declare (not safe)) (_g123241123365_)))))
              (let () (declare (not safe)) (_g123241123365_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g123241123365_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g123241123365_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123241123365_)))))
                              (let ()
                                (declare (not safe))
                                (_g123241123365_))))))
                  (let () (declare (not safe)) (_g123241123365_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form123041_)
        (let* ((_g123043123057_
                (lambda (_g123044123054_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123044123054_))))
               (_g123042123234_
                (lambda (_g123044123060_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123044123060_))
                      (let ((_e123049123062_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123044123060_))))
                        (let ((_hd123048123065_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123049123062_)))
                              (_tl123047123067_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123049123062_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123047123067_))
                              (let ((_e123052123070_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123047123067_))))
                                (let ((_hd123051123073_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123052123070_)))
                                      (_tl123050123075_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123052123070_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123050123075_))
                                      ((lambda (_L123078_ _L123079_)
                                         (let* ((___stx128366128367_ _L123079_)
                                                (_g123094123122_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx128366128367_)))))
                                           (let ((___kont128368128369_
                                                  (lambda (_L123213_)
                                                    (length (let ((__tmp129530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g123223123226_ _g123224123228_)
                             (let ()
                               (declare (not safe))
                               (cons _g123223123226_ _g123224123228_)))))
                      (declare (not safe))
                      (foldr1 __tmp129530 '() _L123213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont128372128373_
                                                  (lambda (_L123164_ _L123165_)
                                                    (let ((__tmp129531
                                                           (length (let ((__tmp129532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g123176123179_ _g123177123181_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g123176123179_
                                            _g123177123181_)))))
                             (declare (not safe))
                             (foldr1 __tmp129532 '() _L123165_)))))
              (declare (not safe))
              (cons __tmp129531 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont128376128377_
                                                  (lambda (_L123127_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match128391128392_
                                                     (lambda (___splice128374128375_
                                                              _target123108123140_
                                                              _tl123110123142_)
                                                       (letrec ((_loop123111123145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123109123148_ _arg123115123150_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123109123148_))
                               (let ((_e123112123153_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123109123148_))))
                                 (let ((_lp-tl123114123158_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123112123153_)))
                                       (_lp-hd123113123156_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123112123153_))))
                                   (let ((__tmp129533
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123113123156_
                                                  _arg123115123150_))))
                                     (declare (not safe))
                                     (_loop123111123145_
                                      _lp-tl123114123158_
                                      __tmp129533))))
                               (let ((_arg123116123161_
                                      (reverse _arg123115123150_)))
                                 (___kont128372128373_
                                  _tl123110123142_
                                  _arg123116123161_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123111123145_ _target123108123140_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128385128386_
                                                     (lambda (___splice128370128371_
                                                              _target123097123189_
                                                              _tl123099123191_)
                                                       (letrec ((_loop123100123194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123098123197_ _arg123104123199_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123098123197_))
                               (let ((_e123101123202_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123098123197_))))
                                 (let ((_lp-tl123103123207_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123101123202_)))
                                       (_lp-hd123102123205_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123101123202_))))
                                   (let ((__tmp129534
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123102123205_
                                                  _arg123104123199_))))
                                     (declare (not safe))
                                     (_loop123100123194_
                                      _lp-tl123103123207_
                                      __tmp129534))))
                               (let ((_arg123105123210_
                                      (reverse _arg123104123199_)))
                                 (___kont128368128369_ _arg123105123210_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123100123194_ _target123097123189_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx128366128367_))
                                                   (let ((___splice128370128371_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx128366128367_
                                                             '0))))
                                                     (let ((_tl123099123191_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice128370128371_
                                                               '1)))
                                                           (_target123097123189_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice128370128371_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl123099123191_))
                                                           (___match128385128386_
                                                            ___splice128370128371_
                                                            _target123097123189_
                                                            _tl123099123191_)
                                                           (___match128391128392_
                                                            ___splice128370128371_
                                                            _target123097123189_
                                                            _tl123099123191_))))
                                                   (___kont128376128377_
                                                    ___stx128366128367_))))))
                                       _hd123051123073_
                                       _hd123048123065_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123043123057_ _g123044123060_)))))
                              (let ()
                                (declare (not safe))
                                (_g123043123057_ _g123044123060_)))))
                      (let ()
                        (declare (not safe))
                        (_g123043123057_ _g123044123060_))))))
          (declare (not safe))
          (_g123042123234_ _form123041_))))
    (define gxc#lambda-expr?
      (lambda (_expr122994_)
        (let* ((___stx128394128395_ _expr122994_)
               (_g122997123007_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128394128395_)))))
          (let ((___kont128396128397_ (lambda (_L123027_) '#t))
                (___kont128398128399_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128394128395_))
                (let ((_e123002123019_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128394128395_))))
                  (let ((_tl123000123024_
                         (let () (declare (not safe)) (##cdr _e123002123019_)))
                        (_hd123001123022_
                         (let ()
                           (declare (not safe))
                           (##car _e123002123019_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123001123022_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd123001123022_))
                            (___kont128396128397_ _tl123000123024_)
                            (___kont128398128399_))
                        (___kont128398128399_))))
                (___kont128398128399_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr122947_)
        (let* ((___stx128412128413_ _expr122947_)
               (_g122950122960_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128412128413_)))))
          (let ((___kont128414128415_ (lambda (_L122980_) '#t))
                (___kont128416128417_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128412128413_))
                (let ((_e122955122972_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128412128413_))))
                  (let ((_tl122953122977_
                         (let () (declare (not safe)) (##cdr _e122955122972_)))
                        (_hd122954122975_
                         (let ()
                           (declare (not safe))
                           (##car _e122955122972_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122954122975_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd122954122975_))
                            (___kont128414128415_ _tl122953122977_)
                            (___kont128416128417_))
                        (___kont128416128417_))))
                (___kont128416128417_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122816_)
        (let* ((___stx128430128431_ _expr122816_)
               (_g122819122849_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128430128431_)))))
          (let ((___kont128432128433_
                 (lambda (_L122917_ _L122918_ _L122919_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122919_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122918_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122917_))
                           '#f)
                       '#f)))
                (___kont128434128435_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128430128431_))
                (let ((_e122826122861_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128430128431_))))
                  (let ((_tl122824122866_
                         (let () (declare (not safe)) (##cdr _e122826122861_)))
                        (_hd122825122864_
                         (let ()
                           (declare (not safe))
                           (##car _e122826122861_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122825122864_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122825122864_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122824122866_))
                                (let ((_e122829122869_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122824122866_))))
                                  (let ((_tl122827122874_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122829122869_)))
                                        (_hd122828122872_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122829122869_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122828122872_))
                                        (let ((_e122832122877_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122828122872_))))
                                          (let ((_tl122830122882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122832122877_)))
                                                (_hd122831122880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122832122877_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122831122880_))
                                                (let ((_e122835122885_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122831122880_))))
                                                  (let ((_tl122833122890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122835122885_)))
                                                        (_hd122834122888_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122835122885_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122834122888_))
                                                        (let ((_e122838122893_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122834122888_))))
                  (let ((_tl122836122898_
                         (let () (declare (not safe)) (##cdr _e122838122893_)))
                        (_hd122837122896_
                         (let ()
                           (declare (not safe))
                           (##car _e122838122893_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122836122898_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122833122890_))
                            (let ((_e122841122901_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122833122890_))))
                              (let ((_tl122839122906_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122841122901_)))
                                    (_hd122840122904_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122841122901_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122839122906_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122830122882_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122827122874_))
                                            (let ((_e122844122909_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122827122874_))))
                                              (let ((_tl122842122914_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122844122909_)))
                                                    (_hd122843122912_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122844122909_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122842122914_))
                                                    (___kont128432128433_
                                                     _hd122843122912_
                                                     _hd122840122904_
                                                     _hd122837122896_)
                                                    (___kont128434128435_))))
                                            (___kont128434128435_))
                                        (___kont128434128435_))
                                    (___kont128434128435_))))
                            (___kont128434128435_))
                        (___kont128434128435_))))
                (___kont128434128435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128434128435_))))
                                        (___kont128434128435_))))
                                (___kont128434128435_))
                            (___kont128434128435_))
                        (___kont128434128435_))))
                (___kont128434128435_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr122141_)
        (let* ((___stx128492128493_ _expr122141_)
               (_g122144122302_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128492128493_)))))
          (let ((___kont128494128495_
                 (lambda (_L122690_
                          _L122691_
                          _L122692_
                          _L122693_
                          _L122694_
                          _L122695_
                          _L122696_
                          _L122697_
                          _L122698_
                          _L122699_
                          _L122700_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122697_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122693_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122692_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122700_
                                      _L122691_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122699_
                                          _L122696_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122694_
                                              _L122690_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122698_
                                              _L122695_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont128496128497_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128492128493_))
                (let ((_e122159122314_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128492128493_))))
                  (let ((_tl122157122319_
                         (let () (declare (not safe)) (##cdr _e122159122314_)))
                        (_hd122158122317_
                         (let ()
                           (declare (not safe))
                           (##car _e122159122314_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122158122317_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122158122317_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122157122319_))
                                (let ((_e122162122322_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122157122319_))))
                                  (let ((_tl122160122327_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122162122322_)))
                                        (_hd122161122325_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122162122322_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122161122325_))
                                        (let ((_e122165122330_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122161122325_))))
                                          (let ((_tl122163122335_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122165122330_)))
                                                (_hd122164122333_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122165122330_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122164122333_))
                                                (let ((_e122168122338_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122164122333_))))
                                                  (let ((_tl122166122343_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122168122338_)))
                                                        (_hd122167122341_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122168122338_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122167122341_))
                                                        (let ((_e122171122346_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122167122341_))))
                  (let ((_tl122169122351_
                         (let () (declare (not safe)) (##cdr _e122171122346_)))
                        (_hd122170122349_
                         (let ()
                           (declare (not safe))
                           (##car _e122171122346_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122169122351_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122166122343_))
                            (let ((_e122174122354_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122166122343_))))
                              (let ((_tl122172122359_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122174122354_)))
                                    (_hd122173122357_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122174122354_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122173122357_))
                                    (let ((_e122177122362_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122173122357_))))
                                      (let ((_tl122175122367_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122177122362_)))
                                            (_hd122176122365_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122177122362_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122176122365_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd122176122365_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122175122367_))
                                                    (let ((_e122180122370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122175122367_))))
                                                      (let ((_tl122178122375_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122180122370_)))
                    (_hd122179122373_
                     (let () (declare (not safe)) (##car _e122180122370_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd122179122373_))
                    (let ((_e122183122378_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd122179122373_))))
                      (let ((_tl122181122383_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122183122378_)))
                            (_hd122182122381_
                             (let ()
                               (declare (not safe))
                               (##car _e122183122378_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd122182122381_))
                            (let ((_e122186122386_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd122182122381_))))
                              (let ((_tl122184122391_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122186122386_)))
                                    (_hd122185122389_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122186122386_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122185122389_))
                                    (let ((_e122189122394_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122185122389_))))
                                      (let ((_tl122187122399_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122189122394_)))
                                            (_hd122188122397_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122189122394_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122187122399_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122184122391_))
                                                (let ((_e122192122402_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122184122391_))))
                                                  (let ((_tl122190122407_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122192122402_)))
                                                        (_hd122191122405_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122192122402_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122190122407_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122181122383_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl122178122375_))
                        (let ((_e122195122410_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122178122375_))))
                          (let ((_tl122193122415_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122195122410_)))
                                (_hd122194122413_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122195122410_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122194122413_))
                                (let ((_e122198122418_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122194122413_))))
                                  (let ((_tl122196122423_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122198122418_)))
                                        (_hd122197122421_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122198122418_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122197122421_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd122197122421_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122196122423_))
                                                (let ((_e122201122426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122196122423_))))
                                                  (let ((_tl122199122431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122201122426_)))
                                                        (_hd122200122429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122201122426_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122200122429_))
                                                        (let ((_e122204122434_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122200122429_))))
                  (let ((_tl122202122439_
                         (let () (declare (not safe)) (##cdr _e122204122434_)))
                        (_hd122203122437_
                         (let ()
                           (declare (not safe))
                           (##car _e122204122434_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122199122431_))
                        (let ((_e122207122442_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122199122431_))))
                          (let ((_tl122205122447_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122207122442_)))
                                (_hd122206122445_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122207122442_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122206122445_))
                                (let ((_e122210122450_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122206122445_))))
                                  (let ((_tl122208122455_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122210122450_)))
                                        (_hd122209122453_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122210122450_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122209122453_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd122209122453_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122208122455_))
                                                (let ((_e122213122458_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122208122455_))))
                                                  (let ((_tl122211122463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122213122458_)))
                                                        (_hd122212122461_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122213122458_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122212122461_))
                                                        (let ((_e122216122466_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122212122461_))))
                  (let ((_tl122214122471_
                         (let () (declare (not safe)) (##cdr _e122216122466_)))
                        (_hd122215122469_
                         (let ()
                           (declare (not safe))
                           (##car _e122216122466_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122215122469_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122215122469_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122214122471_))
                                (let ((_e122219122474_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122214122471_))))
                                  (let ((_tl122217122479_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122219122474_)))
                                        (_hd122218122477_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122219122474_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122217122479_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122211122463_))
                                            (let ((_e122222122482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122211122463_))))
                                              (let ((_tl122220122487_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122222122482_)))
                                                    (_hd122221122485_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122222122482_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122221122485_))
                                                    (let ((_e122225122490_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122221122485_))))
                                                      (let ((_tl122223122495_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122225122490_)))
                    (_hd122224122493_
                     (let () (declare (not safe)) (##car _e122225122490_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122224122493_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122224122493_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122223122495_))
                            (let ((_e122228122498_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122223122495_))))
                              (let ((_tl122226122503_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122228122498_)))
                                    (_hd122227122501_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122228122498_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122226122503_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122220122487_))
                                        (let ((_e122231122506_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122220122487_))))
                                          (let ((_tl122229122511_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122231122506_)))
                                                (_hd122230122509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122231122506_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122230122509_))
                                                (let ((_e122234122514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122230122509_))))
                                                  (let ((_tl122232122519_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122234122514_)))
                                                        (_hd122233122517_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122234122514_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd122233122517_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd122233122517_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl122232122519_))
                        (let ((_e122237122522_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122232122519_))))
                          (let ((_tl122235122527_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122237122522_)))
                                (_hd122236122525_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122237122522_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122235122527_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122205122447_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122193122415_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122172122359_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122163122335_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122160122327_))
                                                    (let ((_e122240122530_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122160122327_))))
                                                      (let ((_tl122238122535_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122240122530_)))
                    (_hd122239122533_
                     (let () (declare (not safe)) (##car _e122240122530_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd122239122533_))
                    (let ((_e122243122538_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd122239122533_))))
                      (let ((_tl122241122543_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122243122538_)))
                            (_hd122242122541_
                             (let ()
                               (declare (not safe))
                               (##car _e122243122538_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd122242122541_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd122242122541_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl122241122543_))
                                    (let ((_e122246122546_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl122241122543_))))
                                      (let ((_tl122244122551_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122246122546_)))
                                            (_hd122245122549_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122246122546_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122244122551_))
                                            (let ((_e122249122554_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122244122551_))))
                                              (let ((_tl122247122559_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122249122554_)))
                                                    (_hd122248122557_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122249122554_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122248122557_))
                                                    (let ((_e122252122562_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122248122557_))))
                                                      (let ((_tl122250122567_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122252122562_)))
                    (_hd122251122565_
                     (let () (declare (not safe)) (##car _e122252122562_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122251122565_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122251122565_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122250122567_))
                            (let ((_e122255122570_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122250122567_))))
                              (let ((_tl122253122575_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122255122570_)))
                                    (_hd122254122573_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122255122570_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122254122573_))
                                    (let ((_e122258122578_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122254122573_))))
                                      (let ((_tl122256122583_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122258122578_)))
                                            (_hd122257122581_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122258122578_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122257122581_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122257122581_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122256122583_))
                                                    (let ((_e122261122586_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122256122583_))))
                                                      (let ((_tl122259122591_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122261122586_)))
                    (_hd122260122589_
                     (let () (declare (not safe)) (##car _e122261122586_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122259122591_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122253122575_))
                        (let ((_e122264122594_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122253122575_))))
                          (let ((_tl122262122599_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122264122594_)))
                                (_hd122263122597_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122264122594_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122263122597_))
                                (let ((_e122267122602_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122263122597_))))
                                  (let ((_tl122265122607_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122267122602_)))
                                        (_hd122266122605_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122267122602_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122266122605_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122266122605_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122265122607_))
                                                (let ((_e122270122610_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122265122607_))))
                                                  (let ((_tl122268122615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122270122610_)))
                                                        (_hd122269122613_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122270122610_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122268122615_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl122262122599_))
                                                            (let ((_e122273122618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl122262122599_))))
                      (let ((_tl122271122623_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122273122618_)))
                            (_hd122272122621_
                             (let ()
                               (declare (not safe))
                               (##car _e122273122618_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd122272122621_))
                            (let ((_e122276122626_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd122272122621_))))
                              (let ((_tl122274122631_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122276122626_)))
                                    (_hd122275122629_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122276122626_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd122275122629_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd122275122629_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122274122631_))
                                            (let ((_e122279122634_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122274122631_))))
                                              (let ((_tl122277122639_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122279122634_)))
                                                    (_hd122278122637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122279122634_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122277122639_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl122271122623_))
                                                        (let ((_e122282122642_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl122271122623_))))
                  (let ((_tl122280122647_
                         (let () (declare (not safe)) (##cdr _e122282122642_)))
                        (_hd122281122645_
                         (let ()
                           (declare (not safe))
                           (##car _e122282122642_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd122281122645_))
                        (let ((_e122285122650_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd122281122645_))))
                          (let ((_tl122283122655_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122285122650_)))
                                (_hd122284122653_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122285122650_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd122284122653_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd122284122653_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122283122655_))
                                        (let ((_e122288122658_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122283122655_))))
                                          (let ((_tl122286122663_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122288122658_)))
                                                (_hd122287122661_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122288122658_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122286122663_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122280122647_))
                                                    (let ((_e122291122666_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122280122647_))))
                                                      (let ((_tl122289122671_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122291122666_)))
                    (_hd122290122669_
                     (let () (declare (not safe)) (##car _e122291122666_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd122290122669_))
                    (let ((_e122294122674_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd122290122669_))))
                      (let ((_tl122292122679_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122294122674_)))
                            (_hd122293122677_
                             (let ()
                               (declare (not safe))
                               (##car _e122294122674_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd122293122677_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd122293122677_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl122292122679_))
                                    (let ((_e122297122682_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl122292122679_))))
                                      (let ((_tl122295122687_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122297122682_)))
                                            (_hd122296122685_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122297122682_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122295122687_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122289122671_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122247122559_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122238122535_))
                                                        (___kont128494128495_
                                                         _hd122296122685_
                                                         _hd122287122661_
                                                         _hd122269122613_
                                                         _hd122260122589_
                                                         _hd122245122549_
                                                         _hd122236122525_
                                                         _hd122227122501_
                                                         _hd122218122477_
                                                         _hd122203122437_
                                                         _hd122188122397_
                                                         _hd122170122349_)
                                                        (___kont128496128497_))
                                                    (___kont128496128497_))
                                                (___kont128496128497_))
                                            (___kont128496128497_))))
                                    (___kont128496128497_))
                                (___kont128496128497_))
                            (___kont128496128497_))))
                    (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128496128497_))
                                                (___kont128496128497_))))
                                        (___kont128496128497_))
                                    (___kont128496128497_))
                                (___kont128496128497_))))
                        (___kont128496128497_))))
                (___kont128496128497_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128496128497_))))
                                            (___kont128496128497_))
                                        (___kont128496128497_))
                                    (___kont128496128497_))))
                            (___kont128496128497_))))
                    (___kont128496128497_))
                (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128496128497_))
                                            (___kont128496128497_))
                                        (___kont128496128497_))))
                                (___kont128496128497_))))
                        (___kont128496128497_))
                    (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128496128497_))
                                                (___kont128496128497_))
                                            (___kont128496128497_))))
                                    (___kont128496128497_))))
                            (___kont128496128497_))
                        (___kont128496128497_))
                    (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128496128497_))))
                                            (___kont128496128497_))))
                                    (___kont128496128497_))
                                (___kont128496128497_))
                            (___kont128496128497_))))
                    (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128496128497_))
                                                (___kont128496128497_))
                                            (___kont128496128497_))
                                        (___kont128496128497_))
                                    (___kont128496128497_))
                                (___kont128496128497_))))
                        (___kont128496128497_))
                    (___kont128496128497_))
                (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128496128497_))))
                                        (___kont128496128497_))
                                    (___kont128496128497_))))
                            (___kont128496128497_))
                        (___kont128496128497_))
                    (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128496128497_))))
                                            (___kont128496128497_))
                                        (___kont128496128497_))))
                                (___kont128496128497_))
                            (___kont128496128497_))
                        (___kont128496128497_))))
                (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128496128497_))
                                            (___kont128496128497_))
                                        (___kont128496128497_))))
                                (___kont128496128497_))))
                        (___kont128496128497_))))
                (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128496128497_))
                                            (___kont128496128497_))
                                        (___kont128496128497_))))
                                (___kont128496128497_))))
                        (___kont128496128497_))
                    (___kont128496128497_))
                (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128496128497_))
                                            (___kont128496128497_))))
                                    (___kont128496128497_))))
                            (___kont128496128497_))))
                    (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128496128497_))
                                                (___kont128496128497_))
                                            (___kont128496128497_))))
                                    (___kont128496128497_))))
                            (___kont128496128497_))
                        (___kont128496128497_))))
                (___kont128496128497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128496128497_))))
                                        (___kont128496128497_))))
                                (___kont128496128497_))
                            (___kont128496128497_))
                        (___kont128496128497_))))
                (___kont128496128497_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121883_ _id121884_ _clauses121885_ _gensym?121886_)
        (let _lp121888_ ((_rest121890_ _clauses121885_)
                         (_ids121891_ '())
                         (_impls121892_ '())
                         (_clauses121893_ '()))
          (let* ((_rest121894121902_ _rest121890_)
                 (_else121896121910_
                  (lambda ()
                    (values (reverse _ids121891_)
                            (reverse _impls121892_)
                            (reverse _clauses121893_))))
                 (_K121898122115_
                  (lambda (_rest121913_ _clause121914_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121914_))
                        (let ((__tmp129590
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121914_ _clauses121893_))))
                          (declare (not safe))
                          (_lp121888_
                           _rest121913_
                           _ids121891_
                           _impls121892_
                           __tmp129590))
                        (let* ((_g121916121927_
                                (lambda (_g121917121924_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121917121924_))))
                               (_g121915122112_
                                (lambda (_g121917121930_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121917121930_))
                                      (let ((_e121922121932_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121917121930_))))
                                        (let ((_hd121921121935_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121922121932_)))
                                              (_tl121920121937_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121922121932_))))
                                          ((lambda (_L121940_ _L121941_)
                                             (let* ((_id121958_
                                                     (let ((__tmp129537
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121884_)))
                                                           (__tmp129536
                                                            (length _clauses121893_))
                                                           (__tmp129535
                                                            (if _gensym?121886_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp129537
                                                        '"__"
                                                        __tmp129536
                                                        __tmp129535)))
                                                    (_id121960_
                                                     (let ((__tmp129538
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121883_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id121958_
                                                        __tmp129538)))
                                                    (_impl121962_
                                                     (let ((__tmp129539
                                                            (let ((__tmp129541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp129540
                           (let ()
                             (declare (not safe))
                             (cons _L121941_ _L121940_))))
                      (declare (not safe))
                      (cons __tmp129541 __tmp129540))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp129539 _stx121883_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause122109_
                                                     (let* ((___stx128876128877_
                                                             _L121941_)
                                                            (_g121966121994_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128876128877_)))))
               (let ((___kont128878128879_
                      (lambda (_L122088_)
                        (let ((__tmp129542
                               (let ((__tmp129543
                                      (let ((__tmp129544
                                             (let ((__tmp129545
                                                    (let ((__tmp129551
                                                           (let ((__tmp129552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id121960_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129552)))
                  (__tmp129546
                   (let ((__tmp129547
                          (lambda (_g122098122101_ _g122099122103_)
                            (let ((__tmp129548
                                   (let ((__tmp129550
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp129549
                                          (let ()
                                            (declare (not safe))
                                            (cons _g122098122101_ '()))))
                                     (declare (not safe))
                                     (cons __tmp129550 __tmp129549))))
                              (declare (not safe))
                              (cons __tmp129548 _g122099122103_)))))
                     (declare (not safe))
                     (foldr1 __tmp129547 '() _L122088_))))
              (declare (not safe))
              (cons __tmp129551 __tmp129546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129545))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129544
                                         _stx121883_))))
                                 (declare (not safe))
                                 (cons __tmp129543 '()))))
                          (declare (not safe))
                          (cons _L121941_ __tmp129542))))
                     (___kont128882128883_
                      (lambda (_L122039_ _L122040_)
                        (let ((__tmp129553
                               (let ((__tmp129554
                                      (let ((__tmp129555
                                             (let ((__tmp129556
                                                    (let ((__tmp129570
                                                           (let ((__tmp129571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129571)))
                  (__tmp129557
                   (let ((__tmp129568
                          (let ((__tmp129569
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121960_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129569)))
                         (__tmp129558
                          (let ((__tmp129564
                                 (let ((__tmp129565
                                        (let ((__tmp129567
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp129566
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L122039_ '()))))
                                          (declare (not safe))
                                          (cons __tmp129567 __tmp129566))))
                                   (declare (not safe))
                                   (cons __tmp129565 '())))
                                (__tmp129559
                                 (let ((__tmp129560
                                        (lambda (_g122051122054_
                                                 _g122052122056_)
                                          (let ((__tmp129561
                                                 (let ((__tmp129563
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp129562
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g122051122054_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp129563
                                                         __tmp129562))))
                                            (declare (not safe))
                                            (cons __tmp129561
                                                  _g122052122056_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp129560 '() _L122040_))))
                            (declare (not safe))
                            (foldr1 cons __tmp129564 __tmp129559))))
                     (declare (not safe))
                     (cons __tmp129568 __tmp129558))))
              (declare (not safe))
              (cons __tmp129570 __tmp129557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129556))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129555
                                         _stx121883_))))
                                 (declare (not safe))
                                 (cons __tmp129554 '()))))
                          (declare (not safe))
                          (cons _L121941_ __tmp129553))))
                     (___kont128886128887_
                      (lambda (_L121999_)
                        (let ((__tmp129572
                               (let ((__tmp129573
                                      (let ((__tmp129574
                                             (let ((__tmp129575
                                                    (let ((__tmp129583
                                                           (let ((__tmp129584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129584)))
                  (__tmp129576
                   (let ((__tmp129581
                          (let ((__tmp129582
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121960_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129582)))
                         (__tmp129577
                          (let ((__tmp129578
                                 (let ((__tmp129580
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp129579
                                        (let ()
                                          (declare (not safe))
                                          (cons _L121999_ '()))))
                                   (declare (not safe))
                                   (cons __tmp129580 __tmp129579))))
                            (declare (not safe))
                            (cons __tmp129578 '()))))
                     (declare (not safe))
                     (cons __tmp129581 __tmp129577))))
              (declare (not safe))
              (cons __tmp129583 __tmp129576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129575))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129574
                                         _stx121883_))))
                                 (declare (not safe))
                                 (cons __tmp129573 '()))))
                          (declare (not safe))
                          (cons _L121941_ __tmp129572)))))
                 (let* ((___match128901128902_
                         (lambda (___splice128884128885_
                                  _target121980122015_
                                  _tl121982122017_)
                           (letrec ((_loop121983122020_
                                     (lambda (_hd121981122023_
                                              _arg121987122025_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121981122023_))
                                           (let ((_e121984122028_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121981122023_))))
                                             (let ((_lp-tl121986122033_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121984122028_)))
                                                   (_lp-hd121985122031_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121984122028_))))
                                               (let ((__tmp129585
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121985122031_
                                                              _arg121987122025_))))
                                                 (declare (not safe))
                                                 (_loop121983122020_
                                                  _lp-tl121986122033_
                                                  __tmp129585))))
                                           (let ((_arg121988122036_
                                                  (reverse _arg121987122025_)))
                                             (___kont128882128883_
                                              _tl121982122017_
                                              _arg121988122036_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121983122020_
                                _target121980122015_
                                '())))))
                        (___match128895128896_
                         (lambda (___splice128880128881_
                                  _target121969122064_
                                  _tl121971122066_)
                           (letrec ((_loop121972122069_
                                     (lambda (_hd121970122072_
                                              _arg121976122074_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121970122072_))
                                           (let ((_e121973122077_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121970122072_))))
                                             (let ((_lp-tl121975122082_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121973122077_)))
                                                   (_lp-hd121974122080_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121973122077_))))
                                               (let ((__tmp129586
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121974122080_
                                                              _arg121976122074_))))
                                                 (declare (not safe))
                                                 (_loop121972122069_
                                                  _lp-tl121975122082_
                                                  __tmp129586))))
                                           (let ((_arg121977122085_
                                                  (reverse _arg121976122074_)))
                                             (___kont128878128879_
                                              _arg121977122085_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121972122069_
                                _target121969122064_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128876128877_))
                       (let ((___splice128880128881_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128876128877_
                                 '0))))
                         (let ((_tl121971122066_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128880128881_ '1)))
                               (_target121969122064_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128880128881_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121971122066_))
                               (___match128895128896_
                                ___splice128880128881_
                                _target121969122064_
                                _tl121971122066_)
                               (___match128901128902_
                                ___splice128880128881_
                                _target121969122064_
                                _tl121971122066_))))
                       (___kont128886128887_ ___stx128876128877_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp129589
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id121960_
                                                              _ids121891_)))
                                                     (__tmp129588
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl121962_
                                                              _impls121892_)))
                                                     (__tmp129587
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause122109_
                                                              _clauses121893_))))
                                                 (declare (not safe))
                                                 (_lp121888_
                                                  _rest121913_
                                                  __tmp129589
                                                  __tmp129588
                                                  __tmp129587))))
                                           _tl121920121937_
                                           _hd121921121935_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121916121927_ _g121917121930_))))))
                          (declare (not safe))
                          (_g121915122112_ _clause121914_))))))
            (if (let () (declare (not safe)) (##pair? _rest121894121902_))
                (let ((_hd121899122118_
                       (let ()
                         (declare (not safe))
                         (##car _rest121894121902_)))
                      (_tl121900122120_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121894121902_))))
                  (let* ((_clause122123_ _hd121899122118_)
                         (_rest122125_ _tl121900122120_))
                    (declare (not safe))
                    (_K121898122115_ _rest122125_ _clause122123_)))
                (let () (declare (not safe)) (_else121896121910_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx122130_ _id122131_ _clauses122132_)
        (let ((_gensym?122134_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx122130_
           _id122131_
           _clauses122132_
           _gensym?122134_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g129592_
        (let ((_g129591_ (let () (declare (not safe)) (##length _g129592_))))
          (cond ((let () (declare (not safe)) (##fx= _g129591_ 3))
                 (apply (lambda (_stx122130_ _id122131_ _clauses122132_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx122130_
                             _id122131_
                             _clauses122132_)))
                        _g129592_))
                ((let () (declare (not safe)) (##fx= _g129591_ 4))
                 (apply (lambda (_stx122136_
                                 _id122137_
                                 _clauses122138_
                                 _gensym?122139_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx122136_
                             _id122137_
                             _clauses122138_
                             _gensym?122139_)))
                        _g129592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g129592_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self121159_ _stx121160_)
        (letrec ((_case-lambda-clause-def121162_
                  (lambda (_id121879_ _impl121880_)
                    (let ((__tmp129593
                           (let ((__tmp129594
                                  (let ((__tmp129597
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121879_ '())))
                                        (__tmp129595
                                         (let ((__tmp129596
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self121159_
                                                   _impl121880_))))
                                           (declare (not safe))
                                           (cons __tmp129596 '()))))
                                    (declare (not safe))
                                    (cons __tmp129597 __tmp129595))))
                             (declare (not safe))
                             (cons '%#define-values __tmp129594))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129593 _stx121160_))))
                 (_opt-lambda-dispatch-name121163_
                  (lambda (_id121875_)
                    (if (uninterned-symbol? _id121875_)
                        (let ((_str121877_ (symbol->string _id121875_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121877_))
                              '"%"
                              _id121875_))
                        _id121875_)))
                 (_kw-lambda-dispatch-name121164_
                  (lambda (_id121870_ _name121871_)
                    (if (uninterned-symbol? _id121870_)
                        (let ((_str121873_ (symbol->string _id121870_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121873_))
                              _name121871_
                              _id121870_))
                        _id121870_))))
          (let* ((___stx128924128925_ _stx121160_)
                 (_g121169121228_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128924128925_)))))
            (let ((___kont128926128927_
                   (lambda (_L121779_ _L121780_)
                     (let* ((___stx128904128905_ _L121779_)
                            (_g121797121811_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128904128905_)))))
                       (let ((___kont128906128907_
                              (lambda (_L121855_) _stx121160_))
                             (___kont128908128909_
                              (lambda (_L121824_)
                                (let ((_g129598_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx121160_
                                          _L121780_
                                          _L121824_))))
                                  (begin
                                    (let ((_g129599_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129598_)
                                                 (##vector-length _g129598_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129599_ 3)))
                                          (error "Context expects 3 values"
                                                 _g129599_)))
                                    (let ((_ids121834_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129598_ 0)))
                                          (_impls121835_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129598_ 1)))
                                          (_clauses121836_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129598_ 2))))
                                      (let* ((_g129600_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121834_))
                                             (_defs121839_
                                              (map _case-lambda-clause-def121162_
                                                   _ids121834_
                                                   _impls121835_)))
                                        (let ((__tmp129602
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121780_)))
                                              (__tmp129601
                                               (map gxc#identifier-symbol
                                                    _ids121834_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp129602
                                           '" => "
                                           __tmp129601))
                                        (let ((__tmp129603
                                               (let ((__tmp129604
                                                      (let ((__tmp129605
                                                             (let ((__tmp129606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129607
                                   (let ((__tmp129608
                                          (let ((__tmp129613
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121780_ '())))
                                                (__tmp129609
                                                 (let ((__tmp129610
                                                        (let ((__tmp129612
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121836_)))
                      (__tmp129611
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp129612 __tmp129611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129610 '()))))
                                            (declare (not safe))
                                            (cons __tmp129613 __tmp129609))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp129608))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129607
                               _stx121160_))))
                       (declare (not safe))
                       (cons __tmp129606 '()))))
                (declare (not safe))
                (foldr1 cons __tmp129605 _defs121839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp129604))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp129603
                                           _stx121160_)))))))))
                         (let ((___match128915128916_
                                (lambda (_e121802121847_
                                         _hd121801121850_
                                         _tl121800121852_)
                                  (let ((_L121855_ _tl121800121852_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121855_))
                                        (___kont128906128907_ _L121855_)
                                        (___kont128908128909_
                                         _tl121800121852_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128904128905_))
                               (let ((_e121802121847_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128904128905_))))
                                 (let ((_tl121800121852_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121802121847_)))
                                       (_hd121801121850_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121802121847_))))
                                   (___match128915128916_
                                    _e121802121847_
                                    _hd121801121850_
                                    _tl121800121852_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121797121811_))))))))
                  (___kont128928128929_
                   (lambda (_L121597_ _L121598_)
                     (let* ((_g121614121644_
                             (lambda (_g121615121641_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g121615121641_))))
                            (_g121613121739_
                             (lambda (_g121615121647_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g121615121647_))
                                   (let ((_e121621121649_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g121615121647_))))
                                     (let ((_hd121620121652_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e121621121649_)))
                                           (_tl121619121654_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e121621121649_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl121619121654_))
                                           (let ((_e121624121657_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl121619121654_))))
                                             (let ((_hd121623121660_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121624121657_)))
                                                   (_tl121622121662_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121624121657_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121623121660_))
                                                   (let ((_e121627121665_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121623121660_))))
                                                     (let ((_hd121626121668_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121627121665_)))
                                                           (_tl121625121670_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121627121665_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121626121668_))
                                                           (let ((_e121630121673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121626121668_))))
                     (let ((_hd121629121676_
                            (let ()
                              (declare (not safe))
                              (##car _e121630121673_)))
                           (_tl121628121678_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121630121673_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121629121676_))
                           (let ((_e121633121681_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121629121676_))))
                             (let ((_hd121632121684_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121633121681_)))
                                   (_tl121631121686_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121633121681_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121631121686_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121628121678_))
                                       (let ((_e121636121689_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121628121678_))))
                                         (let ((_hd121635121692_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121636121689_)))
                                               (_tl121634121694_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121636121689_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121634121694_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl121625121670_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121622121662_))
                                                       (let ((_e121639121697_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121622121662_))))
                 (let ((_hd121638121700_
                        (let () (declare (not safe)) (##car _e121639121697_)))
                       (_tl121637121702_
                        (let () (declare (not safe)) (##cdr _e121639121697_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121637121702_))
                       ((lambda (_L121705_ _L121706_ _L121707_)
                          (let* ((_lambda-id121731_
                                  (let ((__tmp129616
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L121598_)))
                                        (__tmp129614
                                         (let ((__tmp129615
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121707_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name121163_
                                            __tmp129615))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp129616
                                     '"__"
                                     __tmp129614)))
                                 (_lambda-id121733_
                                  (let ((__tmp129617
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx121160_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121731_
                                     __tmp129617)))
                                 (_g129618_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121733_)))
                                 (_new-case-lambda-expr121736_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121705_
                                     'id:
                                     _L121707_
                                     'new-id:
                                     _lambda-id121733_))))
                            (let ((__tmp129620
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L121598_)))
                                  (__tmp129619
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121733_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp129620
                               '" => "
                               __tmp129619))
                            (let ((__tmp129621
                                   (let ((__tmp129622
                                          (let ((__tmp129630
                                                 (let ((__tmp129631
                                                        (let ((__tmp129632
                                                               (let ((__tmp129635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121733_ '())))
                             (__tmp129633
                              (let ((__tmp129634
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self121159_
                                        _L121706_))))
                                (declare (not safe))
                                (cons __tmp129634 '()))))
                         (declare (not safe))
                         (cons __tmp129635 __tmp129633))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129631
                                                    _stx121160_)))
                                                (__tmp129623
                                                 (let ((__tmp129624
                                                        (let ((__tmp129625
                                                               (let ((__tmp129626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp129627
                                     (let ((__tmp129629
                                            (let ()
                                              (declare (not safe))
                                              (cons _L121598_ '())))
                                           (__tmp129628
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121736_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp129629 __tmp129628))))
                                (declare (not safe))
                                (cons '%#define-values __tmp129627))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp129626 _stx121160_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self121159_
                   __tmp129625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129624 '()))))
                                            (declare (not safe))
                                            (cons __tmp129630 __tmp129623))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp129622))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129621
                               _stx121160_))))
                        _hd121638121700_
                        _hd121635121692_
                        _hd121632121684_)
                       (let ()
                         (declare (not safe))
                         (_g121614121644_ _g121615121647_)))))
               (let () (declare (not safe)) (_g121614121644_ _g121615121647_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121614121644_
                                                      _g121615121647_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121614121644_
                                                  _g121615121647_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121614121644_ _g121615121647_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121614121644_ _g121615121647_)))))
                           (let ()
                             (declare (not safe))
                             (_g121614121644_ _g121615121647_)))))
                   (let ()
                     (declare (not safe))
                     (_g121614121644_ _g121615121647_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121614121644_
                                                      _g121615121647_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g121614121644_
                                              _g121615121647_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g121614121644_ _g121615121647_))))))
                       (declare (not safe))
                       (_g121613121739_ _L121597_))))
                  (___kont128930128931_
                   (lambda (_L121311_ _L121312_)
                     (let* ((_g121328121381_
                             (lambda (_g121329121378_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g121329121378_))))
                            (_g121327121557_
                             (lambda (_g121329121384_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g121329121384_))
                                   (let ((_e121337121386_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g121329121384_))))
                                     (let ((_hd121336121389_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e121337121386_)))
                                           (_tl121335121391_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e121337121386_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl121335121391_))
                                           (let ((_e121340121394_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl121335121391_))))
                                             (let ((_hd121339121397_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121340121394_)))
                                                   (_tl121338121399_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121340121394_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121339121397_))
                                                   (let ((_e121343121402_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121339121397_))))
                                                     (let ((_hd121342121405_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121343121402_)))
                                                           (_tl121341121407_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121343121402_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121342121405_))
                                                           (let ((_e121346121410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121342121405_))))
                     (let ((_hd121345121413_
                            (let ()
                              (declare (not safe))
                              (##car _e121346121410_)))
                           (_tl121344121415_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121346121410_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121345121413_))
                           (let ((_e121349121418_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121345121413_))))
                             (let ((_hd121348121421_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121349121418_)))
                                   (_tl121347121423_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121349121418_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121347121423_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121344121415_))
                                       (let ((_e121352121426_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121344121415_))))
                                         (let ((_hd121351121429_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121352121426_)))
                                               (_tl121350121431_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121352121426_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd121351121429_))
                                               (let ((_e121355121434_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd121351121429_))))
                                                 (let ((_hd121354121437_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e121355121434_)))
                                                       (_tl121353121439_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e121355121434_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121353121439_))
                                                       (let ((_e121358121442_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121353121439_))))
                 (let ((_hd121357121445_
                        (let () (declare (not safe)) (##car _e121358121442_)))
                       (_tl121356121447_
                        (let () (declare (not safe)) (##cdr _e121358121442_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd121357121445_))
                       (let ((_e121361121450_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd121357121445_))))
                         (let ((_hd121360121453_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121361121450_)))
                               (_tl121359121455_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121361121450_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121360121453_))
                               (let ((_e121364121458_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121360121453_))))
                                 (let ((_hd121363121461_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121364121458_)))
                                       (_tl121362121463_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121364121458_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd121363121461_))
                                       (let ((_e121367121466_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd121363121461_))))
                                         (let ((_hd121366121469_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121367121466_)))
                                               (_tl121365121471_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121367121466_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121365121471_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl121362121463_))
                                                   (let ((_e121370121474_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl121362121463_))))
                                                     (let ((_hd121369121477_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121370121474_)))
                                                           (_tl121368121479_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121370121474_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121368121479_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl121359121455_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl121356121447_))
                           (let ((_e121373121482_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl121356121447_))))
                             (let ((_hd121372121485_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121373121482_)))
                                   (_tl121371121487_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121373121482_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121371121487_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl121350121431_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl121341121407_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl121338121399_))
                                               (let ((_e121376121490_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl121338121399_))))
                                                 (let ((_hd121375121493_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e121376121490_)))
                                                       (_tl121374121495_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e121376121490_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl121374121495_))
                                                       ((lambda (_L121498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L121499_
                         _L121500_
                         _L121501_
                         _L121502_)
                  (let* ((_get-kws-id121542_
                          (let ((__tmp129638
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L121312_)))
                                (__tmp129636
                                 (let ((__tmp129637
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L121502_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name121164_
                                    __tmp129637
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129638 '"__" __tmp129636)))
                         (_get-kws-id121544_
                          (let ((__tmp129639
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx121160_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id121542_
                             __tmp129639)))
                         (_main-id121546_
                          (let ((__tmp129642
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L121312_)))
                                (__tmp129640
                                 (let ((__tmp129641
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L121501_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name121164_
                                    __tmp129641
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129642 '"__" __tmp129640)))
                         (_main-id121548_
                          (let ((__tmp129643
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx121160_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id121546_
                             __tmp129643)))
                         (_g129644_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id121544_)))
                         (_g129645_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id121548_)))
                         (_new-kw-dispatch121552_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L121498_
                             'id:
                             _L121502_
                             'new-id:
                             _get-kws-id121544_)))
                         (_new-get-kws121554_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L121499_
                             'id:
                             _L121501_
                             'new-id:
                             _main-id121548_))))
                    (let ((__tmp129648
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L121312_)))
                          (__tmp129647
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id121544_)))
                          (__tmp129646
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id121548_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129648
                       '" => "
                       __tmp129647
                       '" => "
                       __tmp129646))
                    (let ((__tmp129649
                           (let ((__tmp129650
                                  (let ((__tmp129663
                                         (let ((__tmp129664
                                                (let ((__tmp129665
                                                       (let ((__tmp129666
                                                              (let ((__tmp129668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id121548_ '())))
                            (__tmp129667
                             (let ()
                               (declare (not safe))
                               (cons _L121500_ '()))))
                        (declare (not safe))
                        (cons __tmp129668 __tmp129667))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129665
                                                   _stx121160_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self121159_
                                            __tmp129664)))
                                        (__tmp129651
                                         (let ((__tmp129658
                                                (let ((__tmp129659
                                                       (let ((__tmp129660
                                                              (let ((__tmp129662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id121544_ '())))
                            (__tmp129661
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws121554_ '()))))
                        (declare (not safe))
                        (cons __tmp129662 __tmp129661))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129659
                                                   _stx121160_)))
                                               (__tmp129652
                                                (let ((__tmp129653
                                                       (let ((__tmp129654
                                                              (let ((__tmp129655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129657
                                    (let ()
                                      (declare (not safe))
                                      (cons _L121312_ '())))
                                   (__tmp129656
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch121552_ '()))))
                               (declare (not safe))
                               (cons __tmp129657 __tmp129656))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129655))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129654 _stx121160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129653 '()))))
                                           (declare (not safe))
                                           (cons __tmp129658 __tmp129652))))
                                    (declare (not safe))
                                    (cons __tmp129663 __tmp129651))))
                             (declare (not safe))
                             (cons '%#begin __tmp129650))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129649 _stx121160_))))
                _hd121375121493_
                _hd121372121485_
                _hd121369121477_
                _hd121366121469_
                _hd121348121421_)
               (let ()
                 (declare (not safe))
                 (_g121328121381_ _g121329121384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121328121381_
                                                  _g121329121384_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g121328121381_
                                              _g121329121384_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g121328121381_ _g121329121384_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121328121381_ _g121329121384_)))))
                           (let ()
                             (declare (not safe))
                             (_g121328121381_ _g121329121384_)))
                       (let ()
                         (declare (not safe))
                         (_g121328121381_ _g121329121384_)))
                   (let ()
                     (declare (not safe))
                     (_g121328121381_ _g121329121384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121328121381_
                                                      _g121329121384_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121328121381_
                                                  _g121329121384_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121328121381_ _g121329121384_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g121328121381_ _g121329121384_)))))
                       (let ()
                         (declare (not safe))
                         (_g121328121381_ _g121329121384_)))))
               (let ()
                 (declare (not safe))
                 (_g121328121381_ _g121329121384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121328121381_
                                                  _g121329121384_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121328121381_ _g121329121384_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121328121381_ _g121329121384_)))))
                           (let ()
                             (declare (not safe))
                             (_g121328121381_ _g121329121384_)))))
                   (let ()
                     (declare (not safe))
                     (_g121328121381_ _g121329121384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121328121381_
                                                      _g121329121384_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g121328121381_
                                              _g121329121384_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g121328121381_ _g121329121384_))))))
                       (declare (not safe))
                       (_g121327121557_ _L121311_))))
                  (___kont128932128933_
                   (lambda (_L121257_ _L121258_)
                     (let ((__tmp129669
                            (let ((__tmp129670
                                   (let ((__tmp129671
                                          (let ((__tmp129672
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self121159_
                                                    _L121257_))))
                                            (declare (not safe))
                                            (cons __tmp129672 '()))))
                                     (declare (not safe))
                                     (cons _L121258_ __tmp129671))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129670))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129669 _stx121160_)))))
              (let* ((___match129017129018_
                      (lambda (_e121203121279_
                               _hd121202121282_
                               _tl121201121284_
                               _e121206121287_
                               _hd121205121290_
                               _tl121204121292_
                               _e121209121295_
                               _hd121208121298_
                               _tl121207121300_
                               _e121212121303_
                               _hd121211121306_
                               _tl121210121308_)
                        (let ((_L121311_ _hd121211121306_)
                              (_L121312_ _hd121208121298_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121312_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L121311_)))
                              (___kont128930128931_ _L121311_ _L121312_)
                              (___kont128932128933_
                               _hd121211121306_
                               _hd121205121290_)))))
                     (___match128989128990_
                      (lambda (_e121189121565_
                               _hd121188121568_
                               _tl121187121570_
                               _e121192121573_
                               _hd121191121576_
                               _tl121190121578_
                               _e121195121581_
                               _hd121194121584_
                               _tl121193121586_
                               _e121198121589_
                               _hd121197121592_
                               _tl121196121594_)
                        (let ((_L121597_ _hd121197121592_)
                              (_L121598_ _hd121194121584_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121598_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L121597_)))
                              (___kont128928128929_ _L121597_ _L121598_)
                              (___match129017129018_
                               _e121189121565_
                               _hd121188121568_
                               _tl121187121570_
                               _e121192121573_
                               _hd121191121576_
                               _tl121190121578_
                               _e121195121581_
                               _hd121194121584_
                               _tl121193121586_
                               _e121198121589_
                               _hd121197121592_
                               _tl121196121594_)))))
                     (___match128961128962_
                      (lambda (_e121175121747_
                               _hd121174121750_
                               _tl121173121752_
                               _e121178121755_
                               _hd121177121758_
                               _tl121176121760_
                               _e121181121763_
                               _hd121180121766_
                               _tl121179121768_
                               _e121184121771_
                               _hd121183121774_
                               _tl121182121776_)
                        (let ((_L121779_ _hd121183121774_)
                              (_L121780_ _hd121180121766_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121780_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121779_)))
                              (___kont128926128927_ _L121779_ _L121780_)
                              (___match128989128990_
                               _e121175121747_
                               _hd121174121750_
                               _tl121173121752_
                               _e121178121755_
                               _hd121177121758_
                               _tl121176121760_
                               _e121181121763_
                               _hd121180121766_
                               _tl121179121768_
                               _e121184121771_
                               _hd121183121774_
                               _tl121182121776_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128924128925_))
                    (let ((_e121175121747_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128924128925_))))
                      (let ((_tl121173121752_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121175121747_)))
                            (_hd121174121750_
                             (let ()
                               (declare (not safe))
                               (##car _e121175121747_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121173121752_))
                            (let ((_e121178121755_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121173121752_))))
                              (let ((_tl121176121760_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121178121755_)))
                                    (_hd121177121758_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121178121755_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121177121758_))
                                    (let ((_e121181121763_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121177121758_))))
                                      (let ((_tl121179121768_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121181121763_)))
                                            (_hd121180121766_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121181121763_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121179121768_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121176121760_))
                                                (let ((_e121184121771_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121176121760_))))
                                                  (let ((_tl121182121776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121184121771_)))
                                                        (_hd121183121774_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121184121771_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121182121776_))
                                                        (___match128961128962_
                                                         _e121175121747_
                                                         _hd121174121750_
                                                         _tl121173121752_
                                                         _e121178121755_
                                                         _hd121177121758_
                                                         _tl121176121760_
                                                         _e121181121763_
                                                         _hd121180121766_
                                                         _tl121179121768_
                                                         _e121184121771_
                                                         _hd121183121774_
                                                         _tl121182121776_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121169121228_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121169121228_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121176121760_))
                                                (let ((_e121223121249_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121176121760_))))
                                                  (let ((_tl121221121254_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121223121249_)))
                                                        (_hd121222121252_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121223121249_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121221121254_))
                                                        (___kont128932128933_
                                                         _hd121222121252_
                                                         _hd121177121758_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121169121228_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121169121228_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121176121760_))
                                        (let ((_e121223121249_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121176121760_))))
                                          (let ((_tl121221121254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121223121249_)))
                                                (_hd121222121252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121223121249_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121221121254_))
                                                (___kont128932128933_
                                                 _hd121222121252_
                                                 _hd121177121758_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121169121228_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g121169121228_))))))
                            (let () (declare (not safe)) (_g121169121228_)))))
                    (let () (declare (not safe)) (_g121169121228_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self120090_ _stx120091_)
        (letrec* ((_bind-e__127320127321_
                   (lambda (_id121143_ _expr121144_ _compile?121145_)
                     (let ((__tmp129675
                            (let ()
                              (declare (not safe))
                              (cons _id121143_ '())))
                           (__tmp129673
                            (let ((__tmp129674
                                   (if _compile?121145_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120090_
                                          _expr121144_))
                                       _expr121144_)))
                              (declare (not safe))
                              (cons __tmp129674 '()))))
                       (declare (not safe))
                       (cons __tmp129675 __tmp129673))))
                  (_bind-e__0__127322127323_
                   (lambda (_id121150_ _expr121151_)
                     (let ((_compile?121153_ '#t))
                       (declare (not safe))
                       (_bind-e__127320127321_
                        _id121150_
                        _expr121151_
                        _compile?121153_))))
                  (_bind-e120093_
                   (lambda _g129677_
                     (let ((_g129676_
                            (let ()
                              (declare (not safe))
                              (##length _g129677_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129676_ 2))
                              (apply (lambda (_id121150_ _expr121151_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__127322127323_
                                          _id121150_
                                          _expr121151_)))
                                     _g129677_))
                             ((let () (declare (not safe)) (##fx= _g129676_ 3))
                              (apply (lambda (_id121155_
                                              _expr121156_
                                              _compile?121157_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__127320127321_
                                          _id121155_
                                          _expr121156_
                                          _compile?121157_)))
                                     _g129677_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129677_))))))
                  (_compile-bindings120094_
                   (lambda (_bindings120727_)
                     (let _lp120729_ ((_rest120731_ _bindings120727_)
                                      (_lift1120732_ '())
                                      (_lift2120733_ '())
                                      (_bind120734_ '()))
                       (let* ((_rest120735120743_ _rest120731_)
                              (_else120737120751_
                               (lambda ()
                                 (values (reverse _lift1120732_)
                                         (reverse _lift2120733_)
                                         (reverse _bind120734_))))
                              (_K120739121130_
                               (lambda (_rest120754_ _hd120755_)
                                 (let* ((___stx129060129061_ _hd120755_)
                                        (_g120759120795_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx129060129061_)))))
                                   (let ((___kont129062129063_
                                          (lambda (_L121037_ _L121038_)
                                            (let* ((___stx129040129041_
                                                    _L121037_)
                                                   (_g121053121067_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx129040129041_)))))
                                              (let ((___kont129042129043_
                                                     (lambda (_L121115_)
                                                       (let ((__tmp129678
                                                              (let ((__tmp129679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__127320127321_
                                _L121038_
                                _L121037_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129679 _bind120734_))))
                 (declare (not safe))
                 (_lp120729_
                  _rest120754_
                  _lift1120732_
                  _lift2120733_
                  __tmp129678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129044129045_
                                                     (lambda (_L121080_)
                                                       (let ((_g129680_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120091_
                         _L121038_
                         _L121080_
                         '#t))))
                 (begin
                   (let ((_g129681_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129680_)
                                (##vector-length _g129680_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129681_ 3)))
                         (error "Context expects 3 values" _g129681_)))
                   (let ((_ids121090_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129680_ 0)))
                         (_impls121091_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129680_ 1)))
                         (_clauses121092_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129680_ 2))))
                     (let* ((_g129682_
                             (for-each gx#core-bind-runtime! _ids121090_))
                            (_xbind121095_
                             (map _bind-e120093_ _ids121090_ _impls121091_))
                            (_expr*121097_
                             (let ((__tmp129684
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121092_)))
                                   (__tmp129683
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129684
                                __tmp129683)))
                            (_bind*121099_
                             (let ()
                               (declare (not safe))
                               (_bind-e__127320127321_
                                _L121038_
                                _expr*121097_
                                '#f))))
                       (let ((__tmp129686
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121038_)))
                             (__tmp129685
                              (map gxc#identifier-symbol _ids121090_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129686
                          '" => "
                          __tmp129685))
                       (let ((__tmp129688
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120733_ _xbind121095_)))
                             (__tmp129687
                              (let ()
                                (declare (not safe))
                                (cons _bind*121099_ _bind120734_))))
                         (declare (not safe))
                         (_lp120729_
                          _rest120754_
                          _lift1120732_
                          __tmp129688
                          __tmp129687)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match129051129052_
                                                       (lambda (_e121058121107_
                                                                _hd121057121110_
                                                                _tl121056121112_)
                                                         (let ((_L121115_
                                                                _tl121056121112_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L121115_))
                       (___kont129042129043_ _L121115_)
                       (___kont129044129045_ _tl121056121112_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx129040129041_))
                                                      (let ((_e121058121107_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx129040129041_))))
                (let ((_tl121056121112_
                       (let () (declare (not safe)) (##cdr _e121058121107_)))
                      (_hd121057121110_
                       (let () (declare (not safe)) (##car _e121058121107_))))
                  (___match129051129052_
                   _e121058121107_
                   _hd121057121110_
                   _tl121056121112_)))
              (let () (declare (not safe)) (_g121053121067_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont129064129065_
                                          (lambda (_L120865_ _L120866_)
                                            (let* ((_g120880120910_
                                                    (lambda (_g120881120907_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120881120907_))))
                                                   (_g120879121005_
                                                    (lambda (_g120881120913_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120881120913_))
                                                          (let ((_e120887120915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120881120913_))))
                    (let ((_hd120886120918_
                           (let ()
                             (declare (not safe))
                             (##car _e120887120915_)))
                          (_tl120885120920_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120887120915_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120885120920_))
                          (let ((_e120890120923_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120885120920_))))
                            (let ((_hd120889120926_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120890120923_)))
                                  (_tl120888120928_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120890120923_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120889120926_))
                                  (let ((_e120893120931_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120889120926_))))
                                    (let ((_hd120892120934_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120893120931_)))
                                          (_tl120891120936_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120893120931_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120892120934_))
                                          (let ((_e120896120939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120892120934_))))
                                            (let ((_hd120895120942_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120896120939_)))
                                                  (_tl120894120944_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120896120939_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120895120942_))
                                                  (let ((_e120899120947_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120895120942_))))
                                                    (let ((_hd120898120950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120899120947_)))
                                                          (_tl120897120952_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120899120947_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120897120952_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120894120944_))
                      (let ((_e120902120955_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120894120944_))))
                        (let ((_hd120901120958_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120902120955_)))
                              (_tl120900120960_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120902120955_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120900120960_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120891120936_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120888120928_))
                                      (let ((_e120905120963_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120888120928_))))
                                        (let ((_hd120904120966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120905120963_)))
                                              (_tl120903120968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120905120963_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120903120968_))
                                              ((lambda (_L120971_
                                                        _L120972_
                                                        _L120973_)
                                                 (let* ((_lambda-id120997_
                                                         (let ((__tmp129690
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120866_)))
                       (__tmp129689 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129690 __tmp129689)))
                (_lambda-id120999_
                 (let ((__tmp129691
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120091_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120997_ __tmp129691)))
                (_g129692_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120999_)))
                (_new-case-lambda-expr121002_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120971_
                    'id:
                    _L120973_
                    'new-id:
                    _lambda-id120999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129694
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120866_)))
                                                         (__tmp129693
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120999_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129694
                                                      '" => "
                                                      __tmp129693))
                                                   (let ((__tmp129697
                                                          (let ((__tmp129698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__127320127321_
                            _L120866_
                            _new-case-lambda-expr121002_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129698 _rest120754_)))
                 (__tmp129695
                  (let ((__tmp129696
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__127322127323_
                            _lambda-id120999_
                            _L120972_))))
                    (declare (not safe))
                    (cons __tmp129696 _lift1120732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120729_
                                                      __tmp129697
                                                      __tmp129695
                                                      _lift2120733_
                                                      _bind120734_))))
                                               _hd120904120966_
                                               _hd120901120958_
                                               _hd120898120950_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120880120910_
                                                 _g120881120913_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120880120910_ _g120881120913_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120880120910_ _g120881120913_)))
                              (let ()
                                (declare (not safe))
                                (_g120880120910_ _g120881120913_)))))
                      (let ()
                        (declare (not safe))
                        (_g120880120910_ _g120881120913_)))
                  (let ()
                    (declare (not safe))
                    (_g120880120910_ _g120881120913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120880120910_
                                                     _g120881120913_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120880120910_
                                             _g120881120913_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120880120910_ _g120881120913_)))))
                          (let ()
                            (declare (not safe))
                            (_g120880120910_ _g120881120913_)))))
                  (let ()
                    (declare (not safe))
                    (_g120880120910_ _g120881120913_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120879121005_ _L120865_))))
                                         (___kont129066129067_
                                          (lambda (_L120816_ _L120817_)
                                            (let ((__tmp129699
                                                   (let ((__tmp129700
                                                          (let ((__tmp129701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129702
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120090_ _L120816_))))
                           (declare (not safe))
                           (cons __tmp129702 '()))))
                    (declare (not safe))
                    (cons _L120817_ __tmp129701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129700
                                                           _bind120734_))))
                                              (declare (not safe))
                                              (_lp120729_
                                               _rest120754_
                                               _lift1120732_
                                               _lift2120733_
                                               __tmp129699)))))
                                     (let* ((___match129111129112_
                                             (lambda (_e120776120841_
                                                      _hd120775120844_
                                                      _tl120774120846_
                                                      _e120779120849_
                                                      _hd120778120852_
                                                      _tl120777120854_
                                                      _e120782120857_
                                                      _hd120781120860_
                                                      _tl120780120862_)
                                               (let ((_L120865_
                                                      _hd120781120860_)
                                                     (_L120866_
                                                      _hd120778120852_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120866_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120865_)))
                                                     (___kont129064129065_
                                                      _L120865_
                                                      _L120866_)
                                                     (___kont129066129067_
                                                      _hd120781120860_
                                                      _hd120775120844_)))))
                                            (___match129089129090_
                                             (lambda (_e120765121013_
                                                      _hd120764121016_
                                                      _tl120763121018_
                                                      _e120768121021_
                                                      _hd120767121024_
                                                      _tl120766121026_
                                                      _e120771121029_
                                                      _hd120770121032_
                                                      _tl120769121034_)
                                               (let ((_L121037_
                                                      _hd120770121032_)
                                                     (_L121038_
                                                      _hd120767121024_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121038_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121037_)))
                                                     (___kont129062129063_
                                                      _L121037_
                                                      _L121038_)
                                                     (___match129111129112_
                                                      _e120765121013_
                                                      _hd120764121016_
                                                      _tl120763121018_
                                                      _e120768121021_
                                                      _hd120767121024_
                                                      _tl120766121026_
                                                      _e120771121029_
                                                      _hd120770121032_
                                                      _tl120769121034_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx129060129061_))
                                           (let ((_e120765121013_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx129060129061_))))
                                             (let ((_tl120763121018_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120765121013_)))
                                                   (_hd120764121016_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120765121013_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120764121016_))
                                                   (let ((_e120768121021_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120764121016_))))
                                                     (let ((_tl120766121026_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120768121021_)))
                                                           (_hd120767121024_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120768121021_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120766121026_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120763121018_))
                       (let ((_e120771121029_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120763121018_))))
                         (let ((_tl120769121034_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120771121029_)))
                               (_hd120770121032_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120771121029_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120769121034_))
                               (___match129089129090_
                                _e120765121013_
                                _hd120764121016_
                                _tl120763121018_
                                _e120768121021_
                                _hd120767121024_
                                _tl120766121026_
                                _e120771121029_
                                _hd120770121032_
                                _tl120769121034_)
                               (let ()
                                 (declare (not safe))
                                 (_g120759120795_)))))
                       (let () (declare (not safe)) (_g120759120795_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120763121018_))
                       (let ((_e120790120808_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120763121018_))))
                         (let ((_tl120788120813_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120790120808_)))
                               (_hd120789120811_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120790120808_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120788120813_))
                               (___kont129066129067_
                                _hd120789120811_
                                _hd120764121016_)
                               (let ()
                                 (declare (not safe))
                                 (_g120759120795_)))))
                       (let () (declare (not safe)) (_g120759120795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120763121018_))
                                                       (let ((_e120790120808_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120763121018_))))
                 (let ((_tl120788120813_
                        (let () (declare (not safe)) (##cdr _e120790120808_)))
                       (_hd120789120811_
                        (let () (declare (not safe)) (##car _e120790120808_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120788120813_))
                       (___kont129066129067_ _hd120789120811_ _hd120764121016_)
                       (let () (declare (not safe)) (_g120759120795_)))))
               (let () (declare (not safe)) (_g120759120795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120759120795_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120735120743_))
                             (let ((_hd120740121133_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120735120743_)))
                                   (_tl120741121135_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120735120743_))))
                               (let* ((_hd121138_ _hd120740121133_)
                                      (_rest121140_ _tl120741121135_))
                                 (declare (not safe))
                                 (_K120739121130_ _rest121140_ _hd121138_)))
                             (let ()
                               (declare (not safe))
                               (_else120737120751_)))))))
                  (_lift-kw-lambda?120095_
                   (lambda (_bind120651_)
                     (let* ((___stx129128129129_ _bind120651_)
                            (_g120654120671_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx129128129129_)))))
                       (let ((___kont129130129131_
                              (lambda (_L120707_ _L120708_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120708_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120707_))
                                    '#f)))
                             (___kont129132129133_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx129128129129_))
                             (let ((_e120660120683_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx129128129129_))))
                               (let ((_tl120658120688_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120660120683_)))
                                     (_hd120659120686_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120660120683_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120659120686_))
                                     (let ((_e120663120691_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120659120686_))))
                                       (let ((_tl120661120696_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120663120691_)))
                                             (_hd120662120694_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120663120691_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120661120696_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120658120688_))
                                                 (let ((_e120666120699_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120658120688_))))
                                                   (let ((_tl120664120704_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120666120699_)))
                                                         (_hd120665120702_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120666120699_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120664120704_))
                                                         (___kont129130129131_
                                                          _hd120665120702_
                                                          _hd120662120694_)
                                                         (___kont129132129133_))))
                                                 (___kont129132129133_))
                                             (___kont129132129133_))))
                                     (___kont129132129133_))))
                             (___kont129132129133_))))))
                  (_lift-kw-lambda-bindings120096_
                   (lambda (_bindings120263_)
                     (let _lp120265_ ((_rest120267_ _bindings120263_)
                                      (_lift1120268_ '())
                                      (_lift2120269_ '())
                                      (_bind120270_ '()))
                       (let* ((_rest120271120279_ _rest120267_)
                              (_else120273120287_
                               (lambda ()
                                 (values (reverse _lift1120268_)
                                         (reverse _lift2120269_)
                                         (reverse _bind120270_))))
                              (_K120275120639_
                               (lambda (_rest120290_ _hd120291_)
                                 (let* ((___stx129158129159_ _hd120291_)
                                        (_g120294120319_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx129158129159_)))))
                                   (let ((___kont129160129161_
                                          (lambda (_L120389_ _L120390_)
                                            (let* ((_g120404120457_
                                                    (lambda (_g120405120454_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120405120454_))))
                                                   (_g120403120633_
                                                    (lambda (_g120405120460_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120405120460_))
                                                          (let ((_e120413120462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120405120460_))))
                    (let ((_hd120412120465_
                           (let ()
                             (declare (not safe))
                             (##car _e120413120462_)))
                          (_tl120411120467_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120413120462_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120411120467_))
                          (let ((_e120416120470_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120411120467_))))
                            (let ((_hd120415120473_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120416120470_)))
                                  (_tl120414120475_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120416120470_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120415120473_))
                                  (let ((_e120419120478_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120415120473_))))
                                    (let ((_hd120418120481_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120419120478_)))
                                          (_tl120417120483_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120419120478_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120418120481_))
                                          (let ((_e120422120486_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120418120481_))))
                                            (let ((_hd120421120489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120422120486_)))
                                                  (_tl120420120491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120422120486_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120421120489_))
                                                  (let ((_e120425120494_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120421120489_))))
                                                    (let ((_hd120424120497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120425120494_)))
                                                          (_tl120423120499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120425120494_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120423120499_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120420120491_))
                      (let ((_e120428120502_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120420120491_))))
                        (let ((_hd120427120505_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120428120502_)))
                              (_tl120426120507_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120428120502_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120427120505_))
                              (let ((_e120431120510_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120427120505_))))
                                (let ((_hd120430120513_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120431120510_)))
                                      (_tl120429120515_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120431120510_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120429120515_))
                                      (let ((_e120434120518_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120429120515_))))
                                        (let ((_hd120433120521_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120434120518_)))
                                              (_tl120432120523_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120434120518_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120433120521_))
                                              (let ((_e120437120526_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120433120521_))))
                                                (let ((_hd120436120529_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120437120526_)))
                                                      (_tl120435120531_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120437120526_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120436120529_))
                                                      (let ((_e120440120534_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120436120529_))))
                (let ((_hd120439120537_
                       (let () (declare (not safe)) (##car _e120440120534_)))
                      (_tl120438120539_
                       (let () (declare (not safe)) (##cdr _e120440120534_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120439120537_))
                      (let ((_e120443120542_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120439120537_))))
                        (let ((_hd120442120545_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120443120542_)))
                              (_tl120441120547_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120443120542_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120441120547_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120438120539_))
                                  (let ((_e120446120550_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120438120539_))))
                                    (let ((_hd120445120553_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120446120550_)))
                                          (_tl120444120555_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120446120550_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120444120555_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120435120531_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120432120523_))
                                                  (let ((_e120449120558_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120432120523_))))
                                                    (let ((_hd120448120561_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120449120558_)))
                                                          (_tl120447120563_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120449120558_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120447120563_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120426120507_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120417120483_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120414120475_))
                              (let ((_e120452120566_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120414120475_))))
                                (let ((_hd120451120569_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120452120566_)))
                                      (_tl120450120571_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120452120566_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120450120571_))
                                      ((lambda (_L120574_
                                                _L120575_
                                                _L120576_
                                                _L120577_
                                                _L120578_)
                                         (let* ((_get-kws-id120618_
                                                 (let ((__tmp129704
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120390_)))
                                                       (__tmp129703
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129704
                                                    __tmp129703)))
                                                (_get-kws-id120620_
                                                 (let ((__tmp129705
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120091_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120618_
                                                    __tmp129705)))
                                                (_main-id120622_
                                                 (let ((__tmp129707
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120390_)))
                                                       (__tmp129706
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129707
                                                    __tmp129706)))
                                                (_main-id120624_
                                                 (let ((__tmp129708
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120091_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120622_
                                                    __tmp129708)))
                                                (_g129709_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120620_)))
                                                (_g129710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120624_)))
                                                (_new-kw-dispatch120628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120574_
                                                    'id:
                                                    _L120578_
                                                    'new-id:
                                                    _get-kws-id120620_)))
                                                (_new-get-kws120630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120575_
                                                    'id:
                                                    _L120577_
                                                    'new-id:
                                                    _main-id120624_))))
                                           (let ((__tmp129713
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120390_)))
                                                 (__tmp129712
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120620_)))
                                                 (__tmp129711
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120624_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129713
                                              '" => "
                                              __tmp129712
                                              '" => "
                                              __tmp129711))
                                           (let ((__tmp129718
                                                  (let ((__tmp129719
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127320127321_
                                                            _main-id120624_
                                                            _L120576_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129719
                                                          _lift1120268_)))
                                                 (__tmp129716
                                                  (let ((__tmp129717
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127320127321_
                                                            _get-kws-id120620_
                                                            _new-get-kws120630_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129717
                                                          _lift2120269_)))
                                                 (__tmp129714
                                                  (let ((__tmp129715
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127320127321_
                                                            _L120390_
                                                            _new-kw-dispatch120628_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129715
                                                          _bind120270_))))
                                             (declare (not safe))
                                             (_lp120265_
                                              _rest120290_
                                              __tmp129718
                                              __tmp129716
                                              __tmp129714))))
                                       _hd120451120569_
                                       _hd120448120561_
                                       _hd120445120553_
                                       _hd120442120545_
                                       _hd120424120497_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120404120457_ _g120405120460_)))))
                              (let ()
                                (declare (not safe))
                                (_g120404120457_ _g120405120460_)))
                          (let ()
                            (declare (not safe))
                            (_g120404120457_ _g120405120460_)))
                      (let ()
                        (declare (not safe))
                        (_g120404120457_ _g120405120460_)))
                  (let ()
                    (declare (not safe))
                    (_g120404120457_ _g120405120460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120404120457_
                                                     _g120405120460_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120404120457_
                                                 _g120405120460_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120404120457_
                                             _g120405120460_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120404120457_ _g120405120460_)))
                              (let ()
                                (declare (not safe))
                                (_g120404120457_ _g120405120460_)))))
                      (let ()
                        (declare (not safe))
                        (_g120404120457_ _g120405120460_)))))
              (let ()
                (declare (not safe))
                (_g120404120457_ _g120405120460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120404120457_
                                                 _g120405120460_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120404120457_ _g120405120460_)))))
                              (let ()
                                (declare (not safe))
                                (_g120404120457_ _g120405120460_)))))
                      (let ()
                        (declare (not safe))
                        (_g120404120457_ _g120405120460_)))
                  (let ()
                    (declare (not safe))
                    (_g120404120457_ _g120405120460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120404120457_
                                                     _g120405120460_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120404120457_
                                             _g120405120460_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120404120457_ _g120405120460_)))))
                          (let ()
                            (declare (not safe))
                            (_g120404120457_ _g120405120460_)))))
                  (let ()
                    (declare (not safe))
                    (_g120404120457_ _g120405120460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120403120633_ _L120389_))))
                                         (___kont129162129163_
                                          (lambda (_L120340_ _L120341_)
                                            (let ((__tmp129720
                                                   (let ((__tmp129721
                                                          (let ((__tmp129722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L120340_ '()))))
                    (declare (not safe))
                    (cons _L120341_ __tmp129722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129721
                                                           _bind120270_))))
                                              (declare (not safe))
                                              (_lp120265_
                                               _rest120290_
                                               _lift1120268_
                                               _lift2120269_
                                               __tmp129720)))))
                                     (let ((___match129185129186_
                                            (lambda (_e120300120365_
                                                     _hd120299120368_
                                                     _tl120298120370_
                                                     _e120303120373_
                                                     _hd120302120376_
                                                     _tl120301120378_
                                                     _e120306120381_
                                                     _hd120305120384_
                                                     _tl120304120386_)
                                              (let ((_L120389_
                                                     _hd120305120384_)
                                                    (_L120390_
                                                     _hd120302120376_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L120390_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L120389_)))
                                                    (___kont129160129161_
                                                     _L120389_
                                                     _L120390_)
                                                    (___kont129162129163_
                                                     _hd120305120384_
                                                     _hd120299120368_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx129158129159_))
                                           (let ((_e120300120365_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx129158129159_))))
                                             (let ((_tl120298120370_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120300120365_)))
                                                   (_hd120299120368_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120300120365_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120299120368_))
                                                   (let ((_e120303120373_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120299120368_))))
                                                     (let ((_tl120301120378_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120303120373_)))
                                                           (_hd120302120376_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120303120373_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120301120378_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120298120370_))
                       (let ((_e120306120381_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120298120370_))))
                         (let ((_tl120304120386_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120306120381_)))
                               (_hd120305120384_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120306120381_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120304120386_))
                               (___match129185129186_
                                _e120300120365_
                                _hd120299120368_
                                _tl120298120370_
                                _e120303120373_
                                _hd120302120376_
                                _tl120301120378_
                                _e120306120381_
                                _hd120305120384_
                                _tl120304120386_)
                               (let ()
                                 (declare (not safe))
                                 (_g120294120319_)))))
                       (let () (declare (not safe)) (_g120294120319_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120298120370_))
                       (let ((_e120314120332_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120298120370_))))
                         (let ((_tl120312120337_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120314120332_)))
                               (_hd120313120335_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120314120332_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120312120337_))
                               (___kont129162129163_
                                _hd120313120335_
                                _hd120299120368_)
                               (let ()
                                 (declare (not safe))
                                 (_g120294120319_)))))
                       (let () (declare (not safe)) (_g120294120319_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120298120370_))
                                                       (let ((_e120314120332_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120298120370_))))
                 (let ((_tl120312120337_
                        (let () (declare (not safe)) (##cdr _e120314120332_)))
                       (_hd120313120335_
                        (let () (declare (not safe)) (##car _e120314120332_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120312120337_))
                       (___kont129162129163_ _hd120313120335_ _hd120299120368_)
                       (let () (declare (not safe)) (_g120294120319_)))))
               (let () (declare (not safe)) (_g120294120319_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120294120319_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120271120279_))
                             (let ((_hd120276120642_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120271120279_)))
                                   (_tl120277120644_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120271120279_))))
                               (let* ((_hd120647_ _hd120276120642_)
                                      (_rest120649_ _tl120277120644_))
                                 (declare (not safe))
                                 (_K120275120639_ _rest120649_ _hd120647_)))
                             (let ()
                               (declare (not safe))
                               (_else120273120287_))))))))
          (let* ((___stx129202129203_ _stx120091_)
                 (_g120099120125_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx129202129203_)))))
            (let ((___kont129204129205_
                   (lambda (_L120185_ _L120186_)
                     (let ((__tmp129724
                            (lambda ()
                              (if (let ((__tmp129751
                                         (let ((__tmp129752
                                                (lambda (_g120214120217_
                                                         _g120215120219_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g120214120217_
                                                          _g120215120219_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129752
                                                   '()
                                                   _L120186_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?120095_
                                            __tmp129751))
                                  (let ((_g129738_
                                         (let ((__tmp129740
                                                (let ((__tmp129741
                                                       (lambda (_g120221120224_
                                                                _g120222120226_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g120221120224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g120222120226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129741
                                                          '()
                                                          _L120186_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings120096_
                                            __tmp129740))))
                                    (begin
                                      (let ((_g129739_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129738_)
                                                   (##vector-length _g129738_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129739_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129739_)))
                                      (let ((_lift1120229_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129738_ 0)))
                                            (_lift2120230_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129738_ 1)))
                                            (_hd120231_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129738_ 2))))
                                        (let* ((_expr120233_
                                                (let ((__tmp129742
                                                       (let ((__tmp129743
                                                              (let ((__tmp129744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L120185_ '()))))
                        (declare (not safe))
                        (cons _hd120231_ __tmp129744))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129742
                                                   _stx120091_)))
                                               (_expr120235_
                                                (let ((__tmp129745
                                                       (let ((__tmp129746
                                                              (let ((__tmp129747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr120233_ '()))))
                        (declare (not safe))
                        (cons _lift2120230_ __tmp129747))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129745
                                                   _stx120091_)))
                                               (_expr120237_
                                                (let ((__tmp129748
                                                       (let ((__tmp129749
                                                              (let ((__tmp129750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr120235_ '()))))
                        (declare (not safe))
                        (cons _lift1120229_ __tmp129750))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129748
                                                   _stx120091_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self120090_
                                             _expr120237_))))))
                                  (let ((_g129725_
                                         (let ((__tmp129727
                                                (let ((__tmp129728
                                                       (lambda (_g120239120242_
                                                                _g120240120244_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g120239120242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g120240120244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129728
                                                          '()
                                                          _L120186_))))
                                           (declare (not safe))
                                           (_compile-bindings120094_
                                            __tmp129727))))
                                    (begin
                                      (let ((_g129726_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129725_)
                                                   (##vector-length _g129725_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129726_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129726_)))
                                      (let ((_lift1120247_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129725_ 0)))
                                            (_lift2120248_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129725_ 1)))
                                            (_hd120249_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129725_ 2))))
                                        (let* ((_body120251_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self120090_
                                                   _L120185_)))
                                               (_expr120253_
                                                (let ((__tmp129729
                                                       (let ((__tmp129730
                                                              (let ((__tmp129731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body120251_ '()))))
                        (declare (not safe))
                        (cons _hd120249_ __tmp129731))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129729
                                                   _stx120091_)))
                                               (_expr120255_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2120248_))
                                                    _expr120253_
                                                    (let ((__tmp129732
                                                           (let ((__tmp129733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129734
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr120253_ '()))))
                            (declare (not safe))
                            (cons _lift2120248_ __tmp129734))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129733))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129732 _stx120091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr120257_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1120247_))
                                                    _expr120255_
                                                    (let ((__tmp129735
                                                           (let ((__tmp129736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129737
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr120255_ '()))))
                            (declare (not safe))
                            (cons _lift1120247_ __tmp129737))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129736))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129735 _stx120091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr120257_)))))))
                           (__tmp129723
                            (let ((__obj129418
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj129418)
                              __obj129418)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129724
                        gx#current-expander-context
                        __tmp129723))))
                  (___kont129208129209_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120090_ _stx120091_)))))
              (let ((___match129229129230_
                     (lambda (_e120105120137_
                              _hd120104120140_
                              _tl120103120142_
                              _e120108120145_
                              _hd120107120148_
                              _tl120106120150_
                              ___splice129206129207_
                              _target120109120153_
                              _tl120111120155_)
                       (letrec ((_loop120112120158_
                                 (lambda (_hd120110120161_ _bind120116120163_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120110120161_))
                                       (let ((_e120113120166_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120110120161_))))
                                         (let ((_lp-tl120115120171_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120113120166_)))
                                               (_lp-hd120114120169_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120113120166_))))
                                           (let ((__tmp129755
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120114120169_
                                                          _bind120116120163_))))
                                             (declare (not safe))
                                             (_loop120112120158_
                                              _lp-tl120115120171_
                                              __tmp129755))))
                                       (let ((_bind120117120174_
                                              (reverse _bind120116120163_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120106120150_))
                                             (let ((_e120120120177_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120106120150_))))
                                               (let ((_tl120118120182_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120120120177_)))
                                                     (_hd120119120180_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120120120177_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120118120182_))
                                                     (let ((_L120185_
                                                            _hd120119120180_)
                                                           (_L120186_
                                                            _bind120117120174_))
                                                       (if (let ((__tmp129753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129754
                                 (lambda (_g120206120209_ _g120207120211_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120206120209_ _g120207120211_)))))
                            (declare (not safe))
                            (foldr1 __tmp129754 '() _L120186_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129753))
                   (___kont129204129205_ _L120185_ _L120186_)
                   (___kont129208129209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129208129209_))))
                                             (___kont129208129209_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120112120158_ _target120109120153_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx129202129203_))
                    (let ((_e120105120137_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx129202129203_))))
                      (let ((_tl120103120142_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120105120137_)))
                            (_hd120104120140_
                             (let ()
                               (declare (not safe))
                               (##car _e120105120137_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120103120142_))
                            (let ((_e120108120145_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120103120142_))))
                              (let ((_tl120106120150_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120108120145_)))
                                    (_hd120107120148_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120108120145_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120107120148_))
                                    (let ((___splice129206129207_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120107120148_
                                              '0))))
                                      (let ((_tl120111120155_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129206129207_
                                                '1)))
                                            (_target120109120153_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129206129207_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120111120155_))
                                            (___match129229129230_
                                             _e120105120137_
                                             _hd120104120140_
                                             _tl120103120142_
                                             _e120108120145_
                                             _hd120107120148_
                                             _tl120106120150_
                                             ___splice129206129207_
                                             _target120109120153_
                                             _tl120111120155_)
                                            (___kont129208129209_))))
                                    (___kont129208129209_))))
                            (___kont129208129209_))))
                    (___kont129208129209_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self119233_ _stx119234_)
        (letrec* ((_bind-e__127325127326_
                   (lambda (_id120074_ _expr120075_ _compile?120076_)
                     (let ((__tmp129758
                            (let ()
                              (declare (not safe))
                              (cons _id120074_ '())))
                           (__tmp129756
                            (let ((__tmp129757
                                   (if _compile?120076_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self119233_
                                          _expr120075_))
                                       _expr120075_)))
                              (declare (not safe))
                              (cons __tmp129757 '()))))
                       (declare (not safe))
                       (cons __tmp129758 __tmp129756))))
                  (_bind-e__0__127327127328_
                   (lambda (_id120081_ _expr120082_)
                     (let ((_compile?120084_ '#t))
                       (declare (not safe))
                       (_bind-e__127325127326_
                        _id120081_
                        _expr120082_
                        _compile?120084_))))
                  (_bind-e119236_
                   (lambda _g129760_
                     (let ((_g129759_
                            (let ()
                              (declare (not safe))
                              (##length _g129760_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129759_ 2))
                              (apply (lambda (_id120081_ _expr120082_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__127327127328_
                                          _id120081_
                                          _expr120082_)))
                                     _g129760_))
                             ((let () (declare (not safe)) (##fx= _g129759_ 3))
                              (apply (lambda (_id120086_
                                              _expr120087_
                                              _compile?120088_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__127325127326_
                                          _id120086_
                                          _expr120087_
                                          _compile?120088_)))
                                     _g129760_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129760_))))))
                  (_compile-bindings119237_
                   (lambda (_rest119372_)
                     (let _lp119374_ ((_rest119376_ _rest119372_)
                                      (_bind119377_ '()))
                       (let* ((_rest119378119386_ _rest119376_)
                              (_else119380119394_
                               (lambda () (reverse _bind119377_)))
                              (_K119382120061_
                               (lambda (_rest119397_ _hd119398_)
                                 (let* ((___stx129252129253_ _hd119398_)
                                        (_g119403119450_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx129252129253_)))))
                                   (let ((___kont129254129255_
                                          (lambda (_L119968_ _L119969_)
                                            (let* ((___stx129232129233_
                                                    _L119968_)
                                                   (_g119984119998_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx129232129233_)))))
                                              (let ((___kont129234129235_
                                                     (lambda (_L120046_)
                                                       (let ((__tmp129761
                                                              (let ((__tmp129762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__127325127326_
                                _L119969_
                                _L119968_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129762 _bind119377_))))
                 (declare (not safe))
                 (_lp119374_ _rest119397_ __tmp129761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129236129237_
                                                     (lambda (_L120011_)
                                                       (let ((_g129763_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119234_
                         _L119969_
                         _L120011_
                         '#t))))
                 (begin
                   (let ((_g129764_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129763_)
                                (##vector-length _g129763_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129764_ 3)))
                         (error "Context expects 3 values" _g129764_)))
                   (let ((_ids120021_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129763_ 0)))
                         (_impls120022_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129763_ 1)))
                         (_clauses120023_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129763_ 2))))
                     (let* ((_g129765_
                             (for-each gx#core-bind-runtime! _ids120021_))
                            (_xbind120026_
                             (map _bind-e119236_ _ids120021_ _impls120022_))
                            (_expr*120028_
                             (let ((__tmp129767
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120023_)))
                                   (__tmp129766
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129767
                                __tmp129766)))
                            (_bind*120030_
                             (let ()
                               (declare (not safe))
                               (_bind-e__127325127326_
                                _L119969_
                                _expr*120028_
                                '#f))))
                       (let ((__tmp129769
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119969_)))
                             (__tmp129768
                              (map gxc#identifier-symbol _ids120021_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129769
                          '" => "
                          __tmp129768))
                       (let ((__tmp129770
                              (let ((__tmp129771
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind119377_
                                               _xbind120026_))))
                                (declare (not safe))
                                (cons _bind*120030_ __tmp129771))))
                         (declare (not safe))
                         (_lp119374_ _rest119397_ __tmp129770)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match129243129244_
                                                       (lambda (_e119989120038_
                                                                _hd119988120041_
                                                                _tl119987120043_)
                                                         (let ((_L120046_
                                                                _tl119987120043_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120046_))
                       (___kont129234129235_ _L120046_)
                       (___kont129236129237_ _tl119987120043_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx129232129233_))
                                                      (let ((_e119989120038_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx129232129233_))))
                (let ((_tl119987120043_
                       (let () (declare (not safe)) (##cdr _e119989120038_)))
                      (_hd119988120041_
                       (let () (declare (not safe)) (##car _e119989120038_))))
                  (___match129243129244_
                   _e119989120038_
                   _hd119988120041_
                   _tl119987120043_)))
              (let () (declare (not safe)) (_g119984119998_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont129256129257_
                                          (lambda (_L119796_ _L119797_)
                                            (let* ((_g119811119841_
                                                    (lambda (_g119812119838_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119812119838_))))
                                                   (_g119810119936_
                                                    (lambda (_g119812119844_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119812119844_))
                                                          (let ((_e119818119846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119812119844_))))
                    (let ((_hd119817119849_
                           (let ()
                             (declare (not safe))
                             (##car _e119818119846_)))
                          (_tl119816119851_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119818119846_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119816119851_))
                          (let ((_e119821119854_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119816119851_))))
                            (let ((_hd119820119857_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119821119854_)))
                                  (_tl119819119859_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119821119854_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119820119857_))
                                  (let ((_e119824119862_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119820119857_))))
                                    (let ((_hd119823119865_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119824119862_)))
                                          (_tl119822119867_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119824119862_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119823119865_))
                                          (let ((_e119827119870_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119823119865_))))
                                            (let ((_hd119826119873_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119827119870_)))
                                                  (_tl119825119875_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119827119870_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119826119873_))
                                                  (let ((_e119830119878_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119826119873_))))
                                                    (let ((_hd119829119881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119830119878_)))
                                                          (_tl119828119883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119830119878_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119828119883_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119825119875_))
                      (let ((_e119833119886_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119825119875_))))
                        (let ((_hd119832119889_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119833119886_)))
                              (_tl119831119891_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119833119886_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119831119891_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119822119867_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119819119859_))
                                      (let ((_e119836119894_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119819119859_))))
                                        (let ((_hd119835119897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119836119894_)))
                                              (_tl119834119899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119836119894_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119834119899_))
                                              ((lambda (_L119902_
                                                        _L119903_
                                                        _L119904_)
                                                 (let* ((_lambda-id119928_
                                                         (let ((__tmp129773
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119797_)))
                       (__tmp129772 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129773 __tmp129772)))
                (_lambda-id119930_
                 (let ((__tmp129774
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119234_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119928_ __tmp129774)))
                (_g129775_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119930_)))
                (_new-case-lambda-expr119933_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119902_
                    'id:
                    _L119904_
                    'new-id:
                    _lambda-id119930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129777
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119797_)))
                                                         (__tmp129776
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119930_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129777
                                                      '" => "
                                                      __tmp129776))
                                                   (let ((__tmp129780
                                                          (let ((__tmp129781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__127325127326_
                            _L119797_
                            _new-case-lambda-expr119933_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129781 _rest119397_)))
                 (__tmp129778
                  (let ((__tmp129779
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__127327127328_
                            _lambda-id119930_
                            _L119903_))))
                    (declare (not safe))
                    (cons __tmp129779 _bind119377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp119374_
                                                      __tmp129780
                                                      __tmp129778))))
                                               _hd119835119897_
                                               _hd119832119889_
                                               _hd119829119881_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119811119841_
                                                 _g119812119844_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119811119841_ _g119812119844_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119811119841_ _g119812119844_)))
                              (let ()
                                (declare (not safe))
                                (_g119811119841_ _g119812119844_)))))
                      (let ()
                        (declare (not safe))
                        (_g119811119841_ _g119812119844_)))
                  (let ()
                    (declare (not safe))
                    (_g119811119841_ _g119812119844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119811119841_
                                                     _g119812119844_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119811119841_
                                             _g119812119844_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119811119841_ _g119812119844_)))))
                          (let ()
                            (declare (not safe))
                            (_g119811119841_ _g119812119844_)))))
                  (let ()
                    (declare (not safe))
                    (_g119811119841_ _g119812119844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119810119936_ _L119796_))))
                                         (___kont129258129259_
                                          (lambda (_L119520_ _L119521_)
                                            (let* ((_g119535119588_
                                                    (lambda (_g119536119585_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119536119585_))))
                                                   (_g119534119764_
                                                    (lambda (_g119536119591_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119536119591_))
                                                          (let ((_e119544119593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119536119591_))))
                    (let ((_hd119543119596_
                           (let ()
                             (declare (not safe))
                             (##car _e119544119593_)))
                          (_tl119542119598_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119544119593_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119542119598_))
                          (let ((_e119547119601_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119542119598_))))
                            (let ((_hd119546119604_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119547119601_)))
                                  (_tl119545119606_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119547119601_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119546119604_))
                                  (let ((_e119550119609_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119546119604_))))
                                    (let ((_hd119549119612_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119550119609_)))
                                          (_tl119548119614_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119550119609_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119549119612_))
                                          (let ((_e119553119617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119549119612_))))
                                            (let ((_hd119552119620_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119553119617_)))
                                                  (_tl119551119622_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119553119617_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119552119620_))
                                                  (let ((_e119556119625_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119552119620_))))
                                                    (let ((_hd119555119628_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119556119625_)))
                                                          (_tl119554119630_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119556119625_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119554119630_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119551119622_))
                      (let ((_e119559119633_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119551119622_))))
                        (let ((_hd119558119636_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119559119633_)))
                              (_tl119557119638_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119559119633_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119558119636_))
                              (let ((_e119562119641_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119558119636_))))
                                (let ((_hd119561119644_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119562119641_)))
                                      (_tl119560119646_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119562119641_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119560119646_))
                                      (let ((_e119565119649_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119560119646_))))
                                        (let ((_hd119564119652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119565119649_)))
                                              (_tl119563119654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119565119649_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119564119652_))
                                              (let ((_e119568119657_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119564119652_))))
                                                (let ((_hd119567119660_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119568119657_)))
                                                      (_tl119566119662_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119568119657_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119567119660_))
                                                      (let ((_e119571119665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119567119660_))))
                (let ((_hd119570119668_
                       (let () (declare (not safe)) (##car _e119571119665_)))
                      (_tl119569119670_
                       (let () (declare (not safe)) (##cdr _e119571119665_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119570119668_))
                      (let ((_e119574119673_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119570119668_))))
                        (let ((_hd119573119676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119574119673_)))
                              (_tl119572119678_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119574119673_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119572119678_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119569119670_))
                                  (let ((_e119577119681_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119569119670_))))
                                    (let ((_hd119576119684_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119577119681_)))
                                          (_tl119575119686_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119577119681_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119575119686_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119566119662_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119563119654_))
                                                  (let ((_e119580119689_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119563119654_))))
                                                    (let ((_hd119579119692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119580119689_)))
                                                          (_tl119578119694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119580119689_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119578119694_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119557119638_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119548119614_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119545119606_))
                              (let ((_e119583119697_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119545119606_))))
                                (let ((_hd119582119700_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119583119697_)))
                                      (_tl119581119702_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119583119697_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119581119702_))
                                      ((lambda (_L119705_
                                                _L119706_
                                                _L119707_
                                                _L119708_
                                                _L119709_)
                                         (let* ((_get-kws-id119749_
                                                 (let ((__tmp129783
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119521_)))
                                                       (__tmp129782
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129783
                                                    __tmp129782)))
                                                (_get-kws-id119751_
                                                 (let ((__tmp129784
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119234_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119749_
                                                    __tmp129784)))
                                                (_main-id119753_
                                                 (let ((__tmp129786
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119521_)))
                                                       (__tmp129785
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129786
                                                    __tmp129785)))
                                                (_main-id119755_
                                                 (let ((__tmp129787
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119234_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119753_
                                                    __tmp129787)))
                                                (_g129788_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119751_)))
                                                (_g129789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119755_)))
                                                (_new-kw-dispatch119759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119705_
                                                    'id:
                                                    _L119709_
                                                    'new-id:
                                                    _get-kws-id119751_)))
                                                (_new-get-kws119761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119706_
                                                    'id:
                                                    _L119708_
                                                    'new-id:
                                                    _main-id119755_))))
                                           (let ((__tmp129792
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119521_)))
                                                 (__tmp129791
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119751_)))
                                                 (__tmp129790
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119755_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129792
                                              '" => "
                                              __tmp129791
                                              '" => "
                                              __tmp129790))
                                           (let ((__tmp129793
                                                  (let ((__tmp129798
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127325127326_
                                                            _main-id119755_
                                                            _L119707_
                                                            '#f)))
                                                        (__tmp129794
                                                         (let ((__tmp129797
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__127325127326_
                           _get-kws-id119751_
                           _new-get-kws119761_
                           '#f)))
                       (__tmp129795
                        (let ((__tmp129796
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__127325127326_
                                  _L119521_
                                  _new-kw-dispatch119759_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129796 _rest119397_))))
                   (declare (not safe))
                   (cons __tmp129797 __tmp129795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129798
                                                          __tmp129794))))
                                             (declare (not safe))
                                             (_lp119374_
                                              __tmp129793
                                              _bind119377_))))
                                       _hd119582119700_
                                       _hd119579119692_
                                       _hd119576119684_
                                       _hd119573119676_
                                       _hd119555119628_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119535119588_ _g119536119591_)))))
                              (let ()
                                (declare (not safe))
                                (_g119535119588_ _g119536119591_)))
                          (let ()
                            (declare (not safe))
                            (_g119535119588_ _g119536119591_)))
                      (let ()
                        (declare (not safe))
                        (_g119535119588_ _g119536119591_)))
                  (let ()
                    (declare (not safe))
                    (_g119535119588_ _g119536119591_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119535119588_
                                                     _g119536119591_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119535119588_
                                                 _g119536119591_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119535119588_
                                             _g119536119591_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119535119588_ _g119536119591_)))
                              (let ()
                                (declare (not safe))
                                (_g119535119588_ _g119536119591_)))))
                      (let ()
                        (declare (not safe))
                        (_g119535119588_ _g119536119591_)))))
              (let ()
                (declare (not safe))
                (_g119535119588_ _g119536119591_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119535119588_
                                                 _g119536119591_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119535119588_ _g119536119591_)))))
                              (let ()
                                (declare (not safe))
                                (_g119535119588_ _g119536119591_)))))
                      (let ()
                        (declare (not safe))
                        (_g119535119588_ _g119536119591_)))
                  (let ()
                    (declare (not safe))
                    (_g119535119588_ _g119536119591_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119535119588_
                                                     _g119536119591_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119535119588_
                                             _g119536119591_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119535119588_ _g119536119591_)))))
                          (let ()
                            (declare (not safe))
                            (_g119535119588_ _g119536119591_)))))
                  (let ()
                    (declare (not safe))
                    (_g119535119588_ _g119536119591_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119534119764_ _L119520_))))
                                         (___kont129260129261_
                                          (lambda (_L119471_ _L119472_)
                                            (let ((__tmp129799
                                                   (let ((__tmp129800
                                                          (let ((__tmp129801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129802
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self119233_ _L119471_))))
                           (declare (not safe))
                           (cons __tmp129802 '()))))
                    (declare (not safe))
                    (cons _L119472_ __tmp129801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129800
                                                           _bind119377_))))
                                              (declare (not safe))
                                              (_lp119374_
                                               _rest119397_
                                               __tmp129799)))))
                                     (let* ((___match129327129328_
                                             (lambda (_e119431119496_
                                                      _hd119430119499_
                                                      _tl119429119501_
                                                      _e119434119504_
                                                      _hd119433119507_
                                                      _tl119432119509_
                                                      _e119437119512_
                                                      _hd119436119515_
                                                      _tl119435119517_)
                                               (let ((_L119520_
                                                      _hd119436119515_)
                                                     (_L119521_
                                                      _hd119433119507_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119521_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L119520_)))
                                                     (___kont129258129259_
                                                      _L119520_
                                                      _L119521_)
                                                     (___kont129260129261_
                                                      _hd119436119515_
                                                      _hd119430119499_)))))
                                            (___match129305129306_
                                             (lambda (_e119420119772_
                                                      _hd119419119775_
                                                      _tl119418119777_
                                                      _e119423119780_
                                                      _hd119422119783_
                                                      _tl119421119785_
                                                      _e119426119788_
                                                      _hd119425119791_
                                                      _tl119424119793_)
                                               (let ((_L119796_
                                                      _hd119425119791_)
                                                     (_L119797_
                                                      _hd119422119783_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119797_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119796_)))
                                                     (___kont129256129257_
                                                      _L119796_
                                                      _L119797_)
                                                     (___match129327129328_
                                                      _e119420119772_
                                                      _hd119419119775_
                                                      _tl119418119777_
                                                      _e119423119780_
                                                      _hd119422119783_
                                                      _tl119421119785_
                                                      _e119426119788_
                                                      _hd119425119791_
                                                      _tl119424119793_)))))
                                            (___match129283129284_
                                             (lambda (_e119409119944_
                                                      _hd119408119947_
                                                      _tl119407119949_
                                                      _e119412119952_
                                                      _hd119411119955_
                                                      _tl119410119957_
                                                      _e119415119960_
                                                      _hd119414119963_
                                                      _tl119413119965_)
                                               (let ((_L119968_
                                                      _hd119414119963_)
                                                     (_L119969_
                                                      _hd119411119955_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119969_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119968_)))
                                                     (___kont129254129255_
                                                      _L119968_
                                                      _L119969_)
                                                     (___match129305129306_
                                                      _e119409119944_
                                                      _hd119408119947_
                                                      _tl119407119949_
                                                      _e119412119952_
                                                      _hd119411119955_
                                                      _tl119410119957_
                                                      _e119415119960_
                                                      _hd119414119963_
                                                      _tl119413119965_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx129252129253_))
                                           (let ((_e119409119944_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx129252129253_))))
                                             (let ((_tl119407119949_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119409119944_)))
                                                   (_hd119408119947_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119409119944_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119408119947_))
                                                   (let ((_e119412119952_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119408119947_))))
                                                     (let ((_tl119410119957_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119412119952_)))
                                                           (_hd119411119955_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119412119952_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119410119957_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119407119949_))
                       (let ((_e119415119960_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119407119949_))))
                         (let ((_tl119413119965_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119415119960_)))
                               (_hd119414119963_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119415119960_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119413119965_))
                               (___match129283129284_
                                _e119409119944_
                                _hd119408119947_
                                _tl119407119949_
                                _e119412119952_
                                _hd119411119955_
                                _tl119410119957_
                                _e119415119960_
                                _hd119414119963_
                                _tl119413119965_)
                               (let ()
                                 (declare (not safe))
                                 (_g119403119450_)))))
                       (let () (declare (not safe)) (_g119403119450_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119407119949_))
                       (let ((_e119445119463_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119407119949_))))
                         (let ((_tl119443119468_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119445119463_)))
                               (_hd119444119466_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119445119463_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119443119468_))
                               (___kont129260129261_
                                _hd119444119466_
                                _hd119408119947_)
                               (let ()
                                 (declare (not safe))
                                 (_g119403119450_)))))
                       (let () (declare (not safe)) (_g119403119450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119407119949_))
                                                       (let ((_e119445119463_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119407119949_))))
                 (let ((_tl119443119468_
                        (let () (declare (not safe)) (##cdr _e119445119463_)))
                       (_hd119444119466_
                        (let () (declare (not safe)) (##car _e119445119463_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119443119468_))
                       (___kont129260129261_ _hd119444119466_ _hd119408119947_)
                       (let () (declare (not safe)) (_g119403119450_)))))
               (let () (declare (not safe)) (_g119403119450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119403119450_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119378119386_))
                             (let ((_hd119383120064_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119378119386_)))
                                   (_tl119384120066_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119378119386_))))
                               (let* ((_hd120069_ _hd119383120064_)
                                      (_rest120071_ _tl119384120066_))
                                 (declare (not safe))
                                 (_K119382120061_ _rest120071_ _hd120069_)))
                             (let ()
                               (declare (not safe))
                               (_else119380119394_))))))))
          (let* ((___stx129344129345_ _stx119234_)
                 (_g119240119267_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx129344129345_)))))
            (let ((___kont129346129347_
                   (lambda (_L119327_ _L119328_ _L119329_)
                     (let ((__tmp129804
                            (lambda ()
                              (let ((_hd119366_
                                     (let ((__tmp129805
                                            (let ((__tmp129806
                                                   (lambda (_g119358119361_
                                                            _g119359119363_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g119358119361_
                                                             _g119359119363_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129806
                                                      '()
                                                      _L119328_))))
                                       (declare (not safe))
                                       (_compile-bindings119237_ __tmp129805)))
                                    (_body119367_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self119233_
                                        _L119327_))))
                                (let ((__tmp129807
                                       (let ((__tmp129808
                                              (let ((__tmp129809
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body119367_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd119366_
                                                      __tmp129809))))
                                         (declare (not safe))
                                         (cons _L119329_ __tmp129808))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129807
                                   _stx119234_)))))
                           (__tmp129803
                            (let ((__obj129419
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj129419)
                              __obj129419)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129804
                        gx#current-expander-context
                        __tmp129803))))
                  (___kont129350129351_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self119233_ _stx119234_)))))
              (let ((___match129371129372_
                     (lambda (_e119247119279_
                              _hd119246119282_
                              _tl119245119284_
                              _e119250119287_
                              _hd119249119290_
                              _tl119248119292_
                              ___splice129348129349_
                              _target119251119295_
                              _tl119253119297_)
                       (letrec ((_loop119254119300_
                                 (lambda (_hd119252119303_ _bind119258119305_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119252119303_))
                                       (let ((_e119255119308_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119252119303_))))
                                         (let ((_lp-tl119257119313_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119255119308_)))
                                               (_lp-hd119256119311_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119255119308_))))
                                           (let ((__tmp129812
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119256119311_
                                                          _bind119258119305_))))
                                             (declare (not safe))
                                             (_loop119254119300_
                                              _lp-tl119257119313_
                                              __tmp129812))))
                                       (let ((_bind119259119316_
                                              (reverse _bind119258119305_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119248119292_))
                                             (let ((_e119262119319_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119248119292_))))
                                               (let ((_tl119260119324_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119262119319_)))
                                                     (_hd119261119322_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119262119319_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119260119324_))
                                                     (let ((_L119327_
                                                            _hd119261119322_)
                                                           (_L119328_
                                                            _bind119259119316_)
                                                           (_L119329_
                                                            _hd119246119282_))
                                                       (if (let ((__tmp129810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129811
                                 (lambda (_g119350119353_ _g119351119355_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119350119353_ _g119351119355_)))))
                            (declare (not safe))
                            (foldr1 __tmp129811 '() _L119328_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129810))
                   (___kont129346129347_ _L119327_ _L119328_ _L119329_)
                   (___kont129350129351_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129350129351_))))
                                             (___kont129350129351_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119254119300_ _target119251119295_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx129344129345_))
                    (let ((_e119247119279_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx129344129345_))))
                      (let ((_tl119245119284_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119247119279_)))
                            (_hd119246119282_
                             (let ()
                               (declare (not safe))
                               (##car _e119247119279_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119245119284_))
                            (let ((_e119250119287_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119245119284_))))
                              (let ((_tl119248119292_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119250119287_)))
                                    (_hd119249119290_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119250119287_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119249119290_))
                                    (let ((___splice129348129349_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119249119290_
                                              '0))))
                                      (let ((_tl119253119297_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129348129349_
                                                '1)))
                                            (_target119251119295_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129348129349_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119253119297_))
                                            (___match129371129372_
                                             _e119247119279_
                                             _hd119246119282_
                                             _tl119245119284_
                                             _e119250119287_
                                             _hd119249119290_
                                             _tl119248119292_
                                             ___splice129348129349_
                                             _target119251119295_
                                             _tl119253119297_)
                                            (___kont129350129351_))))
                                    (___kont129350129351_))))
                            (___kont129350129351_))))
                    (___kont129350129351_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind119151_)
        (let* ((___stx129374129375_ _bind119151_)
               (_g119154119171_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129374129375_)))))
          (let ((___kont129376129377_
                 (lambda (_L119207_ _L119208_)
                   (if (let () (declare (not safe)) (gx#identifier? _L119208_))
                       (let ((_$e119224_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L119207_))))
                         (if _$e119224_
                             _$e119224_
                             (let ((_$e119227_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L119207_))))
                               (if _$e119227_
                                   _$e119227_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L119207_))))))
                       '#f)))
                (___kont129378129379_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129374129375_))
                (let ((_e119160119183_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129374129375_))))
                  (let ((_tl119158119188_
                         (let () (declare (not safe)) (##cdr _e119160119183_)))
                        (_hd119159119186_
                         (let ()
                           (declare (not safe))
                           (##car _e119160119183_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd119159119186_))
                        (let ((_e119163119191_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd119159119186_))))
                          (let ((_tl119161119196_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e119163119191_)))
                                (_hd119162119194_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e119163119191_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl119161119196_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl119158119188_))
                                    (let ((_e119166119199_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl119158119188_))))
                                      (let ((_tl119164119204_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119166119199_)))
                                            (_hd119165119202_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119166119199_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119164119204_))
                                            (___kont129376129377_
                                             _hd119165119202_
                                             _hd119162119194_)
                                            (___kont129378129379_))))
                                    (___kont129378129379_))
                                (___kont129378129379_))))
                        (___kont129378129379_))))
                (___kont129378129379_))))))))
