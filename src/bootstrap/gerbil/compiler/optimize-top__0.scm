(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710170108)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp129420 (list gxc#::void::t))
            (__tmp129418
             (let ((__tmp129419
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129419 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp129420
         '()
         __tmp129418
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args127315_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args127315_)))
    (define gxc#::collect-top-level-type-info-bind-methods!
      (let ((__tmp129421
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#begin
                  gxc#collect-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#begin-syntax
                  gxc#collect-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-top-level-type-info::t
                  '%#module
                  gxc#collect-module%))
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
        (make-promise __tmp129421)))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx127307_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self127310_
                (let ((__obj129402
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj129402))
               (__tmp129422
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127310_ _stx127307_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129422
           gxc#current-compile-method
           _self127310_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp129425 (list gxc#::false::t))
            (__tmp129423
             (let ((__tmp129424
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129424 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp129425
         '()
         __tmp129423
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args127304_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args127304_)))
    (define gxc#::basic-expression-top-level-type-bind-methods!
      (let ((__tmp129426
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
        (make-promise __tmp129426)))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx127296_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self127299_
                (let ((__obj129404
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj129404))
               (__tmp129427
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127299_ _stx127296_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129427
           gxc#current-compile-method
           _self127299_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp129430 (list gxc#::void::t))
            (__tmp129428
             (let ((__tmp129429
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129429 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp129430
         '()
         __tmp129428
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args127293_
        (apply make-instance gxc#::collect-type-info::t _$args127293_)))
    (define gxc#::collect-type-info-bind-methods!
      (let ((__tmp129431
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#begin
                  gxc#collect-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#begin-syntax
                  gxc#collect-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#module
                  gxc#collect-module%))
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
                  gxc#collect-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#lambda
                  gxc#collect-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#case-lambda
                  gxc#collect-body-case-lambda%))
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
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-type-info::t
                  '%#set!
                  gxc#collect-body-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-type-info::t)))))
        (declare (not safe))
        (make-promise __tmp129431)))
    (define gxc#apply-collect-type-info
      (lambda (_stx127285_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self127288_
                (let ((__obj129406
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj129406))
               (__tmp129432
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127288_ _stx127285_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129432
           gxc#current-compile-method
           _self127288_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp129435 (list gxc#::false::t))
            (__tmp129433
             (let ((__tmp129434
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129434 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp129435
         '()
         __tmp129433
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args127282_
        (apply make-instance gxc#::basic-expression-type::t _$args127282_)))
    (define gxc#::basic-expression-type-bind-methods!
      (let ((__tmp129436
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
        (make-promise __tmp129436)))
    (define gxc#apply-basic-expression-type
      (lambda (_stx127274_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self127277_
                (let ((__obj129408
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj129408))
               (__tmp129437
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127277_ _stx127274_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129437
           gxc#current-compile-method
           _self127277_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp129440 (list gxc#::basic-xform::t))
            (__tmp129438
             (let ((__tmp129439
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp129439 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp129440
         '()
         __tmp129438
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args127271_
        (apply make-instance gxc#::lift-top-lambdas::t _$args127271_)))
    (define gxc#::lift-top-lambdas-bind-methods!
      (let ((__tmp129441
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
        (make-promise __tmp129441)))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx127263_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self127266_
                (let ((__obj129410
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj129410))
               (__tmp129442
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self127266_ _stx127263_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp129442
           gxc#current-compile-method
           _self127266_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self127165_ _stx127166_)
        (let* ((___stx127328127329_ _stx127166_)
               (_g127169127189_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127328127329_)))))
          (let ((___kont127330127331_
                 (lambda (_L127233_ _L127234_)
                   (let ((_sym127252_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127234_))))
                     (if (let ((__tmp129443 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp129443 _sym127252_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym127252_))
                         (let ((_type127253127255_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L127233_))))
                           (if _type127253127255_
                               (let ((_type127258_ _type127253127255_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym127252_
                                  _type127258_))
                               '#f))))))
                (___kont127332127333_ (lambda () '#!void)))
            (let ((___match127361127362_
                   (lambda (_e127175127201_
                            _hd127174127204_
                            _tl127173127206_
                            _e127178127209_
                            _hd127177127212_
                            _tl127176127214_
                            _e127181127217_
                            _hd127180127220_
                            _tl127179127222_
                            _e127184127225_
                            _hd127183127228_
                            _tl127182127230_)
                     (let ((_L127233_ _hd127183127228_)
                           (_L127234_ _hd127180127220_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L127234_))
                           (___kont127330127331_ _L127233_ _L127234_)
                           (___kont127332127333_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127328127329_))
                  (let ((_e127175127201_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127328127329_))))
                    (let ((_tl127173127206_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127175127201_)))
                          (_hd127174127204_
                           (let ()
                             (declare (not safe))
                             (##car _e127175127201_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127173127206_))
                          (let ((_e127178127209_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127173127206_))))
                            (let ((_tl127176127214_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127178127209_)))
                                  (_hd127177127212_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127178127209_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127177127212_))
                                  (let ((_e127181127217_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127177127212_))))
                                    (let ((_tl127179127222_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127181127217_)))
                                          (_hd127180127220_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127181127217_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127179127222_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127176127214_))
                                              (let ((_e127184127225_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127176127214_))))
                                                (let ((_tl127182127230_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127184127225_)))
                                                      (_hd127183127228_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127184127225_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127182127230_))
                                                      (___match127361127362_
                                                       _e127175127201_
                                                       _hd127174127204_
                                                       _tl127173127206_
                                                       _e127178127209_
                                                       _hd127177127212_
                                                       _tl127176127214_
                                                       _e127181127217_
                                                       _hd127180127220_
                                                       _tl127179127222_
                                                       _e127184127225_
                                                       _hd127183127228_
                                                       _tl127182127230_)
                                                      (___kont127332127333_))))
                                              (___kont127332127333_))
                                          (___kont127332127333_))))
                                  (___kont127332127333_))))
                          (___kont127332127333_))))
                  (___kont127332127333_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self127020_ _stx127021_)
        (let* ((___stx127364127365_ _stx127021_)
               (_g127024127055_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127364127365_)))))
          (let ((___kont127366127367_
                 (lambda (_L127137_ _L127138_)
                   (let ((_sym127154_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127138_))))
                     (if (let ((__tmp129444 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp129444 _sym127154_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym127154_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym127154_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym127154_))
                             (let ((_type127155127157_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L127137_))))
                               (if _type127155127157_
                                   (let ((_type127160_ _type127155127157_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym127154_
                                      _type127160_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self127020_ _L127137_)))))
                (___kont127368127369_
                 (lambda (_L127084_ _L127085_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127020_ _L127084_)))))
            (let ((___match127397127398_
                   (lambda (_e127030127105_
                            _hd127029127108_
                            _tl127028127110_
                            _e127033127113_
                            _hd127032127116_
                            _tl127031127118_
                            _e127036127121_
                            _hd127035127124_
                            _tl127034127126_
                            _e127039127129_
                            _hd127038127132_
                            _tl127037127134_)
                     (let ((_L127137_ _hd127038127132_)
                           (_L127138_ _hd127035127124_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L127138_))
                           (___kont127366127367_ _L127137_ _L127138_)
                           (___kont127368127369_
                            _hd127038127132_
                            _hd127032127116_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127364127365_))
                  (let ((_e127030127105_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127364127365_))))
                    (let ((_tl127028127110_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127030127105_)))
                          (_hd127029127108_
                           (let ()
                             (declare (not safe))
                             (##car _e127030127105_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127028127110_))
                          (let ((_e127033127113_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127028127110_))))
                            (let ((_tl127031127118_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127033127113_)))
                                  (_hd127032127116_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127033127113_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127032127116_))
                                  (let ((_e127036127121_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127032127116_))))
                                    (let ((_tl127034127126_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127036127121_)))
                                          (_hd127035127124_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127036127121_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127034127126_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127031127118_))
                                              (let ((_e127039127129_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127031127118_))))
                                                (let ((_tl127037127134_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127039127129_)))
                                                      (_hd127038127132_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127039127129_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127037127134_))
                                                      (___match127397127398_
                                                       _e127030127105_
                                                       _hd127029127108_
                                                       _tl127028127110_
                                                       _e127033127113_
                                                       _hd127032127116_
                                                       _tl127031127118_
                                                       _e127036127121_
                                                       _hd127035127124_
                                                       _tl127034127126_
                                                       _e127039127129_
                                                       _hd127038127132_
                                                       _tl127037127134_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127024127055_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127024127055_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127031127118_))
                                              (let ((_e127050127076_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127031127118_))))
                                                (let ((_tl127048127081_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127050127076_)))
                                                      (_hd127049127079_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127050127076_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127048127081_))
                                                      (___kont127368127369_
                                                       _hd127049127079_
                                                       _hd127032127116_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127024127055_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127024127055_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127031127118_))
                                      (let ((_e127050127076_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127031127118_))))
                                        (let ((_tl127048127081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127050127076_)))
                                              (_hd127049127079_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127050127076_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127048127081_))
                                              (___kont127368127369_
                                               _hd127049127079_
                                               _hd127032127116_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127024127055_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127024127055_))))))
                          (let () (declare (not safe)) (_g127024127055_)))))
                  (let () (declare (not safe)) (_g127024127055_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self126800_ _stx126801_)
        (letrec ((_collect-e126803_
                  (lambda (_hd126964_ _expr126965_)
                    (let* ((___stx127420127421_ _hd126964_)
                           (_g126968126978_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx127420127421_)))))
                      (let ((___kont127422127423_
                             (lambda (_L126998_)
                               (let ((_sym127009_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L126998_))))
                                 (if (let ((__tmp129445
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp129445 _sym127009_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym127009_))
                                     (let ((_type127010127012_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr126965_))))
                                       (if _type127010127012_
                                           (let ((_type127015_
                                                  _type127010127012_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym127009_
                                              _type127015_
                                              '#t))
                                           '#f))))))
                            (___kont127424127425_ (lambda () '#!void)))
                        (let ((___match127433127434_
                               (lambda (_e126973126990_
                                        _hd126972126993_
                                        _tl126971126995_)
                                 (let ((_L126998_ _hd126972126993_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L126998_))
                                       (___kont127422127423_ _L126998_)
                                       (___kont127424127425_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx127420127421_))
                              (let ((_e126973126990_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx127420127421_))))
                                (let ((_tl126971126995_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126973126990_)))
                                      (_hd126972126993_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126973126990_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126971126995_))
                                      (___match127433127434_
                                       _e126973126990_
                                       _hd126972126993_
                                       _tl126971126995_)
                                      (___kont127424127425_))))
                              (___kont127424127425_))))))))
          (let* ((_g126805126840_
                  (lambda (_g126806126837_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126806126837_))))
                 (_g126804126961_
                  (lambda (_g126806126843_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126806126843_))
                        (let ((_e126812126845_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126806126843_))))
                          (let ((_hd126811126848_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126812126845_)))
                                (_tl126810126850_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126812126845_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126810126850_))
                                (let ((_e126815126853_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126810126850_))))
                                  (let ((_hd126814126856_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126815126853_)))
                                        (_tl126813126858_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126815126853_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126814126856_))
                                        (let ((_g129446_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126814126856_
                                                  '0))))
                                          (begin
                                            (let ((_g129447_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g129446_)
                                                         (##vector-length
                                                          _g129446_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g129447_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g129447_)))
                                            (let ((_target126816126861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129446_
                                                      0)))
                                                  (_tl126818126863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g129446_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126818126863_))
                                                  (letrec ((_loop126819126866_
                                                            (lambda (_hd126817126869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126823126871_
                             _hd126824126873_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126817126869_))
                          (let ((_e126820126876_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126817126869_))))
                            (let ((_lp-hd126821126879_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126820126876_)))
                                  (_lp-tl126822126881_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126820126876_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126821126879_))
                                  (let ((_e126829126884_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126821126879_))))
                                    (let ((_hd126828126887_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126829126884_)))
                                          (_tl126827126889_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126829126884_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126827126889_))
                                          (let ((_e126832126892_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126827126889_))))
                                            (let ((_hd126831126895_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126832126892_)))
                                                  (_tl126830126897_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126832126892_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126830126897_))
                                                  (let ((__tmp129452
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126831126895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126823126871_)))
                (__tmp129451
                 (let ()
                   (declare (not safe))
                   (cons _hd126828126887_ _hd126824126873_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126819126866_
                                                     _lp-tl126822126881_
                                                     __tmp129452
                                                     __tmp129451))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126805126840_
                                                     _g126806126843_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126805126840_
                                             _g126806126843_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126805126840_ _g126806126843_)))))
                          (let ((_expr126825126900_
                                 (reverse _expr126823126871_))
                                (_hd126826126902_ (reverse _hd126824126873_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126813126858_))
                                (let ((_e126835126905_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126813126858_))))
                                  (let ((_hd126834126908_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126835126905_)))
                                        (_tl126833126910_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126835126905_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126833126910_))
                                        ((lambda (_L126913_
                                                  _L126914_
                                                  _L126915_)
                                           (for-each
                                            _collect-e126803_
                                            (let ((__tmp129448
                                                   (lambda (_g126935126938_
                                                            _g126936126940_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126935126938_
                                                             _g126936126940_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129448
                                                      '()
                                                      _L126915_))
                                            (let ((__tmp129449
                                                   (lambda (_g126942126945_
                                                            _g126943126947_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126942126945_
                                                             _g126943126947_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129449
                                                      '()
                                                      _L126914_)))
                                           (for-each
                                            (lambda (_g126949126951_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self126800_
                                                 _g126949126951_)))
                                            (let ((__tmp129450
                                                   (lambda (_g126953126956_
                                                            _g126954126958_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126953126956_
                                                             _g126954126958_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129450
                                                      '()
                                                      _L126914_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self126800_
                                              _L126913_)))
                                         _hd126834126908_
                                         _expr126825126900_
                                         _hd126826126902_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126805126840_ _g126806126843_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126805126840_ _g126806126843_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126819126866_
                                                       _target126816126861_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126805126840_
                                                     _g126806126843_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126805126840_ _g126806126843_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126805126840_ _g126806126843_)))))
                        (let ()
                          (declare (not safe))
                          (_g126805126840_ _g126806126843_))))))
            (declare (not safe))
            (_g126804126961_ _stx126801_)))))
    (define gxc#collect-type-call%
      (lambda (_self126287_ _stx126288_)
        (let* ((___stx127436127437_ _stx126288_)
               (_g126292126407_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127436127437_)))))
          (let ((___kont127438127439_
                 (lambda (_L126750_ _L126751_ _L126752_ _L126753_ _L126754_)
                   (let ((__tmp129456
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126753_)))
                         (__tmp129455
                          (let () (declare (not safe)) (gx#stx-e _L126752_)))
                         (__tmp129454
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126751_)))
                         (__tmp129453
                          (let () (declare (not safe)) (gx#stx-e _L126750_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp129456
                      __tmp129455
                      __tmp129454
                      __tmp129453))))
                (___kont127440127441_
                 (lambda (_L126578_ _L126579_ _L126580_ _L126581_)
                   (let ((__tmp129459
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126580_)))
                         (__tmp129458
                          (let () (declare (not safe)) (gx#stx-e _L126579_)))
                         (__tmp129457
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126578_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp129459
                      __tmp129458
                      __tmp129457
                      '#f))))
                (___kont127442127443_
                 (lambda (_L126444_)
                   (for-each
                    (lambda (_g126457126459_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self126287_ _g126457126459_)))
                    (let ((__tmp129460
                           (lambda (_g126461126464_ _g126462126466_)
                             (let ()
                               (declare (not safe))
                               (cons _g126461126464_ _g126462126466_)))))
                      (declare (not safe))
                      (foldr1 __tmp129460 '() _L126444_))))))
            (let* ((___match127693127694_
                    (lambda (_e126393126412_
                             _hd126392126415_
                             _tl126391126417_
                             ___splice127444127445_
                             _target126394126420_
                             _tl126396126422_)
                      (letrec ((_loop126397126425_
                                (lambda (_hd126395126428_ _expr126401126430_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126395126428_))
                                      (let ((_e126398126433_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126395126428_))))
                                        (let ((_lp-tl126400126438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126398126433_)))
                                              (_lp-hd126399126436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126398126433_))))
                                          (let ((__tmp129461
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd126399126436_
                                                         _expr126401126430_))))
                                            (declare (not safe))
                                            (_loop126397126425_
                                             _lp-tl126400126438_
                                             __tmp129461))))
                                      (let ((_expr126402126441_
                                             (reverse _expr126401126430_)))
                                        (___kont127442127443_
                                         _expr126402126441_))))))
                        (let ()
                          (declare (not safe))
                          (_loop126397126425_ _target126394126420_ '())))))
                   (___match127573127574_
                    (lambda (_e126301126622_
                             _hd126300126625_
                             _tl126299126627_
                             _e126304126630_
                             _hd126303126633_
                             _tl126302126635_
                             _e126307126638_
                             _hd126306126641_
                             _tl126305126643_
                             _e126310126646_
                             _hd126309126649_
                             _tl126308126651_
                             _e126313126654_
                             _hd126312126657_
                             _tl126311126659_
                             _e126316126662_
                             _hd126315126665_
                             _tl126314126667_
                             _e126319126670_
                             _hd126318126673_
                             _tl126317126675_
                             _e126322126678_
                             _hd126321126681_
                             _tl126320126683_
                             _e126325126686_
                             _hd126324126689_
                             _tl126323126691_
                             _e126328126694_
                             _hd126327126697_
                             _tl126326126699_
                             _e126331126702_
                             _hd126330126705_
                             _tl126329126707_
                             _e126334126710_
                             _hd126333126713_
                             _tl126332126715_
                             _e126337126718_
                             _hd126336126721_
                             _tl126335126723_
                             _e126340126726_
                             _hd126339126729_
                             _tl126338126731_
                             _e126343126734_
                             _hd126342126737_
                             _tl126341126739_
                             _e126346126742_
                             _hd126345126745_
                             _tl126344126747_)
                      (let ((_L126750_ _hd126345126745_)
                            (_L126751_ _hd126336126721_)
                            (_L126752_ _hd126327126697_)
                            (_L126753_ _hd126318126673_)
                            (_L126754_ _hd126309126649_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126754_
                               'bind-method!))
                            (___kont127438127439_
                             _L126750_
                             _L126751_
                             _L126752_
                             _L126753_
                             _L126754_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl126299126627_))
                                (let ((___splice127444127445_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl126299126627_
                                          '0))))
                                  (let ((_tl126396126422_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice127444127445_
                                            '1)))
                                        (_target126394126420_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice127444127445_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126396126422_))
                                        (___match127693127694_
                                         _e126301126622_
                                         _hd126300126625_
                                         _tl126299126627_
                                         ___splice127444127445_
                                         _target126394126420_
                                         _tl126396126422_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126292126407_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126292126407_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127436127437_))
                  (let ((_e126301126622_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127436127437_))))
                    (let ((_tl126299126627_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126301126622_)))
                          (_hd126300126625_
                           (let ()
                             (declare (not safe))
                             (##car _e126301126622_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126299126627_))
                          (let ((_e126304126630_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126299126627_))))
                            (let ((_tl126302126635_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126304126630_)))
                                  (_hd126303126633_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126304126630_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126303126633_))
                                  (let ((_e126307126638_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126303126633_))))
                                    (let ((_tl126305126643_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126307126638_)))
                                          (_hd126306126641_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126307126638_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd126306126641_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd126306126641_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126305126643_))
                                                  (let ((_e126310126646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126305126643_))))
                                                    (let ((_tl126308126651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126310126646_)))
                                                          (_hd126309126649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126310126646_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126308126651_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl126302126635_))
                      (let ((_e126313126654_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126302126635_))))
                        (let ((_tl126311126659_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126313126654_)))
                              (_hd126312126657_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126313126654_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd126312126657_))
                              (let ((_e126316126662_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd126312126657_))))
                                (let ((_tl126314126667_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126316126662_)))
                                      (_hd126315126665_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126316126662_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd126315126665_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd126315126665_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126314126667_))
                                              (let ((_e126319126670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126314126667_))))
                                                (let ((_tl126317126675_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126319126670_)))
                                                      (_hd126318126673_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126319126670_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126317126675_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126311126659_))
                                                          (let ((_e126322126678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126311126659_))))
                    (let ((_tl126320126683_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126322126678_)))
                          (_hd126321126681_
                           (let ()
                             (declare (not safe))
                             (##car _e126322126678_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126321126681_))
                          (let ((_e126325126686_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126321126681_))))
                            (let ((_tl126323126691_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126325126686_)))
                                  (_hd126324126689_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126325126686_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126324126689_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd126324126689_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126323126691_))
                                          (let ((_e126328126694_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126323126691_))))
                                            (let ((_tl126326126699_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126328126694_)))
                                                  (_hd126327126697_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126328126694_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126326126699_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126320126683_))
                                                      (let ((_e126331126702_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126320126683_))))
                (let ((_tl126329126707_
                       (let () (declare (not safe)) (##cdr _e126331126702_)))
                      (_hd126330126705_
                       (let () (declare (not safe)) (##car _e126331126702_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126330126705_))
                      (let ((_e126334126710_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126330126705_))))
                        (let ((_tl126332126715_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126334126710_)))
                              (_hd126333126713_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126334126710_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126333126713_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd126333126713_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126332126715_))
                                      (let ((_e126337126718_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126332126715_))))
                                        (let ((_tl126335126723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126337126718_)))
                                              (_hd126336126721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126337126718_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126335126723_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126329126707_))
                                                  (let ((_e126340126726_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126329126707_))))
                                                    (let ((_tl126338126731_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126340126726_)))
                                                          (_hd126339126729_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126340126726_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126339126729_))
                                                          (let ((_e126343126734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126339126729_))))
                    (let ((_tl126341126739_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126343126734_)))
                          (_hd126342126737_
                           (let ()
                             (declare (not safe))
                             (##car _e126343126734_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126342126737_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd126342126737_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126341126739_))
                                  (let ((_e126346126742_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126341126739_))))
                                    (let ((_tl126344126747_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126346126742_)))
                                          (_hd126345126745_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126346126742_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126344126747_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126338126731_))
                                              (___match127573127574_
                                               _e126301126622_
                                               _hd126300126625_
                                               _tl126299126627_
                                               _e126304126630_
                                               _hd126303126633_
                                               _tl126302126635_
                                               _e126307126638_
                                               _hd126306126641_
                                               _tl126305126643_
                                               _e126310126646_
                                               _hd126309126649_
                                               _tl126308126651_
                                               _e126313126654_
                                               _hd126312126657_
                                               _tl126311126659_
                                               _e126316126662_
                                               _hd126315126665_
                                               _tl126314126667_
                                               _e126319126670_
                                               _hd126318126673_
                                               _tl126317126675_
                                               _e126322126678_
                                               _hd126321126681_
                                               _tl126320126683_
                                               _e126325126686_
                                               _hd126324126689_
                                               _tl126323126691_
                                               _e126328126694_
                                               _hd126327126697_
                                               _tl126326126699_
                                               _e126331126702_
                                               _hd126330126705_
                                               _tl126329126707_
                                               _e126334126710_
                                               _hd126333126713_
                                               _tl126332126715_
                                               _e126337126718_
                                               _hd126336126721_
                                               _tl126335126723_
                                               _e126340126726_
                                               _hd126339126729_
                                               _tl126338126731_
                                               _e126343126734_
                                               _hd126342126737_
                                               _tl126341126739_
                                               _e126346126742_
                                               _hd126345126745_
                                               _tl126344126747_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126299126627_))
                                                  (let ((___splice127444127445_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126299126627_
                                                            '0))))
                                                    (let ((_tl126396126422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127444127445_
                                                              '1)))
                                                          (_target126394126420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127444127445_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126396126422_))
                                                          (___match127693127694_
                                                           _e126301126622_
                                                           _hd126300126625_
                                                           _tl126299126627_
                                                           ___splice127444127445_
                                                           _target126394126420_
                                                           _tl126396126422_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126292126407_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126292126407_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126299126627_))
                                              (let ((___splice127444127445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126299126627_
                                                        '0))))
                                                (let ((_tl126396126422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127444127445_
                                                          '1)))
                                                      (_target126394126420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127444127445_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126396126422_))
                                                      (___match127693127694_
                                                       _e126301126622_
                                                       _hd126300126625_
                                                       _tl126299126627_
                                                       ___splice127444127445_
                                                       _target126394126420_
                                                       _tl126396126422_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126292126407_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126292126407_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126299126627_))
                                      (let ((___splice127444127445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126299126627_
                                                '0))))
                                        (let ((_tl126396126422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127444127445_
                                                  '1)))
                                              (_target126394126420_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127444127445_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126396126422_))
                                              (___match127693127694_
                                               _e126301126622_
                                               _hd126300126625_
                                               _tl126299126627_
                                               ___splice127444127445_
                                               _target126394126420_
                                               _tl126396126422_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126292126407_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126292126407_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl126299126627_))
                                  (let ((___splice127444127445_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl126299126627_
                                            '0))))
                                    (let ((_tl126396126422_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127444127445_
                                              '1)))
                                          (_target126394126420_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127444127445_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126396126422_))
                                          (___match127693127694_
                                           _e126301126622_
                                           _hd126300126625_
                                           _tl126299126627_
                                           ___splice127444127445_
                                           _target126394126420_
                                           _tl126396126422_)
                                          (let ()
                                            (declare (not safe))
                                            (_g126292126407_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126292126407_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl126299126627_))
                              (let ((___splice127444127445_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl126299126627_
                                        '0))))
                                (let ((_tl126396126422_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127444127445_
                                          '1)))
                                      (_target126394126420_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127444127445_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126396126422_))
                                      (___match127693127694_
                                       _e126301126622_
                                       _hd126300126625_
                                       _tl126299126627_
                                       ___splice127444127445_
                                       _target126394126420_
                                       _tl126396126422_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126292126407_)))))
                              (let ()
                                (declare (not safe))
                                (_g126292126407_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126299126627_))
                      (let ((___splice127444127445_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126299126627_ '0))))
                        (let ((_tl126396126422_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127444127445_ '1)))
                              (_target126394126420_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127444127445_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126396126422_))
                              (___match127693127694_
                               _e126301126622_
                               _hd126300126625_
                               _tl126299126627_
                               ___splice127444127445_
                               _target126394126420_
                               _tl126396126422_)
                              (let ()
                                (declare (not safe))
                                (_g126292126407_)))))
                      (let () (declare (not safe)) (_g126292126407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126329126707_))
                                                      (if (let ((__tmp129462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp129462 'bind-method!))
                  (let ((_L126578_ _hd126336126721_)
                        (_L126579_ _hd126327126697_)
                        (_L126580_ _hd126318126673_)
                        (_L126581_ _hd126309126649_))
                    (___kont127440127441_
                     _L126578_
                     _L126579_
                     _L126580_
                     _L126581_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126299126627_))
                      (let ((___splice127444127445_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126299126627_ '0))))
                        (let ((_tl126396126422_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127444127445_ '1)))
                              (_target126394126420_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127444127445_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126396126422_))
                              (___match127693127694_
                               _e126301126622_
                               _hd126300126625_
                               _tl126299126627_
                               ___splice127444127445_
                               _target126394126420_
                               _tl126396126422_)
                              (let ()
                                (declare (not safe))
                                (_g126292126407_)))))
                      (let () (declare (not safe)) (_g126292126407_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl126299126627_))
                  (let ((___splice127444127445_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl126299126627_ '0))))
                    (let ((_tl126396126422_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127444127445_ '1)))
                          (_target126394126420_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127444127445_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126396126422_))
                          (___match127693127694_
                           _e126301126622_
                           _hd126300126625_
                           _tl126299126627_
                           ___splice127444127445_
                           _target126394126420_
                           _tl126396126422_)
                          (let () (declare (not safe)) (_g126292126407_)))))
                  (let () (declare (not safe)) (_g126292126407_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126299126627_))
                                                  (let ((___splice127444127445_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126299126627_
                                                            '0))))
                                                    (let ((_tl126396126422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127444127445_
                                                              '1)))
                                                          (_target126394126420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127444127445_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126396126422_))
                                                          (___match127693127694_
                                                           _e126301126622_
                                                           _hd126300126625_
                                                           _tl126299126627_
                                                           ___splice127444127445_
                                                           _target126394126420_
                                                           _tl126396126422_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126292126407_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126292126407_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl126299126627_))
                                          (let ((___splice127444127445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl126299126627_
                                                    '0))))
                                            (let ((_tl126396126422_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127444127445_
                                                      '1)))
                                                  (_target126394126420_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127444127445_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126396126422_))
                                                  (___match127693127694_
                                                   _e126301126622_
                                                   _hd126300126625_
                                                   _tl126299126627_
                                                   ___splice127444127445_
                                                   _target126394126420_
                                                   _tl126396126422_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126292126407_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126292126407_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126299126627_))
                                      (let ((___splice127444127445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126299126627_
                                                '0))))
                                        (let ((_tl126396126422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127444127445_
                                                  '1)))
                                              (_target126394126420_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127444127445_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126396126422_))
                                              (___match127693127694_
                                               _e126301126622_
                                               _hd126300126625_
                                               _tl126299126627_
                                               ___splice127444127445_
                                               _target126394126420_
                                               _tl126396126422_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126292126407_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126292126407_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl126299126627_))
                                  (let ((___splice127444127445_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl126299126627_
                                            '0))))
                                    (let ((_tl126396126422_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127444127445_
                                              '1)))
                                          (_target126394126420_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127444127445_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126396126422_))
                                          (___match127693127694_
                                           _e126301126622_
                                           _hd126300126625_
                                           _tl126299126627_
                                           ___splice127444127445_
                                           _target126394126420_
                                           _tl126396126422_)
                                          (let ()
                                            (declare (not safe))
                                            (_g126292126407_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126292126407_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl126299126627_))
                          (let ((___splice127444127445_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl126299126627_
                                    '0))))
                            (let ((_tl126396126422_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127444127445_ '1)))
                                  (_target126394126420_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127444127445_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126396126422_))
                                  (___match127693127694_
                                   _e126301126622_
                                   _hd126300126625_
                                   _tl126299126627_
                                   ___splice127444127445_
                                   _target126394126420_
                                   _tl126396126422_)
                                  (let ()
                                    (declare (not safe))
                                    (_g126292126407_)))))
                          (let () (declare (not safe)) (_g126292126407_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl126299126627_))
                  (let ((___splice127444127445_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl126299126627_ '0))))
                    (let ((_tl126396126422_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127444127445_ '1)))
                          (_target126394126420_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127444127445_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126396126422_))
                          (___match127693127694_
                           _e126301126622_
                           _hd126300126625_
                           _tl126299126627_
                           ___splice127444127445_
                           _target126394126420_
                           _tl126396126422_)
                          (let () (declare (not safe)) (_g126292126407_)))))
                  (let () (declare (not safe)) (_g126292126407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl126299126627_))
                                                      (let ((___splice127444127445_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl126299126627_ '0))))
                (let ((_tl126396126422_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127444127445_ '1)))
                      (_target126394126420_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127444127445_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl126396126422_))
                      (___match127693127694_
                       _e126301126622_
                       _hd126300126625_
                       _tl126299126627_
                       ___splice127444127445_
                       _target126394126420_
                       _tl126396126422_)
                      (let () (declare (not safe)) (_g126292126407_)))))
              (let () (declare (not safe)) (_g126292126407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126299126627_))
                                              (let ((___splice127444127445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126299126627_
                                                        '0))))
                                                (let ((_tl126396126422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127444127445_
                                                          '1)))
                                                      (_target126394126420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127444127445_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126396126422_))
                                                      (___match127693127694_
                                                       _e126301126622_
                                                       _hd126300126625_
                                                       _tl126299126627_
                                                       ___splice127444127445_
                                                       _target126394126420_
                                                       _tl126396126422_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126292126407_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126292126407_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl126299126627_))
                                          (let ((___splice127444127445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl126299126627_
                                                    '0))))
                                            (let ((_tl126396126422_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127444127445_
                                                      '1)))
                                                  (_target126394126420_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127444127445_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126396126422_))
                                                  (___match127693127694_
                                                   _e126301126622_
                                                   _hd126300126625_
                                                   _tl126299126627_
                                                   ___splice127444127445_
                                                   _target126394126420_
                                                   _tl126396126422_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126292126407_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126292126407_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126299126627_))
                                      (let ((___splice127444127445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126299126627_
                                                '0))))
                                        (let ((_tl126396126422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127444127445_
                                                  '1)))
                                              (_target126394126420_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127444127445_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126396126422_))
                                              (___match127693127694_
                                               _e126301126622_
                                               _hd126300126625_
                                               _tl126299126627_
                                               ___splice127444127445_
                                               _target126394126420_
                                               _tl126396126422_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126292126407_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126292126407_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl126299126627_))
                              (let ((___splice127444127445_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl126299126627_
                                        '0))))
                                (let ((_tl126396126422_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127444127445_
                                          '1)))
                                      (_target126394126420_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127444127445_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126396126422_))
                                      (___match127693127694_
                                       _e126301126622_
                                       _hd126300126625_
                                       _tl126299126627_
                                       ___splice127444127445_
                                       _target126394126420_
                                       _tl126396126422_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126292126407_)))))
                              (let ()
                                (declare (not safe))
                                (_g126292126407_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126299126627_))
                      (let ((___splice127444127445_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126299126627_ '0))))
                        (let ((_tl126396126422_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127444127445_ '1)))
                              (_target126394126420_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127444127445_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126396126422_))
                              (___match127693127694_
                               _e126301126622_
                               _hd126300126625_
                               _tl126299126627_
                               ___splice127444127445_
                               _target126394126420_
                               _tl126396126422_)
                              (let ()
                                (declare (not safe))
                                (_g126292126407_)))))
                      (let () (declare (not safe)) (_g126292126407_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl126299126627_))
                  (let ((___splice127444127445_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl126299126627_ '0))))
                    (let ((_tl126396126422_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127444127445_ '1)))
                          (_target126394126420_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice127444127445_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl126396126422_))
                          (___match127693127694_
                           _e126301126622_
                           _hd126300126625_
                           _tl126299126627_
                           ___splice127444127445_
                           _target126394126420_
                           _tl126396126422_)
                          (let () (declare (not safe)) (_g126292126407_)))))
                  (let () (declare (not safe)) (_g126292126407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126299126627_))
                                                  (let ((___splice127444127445_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126299126627_
                                                            '0))))
                                                    (let ((_tl126396126422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127444127445_
                                                              '1)))
                                                          (_target126394126420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127444127445_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126396126422_))
                                                          (___match127693127694_
                                                           _e126301126622_
                                                           _hd126300126625_
                                                           _tl126299126627_
                                                           ___splice127444127445_
                                                           _target126394126420_
                                                           _tl126396126422_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126292126407_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126292126407_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126299126627_))
                                              (let ((___splice127444127445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126299126627_
                                                        '0))))
                                                (let ((_tl126396126422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127444127445_
                                                          '1)))
                                                      (_target126394126420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127444127445_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126396126422_))
                                                      (___match127693127694_
                                                       _e126301126622_
                                                       _hd126300126625_
                                                       _tl126299126627_
                                                       ___splice127444127445_
                                                       _target126394126420_
                                                       _tl126396126422_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126292126407_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126292126407_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl126299126627_))
                                          (let ((___splice127444127445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl126299126627_
                                                    '0))))
                                            (let ((_tl126396126422_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127444127445_
                                                      '1)))
                                                  (_target126394126420_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice127444127445_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126396126422_))
                                                  (___match127693127694_
                                                   _e126301126622_
                                                   _hd126300126625_
                                                   _tl126299126627_
                                                   ___splice127444127445_
                                                   _target126394126420_
                                                   _tl126396126422_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126292126407_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126292126407_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl126299126627_))
                                  (let ((___splice127444127445_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl126299126627_
                                            '0))))
                                    (let ((_tl126396126422_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127444127445_
                                              '1)))
                                          (_target126394126420_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice127444127445_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126396126422_))
                                          (___match127693127694_
                                           _e126301126622_
                                           _hd126300126625_
                                           _tl126299126627_
                                           ___splice127444127445_
                                           _target126394126420_
                                           _tl126396126422_)
                                          (let ()
                                            (declare (not safe))
                                            (_g126292126407_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126292126407_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl126299126627_))
                          (let ((___splice127444127445_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl126299126627_
                                    '0))))
                            (let ((_tl126396126422_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127444127445_ '1)))
                                  (_target126394126420_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127444127445_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126396126422_))
                                  (___match127693127694_
                                   _e126301126622_
                                   _hd126300126625_
                                   _tl126299126627_
                                   ___splice127444127445_
                                   _target126394126420_
                                   _tl126396126422_)
                                  (let ()
                                    (declare (not safe))
                                    (_g126292126407_)))))
                          (let () (declare (not safe)) (_g126292126407_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl126299126627_))
                      (let ((___splice127444127445_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl126299126627_ '0))))
                        (let ((_tl126396126422_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127444127445_ '1)))
                              (_target126394126420_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice127444127445_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl126396126422_))
                              (___match127693127694_
                               _e126301126622_
                               _hd126300126625_
                               _tl126299126627_
                               ___splice127444127445_
                               _target126394126420_
                               _tl126396126422_)
                              (let ()
                                (declare (not safe))
                                (_g126292126407_)))))
                      (let () (declare (not safe)) (_g126292126407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl126299126627_))
                                                      (let ((___splice127444127445_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl126299126627_ '0))))
                (let ((_tl126396126422_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127444127445_ '1)))
                      (_target126394126420_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice127444127445_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl126396126422_))
                      (___match127693127694_
                       _e126301126622_
                       _hd126300126625_
                       _tl126299126627_
                       ___splice127444127445_
                       _target126394126420_
                       _tl126396126422_)
                      (let () (declare (not safe)) (_g126292126407_)))))
              (let () (declare (not safe)) (_g126292126407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl126299126627_))
                                                  (let ((___splice127444127445_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126299126627_
                                                            '0))))
                                                    (let ((_tl126396126422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127444127445_
                                                              '1)))
                                                          (_target126394126420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127444127445_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126396126422_))
                                                          (___match127693127694_
                                                           _e126301126622_
                                                           _hd126300126625_
                                                           _tl126299126627_
                                                           ___splice127444127445_
                                                           _target126394126420_
                                                           _tl126396126422_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g126292126407_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126292126407_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126299126627_))
                                              (let ((___splice127444127445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl126299126627_
                                                        '0))))
                                                (let ((_tl126396126422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127444127445_
                                                          '1)))
                                                      (_target126394126420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice127444127445_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126396126422_))
                                                      (___match127693127694_
                                                       _e126301126622_
                                                       _hd126300126625_
                                                       _tl126299126627_
                                                       ___splice127444127445_
                                                       _target126394126420_
                                                       _tl126396126422_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126292126407_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126292126407_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126299126627_))
                                      (let ((___splice127444127445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126299126627_
                                                '0))))
                                        (let ((_tl126396126422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127444127445_
                                                  '1)))
                                              (_target126394126420_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice127444127445_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126396126422_))
                                              (___match127693127694_
                                               _e126301126622_
                                               _hd126300126625_
                                               _tl126299126627_
                                               ___splice127444127445_
                                               _target126394126420_
                                               _tl126396126422_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126292126407_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126292126407_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl126299126627_))
                              (let ((___splice127444127445_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl126299126627_
                                        '0))))
                                (let ((_tl126396126422_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127444127445_
                                          '1)))
                                      (_target126394126420_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice127444127445_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126396126422_))
                                      (___match127693127694_
                                       _e126301126622_
                                       _hd126300126625_
                                       _tl126299126627_
                                       ___splice127444127445_
                                       _target126394126420_
                                       _tl126396126422_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126292126407_)))))
                              (let ()
                                (declare (not safe))
                                (_g126292126407_))))))
                  (let () (declare (not safe)) (_g126292126407_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self126226_ _stx126227_)
        (let* ((___stx127696127697_ _stx126227_)
               (_g126230126243_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127696127697_)))))
          (let ((___kont127698127699_
                 (lambda (_L126271_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self126226_ _L126271_))))
                (___kont127700127701_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127696127697_))
                (let ((_e126235126255_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127696127697_))))
                  (let ((_tl126233126260_
                         (let () (declare (not safe)) (##cdr _e126235126255_)))
                        (_hd126234126258_
                         (let ()
                           (declare (not safe))
                           (##car _e126235126255_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl126233126260_))
                        (let ((_e126238126263_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl126233126260_))))
                          (let ((_tl126236126268_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126238126263_)))
                                (_hd126237126266_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126238126263_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl126236126268_))
                                (___kont127698127699_ _hd126237126266_)
                                (___kont127700127701_))))
                        (___kont127700127701_))))
                (___kont127700127701_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self126105_ _stx126106_)
        (let* ((_g126108126125_
                (lambda (_g126109126122_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126109126122_))))
               (_g126107126223_
                (lambda (_g126109126128_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126109126128_))
                      (let ((_e126114126130_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126109126128_))))
                        (let ((_hd126113126133_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126114126130_)))
                              (_tl126112126135_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126114126130_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126112126135_))
                              (let ((_e126117126138_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126112126135_))))
                                (let ((_hd126116126141_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126117126138_)))
                                      (_tl126115126143_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126117126138_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126115126143_))
                                      (let ((_e126120126146_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126115126143_))))
                                        (let ((_hd126119126149_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126120126146_)))
                                              (_tl126118126151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126120126146_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126118126151_))
                                              ((lambda (_L126154_ _L126155_)
                                                 (let* ((___stx127718127719_
                                                         _L126155_)
                                                        (_g126171126182_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127718127719_)))))
                                                   (let ((___kont127720127721_
                                                          (lambda (_L126202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L126203_)
                    (let ((_$e126215_
                           (let ((__tmp129463
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L126203_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp129463))))
                      (if _$e126215_
                          ((lambda (_type-e126218_)
                             (_type-e126218_ _stx126106_ _L126155_))
                           _$e126215_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self126105_ _L126154_))))))
                 (___kont127722127723_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self126105_ _L126154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127729127730_
                                                            (lambda (_e126177126194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd126176126197_
                             _tl126175126199_)
                      (let ((_L126202_ _tl126175126199_)
                            (_L126203_ _hd126176126197_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L126203_))
                            (___kont127720127721_ _L126202_ _L126203_)
                            (___kont127722127723_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127718127719_))
                   (let ((_e126177126194_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127718127719_))))
                     (let ((_tl126175126199_
                            (let ()
                              (declare (not safe))
                              (##cdr _e126177126194_)))
                           (_hd126176126197_
                            (let ()
                              (declare (not safe))
                              (##car _e126177126194_))))
                       (___match127729127730_
                        _e126177126194_
                        _hd126176126197_
                        _tl126175126199_)))
                   (___kont127722127723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd126119126149_
                                               _hd126116126141_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126108126125_
                                                 _g126109126128_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126108126125_ _g126109126128_)))))
                              (let ()
                                (declare (not safe))
                                (_g126108126125_ _g126109126128_)))))
                      (let ()
                        (declare (not safe))
                        (_g126108126125_ _g126109126128_))))))
          (declare (not safe))
          (_g126107126223_ _stx126106_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx125949_ _ann125950_)
        (let* ((_g125952125989_
                (lambda (_g125953125986_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125953125986_))))
               (_g125951126102_
                (lambda (_g125953125992_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125953125992_))
                      (let ((_e125963125994_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125953125992_))))
                        (let ((_hd125962125997_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125963125994_)))
                              (_tl125961125999_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125963125994_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125961125999_))
                              (let ((_e125966126002_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125961125999_))))
                                (let ((_hd125965126005_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125966126002_)))
                                      (_tl125964126007_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125966126002_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125964126007_))
                                      (let ((_e125969126010_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125964126007_))))
                                        (let ((_hd125968126013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125969126010_)))
                                              (_tl125967126015_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125969126010_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125967126015_))
                                              (let ((_e125972126018_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125967126015_))))
                                                (let ((_hd125971126021_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125972126018_)))
                                                      (_tl125970126023_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125972126018_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125970126023_))
                                                      (let ((_e125975126026_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125970126023_))))
                (let ((_hd125974126029_
                       (let () (declare (not safe)) (##car _e125975126026_)))
                      (_tl125973126031_
                       (let () (declare (not safe)) (##cdr _e125975126026_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl125973126031_))
                      (let ((_e125978126034_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125973126031_))))
                        (let ((_hd125977126037_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125978126034_)))
                              (_tl125976126039_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125978126034_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125976126039_))
                              (let ((_e125981126042_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125976126039_))))
                                (let ((_hd125980126045_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125981126042_)))
                                      (_tl125979126047_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125981126042_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125979126047_))
                                      (let ((_e125984126050_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125979126047_))))
                                        (let ((_hd125983126053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125984126050_)))
                                              (_tl125982126055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125984126050_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125982126055_))
                                              ((lambda (_L126058_
                                                        _L126059_
                                                        _L126060_
                                                        _L126061_
                                                        _L126062_
                                                        _L126063_
                                                        _L126064_)
                                                 (let ((_type-id126094_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126064_)))
                                                       (_super126095_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L126063_)))
                                                       (_slots126096_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L126062_)))
                                                       (_ctor-method126097_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126061_)))
                                                       (_struct?126098_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126060_)))
                                                       (_final?126099_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L126059_)))
                                                       (_metaclass126100_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L126058_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L126058_))
                                                            '#f)))
                                                   (let ((__obj129411
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
                                                      __obj129411
                                                      _type-id126094_
                                                      _super126095_
                                                      _slots126096_
                                                      _ctor-method126097_
                                                      _struct?126098_
                                                      _final?126099_
                                                      _metaclass126100_)
                                                     __obj129411)))
                                               _hd125983126053_
                                               _hd125980126045_
                                               _hd125977126037_
                                               _hd125974126029_
                                               _hd125971126021_
                                               _hd125968126013_
                                               _hd125965126005_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125952125989_
                                                 _g125953125992_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125952125989_ _g125953125992_)))))
                              (let ()
                                (declare (not safe))
                                (_g125952125989_ _g125953125992_)))))
                      (let ()
                        (declare (not safe))
                        (_g125952125989_ _g125953125992_)))))
              (let ()
                (declare (not safe))
                (_g125952125989_ _g125953125992_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125952125989_
                                                 _g125953125992_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125952125989_ _g125953125992_)))))
                              (let ()
                                (declare (not safe))
                                (_g125952125989_ _g125953125992_)))))
                      (let ()
                        (declare (not safe))
                        (_g125952125989_ _g125953125992_))))))
          (declare (not safe))
          (_g125951126102_ _ann125950_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125897_ _ann125898_)
        (let* ((_g125900125913_
                (lambda (_g125901125910_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125901125910_))))
               (_g125899125946_
                (lambda (_g125901125916_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125901125916_))
                      (let ((_e125905125918_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125901125916_))))
                        (let ((_hd125904125921_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125905125918_)))
                              (_tl125903125923_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125905125918_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125903125923_))
                              (let ((_e125908125926_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125903125923_))))
                                (let ((_hd125907125929_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125908125926_)))
                                      (_tl125906125931_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125908125926_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125906125931_))
                                      ((lambda (_L125934_)
                                         (let ((__tmp129464
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125934_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp129464)))
                                       _hd125907125929_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125900125913_ _g125901125916_)))))
                              (let ()
                                (declare (not safe))
                                (_g125900125913_ _g125901125916_)))))
                      (let ()
                        (declare (not safe))
                        (_g125900125913_ _g125901125916_))))))
          (declare (not safe))
          (_g125899125946_ _ann125898_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125845_ _ann125846_)
        (let* ((_g125848125861_
                (lambda (_g125849125858_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125849125858_))))
               (_g125847125894_
                (lambda (_g125849125864_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125849125864_))
                      (let ((_e125853125866_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125849125864_))))
                        (let ((_hd125852125869_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125853125866_)))
                              (_tl125851125871_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125853125866_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125851125871_))
                              (let ((_e125856125874_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125851125871_))))
                                (let ((_hd125855125877_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125856125874_)))
                                      (_tl125854125879_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125856125874_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125854125879_))
                                      ((lambda (_L125882_)
                                         (let ((__tmp129465
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125882_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp129465)))
                                       _hd125855125877_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125848125861_ _g125849125864_)))))
                              (let ()
                                (declare (not safe))
                                (_g125848125861_ _g125849125864_)))))
                      (let ()
                        (declare (not safe))
                        (_g125848125861_ _g125849125864_))))))
          (declare (not safe))
          (_g125847125894_ _ann125846_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125761_ _ann125762_)
        (let* ((_g125764125785_
                (lambda (_g125765125782_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125765125782_))))
               (_g125763125842_
                (lambda (_g125765125788_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125765125788_))
                      (let ((_e125771125790_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125765125788_))))
                        (let ((_hd125770125793_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125771125790_)))
                              (_tl125769125795_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125771125790_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125769125795_))
                              (let ((_e125774125798_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125769125795_))))
                                (let ((_hd125773125801_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125774125798_)))
                                      (_tl125772125803_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125774125798_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125772125803_))
                                      (let ((_e125777125806_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125772125803_))))
                                        (let ((_hd125776125809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125777125806_)))
                                              (_tl125775125811_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125777125806_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125775125811_))
                                              (let ((_e125780125814_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125775125811_))))
                                                (let ((_hd125779125817_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125780125814_)))
                                                      (_tl125778125819_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125780125814_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125778125819_))
                                                      ((lambda (_L125822_
                                                                _L125823_
                                                                _L125824_)
                                                         (let ((__tmp129468
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125824_)))
                       (__tmp129467
                        (let () (declare (not safe)) (gx#stx-e _L125823_)))
                       (__tmp129466
                        (let () (declare (not safe)) (gx#stx-e _L125822_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp129468
                    __tmp129467
                    __tmp129466)))
               _hd125779125817_
               _hd125776125809_
               _hd125773125801_)
              (let ()
                (declare (not safe))
                (_g125764125785_ _g125765125788_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125764125785_
                                                 _g125765125788_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125764125785_ _g125765125788_)))))
                              (let ()
                                (declare (not safe))
                                (_g125764125785_ _g125765125788_)))))
                      (let ()
                        (declare (not safe))
                        (_g125764125785_ _g125765125788_))))))
          (declare (not safe))
          (_g125763125842_ _ann125762_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125677_ _ann125678_)
        (let* ((_g125680125701_
                (lambda (_g125681125698_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125681125698_))))
               (_g125679125758_
                (lambda (_g125681125704_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125681125704_))
                      (let ((_e125687125706_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125681125704_))))
                        (let ((_hd125686125709_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125687125706_)))
                              (_tl125685125711_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125687125706_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125685125711_))
                              (let ((_e125690125714_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125685125711_))))
                                (let ((_hd125689125717_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125690125714_)))
                                      (_tl125688125719_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125690125714_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125688125719_))
                                      (let ((_e125693125722_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125688125719_))))
                                        (let ((_hd125692125725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125693125722_)))
                                              (_tl125691125727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125693125722_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125691125727_))
                                              (let ((_e125696125730_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125691125727_))))
                                                (let ((_hd125695125733_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125696125730_)))
                                                      (_tl125694125735_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125696125730_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125694125735_))
                                                      ((lambda (_L125738_
                                                                _L125739_
                                                                _L125740_)
                                                         (let ((__tmp129471
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125740_)))
                       (__tmp129470
                        (let () (declare (not safe)) (gx#stx-e _L125739_)))
                       (__tmp129469
                        (let () (declare (not safe)) (gx#stx-e _L125738_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp129471
                    __tmp129470
                    __tmp129469)))
               _hd125695125733_
               _hd125692125725_
               _hd125689125717_)
              (let ()
                (declare (not safe))
                (_g125680125701_ _g125681125704_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125680125701_
                                                 _g125681125704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125680125701_ _g125681125704_)))))
                              (let ()
                                (declare (not safe))
                                (_g125680125701_ _g125681125704_)))))
                      (let ()
                        (declare (not safe))
                        (_g125680125701_ _g125681125704_))))))
          (declare (not safe))
          (_g125679125758_ _ann125678_))))
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
      (lambda (_self124796_ _stx124797_)
        (let* ((___stx127732127733_ _stx124797_)
               (_g124803124999_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127732127733_)))))
          (let ((___kont127734127735_
                 (lambda (_L125665_)
                   (let ((__obj129412
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129412
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125665_))
                      '#f)
                     __obj129412)))
                (___kont127736127737_
                 (lambda (_L125592_
                          _L125593_
                          _L125594_
                          _L125595_
                          _L125596_
                          _L125597_)
                   (let* ((_tab125647_
                           (let () (declare (not safe)) (gx#stx-e _L125594_)))
                          (_keys125649_
                           (if _tab125647_
                               (filter values (vector->list _tab125647_))
                               '#f)))
                     (let ((__tmp129472
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L125593_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125649_
                        __tmp129472)))))
                (___kont127738127739_
                 (lambda (_L125325_
                          _L125326_
                          _L125327_
                          _L125328_
                          _L125329_
                          _L125330_
                          _L125331_
                          _L125332_
                          _L125333_
                          _L125334_)
                   (let ((__tmp129474
                          (map gx#stx-e
                               (let ((__tmp129475
                                      (lambda (_g125427125430_ _g125428125432_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g125427125430_
                                                _g125428125432_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp129475 '() _L125327_))))
                         (__tmp129473
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125331_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp129474
                      __tmp129473))))
                (___kont127742127743_
                 (lambda (_L125035_)
                   (let ((__obj129413
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129413
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125035_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L125035_)))
                     __obj129413)))
                (___kont127744127745_
                 (lambda (_L125012_)
                   (let ((__obj129414
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj129414
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125012_))
                      '#f)
                     __obj129414))))
            (let* ((___match128051128052_
                    (lambda (_e124990125027_ _hd124989125030_ _tl124988125032_)
                      (let ((_L125035_ _tl124988125032_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L125035_))
                            (___kont127742127743_ _L125035_)
                            (___kont127744127745_ _tl124988125032_)))))
                   (___match128045128046_
                    (lambda (_e124884125049_
                             _hd124883125052_
                             _tl124882125054_
                             _e124887125057_
                             _hd124886125060_
                             _tl124885125062_
                             _e124890125065_
                             _hd124889125068_
                             _tl124888125070_
                             _e124893125073_
                             _hd124892125076_
                             _tl124891125078_
                             _e124896125081_
                             _hd124895125084_
                             _tl124894125086_
                             _e124899125089_
                             _hd124898125092_
                             _tl124897125094_
                             _e124902125097_
                             _hd124901125100_
                             _tl124900125102_
                             _e124905125105_
                             _hd124904125108_
                             _tl124903125110_
                             _e124908125113_
                             _hd124907125116_
                             _tl124906125118_
                             _e124911125121_
                             _hd124910125124_
                             _tl124909125126_
                             _e124914125129_
                             _hd124913125132_
                             _tl124912125134_
                             _e124917125137_
                             _hd124916125140_
                             _tl124915125142_
                             _e124920125145_
                             _hd124919125148_
                             _tl124918125150_
                             _e124923125153_
                             _hd124922125156_
                             _tl124921125158_
                             ___splice127740127741_
                             _target124924125161_
                             _tl124926125163_
                             _e124941125166_
                             _hd124940125169_
                             _tl124939125171_
                             _e124944125174_
                             _hd124943125177_
                             _tl124942125179_
                             _e124947125182_
                             _hd124946125185_
                             _tl124945125187_)
                      (letrec ((_loop124927125190_
                                (lambda (_hd124925125193_
                                         _-absent-value124931125195_
                                         _key124932125197_
                                         _-xkwvar124933125199_
                                         _-hash-ref124934125201_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124925125193_))
                                      (let ((_e124928125204_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124925125193_))))
                                        (let ((_lp-tl124930125209_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124928125204_)))
                                              (_lp-hd124929125207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124928125204_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd124929125207_))
                                              (let ((_e124950125212_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd124929125207_))))
                                                (let ((_tl124948125217_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124950125212_)))
                                                      (_hd124949125215_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124950125212_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd124949125215_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd124949125215_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124948125217_))
                      (let ((_e124953125220_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124948125217_))))
                        (let ((_tl124951125225_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124953125220_)))
                              (_hd124952125223_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124953125220_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124952125223_))
                              (let ((_e124956125228_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124952125223_))))
                                (let ((_tl124954125233_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124956125228_)))
                                      (_hd124955125231_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124956125228_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124955125231_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124955125231_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124954125233_))
                                              (let ((_e124959125236_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124954125233_))))
                                                (let ((_tl124957125241_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124959125236_)))
                                                      (_hd124958125239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124959125236_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124957125241_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124951125225_))
                                                          (let ((_e124962125244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124951125225_))))
                    (let ((_tl124960125249_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124962125244_)))
                          (_hd124961125247_
                           (let ()
                             (declare (not safe))
                             (##car _e124962125244_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124961125247_))
                          (let ((_e124965125252_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124961125247_))))
                            (let ((_tl124963125257_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124965125252_)))
                                  (_hd124964125255_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124965125252_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124964125255_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124964125255_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124963125257_))
                                          (let ((_e124968125260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124963125257_))))
                                            (let ((_tl124966125265_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124968125260_)))
                                                  (_hd124967125263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124968125260_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124966125265_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124960125249_))
                                                      (let ((_e124971125268_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124960125249_))))
                (let ((_tl124969125273_
                       (let () (declare (not safe)) (##cdr _e124971125268_)))
                      (_hd124970125271_
                       (let () (declare (not safe)) (##car _e124971125268_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124970125271_))
                      (let ((_e124974125276_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124970125271_))))
                        (let ((_tl124972125281_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124974125276_)))
                              (_hd124973125279_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124974125276_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124973125279_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd124973125279_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124972125281_))
                                      (let ((_e124977125284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124972125281_))))
                                        (let ((_tl124975125289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124977125284_)))
                                              (_hd124976125287_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124977125284_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124975125289_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124969125273_))
                                                  (let ((_e124980125292_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124969125273_))))
                                                    (let ((_tl124978125297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124980125292_)))
                                                          (_hd124979125295_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124980125292_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124979125295_))
                                                          (let ((_e124983125300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124979125295_))))
                    (let ((_tl124981125305_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124983125300_)))
                          (_hd124982125303_
                           (let ()
                             (declare (not safe))
                             (##car _e124983125300_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124982125303_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124982125303_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124981125305_))
                                  (let ((_e124986125308_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124981125305_))))
                                    (let ((_tl124984125313_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124986125308_)))
                                          (_hd124985125311_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124986125308_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124984125313_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124978125297_))
                                              (let ((__tmp129490
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124985125311_
                                                             _-absent-value124931125195_)))
                                                    (__tmp129489
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124976125287_
                                                             _key124932125197_)))
                                                    (__tmp129488
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124967125263_
                                                             _-xkwvar124933125199_)))
                                                    (__tmp129487
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124958125239_
                                                             _-hash-ref124934125201_))))
                                                (declare (not safe))
                                                (_loop124927125190_
                                                 _lp-tl124930125209_
                                                 __tmp129490
                                                 __tmp129489
                                                 __tmp129488
                                                 __tmp129487))
                                              (___match128051128052_
                                               _e124884125049_
                                               _hd124883125052_
                                               _tl124882125054_))
                                          (___match128051128052_
                                           _e124884125049_
                                           _hd124883125052_
                                           _tl124882125054_))))
                                  (___match128051128052_
                                   _e124884125049_
                                   _hd124883125052_
                                   _tl124882125054_))
                              (___match128051128052_
                               _e124884125049_
                               _hd124883125052_
                               _tl124882125054_))
                          (___match128051128052_
                           _e124884125049_
                           _hd124883125052_
                           _tl124882125054_))))
                  (___match128051128052_
                   _e124884125049_
                   _hd124883125052_
                   _tl124882125054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128051128052_
                                                   _e124884125049_
                                                   _hd124883125052_
                                                   _tl124882125054_))
                                              (___match128051128052_
                                               _e124884125049_
                                               _hd124883125052_
                                               _tl124882125054_))))
                                      (___match128051128052_
                                       _e124884125049_
                                       _hd124883125052_
                                       _tl124882125054_))
                                  (___match128051128052_
                                   _e124884125049_
                                   _hd124883125052_
                                   _tl124882125054_))
                              (___match128051128052_
                               _e124884125049_
                               _hd124883125052_
                               _tl124882125054_))))
                      (___match128051128052_
                       _e124884125049_
                       _hd124883125052_
                       _tl124882125054_))))
              (___match128051128052_
               _e124884125049_
               _hd124883125052_
               _tl124882125054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128051128052_
                                                   _e124884125049_
                                                   _hd124883125052_
                                                   _tl124882125054_))))
                                          (___match128051128052_
                                           _e124884125049_
                                           _hd124883125052_
                                           _tl124882125054_))
                                      (___match128051128052_
                                       _e124884125049_
                                       _hd124883125052_
                                       _tl124882125054_))
                                  (___match128051128052_
                                   _e124884125049_
                                   _hd124883125052_
                                   _tl124882125054_))))
                          (___match128051128052_
                           _e124884125049_
                           _hd124883125052_
                           _tl124882125054_))))
                  (___match128051128052_
                   _e124884125049_
                   _hd124883125052_
                   _tl124882125054_))
              (___match128051128052_
               _e124884125049_
               _hd124883125052_
               _tl124882125054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128051128052_
                                               _e124884125049_
                                               _hd124883125052_
                                               _tl124882125054_))
                                          (___match128051128052_
                                           _e124884125049_
                                           _hd124883125052_
                                           _tl124882125054_))
                                      (___match128051128052_
                                       _e124884125049_
                                       _hd124883125052_
                                       _tl124882125054_))))
                              (___match128051128052_
                               _e124884125049_
                               _hd124883125052_
                               _tl124882125054_))))
                      (___match128051128052_
                       _e124884125049_
                       _hd124883125052_
                       _tl124882125054_))
                  (___match128051128052_
                   _e124884125049_
                   _hd124883125052_
                   _tl124882125054_))
              (___match128051128052_
               _e124884125049_
               _hd124883125052_
               _tl124882125054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match128051128052_
                                               _e124884125049_
                                               _hd124883125052_
                                               _tl124882125054_))))
                                      (let ((_-hash-ref124938125322_
                                             (reverse _-hash-ref124934125201_))
                                            (_-xkwvar124937125320_
                                             (reverse _-xkwvar124933125199_))
                                            (_key124936125318_
                                             (reverse _key124932125197_))
                                            (_-absent-value124935125316_
                                             (reverse _-absent-value124931125195_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124891125078_))
                                            (let ((_L125325_ _hd124946125185_)
                                                  (_L125326_
                                                   _-absent-value124935125316_)
                                                  (_L125327_ _key124936125318_)
                                                  (_L125328_
                                                   _-xkwvar124937125320_)
                                                  (_L125329_
                                                   _-hash-ref124938125322_)
                                                  (_L125330_ _hd124922125156_)
                                                  (_L125331_ _hd124913125132_)
                                                  (_L125332_ _hd124904125108_)
                                                  (_L125333_ _tl124888125070_)
                                                  (_L125334_ _hd124889125068_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L125334_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L125333_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L125332_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L125334_
                                                          _L125330_))
                                                       (let ((__tmp129485
                                                              (let ((__tmp129486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g125387125390_ _g125388125392_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125387125390_ _g125388125392_)))))
                        (declare (not safe))
                        (foldr1 __tmp129486 '() _L125327_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp129485))
               (let ((__tmp129484
                      (lambda (_g125394125396_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g125394125396_
                           'hash-ref))))
                     (__tmp129482
                      (let ((__tmp129483
                             (lambda (_g125398125401_ _g125399125403_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125398125401_ _g125399125403_)))))
                        (declare (not safe))
                        (foldr1 __tmp129483 '() _L125329_))))
                 (declare (not safe))
                 (andmap1 __tmp129484 __tmp129482))
               (let ((__tmp129481
                      (lambda (_g125405125407_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g125405125407_
                           'absent-value))))
                     (__tmp129479
                      (let ((__tmp129480
                             (lambda (_g125409125412_ _g125410125414_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125409125412_ _g125410125414_)))))
                        (declare (not safe))
                        (foldr1 __tmp129480 '() _L125326_))))
                 (declare (not safe))
                 (andmap1 __tmp129481 __tmp129479))
               (let ((__tmp129478
                      (lambda (_g125416125418_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g125416125418_ _L125334_))))
                     (__tmp129476
                      (let ((__tmp129477
                             (lambda (_g125420125423_ _g125421125425_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g125420125423_ _g125421125425_)))))
                        (declare (not safe))
                        (foldr1 __tmp129477 '() _L125328_))))
                 (declare (not safe))
                 (andmap1 __tmp129478 __tmp129476)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127738127739_
                                                   _L125325_
                                                   _L125326_
                                                   _L125327_
                                                   _L125328_
                                                   _L125329_
                                                   _L125330_
                                                   _L125331_
                                                   _L125332_
                                                   _L125333_
                                                   _L125334_)
                                                  (___match128051128052_
                                                   _e124884125049_
                                                   _hd124883125052_
                                                   _tl124882125054_)))
                                            (___match128051128052_
                                             _e124884125049_
                                             _hd124883125052_
                                             _tl124882125054_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124927125190_
                           _target124924125161_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127917127918_
                    (lambda (_e124884125049_
                             _hd124883125052_
                             _tl124882125054_
                             _e124887125057_
                             _hd124886125060_
                             _tl124885125062_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124886125060_))
                          (let ((_e124890125065_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124886125060_))))
                            (let ((_tl124888125070_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124890125065_)))
                                  (_hd124889125068_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124890125065_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124885125062_))
                                  (let ((_e124893125073_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124885125062_))))
                                    (let ((_tl124891125078_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124893125073_)))
                                          (_hd124892125076_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124893125073_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124892125076_))
                                          (let ((_e124896125081_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124892125076_))))
                                            (let ((_tl124894125086_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124896125081_)))
                                                  (_hd124895125084_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124896125081_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124895125084_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124895125084_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124894125086_))
                                                          (let ((_e124899125089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124894125086_))))
                    (let ((_tl124897125094_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124899125089_)))
                          (_hd124898125092_
                           (let ()
                             (declare (not safe))
                             (##car _e124899125089_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124898125092_))
                          (let ((_e124902125097_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124898125092_))))
                            (let ((_tl124900125102_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124902125097_)))
                                  (_hd124901125100_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124902125097_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124901125100_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124901125100_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124900125102_))
                                          (let ((_e124905125105_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124900125102_))))
                                            (let ((_tl124903125110_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124905125105_)))
                                                  (_hd124904125108_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124905125105_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124903125110_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124897125094_))
                                                      (let ((_e124908125113_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124897125094_))))
                (let ((_tl124906125118_
                       (let () (declare (not safe)) (##cdr _e124908125113_)))
                      (_hd124907125116_
                       (let () (declare (not safe)) (##car _e124908125113_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124907125116_))
                      (let ((_e124911125121_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124907125116_))))
                        (let ((_tl124909125126_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124911125121_)))
                              (_hd124910125124_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124911125121_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124910125124_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124910125124_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124909125126_))
                                      (let ((_e124914125129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124909125126_))))
                                        (let ((_tl124912125134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124914125129_)))
                                              (_hd124913125132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124914125129_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124912125134_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124906125118_))
                                                  (let ((_e124917125137_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124906125118_))))
                                                    (let ((_tl124915125142_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124917125137_)))
                                                          (_hd124916125140_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124917125137_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124916125140_))
                                                          (let ((_e124920125145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124916125140_))))
                    (let ((_tl124918125150_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124920125145_)))
                          (_hd124919125148_
                           (let ()
                             (declare (not safe))
                             (##car _e124920125145_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124919125148_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124919125148_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124918125150_))
                                  (let ((_e124923125153_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124918125150_))))
                                    (let ((_tl124921125158_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124923125153_)))
                                          (_hd124922125156_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124923125153_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124921125158_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124915125142_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124915125142_))
                                                        '1)
                                                  (let ((___splice127740127741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124915125142_
                                                            '1))))
                                                    (let ((_tl124926125163_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127740127741_
                                                              '1)))
                                                          (_target124924125161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127740127741_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124926125163_))
                                                          (let ((_e124941125166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124926125163_))))
                    (let ((_tl124939125171_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124941125166_)))
                          (_hd124940125169_
                           (let ()
                             (declare (not safe))
                             (##car _e124941125166_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124940125169_))
                          (let ((_e124944125174_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124940125169_))))
                            (let ((_tl124942125179_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124944125174_)))
                                  (_hd124943125177_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124944125174_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124943125177_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124943125177_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124942125179_))
                                          (let ((_e124947125182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124942125179_))))
                                            (let ((_tl124945125187_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124947125182_)))
                                                  (_hd124946125185_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124947125182_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124945125187_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124939125171_))
                                                      (___match128045128046_
                                                       _e124884125049_
                                                       _hd124883125052_
                                                       _tl124882125054_
                                                       _e124887125057_
                                                       _hd124886125060_
                                                       _tl124885125062_
                                                       _e124890125065_
                                                       _hd124889125068_
                                                       _tl124888125070_
                                                       _e124893125073_
                                                       _hd124892125076_
                                                       _tl124891125078_
                                                       _e124896125081_
                                                       _hd124895125084_
                                                       _tl124894125086_
                                                       _e124899125089_
                                                       _hd124898125092_
                                                       _tl124897125094_
                                                       _e124902125097_
                                                       _hd124901125100_
                                                       _tl124900125102_
                                                       _e124905125105_
                                                       _hd124904125108_
                                                       _tl124903125110_
                                                       _e124908125113_
                                                       _hd124907125116_
                                                       _tl124906125118_
                                                       _e124911125121_
                                                       _hd124910125124_
                                                       _tl124909125126_
                                                       _e124914125129_
                                                       _hd124913125132_
                                                       _tl124912125134_
                                                       _e124917125137_
                                                       _hd124916125140_
                                                       _tl124915125142_
                                                       _e124920125145_
                                                       _hd124919125148_
                                                       _tl124918125150_
                                                       _e124923125153_
                                                       _hd124922125156_
                                                       _tl124921125158_
                                                       ___splice127740127741_
                                                       _target124924125161_
                                                       _tl124926125163_
                                                       _e124941125166_
                                                       _hd124940125169_
                                                       _tl124939125171_
                                                       _e124944125174_
                                                       _hd124943125177_
                                                       _tl124942125179_
                                                       _e124947125182_
                                                       _hd124946125185_
                                                       _tl124945125187_)
                                                      (___match128051128052_
                                                       _e124884125049_
                                                       _hd124883125052_
                                                       _tl124882125054_))
                                                  (___match128051128052_
                                                   _e124884125049_
                                                   _hd124883125052_
                                                   _tl124882125054_))))
                                          (___match128051128052_
                                           _e124884125049_
                                           _hd124883125052_
                                           _tl124882125054_))
                                      (___match128051128052_
                                       _e124884125049_
                                       _hd124883125052_
                                       _tl124882125054_))
                                  (___match128051128052_
                                   _e124884125049_
                                   _hd124883125052_
                                   _tl124882125054_))))
                          (___match128051128052_
                           _e124884125049_
                           _hd124883125052_
                           _tl124882125054_))))
                  (___match128051128052_
                   _e124884125049_
                   _hd124883125052_
                   _tl124882125054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128051128052_
                                                   _e124884125049_
                                                   _hd124883125052_
                                                   _tl124882125054_))
                                              (___match128051128052_
                                               _e124884125049_
                                               _hd124883125052_
                                               _tl124882125054_))
                                          (___match128051128052_
                                           _e124884125049_
                                           _hd124883125052_
                                           _tl124882125054_))))
                                  (___match128051128052_
                                   _e124884125049_
                                   _hd124883125052_
                                   _tl124882125054_))
                              (___match128051128052_
                               _e124884125049_
                               _hd124883125052_
                               _tl124882125054_))
                          (___match128051128052_
                           _e124884125049_
                           _hd124883125052_
                           _tl124882125054_))))
                  (___match128051128052_
                   _e124884125049_
                   _hd124883125052_
                   _tl124882125054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128051128052_
                                                   _e124884125049_
                                                   _hd124883125052_
                                                   _tl124882125054_))
                                              (___match128051128052_
                                               _e124884125049_
                                               _hd124883125052_
                                               _tl124882125054_))))
                                      (___match128051128052_
                                       _e124884125049_
                                       _hd124883125052_
                                       _tl124882125054_))
                                  (___match128051128052_
                                   _e124884125049_
                                   _hd124883125052_
                                   _tl124882125054_))
                              (___match128051128052_
                               _e124884125049_
                               _hd124883125052_
                               _tl124882125054_))))
                      (___match128051128052_
                       _e124884125049_
                       _hd124883125052_
                       _tl124882125054_))))
              (___match128051128052_
               _e124884125049_
               _hd124883125052_
               _tl124882125054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128051128052_
                                                   _e124884125049_
                                                   _hd124883125052_
                                                   _tl124882125054_))))
                                          (___match128051128052_
                                           _e124884125049_
                                           _hd124883125052_
                                           _tl124882125054_))
                                      (___match128051128052_
                                       _e124884125049_
                                       _hd124883125052_
                                       _tl124882125054_))
                                  (___match128051128052_
                                   _e124884125049_
                                   _hd124883125052_
                                   _tl124882125054_))))
                          (___match128051128052_
                           _e124884125049_
                           _hd124883125052_
                           _tl124882125054_))))
                  (___match128051128052_
                   _e124884125049_
                   _hd124883125052_
                   _tl124882125054_))
              (___match128051128052_
               _e124884125049_
               _hd124883125052_
               _tl124882125054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128051128052_
                                                   _e124884125049_
                                                   _hd124883125052_
                                                   _tl124882125054_))))
                                          (___match128051128052_
                                           _e124884125049_
                                           _hd124883125052_
                                           _tl124882125054_))))
                                  (___match128051128052_
                                   _e124884125049_
                                   _hd124883125052_
                                   _tl124882125054_))))
                          (___match128051128052_
                           _e124884125049_
                           _hd124883125052_
                           _tl124882125054_))))
                   (___match127905127906_
                    (lambda (_e124817125440_
                             _hd124816125443_
                             _tl124815125445_
                             _e124820125448_
                             _hd124819125451_
                             _tl124818125453_
                             _e124823125456_
                             _hd124822125459_
                             _tl124821125461_
                             _e124826125464_
                             _hd124825125467_
                             _tl124824125469_
                             _e124829125472_
                             _hd124828125475_
                             _tl124827125477_
                             _e124832125480_
                             _hd124831125483_
                             _tl124830125485_
                             _e124835125488_
                             _hd124834125491_
                             _tl124833125493_
                             _e124838125496_
                             _hd124837125499_
                             _tl124836125501_
                             _e124841125504_
                             _hd124840125507_
                             _tl124839125509_
                             _e124844125512_
                             _hd124843125515_
                             _tl124842125517_
                             _e124847125520_
                             _hd124846125523_
                             _tl124845125525_
                             _e124850125528_
                             _hd124849125531_
                             _tl124848125533_
                             _e124853125536_
                             _hd124852125539_
                             _tl124851125541_
                             _e124856125544_
                             _hd124855125547_
                             _tl124854125549_
                             _e124859125552_
                             _hd124858125555_
                             _tl124857125557_
                             _e124862125560_
                             _hd124861125563_
                             _tl124860125565_
                             _e124865125568_
                             _hd124864125571_
                             _tl124863125573_
                             _e124868125576_
                             _hd124867125579_
                             _tl124866125581_
                             _e124871125584_
                             _hd124870125587_
                             _tl124869125589_)
                      (let ((_L125592_ _hd124870125587_)
                            (_L125593_ _hd124861125563_)
                            (_L125594_ _hd124852125539_)
                            (_L125595_ _hd124843125515_)
                            (_L125596_ _hd124834125491_)
                            (_L125597_ _hd124819125451_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125597_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125596_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L125595_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125597_ _L125592_)))
                            (___kont127736127737_
                             _L125592_
                             _L125593_
                             _L125594_
                             _L125595_
                             _L125596_
                             _L125597_)
                            (___match127917127918_
                             _e124817125440_
                             _hd124816125443_
                             _tl124815125445_
                             _e124820125448_
                             _hd124819125451_
                             _tl124818125453_)))))
                   (___match127759127760_
                    (lambda (_e124817125440_ _hd124816125443_ _tl124815125445_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124815125445_))
                          (let ((_e124820125448_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124815125445_))))
                            (let ((_tl124818125453_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124820125448_)))
                                  (_hd124819125451_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124820125448_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124818125453_))
                                  (let ((_e124823125456_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124818125453_))))
                                    (let ((_tl124821125461_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124823125456_)))
                                          (_hd124822125459_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124823125456_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124822125459_))
                                          (let ((_e124826125464_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124822125459_))))
                                            (let ((_tl124824125469_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124826125464_)))
                                                  (_hd124825125467_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124826125464_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124825125467_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124825125467_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124824125469_))
                                                          (let ((_e124829125472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124824125469_))))
                    (let ((_tl124827125477_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124829125472_)))
                          (_hd124828125475_
                           (let ()
                             (declare (not safe))
                             (##car _e124829125472_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124828125475_))
                          (let ((_e124832125480_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124828125475_))))
                            (let ((_tl124830125485_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124832125480_)))
                                  (_hd124831125483_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124832125480_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124831125483_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124831125483_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124830125485_))
                                          (let ((_e124835125488_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124830125485_))))
                                            (let ((_tl124833125493_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124835125488_)))
                                                  (_hd124834125491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124835125488_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124833125493_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124827125477_))
                                                      (let ((_e124838125496_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124827125477_))))
                (let ((_tl124836125501_
                       (let () (declare (not safe)) (##cdr _e124838125496_)))
                      (_hd124837125499_
                       (let () (declare (not safe)) (##car _e124838125496_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124837125499_))
                      (let ((_e124841125504_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124837125499_))))
                        (let ((_tl124839125509_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124841125504_)))
                              (_hd124840125507_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124841125504_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124840125507_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124840125507_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124839125509_))
                                      (let ((_e124844125512_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124839125509_))))
                                        (let ((_tl124842125517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124844125512_)))
                                              (_hd124843125515_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124844125512_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124842125517_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124836125501_))
                                                  (let ((_e124847125520_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124836125501_))))
                                                    (let ((_tl124845125525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124847125520_)))
                                                          (_hd124846125523_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124847125520_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124846125523_))
                                                          (let ((_e124850125528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124846125523_))))
                    (let ((_tl124848125533_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124850125528_)))
                          (_hd124849125531_
                           (let ()
                             (declare (not safe))
                             (##car _e124850125528_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124849125531_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124849125531_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124848125533_))
                                  (let ((_e124853125536_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124848125533_))))
                                    (let ((_tl124851125541_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124853125536_)))
                                          (_hd124852125539_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124853125536_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124851125541_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124845125525_))
                                              (let ((_e124856125544_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124845125525_))))
                                                (let ((_tl124854125549_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124856125544_)))
                                                      (_hd124855125547_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124856125544_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124855125547_))
                                                      (let ((_e124859125552_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124855125547_))))
                (let ((_tl124857125557_
                       (let () (declare (not safe)) (##cdr _e124859125552_)))
                      (_hd124858125555_
                       (let () (declare (not safe)) (##car _e124859125552_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124858125555_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124858125555_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124857125557_))
                              (let ((_e124862125560_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124857125557_))))
                                (let ((_tl124860125565_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124862125560_)))
                                      (_hd124861125563_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124862125560_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124860125565_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124854125549_))
                                          (let ((_e124865125568_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124854125549_))))
                                            (let ((_tl124863125573_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124865125568_)))
                                                  (_hd124864125571_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124865125568_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124864125571_))
                                                  (let ((_e124868125576_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124864125571_))))
                                                    (let ((_tl124866125581_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124868125576_)))
                                                          (_hd124867125579_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124868125576_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124867125579_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124867125579_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124866125581_))
                          (let ((_e124871125584_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124866125581_))))
                            (let ((_tl124869125589_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124871125584_)))
                                  (_hd124870125587_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124871125584_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124869125589_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124863125573_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124821125461_))
                                          (___match127905127906_
                                           _e124817125440_
                                           _hd124816125443_
                                           _tl124815125445_
                                           _e124820125448_
                                           _hd124819125451_
                                           _tl124818125453_
                                           _e124823125456_
                                           _hd124822125459_
                                           _tl124821125461_
                                           _e124826125464_
                                           _hd124825125467_
                                           _tl124824125469_
                                           _e124829125472_
                                           _hd124828125475_
                                           _tl124827125477_
                                           _e124832125480_
                                           _hd124831125483_
                                           _tl124830125485_
                                           _e124835125488_
                                           _hd124834125491_
                                           _tl124833125493_
                                           _e124838125496_
                                           _hd124837125499_
                                           _tl124836125501_
                                           _e124841125504_
                                           _hd124840125507_
                                           _tl124839125509_
                                           _e124844125512_
                                           _hd124843125515_
                                           _tl124842125517_
                                           _e124847125520_
                                           _hd124846125523_
                                           _tl124845125525_
                                           _e124850125528_
                                           _hd124849125531_
                                           _tl124848125533_
                                           _e124853125536_
                                           _hd124852125539_
                                           _tl124851125541_
                                           _e124856125544_
                                           _hd124855125547_
                                           _tl124854125549_
                                           _e124859125552_
                                           _hd124858125555_
                                           _tl124857125557_
                                           _e124862125560_
                                           _hd124861125563_
                                           _tl124860125565_
                                           _e124865125568_
                                           _hd124864125571_
                                           _tl124863125573_
                                           _e124868125576_
                                           _hd124867125579_
                                           _tl124866125581_
                                           _e124871125584_
                                           _hd124870125587_
                                           _tl124869125589_)
                                          (___match127917127918_
                                           _e124817125440_
                                           _hd124816125443_
                                           _tl124815125445_
                                           _e124820125448_
                                           _hd124819125451_
                                           _tl124818125453_))
                                      (___match127917127918_
                                       _e124817125440_
                                       _hd124816125443_
                                       _tl124815125445_
                                       _e124820125448_
                                       _hd124819125451_
                                       _tl124818125453_))
                                  (___match127917127918_
                                   _e124817125440_
                                   _hd124816125443_
                                   _tl124815125445_
                                   _e124820125448_
                                   _hd124819125451_
                                   _tl124818125453_))))
                          (___match127917127918_
                           _e124817125440_
                           _hd124816125443_
                           _tl124815125445_
                           _e124820125448_
                           _hd124819125451_
                           _tl124818125453_))
                      (___match127917127918_
                       _e124817125440_
                       _hd124816125443_
                       _tl124815125445_
                       _e124820125448_
                       _hd124819125451_
                       _tl124818125453_))
                  (___match127917127918_
                   _e124817125440_
                   _hd124816125443_
                   _tl124815125445_
                   _e124820125448_
                   _hd124819125451_
                   _tl124818125453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127917127918_
                                                   _e124817125440_
                                                   _hd124816125443_
                                                   _tl124815125445_
                                                   _e124820125448_
                                                   _hd124819125451_
                                                   _tl124818125453_))))
                                          (___match127917127918_
                                           _e124817125440_
                                           _hd124816125443_
                                           _tl124815125445_
                                           _e124820125448_
                                           _hd124819125451_
                                           _tl124818125453_))
                                      (___match127917127918_
                                       _e124817125440_
                                       _hd124816125443_
                                       _tl124815125445_
                                       _e124820125448_
                                       _hd124819125451_
                                       _tl124818125453_))))
                              (___match127917127918_
                               _e124817125440_
                               _hd124816125443_
                               _tl124815125445_
                               _e124820125448_
                               _hd124819125451_
                               _tl124818125453_))
                          (___match127917127918_
                           _e124817125440_
                           _hd124816125443_
                           _tl124815125445_
                           _e124820125448_
                           _hd124819125451_
                           _tl124818125453_))
                      (___match127917127918_
                       _e124817125440_
                       _hd124816125443_
                       _tl124815125445_
                       _e124820125448_
                       _hd124819125451_
                       _tl124818125453_))))
              (___match127917127918_
               _e124817125440_
               _hd124816125443_
               _tl124815125445_
               _e124820125448_
               _hd124819125451_
               _tl124818125453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127917127918_
                                               _e124817125440_
                                               _hd124816125443_
                                               _tl124815125445_
                                               _e124820125448_
                                               _hd124819125451_
                                               _tl124818125453_))
                                          (___match127917127918_
                                           _e124817125440_
                                           _hd124816125443_
                                           _tl124815125445_
                                           _e124820125448_
                                           _hd124819125451_
                                           _tl124818125453_))))
                                  (___match127917127918_
                                   _e124817125440_
                                   _hd124816125443_
                                   _tl124815125445_
                                   _e124820125448_
                                   _hd124819125451_
                                   _tl124818125453_))
                              (___match127917127918_
                               _e124817125440_
                               _hd124816125443_
                               _tl124815125445_
                               _e124820125448_
                               _hd124819125451_
                               _tl124818125453_))
                          (___match127917127918_
                           _e124817125440_
                           _hd124816125443_
                           _tl124815125445_
                           _e124820125448_
                           _hd124819125451_
                           _tl124818125453_))))
                  (___match127917127918_
                   _e124817125440_
                   _hd124816125443_
                   _tl124815125445_
                   _e124820125448_
                   _hd124819125451_
                   _tl124818125453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127917127918_
                                                   _e124817125440_
                                                   _hd124816125443_
                                                   _tl124815125445_
                                                   _e124820125448_
                                                   _hd124819125451_
                                                   _tl124818125453_))
                                              (___match127917127918_
                                               _e124817125440_
                                               _hd124816125443_
                                               _tl124815125445_
                                               _e124820125448_
                                               _hd124819125451_
                                               _tl124818125453_))))
                                      (___match127917127918_
                                       _e124817125440_
                                       _hd124816125443_
                                       _tl124815125445_
                                       _e124820125448_
                                       _hd124819125451_
                                       _tl124818125453_))
                                  (___match127917127918_
                                   _e124817125440_
                                   _hd124816125443_
                                   _tl124815125445_
                                   _e124820125448_
                                   _hd124819125451_
                                   _tl124818125453_))
                              (___match127917127918_
                               _e124817125440_
                               _hd124816125443_
                               _tl124815125445_
                               _e124820125448_
                               _hd124819125451_
                               _tl124818125453_))))
                      (___match127917127918_
                       _e124817125440_
                       _hd124816125443_
                       _tl124815125445_
                       _e124820125448_
                       _hd124819125451_
                       _tl124818125453_))))
              (___match127917127918_
               _e124817125440_
               _hd124816125443_
               _tl124815125445_
               _e124820125448_
               _hd124819125451_
               _tl124818125453_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127917127918_
                                                   _e124817125440_
                                                   _hd124816125443_
                                                   _tl124815125445_
                                                   _e124820125448_
                                                   _hd124819125451_
                                                   _tl124818125453_))))
                                          (___match127917127918_
                                           _e124817125440_
                                           _hd124816125443_
                                           _tl124815125445_
                                           _e124820125448_
                                           _hd124819125451_
                                           _tl124818125453_))
                                      (___match127917127918_
                                       _e124817125440_
                                       _hd124816125443_
                                       _tl124815125445_
                                       _e124820125448_
                                       _hd124819125451_
                                       _tl124818125453_))
                                  (___match127917127918_
                                   _e124817125440_
                                   _hd124816125443_
                                   _tl124815125445_
                                   _e124820125448_
                                   _hd124819125451_
                                   _tl124818125453_))))
                          (___match127917127918_
                           _e124817125440_
                           _hd124816125443_
                           _tl124815125445_
                           _e124820125448_
                           _hd124819125451_
                           _tl124818125453_))))
                  (___match127917127918_
                   _e124817125440_
                   _hd124816125443_
                   _tl124815125445_
                   _e124820125448_
                   _hd124819125451_
                   _tl124818125453_))
              (___match127917127918_
               _e124817125440_
               _hd124816125443_
               _tl124815125445_
               _e124820125448_
               _hd124819125451_
               _tl124818125453_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127917127918_
                                                   _e124817125440_
                                                   _hd124816125443_
                                                   _tl124815125445_
                                                   _e124820125448_
                                                   _hd124819125451_
                                                   _tl124818125453_))))
                                          (___match127917127918_
                                           _e124817125440_
                                           _hd124816125443_
                                           _tl124815125445_
                                           _e124820125448_
                                           _hd124819125451_
                                           _tl124818125453_))))
                                  (___match127917127918_
                                   _e124817125440_
                                   _hd124816125443_
                                   _tl124815125445_
                                   _e124820125448_
                                   _hd124819125451_
                                   _tl124818125453_))))
                          (___match128051128052_
                           _e124817125440_
                           _hd124816125443_
                           _tl124815125445_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127732127733_))
                  (let ((_e124808125657_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127732127733_))))
                    (let ((_tl124806125662_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124808125657_)))
                          (_hd124807125660_
                           (let ()
                             (declare (not safe))
                             (##car _e124808125657_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125665_ _tl124806125662_))
                            (___kont127734127735_ _L125665_))
                          (___match127759127760_
                           _e124808125657_
                           _hd124807125660_
                           _tl124806125662_))))
                  (let () (declare (not safe)) (_g124803124999_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self124750_ _stx124751_)
        (letrec ((_clause-e124753_
                  (lambda (_form124794_)
                    (let ((__obj129415
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
                       __obj129415
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124794_))
                       (if (let ((__tmp129491
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp129491))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124794_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124794_))
                               '#f)
                           '#f))
                      __obj129415))))
          (let* ((_g124755124765_
                  (lambda (_g124756124762_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124756124762_))))
                 (_g124754124791_
                  (lambda (_g124756124768_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124756124768_))
                        (let ((_e124760124770_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124756124768_))))
                          (let ((_hd124759124773_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124760124770_)))
                                (_tl124758124775_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124760124770_))))
                            ((lambda (_L124778_)
                               (let ((_clauses124789_
                                      (map _clause-e124753_ _L124778_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124789_)))
                             _tl124758124775_)))
                        (let ()
                          (declare (not safe))
                          (_g124755124765_ _g124756124768_))))))
            (declare (not safe))
            (_g124754124791_ _stx124751_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self124681_ _stx124682_)
        (let* ((_g124684124701_
                (lambda (_g124685124698_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124685124698_))))
               (_g124683124747_
                (lambda (_g124685124704_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124685124704_))
                      (let ((_e124690124706_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124685124704_))))
                        (let ((_hd124689124709_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124690124706_)))
                              (_tl124688124711_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124690124706_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124688124711_))
                              (let ((_e124693124714_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124688124711_))))
                                (let ((_hd124692124717_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124693124714_)))
                                      (_tl124691124719_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124693124714_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124691124719_))
                                      (let ((_e124696124722_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124691124719_))))
                                        (let ((_hd124695124725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124696124722_)))
                                              (_tl124694124727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124696124722_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124694124727_))
                                              ((lambda (_L124730_ _L124731_)
                                                 (let ((__tmp129492
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self124681_
                                                             _L124730_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp129492
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124695124725_
                                               _hd124692124717_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124684124701_
                                                 _g124685124704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124684124701_ _g124685124704_)))))
                              (let ()
                                (declare (not safe))
                                (_g124684124701_ _g124685124704_)))))
                      (let ()
                        (declare (not safe))
                        (_g124684124701_ _g124685124704_))))))
          (declare (not safe))
          (_g124683124747_ _stx124682_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self124585_ _stx124586_)
        (let* ((___stx128060128061_ _stx124586_)
               (_g124589124609_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128060128061_)))))
          (let ((___kont128062128063_
                 (lambda (_L124653_ _L124654_)
                   (let ((_type-e124671124673_
                          (let ((__tmp129493
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124654_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp129493))))
                     (if _type-e124671124673_
                         (let ((_type-e124676_ _type-e124671124673_))
                           (_type-e124676_ _stx124586_ _L124653_))
                         '#f))))
                (___kont128064128065_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128060128061_))
                (let ((_e124595124621_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128060128061_))))
                  (let ((_tl124593124626_
                         (let () (declare (not safe)) (##cdr _e124595124621_)))
                        (_hd124594124624_
                         (let ()
                           (declare (not safe))
                           (##car _e124595124621_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124593124626_))
                        (let ((_e124598124629_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124593124626_))))
                          (let ((_tl124596124634_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124598124629_)))
                                (_hd124597124632_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124598124629_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124597124632_))
                                (let ((_e124601124637_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124597124632_))))
                                  (let ((_tl124599124642_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124601124637_)))
                                        (_hd124600124640_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124601124637_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124600124640_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124600124640_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124599124642_))
                                                (let ((_e124604124645_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124599124642_))))
                                                  (let ((_tl124602124650_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124604124645_)))
                                                        (_hd124603124648_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124604124645_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124602124650_))
                                                        (___kont128062128063_
                                                         _tl124596124634_
                                                         _hd124603124648_)
                                                        (___kont128064128065_))))
                                                (___kont128064128065_))
                                            (___kont128064128065_))
                                        (___kont128064128065_))))
                                (___kont128064128065_))))
                        (___kont128064128065_))))
                (___kont128064128065_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self124533_ _stx124534_)
        (let* ((_g124536124549_
                (lambda (_g124537124546_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124537124546_))))
               (_g124535124582_
                (lambda (_g124537124552_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124537124552_))
                      (let ((_e124541124554_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124537124552_))))
                        (let ((_hd124540124557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124541124554_)))
                              (_tl124539124559_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124541124554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124539124559_))
                              (let ((_e124544124562_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124539124559_))))
                                (let ((_hd124543124565_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124544124562_)))
                                      (_tl124542124567_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124544124562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124542124567_))
                                      ((lambda (_L124570_)
                                         (let ((__tmp129494
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124570_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp129494)))
                                       _hd124543124565_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124536124549_ _g124537124552_)))))
                              (let ()
                                (declare (not safe))
                                (_g124536124549_ _g124537124552_)))))
                      (let ()
                        (declare (not safe))
                        (_g124536124549_ _g124537124552_))))))
          (declare (not safe))
          (_g124535124582_ _stx124534_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123767_)
        (let* ((___stx128098128099_ _form123767_)
               (_g123772123929_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128098128099_)))))
          (let ((___kont128100128101_
                 (lambda (_L124453_ _L124454_ _L124455_) '#t))
                (___kont128106128107_
                 (lambda (_L124241_
                          _L124242_
                          _L124243_
                          _L124244_
                          _L124245_
                          _L124246_)
                   '#t))
                (___kont128112128113_
                 (lambda (_L124037_ _L124038_ _L124039_ _L124040_) '#t))
                (___kont128114128115_ (lambda () '#f)))
            (let* ((___match128239128240_
                    (lambda (_e123891123941_
                             _hd123890123944_
                             _tl123889123946_
                             _e123894123949_
                             _hd123893123952_
                             _tl123892123954_
                             _e123897123957_
                             _hd123896123960_
                             _tl123895123962_
                             _e123900123965_
                             _hd123899123968_
                             _tl123898123970_
                             _e123903123973_
                             _hd123902123976_
                             _tl123901123978_
                             _e123906123981_
                             _hd123905123984_
                             _tl123904123986_
                             _e123909123989_
                             _hd123908123992_
                             _tl123907123994_
                             _e123912123997_
                             _hd123911124000_
                             _tl123910124002_
                             _e123915124005_
                             _hd123914124008_
                             _tl123913124010_
                             _e123918124013_
                             _hd123917124016_
                             _tl123916124018_
                             _e123921124021_
                             _hd123920124024_
                             _tl123919124026_
                             _e123924124029_
                             _hd123923124032_
                             _tl123922124034_)
                      (let ((_L124037_ _hd123923124032_)
                            (_L124038_ _hd123914124008_)
                            (_L124039_ _hd123905123984_)
                            (_L124040_ _hd123890123944_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124040_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124039_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124040_ _L124037_))
                                 (let ((__tmp129495
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L124038_
                                           _L124040_))))
                                   (declare (not safe))
                                   (not __tmp129495)))
                            (___kont128112128113_
                             _L124037_
                             _L124038_
                             _L124039_
                             _L124040_)
                            (___kont128114128115_)))))
                   (___match128211128212_
                    (lambda (_e123891123941_
                             _hd123890123944_
                             _tl123889123946_
                             _e123894123949_
                             _hd123893123952_
                             _tl123892123954_
                             _e123897123957_
                             _hd123896123960_
                             _tl123895123962_
                             _e123900123965_
                             _hd123899123968_
                             _tl123898123970_
                             _e123903123973_
                             _hd123902123976_
                             _tl123901123978_
                             _e123906123981_
                             _hd123905123984_
                             _tl123904123986_
                             _e123909123989_
                             _hd123908123992_
                             _tl123907123994_
                             _e123912123997_
                             _hd123911124000_
                             _tl123910124002_
                             _e123915124005_
                             _hd123914124008_
                             _tl123913124010_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123907123994_))
                          (let ((_e123918124013_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123907123994_))))
                            (let ((_tl123916124018_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123918124013_)))
                                  (_hd123917124016_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123918124013_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123917124016_))
                                  (let ((_e123921124021_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123917124016_))))
                                    (let ((_tl123919124026_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123921124021_)))
                                          (_hd123920124024_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123921124021_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123920124024_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123920124024_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123919124026_))
                                                  (let ((_e123924124029_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123919124026_))))
                                                    (let ((_tl123922124034_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123924124029_)))
                                                          (_hd123923124032_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123924124029_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123922124034_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123916124018_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123892123954_))
                          (___match128239128240_
                           _e123891123941_
                           _hd123890123944_
                           _tl123889123946_
                           _e123894123949_
                           _hd123893123952_
                           _tl123892123954_
                           _e123897123957_
                           _hd123896123960_
                           _tl123895123962_
                           _e123900123965_
                           _hd123899123968_
                           _tl123898123970_
                           _e123903123973_
                           _hd123902123976_
                           _tl123901123978_
                           _e123906123981_
                           _hd123905123984_
                           _tl123904123986_
                           _e123909123989_
                           _hd123908123992_
                           _tl123907123994_
                           _e123912123997_
                           _hd123911124000_
                           _tl123910124002_
                           _e123915124005_
                           _hd123914124008_
                           _tl123913124010_
                           _e123918124013_
                           _hd123917124016_
                           _tl123916124018_
                           _e123921124021_
                           _hd123920124024_
                           _tl123919124026_
                           _e123924124029_
                           _hd123923124032_
                           _tl123922124034_)
                          (___kont128114128115_))
                      (___kont128114128115_))
                  (___kont128114128115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128114128115_))
                                              (___kont128114128115_))
                                          (___kont128114128115_))))
                                  (___kont128114128115_))))
                          (___kont128114128115_))))
                   (___match128141128142_
                    (lambda (_e123827124081_
                             _hd123826124084_
                             _tl123825124086_
                             ___splice128108128109_
                             _target123828124089_
                             _tl123830124091_)
                      (letrec ((_loop123831124094_
                                (lambda (_hd123829124097_ _arg123835124099_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123829124097_))
                                      (let ((_e123832124102_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123829124097_))))
                                        (let ((_lp-tl123834124107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123832124102_)))
                                              (_lp-hd123833124105_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123832124102_))))
                                          (let ((__tmp129510
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123833124105_
                                                         _arg123835124099_))))
                                            (declare (not safe))
                                            (_loop123831124094_
                                             _lp-tl123834124107_
                                             __tmp129510))))
                                      (let ((_arg123836124110_
                                             (reverse _arg123835124099_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123825124086_))
                                            (let ((_e123839124113_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123825124086_))))
                                              (let ((_tl123837124118_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123839124113_)))
                                                    (_hd123838124116_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123839124113_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123838124116_))
                                                    (let ((_e123842124121_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123838124116_))))
                                                      (let ((_tl123840124126_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123842124121_)))
                    (_hd123841124124_
                     (let () (declare (not safe)) (##car _e123842124121_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123841124124_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123841124124_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123840124126_))
                            (let ((_e123845124129_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123840124126_))))
                              (let ((_tl123843124134_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123845124129_)))
                                    (_hd123844124132_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123845124129_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123844124132_))
                                    (let ((_e123848124137_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123844124132_))))
                                      (let ((_tl123846124142_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123848124137_)))
                                            (_hd123847124140_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123848124137_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123847124140_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123847124140_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123846124142_))
                                                    (let ((_e123851124145_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123846124142_))))
                                                      (let ((_tl123849124150_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123851124145_)))
                    (_hd123850124148_
                     (let () (declare (not safe)) (##car _e123851124145_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123849124150_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123843124134_))
                        (let ((_e123854124153_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123843124134_))))
                          (let ((_tl123852124158_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123854124153_)))
                                (_hd123853124156_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123854124153_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123853124156_))
                                (let ((_e123857124161_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123853124156_))))
                                  (let ((_tl123855124166_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123857124161_)))
                                        (_hd123856124164_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123857124161_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123856124164_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123856124164_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123855124166_))
                                                (let ((_e123860124169_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123855124166_))))
                                                  (let ((_tl123858124174_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123860124169_)))
                                                        (_hd123859124172_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123860124169_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123858124174_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123852124158_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123852124158_))
                              '1)
                        (let ((___splice128110128111_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123852124158_
                                  '1))))
                          (let ((_tl123863124179_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128110128111_ '1)))
                                (_target123861124177_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128110128111_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123863124179_))
                                (let ((_e123872124182_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123863124179_))))
                                  (let ((_tl123870124187_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123872124182_)))
                                        (_hd123871124185_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123872124182_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123871124185_))
                                        (let ((_e123875124190_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123871124185_))))
                                          (let ((_tl123873124195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123875124190_)))
                                                (_hd123874124193_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123875124190_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123874124193_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123874124193_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123873124195_))
                                                        (let ((_e123878124198_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123873124195_))))
                  (let ((_tl123876124203_
                         (let () (declare (not safe)) (##cdr _e123878124198_)))
                        (_hd123877124201_
                         (let ()
                           (declare (not safe))
                           (##car _e123878124198_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123876124203_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123870124187_))
                            (letrec ((_loop123864124206_
                                      (lambda (_hd123862124209_
                                               _xarg123868124211_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123862124209_))
                                            (let ((_e123865124214_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123862124209_))))
                                              (let ((_lp-tl123867124219_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123865124214_)))
                                                    (_lp-hd123866124217_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123865124214_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123866124217_))
                                                    (let ((_e123881124222_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123866124217_))))
                                                      (let ((_tl123879124227_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123881124222_)))
                    (_hd123880124225_
                     (let () (declare (not safe)) (##car _e123881124222_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123880124225_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123880124225_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123879124227_))
                            (let ((_e123884124230_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123879124227_))))
                              (let ((_tl123882124235_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123884124230_)))
                                    (_hd123883124233_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123884124230_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123882124235_))
                                    (let ((__tmp129509
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123883124233_
                                                   _xarg123868124211_))))
                                      (declare (not safe))
                                      (_loop123864124206_
                                       _lp-tl123867124219_
                                       __tmp129509))
                                    (___match128211128212_
                                     _e123827124081_
                                     _hd123826124084_
                                     _tl123825124086_
                                     _e123839124113_
                                     _hd123838124116_
                                     _tl123837124118_
                                     _e123842124121_
                                     _hd123841124124_
                                     _tl123840124126_
                                     _e123845124129_
                                     _hd123844124132_
                                     _tl123843124134_
                                     _e123848124137_
                                     _hd123847124140_
                                     _tl123846124142_
                                     _e123851124145_
                                     _hd123850124148_
                                     _tl123849124150_
                                     _e123854124153_
                                     _hd123853124156_
                                     _tl123852124158_
                                     _e123857124161_
                                     _hd123856124164_
                                     _tl123855124166_
                                     _e123860124169_
                                     _hd123859124172_
                                     _tl123858124174_))))
                            (___match128211128212_
                             _e123827124081_
                             _hd123826124084_
                             _tl123825124086_
                             _e123839124113_
                             _hd123838124116_
                             _tl123837124118_
                             _e123842124121_
                             _hd123841124124_
                             _tl123840124126_
                             _e123845124129_
                             _hd123844124132_
                             _tl123843124134_
                             _e123848124137_
                             _hd123847124140_
                             _tl123846124142_
                             _e123851124145_
                             _hd123850124148_
                             _tl123849124150_
                             _e123854124153_
                             _hd123853124156_
                             _tl123852124158_
                             _e123857124161_
                             _hd123856124164_
                             _tl123855124166_
                             _e123860124169_
                             _hd123859124172_
                             _tl123858124174_))
                        (___match128211128212_
                         _e123827124081_
                         _hd123826124084_
                         _tl123825124086_
                         _e123839124113_
                         _hd123838124116_
                         _tl123837124118_
                         _e123842124121_
                         _hd123841124124_
                         _tl123840124126_
                         _e123845124129_
                         _hd123844124132_
                         _tl123843124134_
                         _e123848124137_
                         _hd123847124140_
                         _tl123846124142_
                         _e123851124145_
                         _hd123850124148_
                         _tl123849124150_
                         _e123854124153_
                         _hd123853124156_
                         _tl123852124158_
                         _e123857124161_
                         _hd123856124164_
                         _tl123855124166_
                         _e123860124169_
                         _hd123859124172_
                         _tl123858124174_))
                    (___match128211128212_
                     _e123827124081_
                     _hd123826124084_
                     _tl123825124086_
                     _e123839124113_
                     _hd123838124116_
                     _tl123837124118_
                     _e123842124121_
                     _hd123841124124_
                     _tl123840124126_
                     _e123845124129_
                     _hd123844124132_
                     _tl123843124134_
                     _e123848124137_
                     _hd123847124140_
                     _tl123846124142_
                     _e123851124145_
                     _hd123850124148_
                     _tl123849124150_
                     _e123854124153_
                     _hd123853124156_
                     _tl123852124158_
                     _e123857124161_
                     _hd123856124164_
                     _tl123855124166_
                     _e123860124169_
                     _hd123859124172_
                     _tl123858124174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128211128212_
                                                     _e123827124081_
                                                     _hd123826124084_
                                                     _tl123825124086_
                                                     _e123839124113_
                                                     _hd123838124116_
                                                     _tl123837124118_
                                                     _e123842124121_
                                                     _hd123841124124_
                                                     _tl123840124126_
                                                     _e123845124129_
                                                     _hd123844124132_
                                                     _tl123843124134_
                                                     _e123848124137_
                                                     _hd123847124140_
                                                     _tl123846124142_
                                                     _e123851124145_
                                                     _hd123850124148_
                                                     _tl123849124150_
                                                     _e123854124153_
                                                     _hd123853124156_
                                                     _tl123852124158_
                                                     _e123857124161_
                                                     _hd123856124164_
                                                     _tl123855124166_
                                                     _e123860124169_
                                                     _hd123859124172_
                                                     _tl123858124174_))))
                                            (let ((_xarg123869124238_
                                                   (reverse _xarg123868124211_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123837124118_))
                                                  (let ((_L124241_
                                                         _hd123877124201_)
                                                        (_L124242_
                                                         _xarg123869124238_)
                                                        (_L124243_
                                                         _hd123859124172_)
                                                        (_L124244_
                                                         _hd123850124148_)
                                                        (_L124245_
                                                         _tl123830124091_)
                                                        (_L124246_
                                                         _arg123836124110_))
                                                    (if (and (let ((__tmp129507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129508
                                   (lambda (_g124289124292_ _g124290124294_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g124289124292_
                                             _g124290124294_)))))
                              (declare (not safe))
                              (foldr1 __tmp129508 '() _L124246_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp129507))
                     (let () (declare (not safe)) (gx#identifier? _L124245_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L124244_ 'apply))
                     (fx= (length (let ((__tmp129505
                                         (lambda (_g124296124299_
                                                  _g124297124301_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g124296124299_
                                                   _g124297124301_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp129505 '() _L124246_)))
                          (length (let ((__tmp129506
                                         (lambda (_g124303124306_
                                                  _g124304124308_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g124303124306_
                                                   _g124304124308_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp129506 '() _L124242_))))
                     (let ((__tmp129503
                            (let ((__tmp129504
                                   (lambda (_g124310124313_ _g124311124315_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g124310124313_
                                             _g124311124315_)))))
                              (declare (not safe))
                              (foldr1 __tmp129504 '() _L124246_)))
                           (__tmp129501
                            (let ((__tmp129502
                                   (lambda (_g124317124320_ _g124318124322_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g124317124320_
                                             _g124318124322_)))))
                              (declare (not safe))
                              (foldr1 __tmp129502 '() _L124242_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp129503 __tmp129501))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L124245_ _L124241_))
                     (let ((__tmp129496
                            (let ((__tmp129500
                                   (lambda (_g124324124326_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g124324124326_
                                        _L124243_))))
                                  (__tmp129497
                                   (let ((__tmp129499
                                          (lambda (_g124328124331_
                                                   _g124329124333_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g124328124331_
                                                    _g124329124333_))))
                                         (__tmp129498
                                          (let ()
                                            (declare (not safe))
                                            (cons _L124245_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp129499
                                             __tmp129498
                                             _L124246_))))
                              (declare (not safe))
                              (find __tmp129500 __tmp129497))))
                       (declare (not safe))
                       (not __tmp129496)))
                (___kont128106128107_
                 _L124241_
                 _L124242_
                 _L124243_
                 _L124244_
                 _L124245_
                 _L124246_)
                (___match128211128212_
                 _e123827124081_
                 _hd123826124084_
                 _tl123825124086_
                 _e123839124113_
                 _hd123838124116_
                 _tl123837124118_
                 _e123842124121_
                 _hd123841124124_
                 _tl123840124126_
                 _e123845124129_
                 _hd123844124132_
                 _tl123843124134_
                 _e123848124137_
                 _hd123847124140_
                 _tl123846124142_
                 _e123851124145_
                 _hd123850124148_
                 _tl123849124150_
                 _e123854124153_
                 _hd123853124156_
                 _tl123852124158_
                 _e123857124161_
                 _hd123856124164_
                 _tl123855124166_
                 _e123860124169_
                 _hd123859124172_
                 _tl123858124174_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match128211128212_
                                                   _e123827124081_
                                                   _hd123826124084_
                                                   _tl123825124086_
                                                   _e123839124113_
                                                   _hd123838124116_
                                                   _tl123837124118_
                                                   _e123842124121_
                                                   _hd123841124124_
                                                   _tl123840124126_
                                                   _e123845124129_
                                                   _hd123844124132_
                                                   _tl123843124134_
                                                   _e123848124137_
                                                   _hd123847124140_
                                                   _tl123846124142_
                                                   _e123851124145_
                                                   _hd123850124148_
                                                   _tl123849124150_
                                                   _e123854124153_
                                                   _hd123853124156_
                                                   _tl123852124158_
                                                   _e123857124161_
                                                   _hd123856124164_
                                                   _tl123855124166_
                                                   _e123860124169_
                                                   _hd123859124172_
                                                   _tl123858124174_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123864124206_ _target123861124177_ '())))
                            (___match128211128212_
                             _e123827124081_
                             _hd123826124084_
                             _tl123825124086_
                             _e123839124113_
                             _hd123838124116_
                             _tl123837124118_
                             _e123842124121_
                             _hd123841124124_
                             _tl123840124126_
                             _e123845124129_
                             _hd123844124132_
                             _tl123843124134_
                             _e123848124137_
                             _hd123847124140_
                             _tl123846124142_
                             _e123851124145_
                             _hd123850124148_
                             _tl123849124150_
                             _e123854124153_
                             _hd123853124156_
                             _tl123852124158_
                             _e123857124161_
                             _hd123856124164_
                             _tl123855124166_
                             _e123860124169_
                             _hd123859124172_
                             _tl123858124174_))
                        (___match128211128212_
                         _e123827124081_
                         _hd123826124084_
                         _tl123825124086_
                         _e123839124113_
                         _hd123838124116_
                         _tl123837124118_
                         _e123842124121_
                         _hd123841124124_
                         _tl123840124126_
                         _e123845124129_
                         _hd123844124132_
                         _tl123843124134_
                         _e123848124137_
                         _hd123847124140_
                         _tl123846124142_
                         _e123851124145_
                         _hd123850124148_
                         _tl123849124150_
                         _e123854124153_
                         _hd123853124156_
                         _tl123852124158_
                         _e123857124161_
                         _hd123856124164_
                         _tl123855124166_
                         _e123860124169_
                         _hd123859124172_
                         _tl123858124174_))))
                (___match128211128212_
                 _e123827124081_
                 _hd123826124084_
                 _tl123825124086_
                 _e123839124113_
                 _hd123838124116_
                 _tl123837124118_
                 _e123842124121_
                 _hd123841124124_
                 _tl123840124126_
                 _e123845124129_
                 _hd123844124132_
                 _tl123843124134_
                 _e123848124137_
                 _hd123847124140_
                 _tl123846124142_
                 _e123851124145_
                 _hd123850124148_
                 _tl123849124150_
                 _e123854124153_
                 _hd123853124156_
                 _tl123852124158_
                 _e123857124161_
                 _hd123856124164_
                 _tl123855124166_
                 _e123860124169_
                 _hd123859124172_
                 _tl123858124174_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128211128212_
                                                     _e123827124081_
                                                     _hd123826124084_
                                                     _tl123825124086_
                                                     _e123839124113_
                                                     _hd123838124116_
                                                     _tl123837124118_
                                                     _e123842124121_
                                                     _hd123841124124_
                                                     _tl123840124126_
                                                     _e123845124129_
                                                     _hd123844124132_
                                                     _tl123843124134_
                                                     _e123848124137_
                                                     _hd123847124140_
                                                     _tl123846124142_
                                                     _e123851124145_
                                                     _hd123850124148_
                                                     _tl123849124150_
                                                     _e123854124153_
                                                     _hd123853124156_
                                                     _tl123852124158_
                                                     _e123857124161_
                                                     _hd123856124164_
                                                     _tl123855124166_
                                                     _e123860124169_
                                                     _hd123859124172_
                                                     _tl123858124174_))
                                                (___match128211128212_
                                                 _e123827124081_
                                                 _hd123826124084_
                                                 _tl123825124086_
                                                 _e123839124113_
                                                 _hd123838124116_
                                                 _tl123837124118_
                                                 _e123842124121_
                                                 _hd123841124124_
                                                 _tl123840124126_
                                                 _e123845124129_
                                                 _hd123844124132_
                                                 _tl123843124134_
                                                 _e123848124137_
                                                 _hd123847124140_
                                                 _tl123846124142_
                                                 _e123851124145_
                                                 _hd123850124148_
                                                 _tl123849124150_
                                                 _e123854124153_
                                                 _hd123853124156_
                                                 _tl123852124158_
                                                 _e123857124161_
                                                 _hd123856124164_
                                                 _tl123855124166_
                                                 _e123860124169_
                                                 _hd123859124172_
                                                 _tl123858124174_))))
                                        (___match128211128212_
                                         _e123827124081_
                                         _hd123826124084_
                                         _tl123825124086_
                                         _e123839124113_
                                         _hd123838124116_
                                         _tl123837124118_
                                         _e123842124121_
                                         _hd123841124124_
                                         _tl123840124126_
                                         _e123845124129_
                                         _hd123844124132_
                                         _tl123843124134_
                                         _e123848124137_
                                         _hd123847124140_
                                         _tl123846124142_
                                         _e123851124145_
                                         _hd123850124148_
                                         _tl123849124150_
                                         _e123854124153_
                                         _hd123853124156_
                                         _tl123852124158_
                                         _e123857124161_
                                         _hd123856124164_
                                         _tl123855124166_
                                         _e123860124169_
                                         _hd123859124172_
                                         _tl123858124174_))))
                                (___match128211128212_
                                 _e123827124081_
                                 _hd123826124084_
                                 _tl123825124086_
                                 _e123839124113_
                                 _hd123838124116_
                                 _tl123837124118_
                                 _e123842124121_
                                 _hd123841124124_
                                 _tl123840124126_
                                 _e123845124129_
                                 _hd123844124132_
                                 _tl123843124134_
                                 _e123848124137_
                                 _hd123847124140_
                                 _tl123846124142_
                                 _e123851124145_
                                 _hd123850124148_
                                 _tl123849124150_
                                 _e123854124153_
                                 _hd123853124156_
                                 _tl123852124158_
                                 _e123857124161_
                                 _hd123856124164_
                                 _tl123855124166_
                                 _e123860124169_
                                 _hd123859124172_
                                 _tl123858124174_))))
                        (___match128211128212_
                         _e123827124081_
                         _hd123826124084_
                         _tl123825124086_
                         _e123839124113_
                         _hd123838124116_
                         _tl123837124118_
                         _e123842124121_
                         _hd123841124124_
                         _tl123840124126_
                         _e123845124129_
                         _hd123844124132_
                         _tl123843124134_
                         _e123848124137_
                         _hd123847124140_
                         _tl123846124142_
                         _e123851124145_
                         _hd123850124148_
                         _tl123849124150_
                         _e123854124153_
                         _hd123853124156_
                         _tl123852124158_
                         _e123857124161_
                         _hd123856124164_
                         _tl123855124166_
                         _e123860124169_
                         _hd123859124172_
                         _tl123858124174_))
                    (___match128211128212_
                     _e123827124081_
                     _hd123826124084_
                     _tl123825124086_
                     _e123839124113_
                     _hd123838124116_
                     _tl123837124118_
                     _e123842124121_
                     _hd123841124124_
                     _tl123840124126_
                     _e123845124129_
                     _hd123844124132_
                     _tl123843124134_
                     _e123848124137_
                     _hd123847124140_
                     _tl123846124142_
                     _e123851124145_
                     _hd123850124148_
                     _tl123849124150_
                     _e123854124153_
                     _hd123853124156_
                     _tl123852124158_
                     _e123857124161_
                     _hd123856124164_
                     _tl123855124166_
                     _e123860124169_
                     _hd123859124172_
                     _tl123858124174_))
                (___kont128114128115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128114128115_))
                                            (___kont128114128115_))
                                        (___kont128114128115_))))
                                (___kont128114128115_))))
                        (___kont128114128115_))
                    (___kont128114128115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128114128115_))
                                                (___kont128114128115_))
                                            (___kont128114128115_))))
                                    (___kont128114128115_))))
                            (___kont128114128115_))
                        (___kont128114128115_))
                    (___kont128114128115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128114128115_))))
                                            (___kont128114128115_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123831124094_ _target123828124089_ '())))))
                   (___match128129128130_
                    (lambda (_e123779124341_
                             _hd123778124344_
                             _tl123777124346_
                             ___splice128102128103_
                             _target123780124349_
                             _tl123782124351_)
                      (letrec ((_loop123783124354_
                                (lambda (_hd123781124357_ _arg123787124359_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123781124357_))
                                      (let ((_e123784124362_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123781124357_))))
                                        (let ((_lp-tl123786124367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123784124362_)))
                                              (_lp-hd123785124365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123784124362_))))
                                          (let ((__tmp129524
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123785124365_
                                                         _arg123787124359_))))
                                            (declare (not safe))
                                            (_loop123783124354_
                                             _lp-tl123786124367_
                                             __tmp129524))))
                                      (let ((_arg123788124370_
                                             (reverse _arg123787124359_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123777124346_))
                                            (let ((_e123791124373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123777124346_))))
                                              (let ((_tl123789124378_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123791124373_)))
                                                    (_hd123790124376_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123791124373_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123790124376_))
                                                    (let ((_e123794124381_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123790124376_))))
                                                      (let ((_tl123792124386_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123794124381_)))
                    (_hd123793124384_
                     (let () (declare (not safe)) (##car _e123794124381_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123793124384_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123793124384_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123792124386_))
                            (let ((_e123797124389_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123792124386_))))
                              (let ((_tl123795124394_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123797124389_)))
                                    (_hd123796124392_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123797124389_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123796124392_))
                                    (let ((_e123800124397_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123796124392_))))
                                      (let ((_tl123798124402_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123800124397_)))
                                            (_hd123799124400_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123800124397_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123799124400_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123799124400_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123798124402_))
                                                    (let ((_e123803124405_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123798124402_))))
                                                      (let ((_tl123801124410_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123803124405_)))
                    (_hd123802124408_
                     (let () (declare (not safe)) (##car _e123803124405_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123801124410_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123795124394_))
                        (let ((___splice128104128105_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123795124394_
                                  '0))))
                          (let ((_tl123806124415_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128104128105_ '1)))
                                (_target123804124413_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128104128105_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123806124415_))
                                (letrec ((_loop123807124418_
                                          (lambda (_hd123805124421_
                                                   _xarg123811124423_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123805124421_))
                                                (let ((_e123808124426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123805124421_))))
                                                  (let ((_lp-tl123810124431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123808124426_)))
                                                        (_lp-hd123809124429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123808124426_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123809124429_))
                                                        (let ((_e123815124434_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123809124429_))))
                  (let ((_tl123813124439_
                         (let () (declare (not safe)) (##cdr _e123815124434_)))
                        (_hd123814124437_
                         (let ()
                           (declare (not safe))
                           (##car _e123815124434_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123814124437_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123814124437_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123813124439_))
                                (let ((_e123818124442_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123813124439_))))
                                  (let ((_tl123816124447_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123818124442_)))
                                        (_hd123817124445_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123818124442_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123816124447_))
                                        (let ((__tmp129523
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123817124445_
                                                       _xarg123811124423_))))
                                          (declare (not safe))
                                          (_loop123807124418_
                                           _lp-tl123810124431_
                                           __tmp129523))
                                        (___match128141128142_
                                         _e123779124341_
                                         _hd123778124344_
                                         _tl123777124346_
                                         ___splice128102128103_
                                         _target123780124349_
                                         _tl123782124351_))))
                                (___match128141128142_
                                 _e123779124341_
                                 _hd123778124344_
                                 _tl123777124346_
                                 ___splice128102128103_
                                 _target123780124349_
                                 _tl123782124351_))
                            (___match128141128142_
                             _e123779124341_
                             _hd123778124344_
                             _tl123777124346_
                             ___splice128102128103_
                             _target123780124349_
                             _tl123782124351_))
                        (___match128141128142_
                         _e123779124341_
                         _hd123778124344_
                         _tl123777124346_
                         ___splice128102128103_
                         _target123780124349_
                         _tl123782124351_))))
                (___match128141128142_
                 _e123779124341_
                 _hd123778124344_
                 _tl123777124346_
                 ___splice128102128103_
                 _target123780124349_
                 _tl123782124351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123812124450_
                                                       (reverse _xarg123811124423_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123789124378_))
                                                      (let ((_L124453_
                                                             _xarg123812124450_)
                                                            (_L124454_
                                                             _hd123802124408_)
                                                            (_L124455_
                                                             _arg123788124370_))
                                                        (if (and (let ((__tmp129521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp129522
                                       (lambda (_g124483124486_
                                                _g124484124488_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124483124486_
                                                 _g124484124488_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129522 '() _L124455_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp129521))
                         (fx= (length (let ((__tmp129519
                                             (lambda (_g124490124493_
                                                      _g124491124495_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g124490124493_
                                                       _g124491124495_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp129519 '() _L124455_)))
                              (length (let ((__tmp129520
                                             (lambda (_g124497124500_
                                                      _g124498124502_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g124497124500_
                                                       _g124498124502_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp129520 '() _L124453_))))
                         (let ((__tmp129517
                                (let ((__tmp129518
                                       (lambda (_g124504124507_
                                                _g124505124509_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124504124507_
                                                 _g124505124509_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129518 '() _L124455_)))
                               (__tmp129515
                                (let ((__tmp129516
                                       (lambda (_g124511124514_
                                                _g124512124516_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124511124514_
                                                 _g124512124516_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129516 '() _L124453_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp129517
                                    __tmp129515))
                         (let ((__tmp129511
                                (let ((__tmp129514
                                       (lambda (_g124518124520_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g124518124520_
                                            _L124454_))))
                                      (__tmp129512
                                       (let ((__tmp129513
                                              (lambda (_g124522124525_
                                                       _g124523124527_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g124522124525_
                                                        _g124523124527_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp129513 '() _L124455_))))
                                  (declare (not safe))
                                  (find __tmp129514 __tmp129512))))
                           (declare (not safe))
                           (not __tmp129511)))
                    (___kont128100128101_ _L124453_ _L124454_ _L124455_)
                    (___match128141128142_
                     _e123779124341_
                     _hd123778124344_
                     _tl123777124346_
                     ___splice128102128103_
                     _target123780124349_
                     _tl123782124351_)))
              (___match128141128142_
               _e123779124341_
               _hd123778124344_
               _tl123777124346_
               ___splice128102128103_
               _target123780124349_
               _tl123782124351_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123807124418_
                                     _target123804124413_
                                     '())))
                                (___match128141128142_
                                 _e123779124341_
                                 _hd123778124344_
                                 _tl123777124346_
                                 ___splice128102128103_
                                 _target123780124349_
                                 _tl123782124351_))))
                        (___match128141128142_
                         _e123779124341_
                         _hd123778124344_
                         _tl123777124346_
                         ___splice128102128103_
                         _target123780124349_
                         _tl123782124351_))
                    (___match128141128142_
                     _e123779124341_
                     _hd123778124344_
                     _tl123777124346_
                     ___splice128102128103_
                     _target123780124349_
                     _tl123782124351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128141128142_
                                                     _e123779124341_
                                                     _hd123778124344_
                                                     _tl123777124346_
                                                     ___splice128102128103_
                                                     _target123780124349_
                                                     _tl123782124351_))
                                                (___match128141128142_
                                                 _e123779124341_
                                                 _hd123778124344_
                                                 _tl123777124346_
                                                 ___splice128102128103_
                                                 _target123780124349_
                                                 _tl123782124351_))
                                            (___match128141128142_
                                             _e123779124341_
                                             _hd123778124344_
                                             _tl123777124346_
                                             ___splice128102128103_
                                             _target123780124349_
                                             _tl123782124351_))))
                                    (___match128141128142_
                                     _e123779124341_
                                     _hd123778124344_
                                     _tl123777124346_
                                     ___splice128102128103_
                                     _target123780124349_
                                     _tl123782124351_))))
                            (___match128141128142_
                             _e123779124341_
                             _hd123778124344_
                             _tl123777124346_
                             ___splice128102128103_
                             _target123780124349_
                             _tl123782124351_))
                        (___match128141128142_
                         _e123779124341_
                         _hd123778124344_
                         _tl123777124346_
                         ___splice128102128103_
                         _target123780124349_
                         _tl123782124351_))
                    (___match128141128142_
                     _e123779124341_
                     _hd123778124344_
                     _tl123777124346_
                     ___splice128102128103_
                     _target123780124349_
                     _tl123782124351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128141128142_
                                                     _e123779124341_
                                                     _hd123778124344_
                                                     _tl123777124346_
                                                     ___splice128102128103_
                                                     _target123780124349_
                                                     _tl123782124351_))))
                                            (___match128141128142_
                                             _e123779124341_
                                             _hd123778124344_
                                             _tl123777124346_
                                             ___splice128102128103_
                                             _target123780124349_
                                             _tl123782124351_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123783124354_ _target123780124349_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128098128099_))
                  (let ((_e123779124341_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128098128099_))))
                    (let ((_tl123777124346_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123779124341_)))
                          (_hd123778124344_
                           (let ()
                             (declare (not safe))
                             (##car _e123779124341_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123778124344_))
                          (let ((___splice128102128103_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123778124344_
                                    '0))))
                            (let ((_tl123782124351_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128102128103_ '1)))
                                  (_target123780124349_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128102128103_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123782124351_))
                                  (___match128129128130_
                                   _e123779124341_
                                   _hd123778124344_
                                   _tl123777124346_
                                   ___splice128102128103_
                                   _target123780124349_
                                   _tl123782124351_)
                                  (___match128141128142_
                                   _e123779124341_
                                   _hd123778124344_
                                   _tl123777124346_
                                   ___splice128102128103_
                                   _target123780124349_
                                   _tl123782124351_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123777124346_))
                              (let ((_e123894123949_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123777124346_))))
                                (let ((_tl123892123954_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123894123949_)))
                                      (_hd123893123952_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123894123949_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123893123952_))
                                      (let ((_e123897123957_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123893123952_))))
                                        (let ((_tl123895123962_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123897123957_)))
                                              (_hd123896123960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123897123957_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123896123960_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123896123960_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123895123962_))
                                                      (let ((_e123900123965_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123895123962_))))
                (let ((_tl123898123970_
                       (let () (declare (not safe)) (##cdr _e123900123965_)))
                      (_hd123899123968_
                       (let () (declare (not safe)) (##car _e123900123965_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123899123968_))
                      (let ((_e123903123973_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123899123968_))))
                        (let ((_tl123901123978_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123903123973_)))
                              (_hd123902123976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123903123973_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123902123976_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123902123976_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123901123978_))
                                      (let ((_e123906123981_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123901123978_))))
                                        (let ((_tl123904123986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123906123981_)))
                                              (_hd123905123984_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123906123981_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123904123986_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123898123970_))
                                                  (let ((_e123909123989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123898123970_))))
                                                    (let ((_tl123907123994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123909123989_)))
                                                          (_hd123908123992_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123909123989_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123908123992_))
                                                          (let ((_e123912123997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123908123992_))))
                    (let ((_tl123910124002_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123912123997_)))
                          (_hd123911124000_
                           (let ()
                             (declare (not safe))
                             (##car _e123912123997_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123911124000_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123911124000_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123910124002_))
                                  (let ((_e123915124005_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123910124002_))))
                                    (let ((_tl123913124010_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123915124005_)))
                                          (_hd123914124008_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123915124005_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123913124010_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123907123994_))
                                              (let ((_e123918124013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123907123994_))))
                                                (let ((_tl123916124018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123918124013_)))
                                                      (_hd123917124016_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123918124013_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123917124016_))
                                                      (let ((_e123921124021_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123917124016_))))
                (let ((_tl123919124026_
                       (let () (declare (not safe)) (##cdr _e123921124021_)))
                      (_hd123920124024_
                       (let () (declare (not safe)) (##car _e123921124021_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123920124024_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123920124024_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123919124026_))
                              (let ((_e123924124029_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123919124026_))))
                                (let ((_tl123922124034_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123924124029_)))
                                      (_hd123923124032_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123924124029_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123922124034_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123916124018_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123892123954_))
                                              (___match128239128240_
                                               _e123779124341_
                                               _hd123778124344_
                                               _tl123777124346_
                                               _e123894123949_
                                               _hd123893123952_
                                               _tl123892123954_
                                               _e123897123957_
                                               _hd123896123960_
                                               _tl123895123962_
                                               _e123900123965_
                                               _hd123899123968_
                                               _tl123898123970_
                                               _e123903123973_
                                               _hd123902123976_
                                               _tl123901123978_
                                               _e123906123981_
                                               _hd123905123984_
                                               _tl123904123986_
                                               _e123909123989_
                                               _hd123908123992_
                                               _tl123907123994_
                                               _e123912123997_
                                               _hd123911124000_
                                               _tl123910124002_
                                               _e123915124005_
                                               _hd123914124008_
                                               _tl123913124010_
                                               _e123918124013_
                                               _hd123917124016_
                                               _tl123916124018_
                                               _e123921124021_
                                               _hd123920124024_
                                               _tl123919124026_
                                               _e123924124029_
                                               _hd123923124032_
                                               _tl123922124034_)
                                              (___kont128114128115_))
                                          (___kont128114128115_))
                                      (___kont128114128115_))))
                              (___kont128114128115_))
                          (___kont128114128115_))
                      (___kont128114128115_))))
              (___kont128114128115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont128114128115_))
                                          (___kont128114128115_))))
                                  (___kont128114128115_))
                              (___kont128114128115_))
                          (___kont128114128115_))))
                  (___kont128114128115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128114128115_))
                                              (___kont128114128115_))))
                                      (___kont128114128115_))
                                  (___kont128114128115_))
                              (___kont128114128115_))))
                      (___kont128114128115_))))
              (___kont128114128115_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128114128115_))
                                              (___kont128114128115_))))
                                      (___kont128114128115_))))
                              (___kont128114128115_)))))
                  (___kont128114128115_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form123235_)
        (let* ((___stx128242128243_ _form123235_)
               (_g123239123363_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128242128243_)))))
          (let ((___kont128244128245_
                 (lambda (_L123733_ _L123734_ _L123735_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123734_))))
                (___kont128250128251_
                 (lambda (_L123581_ _L123582_ _L123583_ _L123584_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123581_))))
                (___kont128254128255_
                 (lambda (_L123448_ _L123449_ _L123450_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123448_)))))
            (let* ((___match128351128352_
                    (lambda (_e123331123368_
                             _hd123330123371_
                             _tl123329123373_
                             _e123334123376_
                             _hd123333123379_
                             _tl123332123381_
                             _e123337123384_
                             _hd123336123387_
                             _tl123335123389_
                             _e123340123392_
                             _hd123339123395_
                             _tl123338123397_
                             _e123343123400_
                             _hd123342123403_
                             _tl123341123405_
                             _e123346123408_
                             _hd123345123411_
                             _tl123344123413_
                             _e123349123416_
                             _hd123348123419_
                             _tl123347123421_
                             _e123352123424_
                             _hd123351123427_
                             _tl123350123429_
                             _e123355123432_
                             _hd123354123435_
                             _tl123353123437_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123347123421_))
                          (let ((_e123358123440_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123347123421_))))
                            (let ((_tl123356123445_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123358123440_)))
                                  (_hd123357123443_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123358123440_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123356123445_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123332123381_))
                                      (___kont128254128255_
                                       _hd123354123435_
                                       _hd123345123411_
                                       _hd123330123371_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123239123363_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g123239123363_)))))
                          (let () (declare (not safe)) (_g123239123363_)))))
                   (___match128281128282_
                    (lambda (_e123292123485_
                             _hd123291123488_
                             _tl123290123490_
                             ___splice128252128253_
                             _target123293123493_
                             _tl123295123495_)
                      (letrec ((_loop123296123498_
                                (lambda (_hd123294123501_ _arg123300123503_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123294123501_))
                                      (let ((_e123297123506_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123294123501_))))
                                        (let ((_lp-tl123299123511_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123297123506_)))
                                              (_lp-hd123298123509_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123297123506_))))
                                          (let ((__tmp129525
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123298123509_
                                                         _arg123300123503_))))
                                            (declare (not safe))
                                            (_loop123296123498_
                                             _lp-tl123299123511_
                                             __tmp129525))))
                                      (let ((_arg123301123514_
                                             (reverse _arg123300123503_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123290123490_))
                                            (let ((_e123304123517_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123290123490_))))
                                              (let ((_tl123302123522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123304123517_)))
                                                    (_hd123303123520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123304123517_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123303123520_))
                                                    (let ((_e123307123525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123303123520_))))
                                                      (let ((_tl123305123530_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123307123525_)))
                    (_hd123306123528_
                     (let () (declare (not safe)) (##car _e123307123525_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123306123528_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123306123528_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123305123530_))
                            (let ((_e123310123533_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123305123530_))))
                              (let ((_tl123308123538_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123310123533_)))
                                    (_hd123309123536_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123310123533_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123309123536_))
                                    (let ((_e123313123541_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123309123536_))))
                                      (let ((_tl123311123546_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123313123541_)))
                                            (_hd123312123544_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123313123541_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123312123544_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123312123544_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123311123546_))
                                                    (let ((_e123316123549_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123311123546_))))
                                                      (let ((_tl123314123554_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123316123549_)))
                    (_hd123315123552_
                     (let () (declare (not safe)) (##car _e123316123549_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123314123554_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123308123538_))
                        (let ((_e123319123557_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123308123538_))))
                          (let ((_tl123317123562_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123319123557_)))
                                (_hd123318123560_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123319123557_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123318123560_))
                                (let ((_e123322123565_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123318123560_))))
                                  (let ((_tl123320123570_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123322123565_)))
                                        (_hd123321123568_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123322123565_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123321123568_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123321123568_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123320123570_))
                                                (let ((_e123325123573_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123320123570_))))
                                                  (let ((_tl123323123578_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123325123573_)))
                                                        (_hd123324123576_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123325123573_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123323123578_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl123302123522_))
                                                            (___kont128250128251_
                                                             _hd123324123576_
                                                             _hd123315123552_
                                                             _tl123295123495_
                                                             _arg123301123514_)
                                                            (___match128351128352_
                                                             _e123292123485_
                                                             _hd123291123488_
                                                             _tl123290123490_
                                                             _e123304123517_
                                                             _hd123303123520_
                                                             _tl123302123522_
                                                             _e123307123525_
                                                             _hd123306123528_
                                                             _tl123305123530_
                                                             _e123310123533_
                                                             _hd123309123536_
                                                             _tl123308123538_
                                                             _e123313123541_
                                                             _hd123312123544_
                                                             _tl123311123546_
                                                             _e123316123549_
                                                             _hd123315123552_
                                                             _tl123314123554_
                                                             _e123319123557_
                                                             _hd123318123560_
                                                             _tl123317123562_
                                                             _e123322123565_
                                                             _hd123321123568_
                                                             _tl123320123570_
                                                             _e123325123573_
                                                             _hd123324123576_
                                                             _tl123323123578_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g123239123363_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g123239123363_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g123239123363_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g123239123363_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g123239123363_)))))
                        (let () (declare (not safe)) (_g123239123363_)))
                    (let () (declare (not safe)) (_g123239123363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g123239123363_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g123239123363_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g123239123363_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g123239123363_)))))
                            (let () (declare (not safe)) (_g123239123363_)))
                        (let () (declare (not safe)) (_g123239123363_)))
                    (let () (declare (not safe)) (_g123239123363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g123239123363_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g123239123363_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop123296123498_ _target123293123493_ '())))))
                   (___match128269128270_
                    (lambda (_e123246123621_
                             _hd123245123624_
                             _tl123244123626_
                             ___splice128246128247_
                             _target123247123629_
                             _tl123249123631_)
                      (letrec ((_loop123250123634_
                                (lambda (_hd123248123637_ _arg123254123639_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123248123637_))
                                      (let ((_e123251123642_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123248123637_))))
                                        (let ((_lp-tl123253123647_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123251123642_)))
                                              (_lp-hd123252123645_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123251123642_))))
                                          (let ((__tmp129527
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123252123645_
                                                         _arg123254123639_))))
                                            (declare (not safe))
                                            (_loop123250123634_
                                             _lp-tl123253123647_
                                             __tmp129527))))
                                      (let ((_arg123255123650_
                                             (reverse _arg123254123639_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123244123626_))
                                            (let ((_e123258123653_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123244123626_))))
                                              (let ((_tl123256123658_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123258123653_)))
                                                    (_hd123257123656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123258123653_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123257123656_))
                                                    (let ((_e123261123661_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123257123656_))))
                                                      (let ((_tl123259123666_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123261123661_)))
                    (_hd123260123664_
                     (let () (declare (not safe)) (##car _e123261123661_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123260123664_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123260123664_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123259123666_))
                            (let ((_e123264123669_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123259123666_))))
                              (let ((_tl123262123674_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123264123669_)))
                                    (_hd123263123672_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123264123669_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123263123672_))
                                    (let ((_e123267123677_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123263123672_))))
                                      (let ((_tl123265123682_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123267123677_)))
                                            (_hd123266123680_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123267123677_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123266123680_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123266123680_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123265123682_))
                                                    (let ((_e123270123685_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123265123682_))))
                                                      (let ((_tl123268123690_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123270123685_)))
                    (_hd123269123688_
                     (let () (declare (not safe)) (##car _e123270123685_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123268123690_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123262123674_))
                        (let ((___splice128248128249_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123262123674_
                                  '0))))
                          (let ((_tl123273123695_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128248128249_ '1)))
                                (_target123271123693_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice128248128249_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123273123695_))
                                (letrec ((_loop123274123698_
                                          (lambda (_hd123272123701_
                                                   _xarg123278123703_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123272123701_))
                                                (let ((_e123275123706_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123272123701_))))
                                                  (let ((_lp-tl123277123711_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123275123706_)))
                                                        (_lp-hd123276123709_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123275123706_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123276123709_))
                                                        (let ((_e123282123714_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123276123709_))))
                  (let ((_tl123280123719_
                         (let () (declare (not safe)) (##cdr _e123282123714_)))
                        (_hd123281123717_
                         (let ()
                           (declare (not safe))
                           (##car _e123282123714_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123281123717_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123281123717_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123280123719_))
                                (let ((_e123285123722_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123280123719_))))
                                  (let ((_tl123283123727_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123285123722_)))
                                        (_hd123284123725_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123285123722_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123283123727_))
                                        (let ((__tmp129526
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123284123725_
                                                       _xarg123278123703_))))
                                          (declare (not safe))
                                          (_loop123274123698_
                                           _lp-tl123277123711_
                                           __tmp129526))
                                        (___match128281128282_
                                         _e123246123621_
                                         _hd123245123624_
                                         _tl123244123626_
                                         ___splice128246128247_
                                         _target123247123629_
                                         _tl123249123631_))))
                                (___match128281128282_
                                 _e123246123621_
                                 _hd123245123624_
                                 _tl123244123626_
                                 ___splice128246128247_
                                 _target123247123629_
                                 _tl123249123631_))
                            (___match128281128282_
                             _e123246123621_
                             _hd123245123624_
                             _tl123244123626_
                             ___splice128246128247_
                             _target123247123629_
                             _tl123249123631_))
                        (___match128281128282_
                         _e123246123621_
                         _hd123245123624_
                         _tl123244123626_
                         ___splice128246128247_
                         _target123247123629_
                         _tl123249123631_))))
                (___match128281128282_
                 _e123246123621_
                 _hd123245123624_
                 _tl123244123626_
                 ___splice128246128247_
                 _target123247123629_
                 _tl123249123631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123279123730_
                                                       (reverse _xarg123278123703_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123256123658_))
                                                      (___kont128244128245_
                                                       _xarg123279123730_
                                                       _hd123269123688_
                                                       _arg123255123650_)
                                                      (___match128281128282_
                                                       _e123246123621_
                                                       _hd123245123624_
                                                       _tl123244123626_
                                                       ___splice128246128247_
                                                       _target123247123629_
                                                       _tl123249123631_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop123274123698_
                                     _target123271123693_
                                     '())))
                                (___match128281128282_
                                 _e123246123621_
                                 _hd123245123624_
                                 _tl123244123626_
                                 ___splice128246128247_
                                 _target123247123629_
                                 _tl123249123631_))))
                        (___match128281128282_
                         _e123246123621_
                         _hd123245123624_
                         _tl123244123626_
                         ___splice128246128247_
                         _target123247123629_
                         _tl123249123631_))
                    (___match128281128282_
                     _e123246123621_
                     _hd123245123624_
                     _tl123244123626_
                     ___splice128246128247_
                     _target123247123629_
                     _tl123249123631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128281128282_
                                                     _e123246123621_
                                                     _hd123245123624_
                                                     _tl123244123626_
                                                     ___splice128246128247_
                                                     _target123247123629_
                                                     _tl123249123631_))
                                                (___match128281128282_
                                                 _e123246123621_
                                                 _hd123245123624_
                                                 _tl123244123626_
                                                 ___splice128246128247_
                                                 _target123247123629_
                                                 _tl123249123631_))
                                            (___match128281128282_
                                             _e123246123621_
                                             _hd123245123624_
                                             _tl123244123626_
                                             ___splice128246128247_
                                             _target123247123629_
                                             _tl123249123631_))))
                                    (___match128281128282_
                                     _e123246123621_
                                     _hd123245123624_
                                     _tl123244123626_
                                     ___splice128246128247_
                                     _target123247123629_
                                     _tl123249123631_))))
                            (___match128281128282_
                             _e123246123621_
                             _hd123245123624_
                             _tl123244123626_
                             ___splice128246128247_
                             _target123247123629_
                             _tl123249123631_))
                        (___match128281128282_
                         _e123246123621_
                         _hd123245123624_
                         _tl123244123626_
                         ___splice128246128247_
                         _target123247123629_
                         _tl123249123631_))
                    (___match128281128282_
                     _e123246123621_
                     _hd123245123624_
                     _tl123244123626_
                     ___splice128246128247_
                     _target123247123629_
                     _tl123249123631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128281128282_
                                                     _e123246123621_
                                                     _hd123245123624_
                                                     _tl123244123626_
                                                     ___splice128246128247_
                                                     _target123247123629_
                                                     _tl123249123631_))))
                                            (___match128281128282_
                                             _e123246123621_
                                             _hd123245123624_
                                             _tl123244123626_
                                             ___splice128246128247_
                                             _target123247123629_
                                             _tl123249123631_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123250123634_ _target123247123629_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128242128243_))
                  (let ((_e123246123621_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128242128243_))))
                    (let ((_tl123244123626_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123246123621_)))
                          (_hd123245123624_
                           (let ()
                             (declare (not safe))
                             (##car _e123246123621_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123245123624_))
                          (let ((___splice128246128247_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123245123624_
                                    '0))))
                            (let ((_tl123249123631_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128246128247_ '1)))
                                  (_target123247123629_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128246128247_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123249123631_))
                                  (___match128269128270_
                                   _e123246123621_
                                   _hd123245123624_
                                   _tl123244123626_
                                   ___splice128246128247_
                                   _target123247123629_
                                   _tl123249123631_)
                                  (___match128281128282_
                                   _e123246123621_
                                   _hd123245123624_
                                   _tl123244123626_
                                   ___splice128246128247_
                                   _target123247123629_
                                   _tl123249123631_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123244123626_))
                              (let ((_e123334123376_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123244123626_))))
                                (let ((_tl123332123381_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123334123376_)))
                                      (_hd123333123379_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123334123376_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123333123379_))
                                      (let ((_e123337123384_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123333123379_))))
                                        (let ((_tl123335123389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123337123384_)))
                                              (_hd123336123387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123337123384_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123336123387_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123336123387_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123335123389_))
                                                      (let ((_e123340123392_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123335123389_))))
                (let ((_tl123338123397_
                       (let () (declare (not safe)) (##cdr _e123340123392_)))
                      (_hd123339123395_
                       (let () (declare (not safe)) (##car _e123340123392_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123339123395_))
                      (let ((_e123343123400_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123339123395_))))
                        (let ((_tl123341123405_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123343123400_)))
                              (_hd123342123403_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123343123400_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123342123403_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123342123403_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123341123405_))
                                      (let ((_e123346123408_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123341123405_))))
                                        (let ((_tl123344123413_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123346123408_)))
                                              (_hd123345123411_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123346123408_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123344123413_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123338123397_))
                                                  (let ((_e123349123416_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123338123397_))))
                                                    (let ((_tl123347123421_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123349123416_)))
                                                          (_hd123348123419_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123349123416_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123348123419_))
                                                          (let ((_e123352123424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123348123419_))))
                    (let ((_tl123350123429_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123352123424_)))
                          (_hd123351123427_
                           (let ()
                             (declare (not safe))
                             (##car _e123352123424_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123351123427_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123351123427_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123350123429_))
                                  (let ((_e123355123432_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123350123429_))))
                                    (let ((_tl123353123437_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123355123432_)))
                                          (_hd123354123435_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123355123432_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123353123437_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123347123421_))
                                              (let ((_e123358123440_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123347123421_))))
                                                (let ((_tl123356123445_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123358123440_)))
                                                      (_hd123357123443_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123358123440_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123356123445_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123332123381_))
                                                          (___kont128254128255_
                                                           _hd123354123435_
                                                           _hd123345123411_
                                                           _hd123245123624_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g123239123363_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g123239123363_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g123239123363_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g123239123363_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g123239123363_)))
                              (let () (declare (not safe)) (_g123239123363_)))
                          (let () (declare (not safe)) (_g123239123363_)))))
                  (let () (declare (not safe)) (_g123239123363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g123239123363_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g123239123363_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123239123363_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g123239123363_)))
                              (let ()
                                (declare (not safe))
                                (_g123239123363_)))))
                      (let () (declare (not safe)) (_g123239123363_)))))
              (let () (declare (not safe)) (_g123239123363_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g123239123363_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g123239123363_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123239123363_)))))
                              (let ()
                                (declare (not safe))
                                (_g123239123363_))))))
                  (let () (declare (not safe)) (_g123239123363_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form123039_)
        (let* ((_g123041123055_
                (lambda (_g123042123052_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123042123052_))))
               (_g123040123232_
                (lambda (_g123042123058_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123042123058_))
                      (let ((_e123047123060_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123042123058_))))
                        (let ((_hd123046123063_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123047123060_)))
                              (_tl123045123065_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123047123060_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123045123065_))
                              (let ((_e123050123068_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123045123065_))))
                                (let ((_hd123049123071_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123050123068_)))
                                      (_tl123048123073_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123050123068_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123048123073_))
                                      ((lambda (_L123076_ _L123077_)
                                         (let* ((___stx128364128365_ _L123077_)
                                                (_g123092123120_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx128364128365_)))))
                                           (let ((___kont128366128367_
                                                  (lambda (_L123211_)
                                                    (length (let ((__tmp129528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g123221123224_ _g123222123226_)
                             (let ()
                               (declare (not safe))
                               (cons _g123221123224_ _g123222123226_)))))
                      (declare (not safe))
                      (foldr1 __tmp129528 '() _L123211_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont128370128371_
                                                  (lambda (_L123162_ _L123163_)
                                                    (let ((__tmp129529
                                                           (length (let ((__tmp129530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g123174123177_ _g123175123179_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g123174123177_
                                            _g123175123179_)))))
                             (declare (not safe))
                             (foldr1 __tmp129530 '() _L123163_)))))
              (declare (not safe))
              (cons __tmp129529 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont128374128375_
                                                  (lambda (_L123125_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match128389128390_
                                                     (lambda (___splice128372128373_
                                                              _target123106123138_
                                                              _tl123108123140_)
                                                       (letrec ((_loop123109123143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123107123146_ _arg123113123148_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123107123146_))
                               (let ((_e123110123151_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123107123146_))))
                                 (let ((_lp-tl123112123156_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123110123151_)))
                                       (_lp-hd123111123154_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123110123151_))))
                                   (let ((__tmp129531
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123111123154_
                                                  _arg123113123148_))))
                                     (declare (not safe))
                                     (_loop123109123143_
                                      _lp-tl123112123156_
                                      __tmp129531))))
                               (let ((_arg123114123159_
                                      (reverse _arg123113123148_)))
                                 (___kont128370128371_
                                  _tl123108123140_
                                  _arg123114123159_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123109123143_ _target123106123138_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match128383128384_
                                                     (lambda (___splice128368128369_
                                                              _target123095123187_
                                                              _tl123097123189_)
                                                       (letrec ((_loop123098123192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd123096123195_ _arg123102123197_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd123096123195_))
                               (let ((_e123099123200_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd123096123195_))))
                                 (let ((_lp-tl123101123205_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e123099123200_)))
                                       (_lp-hd123100123203_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e123099123200_))))
                                   (let ((__tmp129532
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd123100123203_
                                                  _arg123102123197_))))
                                     (declare (not safe))
                                     (_loop123098123192_
                                      _lp-tl123101123205_
                                      __tmp129532))))
                               (let ((_arg123103123208_
                                      (reverse _arg123102123197_)))
                                 (___kont128366128367_ _arg123103123208_))))))
                 (let ()
                   (declare (not safe))
                   (_loop123098123192_ _target123095123187_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx128364128365_))
                                                   (let ((___splice128368128369_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx128364128365_
                                                             '0))))
                                                     (let ((_tl123097123189_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice128368128369_
                                                               '1)))
                                                           (_target123095123187_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice128368128369_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl123097123189_))
                                                           (___match128383128384_
                                                            ___splice128368128369_
                                                            _target123095123187_
                                                            _tl123097123189_)
                                                           (___match128389128390_
                                                            ___splice128368128369_
                                                            _target123095123187_
                                                            _tl123097123189_))))
                                                   (___kont128374128375_
                                                    ___stx128364128365_))))))
                                       _hd123049123071_
                                       _hd123046123063_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123041123055_ _g123042123058_)))))
                              (let ()
                                (declare (not safe))
                                (_g123041123055_ _g123042123058_)))))
                      (let ()
                        (declare (not safe))
                        (_g123041123055_ _g123042123058_))))))
          (declare (not safe))
          (_g123040123232_ _form123039_))))
    (define gxc#lambda-expr?
      (lambda (_expr122992_)
        (let* ((___stx128392128393_ _expr122992_)
               (_g122995123005_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128392128393_)))))
          (let ((___kont128394128395_ (lambda (_L123025_) '#t))
                (___kont128396128397_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128392128393_))
                (let ((_e123000123017_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128392128393_))))
                  (let ((_tl122998123022_
                         (let () (declare (not safe)) (##cdr _e123000123017_)))
                        (_hd122999123020_
                         (let ()
                           (declare (not safe))
                           (##car _e123000123017_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122999123020_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd122999123020_))
                            (___kont128394128395_ _tl122998123022_)
                            (___kont128396128397_))
                        (___kont128396128397_))))
                (___kont128396128397_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr122945_)
        (let* ((___stx128410128411_ _expr122945_)
               (_g122948122958_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128410128411_)))))
          (let ((___kont128412128413_ (lambda (_L122978_) '#t))
                (___kont128414128415_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128410128411_))
                (let ((_e122953122970_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128410128411_))))
                  (let ((_tl122951122975_
                         (let () (declare (not safe)) (##cdr _e122953122970_)))
                        (_hd122952122973_
                         (let ()
                           (declare (not safe))
                           (##car _e122953122970_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122952122973_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd122952122973_))
                            (___kont128412128413_ _tl122951122975_)
                            (___kont128414128415_))
                        (___kont128414128415_))))
                (___kont128414128415_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122814_)
        (let* ((___stx128428128429_ _expr122814_)
               (_g122817122847_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128428128429_)))))
          (let ((___kont128430128431_
                 (lambda (_L122915_ _L122916_ _L122917_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122917_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122916_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122915_))
                           '#f)
                       '#f)))
                (___kont128432128433_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128428128429_))
                (let ((_e122824122859_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128428128429_))))
                  (let ((_tl122822122864_
                         (let () (declare (not safe)) (##cdr _e122824122859_)))
                        (_hd122823122862_
                         (let ()
                           (declare (not safe))
                           (##car _e122824122859_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122823122862_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122823122862_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122822122864_))
                                (let ((_e122827122867_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122822122864_))))
                                  (let ((_tl122825122872_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122827122867_)))
                                        (_hd122826122870_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122827122867_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122826122870_))
                                        (let ((_e122830122875_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122826122870_))))
                                          (let ((_tl122828122880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122830122875_)))
                                                (_hd122829122878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122830122875_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122829122878_))
                                                (let ((_e122833122883_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122829122878_))))
                                                  (let ((_tl122831122888_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122833122883_)))
                                                        (_hd122832122886_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122833122883_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122832122886_))
                                                        (let ((_e122836122891_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122832122886_))))
                  (let ((_tl122834122896_
                         (let () (declare (not safe)) (##cdr _e122836122891_)))
                        (_hd122835122894_
                         (let ()
                           (declare (not safe))
                           (##car _e122836122891_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122834122896_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122831122888_))
                            (let ((_e122839122899_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122831122888_))))
                              (let ((_tl122837122904_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122839122899_)))
                                    (_hd122838122902_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122839122899_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122837122904_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122828122880_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122825122872_))
                                            (let ((_e122842122907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122825122872_))))
                                              (let ((_tl122840122912_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122842122907_)))
                                                    (_hd122841122910_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122842122907_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122840122912_))
                                                    (___kont128430128431_
                                                     _hd122841122910_
                                                     _hd122838122902_
                                                     _hd122835122894_)
                                                    (___kont128432128433_))))
                                            (___kont128432128433_))
                                        (___kont128432128433_))
                                    (___kont128432128433_))))
                            (___kont128432128433_))
                        (___kont128432128433_))))
                (___kont128432128433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128432128433_))))
                                        (___kont128432128433_))))
                                (___kont128432128433_))
                            (___kont128432128433_))
                        (___kont128432128433_))))
                (___kont128432128433_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr122139_)
        (let* ((___stx128490128491_ _expr122139_)
               (_g122142122300_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128490128491_)))))
          (let ((___kont128492128493_
                 (lambda (_L122688_
                          _L122689_
                          _L122690_
                          _L122691_
                          _L122692_
                          _L122693_
                          _L122694_
                          _L122695_
                          _L122696_
                          _L122697_
                          _L122698_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122695_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122691_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122690_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122698_
                                      _L122689_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122697_
                                          _L122694_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122692_
                                              _L122688_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122696_
                                              _L122693_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont128494128495_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128490128491_))
                (let ((_e122157122312_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128490128491_))))
                  (let ((_tl122155122317_
                         (let () (declare (not safe)) (##cdr _e122157122312_)))
                        (_hd122156122315_
                         (let ()
                           (declare (not safe))
                           (##car _e122157122312_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122156122315_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122156122315_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122155122317_))
                                (let ((_e122160122320_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122155122317_))))
                                  (let ((_tl122158122325_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122160122320_)))
                                        (_hd122159122323_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122160122320_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122159122323_))
                                        (let ((_e122163122328_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122159122323_))))
                                          (let ((_tl122161122333_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122163122328_)))
                                                (_hd122162122331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122163122328_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122162122331_))
                                                (let ((_e122166122336_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122162122331_))))
                                                  (let ((_tl122164122341_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122166122336_)))
                                                        (_hd122165122339_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122166122336_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122165122339_))
                                                        (let ((_e122169122344_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122165122339_))))
                  (let ((_tl122167122349_
                         (let () (declare (not safe)) (##cdr _e122169122344_)))
                        (_hd122168122347_
                         (let ()
                           (declare (not safe))
                           (##car _e122169122344_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122167122349_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122164122341_))
                            (let ((_e122172122352_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122164122341_))))
                              (let ((_tl122170122357_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122172122352_)))
                                    (_hd122171122355_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122172122352_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122171122355_))
                                    (let ((_e122175122360_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122171122355_))))
                                      (let ((_tl122173122365_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122175122360_)))
                                            (_hd122174122363_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122175122360_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122174122363_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd122174122363_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122173122365_))
                                                    (let ((_e122178122368_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122173122365_))))
                                                      (let ((_tl122176122373_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122178122368_)))
                    (_hd122177122371_
                     (let () (declare (not safe)) (##car _e122178122368_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd122177122371_))
                    (let ((_e122181122376_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd122177122371_))))
                      (let ((_tl122179122381_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122181122376_)))
                            (_hd122180122379_
                             (let ()
                               (declare (not safe))
                               (##car _e122181122376_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd122180122379_))
                            (let ((_e122184122384_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd122180122379_))))
                              (let ((_tl122182122389_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122184122384_)))
                                    (_hd122183122387_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122184122384_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122183122387_))
                                    (let ((_e122187122392_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122183122387_))))
                                      (let ((_tl122185122397_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122187122392_)))
                                            (_hd122186122395_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122187122392_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122185122397_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122182122389_))
                                                (let ((_e122190122400_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122182122389_))))
                                                  (let ((_tl122188122405_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122190122400_)))
                                                        (_hd122189122403_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122190122400_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122188122405_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122179122381_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl122176122373_))
                        (let ((_e122193122408_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122176122373_))))
                          (let ((_tl122191122413_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122193122408_)))
                                (_hd122192122411_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122193122408_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122192122411_))
                                (let ((_e122196122416_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122192122411_))))
                                  (let ((_tl122194122421_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122196122416_)))
                                        (_hd122195122419_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122196122416_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122195122419_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd122195122419_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122194122421_))
                                                (let ((_e122199122424_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122194122421_))))
                                                  (let ((_tl122197122429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122199122424_)))
                                                        (_hd122198122427_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122199122424_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122198122427_))
                                                        (let ((_e122202122432_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122198122427_))))
                  (let ((_tl122200122437_
                         (let () (declare (not safe)) (##cdr _e122202122432_)))
                        (_hd122201122435_
                         (let ()
                           (declare (not safe))
                           (##car _e122202122432_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122197122429_))
                        (let ((_e122205122440_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122197122429_))))
                          (let ((_tl122203122445_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122205122440_)))
                                (_hd122204122443_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122205122440_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122204122443_))
                                (let ((_e122208122448_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122204122443_))))
                                  (let ((_tl122206122453_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122208122448_)))
                                        (_hd122207122451_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122208122448_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122207122451_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd122207122451_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122206122453_))
                                                (let ((_e122211122456_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122206122453_))))
                                                  (let ((_tl122209122461_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122211122456_)))
                                                        (_hd122210122459_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122211122456_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122210122459_))
                                                        (let ((_e122214122464_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122210122459_))))
                  (let ((_tl122212122469_
                         (let () (declare (not safe)) (##cdr _e122214122464_)))
                        (_hd122213122467_
                         (let ()
                           (declare (not safe))
                           (##car _e122214122464_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122213122467_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122213122467_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122212122469_))
                                (let ((_e122217122472_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122212122469_))))
                                  (let ((_tl122215122477_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122217122472_)))
                                        (_hd122216122475_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122217122472_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122215122477_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122209122461_))
                                            (let ((_e122220122480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122209122461_))))
                                              (let ((_tl122218122485_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122220122480_)))
                                                    (_hd122219122483_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122220122480_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122219122483_))
                                                    (let ((_e122223122488_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122219122483_))))
                                                      (let ((_tl122221122493_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122223122488_)))
                    (_hd122222122491_
                     (let () (declare (not safe)) (##car _e122223122488_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122222122491_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122222122491_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122221122493_))
                            (let ((_e122226122496_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122221122493_))))
                              (let ((_tl122224122501_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122226122496_)))
                                    (_hd122225122499_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122226122496_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122224122501_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122218122485_))
                                        (let ((_e122229122504_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122218122485_))))
                                          (let ((_tl122227122509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122229122504_)))
                                                (_hd122228122507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122229122504_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122228122507_))
                                                (let ((_e122232122512_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122228122507_))))
                                                  (let ((_tl122230122517_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122232122512_)))
                                                        (_hd122231122515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122232122512_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd122231122515_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd122231122515_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl122230122517_))
                        (let ((_e122235122520_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122230122517_))))
                          (let ((_tl122233122525_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122235122520_)))
                                (_hd122234122523_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122235122520_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122233122525_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122203122445_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122191122413_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122170122357_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122161122333_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122158122325_))
                                                    (let ((_e122238122528_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122158122325_))))
                                                      (let ((_tl122236122533_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122238122528_)))
                    (_hd122237122531_
                     (let () (declare (not safe)) (##car _e122238122528_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd122237122531_))
                    (let ((_e122241122536_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd122237122531_))))
                      (let ((_tl122239122541_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122241122536_)))
                            (_hd122240122539_
                             (let ()
                               (declare (not safe))
                               (##car _e122241122536_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd122240122539_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd122240122539_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl122239122541_))
                                    (let ((_e122244122544_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl122239122541_))))
                                      (let ((_tl122242122549_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122244122544_)))
                                            (_hd122243122547_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122244122544_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122242122549_))
                                            (let ((_e122247122552_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122242122549_))))
                                              (let ((_tl122245122557_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122247122552_)))
                                                    (_hd122246122555_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122247122552_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122246122555_))
                                                    (let ((_e122250122560_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122246122555_))))
                                                      (let ((_tl122248122565_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122250122560_)))
                    (_hd122249122563_
                     (let () (declare (not safe)) (##car _e122250122560_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122249122563_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122249122563_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122248122565_))
                            (let ((_e122253122568_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122248122565_))))
                              (let ((_tl122251122573_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122253122568_)))
                                    (_hd122252122571_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122253122568_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122252122571_))
                                    (let ((_e122256122576_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122252122571_))))
                                      (let ((_tl122254122581_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122256122576_)))
                                            (_hd122255122579_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122256122576_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122255122579_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122255122579_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122254122581_))
                                                    (let ((_e122259122584_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122254122581_))))
                                                      (let ((_tl122257122589_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122259122584_)))
                    (_hd122258122587_
                     (let () (declare (not safe)) (##car _e122259122584_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122257122589_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122251122573_))
                        (let ((_e122262122592_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122251122573_))))
                          (let ((_tl122260122597_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122262122592_)))
                                (_hd122261122595_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122262122592_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122261122595_))
                                (let ((_e122265122600_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122261122595_))))
                                  (let ((_tl122263122605_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122265122600_)))
                                        (_hd122264122603_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122265122600_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122264122603_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122264122603_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122263122605_))
                                                (let ((_e122268122608_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122263122605_))))
                                                  (let ((_tl122266122613_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122268122608_)))
                                                        (_hd122267122611_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122268122608_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122266122613_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl122260122597_))
                                                            (let ((_e122271122616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl122260122597_))))
                      (let ((_tl122269122621_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122271122616_)))
                            (_hd122270122619_
                             (let ()
                               (declare (not safe))
                               (##car _e122271122616_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd122270122619_))
                            (let ((_e122274122624_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd122270122619_))))
                              (let ((_tl122272122629_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122274122624_)))
                                    (_hd122273122627_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122274122624_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd122273122627_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd122273122627_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122272122629_))
                                            (let ((_e122277122632_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122272122629_))))
                                              (let ((_tl122275122637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122277122632_)))
                                                    (_hd122276122635_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122277122632_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122275122637_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl122269122621_))
                                                        (let ((_e122280122640_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl122269122621_))))
                  (let ((_tl122278122645_
                         (let () (declare (not safe)) (##cdr _e122280122640_)))
                        (_hd122279122643_
                         (let ()
                           (declare (not safe))
                           (##car _e122280122640_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd122279122643_))
                        (let ((_e122283122648_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd122279122643_))))
                          (let ((_tl122281122653_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122283122648_)))
                                (_hd122282122651_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122283122648_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd122282122651_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd122282122651_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122281122653_))
                                        (let ((_e122286122656_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122281122653_))))
                                          (let ((_tl122284122661_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122286122656_)))
                                                (_hd122285122659_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122286122656_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122284122661_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122278122645_))
                                                    (let ((_e122289122664_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122278122645_))))
                                                      (let ((_tl122287122669_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122289122664_)))
                    (_hd122288122667_
                     (let () (declare (not safe)) (##car _e122289122664_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd122288122667_))
                    (let ((_e122292122672_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd122288122667_))))
                      (let ((_tl122290122677_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122292122672_)))
                            (_hd122291122675_
                             (let ()
                               (declare (not safe))
                               (##car _e122292122672_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd122291122675_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd122291122675_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl122290122677_))
                                    (let ((_e122295122680_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl122290122677_))))
                                      (let ((_tl122293122685_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122295122680_)))
                                            (_hd122294122683_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122295122680_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122293122685_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122287122669_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122245122557_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122236122533_))
                                                        (___kont128492128493_
                                                         _hd122294122683_
                                                         _hd122285122659_
                                                         _hd122267122611_
                                                         _hd122258122587_
                                                         _hd122243122547_
                                                         _hd122234122523_
                                                         _hd122225122499_
                                                         _hd122216122475_
                                                         _hd122201122435_
                                                         _hd122186122395_
                                                         _hd122168122347_)
                                                        (___kont128494128495_))
                                                    (___kont128494128495_))
                                                (___kont128494128495_))
                                            (___kont128494128495_))))
                                    (___kont128494128495_))
                                (___kont128494128495_))
                            (___kont128494128495_))))
                    (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128494128495_))
                                                (___kont128494128495_))))
                                        (___kont128494128495_))
                                    (___kont128494128495_))
                                (___kont128494128495_))))
                        (___kont128494128495_))))
                (___kont128494128495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128494128495_))))
                                            (___kont128494128495_))
                                        (___kont128494128495_))
                                    (___kont128494128495_))))
                            (___kont128494128495_))))
                    (___kont128494128495_))
                (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128494128495_))
                                            (___kont128494128495_))
                                        (___kont128494128495_))))
                                (___kont128494128495_))))
                        (___kont128494128495_))
                    (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128494128495_))
                                                (___kont128494128495_))
                                            (___kont128494128495_))))
                                    (___kont128494128495_))))
                            (___kont128494128495_))
                        (___kont128494128495_))
                    (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128494128495_))))
                                            (___kont128494128495_))))
                                    (___kont128494128495_))
                                (___kont128494128495_))
                            (___kont128494128495_))))
                    (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128494128495_))
                                                (___kont128494128495_))
                                            (___kont128494128495_))
                                        (___kont128494128495_))
                                    (___kont128494128495_))
                                (___kont128494128495_))))
                        (___kont128494128495_))
                    (___kont128494128495_))
                (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128494128495_))))
                                        (___kont128494128495_))
                                    (___kont128494128495_))))
                            (___kont128494128495_))
                        (___kont128494128495_))
                    (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128494128495_))))
                                            (___kont128494128495_))
                                        (___kont128494128495_))))
                                (___kont128494128495_))
                            (___kont128494128495_))
                        (___kont128494128495_))))
                (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128494128495_))
                                            (___kont128494128495_))
                                        (___kont128494128495_))))
                                (___kont128494128495_))))
                        (___kont128494128495_))))
                (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128494128495_))
                                            (___kont128494128495_))
                                        (___kont128494128495_))))
                                (___kont128494128495_))))
                        (___kont128494128495_))
                    (___kont128494128495_))
                (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128494128495_))
                                            (___kont128494128495_))))
                                    (___kont128494128495_))))
                            (___kont128494128495_))))
                    (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128494128495_))
                                                (___kont128494128495_))
                                            (___kont128494128495_))))
                                    (___kont128494128495_))))
                            (___kont128494128495_))
                        (___kont128494128495_))))
                (___kont128494128495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128494128495_))))
                                        (___kont128494128495_))))
                                (___kont128494128495_))
                            (___kont128494128495_))
                        (___kont128494128495_))))
                (___kont128494128495_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121881_ _id121882_ _clauses121883_ _gensym?121884_)
        (let _lp121886_ ((_rest121888_ _clauses121883_)
                         (_ids121889_ '())
                         (_impls121890_ '())
                         (_clauses121891_ '()))
          (let* ((_rest121892121900_ _rest121888_)
                 (_else121894121908_
                  (lambda ()
                    (values (reverse _ids121889_)
                            (reverse _impls121890_)
                            (reverse _clauses121891_))))
                 (_K121896122113_
                  (lambda (_rest121911_ _clause121912_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121912_))
                        (let ((__tmp129588
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121912_ _clauses121891_))))
                          (declare (not safe))
                          (_lp121886_
                           _rest121911_
                           _ids121889_
                           _impls121890_
                           __tmp129588))
                        (let* ((_g121914121925_
                                (lambda (_g121915121922_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121915121922_))))
                               (_g121913122110_
                                (lambda (_g121915121928_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121915121928_))
                                      (let ((_e121920121930_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121915121928_))))
                                        (let ((_hd121919121933_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121920121930_)))
                                              (_tl121918121935_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121920121930_))))
                                          ((lambda (_L121938_ _L121939_)
                                             (let* ((_id121956_
                                                     (let ((__tmp129535
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121882_)))
                                                           (__tmp129534
                                                            (length _clauses121891_))
                                                           (__tmp129533
                                                            (if _gensym?121884_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp129535
                                                        '"__"
                                                        __tmp129534
                                                        __tmp129533)))
                                                    (_id121958_
                                                     (let ((__tmp129536
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121881_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id121956_
                                                        __tmp129536)))
                                                    (_impl121960_
                                                     (let ((__tmp129537
                                                            (let ((__tmp129539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp129538
                           (let ()
                             (declare (not safe))
                             (cons _L121939_ _L121938_))))
                      (declare (not safe))
                      (cons __tmp129539 __tmp129538))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp129537 _stx121881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause122107_
                                                     (let* ((___stx128874128875_
                                                             _L121939_)
                                                            (_g121964121992_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128874128875_)))))
               (let ((___kont128876128877_
                      (lambda (_L122086_)
                        (let ((__tmp129540
                               (let ((__tmp129541
                                      (let ((__tmp129542
                                             (let ((__tmp129543
                                                    (let ((__tmp129549
                                                           (let ((__tmp129550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id121958_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129550)))
                  (__tmp129544
                   (let ((__tmp129545
                          (lambda (_g122096122099_ _g122097122101_)
                            (let ((__tmp129546
                                   (let ((__tmp129548
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp129547
                                          (let ()
                                            (declare (not safe))
                                            (cons _g122096122099_ '()))))
                                     (declare (not safe))
                                     (cons __tmp129548 __tmp129547))))
                              (declare (not safe))
                              (cons __tmp129546 _g122097122101_)))))
                     (declare (not safe))
                     (foldr1 __tmp129545 '() _L122086_))))
              (declare (not safe))
              (cons __tmp129549 __tmp129544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129543))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129542
                                         _stx121881_))))
                                 (declare (not safe))
                                 (cons __tmp129541 '()))))
                          (declare (not safe))
                          (cons _L121939_ __tmp129540))))
                     (___kont128880128881_
                      (lambda (_L122037_ _L122038_)
                        (let ((__tmp129551
                               (let ((__tmp129552
                                      (let ((__tmp129553
                                             (let ((__tmp129554
                                                    (let ((__tmp129568
                                                           (let ((__tmp129569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129569)))
                  (__tmp129555
                   (let ((__tmp129566
                          (let ((__tmp129567
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121958_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129567)))
                         (__tmp129556
                          (let ((__tmp129562
                                 (let ((__tmp129563
                                        (let ((__tmp129565
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp129564
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L122037_ '()))))
                                          (declare (not safe))
                                          (cons __tmp129565 __tmp129564))))
                                   (declare (not safe))
                                   (cons __tmp129563 '())))
                                (__tmp129557
                                 (let ((__tmp129558
                                        (lambda (_g122049122052_
                                                 _g122050122054_)
                                          (let ((__tmp129559
                                                 (let ((__tmp129561
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp129560
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g122049122052_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp129561
                                                         __tmp129560))))
                                            (declare (not safe))
                                            (cons __tmp129559
                                                  _g122050122054_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp129558 '() _L122038_))))
                            (declare (not safe))
                            (foldr1 cons __tmp129562 __tmp129557))))
                     (declare (not safe))
                     (cons __tmp129566 __tmp129556))))
              (declare (not safe))
              (cons __tmp129568 __tmp129555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129554))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129553
                                         _stx121881_))))
                                 (declare (not safe))
                                 (cons __tmp129552 '()))))
                          (declare (not safe))
                          (cons _L121939_ __tmp129551))))
                     (___kont128884128885_
                      (lambda (_L121997_)
                        (let ((__tmp129570
                               (let ((__tmp129571
                                      (let ((__tmp129572
                                             (let ((__tmp129573
                                                    (let ((__tmp129581
                                                           (let ((__tmp129582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129582)))
                  (__tmp129574
                   (let ((__tmp129579
                          (let ((__tmp129580
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121958_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129580)))
                         (__tmp129575
                          (let ((__tmp129576
                                 (let ((__tmp129578
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp129577
                                        (let ()
                                          (declare (not safe))
                                          (cons _L121997_ '()))))
                                   (declare (not safe))
                                   (cons __tmp129578 __tmp129577))))
                            (declare (not safe))
                            (cons __tmp129576 '()))))
                     (declare (not safe))
                     (cons __tmp129579 __tmp129575))))
              (declare (not safe))
              (cons __tmp129581 __tmp129574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129573))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129572
                                         _stx121881_))))
                                 (declare (not safe))
                                 (cons __tmp129571 '()))))
                          (declare (not safe))
                          (cons _L121939_ __tmp129570)))))
                 (let* ((___match128899128900_
                         (lambda (___splice128882128883_
                                  _target121978122013_
                                  _tl121980122015_)
                           (letrec ((_loop121981122018_
                                     (lambda (_hd121979122021_
                                              _arg121985122023_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121979122021_))
                                           (let ((_e121982122026_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121979122021_))))
                                             (let ((_lp-tl121984122031_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121982122026_)))
                                                   (_lp-hd121983122029_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121982122026_))))
                                               (let ((__tmp129583
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121983122029_
                                                              _arg121985122023_))))
                                                 (declare (not safe))
                                                 (_loop121981122018_
                                                  _lp-tl121984122031_
                                                  __tmp129583))))
                                           (let ((_arg121986122034_
                                                  (reverse _arg121985122023_)))
                                             (___kont128880128881_
                                              _tl121980122015_
                                              _arg121986122034_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121981122018_
                                _target121978122013_
                                '())))))
                        (___match128893128894_
                         (lambda (___splice128878128879_
                                  _target121967122062_
                                  _tl121969122064_)
                           (letrec ((_loop121970122067_
                                     (lambda (_hd121968122070_
                                              _arg121974122072_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121968122070_))
                                           (let ((_e121971122075_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121968122070_))))
                                             (let ((_lp-tl121973122080_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121971122075_)))
                                                   (_lp-hd121972122078_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121971122075_))))
                                               (let ((__tmp129584
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121972122078_
                                                              _arg121974122072_))))
                                                 (declare (not safe))
                                                 (_loop121970122067_
                                                  _lp-tl121973122080_
                                                  __tmp129584))))
                                           (let ((_arg121975122083_
                                                  (reverse _arg121974122072_)))
                                             (___kont128876128877_
                                              _arg121975122083_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121970122067_
                                _target121967122062_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128874128875_))
                       (let ((___splice128878128879_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128874128875_
                                 '0))))
                         (let ((_tl121969122064_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128878128879_ '1)))
                               (_target121967122062_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128878128879_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121969122064_))
                               (___match128893128894_
                                ___splice128878128879_
                                _target121967122062_
                                _tl121969122064_)
                               (___match128899128900_
                                ___splice128878128879_
                                _target121967122062_
                                _tl121969122064_))))
                       (___kont128884128885_ ___stx128874128875_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp129587
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id121958_
                                                              _ids121889_)))
                                                     (__tmp129586
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl121960_
                                                              _impls121890_)))
                                                     (__tmp129585
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause122107_
                                                              _clauses121891_))))
                                                 (declare (not safe))
                                                 (_lp121886_
                                                  _rest121911_
                                                  __tmp129587
                                                  __tmp129586
                                                  __tmp129585))))
                                           _tl121918121935_
                                           _hd121919121933_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121914121925_ _g121915121928_))))))
                          (declare (not safe))
                          (_g121913122110_ _clause121912_))))))
            (if (let () (declare (not safe)) (##pair? _rest121892121900_))
                (let ((_hd121897122116_
                       (let ()
                         (declare (not safe))
                         (##car _rest121892121900_)))
                      (_tl121898122118_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121892121900_))))
                  (let* ((_clause122121_ _hd121897122116_)
                         (_rest122123_ _tl121898122118_))
                    (declare (not safe))
                    (_K121896122113_ _rest122123_ _clause122121_)))
                (let () (declare (not safe)) (_else121894121908_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx122128_ _id122129_ _clauses122130_)
        (let ((_gensym?122132_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx122128_
           _id122129_
           _clauses122130_
           _gensym?122132_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g129590_
        (let ((_g129589_ (let () (declare (not safe)) (##length _g129590_))))
          (cond ((let () (declare (not safe)) (##fx= _g129589_ 3))
                 (apply (lambda (_stx122128_ _id122129_ _clauses122130_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx122128_
                             _id122129_
                             _clauses122130_)))
                        _g129590_))
                ((let () (declare (not safe)) (##fx= _g129589_ 4))
                 (apply (lambda (_stx122134_
                                 _id122135_
                                 _clauses122136_
                                 _gensym?122137_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx122134_
                             _id122135_
                             _clauses122136_
                             _gensym?122137_)))
                        _g129590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g129590_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self121157_ _stx121158_)
        (letrec ((_case-lambda-clause-def121160_
                  (lambda (_id121877_ _impl121878_)
                    (let ((__tmp129591
                           (let ((__tmp129592
                                  (let ((__tmp129595
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121877_ '())))
                                        (__tmp129593
                                         (let ((__tmp129594
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self121157_
                                                   _impl121878_))))
                                           (declare (not safe))
                                           (cons __tmp129594 '()))))
                                    (declare (not safe))
                                    (cons __tmp129595 __tmp129593))))
                             (declare (not safe))
                             (cons '%#define-values __tmp129592))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129591 _stx121158_))))
                 (_opt-lambda-dispatch-name121161_
                  (lambda (_id121873_)
                    (if (uninterned-symbol? _id121873_)
                        (let ((_str121875_ (symbol->string _id121873_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121875_))
                              '"%"
                              _id121873_))
                        _id121873_)))
                 (_kw-lambda-dispatch-name121162_
                  (lambda (_id121868_ _name121869_)
                    (if (uninterned-symbol? _id121868_)
                        (let ((_str121871_ (symbol->string _id121868_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121871_))
                              _name121869_
                              _id121868_))
                        _id121868_))))
          (let* ((___stx128922128923_ _stx121158_)
                 (_g121167121226_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128922128923_)))))
            (let ((___kont128924128925_
                   (lambda (_L121777_ _L121778_)
                     (let* ((___stx128902128903_ _L121777_)
                            (_g121795121809_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128902128903_)))))
                       (let ((___kont128904128905_
                              (lambda (_L121853_) _stx121158_))
                             (___kont128906128907_
                              (lambda (_L121822_)
                                (let ((_g129596_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx121158_
                                          _L121778_
                                          _L121822_))))
                                  (begin
                                    (let ((_g129597_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129596_)
                                                 (##vector-length _g129596_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129597_ 3)))
                                          (error "Context expects 3 values"
                                                 _g129597_)))
                                    (let ((_ids121832_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129596_ 0)))
                                          (_impls121833_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129596_ 1)))
                                          (_clauses121834_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129596_ 2))))
                                      (let* ((_g129598_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121832_))
                                             (_defs121837_
                                              (map _case-lambda-clause-def121160_
                                                   _ids121832_
                                                   _impls121833_)))
                                        (let ((__tmp129600
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121778_)))
                                              (__tmp129599
                                               (map gxc#identifier-symbol
                                                    _ids121832_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp129600
                                           '" => "
                                           __tmp129599))
                                        (let ((__tmp129601
                                               (let ((__tmp129602
                                                      (let ((__tmp129603
                                                             (let ((__tmp129604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129605
                                   (let ((__tmp129606
                                          (let ((__tmp129611
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121778_ '())))
                                                (__tmp129607
                                                 (let ((__tmp129608
                                                        (let ((__tmp129610
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121834_)))
                      (__tmp129609
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp129610 __tmp129609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129608 '()))))
                                            (declare (not safe))
                                            (cons __tmp129611 __tmp129607))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp129606))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129605
                               _stx121158_))))
                       (declare (not safe))
                       (cons __tmp129604 '()))))
                (declare (not safe))
                (foldr1 cons __tmp129603 _defs121837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp129602))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp129601
                                           _stx121158_)))))))))
                         (let ((___match128913128914_
                                (lambda (_e121800121845_
                                         _hd121799121848_
                                         _tl121798121850_)
                                  (let ((_L121853_ _tl121798121850_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121853_))
                                        (___kont128904128905_ _L121853_)
                                        (___kont128906128907_
                                         _tl121798121850_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128902128903_))
                               (let ((_e121800121845_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128902128903_))))
                                 (let ((_tl121798121850_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121800121845_)))
                                       (_hd121799121848_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121800121845_))))
                                   (___match128913128914_
                                    _e121800121845_
                                    _hd121799121848_
                                    _tl121798121850_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121795121809_))))))))
                  (___kont128926128927_
                   (lambda (_L121595_ _L121596_)
                     (let* ((_g121612121642_
                             (lambda (_g121613121639_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g121613121639_))))
                            (_g121611121737_
                             (lambda (_g121613121645_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g121613121645_))
                                   (let ((_e121619121647_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g121613121645_))))
                                     (let ((_hd121618121650_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e121619121647_)))
                                           (_tl121617121652_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e121619121647_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl121617121652_))
                                           (let ((_e121622121655_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl121617121652_))))
                                             (let ((_hd121621121658_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121622121655_)))
                                                   (_tl121620121660_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121622121655_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121621121658_))
                                                   (let ((_e121625121663_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121621121658_))))
                                                     (let ((_hd121624121666_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121625121663_)))
                                                           (_tl121623121668_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121625121663_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121624121666_))
                                                           (let ((_e121628121671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121624121666_))))
                     (let ((_hd121627121674_
                            (let ()
                              (declare (not safe))
                              (##car _e121628121671_)))
                           (_tl121626121676_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121628121671_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121627121674_))
                           (let ((_e121631121679_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121627121674_))))
                             (let ((_hd121630121682_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121631121679_)))
                                   (_tl121629121684_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121631121679_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121629121684_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121626121676_))
                                       (let ((_e121634121687_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121626121676_))))
                                         (let ((_hd121633121690_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121634121687_)))
                                               (_tl121632121692_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121634121687_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121632121692_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl121623121668_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121620121660_))
                                                       (let ((_e121637121695_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121620121660_))))
                 (let ((_hd121636121698_
                        (let () (declare (not safe)) (##car _e121637121695_)))
                       (_tl121635121700_
                        (let () (declare (not safe)) (##cdr _e121637121695_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121635121700_))
                       ((lambda (_L121703_ _L121704_ _L121705_)
                          (let* ((_lambda-id121729_
                                  (let ((__tmp129614
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L121596_)))
                                        (__tmp129612
                                         (let ((__tmp129613
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121705_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name121161_
                                            __tmp129613))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp129614
                                     '"__"
                                     __tmp129612)))
                                 (_lambda-id121731_
                                  (let ((__tmp129615
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx121158_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121729_
                                     __tmp129615)))
                                 (_g129616_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121731_)))
                                 (_new-case-lambda-expr121734_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121703_
                                     'id:
                                     _L121705_
                                     'new-id:
                                     _lambda-id121731_))))
                            (let ((__tmp129618
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L121596_)))
                                  (__tmp129617
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121731_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp129618
                               '" => "
                               __tmp129617))
                            (let ((__tmp129619
                                   (let ((__tmp129620
                                          (let ((__tmp129628
                                                 (let ((__tmp129629
                                                        (let ((__tmp129630
                                                               (let ((__tmp129633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121731_ '())))
                             (__tmp129631
                              (let ((__tmp129632
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self121157_
                                        _L121704_))))
                                (declare (not safe))
                                (cons __tmp129632 '()))))
                         (declare (not safe))
                         (cons __tmp129633 __tmp129631))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129629
                                                    _stx121158_)))
                                                (__tmp129621
                                                 (let ((__tmp129622
                                                        (let ((__tmp129623
                                                               (let ((__tmp129624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp129625
                                     (let ((__tmp129627
                                            (let ()
                                              (declare (not safe))
                                              (cons _L121596_ '())))
                                           (__tmp129626
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121734_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp129627 __tmp129626))))
                                (declare (not safe))
                                (cons '%#define-values __tmp129625))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp129624 _stx121158_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self121157_
                   __tmp129623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129622 '()))))
                                            (declare (not safe))
                                            (cons __tmp129628 __tmp129621))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp129620))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129619
                               _stx121158_))))
                        _hd121636121698_
                        _hd121633121690_
                        _hd121630121682_)
                       (let ()
                         (declare (not safe))
                         (_g121612121642_ _g121613121645_)))))
               (let () (declare (not safe)) (_g121612121642_ _g121613121645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121612121642_
                                                      _g121613121645_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121612121642_
                                                  _g121613121645_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121612121642_ _g121613121645_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121612121642_ _g121613121645_)))))
                           (let ()
                             (declare (not safe))
                             (_g121612121642_ _g121613121645_)))))
                   (let ()
                     (declare (not safe))
                     (_g121612121642_ _g121613121645_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121612121642_
                                                      _g121613121645_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g121612121642_
                                              _g121613121645_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g121612121642_ _g121613121645_))))))
                       (declare (not safe))
                       (_g121611121737_ _L121595_))))
                  (___kont128928128929_
                   (lambda (_L121309_ _L121310_)
                     (let* ((_g121326121379_
                             (lambda (_g121327121376_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g121327121376_))))
                            (_g121325121555_
                             (lambda (_g121327121382_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g121327121382_))
                                   (let ((_e121335121384_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g121327121382_))))
                                     (let ((_hd121334121387_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e121335121384_)))
                                           (_tl121333121389_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e121335121384_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl121333121389_))
                                           (let ((_e121338121392_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl121333121389_))))
                                             (let ((_hd121337121395_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121338121392_)))
                                                   (_tl121336121397_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121338121392_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121337121395_))
                                                   (let ((_e121341121400_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121337121395_))))
                                                     (let ((_hd121340121403_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121341121400_)))
                                                           (_tl121339121405_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121341121400_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121340121403_))
                                                           (let ((_e121344121408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121340121403_))))
                     (let ((_hd121343121411_
                            (let ()
                              (declare (not safe))
                              (##car _e121344121408_)))
                           (_tl121342121413_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121344121408_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121343121411_))
                           (let ((_e121347121416_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121343121411_))))
                             (let ((_hd121346121419_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121347121416_)))
                                   (_tl121345121421_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121347121416_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121345121421_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121342121413_))
                                       (let ((_e121350121424_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121342121413_))))
                                         (let ((_hd121349121427_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121350121424_)))
                                               (_tl121348121429_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121350121424_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd121349121427_))
                                               (let ((_e121353121432_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd121349121427_))))
                                                 (let ((_hd121352121435_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e121353121432_)))
                                                       (_tl121351121437_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e121353121432_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121351121437_))
                                                       (let ((_e121356121440_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121351121437_))))
                 (let ((_hd121355121443_
                        (let () (declare (not safe)) (##car _e121356121440_)))
                       (_tl121354121445_
                        (let () (declare (not safe)) (##cdr _e121356121440_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd121355121443_))
                       (let ((_e121359121448_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd121355121443_))))
                         (let ((_hd121358121451_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121359121448_)))
                               (_tl121357121453_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121359121448_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121358121451_))
                               (let ((_e121362121456_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121358121451_))))
                                 (let ((_hd121361121459_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121362121456_)))
                                       (_tl121360121461_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121362121456_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd121361121459_))
                                       (let ((_e121365121464_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd121361121459_))))
                                         (let ((_hd121364121467_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121365121464_)))
                                               (_tl121363121469_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121365121464_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121363121469_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl121360121461_))
                                                   (let ((_e121368121472_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl121360121461_))))
                                                     (let ((_hd121367121475_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121368121472_)))
                                                           (_tl121366121477_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121368121472_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121366121477_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl121357121453_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl121354121445_))
                           (let ((_e121371121480_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl121354121445_))))
                             (let ((_hd121370121483_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121371121480_)))
                                   (_tl121369121485_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121371121480_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121369121485_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl121348121429_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl121339121405_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl121336121397_))
                                               (let ((_e121374121488_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl121336121397_))))
                                                 (let ((_hd121373121491_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e121374121488_)))
                                                       (_tl121372121493_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e121374121488_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl121372121493_))
                                                       ((lambda (_L121496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L121497_
                         _L121498_
                         _L121499_
                         _L121500_)
                  (let* ((_get-kws-id121540_
                          (let ((__tmp129636
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L121310_)))
                                (__tmp129634
                                 (let ((__tmp129635
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L121500_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name121162_
                                    __tmp129635
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129636 '"__" __tmp129634)))
                         (_get-kws-id121542_
                          (let ((__tmp129637
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx121158_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id121540_
                             __tmp129637)))
                         (_main-id121544_
                          (let ((__tmp129640
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L121310_)))
                                (__tmp129638
                                 (let ((__tmp129639
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L121499_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name121162_
                                    __tmp129639
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129640 '"__" __tmp129638)))
                         (_main-id121546_
                          (let ((__tmp129641
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx121158_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id121544_
                             __tmp129641)))
                         (_g129642_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id121542_)))
                         (_g129643_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id121546_)))
                         (_new-kw-dispatch121550_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L121496_
                             'id:
                             _L121500_
                             'new-id:
                             _get-kws-id121542_)))
                         (_new-get-kws121552_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L121497_
                             'id:
                             _L121499_
                             'new-id:
                             _main-id121546_))))
                    (let ((__tmp129646
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L121310_)))
                          (__tmp129645
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id121542_)))
                          (__tmp129644
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id121546_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129646
                       '" => "
                       __tmp129645
                       '" => "
                       __tmp129644))
                    (let ((__tmp129647
                           (let ((__tmp129648
                                  (let ((__tmp129661
                                         (let ((__tmp129662
                                                (let ((__tmp129663
                                                       (let ((__tmp129664
                                                              (let ((__tmp129666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id121546_ '())))
                            (__tmp129665
                             (let ()
                               (declare (not safe))
                               (cons _L121498_ '()))))
                        (declare (not safe))
                        (cons __tmp129666 __tmp129665))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129663
                                                   _stx121158_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self121157_
                                            __tmp129662)))
                                        (__tmp129649
                                         (let ((__tmp129656
                                                (let ((__tmp129657
                                                       (let ((__tmp129658
                                                              (let ((__tmp129660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id121542_ '())))
                            (__tmp129659
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws121552_ '()))))
                        (declare (not safe))
                        (cons __tmp129660 __tmp129659))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129657
                                                   _stx121158_)))
                                               (__tmp129650
                                                (let ((__tmp129651
                                                       (let ((__tmp129652
                                                              (let ((__tmp129653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129655
                                    (let ()
                                      (declare (not safe))
                                      (cons _L121310_ '())))
                                   (__tmp129654
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch121550_ '()))))
                               (declare (not safe))
                               (cons __tmp129655 __tmp129654))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129653))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129652 _stx121158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129651 '()))))
                                           (declare (not safe))
                                           (cons __tmp129656 __tmp129650))))
                                    (declare (not safe))
                                    (cons __tmp129661 __tmp129649))))
                             (declare (not safe))
                             (cons '%#begin __tmp129648))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129647 _stx121158_))))
                _hd121373121491_
                _hd121370121483_
                _hd121367121475_
                _hd121364121467_
                _hd121346121419_)
               (let ()
                 (declare (not safe))
                 (_g121326121379_ _g121327121382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121326121379_
                                                  _g121327121382_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g121326121379_
                                              _g121327121382_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g121326121379_ _g121327121382_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121326121379_ _g121327121382_)))))
                           (let ()
                             (declare (not safe))
                             (_g121326121379_ _g121327121382_)))
                       (let ()
                         (declare (not safe))
                         (_g121326121379_ _g121327121382_)))
                   (let ()
                     (declare (not safe))
                     (_g121326121379_ _g121327121382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121326121379_
                                                      _g121327121382_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121326121379_
                                                  _g121327121382_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121326121379_ _g121327121382_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g121326121379_ _g121327121382_)))))
                       (let ()
                         (declare (not safe))
                         (_g121326121379_ _g121327121382_)))))
               (let ()
                 (declare (not safe))
                 (_g121326121379_ _g121327121382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121326121379_
                                                  _g121327121382_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121326121379_ _g121327121382_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121326121379_ _g121327121382_)))))
                           (let ()
                             (declare (not safe))
                             (_g121326121379_ _g121327121382_)))))
                   (let ()
                     (declare (not safe))
                     (_g121326121379_ _g121327121382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121326121379_
                                                      _g121327121382_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g121326121379_
                                              _g121327121382_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g121326121379_ _g121327121382_))))))
                       (declare (not safe))
                       (_g121325121555_ _L121309_))))
                  (___kont128930128931_
                   (lambda (_L121255_ _L121256_)
                     (let ((__tmp129667
                            (let ((__tmp129668
                                   (let ((__tmp129669
                                          (let ((__tmp129670
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self121157_
                                                    _L121255_))))
                                            (declare (not safe))
                                            (cons __tmp129670 '()))))
                                     (declare (not safe))
                                     (cons _L121256_ __tmp129669))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129668))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129667 _stx121158_)))))
              (let* ((___match129015129016_
                      (lambda (_e121201121277_
                               _hd121200121280_
                               _tl121199121282_
                               _e121204121285_
                               _hd121203121288_
                               _tl121202121290_
                               _e121207121293_
                               _hd121206121296_
                               _tl121205121298_
                               _e121210121301_
                               _hd121209121304_
                               _tl121208121306_)
                        (let ((_L121309_ _hd121209121304_)
                              (_L121310_ _hd121206121296_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121310_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L121309_)))
                              (___kont128928128929_ _L121309_ _L121310_)
                              (___kont128930128931_
                               _hd121209121304_
                               _hd121203121288_)))))
                     (___match128987128988_
                      (lambda (_e121187121563_
                               _hd121186121566_
                               _tl121185121568_
                               _e121190121571_
                               _hd121189121574_
                               _tl121188121576_
                               _e121193121579_
                               _hd121192121582_
                               _tl121191121584_
                               _e121196121587_
                               _hd121195121590_
                               _tl121194121592_)
                        (let ((_L121595_ _hd121195121590_)
                              (_L121596_ _hd121192121582_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121596_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L121595_)))
                              (___kont128926128927_ _L121595_ _L121596_)
                              (___match129015129016_
                               _e121187121563_
                               _hd121186121566_
                               _tl121185121568_
                               _e121190121571_
                               _hd121189121574_
                               _tl121188121576_
                               _e121193121579_
                               _hd121192121582_
                               _tl121191121584_
                               _e121196121587_
                               _hd121195121590_
                               _tl121194121592_)))))
                     (___match128959128960_
                      (lambda (_e121173121745_
                               _hd121172121748_
                               _tl121171121750_
                               _e121176121753_
                               _hd121175121756_
                               _tl121174121758_
                               _e121179121761_
                               _hd121178121764_
                               _tl121177121766_
                               _e121182121769_
                               _hd121181121772_
                               _tl121180121774_)
                        (let ((_L121777_ _hd121181121772_)
                              (_L121778_ _hd121178121764_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121778_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121777_)))
                              (___kont128924128925_ _L121777_ _L121778_)
                              (___match128987128988_
                               _e121173121745_
                               _hd121172121748_
                               _tl121171121750_
                               _e121176121753_
                               _hd121175121756_
                               _tl121174121758_
                               _e121179121761_
                               _hd121178121764_
                               _tl121177121766_
                               _e121182121769_
                               _hd121181121772_
                               _tl121180121774_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128922128923_))
                    (let ((_e121173121745_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128922128923_))))
                      (let ((_tl121171121750_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121173121745_)))
                            (_hd121172121748_
                             (let ()
                               (declare (not safe))
                               (##car _e121173121745_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121171121750_))
                            (let ((_e121176121753_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121171121750_))))
                              (let ((_tl121174121758_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121176121753_)))
                                    (_hd121175121756_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121176121753_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121175121756_))
                                    (let ((_e121179121761_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121175121756_))))
                                      (let ((_tl121177121766_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121179121761_)))
                                            (_hd121178121764_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121179121761_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121177121766_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121174121758_))
                                                (let ((_e121182121769_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121174121758_))))
                                                  (let ((_tl121180121774_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121182121769_)))
                                                        (_hd121181121772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121182121769_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121180121774_))
                                                        (___match128959128960_
                                                         _e121173121745_
                                                         _hd121172121748_
                                                         _tl121171121750_
                                                         _e121176121753_
                                                         _hd121175121756_
                                                         _tl121174121758_
                                                         _e121179121761_
                                                         _hd121178121764_
                                                         _tl121177121766_
                                                         _e121182121769_
                                                         _hd121181121772_
                                                         _tl121180121774_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121167121226_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121167121226_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121174121758_))
                                                (let ((_e121221121247_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121174121758_))))
                                                  (let ((_tl121219121252_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121221121247_)))
                                                        (_hd121220121250_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121221121247_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121219121252_))
                                                        (___kont128930128931_
                                                         _hd121220121250_
                                                         _hd121175121756_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121167121226_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121167121226_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121174121758_))
                                        (let ((_e121221121247_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121174121758_))))
                                          (let ((_tl121219121252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121221121247_)))
                                                (_hd121220121250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121221121247_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121219121252_))
                                                (___kont128930128931_
                                                 _hd121220121250_
                                                 _hd121175121756_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121167121226_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g121167121226_))))))
                            (let () (declare (not safe)) (_g121167121226_)))))
                    (let () (declare (not safe)) (_g121167121226_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self120088_ _stx120089_)
        (letrec* ((_bind-e__127318127319_
                   (lambda (_id121141_ _expr121142_ _compile?121143_)
                     (let ((__tmp129673
                            (let ()
                              (declare (not safe))
                              (cons _id121141_ '())))
                           (__tmp129671
                            (let ((__tmp129672
                                   (if _compile?121143_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120088_
                                          _expr121142_))
                                       _expr121142_)))
                              (declare (not safe))
                              (cons __tmp129672 '()))))
                       (declare (not safe))
                       (cons __tmp129673 __tmp129671))))
                  (_bind-e__0__127320127321_
                   (lambda (_id121148_ _expr121149_)
                     (let ((_compile?121151_ '#t))
                       (declare (not safe))
                       (_bind-e__127318127319_
                        _id121148_
                        _expr121149_
                        _compile?121151_))))
                  (_bind-e120091_
                   (lambda _g129675_
                     (let ((_g129674_
                            (let ()
                              (declare (not safe))
                              (##length _g129675_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129674_ 2))
                              (apply (lambda (_id121148_ _expr121149_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__127320127321_
                                          _id121148_
                                          _expr121149_)))
                                     _g129675_))
                             ((let () (declare (not safe)) (##fx= _g129674_ 3))
                              (apply (lambda (_id121153_
                                              _expr121154_
                                              _compile?121155_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__127318127319_
                                          _id121153_
                                          _expr121154_
                                          _compile?121155_)))
                                     _g129675_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129675_))))))
                  (_compile-bindings120092_
                   (lambda (_bindings120725_)
                     (let _lp120727_ ((_rest120729_ _bindings120725_)
                                      (_lift1120730_ '())
                                      (_lift2120731_ '())
                                      (_bind120732_ '()))
                       (let* ((_rest120733120741_ _rest120729_)
                              (_else120735120749_
                               (lambda ()
                                 (values (reverse _lift1120730_)
                                         (reverse _lift2120731_)
                                         (reverse _bind120732_))))
                              (_K120737121128_
                               (lambda (_rest120752_ _hd120753_)
                                 (let* ((___stx129058129059_ _hd120753_)
                                        (_g120757120793_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx129058129059_)))))
                                   (let ((___kont129060129061_
                                          (lambda (_L121035_ _L121036_)
                                            (let* ((___stx129038129039_
                                                    _L121035_)
                                                   (_g121051121065_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx129038129039_)))))
                                              (let ((___kont129040129041_
                                                     (lambda (_L121113_)
                                                       (let ((__tmp129676
                                                              (let ((__tmp129677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__127318127319_
                                _L121036_
                                _L121035_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129677 _bind120732_))))
                 (declare (not safe))
                 (_lp120727_
                  _rest120752_
                  _lift1120730_
                  _lift2120731_
                  __tmp129676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129042129043_
                                                     (lambda (_L121078_)
                                                       (let ((_g129678_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120089_
                         _L121036_
                         _L121078_
                         '#t))))
                 (begin
                   (let ((_g129679_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129678_)
                                (##vector-length _g129678_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129679_ 3)))
                         (error "Context expects 3 values" _g129679_)))
                   (let ((_ids121088_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129678_ 0)))
                         (_impls121089_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129678_ 1)))
                         (_clauses121090_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129678_ 2))))
                     (let* ((_g129680_
                             (for-each gx#core-bind-runtime! _ids121088_))
                            (_xbind121093_
                             (map _bind-e120091_ _ids121088_ _impls121089_))
                            (_expr*121095_
                             (let ((__tmp129682
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121090_)))
                                   (__tmp129681
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129682
                                __tmp129681)))
                            (_bind*121097_
                             (let ()
                               (declare (not safe))
                               (_bind-e__127318127319_
                                _L121036_
                                _expr*121095_
                                '#f))))
                       (let ((__tmp129684
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121036_)))
                             (__tmp129683
                              (map gxc#identifier-symbol _ids121088_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129684
                          '" => "
                          __tmp129683))
                       (let ((__tmp129686
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120731_ _xbind121093_)))
                             (__tmp129685
                              (let ()
                                (declare (not safe))
                                (cons _bind*121097_ _bind120732_))))
                         (declare (not safe))
                         (_lp120727_
                          _rest120752_
                          _lift1120730_
                          __tmp129686
                          __tmp129685)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match129049129050_
                                                       (lambda (_e121056121105_
                                                                _hd121055121108_
                                                                _tl121054121110_)
                                                         (let ((_L121113_
                                                                _tl121054121110_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L121113_))
                       (___kont129040129041_ _L121113_)
                       (___kont129042129043_ _tl121054121110_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx129038129039_))
                                                      (let ((_e121056121105_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx129038129039_))))
                (let ((_tl121054121110_
                       (let () (declare (not safe)) (##cdr _e121056121105_)))
                      (_hd121055121108_
                       (let () (declare (not safe)) (##car _e121056121105_))))
                  (___match129049129050_
                   _e121056121105_
                   _hd121055121108_
                   _tl121054121110_)))
              (let () (declare (not safe)) (_g121051121065_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont129062129063_
                                          (lambda (_L120863_ _L120864_)
                                            (let* ((_g120878120908_
                                                    (lambda (_g120879120905_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120879120905_))))
                                                   (_g120877121003_
                                                    (lambda (_g120879120911_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120879120911_))
                                                          (let ((_e120885120913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120879120911_))))
                    (let ((_hd120884120916_
                           (let ()
                             (declare (not safe))
                             (##car _e120885120913_)))
                          (_tl120883120918_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120885120913_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120883120918_))
                          (let ((_e120888120921_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120883120918_))))
                            (let ((_hd120887120924_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120888120921_)))
                                  (_tl120886120926_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120888120921_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120887120924_))
                                  (let ((_e120891120929_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120887120924_))))
                                    (let ((_hd120890120932_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120891120929_)))
                                          (_tl120889120934_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120891120929_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120890120932_))
                                          (let ((_e120894120937_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120890120932_))))
                                            (let ((_hd120893120940_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120894120937_)))
                                                  (_tl120892120942_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120894120937_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120893120940_))
                                                  (let ((_e120897120945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120893120940_))))
                                                    (let ((_hd120896120948_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120897120945_)))
                                                          (_tl120895120950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120897120945_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120895120950_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120892120942_))
                      (let ((_e120900120953_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120892120942_))))
                        (let ((_hd120899120956_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120900120953_)))
                              (_tl120898120958_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120900120953_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120898120958_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120889120934_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120886120926_))
                                      (let ((_e120903120961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120886120926_))))
                                        (let ((_hd120902120964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120903120961_)))
                                              (_tl120901120966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120903120961_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120901120966_))
                                              ((lambda (_L120969_
                                                        _L120970_
                                                        _L120971_)
                                                 (let* ((_lambda-id120995_
                                                         (let ((__tmp129688
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120864_)))
                       (__tmp129687 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129688 __tmp129687)))
                (_lambda-id120997_
                 (let ((__tmp129689
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120089_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120995_ __tmp129689)))
                (_g129690_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120997_)))
                (_new-case-lambda-expr121000_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120969_
                    'id:
                    _L120971_
                    'new-id:
                    _lambda-id120997_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129692
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120864_)))
                                                         (__tmp129691
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120997_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129692
                                                      '" => "
                                                      __tmp129691))
                                                   (let ((__tmp129695
                                                          (let ((__tmp129696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__127318127319_
                            _L120864_
                            _new-case-lambda-expr121000_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129696 _rest120752_)))
                 (__tmp129693
                  (let ((__tmp129694
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__127320127321_
                            _lambda-id120997_
                            _L120970_))))
                    (declare (not safe))
                    (cons __tmp129694 _lift1120730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120727_
                                                      __tmp129695
                                                      __tmp129693
                                                      _lift2120731_
                                                      _bind120732_))))
                                               _hd120902120964_
                                               _hd120899120956_
                                               _hd120896120948_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120878120908_
                                                 _g120879120911_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120878120908_ _g120879120911_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120878120908_ _g120879120911_)))
                              (let ()
                                (declare (not safe))
                                (_g120878120908_ _g120879120911_)))))
                      (let ()
                        (declare (not safe))
                        (_g120878120908_ _g120879120911_)))
                  (let ()
                    (declare (not safe))
                    (_g120878120908_ _g120879120911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120878120908_
                                                     _g120879120911_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120878120908_
                                             _g120879120911_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120878120908_ _g120879120911_)))))
                          (let ()
                            (declare (not safe))
                            (_g120878120908_ _g120879120911_)))))
                  (let ()
                    (declare (not safe))
                    (_g120878120908_ _g120879120911_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120877121003_ _L120863_))))
                                         (___kont129064129065_
                                          (lambda (_L120814_ _L120815_)
                                            (let ((__tmp129697
                                                   (let ((__tmp129698
                                                          (let ((__tmp129699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129700
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120088_ _L120814_))))
                           (declare (not safe))
                           (cons __tmp129700 '()))))
                    (declare (not safe))
                    (cons _L120815_ __tmp129699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129698
                                                           _bind120732_))))
                                              (declare (not safe))
                                              (_lp120727_
                                               _rest120752_
                                               _lift1120730_
                                               _lift2120731_
                                               __tmp129697)))))
                                     (let* ((___match129109129110_
                                             (lambda (_e120774120839_
                                                      _hd120773120842_
                                                      _tl120772120844_
                                                      _e120777120847_
                                                      _hd120776120850_
                                                      _tl120775120852_
                                                      _e120780120855_
                                                      _hd120779120858_
                                                      _tl120778120860_)
                                               (let ((_L120863_
                                                      _hd120779120858_)
                                                     (_L120864_
                                                      _hd120776120850_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120864_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120863_)))
                                                     (___kont129062129063_
                                                      _L120863_
                                                      _L120864_)
                                                     (___kont129064129065_
                                                      _hd120779120858_
                                                      _hd120773120842_)))))
                                            (___match129087129088_
                                             (lambda (_e120763121011_
                                                      _hd120762121014_
                                                      _tl120761121016_
                                                      _e120766121019_
                                                      _hd120765121022_
                                                      _tl120764121024_
                                                      _e120769121027_
                                                      _hd120768121030_
                                                      _tl120767121032_)
                                               (let ((_L121035_
                                                      _hd120768121030_)
                                                     (_L121036_
                                                      _hd120765121022_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121036_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121035_)))
                                                     (___kont129060129061_
                                                      _L121035_
                                                      _L121036_)
                                                     (___match129109129110_
                                                      _e120763121011_
                                                      _hd120762121014_
                                                      _tl120761121016_
                                                      _e120766121019_
                                                      _hd120765121022_
                                                      _tl120764121024_
                                                      _e120769121027_
                                                      _hd120768121030_
                                                      _tl120767121032_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx129058129059_))
                                           (let ((_e120763121011_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx129058129059_))))
                                             (let ((_tl120761121016_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120763121011_)))
                                                   (_hd120762121014_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120763121011_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120762121014_))
                                                   (let ((_e120766121019_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120762121014_))))
                                                     (let ((_tl120764121024_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120766121019_)))
                                                           (_hd120765121022_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120766121019_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120764121024_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120761121016_))
                       (let ((_e120769121027_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120761121016_))))
                         (let ((_tl120767121032_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120769121027_)))
                               (_hd120768121030_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120769121027_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120767121032_))
                               (___match129087129088_
                                _e120763121011_
                                _hd120762121014_
                                _tl120761121016_
                                _e120766121019_
                                _hd120765121022_
                                _tl120764121024_
                                _e120769121027_
                                _hd120768121030_
                                _tl120767121032_)
                               (let ()
                                 (declare (not safe))
                                 (_g120757120793_)))))
                       (let () (declare (not safe)) (_g120757120793_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120761121016_))
                       (let ((_e120788120806_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120761121016_))))
                         (let ((_tl120786120811_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120788120806_)))
                               (_hd120787120809_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120788120806_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120786120811_))
                               (___kont129064129065_
                                _hd120787120809_
                                _hd120762121014_)
                               (let ()
                                 (declare (not safe))
                                 (_g120757120793_)))))
                       (let () (declare (not safe)) (_g120757120793_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120761121016_))
                                                       (let ((_e120788120806_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120761121016_))))
                 (let ((_tl120786120811_
                        (let () (declare (not safe)) (##cdr _e120788120806_)))
                       (_hd120787120809_
                        (let () (declare (not safe)) (##car _e120788120806_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120786120811_))
                       (___kont129064129065_ _hd120787120809_ _hd120762121014_)
                       (let () (declare (not safe)) (_g120757120793_)))))
               (let () (declare (not safe)) (_g120757120793_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120757120793_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120733120741_))
                             (let ((_hd120738121131_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120733120741_)))
                                   (_tl120739121133_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120733120741_))))
                               (let* ((_hd121136_ _hd120738121131_)
                                      (_rest121138_ _tl120739121133_))
                                 (declare (not safe))
                                 (_K120737121128_ _rest121138_ _hd121136_)))
                             (let ()
                               (declare (not safe))
                               (_else120735120749_)))))))
                  (_lift-kw-lambda?120093_
                   (lambda (_bind120649_)
                     (let* ((___stx129126129127_ _bind120649_)
                            (_g120652120669_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx129126129127_)))))
                       (let ((___kont129128129129_
                              (lambda (_L120705_ _L120706_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120706_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120705_))
                                    '#f)))
                             (___kont129130129131_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx129126129127_))
                             (let ((_e120658120681_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx129126129127_))))
                               (let ((_tl120656120686_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120658120681_)))
                                     (_hd120657120684_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120658120681_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120657120684_))
                                     (let ((_e120661120689_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120657120684_))))
                                       (let ((_tl120659120694_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120661120689_)))
                                             (_hd120660120692_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120661120689_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120659120694_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120656120686_))
                                                 (let ((_e120664120697_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120656120686_))))
                                                   (let ((_tl120662120702_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120664120697_)))
                                                         (_hd120663120700_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120664120697_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120662120702_))
                                                         (___kont129128129129_
                                                          _hd120663120700_
                                                          _hd120660120692_)
                                                         (___kont129130129131_))))
                                                 (___kont129130129131_))
                                             (___kont129130129131_))))
                                     (___kont129130129131_))))
                             (___kont129130129131_))))))
                  (_lift-kw-lambda-bindings120094_
                   (lambda (_bindings120261_)
                     (let _lp120263_ ((_rest120265_ _bindings120261_)
                                      (_lift1120266_ '())
                                      (_lift2120267_ '())
                                      (_bind120268_ '()))
                       (let* ((_rest120269120277_ _rest120265_)
                              (_else120271120285_
                               (lambda ()
                                 (values (reverse _lift1120266_)
                                         (reverse _lift2120267_)
                                         (reverse _bind120268_))))
                              (_K120273120637_
                               (lambda (_rest120288_ _hd120289_)
                                 (let* ((___stx129156129157_ _hd120289_)
                                        (_g120292120317_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx129156129157_)))))
                                   (let ((___kont129158129159_
                                          (lambda (_L120387_ _L120388_)
                                            (let* ((_g120402120455_
                                                    (lambda (_g120403120452_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120403120452_))))
                                                   (_g120401120631_
                                                    (lambda (_g120403120458_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120403120458_))
                                                          (let ((_e120411120460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120403120458_))))
                    (let ((_hd120410120463_
                           (let ()
                             (declare (not safe))
                             (##car _e120411120460_)))
                          (_tl120409120465_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120411120460_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120409120465_))
                          (let ((_e120414120468_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120409120465_))))
                            (let ((_hd120413120471_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120414120468_)))
                                  (_tl120412120473_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120414120468_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120413120471_))
                                  (let ((_e120417120476_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120413120471_))))
                                    (let ((_hd120416120479_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120417120476_)))
                                          (_tl120415120481_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120417120476_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120416120479_))
                                          (let ((_e120420120484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120416120479_))))
                                            (let ((_hd120419120487_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120420120484_)))
                                                  (_tl120418120489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120420120484_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120419120487_))
                                                  (let ((_e120423120492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120419120487_))))
                                                    (let ((_hd120422120495_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120423120492_)))
                                                          (_tl120421120497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120423120492_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120421120497_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120418120489_))
                      (let ((_e120426120500_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120418120489_))))
                        (let ((_hd120425120503_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120426120500_)))
                              (_tl120424120505_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120426120500_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120425120503_))
                              (let ((_e120429120508_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120425120503_))))
                                (let ((_hd120428120511_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120429120508_)))
                                      (_tl120427120513_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120429120508_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120427120513_))
                                      (let ((_e120432120516_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120427120513_))))
                                        (let ((_hd120431120519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120432120516_)))
                                              (_tl120430120521_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120432120516_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120431120519_))
                                              (let ((_e120435120524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120431120519_))))
                                                (let ((_hd120434120527_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120435120524_)))
                                                      (_tl120433120529_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120435120524_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120434120527_))
                                                      (let ((_e120438120532_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120434120527_))))
                (let ((_hd120437120535_
                       (let () (declare (not safe)) (##car _e120438120532_)))
                      (_tl120436120537_
                       (let () (declare (not safe)) (##cdr _e120438120532_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120437120535_))
                      (let ((_e120441120540_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120437120535_))))
                        (let ((_hd120440120543_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120441120540_)))
                              (_tl120439120545_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120441120540_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120439120545_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120436120537_))
                                  (let ((_e120444120548_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120436120537_))))
                                    (let ((_hd120443120551_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120444120548_)))
                                          (_tl120442120553_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120444120548_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120442120553_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120433120529_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120430120521_))
                                                  (let ((_e120447120556_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120430120521_))))
                                                    (let ((_hd120446120559_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120447120556_)))
                                                          (_tl120445120561_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120447120556_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120445120561_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120424120505_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120415120481_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120412120473_))
                              (let ((_e120450120564_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120412120473_))))
                                (let ((_hd120449120567_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120450120564_)))
                                      (_tl120448120569_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120450120564_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120448120569_))
                                      ((lambda (_L120572_
                                                _L120573_
                                                _L120574_
                                                _L120575_
                                                _L120576_)
                                         (let* ((_get-kws-id120616_
                                                 (let ((__tmp129702
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120388_)))
                                                       (__tmp129701
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129702
                                                    __tmp129701)))
                                                (_get-kws-id120618_
                                                 (let ((__tmp129703
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120089_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120616_
                                                    __tmp129703)))
                                                (_main-id120620_
                                                 (let ((__tmp129705
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120388_)))
                                                       (__tmp129704
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129705
                                                    __tmp129704)))
                                                (_main-id120622_
                                                 (let ((__tmp129706
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120089_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120620_
                                                    __tmp129706)))
                                                (_g129707_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120618_)))
                                                (_g129708_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120622_)))
                                                (_new-kw-dispatch120626_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120572_
                                                    'id:
                                                    _L120576_
                                                    'new-id:
                                                    _get-kws-id120618_)))
                                                (_new-get-kws120628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120573_
                                                    'id:
                                                    _L120575_
                                                    'new-id:
                                                    _main-id120622_))))
                                           (let ((__tmp129711
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120388_)))
                                                 (__tmp129710
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120618_)))
                                                 (__tmp129709
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120622_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129711
                                              '" => "
                                              __tmp129710
                                              '" => "
                                              __tmp129709))
                                           (let ((__tmp129716
                                                  (let ((__tmp129717
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127318127319_
                                                            _main-id120622_
                                                            _L120574_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129717
                                                          _lift1120266_)))
                                                 (__tmp129714
                                                  (let ((__tmp129715
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127318127319_
                                                            _get-kws-id120618_
                                                            _new-get-kws120628_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129715
                                                          _lift2120267_)))
                                                 (__tmp129712
                                                  (let ((__tmp129713
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127318127319_
                                                            _L120388_
                                                            _new-kw-dispatch120626_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129713
                                                          _bind120268_))))
                                             (declare (not safe))
                                             (_lp120263_
                                              _rest120288_
                                              __tmp129716
                                              __tmp129714
                                              __tmp129712))))
                                       _hd120449120567_
                                       _hd120446120559_
                                       _hd120443120551_
                                       _hd120440120543_
                                       _hd120422120495_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120402120455_ _g120403120458_)))))
                              (let ()
                                (declare (not safe))
                                (_g120402120455_ _g120403120458_)))
                          (let ()
                            (declare (not safe))
                            (_g120402120455_ _g120403120458_)))
                      (let ()
                        (declare (not safe))
                        (_g120402120455_ _g120403120458_)))
                  (let ()
                    (declare (not safe))
                    (_g120402120455_ _g120403120458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120402120455_
                                                     _g120403120458_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120402120455_
                                                 _g120403120458_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120402120455_
                                             _g120403120458_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120402120455_ _g120403120458_)))
                              (let ()
                                (declare (not safe))
                                (_g120402120455_ _g120403120458_)))))
                      (let ()
                        (declare (not safe))
                        (_g120402120455_ _g120403120458_)))))
              (let ()
                (declare (not safe))
                (_g120402120455_ _g120403120458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120402120455_
                                                 _g120403120458_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120402120455_ _g120403120458_)))))
                              (let ()
                                (declare (not safe))
                                (_g120402120455_ _g120403120458_)))))
                      (let ()
                        (declare (not safe))
                        (_g120402120455_ _g120403120458_)))
                  (let ()
                    (declare (not safe))
                    (_g120402120455_ _g120403120458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120402120455_
                                                     _g120403120458_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120402120455_
                                             _g120403120458_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120402120455_ _g120403120458_)))))
                          (let ()
                            (declare (not safe))
                            (_g120402120455_ _g120403120458_)))))
                  (let ()
                    (declare (not safe))
                    (_g120402120455_ _g120403120458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120401120631_ _L120387_))))
                                         (___kont129160129161_
                                          (lambda (_L120338_ _L120339_)
                                            (let ((__tmp129718
                                                   (let ((__tmp129719
                                                          (let ((__tmp129720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L120338_ '()))))
                    (declare (not safe))
                    (cons _L120339_ __tmp129720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129719
                                                           _bind120268_))))
                                              (declare (not safe))
                                              (_lp120263_
                                               _rest120288_
                                               _lift1120266_
                                               _lift2120267_
                                               __tmp129718)))))
                                     (let ((___match129183129184_
                                            (lambda (_e120298120363_
                                                     _hd120297120366_
                                                     _tl120296120368_
                                                     _e120301120371_
                                                     _hd120300120374_
                                                     _tl120299120376_
                                                     _e120304120379_
                                                     _hd120303120382_
                                                     _tl120302120384_)
                                              (let ((_L120387_
                                                     _hd120303120382_)
                                                    (_L120388_
                                                     _hd120300120374_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L120388_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L120387_)))
                                                    (___kont129158129159_
                                                     _L120387_
                                                     _L120388_)
                                                    (___kont129160129161_
                                                     _hd120303120382_
                                                     _hd120297120366_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx129156129157_))
                                           (let ((_e120298120363_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx129156129157_))))
                                             (let ((_tl120296120368_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120298120363_)))
                                                   (_hd120297120366_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120298120363_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120297120366_))
                                                   (let ((_e120301120371_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120297120366_))))
                                                     (let ((_tl120299120376_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120301120371_)))
                                                           (_hd120300120374_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120301120371_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120299120376_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120296120368_))
                       (let ((_e120304120379_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120296120368_))))
                         (let ((_tl120302120384_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120304120379_)))
                               (_hd120303120382_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120304120379_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120302120384_))
                               (___match129183129184_
                                _e120298120363_
                                _hd120297120366_
                                _tl120296120368_
                                _e120301120371_
                                _hd120300120374_
                                _tl120299120376_
                                _e120304120379_
                                _hd120303120382_
                                _tl120302120384_)
                               (let ()
                                 (declare (not safe))
                                 (_g120292120317_)))))
                       (let () (declare (not safe)) (_g120292120317_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120296120368_))
                       (let ((_e120312120330_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120296120368_))))
                         (let ((_tl120310120335_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120312120330_)))
                               (_hd120311120333_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120312120330_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120310120335_))
                               (___kont129160129161_
                                _hd120311120333_
                                _hd120297120366_)
                               (let ()
                                 (declare (not safe))
                                 (_g120292120317_)))))
                       (let () (declare (not safe)) (_g120292120317_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120296120368_))
                                                       (let ((_e120312120330_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120296120368_))))
                 (let ((_tl120310120335_
                        (let () (declare (not safe)) (##cdr _e120312120330_)))
                       (_hd120311120333_
                        (let () (declare (not safe)) (##car _e120312120330_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120310120335_))
                       (___kont129160129161_ _hd120311120333_ _hd120297120366_)
                       (let () (declare (not safe)) (_g120292120317_)))))
               (let () (declare (not safe)) (_g120292120317_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120292120317_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120269120277_))
                             (let ((_hd120274120640_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120269120277_)))
                                   (_tl120275120642_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120269120277_))))
                               (let* ((_hd120645_ _hd120274120640_)
                                      (_rest120647_ _tl120275120642_))
                                 (declare (not safe))
                                 (_K120273120637_ _rest120647_ _hd120645_)))
                             (let ()
                               (declare (not safe))
                               (_else120271120285_))))))))
          (let* ((___stx129200129201_ _stx120089_)
                 (_g120097120123_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx129200129201_)))))
            (let ((___kont129202129203_
                   (lambda (_L120183_ _L120184_)
                     (let ((__tmp129722
                            (lambda ()
                              (if (let ((__tmp129749
                                         (let ((__tmp129750
                                                (lambda (_g120212120215_
                                                         _g120213120217_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g120212120215_
                                                          _g120213120217_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129750
                                                   '()
                                                   _L120184_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?120093_
                                            __tmp129749))
                                  (let ((_g129736_
                                         (let ((__tmp129738
                                                (let ((__tmp129739
                                                       (lambda (_g120219120222_
                                                                _g120220120224_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g120219120222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g120220120224_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129739
                                                          '()
                                                          _L120184_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings120094_
                                            __tmp129738))))
                                    (begin
                                      (let ((_g129737_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129736_)
                                                   (##vector-length _g129736_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129737_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129737_)))
                                      (let ((_lift1120227_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129736_ 0)))
                                            (_lift2120228_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129736_ 1)))
                                            (_hd120229_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129736_ 2))))
                                        (let* ((_expr120231_
                                                (let ((__tmp129740
                                                       (let ((__tmp129741
                                                              (let ((__tmp129742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L120183_ '()))))
                        (declare (not safe))
                        (cons _hd120229_ __tmp129742))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129740
                                                   _stx120089_)))
                                               (_expr120233_
                                                (let ((__tmp129743
                                                       (let ((__tmp129744
                                                              (let ((__tmp129745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr120231_ '()))))
                        (declare (not safe))
                        (cons _lift2120228_ __tmp129745))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129743
                                                   _stx120089_)))
                                               (_expr120235_
                                                (let ((__tmp129746
                                                       (let ((__tmp129747
                                                              (let ((__tmp129748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr120233_ '()))))
                        (declare (not safe))
                        (cons _lift1120227_ __tmp129748))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129746
                                                   _stx120089_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self120088_
                                             _expr120235_))))))
                                  (let ((_g129723_
                                         (let ((__tmp129725
                                                (let ((__tmp129726
                                                       (lambda (_g120237120240_
                                                                _g120238120242_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g120237120240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g120238120242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129726
                                                          '()
                                                          _L120184_))))
                                           (declare (not safe))
                                           (_compile-bindings120092_
                                            __tmp129725))))
                                    (begin
                                      (let ((_g129724_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129723_)
                                                   (##vector-length _g129723_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129724_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129724_)))
                                      (let ((_lift1120245_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129723_ 0)))
                                            (_lift2120246_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129723_ 1)))
                                            (_hd120247_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129723_ 2))))
                                        (let* ((_body120249_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self120088_
                                                   _L120183_)))
                                               (_expr120251_
                                                (let ((__tmp129727
                                                       (let ((__tmp129728
                                                              (let ((__tmp129729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body120249_ '()))))
                        (declare (not safe))
                        (cons _hd120247_ __tmp129729))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129727
                                                   _stx120089_)))
                                               (_expr120253_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2120246_))
                                                    _expr120251_
                                                    (let ((__tmp129730
                                                           (let ((__tmp129731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129732
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr120251_ '()))))
                            (declare (not safe))
                            (cons _lift2120246_ __tmp129732))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129731))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129730 _stx120089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr120255_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1120245_))
                                                    _expr120253_
                                                    (let ((__tmp129733
                                                           (let ((__tmp129734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129735
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr120253_ '()))))
                            (declare (not safe))
                            (cons _lift1120245_ __tmp129735))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129734))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129733 _stx120089_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr120255_)))))))
                           (__tmp129721
                            (let ((__obj129416
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj129416)
                              __obj129416)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129722
                        gx#current-expander-context
                        __tmp129721))))
                  (___kont129206129207_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120088_ _stx120089_)))))
              (let ((___match129227129228_
                     (lambda (_e120103120135_
                              _hd120102120138_
                              _tl120101120140_
                              _e120106120143_
                              _hd120105120146_
                              _tl120104120148_
                              ___splice129204129205_
                              _target120107120151_
                              _tl120109120153_)
                       (letrec ((_loop120110120156_
                                 (lambda (_hd120108120159_ _bind120114120161_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120108120159_))
                                       (let ((_e120111120164_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120108120159_))))
                                         (let ((_lp-tl120113120169_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120111120164_)))
                                               (_lp-hd120112120167_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120111120164_))))
                                           (let ((__tmp129753
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120112120167_
                                                          _bind120114120161_))))
                                             (declare (not safe))
                                             (_loop120110120156_
                                              _lp-tl120113120169_
                                              __tmp129753))))
                                       (let ((_bind120115120172_
                                              (reverse _bind120114120161_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120104120148_))
                                             (let ((_e120118120175_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120104120148_))))
                                               (let ((_tl120116120180_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120118120175_)))
                                                     (_hd120117120178_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120118120175_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120116120180_))
                                                     (let ((_L120183_
                                                            _hd120117120178_)
                                                           (_L120184_
                                                            _bind120115120172_))
                                                       (if (let ((__tmp129751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129752
                                 (lambda (_g120204120207_ _g120205120209_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120204120207_ _g120205120209_)))))
                            (declare (not safe))
                            (foldr1 __tmp129752 '() _L120184_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129751))
                   (___kont129202129203_ _L120183_ _L120184_)
                   (___kont129206129207_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129206129207_))))
                                             (___kont129206129207_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120110120156_ _target120107120151_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx129200129201_))
                    (let ((_e120103120135_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx129200129201_))))
                      (let ((_tl120101120140_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120103120135_)))
                            (_hd120102120138_
                             (let ()
                               (declare (not safe))
                               (##car _e120103120135_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120101120140_))
                            (let ((_e120106120143_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120101120140_))))
                              (let ((_tl120104120148_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120106120143_)))
                                    (_hd120105120146_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120106120143_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120105120146_))
                                    (let ((___splice129204129205_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120105120146_
                                              '0))))
                                      (let ((_tl120109120153_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129204129205_
                                                '1)))
                                            (_target120107120151_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129204129205_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120109120153_))
                                            (___match129227129228_
                                             _e120103120135_
                                             _hd120102120138_
                                             _tl120101120140_
                                             _e120106120143_
                                             _hd120105120146_
                                             _tl120104120148_
                                             ___splice129204129205_
                                             _target120107120151_
                                             _tl120109120153_)
                                            (___kont129206129207_))))
                                    (___kont129206129207_))))
                            (___kont129206129207_))))
                    (___kont129206129207_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self119231_ _stx119232_)
        (letrec* ((_bind-e__127323127324_
                   (lambda (_id120072_ _expr120073_ _compile?120074_)
                     (let ((__tmp129756
                            (let ()
                              (declare (not safe))
                              (cons _id120072_ '())))
                           (__tmp129754
                            (let ((__tmp129755
                                   (if _compile?120074_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self119231_
                                          _expr120073_))
                                       _expr120073_)))
                              (declare (not safe))
                              (cons __tmp129755 '()))))
                       (declare (not safe))
                       (cons __tmp129756 __tmp129754))))
                  (_bind-e__0__127325127326_
                   (lambda (_id120079_ _expr120080_)
                     (let ((_compile?120082_ '#t))
                       (declare (not safe))
                       (_bind-e__127323127324_
                        _id120079_
                        _expr120080_
                        _compile?120082_))))
                  (_bind-e119234_
                   (lambda _g129758_
                     (let ((_g129757_
                            (let ()
                              (declare (not safe))
                              (##length _g129758_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129757_ 2))
                              (apply (lambda (_id120079_ _expr120080_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__127325127326_
                                          _id120079_
                                          _expr120080_)))
                                     _g129758_))
                             ((let () (declare (not safe)) (##fx= _g129757_ 3))
                              (apply (lambda (_id120084_
                                              _expr120085_
                                              _compile?120086_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__127323127324_
                                          _id120084_
                                          _expr120085_
                                          _compile?120086_)))
                                     _g129758_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129758_))))))
                  (_compile-bindings119235_
                   (lambda (_rest119370_)
                     (let _lp119372_ ((_rest119374_ _rest119370_)
                                      (_bind119375_ '()))
                       (let* ((_rest119376119384_ _rest119374_)
                              (_else119378119392_
                               (lambda () (reverse _bind119375_)))
                              (_K119380120059_
                               (lambda (_rest119395_ _hd119396_)
                                 (let* ((___stx129250129251_ _hd119396_)
                                        (_g119401119448_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx129250129251_)))))
                                   (let ((___kont129252129253_
                                          (lambda (_L119966_ _L119967_)
                                            (let* ((___stx129230129231_
                                                    _L119966_)
                                                   (_g119982119996_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx129230129231_)))))
                                              (let ((___kont129232129233_
                                                     (lambda (_L120044_)
                                                       (let ((__tmp129759
                                                              (let ((__tmp129760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__127323127324_
                                _L119967_
                                _L119966_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129760 _bind119375_))))
                 (declare (not safe))
                 (_lp119372_ _rest119395_ __tmp129759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129234129235_
                                                     (lambda (_L120009_)
                                                       (let ((_g129761_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119232_
                         _L119967_
                         _L120009_
                         '#t))))
                 (begin
                   (let ((_g129762_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129761_)
                                (##vector-length _g129761_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129762_ 3)))
                         (error "Context expects 3 values" _g129762_)))
                   (let ((_ids120019_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129761_ 0)))
                         (_impls120020_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129761_ 1)))
                         (_clauses120021_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129761_ 2))))
                     (let* ((_g129763_
                             (for-each gx#core-bind-runtime! _ids120019_))
                            (_xbind120024_
                             (map _bind-e119234_ _ids120019_ _impls120020_))
                            (_expr*120026_
                             (let ((__tmp129765
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120021_)))
                                   (__tmp129764
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129765
                                __tmp129764)))
                            (_bind*120028_
                             (let ()
                               (declare (not safe))
                               (_bind-e__127323127324_
                                _L119967_
                                _expr*120026_
                                '#f))))
                       (let ((__tmp129767
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119967_)))
                             (__tmp129766
                              (map gxc#identifier-symbol _ids120019_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129767
                          '" => "
                          __tmp129766))
                       (let ((__tmp129768
                              (let ((__tmp129769
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind119375_
                                               _xbind120024_))))
                                (declare (not safe))
                                (cons _bind*120028_ __tmp129769))))
                         (declare (not safe))
                         (_lp119372_ _rest119395_ __tmp129768)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match129241129242_
                                                       (lambda (_e119987120036_
                                                                _hd119986120039_
                                                                _tl119985120041_)
                                                         (let ((_L120044_
                                                                _tl119985120041_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120044_))
                       (___kont129232129233_ _L120044_)
                       (___kont129234129235_ _tl119985120041_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx129230129231_))
                                                      (let ((_e119987120036_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx129230129231_))))
                (let ((_tl119985120041_
                       (let () (declare (not safe)) (##cdr _e119987120036_)))
                      (_hd119986120039_
                       (let () (declare (not safe)) (##car _e119987120036_))))
                  (___match129241129242_
                   _e119987120036_
                   _hd119986120039_
                   _tl119985120041_)))
              (let () (declare (not safe)) (_g119982119996_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont129254129255_
                                          (lambda (_L119794_ _L119795_)
                                            (let* ((_g119809119839_
                                                    (lambda (_g119810119836_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119810119836_))))
                                                   (_g119808119934_
                                                    (lambda (_g119810119842_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119810119842_))
                                                          (let ((_e119816119844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119810119842_))))
                    (let ((_hd119815119847_
                           (let ()
                             (declare (not safe))
                             (##car _e119816119844_)))
                          (_tl119814119849_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119816119844_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119814119849_))
                          (let ((_e119819119852_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119814119849_))))
                            (let ((_hd119818119855_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119819119852_)))
                                  (_tl119817119857_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119819119852_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119818119855_))
                                  (let ((_e119822119860_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119818119855_))))
                                    (let ((_hd119821119863_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119822119860_)))
                                          (_tl119820119865_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119822119860_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119821119863_))
                                          (let ((_e119825119868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119821119863_))))
                                            (let ((_hd119824119871_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119825119868_)))
                                                  (_tl119823119873_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119825119868_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119824119871_))
                                                  (let ((_e119828119876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119824119871_))))
                                                    (let ((_hd119827119879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119828119876_)))
                                                          (_tl119826119881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119828119876_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119826119881_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119823119873_))
                      (let ((_e119831119884_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119823119873_))))
                        (let ((_hd119830119887_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119831119884_)))
                              (_tl119829119889_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119831119884_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119829119889_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119820119865_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119817119857_))
                                      (let ((_e119834119892_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119817119857_))))
                                        (let ((_hd119833119895_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119834119892_)))
                                              (_tl119832119897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119834119892_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119832119897_))
                                              ((lambda (_L119900_
                                                        _L119901_
                                                        _L119902_)
                                                 (let* ((_lambda-id119926_
                                                         (let ((__tmp129771
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119795_)))
                       (__tmp129770 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129771 __tmp129770)))
                (_lambda-id119928_
                 (let ((__tmp129772
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119232_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119926_ __tmp129772)))
                (_g129773_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119928_)))
                (_new-case-lambda-expr119931_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119900_
                    'id:
                    _L119902_
                    'new-id:
                    _lambda-id119928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129775
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119795_)))
                                                         (__tmp129774
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119928_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129775
                                                      '" => "
                                                      __tmp129774))
                                                   (let ((__tmp129778
                                                          (let ((__tmp129779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__127323127324_
                            _L119795_
                            _new-case-lambda-expr119931_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129779 _rest119395_)))
                 (__tmp129776
                  (let ((__tmp129777
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__127325127326_
                            _lambda-id119928_
                            _L119901_))))
                    (declare (not safe))
                    (cons __tmp129777 _bind119375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp119372_
                                                      __tmp129778
                                                      __tmp129776))))
                                               _hd119833119895_
                                               _hd119830119887_
                                               _hd119827119879_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119809119839_
                                                 _g119810119842_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119809119839_ _g119810119842_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119809119839_ _g119810119842_)))
                              (let ()
                                (declare (not safe))
                                (_g119809119839_ _g119810119842_)))))
                      (let ()
                        (declare (not safe))
                        (_g119809119839_ _g119810119842_)))
                  (let ()
                    (declare (not safe))
                    (_g119809119839_ _g119810119842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119809119839_
                                                     _g119810119842_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119809119839_
                                             _g119810119842_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119809119839_ _g119810119842_)))))
                          (let ()
                            (declare (not safe))
                            (_g119809119839_ _g119810119842_)))))
                  (let ()
                    (declare (not safe))
                    (_g119809119839_ _g119810119842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119808119934_ _L119794_))))
                                         (___kont129256129257_
                                          (lambda (_L119518_ _L119519_)
                                            (let* ((_g119533119586_
                                                    (lambda (_g119534119583_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119534119583_))))
                                                   (_g119532119762_
                                                    (lambda (_g119534119589_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119534119589_))
                                                          (let ((_e119542119591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119534119589_))))
                    (let ((_hd119541119594_
                           (let ()
                             (declare (not safe))
                             (##car _e119542119591_)))
                          (_tl119540119596_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119542119591_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119540119596_))
                          (let ((_e119545119599_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119540119596_))))
                            (let ((_hd119544119602_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119545119599_)))
                                  (_tl119543119604_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119545119599_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119544119602_))
                                  (let ((_e119548119607_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119544119602_))))
                                    (let ((_hd119547119610_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119548119607_)))
                                          (_tl119546119612_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119548119607_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119547119610_))
                                          (let ((_e119551119615_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119547119610_))))
                                            (let ((_hd119550119618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119551119615_)))
                                                  (_tl119549119620_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119551119615_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119550119618_))
                                                  (let ((_e119554119623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119550119618_))))
                                                    (let ((_hd119553119626_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119554119623_)))
                                                          (_tl119552119628_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119554119623_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119552119628_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119549119620_))
                      (let ((_e119557119631_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119549119620_))))
                        (let ((_hd119556119634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119557119631_)))
                              (_tl119555119636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119557119631_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119556119634_))
                              (let ((_e119560119639_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119556119634_))))
                                (let ((_hd119559119642_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119560119639_)))
                                      (_tl119558119644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119560119639_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119558119644_))
                                      (let ((_e119563119647_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119558119644_))))
                                        (let ((_hd119562119650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119563119647_)))
                                              (_tl119561119652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119563119647_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119562119650_))
                                              (let ((_e119566119655_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119562119650_))))
                                                (let ((_hd119565119658_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119566119655_)))
                                                      (_tl119564119660_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119566119655_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119565119658_))
                                                      (let ((_e119569119663_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119565119658_))))
                (let ((_hd119568119666_
                       (let () (declare (not safe)) (##car _e119569119663_)))
                      (_tl119567119668_
                       (let () (declare (not safe)) (##cdr _e119569119663_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119568119666_))
                      (let ((_e119572119671_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119568119666_))))
                        (let ((_hd119571119674_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119572119671_)))
                              (_tl119570119676_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119572119671_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119570119676_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119567119668_))
                                  (let ((_e119575119679_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119567119668_))))
                                    (let ((_hd119574119682_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119575119679_)))
                                          (_tl119573119684_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119575119679_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119573119684_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119564119660_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119561119652_))
                                                  (let ((_e119578119687_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119561119652_))))
                                                    (let ((_hd119577119690_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119578119687_)))
                                                          (_tl119576119692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119578119687_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119576119692_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119555119636_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119546119612_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119543119604_))
                              (let ((_e119581119695_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119543119604_))))
                                (let ((_hd119580119698_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119581119695_)))
                                      (_tl119579119700_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119581119695_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119579119700_))
                                      ((lambda (_L119703_
                                                _L119704_
                                                _L119705_
                                                _L119706_
                                                _L119707_)
                                         (let* ((_get-kws-id119747_
                                                 (let ((__tmp129781
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119519_)))
                                                       (__tmp129780
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129781
                                                    __tmp129780)))
                                                (_get-kws-id119749_
                                                 (let ((__tmp129782
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119232_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119747_
                                                    __tmp129782)))
                                                (_main-id119751_
                                                 (let ((__tmp129784
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119519_)))
                                                       (__tmp129783
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129784
                                                    __tmp129783)))
                                                (_main-id119753_
                                                 (let ((__tmp129785
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119232_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119751_
                                                    __tmp129785)))
                                                (_g129786_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119749_)))
                                                (_g129787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119753_)))
                                                (_new-kw-dispatch119757_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119703_
                                                    'id:
                                                    _L119707_
                                                    'new-id:
                                                    _get-kws-id119749_)))
                                                (_new-get-kws119759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119704_
                                                    'id:
                                                    _L119706_
                                                    'new-id:
                                                    _main-id119753_))))
                                           (let ((__tmp129790
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119519_)))
                                                 (__tmp129789
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119749_)))
                                                 (__tmp129788
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119753_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129790
                                              '" => "
                                              __tmp129789
                                              '" => "
                                              __tmp129788))
                                           (let ((__tmp129791
                                                  (let ((__tmp129796
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__127323127324_
                                                            _main-id119753_
                                                            _L119705_
                                                            '#f)))
                                                        (__tmp129792
                                                         (let ((__tmp129795
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__127323127324_
                           _get-kws-id119749_
                           _new-get-kws119759_
                           '#f)))
                       (__tmp129793
                        (let ((__tmp129794
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__127323127324_
                                  _L119519_
                                  _new-kw-dispatch119757_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129794 _rest119395_))))
                   (declare (not safe))
                   (cons __tmp129795 __tmp129793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129796
                                                          __tmp129792))))
                                             (declare (not safe))
                                             (_lp119372_
                                              __tmp129791
                                              _bind119375_))))
                                       _hd119580119698_
                                       _hd119577119690_
                                       _hd119574119682_
                                       _hd119571119674_
                                       _hd119553119626_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119533119586_ _g119534119589_)))))
                              (let ()
                                (declare (not safe))
                                (_g119533119586_ _g119534119589_)))
                          (let ()
                            (declare (not safe))
                            (_g119533119586_ _g119534119589_)))
                      (let ()
                        (declare (not safe))
                        (_g119533119586_ _g119534119589_)))
                  (let ()
                    (declare (not safe))
                    (_g119533119586_ _g119534119589_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119533119586_
                                                     _g119534119589_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119533119586_
                                                 _g119534119589_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119533119586_
                                             _g119534119589_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119533119586_ _g119534119589_)))
                              (let ()
                                (declare (not safe))
                                (_g119533119586_ _g119534119589_)))))
                      (let ()
                        (declare (not safe))
                        (_g119533119586_ _g119534119589_)))))
              (let ()
                (declare (not safe))
                (_g119533119586_ _g119534119589_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119533119586_
                                                 _g119534119589_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119533119586_ _g119534119589_)))))
                              (let ()
                                (declare (not safe))
                                (_g119533119586_ _g119534119589_)))))
                      (let ()
                        (declare (not safe))
                        (_g119533119586_ _g119534119589_)))
                  (let ()
                    (declare (not safe))
                    (_g119533119586_ _g119534119589_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119533119586_
                                                     _g119534119589_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119533119586_
                                             _g119534119589_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119533119586_ _g119534119589_)))))
                          (let ()
                            (declare (not safe))
                            (_g119533119586_ _g119534119589_)))))
                  (let ()
                    (declare (not safe))
                    (_g119533119586_ _g119534119589_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119532119762_ _L119518_))))
                                         (___kont129258129259_
                                          (lambda (_L119469_ _L119470_)
                                            (let ((__tmp129797
                                                   (let ((__tmp129798
                                                          (let ((__tmp129799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129800
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self119231_ _L119469_))))
                           (declare (not safe))
                           (cons __tmp129800 '()))))
                    (declare (not safe))
                    (cons _L119470_ __tmp129799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129798
                                                           _bind119375_))))
                                              (declare (not safe))
                                              (_lp119372_
                                               _rest119395_
                                               __tmp129797)))))
                                     (let* ((___match129325129326_
                                             (lambda (_e119429119494_
                                                      _hd119428119497_
                                                      _tl119427119499_
                                                      _e119432119502_
                                                      _hd119431119505_
                                                      _tl119430119507_
                                                      _e119435119510_
                                                      _hd119434119513_
                                                      _tl119433119515_)
                                               (let ((_L119518_
                                                      _hd119434119513_)
                                                     (_L119519_
                                                      _hd119431119505_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119519_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L119518_)))
                                                     (___kont129256129257_
                                                      _L119518_
                                                      _L119519_)
                                                     (___kont129258129259_
                                                      _hd119434119513_
                                                      _hd119428119497_)))))
                                            (___match129303129304_
                                             (lambda (_e119418119770_
                                                      _hd119417119773_
                                                      _tl119416119775_
                                                      _e119421119778_
                                                      _hd119420119781_
                                                      _tl119419119783_
                                                      _e119424119786_
                                                      _hd119423119789_
                                                      _tl119422119791_)
                                               (let ((_L119794_
                                                      _hd119423119789_)
                                                     (_L119795_
                                                      _hd119420119781_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119795_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119794_)))
                                                     (___kont129254129255_
                                                      _L119794_
                                                      _L119795_)
                                                     (___match129325129326_
                                                      _e119418119770_
                                                      _hd119417119773_
                                                      _tl119416119775_
                                                      _e119421119778_
                                                      _hd119420119781_
                                                      _tl119419119783_
                                                      _e119424119786_
                                                      _hd119423119789_
                                                      _tl119422119791_)))))
                                            (___match129281129282_
                                             (lambda (_e119407119942_
                                                      _hd119406119945_
                                                      _tl119405119947_
                                                      _e119410119950_
                                                      _hd119409119953_
                                                      _tl119408119955_
                                                      _e119413119958_
                                                      _hd119412119961_
                                                      _tl119411119963_)
                                               (let ((_L119966_
                                                      _hd119412119961_)
                                                     (_L119967_
                                                      _hd119409119953_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119967_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119966_)))
                                                     (___kont129252129253_
                                                      _L119966_
                                                      _L119967_)
                                                     (___match129303129304_
                                                      _e119407119942_
                                                      _hd119406119945_
                                                      _tl119405119947_
                                                      _e119410119950_
                                                      _hd119409119953_
                                                      _tl119408119955_
                                                      _e119413119958_
                                                      _hd119412119961_
                                                      _tl119411119963_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx129250129251_))
                                           (let ((_e119407119942_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx129250129251_))))
                                             (let ((_tl119405119947_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119407119942_)))
                                                   (_hd119406119945_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119407119942_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119406119945_))
                                                   (let ((_e119410119950_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119406119945_))))
                                                     (let ((_tl119408119955_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119410119950_)))
                                                           (_hd119409119953_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119410119950_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119408119955_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119405119947_))
                       (let ((_e119413119958_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119405119947_))))
                         (let ((_tl119411119963_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119413119958_)))
                               (_hd119412119961_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119413119958_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119411119963_))
                               (___match129281129282_
                                _e119407119942_
                                _hd119406119945_
                                _tl119405119947_
                                _e119410119950_
                                _hd119409119953_
                                _tl119408119955_
                                _e119413119958_
                                _hd119412119961_
                                _tl119411119963_)
                               (let ()
                                 (declare (not safe))
                                 (_g119401119448_)))))
                       (let () (declare (not safe)) (_g119401119448_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119405119947_))
                       (let ((_e119443119461_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119405119947_))))
                         (let ((_tl119441119466_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119443119461_)))
                               (_hd119442119464_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119443119461_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119441119466_))
                               (___kont129258129259_
                                _hd119442119464_
                                _hd119406119945_)
                               (let ()
                                 (declare (not safe))
                                 (_g119401119448_)))))
                       (let () (declare (not safe)) (_g119401119448_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119405119947_))
                                                       (let ((_e119443119461_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119405119947_))))
                 (let ((_tl119441119466_
                        (let () (declare (not safe)) (##cdr _e119443119461_)))
                       (_hd119442119464_
                        (let () (declare (not safe)) (##car _e119443119461_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119441119466_))
                       (___kont129258129259_ _hd119442119464_ _hd119406119945_)
                       (let () (declare (not safe)) (_g119401119448_)))))
               (let () (declare (not safe)) (_g119401119448_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119401119448_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119376119384_))
                             (let ((_hd119381120062_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119376119384_)))
                                   (_tl119382120064_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119376119384_))))
                               (let* ((_hd120067_ _hd119381120062_)
                                      (_rest120069_ _tl119382120064_))
                                 (declare (not safe))
                                 (_K119380120059_ _rest120069_ _hd120067_)))
                             (let ()
                               (declare (not safe))
                               (_else119378119392_))))))))
          (let* ((___stx129342129343_ _stx119232_)
                 (_g119238119265_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx129342129343_)))))
            (let ((___kont129344129345_
                   (lambda (_L119325_ _L119326_ _L119327_)
                     (let ((__tmp129802
                            (lambda ()
                              (let ((_hd119364_
                                     (let ((__tmp129803
                                            (let ((__tmp129804
                                                   (lambda (_g119356119359_
                                                            _g119357119361_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g119356119359_
                                                             _g119357119361_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129804
                                                      '()
                                                      _L119326_))))
                                       (declare (not safe))
                                       (_compile-bindings119235_ __tmp129803)))
                                    (_body119365_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self119231_
                                        _L119325_))))
                                (let ((__tmp129805
                                       (let ((__tmp129806
                                              (let ((__tmp129807
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body119365_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd119364_
                                                      __tmp129807))))
                                         (declare (not safe))
                                         (cons _L119327_ __tmp129806))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129805
                                   _stx119232_)))))
                           (__tmp129801
                            (let ((__obj129417
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj129417)
                              __obj129417)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129802
                        gx#current-expander-context
                        __tmp129801))))
                  (___kont129348129349_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self119231_ _stx119232_)))))
              (let ((___match129369129370_
                     (lambda (_e119245119277_
                              _hd119244119280_
                              _tl119243119282_
                              _e119248119285_
                              _hd119247119288_
                              _tl119246119290_
                              ___splice129346129347_
                              _target119249119293_
                              _tl119251119295_)
                       (letrec ((_loop119252119298_
                                 (lambda (_hd119250119301_ _bind119256119303_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119250119301_))
                                       (let ((_e119253119306_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119250119301_))))
                                         (let ((_lp-tl119255119311_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119253119306_)))
                                               (_lp-hd119254119309_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119253119306_))))
                                           (let ((__tmp129810
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119254119309_
                                                          _bind119256119303_))))
                                             (declare (not safe))
                                             (_loop119252119298_
                                              _lp-tl119255119311_
                                              __tmp129810))))
                                       (let ((_bind119257119314_
                                              (reverse _bind119256119303_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119246119290_))
                                             (let ((_e119260119317_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119246119290_))))
                                               (let ((_tl119258119322_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119260119317_)))
                                                     (_hd119259119320_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119260119317_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119258119322_))
                                                     (let ((_L119325_
                                                            _hd119259119320_)
                                                           (_L119326_
                                                            _bind119257119314_)
                                                           (_L119327_
                                                            _hd119244119280_))
                                                       (if (let ((__tmp129808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129809
                                 (lambda (_g119348119351_ _g119349119353_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119348119351_ _g119349119353_)))))
                            (declare (not safe))
                            (foldr1 __tmp129809 '() _L119326_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129808))
                   (___kont129344129345_ _L119325_ _L119326_ _L119327_)
                   (___kont129348129349_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont129348129349_))))
                                             (___kont129348129349_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119252119298_ _target119249119293_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx129342129343_))
                    (let ((_e119245119277_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx129342129343_))))
                      (let ((_tl119243119282_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119245119277_)))
                            (_hd119244119280_
                             (let ()
                               (declare (not safe))
                               (##car _e119245119277_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119243119282_))
                            (let ((_e119248119285_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119243119282_))))
                              (let ((_tl119246119290_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119248119285_)))
                                    (_hd119247119288_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119248119285_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119247119288_))
                                    (let ((___splice129346129347_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119247119288_
                                              '0))))
                                      (let ((_tl119251119295_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129346129347_
                                                '1)))
                                            (_target119249119293_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice129346129347_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119251119295_))
                                            (___match129369129370_
                                             _e119245119277_
                                             _hd119244119280_
                                             _tl119243119282_
                                             _e119248119285_
                                             _hd119247119288_
                                             _tl119246119290_
                                             ___splice129346129347_
                                             _target119249119293_
                                             _tl119251119295_)
                                            (___kont129348129349_))))
                                    (___kont129348129349_))))
                            (___kont129348129349_))))
                    (___kont129348129349_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind119149_)
        (let* ((___stx129372129373_ _bind119149_)
               (_g119152119169_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129372129373_)))))
          (let ((___kont129374129375_
                 (lambda (_L119205_ _L119206_)
                   (if (let () (declare (not safe)) (gx#identifier? _L119206_))
                       (let ((_$e119222_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L119205_))))
                         (if _$e119222_
                             _$e119222_
                             (let ((_$e119225_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L119205_))))
                               (if _$e119225_
                                   _$e119225_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L119205_))))))
                       '#f)))
                (___kont129376129377_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129372129373_))
                (let ((_e119158119181_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129372129373_))))
                  (let ((_tl119156119186_
                         (let () (declare (not safe)) (##cdr _e119158119181_)))
                        (_hd119157119184_
                         (let ()
                           (declare (not safe))
                           (##car _e119158119181_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd119157119184_))
                        (let ((_e119161119189_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd119157119184_))))
                          (let ((_tl119159119194_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e119161119189_)))
                                (_hd119160119192_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e119161119189_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl119159119194_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl119156119186_))
                                    (let ((_e119164119197_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl119156119186_))))
                                      (let ((_tl119162119202_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119164119197_)))
                                            (_hd119163119200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119164119197_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119162119202_))
                                            (___kont129374129375_
                                             _hd119163119200_
                                             _hd119160119192_)
                                            (___kont129376129377_))))
                                    (___kont129376129377_))
                                (___kont129376129377_))))
                        (___kont129376129377_))))
                (___kont129376129377_))))))))
