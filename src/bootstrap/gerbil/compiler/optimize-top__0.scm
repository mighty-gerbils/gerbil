(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&collect-type-info
    (##make-promise
     (lambda ()
       (let ((_tbl25988_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25988_ (force gxc#&void))
           (table-set! _tbl25988_ '%#begin gxc#collect-begin%)
           (table-set! _tbl25988_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl25988_ '%#module gxc#collect-module%)
           (table-set!
            _tbl25988_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl25988_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl25988_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl25988_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl25988_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl25988_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl25988_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl25988_ '%#call gxc#collect-type-call%)
           (table-set! _tbl25988_ '%#if gxc#collect-operands)
           (table-set! _tbl25988_ '%#set! gxc#collect-body-setq%)
           _tbl25988_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx25981_ . _args25983_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25981_ _args25983_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (##make-promise
     (lambda ()
       (let ((_tbl25978_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25978_ (force gxc#&false))
           (table-set! _tbl25978_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl25978_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl25978_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl25978_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl25978_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl25978_ '%#ref gxc#basic-expression-type-ref%)
           _tbl25978_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx25971_ . _args25973_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25971_ _args25973_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (##make-promise
     (lambda ()
       (let ((_tbl25968_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25968_ (force gxc#&basic-xform))
           (table-set!
            _tbl25968_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl25968_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl25968_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl25968_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl25968_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx25961_ . _args25963_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25961_ _args25963_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx25817_)
      (let* ((___stx2600126002_ _stx25817_)
             (_g2582025851_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2600126002_))))
        (let ((___kont2600326004_
               (lambda (_L25933_ _L25934_)
                 (let ((_sym25950_ (gxc#identifier-symbol _L25934_)))
                   (begin
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym25950_
                          '#f)
                         (gxc#verbose
                          '"skipping type declaration for mutable binding "
                          _sym25950_)
                         (let ((_type2595125953_
                                (gxc#apply-basic-expression-type _L25933_)))
                           (if _type2595125953_
                               (let ((_type25956_ _type2595125953_))
                                 (gxc#optimizer-declare-type!__0
                                  _sym25950_
                                  _type25956_))
                               '#f)))
                     (gxc#compile-e _L25933_)))))
              (___kont2600526006_
               (lambda (_L25880_ _L25881_) (gxc#compile-e _L25880_))))
          (let ((___match2603426035_
                 (lambda (_e2582425901_
                          _hd2582525904_
                          _tl2582625906_
                          _e2582725909_
                          _hd2582825912_
                          _tl2582925914_
                          _e2583025917_
                          _hd2583125920_
                          _tl2583225922_
                          _e2583325925_
                          _hd2583425928_
                          _tl2583525930_)
                   (let ((_L25933_ _hd2583425928_) (_L25934_ _hd2583125920_))
                     (if (gx#identifier? _L25934_)
                         (___kont2600326004_ _L25933_ _L25934_)
                         (___kont2600526006_
                          _hd2583425928_
                          _hd2582825912_))))))
            (if (gx#stx-pair? ___stx2600126002_)
                (let ((_e2582425901_ (gx#stx-e ___stx2600126002_)))
                  (let ((_tl2582625906_ (##cdr _e2582425901_))
                        (_hd2582525904_ (##car _e2582425901_)))
                    (if (gx#stx-pair? _tl2582625906_)
                        (let ((_e2582725909_ (gx#stx-e _tl2582625906_)))
                          (let ((_tl2582925914_ (##cdr _e2582725909_))
                                (_hd2582825912_ (##car _e2582725909_)))
                            (if (gx#stx-pair? _hd2582825912_)
                                (let ((_e2583025917_
                                       (gx#stx-e _hd2582825912_)))
                                  (let ((_tl2583225922_ (##cdr _e2583025917_))
                                        (_hd2583125920_ (##car _e2583025917_)))
                                    (if (gx#stx-null? _tl2583225922_)
                                        (if (gx#stx-pair? _tl2582925914_)
                                            (let ((_e2583325925_
                                                   (gx#stx-e _tl2582925914_)))
                                              (let ((_tl2583525930_
                                                     (##cdr _e2583325925_))
                                                    (_hd2583425928_
                                                     (##car _e2583325925_)))
                                                (if (gx#stx-null?
                                                     _tl2583525930_)
                                                    (___match2603426035_
                                                     _e2582425901_
                                                     _hd2582525904_
                                                     _tl2582625906_
                                                     _e2582725909_
                                                     _hd2582825912_
                                                     _tl2582925914_
                                                     _e2583025917_
                                                     _hd2583125920_
                                                     _tl2583225922_
                                                     _e2583325925_
                                                     _hd2583425928_
                                                     _tl2583525930_)
                                                    (_g2582025851_))))
                                            (_g2582025851_))
                                        (if (gx#stx-pair? _tl2582925914_)
                                            (let ((_e2584425872_
                                                   (gx#stx-e _tl2582925914_)))
                                              (let ((_tl2584625877_
                                                     (##cdr _e2584425872_))
                                                    (_hd2584525875_
                                                     (##car _e2584425872_)))
                                                (if (gx#stx-null?
                                                     _tl2584625877_)
                                                    (___kont2600526006_
                                                     _hd2584525875_
                                                     _hd2582825912_)
                                                    (_g2582025851_))))
                                            (_g2582025851_)))))
                                (if (gx#stx-pair? _tl2582925914_)
                                    (let ((_e2584425872_
                                           (gx#stx-e _tl2582925914_)))
                                      (let ((_tl2584625877_
                                             (##cdr _e2584425872_))
                                            (_hd2584525875_
                                             (##car _e2584425872_)))
                                        (if (gx#stx-null? _tl2584625877_)
                                            (___kont2600526006_
                                             _hd2584525875_
                                             _hd2582825912_)
                                            (_g2582025851_))))
                                    (_g2582025851_)))))
                        (_g2582025851_))))
                (_g2582025851_)))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx25602_)
      (letrec ((_collect-e25604_
                (lambda (_hd25761_ _expr25762_)
                  (let* ((___stx2605726058_ _hd25761_)
                         (_g2576525775_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx2605726058_))))
                    (let ((___kont2605926060_
                           (lambda (_L25795_)
                             (let ((_sym25806_
                                    (gxc#identifier-symbol _L25795_)))
                               (if (table-ref
                                    (gxc#current-compile-mutators)
                                    _sym25806_
                                    '#f)
                                   (gxc#verbose
                                    '"skipping type declaration for mutable binding "
                                    _sym25806_)
                                   (let ((_type2580725809_
                                          (gxc#apply-basic-expression-type
                                           _expr25762_)))
                                     (if _type2580725809_
                                         (let ((_type25812_ _type2580725809_))
                                           (gxc#optimizer-declare-type!__%
                                            _sym25806_
                                            _type25812_
                                            '#t))
                                         '#f))))))
                          (___kont2606126062_ (lambda () '#!void)))
                      (let ((___match2607026071_
                             (lambda (_e2576825787_
                                      _hd2576925790_
                                      _tl2577025792_)
                               (let ((_L25795_ _hd2576925790_))
                                 (if (gx#identifier? _L25795_)
                                     (___kont2605926060_ _L25795_)
                                     (___kont2606126062_))))))
                        (if (gx#stx-pair? ___stx2605726058_)
                            (let ((_e2576825787_ (gx#stx-e ___stx2605726058_)))
                              (let ((_tl2577025792_ (##cdr _e2576825787_))
                                    (_hd2576925790_ (##car _e2576825787_)))
                                (if (gx#stx-null? _tl2577025792_)
                                    (___match2607026071_
                                     _e2576825787_
                                     _hd2576925790_
                                     _tl2577025792_)
                                    (___kont2606126062_))))
                            (___kont2606126062_))))))))
        (let* ((_g2560625641_
                (lambda (_g2560725638_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2560725638_)))
               (_g2560525758_
                (lambda (_g2560725644_)
                  (if (gx#stx-pair? _g2560725644_)
                      (let ((_e2561125646_ (gx#stx-e _g2560725644_)))
                        (let ((_hd2561225649_ (##car _e2561125646_))
                              (_tl2561325651_ (##cdr _e2561125646_)))
                          (if (gx#stx-pair? _tl2561325651_)
                              (let ((_e2561425654_ (gx#stx-e _tl2561325651_)))
                                (let ((_hd2561525657_ (##car _e2561425654_))
                                      (_tl2561625659_ (##cdr _e2561425654_)))
                                  (if (gx#stx-pair/null? _hd2561525657_)
                                      (let ((_g28595_
                                             (gx#syntax-split-splice
                                              _hd2561525657_
                                              '0)))
                                        (begin
                                          (let ((_g28596_
                                                 (if (##values? _g28595_)
                                                     (##vector-length _g28595_)
                                                     1)))
                                            (if (not (##fx= _g28596_ 2))
                                                (error "Context expects 2 values"
                                                       _g28596_)))
                                          (let ((_target2561725662_
                                                 (##vector-ref _g28595_ 0))
                                                (_tl2561925664_
                                                 (##vector-ref _g28595_ 1)))
                                            (if (gx#stx-null? _tl2561925664_)
                                                (letrec ((_loop2562025667_
                                                          (lambda (_hd2561825670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2562425672_
                           _hd2562525674_)
                    (if (gx#stx-pair? _hd2561825670_)
                        (let ((_e2562125677_ (gx#stx-e _hd2561825670_)))
                          (let ((_lp-hd2562225680_ (##car _e2562125677_))
                                (_lp-tl2562325682_ (##cdr _e2562125677_)))
                            (if (gx#stx-pair? _lp-hd2562225680_)
                                (let ((_e2562825685_
                                       (gx#stx-e _lp-hd2562225680_)))
                                  (let ((_hd2562925688_ (##car _e2562825685_))
                                        (_tl2563025690_ (##cdr _e2562825685_)))
                                    (if (gx#stx-pair? _tl2563025690_)
                                        (let ((_e2563125693_
                                               (gx#stx-e _tl2563025690_)))
                                          (let ((_hd2563225696_
                                                 (##car _e2563125693_))
                                                (_tl2563325698_
                                                 (##cdr _e2563125693_)))
                                            (if (gx#stx-null? _tl2563325698_)
                                                (_loop2562025667_
                                                 _lp-tl2562325682_
                                                 (cons _hd2563225696_
                                                       _expr2562425672_)
                                                 (cons _hd2562925688_
                                                       _hd2562525674_))
                                                (_g2560625641_
                                                 _g2560725644_))))
                                        (_g2560625641_ _g2560725644_))))
                                (_g2560625641_ _g2560725644_))))
                        (let ((_expr2562625701_ (reverse _expr2562425672_))
                              (_hd2562725703_ (reverse _hd2562525674_)))
                          (if (gx#stx-pair? _tl2561625659_)
                              (let ((_e2563425706_ (gx#stx-e _tl2561625659_)))
                                (let ((_hd2563525709_ (##car _e2563425706_))
                                      (_tl2563625711_ (##cdr _e2563425706_)))
                                  (if (gx#stx-null? _tl2563625711_)
                                      ((lambda (_L25714_ _L25715_ _L25716_)
                                         (begin
                                           (for-each
                                            _collect-e25604_
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2573625739_
                                                               _g2573725741_)
                                                        (cons _g2573625739_
                                                              _g2573725741_))
                                                      '()
                                                      _L25716_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2574325746_
                                                               _g2574425748_)
                                                        (cons _g2574325746_
                                                              _g2574425748_))
                                                      '()
                                                      _L25715_)))
                                           (for-each
                                            gxc#compile-e
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2575025753_
                                                               _g2575125755_)
                                                        (cons _g2575025753_
                                                              _g2575125755_))
                                                      '()
                                                      _L25715_)))
                                           (gxc#compile-e _L25714_)))
                                       _hd2563525709_
                                       _expr2562625701_
                                       _hd2562725703_)
                                      (_g2560625641_ _g2560725644_))))
                              (_g2560625641_ _g2560725644_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2562025667_
                                                   _target2561725662_
                                                   '()
                                                   '()))
                                                (_g2560625641_
                                                 _g2560725644_)))))
                                      (_g2560625641_ _g2560725644_))))
                              (_g2560625641_ _g2560725644_))))
                      (_g2560625641_ _g2560725644_)))))
          (_g2560525758_ _stx25602_)))))
  (define gxc#collect-type-call%
    (lambda (_stx25094_)
      (let* ((___stx2607326074_ _stx25094_)
             (_g2509825213_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2607326074_))))
        (let ((___kont2607526076_
               (lambda (_L25552_ _L25553_ _L25554_ _L25555_ _L25556_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25555_)
                  (gx#stx-e _L25554_)
                  (gxc#identifier-symbol _L25553_)
                  (gx#stx-e _L25552_))))
              (___kont2607726078_
               (lambda (_L25380_ _L25381_ _L25382_ _L25383_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25382_)
                  (gx#stx-e _L25381_)
                  (gxc#identifier-symbol _L25380_)
                  '#f)))
              (___kont2607926080_
               (lambda (_L25250_)
                 (for-each
                  gxc#compile-e
                  (begin
                    '#!void
                    (foldr1 (lambda (_g2526325266_ _g2526425268_)
                              (cons _g2526325266_ _g2526425268_))
                            '()
                            _L25250_))))))
          (let* ((___match2633026331_
                  (lambda (_e2519725218_
                           _hd2519825221_
                           _tl2519925223_
                           ___splice2608126082_
                           _target2520025226_
                           _tl2520225228_)
                    (letrec ((_loop2520325231_
                              (lambda (_hd2520125234_ _expr2520725236_)
                                (if (gx#stx-pair? _hd2520125234_)
                                    (let ((_e2520425239_
                                           (gx#stx-e _hd2520125234_)))
                                      (let ((_lp-tl2520625244_
                                             (##cdr _e2520425239_))
                                            (_lp-hd2520525242_
                                             (##car _e2520425239_)))
                                        (_loop2520325231_
                                         _lp-tl2520625244_
                                         (cons _lp-hd2520525242_
                                               _expr2520725236_))))
                                    (let ((_expr2520825247_
                                           (reverse _expr2520725236_)))
                                      (___kont2607926080_
                                       _expr2520825247_))))))
                      (_loop2520325231_ _target2520025226_ '()))))
                 (___match2621026211_
                  (lambda (_e2510525424_
                           _hd2510625427_
                           _tl2510725429_
                           _e2510825432_
                           _hd2510925435_
                           _tl2511025437_
                           _e2511125440_
                           _hd2511225443_
                           _tl2511325445_
                           _e2511425448_
                           _hd2511525451_
                           _tl2511625453_
                           _e2511725456_
                           _hd2511825459_
                           _tl2511925461_
                           _e2512025464_
                           _hd2512125467_
                           _tl2512225469_
                           _e2512325472_
                           _hd2512425475_
                           _tl2512525477_
                           _e2512625480_
                           _hd2512725483_
                           _tl2512825485_
                           _e2512925488_
                           _hd2513025491_
                           _tl2513125493_
                           _e2513225496_
                           _hd2513325499_
                           _tl2513425501_
                           _e2513525504_
                           _hd2513625507_
                           _tl2513725509_
                           _e2513825512_
                           _hd2513925515_
                           _tl2514025517_
                           _e2514125520_
                           _hd2514225523_
                           _tl2514325525_
                           _e2514425528_
                           _hd2514525531_
                           _tl2514625533_
                           _e2514725536_
                           _hd2514825539_
                           _tl2514925541_
                           _e2515025544_
                           _hd2515125547_
                           _tl2515225549_)
                    (let ((_L25552_ _hd2515125547_)
                          (_L25553_ _hd2514225523_)
                          (_L25554_ _hd2513325499_)
                          (_L25555_ _hd2512425475_)
                          (_L25556_ _hd2511525451_))
                      (if (gxc#runtime-identifier=? _L25556_ 'bind-method!)
                          (___kont2607526076_
                           _L25552_
                           _L25553_
                           _L25554_
                           _L25555_
                           _L25556_)
                          (if (gx#stx-pair/null? _tl2510725429_)
                              (let ((___splice2608126082_
                                     (gx#syntax-split-splice
                                      _tl2510725429_
                                      '0)))
                                (let ((_tl2520225228_
                                       (##vector-ref ___splice2608126082_ '1))
                                      (_target2520025226_
                                       (##vector-ref ___splice2608126082_ '0)))
                                  (if (gx#stx-null? _tl2520225228_)
                                      (___match2633026331_
                                       _e2510525424_
                                       _hd2510625427_
                                       _tl2510725429_
                                       ___splice2608126082_
                                       _target2520025226_
                                       _tl2520225228_)
                                      (_g2509825213_))))
                              (_g2509825213_)))))))
            (if (gx#stx-pair? ___stx2607326074_)
                (let ((_e2510525424_ (gx#stx-e ___stx2607326074_)))
                  (let ((_tl2510725429_ (##cdr _e2510525424_))
                        (_hd2510625427_ (##car _e2510525424_)))
                    (if (gx#stx-pair? _tl2510725429_)
                        (let ((_e2510825432_ (gx#stx-e _tl2510725429_)))
                          (let ((_tl2511025437_ (##cdr _e2510825432_))
                                (_hd2510925435_ (##car _e2510825432_)))
                            (if (gx#stx-pair? _hd2510925435_)
                                (let ((_e2511125440_
                                       (gx#stx-e _hd2510925435_)))
                                  (let ((_tl2511325445_ (##cdr _e2511125440_))
                                        (_hd2511225443_ (##car _e2511125440_)))
                                    (if (gx#identifier? _hd2511225443_)
                                        (if (gx#stx-eq? '%#ref _hd2511225443_)
                                            (if (gx#stx-pair? _tl2511325445_)
                                                (let ((_e2511425448_
                                                       (gx#stx-e
                                                        _tl2511325445_)))
                                                  (let ((_tl2511625453_
                                                         (##cdr _e2511425448_))
                                                        (_hd2511525451_
                                                         (##car _e2511425448_)))
                                                    (if (gx#stx-null?
                                                         _tl2511625453_)
                                                        (if (gx#stx-pair?
                                                             _tl2511025437_)
                                                            (let ((_e2511725456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2511025437_)))
                      (let ((_tl2511925461_ (##cdr _e2511725456_))
                            (_hd2511825459_ (##car _e2511725456_)))
                        (if (gx#stx-pair? _hd2511825459_)
                            (let ((_e2512025464_ (gx#stx-e _hd2511825459_)))
                              (let ((_tl2512225469_ (##cdr _e2512025464_))
                                    (_hd2512125467_ (##car _e2512025464_)))
                                (if (gx#identifier? _hd2512125467_)
                                    (if (gx#stx-eq? '%#ref _hd2512125467_)
                                        (if (gx#stx-pair? _tl2512225469_)
                                            (let ((_e2512325472_
                                                   (gx#stx-e _tl2512225469_)))
                                              (let ((_tl2512525477_
                                                     (##cdr _e2512325472_))
                                                    (_hd2512425475_
                                                     (##car _e2512325472_)))
                                                (if (gx#stx-null?
                                                     _tl2512525477_)
                                                    (if (gx#stx-pair?
                                                         _tl2511925461_)
                                                        (let ((_e2512625480_
                                                               (gx#stx-e
                                                                _tl2511925461_)))
                                                          (let ((_tl2512825485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2512625480_))
                        (_hd2512725483_ (##car _e2512625480_)))
                    (if (gx#stx-pair? _hd2512725483_)
                        (let ((_e2512925488_ (gx#stx-e _hd2512725483_)))
                          (let ((_tl2513125493_ (##cdr _e2512925488_))
                                (_hd2513025491_ (##car _e2512925488_)))
                            (if (gx#identifier? _hd2513025491_)
                                (if (gx#stx-eq? '%#quote _hd2513025491_)
                                    (if (gx#stx-pair? _tl2513125493_)
                                        (let ((_e2513225496_
                                               (gx#stx-e _tl2513125493_)))
                                          (let ((_tl2513425501_
                                                 (##cdr _e2513225496_))
                                                (_hd2513325499_
                                                 (##car _e2513225496_)))
                                            (if (gx#stx-null? _tl2513425501_)
                                                (if (gx#stx-pair?
                                                     _tl2512825485_)
                                                    (let ((_e2513525504_
                                                           (gx#stx-e
                                                            _tl2512825485_)))
                                                      (let ((_tl2513725509_
                                                             (##cdr _e2513525504_))
                                                            (_hd2513625507_
                                                             (##car _e2513525504_)))
                                                        (if (gx#stx-pair?
                                                             _hd2513625507_)
                                                            (let ((_e2513825512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2513625507_)))
                      (let ((_tl2514025517_ (##cdr _e2513825512_))
                            (_hd2513925515_ (##car _e2513825512_)))
                        (if (gx#identifier? _hd2513925515_)
                            (if (gx#stx-eq? '%#ref _hd2513925515_)
                                (if (gx#stx-pair? _tl2514025517_)
                                    (let ((_e2514125520_
                                           (gx#stx-e _tl2514025517_)))
                                      (let ((_tl2514325525_
                                             (##cdr _e2514125520_))
                                            (_hd2514225523_
                                             (##car _e2514125520_)))
                                        (if (gx#stx-null? _tl2514325525_)
                                            (if (gx#stx-pair? _tl2513725509_)
                                                (let ((_e2514425528_
                                                       (gx#stx-e
                                                        _tl2513725509_)))
                                                  (let ((_tl2514625533_
                                                         (##cdr _e2514425528_))
                                                        (_hd2514525531_
                                                         (##car _e2514425528_)))
                                                    (if (gx#stx-pair?
                                                         _hd2514525531_)
                                                        (let ((_e2514725536_
                                                               (gx#stx-e
                                                                _hd2514525531_)))
                                                          (let ((_tl2514925541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2514725536_))
                        (_hd2514825539_ (##car _e2514725536_)))
                    (if (gx#identifier? _hd2514825539_)
                        (if (gx#stx-eq? '%#quote _hd2514825539_)
                            (if (gx#stx-pair? _tl2514925541_)
                                (let ((_e2515025544_
                                       (gx#stx-e _tl2514925541_)))
                                  (let ((_tl2515225549_ (##cdr _e2515025544_))
                                        (_hd2515125547_ (##car _e2515025544_)))
                                    (if (gx#stx-null? _tl2515225549_)
                                        (if (gx#stx-null? _tl2514625533_)
                                            (___match2621026211_
                                             _e2510525424_
                                             _hd2510625427_
                                             _tl2510725429_
                                             _e2510825432_
                                             _hd2510925435_
                                             _tl2511025437_
                                             _e2511125440_
                                             _hd2511225443_
                                             _tl2511325445_
                                             _e2511425448_
                                             _hd2511525451_
                                             _tl2511625453_
                                             _e2511725456_
                                             _hd2511825459_
                                             _tl2511925461_
                                             _e2512025464_
                                             _hd2512125467_
                                             _tl2512225469_
                                             _e2512325472_
                                             _hd2512425475_
                                             _tl2512525477_
                                             _e2512625480_
                                             _hd2512725483_
                                             _tl2512825485_
                                             _e2512925488_
                                             _hd2513025491_
                                             _tl2513125493_
                                             _e2513225496_
                                             _hd2513325499_
                                             _tl2513425501_
                                             _e2513525504_
                                             _hd2513625507_
                                             _tl2513725509_
                                             _e2513825512_
                                             _hd2513925515_
                                             _tl2514025517_
                                             _e2514125520_
                                             _hd2514225523_
                                             _tl2514325525_
                                             _e2514425528_
                                             _hd2514525531_
                                             _tl2514625533_
                                             _e2514725536_
                                             _hd2514825539_
                                             _tl2514925541_
                                             _e2515025544_
                                             _hd2515125547_
                                             _tl2515225549_)
                                            (if (gx#stx-pair/null?
                                                 _tl2510725429_)
                                                (let ((___splice2608126082_
                                                       (gx#syntax-split-splice
                                                        _tl2510725429_
                                                        '0)))
                                                  (let ((_tl2520225228_
                                                         (##vector-ref
                                                          ___splice2608126082_
                                                          '1))
                                                        (_target2520025226_
                                                         (##vector-ref
                                                          ___splice2608126082_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2520225228_)
                                                        (___match2633026331_
                                                         _e2510525424_
                                                         _hd2510625427_
                                                         _tl2510725429_
                                                         ___splice2608126082_
                                                         _target2520025226_
                                                         _tl2520225228_)
                                                        (_g2509825213_))))
                                                (_g2509825213_)))
                                        (if (gx#stx-pair/null? _tl2510725429_)
                                            (let ((___splice2608126082_
                                                   (gx#syntax-split-splice
                                                    _tl2510725429_
                                                    '0)))
                                              (let ((_tl2520225228_
                                                     (##vector-ref
                                                      ___splice2608126082_
                                                      '1))
                                                    (_target2520025226_
                                                     (##vector-ref
                                                      ___splice2608126082_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2520225228_)
                                                    (___match2633026331_
                                                     _e2510525424_
                                                     _hd2510625427_
                                                     _tl2510725429_
                                                     ___splice2608126082_
                                                     _target2520025226_
                                                     _tl2520225228_)
                                                    (_g2509825213_))))
                                            (_g2509825213_)))))
                                (if (gx#stx-pair/null? _tl2510725429_)
                                    (let ((___splice2608126082_
                                           (gx#syntax-split-splice
                                            _tl2510725429_
                                            '0)))
                                      (let ((_tl2520225228_
                                             (##vector-ref
                                              ___splice2608126082_
                                              '1))
                                            (_target2520025226_
                                             (##vector-ref
                                              ___splice2608126082_
                                              '0)))
                                        (if (gx#stx-null? _tl2520225228_)
                                            (___match2633026331_
                                             _e2510525424_
                                             _hd2510625427_
                                             _tl2510725429_
                                             ___splice2608126082_
                                             _target2520025226_
                                             _tl2520225228_)
                                            (_g2509825213_))))
                                    (_g2509825213_)))
                            (if (gx#stx-pair/null? _tl2510725429_)
                                (let ((___splice2608126082_
                                       (gx#syntax-split-splice
                                        _tl2510725429_
                                        '0)))
                                  (let ((_tl2520225228_
                                         (##vector-ref
                                          ___splice2608126082_
                                          '1))
                                        (_target2520025226_
                                         (##vector-ref
                                          ___splice2608126082_
                                          '0)))
                                    (if (gx#stx-null? _tl2520225228_)
                                        (___match2633026331_
                                         _e2510525424_
                                         _hd2510625427_
                                         _tl2510725429_
                                         ___splice2608126082_
                                         _target2520025226_
                                         _tl2520225228_)
                                        (_g2509825213_))))
                                (_g2509825213_)))
                        (if (gx#stx-pair/null? _tl2510725429_)
                            (let ((___splice2608126082_
                                   (gx#syntax-split-splice _tl2510725429_ '0)))
                              (let ((_tl2520225228_
                                     (##vector-ref ___splice2608126082_ '1))
                                    (_target2520025226_
                                     (##vector-ref ___splice2608126082_ '0)))
                                (if (gx#stx-null? _tl2520225228_)
                                    (___match2633026331_
                                     _e2510525424_
                                     _hd2510625427_
                                     _tl2510725429_
                                     ___splice2608126082_
                                     _target2520025226_
                                     _tl2520225228_)
                                    (_g2509825213_))))
                            (_g2509825213_)))))
                (if (gx#stx-pair/null? _tl2510725429_)
                    (let ((___splice2608126082_
                           (gx#syntax-split-splice _tl2510725429_ '0)))
                      (let ((_tl2520225228_
                             (##vector-ref ___splice2608126082_ '1))
                            (_target2520025226_
                             (##vector-ref ___splice2608126082_ '0)))
                        (if (gx#stx-null? _tl2520225228_)
                            (___match2633026331_
                             _e2510525424_
                             _hd2510625427_
                             _tl2510725429_
                             ___splice2608126082_
                             _target2520025226_
                             _tl2520225228_)
                            (_g2509825213_))))
                    (_g2509825213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl2513725509_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L25380_
                                                               _hd2514225523_)
                                                              (_L25381_
                                                               _hd2513325499_)
                                                              (_L25382_
                                                               _hd2512425475_)
                                                              (_L25383_
                                                               _hd2511525451_))
                                                          (___kont2607726078_
                                                           _L25380_
                                                           _L25381_
                                                           _L25382_
                                                           _L25383_))
                                                        (if (gx#stx-pair/null?
                                                             _tl2510725429_)
                                                            (let ((___splice2608126082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl2510725429_ '0)))
                      (let ((_tl2520225228_
                             (##vector-ref ___splice2608126082_ '1))
                            (_target2520025226_
                             (##vector-ref ___splice2608126082_ '0)))
                        (if (gx#stx-null? _tl2520225228_)
                            (___match2633026331_
                             _e2510525424_
                             _hd2510625427_
                             _tl2510725429_
                             ___splice2608126082_
                             _target2520025226_
                             _tl2520225228_)
                            (_g2509825213_))))
                    (_g2509825213_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2510725429_)
                                                        (let ((___splice2608126082_
                                                               (gx#syntax-split-splice
                                                                _tl2510725429_
                                                                '0)))
                                                          (let ((_tl2520225228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2608126082_ '1))
                        (_target2520025226_
                         (##vector-ref ___splice2608126082_ '0)))
                    (if (gx#stx-null? _tl2520225228_)
                        (___match2633026331_
                         _e2510525424_
                         _hd2510625427_
                         _tl2510725429_
                         ___splice2608126082_
                         _target2520025226_
                         _tl2520225228_)
                        (_g2509825213_))))
                (_g2509825213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2510725429_)
                                                (let ((___splice2608126082_
                                                       (gx#syntax-split-splice
                                                        _tl2510725429_
                                                        '0)))
                                                  (let ((_tl2520225228_
                                                         (##vector-ref
                                                          ___splice2608126082_
                                                          '1))
                                                        (_target2520025226_
                                                         (##vector-ref
                                                          ___splice2608126082_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2520225228_)
                                                        (___match2633026331_
                                                         _e2510525424_
                                                         _hd2510625427_
                                                         _tl2510725429_
                                                         ___splice2608126082_
                                                         _target2520025226_
                                                         _tl2520225228_)
                                                        (_g2509825213_))))
                                                (_g2509825213_)))))
                                    (if (gx#stx-pair/null? _tl2510725429_)
                                        (let ((___splice2608126082_
                                               (gx#syntax-split-splice
                                                _tl2510725429_
                                                '0)))
                                          (let ((_tl2520225228_
                                                 (##vector-ref
                                                  ___splice2608126082_
                                                  '1))
                                                (_target2520025226_
                                                 (##vector-ref
                                                  ___splice2608126082_
                                                  '0)))
                                            (if (gx#stx-null? _tl2520225228_)
                                                (___match2633026331_
                                                 _e2510525424_
                                                 _hd2510625427_
                                                 _tl2510725429_
                                                 ___splice2608126082_
                                                 _target2520025226_
                                                 _tl2520225228_)
                                                (_g2509825213_))))
                                        (_g2509825213_)))
                                (if (gx#stx-pair/null? _tl2510725429_)
                                    (let ((___splice2608126082_
                                           (gx#syntax-split-splice
                                            _tl2510725429_
                                            '0)))
                                      (let ((_tl2520225228_
                                             (##vector-ref
                                              ___splice2608126082_
                                              '1))
                                            (_target2520025226_
                                             (##vector-ref
                                              ___splice2608126082_
                                              '0)))
                                        (if (gx#stx-null? _tl2520225228_)
                                            (___match2633026331_
                                             _e2510525424_
                                             _hd2510625427_
                                             _tl2510725429_
                                             ___splice2608126082_
                                             _target2520025226_
                                             _tl2520225228_)
                                            (_g2509825213_))))
                                    (_g2509825213_)))
                            (if (gx#stx-pair/null? _tl2510725429_)
                                (let ((___splice2608126082_
                                       (gx#syntax-split-splice
                                        _tl2510725429_
                                        '0)))
                                  (let ((_tl2520225228_
                                         (##vector-ref
                                          ___splice2608126082_
                                          '1))
                                        (_target2520025226_
                                         (##vector-ref
                                          ___splice2608126082_
                                          '0)))
                                    (if (gx#stx-null? _tl2520225228_)
                                        (___match2633026331_
                                         _e2510525424_
                                         _hd2510625427_
                                         _tl2510725429_
                                         ___splice2608126082_
                                         _target2520025226_
                                         _tl2520225228_)
                                        (_g2509825213_))))
                                (_g2509825213_)))))
                    (if (gx#stx-pair/null? _tl2510725429_)
                        (let ((___splice2608126082_
                               (gx#syntax-split-splice _tl2510725429_ '0)))
                          (let ((_tl2520225228_
                                 (##vector-ref ___splice2608126082_ '1))
                                (_target2520025226_
                                 (##vector-ref ___splice2608126082_ '0)))
                            (if (gx#stx-null? _tl2520225228_)
                                (___match2633026331_
                                 _e2510525424_
                                 _hd2510625427_
                                 _tl2510725429_
                                 ___splice2608126082_
                                 _target2520025226_
                                 _tl2520225228_)
                                (_g2509825213_))))
                        (_g2509825213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2510725429_)
                                                        (let ((___splice2608126082_
                                                               (gx#syntax-split-splice
                                                                _tl2510725429_
                                                                '0)))
                                                          (let ((_tl2520225228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2608126082_ '1))
                        (_target2520025226_
                         (##vector-ref ___splice2608126082_ '0)))
                    (if (gx#stx-null? _tl2520225228_)
                        (___match2633026331_
                         _e2510525424_
                         _hd2510625427_
                         _tl2510725429_
                         ___splice2608126082_
                         _target2520025226_
                         _tl2520225228_)
                        (_g2509825213_))))
                (_g2509825213_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2510725429_)
                                                    (let ((___splice2608126082_
                                                           (gx#syntax-split-splice
                                                            _tl2510725429_
                                                            '0)))
                                                      (let ((_tl2520225228_
                                                             (##vector-ref
                                                              ___splice2608126082_
                                                              '1))
                                                            (_target2520025226_
                                                             (##vector-ref
                                                              ___splice2608126082_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2520225228_)
                                                            (___match2633026331_
                                                             _e2510525424_
                                                             _hd2510625427_
                                                             _tl2510725429_
                                                             ___splice2608126082_
                                                             _target2520025226_
                                                             _tl2520225228_)
                                                            (_g2509825213_))))
                                                    (_g2509825213_)))))
                                        (if (gx#stx-pair/null? _tl2510725429_)
                                            (let ((___splice2608126082_
                                                   (gx#syntax-split-splice
                                                    _tl2510725429_
                                                    '0)))
                                              (let ((_tl2520225228_
                                                     (##vector-ref
                                                      ___splice2608126082_
                                                      '1))
                                                    (_target2520025226_
                                                     (##vector-ref
                                                      ___splice2608126082_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2520225228_)
                                                    (___match2633026331_
                                                     _e2510525424_
                                                     _hd2510625427_
                                                     _tl2510725429_
                                                     ___splice2608126082_
                                                     _target2520025226_
                                                     _tl2520225228_)
                                                    (_g2509825213_))))
                                            (_g2509825213_)))
                                    (if (gx#stx-pair/null? _tl2510725429_)
                                        (let ((___splice2608126082_
                                               (gx#syntax-split-splice
                                                _tl2510725429_
                                                '0)))
                                          (let ((_tl2520225228_
                                                 (##vector-ref
                                                  ___splice2608126082_
                                                  '1))
                                                (_target2520025226_
                                                 (##vector-ref
                                                  ___splice2608126082_
                                                  '0)))
                                            (if (gx#stx-null? _tl2520225228_)
                                                (___match2633026331_
                                                 _e2510525424_
                                                 _hd2510625427_
                                                 _tl2510725429_
                                                 ___splice2608126082_
                                                 _target2520025226_
                                                 _tl2520225228_)
                                                (_g2509825213_))))
                                        (_g2509825213_)))
                                (if (gx#stx-pair/null? _tl2510725429_)
                                    (let ((___splice2608126082_
                                           (gx#syntax-split-splice
                                            _tl2510725429_
                                            '0)))
                                      (let ((_tl2520225228_
                                             (##vector-ref
                                              ___splice2608126082_
                                              '1))
                                            (_target2520025226_
                                             (##vector-ref
                                              ___splice2608126082_
                                              '0)))
                                        (if (gx#stx-null? _tl2520225228_)
                                            (___match2633026331_
                                             _e2510525424_
                                             _hd2510625427_
                                             _tl2510725429_
                                             ___splice2608126082_
                                             _target2520025226_
                                             _tl2520225228_)
                                            (_g2509825213_))))
                                    (_g2509825213_)))))
                        (if (gx#stx-pair/null? _tl2510725429_)
                            (let ((___splice2608126082_
                                   (gx#syntax-split-splice _tl2510725429_ '0)))
                              (let ((_tl2520225228_
                                     (##vector-ref ___splice2608126082_ '1))
                                    (_target2520025226_
                                     (##vector-ref ___splice2608126082_ '0)))
                                (if (gx#stx-null? _tl2520225228_)
                                    (___match2633026331_
                                     _e2510525424_
                                     _hd2510625427_
                                     _tl2510725429_
                                     ___splice2608126082_
                                     _target2520025226_
                                     _tl2520225228_)
                                    (_g2509825213_))))
                            (_g2509825213_)))))
                (if (gx#stx-pair/null? _tl2510725429_)
                    (let ((___splice2608126082_
                           (gx#syntax-split-splice _tl2510725429_ '0)))
                      (let ((_tl2520225228_
                             (##vector-ref ___splice2608126082_ '1))
                            (_target2520025226_
                             (##vector-ref ___splice2608126082_ '0)))
                        (if (gx#stx-null? _tl2520225228_)
                            (___match2633026331_
                             _e2510525424_
                             _hd2510625427_
                             _tl2510725429_
                             ___splice2608126082_
                             _target2520025226_
                             _tl2520225228_)
                            (_g2509825213_))))
                    (_g2509825213_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2510725429_)
                                                        (let ((___splice2608126082_
                                                               (gx#syntax-split-splice
                                                                _tl2510725429_
                                                                '0)))
                                                          (let ((_tl2520225228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2608126082_ '1))
                        (_target2520025226_
                         (##vector-ref ___splice2608126082_ '0)))
                    (if (gx#stx-null? _tl2520225228_)
                        (___match2633026331_
                         _e2510525424_
                         _hd2510625427_
                         _tl2510725429_
                         ___splice2608126082_
                         _target2520025226_
                         _tl2520225228_)
                        (_g2509825213_))))
                (_g2509825213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2510725429_)
                                                (let ((___splice2608126082_
                                                       (gx#syntax-split-splice
                                                        _tl2510725429_
                                                        '0)))
                                                  (let ((_tl2520225228_
                                                         (##vector-ref
                                                          ___splice2608126082_
                                                          '1))
                                                        (_target2520025226_
                                                         (##vector-ref
                                                          ___splice2608126082_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2520225228_)
                                                        (___match2633026331_
                                                         _e2510525424_
                                                         _hd2510625427_
                                                         _tl2510725429_
                                                         ___splice2608126082_
                                                         _target2520025226_
                                                         _tl2520225228_)
                                                        (_g2509825213_))))
                                                (_g2509825213_)))
                                        (if (gx#stx-pair/null? _tl2510725429_)
                                            (let ((___splice2608126082_
                                                   (gx#syntax-split-splice
                                                    _tl2510725429_
                                                    '0)))
                                              (let ((_tl2520225228_
                                                     (##vector-ref
                                                      ___splice2608126082_
                                                      '1))
                                                    (_target2520025226_
                                                     (##vector-ref
                                                      ___splice2608126082_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2520225228_)
                                                    (___match2633026331_
                                                     _e2510525424_
                                                     _hd2510625427_
                                                     _tl2510725429_
                                                     ___splice2608126082_
                                                     _target2520025226_
                                                     _tl2520225228_)
                                                    (_g2509825213_))))
                                            (_g2509825213_)))
                                    (if (gx#stx-pair/null? _tl2510725429_)
                                        (let ((___splice2608126082_
                                               (gx#syntax-split-splice
                                                _tl2510725429_
                                                '0)))
                                          (let ((_tl2520225228_
                                                 (##vector-ref
                                                  ___splice2608126082_
                                                  '1))
                                                (_target2520025226_
                                                 (##vector-ref
                                                  ___splice2608126082_
                                                  '0)))
                                            (if (gx#stx-null? _tl2520225228_)
                                                (___match2633026331_
                                                 _e2510525424_
                                                 _hd2510625427_
                                                 _tl2510725429_
                                                 ___splice2608126082_
                                                 _target2520025226_
                                                 _tl2520225228_)
                                                (_g2509825213_))))
                                        (_g2509825213_)))))
                            (if (gx#stx-pair/null? _tl2510725429_)
                                (let ((___splice2608126082_
                                       (gx#syntax-split-splice
                                        _tl2510725429_
                                        '0)))
                                  (let ((_tl2520225228_
                                         (##vector-ref
                                          ___splice2608126082_
                                          '1))
                                        (_target2520025226_
                                         (##vector-ref
                                          ___splice2608126082_
                                          '0)))
                                    (if (gx#stx-null? _tl2520225228_)
                                        (___match2633026331_
                                         _e2510525424_
                                         _hd2510625427_
                                         _tl2510725429_
                                         ___splice2608126082_
                                         _target2520025226_
                                         _tl2520225228_)
                                        (_g2509825213_))))
                                (_g2509825213_)))))
                    (if (gx#stx-pair/null? _tl2510725429_)
                        (let ((___splice2608126082_
                               (gx#syntax-split-splice _tl2510725429_ '0)))
                          (let ((_tl2520225228_
                                 (##vector-ref ___splice2608126082_ '1))
                                (_target2520025226_
                                 (##vector-ref ___splice2608126082_ '0)))
                            (if (gx#stx-null? _tl2520225228_)
                                (___match2633026331_
                                 _e2510525424_
                                 _hd2510625427_
                                 _tl2510725429_
                                 ___splice2608126082_
                                 _target2520025226_
                                 _tl2520225228_)
                                (_g2509825213_))))
                        (_g2509825213_)))
                (if (gx#stx-pair/null? _tl2510725429_)
                    (let ((___splice2608126082_
                           (gx#syntax-split-splice _tl2510725429_ '0)))
                      (let ((_tl2520225228_
                             (##vector-ref ___splice2608126082_ '1))
                            (_target2520025226_
                             (##vector-ref ___splice2608126082_ '0)))
                        (if (gx#stx-null? _tl2520225228_)
                            (___match2633026331_
                             _e2510525424_
                             _hd2510625427_
                             _tl2510725429_
                             ___splice2608126082_
                             _target2520025226_
                             _tl2520225228_)
                            (_g2509825213_))))
                    (_g2509825213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2510725429_)
                                                    (let ((___splice2608126082_
                                                           (gx#syntax-split-splice
                                                            _tl2510725429_
                                                            '0)))
                                                      (let ((_tl2520225228_
                                                             (##vector-ref
                                                              ___splice2608126082_
                                                              '1))
                                                            (_target2520025226_
                                                             (##vector-ref
                                                              ___splice2608126082_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2520225228_)
                                                            (___match2633026331_
                                                             _e2510525424_
                                                             _hd2510625427_
                                                             _tl2510725429_
                                                             ___splice2608126082_
                                                             _target2520025226_
                                                             _tl2520225228_)
                                                            (_g2509825213_))))
                                                    (_g2509825213_)))
                                            (if (gx#stx-pair/null?
                                                 _tl2510725429_)
                                                (let ((___splice2608126082_
                                                       (gx#syntax-split-splice
                                                        _tl2510725429_
                                                        '0)))
                                                  (let ((_tl2520225228_
                                                         (##vector-ref
                                                          ___splice2608126082_
                                                          '1))
                                                        (_target2520025226_
                                                         (##vector-ref
                                                          ___splice2608126082_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2520225228_)
                                                        (___match2633026331_
                                                         _e2510525424_
                                                         _hd2510625427_
                                                         _tl2510725429_
                                                         ___splice2608126082_
                                                         _target2520025226_
                                                         _tl2520225228_)
                                                        (_g2509825213_))))
                                                (_g2509825213_)))
                                        (if (gx#stx-pair/null? _tl2510725429_)
                                            (let ((___splice2608126082_
                                                   (gx#syntax-split-splice
                                                    _tl2510725429_
                                                    '0)))
                                              (let ((_tl2520225228_
                                                     (##vector-ref
                                                      ___splice2608126082_
                                                      '1))
                                                    (_target2520025226_
                                                     (##vector-ref
                                                      ___splice2608126082_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2520225228_)
                                                    (___match2633026331_
                                                     _e2510525424_
                                                     _hd2510625427_
                                                     _tl2510725429_
                                                     ___splice2608126082_
                                                     _target2520025226_
                                                     _tl2520225228_)
                                                    (_g2509825213_))))
                                            (_g2509825213_)))))
                                (if (gx#stx-pair/null? _tl2510725429_)
                                    (let ((___splice2608126082_
                                           (gx#syntax-split-splice
                                            _tl2510725429_
                                            '0)))
                                      (let ((_tl2520225228_
                                             (##vector-ref
                                              ___splice2608126082_
                                              '1))
                                            (_target2520025226_
                                             (##vector-ref
                                              ___splice2608126082_
                                              '0)))
                                        (if (gx#stx-null? _tl2520225228_)
                                            (___match2633026331_
                                             _e2510525424_
                                             _hd2510625427_
                                             _tl2510725429_
                                             ___splice2608126082_
                                             _target2520025226_
                                             _tl2520225228_)
                                            (_g2509825213_))))
                                    (_g2509825213_)))))
                        (if (gx#stx-pair/null? _tl2510725429_)
                            (let ((___splice2608126082_
                                   (gx#syntax-split-splice _tl2510725429_ '0)))
                              (let ((_tl2520225228_
                                     (##vector-ref ___splice2608126082_ '1))
                                    (_target2520025226_
                                     (##vector-ref ___splice2608126082_ '0)))
                                (if (gx#stx-null? _tl2520225228_)
                                    (___match2633026331_
                                     _e2510525424_
                                     _hd2510625427_
                                     _tl2510725429_
                                     ___splice2608126082_
                                     _target2520025226_
                                     _tl2520225228_)
                                    (_g2509825213_))))
                            (_g2509825213_)))))
                (_g2509825213_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx25034_)
      (let* ((___stx2633326334_ _stx25034_)
             (_g2503725050_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2633326334_))))
        (let ((___kont2633526336_ (lambda (_L25078_) (gxc#compile-e _L25078_)))
              (___kont2633726338_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2633326334_)
              (let ((_e2504025062_ (gx#stx-e ___stx2633326334_)))
                (let ((_tl2504225067_ (##cdr _e2504025062_))
                      (_hd2504125065_ (##car _e2504025062_)))
                  (if (gx#stx-pair? _tl2504225067_)
                      (let ((_e2504325070_ (gx#stx-e _tl2504225067_)))
                        (let ((_tl2504525075_ (##cdr _e2504325070_))
                              (_hd2504425073_ (##car _e2504325070_)))
                          (if (gx#stx-null? _tl2504525075_)
                              (___kont2633526336_ _hd2504425073_)
                              (___kont2633726338_))))
                      (___kont2633726338_))))
              (___kont2633726338_))))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx24967_)
      (let* ((_g2496924986_
              (lambda (_g2497024983_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2497024983_)))
             (_g2496825031_
              (lambda (_g2497024989_)
                (if (gx#stx-pair? _g2497024989_)
                    (let ((_e2497324991_ (gx#stx-e _g2497024989_)))
                      (let ((_hd2497424994_ (##car _e2497324991_))
                            (_tl2497524996_ (##cdr _e2497324991_)))
                        (if (gx#stx-pair? _tl2497524996_)
                            (let ((_e2497624999_ (gx#stx-e _tl2497524996_)))
                              (let ((_hd2497725002_ (##car _e2497624999_))
                                    (_tl2497825004_ (##cdr _e2497624999_)))
                                (if (gx#stx-pair? _tl2497825004_)
                                    (let ((_e2497925007_
                                           (gx#stx-e _tl2497825004_)))
                                      (let ((_hd2498025010_
                                             (##car _e2497925007_))
                                            (_tl2498125012_
                                             (##cdr _e2497925007_)))
                                        (if (gx#stx-null? _tl2498125012_)
                                            ((lambda (_L25015_ _L25016_)
                                               (gxc#compile-e _L25015_))
                                             _hd2498025010_
                                             _hd2497725002_)
                                            (_g2496924986_ _g2497024989_))))
                                    (_g2496924986_ _g2497024989_))))
                            (_g2496924986_ _g2497024989_))))
                    (_g2496924986_ _g2497024989_)))))
        (_g2496825031_ _stx24967_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx23586_)
      (let* ((___stx2635526356_ _stx23586_)
             (_g2359323896_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2635526356_))))
        (let ((___kont2635726358_
               (lambda (_L24912_ _L24913_ _L24914_ _L24915_ _L24916_)
                 (let* ((_type-t24959_ (gxc#identifier-symbol _L24913_))
                        (_type24961_
                         (gxc#optimizer-resolve-type _type-t24959_)))
                   (if (##structure-instance-of?
                        _type24961_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t24959_)
                       '#f))))
              (___kont2635926360_
               (lambda (_L24698_ _L24699_ _L24700_ _L24701_)
                 (let* ((_type-t24774_ (gxc#identifier-symbol _L24699_))
                        (_type24776_
                         (gxc#optimizer-resolve-type _type-t24774_)))
                   (if (##structure-instance-of?
                        _type24776_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t24774_)
                       '#f))))
              (___kont2636526366_
               (lambda (_L24540_)
                 (let ((__obj28588 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj28588
                      'lambda
                      (gxc#lambda-form-arity _L24540_)
                      (gxc#dispatch-lambda-form-delegate _L24540_))
                     __obj28588))))
              (___kont2636726368_
               (lambda (_L24467_ _L24468_ _L24469_ _L24470_ _L24471_ _L24472_)
                 (let* ((_tab24522_ (gx#stx-e _L24469_))
                        (_keys24524_
                         (if _tab24522_
                             (filter values (vector->list _tab24522_))
                             '#f)))
                   (##structure
                    gxc#!kw-lambda::t
                    'kw-lambda
                    _keys24524_
                    (gxc#identifier-symbol _L24468_)))))
              (___kont2636926370_
               (lambda (_L24200_
                        _L24201_
                        _L24202_
                        _L24203_
                        _L24204_
                        _L24205_
                        _L24206_
                        _L24207_
                        _L24208_
                        _L24209_)
                 (##structure
                  gxc#!kw-lambda-primary::t
                  'kw-lambda-dispatch
                  (map gx#stx-e
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2430224305_ _g2430324307_)
                                   (cons _g2430224305_ _g2430324307_))
                                 '()
                                 _L24202_)))
                  (gxc#identifier-symbol _L24206_))))
              (___kont2637326374_
               (lambda (_L23909_)
                 (let ((__obj28589 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj28589
                      'lambda
                      (gxc#lambda-form-arity _L23909_)
                      '#f)
                     __obj28589)))))
          (let* ((___match2682026821_
                  (lambda (_e2378323924_
                           _hd2378423927_
                           _tl2378523929_
                           _e2378623932_
                           _hd2378723935_
                           _tl2378823937_
                           _e2378923940_
                           _hd2379023943_
                           _tl2379123945_
                           _e2379223948_
                           _hd2379323951_
                           _tl2379423953_
                           _e2379523956_
                           _hd2379623959_
                           _tl2379723961_
                           _e2379823964_
                           _hd2379923967_
                           _tl2380023969_
                           _e2380123972_
                           _hd2380223975_
                           _tl2380323977_
                           _e2380423980_
                           _hd2380523983_
                           _tl2380623985_
                           _e2380723988_
                           _hd2380823991_
                           _tl2380923993_
                           _e2381023996_
                           _hd2381123999_
                           _tl2381224001_
                           _e2381324004_
                           _hd2381424007_
                           _tl2381524009_
                           _e2381624012_
                           _hd2381724015_
                           _tl2381824017_
                           _e2381924020_
                           _hd2382024023_
                           _tl2382124025_
                           _e2382224028_
                           _hd2382324031_
                           _tl2382424033_
                           ___splice2637126372_
                           _target2382524036_
                           _tl2382724038_
                           _e2384024041_
                           _hd2384124044_
                           _tl2384224046_
                           _e2384324049_
                           _hd2384424052_
                           _tl2384524054_
                           _e2384624057_
                           _hd2384724060_
                           _tl2384824062_)
                    (letrec ((_loop2382824065_
                              (lambda (_hd2382624068_
                                       _-absent-value2383224070_
                                       _key2383324072_
                                       _-xkwvar2383424074_
                                       _-hash-ref2383524076_)
                                (if (gx#stx-pair? _hd2382624068_)
                                    (let ((_e2382924079_
                                           (gx#stx-e _hd2382624068_)))
                                      (let ((_lp-tl2383124084_
                                             (##cdr _e2382924079_))
                                            (_lp-hd2383024082_
                                             (##car _e2382924079_)))
                                        (if (gx#stx-pair? _lp-hd2383024082_)
                                            (let ((_e2384924087_
                                                   (gx#stx-e
                                                    _lp-hd2383024082_)))
                                              (let ((_tl2385124092_
                                                     (##cdr _e2384924087_))
                                                    (_hd2385024090_
                                                     (##car _e2384924087_)))
                                                (if (gx#identifier?
                                                     _hd2385024090_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2385024090_)
                                                        (if (gx#stx-pair?
                                                             _tl2385124092_)
                                                            (let ((_e2385224095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2385124092_)))
                      (let ((_tl2385424100_ (##cdr _e2385224095_))
                            (_hd2385324098_ (##car _e2385224095_)))
                        (if (gx#stx-pair? _hd2385324098_)
                            (let ((_e2385524103_ (gx#stx-e _hd2385324098_)))
                              (let ((_tl2385724108_ (##cdr _e2385524103_))
                                    (_hd2385624106_ (##car _e2385524103_)))
                                (if (gx#identifier? _hd2385624106_)
                                    (if (gx#stx-eq? '%#ref _hd2385624106_)
                                        (if (gx#stx-pair? _tl2385724108_)
                                            (let ((_e2385824111_
                                                   (gx#stx-e _tl2385724108_)))
                                              (let ((_tl2386024116_
                                                     (##cdr _e2385824111_))
                                                    (_hd2385924114_
                                                     (##car _e2385824111_)))
                                                (if (gx#stx-null?
                                                     _tl2386024116_)
                                                    (if (gx#stx-pair?
                                                         _tl2385424100_)
                                                        (let ((_e2386124119_
                                                               (gx#stx-e
                                                                _tl2385424100_)))
                                                          (let ((_tl2386324124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2386124119_))
                        (_hd2386224122_ (##car _e2386124119_)))
                    (if (gx#stx-pair? _hd2386224122_)
                        (let ((_e2386424127_ (gx#stx-e _hd2386224122_)))
                          (let ((_tl2386624132_ (##cdr _e2386424127_))
                                (_hd2386524130_ (##car _e2386424127_)))
                            (if (gx#identifier? _hd2386524130_)
                                (if (gx#stx-eq? '%#ref _hd2386524130_)
                                    (if (gx#stx-pair? _tl2386624132_)
                                        (let ((_e2386724135_
                                               (gx#stx-e _tl2386624132_)))
                                          (let ((_tl2386924140_
                                                 (##cdr _e2386724135_))
                                                (_hd2386824138_
                                                 (##car _e2386724135_)))
                                            (if (gx#stx-null? _tl2386924140_)
                                                (if (gx#stx-pair?
                                                     _tl2386324124_)
                                                    (let ((_e2387024143_
                                                           (gx#stx-e
                                                            _tl2386324124_)))
                                                      (let ((_tl2387224148_
                                                             (##cdr _e2387024143_))
                                                            (_hd2387124146_
                                                             (##car _e2387024143_)))
                                                        (if (gx#stx-pair?
                                                             _hd2387124146_)
                                                            (let ((_e2387324151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2387124146_)))
                      (let ((_tl2387524156_ (##cdr _e2387324151_))
                            (_hd2387424154_ (##car _e2387324151_)))
                        (if (gx#identifier? _hd2387424154_)
                            (if (gx#stx-eq? '%#quote _hd2387424154_)
                                (if (gx#stx-pair? _tl2387524156_)
                                    (let ((_e2387624159_
                                           (gx#stx-e _tl2387524156_)))
                                      (let ((_tl2387824164_
                                             (##cdr _e2387624159_))
                                            (_hd2387724162_
                                             (##car _e2387624159_)))
                                        (if (gx#stx-null? _tl2387824164_)
                                            (if (gx#stx-pair? _tl2387224148_)
                                                (let ((_e2387924167_
                                                       (gx#stx-e
                                                        _tl2387224148_)))
                                                  (let ((_tl2388124172_
                                                         (##cdr _e2387924167_))
                                                        (_hd2388024170_
                                                         (##car _e2387924167_)))
                                                    (if (gx#stx-pair?
                                                         _hd2388024170_)
                                                        (let ((_e2388224175_
                                                               (gx#stx-e
                                                                _hd2388024170_)))
                                                          (let ((_tl2388424180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2388224175_))
                        (_hd2388324178_ (##car _e2388224175_)))
                    (if (gx#identifier? _hd2388324178_)
                        (if (gx#stx-eq? '%#ref _hd2388324178_)
                            (if (gx#stx-pair? _tl2388424180_)
                                (let ((_e2388524183_
                                       (gx#stx-e _tl2388424180_)))
                                  (let ((_tl2388724188_ (##cdr _e2388524183_))
                                        (_hd2388624186_ (##car _e2388524183_)))
                                    (if (gx#stx-null? _tl2388724188_)
                                        (if (gx#stx-null? _tl2388124172_)
                                            (_loop2382824065_
                                             _lp-tl2383124084_
                                             (cons _hd2388624186_
                                                   _-absent-value2383224070_)
                                             (cons _hd2387724162_
                                                   _key2383324072_)
                                             (cons _hd2386824138_
                                                   _-xkwvar2383424074_)
                                             (cons _hd2385924114_
                                                   _-hash-ref2383524076_))
                                            (___kont2637326374_
                                             _tl2378523929_))
                                        (___kont2637326374_ _tl2378523929_))))
                                (___kont2637326374_ _tl2378523929_))
                            (___kont2637326374_ _tl2378523929_))
                        (___kont2637326374_ _tl2378523929_))))
                (___kont2637326374_ _tl2378523929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2637326374_
                                                 _tl2378523929_))
                                            (___kont2637326374_
                                             _tl2378523929_))))
                                    (___kont2637326374_ _tl2378523929_))
                                (___kont2637326374_ _tl2378523929_))
                            (___kont2637326374_ _tl2378523929_))))
                    (___kont2637326374_ _tl2378523929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2637326374_
                                                     _tl2378523929_))
                                                (___kont2637326374_
                                                 _tl2378523929_))))
                                        (___kont2637326374_ _tl2378523929_))
                                    (___kont2637326374_ _tl2378523929_))
                                (___kont2637326374_ _tl2378523929_))))
                        (___kont2637326374_ _tl2378523929_))))
                (___kont2637326374_ _tl2378523929_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2637326374_
                                                     _tl2378523929_))))
                                            (___kont2637326374_
                                             _tl2378523929_))
                                        (___kont2637326374_ _tl2378523929_))
                                    (___kont2637326374_ _tl2378523929_))))
                            (___kont2637326374_ _tl2378523929_))))
                    (___kont2637326374_ _tl2378523929_))
                (___kont2637326374_ _tl2378523929_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2637326374_
                                                     _tl2378523929_))))
                                            (___kont2637326374_
                                             _tl2378523929_))))
                                    (let ((_-hash-ref2383924197_
                                           (reverse _-hash-ref2383524076_))
                                          (_-xkwvar2383824195_
                                           (reverse _-xkwvar2383424074_))
                                          (_key2383724193_
                                           (reverse _key2383324072_))
                                          (_-absent-value2383624191_
                                           (reverse _-absent-value2383224070_)))
                                      (if (gx#stx-null? _tl2379423953_)
                                          (let ((_L24200_ _hd2384724060_)
                                                (_L24201_
                                                 _-absent-value2383624191_)
                                                (_L24202_ _key2383724193_)
                                                (_L24203_ _-xkwvar2383824195_)
                                                (_L24204_
                                                 _-hash-ref2383924197_)
                                                (_L24205_ _hd2382324031_)
                                                (_L24206_ _hd2381424007_)
                                                (_L24207_ _hd2380523983_)
                                                (_L24208_ _tl2379123945_)
                                                (_L24209_ _hd2379023943_))
                                            (if (if (gx#identifier? _L24209_)
                                                    (if (gx#identifier?
                                                         _L24208_)
                                                        (if (gxc#runtime-identifier=?
                                                             _L24207_
                                                             'apply)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24209_
                         _L24205_)
                        (if (andmap1 gx#stx-keyword?
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g2426224265_
                                                        _g2426324267_)
                                                 (cons _g2426224265_
                                                       _g2426324267_))
                                               '()
                                               _L24202_)))
                            (if (andmap1 (lambda (_g2426924271_)
                                           (gxc#runtime-identifier=?
                                            _g2426924271_
                                            'hash-ref))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2427324276_
                                                            _g2427424278_)
                                                     (cons _g2427324276_
                                                           _g2427424278_))
                                                   '()
                                                   _L24204_)))
                                (if (andmap1 (lambda (_g2428024282_)
                                               (gxc#runtime-identifier=?
                                                _g2428024282_
                                                'absent-value))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2428424287_
                                                                _g2428524289_)
                                                         (cons _g2428424287_
                                                               _g2428524289_))
                                                       '()
                                                       _L24201_)))
                                    (andmap1 (lambda (_g2429124293_)
                                               (gx#free-identifier=?
                                                _g2429124293_
                                                _L24209_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2429524298_
                                                                _g2429624300_)
                                                         (cons _g2429524298_
                                                               _g2429624300_))
                                                       '()
                                                       _L24203_)))
                                    '#f)
                                '#f)
                            '#f)
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (___kont2636926370_
                                                 _L24200_
                                                 _L24201_
                                                 _L24202_
                                                 _L24203_
                                                 _L24204_
                                                 _L24205_
                                                 _L24206_
                                                 _L24207_
                                                 _L24208_
                                                 _L24209_)
                                                (___kont2637326374_
                                                 _tl2378523929_)))
                                          (___kont2637326374_
                                           _tl2378523929_)))))))
                      (_loop2382824065_ _target2382524036_ '() '() '() '()))))
                 (___match2668026681_
                  (lambda (_e2371624315_
                           _hd2371724318_
                           _tl2371824320_
                           _e2371924323_
                           _hd2372024326_
                           _tl2372124328_
                           _e2372224331_
                           _hd2372324334_
                           _tl2372424336_
                           _e2372524339_
                           _hd2372624342_
                           _tl2372724344_
                           _e2372824347_
                           _hd2372924350_
                           _tl2373024352_
                           _e2373124355_
                           _hd2373224358_
                           _tl2373324360_
                           _e2373424363_
                           _hd2373524366_
                           _tl2373624368_
                           _e2373724371_
                           _hd2373824374_
                           _tl2373924376_
                           _e2374024379_
                           _hd2374124382_
                           _tl2374224384_
                           _e2374324387_
                           _hd2374424390_
                           _tl2374524392_
                           _e2374624395_
                           _hd2374724398_
                           _tl2374824400_
                           _e2374924403_
                           _hd2375024406_
                           _tl2375124408_
                           _e2375224411_
                           _hd2375324414_
                           _tl2375424416_
                           _e2375524419_
                           _hd2375624422_
                           _tl2375724424_
                           _e2375824427_
                           _hd2375924430_
                           _tl2376024432_
                           _e2376124435_
                           _hd2376224438_
                           _tl2376324440_
                           _e2376424443_
                           _hd2376524446_
                           _tl2376624448_
                           _e2376724451_
                           _hd2376824454_
                           _tl2376924456_
                           _e2377024459_
                           _hd2377124462_
                           _tl2377224464_)
                    (let ((_L24467_ _hd2377124462_)
                          (_L24468_ _hd2376224438_)
                          (_L24469_ _hd2375324414_)
                          (_L24470_ _hd2374424390_)
                          (_L24471_ _hd2373524366_)
                          (_L24472_ _hd2372024326_))
                      (if (if (gx#identifier? _L24472_)
                              (if (gxc#runtime-identifier=? _L24471_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L24470_
                                       'keyword-dispatch)
                                      (gx#free-identifier=? _L24472_ _L24467_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2636726368_
                           _L24467_
                           _L24468_
                           _L24469_
                           _L24470_
                           _L24471_
                           _L24472_)
                          (if (gx#stx-pair? _hd2372024326_)
                              (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                                (let ((_tl2379123945_ (##cdr _e2378923940_))
                                      (_hd2379023943_ (##car _e2378923940_)))
                                  (___kont2637326374_ _tl2371824320_)))
                              (___kont2637326374_ _tl2371824320_))))))
                 (___match2652826529_
                  (lambda (_e2370724532_ _hd2370824535_ _tl2370924537_)
                    (let ((_L24540_ _tl2370924537_))
                      (if (gxc#dispatch-lambda-form? _L24540_)
                          (___kont2636526366_ _L24540_)
                          (if (gx#stx-pair? _tl2370924537_)
                              (let ((_e2371924323_ (gx#stx-e _tl2370924537_)))
                                (let ((_tl2372124328_ (##cdr _e2371924323_))
                                      (_hd2372024326_ (##car _e2371924323_)))
                                  (if (gx#stx-pair? _tl2372124328_)
                                      (let ((_e2372224331_
                                             (gx#stx-e _tl2372124328_)))
                                        (let ((_tl2372424336_
                                               (##cdr _e2372224331_))
                                              (_hd2372324334_
                                               (##car _e2372224331_)))
                                          (if (gx#stx-pair? _hd2372324334_)
                                              (let ((_e2372524339_
                                                     (gx#stx-e
                                                      _hd2372324334_)))
                                                (let ((_tl2372724344_
                                                       (##cdr _e2372524339_))
                                                      (_hd2372624342_
                                                       (##car _e2372524339_)))
                                                  (if (gx#identifier?
                                                       _hd2372624342_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd2372624342_)
                                                          (if (gx#stx-pair?
                                                               _tl2372724344_)
                                                              (let ((_e2372824347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2372724344_)))
                        (let ((_tl2373024352_ (##cdr _e2372824347_))
                              (_hd2372924350_ (##car _e2372824347_)))
                          (if (gx#stx-pair? _hd2372924350_)
                              (let ((_e2373124355_ (gx#stx-e _hd2372924350_)))
                                (let ((_tl2373324360_ (##cdr _e2373124355_))
                                      (_hd2373224358_ (##car _e2373124355_)))
                                  (if (gx#identifier? _hd2373224358_)
                                      (if (gx#stx-eq? '%#ref _hd2373224358_)
                                          (if (gx#stx-pair? _tl2373324360_)
                                              (let ((_e2373424363_
                                                     (gx#stx-e
                                                      _tl2373324360_)))
                                                (let ((_tl2373624368_
                                                       (##cdr _e2373424363_))
                                                      (_hd2373524366_
                                                       (##car _e2373424363_)))
                                                  (if (gx#stx-null?
                                                       _tl2373624368_)
                                                      (if (gx#stx-pair?
                                                           _tl2373024352_)
                                                          (let ((_e2373724371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2373024352_)))
                    (let ((_tl2373924376_ (##cdr _e2373724371_))
                          (_hd2373824374_ (##car _e2373724371_)))
                      (if (gx#stx-pair? _hd2373824374_)
                          (let ((_e2374024379_ (gx#stx-e _hd2373824374_)))
                            (let ((_tl2374224384_ (##cdr _e2374024379_))
                                  (_hd2374124382_ (##car _e2374024379_)))
                              (if (gx#identifier? _hd2374124382_)
                                  (if (gx#stx-eq? '%#ref _hd2374124382_)
                                      (if (gx#stx-pair? _tl2374224384_)
                                          (let ((_e2374324387_
                                                 (gx#stx-e _tl2374224384_)))
                                            (let ((_tl2374524392_
                                                   (##cdr _e2374324387_))
                                                  (_hd2374424390_
                                                   (##car _e2374324387_)))
                                              (if (gx#stx-null? _tl2374524392_)
                                                  (if (gx#stx-pair?
                                                       _tl2373924376_)
                                                      (let ((_e2374624395_
                                                             (gx#stx-e
                                                              _tl2373924376_)))
                                                        (let ((_tl2374824400_
                                                               (##cdr _e2374624395_))
                                                              (_hd2374724398_
                                                               (##car _e2374624395_)))
                                                          (if (gx#stx-pair?
                                                               _hd2374724398_)
                                                              (let ((_e2374924403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2374724398_)))
                        (let ((_tl2375124408_ (##cdr _e2374924403_))
                              (_hd2375024406_ (##car _e2374924403_)))
                          (if (gx#identifier? _hd2375024406_)
                              (if (gx#stx-eq? '%#quote _hd2375024406_)
                                  (if (gx#stx-pair? _tl2375124408_)
                                      (let ((_e2375224411_
                                             (gx#stx-e _tl2375124408_)))
                                        (let ((_tl2375424416_
                                               (##cdr _e2375224411_))
                                              (_hd2375324414_
                                               (##car _e2375224411_)))
                                          (if (gx#stx-null? _tl2375424416_)
                                              (if (gx#stx-pair? _tl2374824400_)
                                                  (let ((_e2375524419_
                                                         (gx#stx-e
                                                          _tl2374824400_)))
                                                    (let ((_tl2375724424_
                                                           (##cdr _e2375524419_))
                                                          (_hd2375624422_
                                                           (##car _e2375524419_)))
                                                      (if (gx#stx-pair?
                                                           _hd2375624422_)
                                                          (let ((_e2375824427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2375624422_)))
                    (let ((_tl2376024432_ (##cdr _e2375824427_))
                          (_hd2375924430_ (##car _e2375824427_)))
                      (if (gx#identifier? _hd2375924430_)
                          (if (gx#stx-eq? '%#ref _hd2375924430_)
                              (if (gx#stx-pair? _tl2376024432_)
                                  (let ((_e2376124435_
                                         (gx#stx-e _tl2376024432_)))
                                    (let ((_tl2376324440_
                                           (##cdr _e2376124435_))
                                          (_hd2376224438_
                                           (##car _e2376124435_)))
                                      (if (gx#stx-null? _tl2376324440_)
                                          (if (gx#stx-pair? _tl2375724424_)
                                              (let ((_e2376424443_
                                                     (gx#stx-e
                                                      _tl2375724424_)))
                                                (let ((_tl2376624448_
                                                       (##cdr _e2376424443_))
                                                      (_hd2376524446_
                                                       (##car _e2376424443_)))
                                                  (if (gx#stx-pair?
                                                       _hd2376524446_)
                                                      (let ((_e2376724451_
                                                             (gx#stx-e
                                                              _hd2376524446_)))
                                                        (let ((_tl2376924456_
                                                               (##cdr _e2376724451_))
                                                              (_hd2376824454_
                                                               (##car _e2376724451_)))
                                                          (if (gx#identifier?
                                                               _hd2376824454_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2376824454_)
                          (if (gx#stx-pair? _tl2376924456_)
                              (let ((_e2377024459_ (gx#stx-e _tl2376924456_)))
                                (let ((_tl2377224464_ (##cdr _e2377024459_))
                                      (_hd2377124462_ (##car _e2377024459_)))
                                  (if (gx#stx-null? _tl2377224464_)
                                      (if (gx#stx-null? _tl2376624448_)
                                          (if (gx#stx-null? _tl2372424336_)
                                              (___match2668026681_
                                               _e2370724532_
                                               _hd2370824535_
                                               _tl2370924537_
                                               _e2371924323_
                                               _hd2372024326_
                                               _tl2372124328_
                                               _e2372224331_
                                               _hd2372324334_
                                               _tl2372424336_
                                               _e2372524339_
                                               _hd2372624342_
                                               _tl2372724344_
                                               _e2372824347_
                                               _hd2372924350_
                                               _tl2373024352_
                                               _e2373124355_
                                               _hd2373224358_
                                               _tl2373324360_
                                               _e2373424363_
                                               _hd2373524366_
                                               _tl2373624368_
                                               _e2373724371_
                                               _hd2373824374_
                                               _tl2373924376_
                                               _e2374024379_
                                               _hd2374124382_
                                               _tl2374224384_
                                               _e2374324387_
                                               _hd2374424390_
                                               _tl2374524392_
                                               _e2374624395_
                                               _hd2374724398_
                                               _tl2374824400_
                                               _e2374924403_
                                               _hd2375024406_
                                               _tl2375124408_
                                               _e2375224411_
                                               _hd2375324414_
                                               _tl2375424416_
                                               _e2375524419_
                                               _hd2375624422_
                                               _tl2375724424_
                                               _e2375824427_
                                               _hd2375924430_
                                               _tl2376024432_
                                               _e2376124435_
                                               _hd2376224438_
                                               _tl2376324440_
                                               _e2376424443_
                                               _hd2376524446_
                                               _tl2376624448_
                                               _e2376724451_
                                               _hd2376824454_
                                               _tl2376924456_
                                               _e2377024459_
                                               _hd2377124462_
                                               _tl2377224464_)
                                              (if (gx#stx-pair? _hd2372024326_)
                                                  (let ((_e2378923940_
                                                         (gx#stx-e
                                                          _hd2372024326_)))
                                                    (let ((_tl2379123945_
                                                           (##cdr _e2378923940_))
                                                          (_hd2379023943_
                                                           (##car _e2378923940_)))
                                                      (___kont2637326374_
                                                       _tl2370924537_)))
                                                  (___kont2637326374_
                                                   _tl2370924537_)))
                                          (if (gx#stx-pair? _hd2372024326_)
                                              (let ((_e2378923940_
                                                     (gx#stx-e
                                                      _hd2372024326_)))
                                                (let ((_tl2379123945_
                                                       (##cdr _e2378923940_))
                                                      (_hd2379023943_
                                                       (##car _e2378923940_)))
                                                  (___kont2637326374_
                                                   _tl2370924537_)))
                                              (___kont2637326374_
                                               _tl2370924537_)))
                                      (if (gx#stx-pair? _hd2372024326_)
                                          (let ((_e2378923940_
                                                 (gx#stx-e _hd2372024326_)))
                                            (let ((_tl2379123945_
                                                   (##cdr _e2378923940_))
                                                  (_hd2379023943_
                                                   (##car _e2378923940_)))
                                              (___kont2637326374_
                                               _tl2370924537_)))
                                          (___kont2637326374_
                                           _tl2370924537_)))))
                              (if (gx#stx-pair? _hd2372024326_)
                                  (let ((_e2378923940_
                                         (gx#stx-e _hd2372024326_)))
                                    (let ((_tl2379123945_
                                           (##cdr _e2378923940_))
                                          (_hd2379023943_
                                           (##car _e2378923940_)))
                                      (___kont2637326374_ _tl2370924537_)))
                                  (___kont2637326374_ _tl2370924537_)))
                          (if (gx#stx-pair? _hd2372024326_)
                              (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                                (let ((_tl2379123945_ (##cdr _e2378923940_))
                                      (_hd2379023943_ (##car _e2378923940_)))
                                  (___kont2637326374_ _tl2370924537_)))
                              (___kont2637326374_ _tl2370924537_)))
                      (if (gx#stx-pair? _hd2372024326_)
                          (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                            (let ((_tl2379123945_ (##cdr _e2378923940_))
                                  (_hd2379023943_ (##car _e2378923940_)))
                              (___kont2637326374_ _tl2370924537_)))
                          (___kont2637326374_ _tl2370924537_)))))
              (if (gx#stx-pair? _hd2372024326_)
                  (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                    (let ((_tl2379123945_ (##cdr _e2378923940_))
                          (_hd2379023943_ (##car _e2378923940_)))
                      (___kont2637326374_ _tl2370924537_)))
                  (___kont2637326374_ _tl2370924537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2372024326_)
                                                  (let ((_e2378923940_
                                                         (gx#stx-e
                                                          _hd2372024326_)))
                                                    (let ((_tl2379123945_
                                                           (##cdr _e2378923940_))
                                                          (_hd2379023943_
                                                           (##car _e2378923940_)))
                                                      (___kont2637326374_
                                                       _tl2370924537_)))
                                                  (___kont2637326374_
                                                   _tl2370924537_)))
                                          (if (gx#stx-pair? _hd2372024326_)
                                              (let ((_e2378923940_
                                                     (gx#stx-e
                                                      _hd2372024326_)))
                                                (let ((_tl2379123945_
                                                       (##cdr _e2378923940_))
                                                      (_hd2379023943_
                                                       (##car _e2378923940_)))
                                                  (___kont2637326374_
                                                   _tl2370924537_)))
                                              (___kont2637326374_
                                               _tl2370924537_)))))
                                  (if (gx#stx-pair? _hd2372024326_)
                                      (let ((_e2378923940_
                                             (gx#stx-e _hd2372024326_)))
                                        (let ((_tl2379123945_
                                               (##cdr _e2378923940_))
                                              (_hd2379023943_
                                               (##car _e2378923940_)))
                                          (___kont2637326374_ _tl2370924537_)))
                                      (___kont2637326374_ _tl2370924537_)))
                              (if (gx#stx-pair? _hd2372024326_)
                                  (let ((_e2378923940_
                                         (gx#stx-e _hd2372024326_)))
                                    (let ((_tl2379123945_
                                           (##cdr _e2378923940_))
                                          (_hd2379023943_
                                           (##car _e2378923940_)))
                                      (___kont2637326374_ _tl2370924537_)))
                                  (___kont2637326374_ _tl2370924537_)))
                          (if (gx#stx-pair? _hd2372024326_)
                              (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                                (let ((_tl2379123945_ (##cdr _e2378923940_))
                                      (_hd2379023943_ (##car _e2378923940_)))
                                  (___kont2637326374_ _tl2370924537_)))
                              (___kont2637326374_ _tl2370924537_)))))
                  (if (gx#stx-pair? _hd2372024326_)
                      (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                        (let ((_tl2379123945_ (##cdr _e2378923940_))
                              (_hd2379023943_ (##car _e2378923940_)))
                          (___kont2637326374_ _tl2370924537_)))
                      (___kont2637326374_ _tl2370924537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _hd2372024326_)
                                                      (let ((_e2378923940_
                                                             (gx#stx-e
                                                              _hd2372024326_)))
                                                        (let ((_tl2379123945_
                                                               (##cdr _e2378923940_))
                                                              (_hd2379023943_
                                                               (##car _e2378923940_)))
                                                          (___kont2637326374_
                                                           _tl2370924537_)))
                                                      (___kont2637326374_
                                                       _tl2370924537_)))
                                              (if (gx#stx-pair? _hd2372024326_)
                                                  (let ((_e2378923940_
                                                         (gx#stx-e
                                                          _hd2372024326_)))
                                                    (let ((_tl2379123945_
                                                           (##cdr _e2378923940_))
                                                          (_hd2379023943_
                                                           (##car _e2378923940_)))
                                                      (___kont2637326374_
                                                       _tl2370924537_)))
                                                  (___kont2637326374_
                                                   _tl2370924537_)))))
                                      (if (gx#stx-pair? _hd2372024326_)
                                          (let ((_e2378923940_
                                                 (gx#stx-e _hd2372024326_)))
                                            (let ((_tl2379123945_
                                                   (##cdr _e2378923940_))
                                                  (_hd2379023943_
                                                   (##car _e2378923940_)))
                                              (___kont2637326374_
                                               _tl2370924537_)))
                                          (___kont2637326374_ _tl2370924537_)))
                                  (if (gx#stx-pair? _hd2372024326_)
                                      (let ((_e2378923940_
                                             (gx#stx-e _hd2372024326_)))
                                        (let ((_tl2379123945_
                                               (##cdr _e2378923940_))
                                              (_hd2379023943_
                                               (##car _e2378923940_)))
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2375024406_)
                                              (if (gx#stx-pair? _tl2375124408_)
                                                  (let ((_e2382224028_
                                                         (gx#stx-e
                                                          _tl2375124408_)))
                                                    (let ((_tl2382424033_
                                                           (##cdr _e2382224028_))
                                                          (_hd2382324031_
                                                           (##car _e2382224028_)))
                                                      (if (gx#stx-null?
                                                           _tl2382424033_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2374824400_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl2374824400_)
                                '1)
                          (let ((___splice2637126372_
                                 (gx#syntax-split-splice _tl2374824400_ '1)))
                            (let ((_tl2382724038_
                                   (##vector-ref ___splice2637126372_ '1))
                                  (_target2382524036_
                                   (##vector-ref ___splice2637126372_ '0)))
                              (if (gx#stx-pair? _tl2382724038_)
                                  (let ((_e2384024041_
                                         (gx#stx-e _tl2382724038_)))
                                    (let ((_tl2384224046_
                                           (##cdr _e2384024041_))
                                          (_hd2384124044_
                                           (##car _e2384024041_)))
                                      (if (gx#stx-pair? _hd2384124044_)
                                          (let ((_e2384324049_
                                                 (gx#stx-e _hd2384124044_)))
                                            (let ((_tl2384524054_
                                                   (##cdr _e2384324049_))
                                                  (_hd2384424052_
                                                   (##car _e2384324049_)))
                                              (if (gx#identifier?
                                                   _hd2384424052_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2384424052_)
                                                      (if (gx#stx-pair?
                                                           _tl2384524054_)
                                                          (let ((_e2384624057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2384524054_)))
                    (let ((_tl2384824062_ (##cdr _e2384624057_))
                          (_hd2384724060_ (##car _e2384624057_)))
                      (if (gx#stx-null? _tl2384824062_)
                          (if (gx#stx-null? _tl2384224046_)
                              (___match2682026821_
                               _e2370724532_
                               _hd2370824535_
                               _tl2370924537_
                               _e2371924323_
                               _hd2372024326_
                               _tl2372124328_
                               _e2378923940_
                               _hd2379023943_
                               _tl2379123945_
                               _e2372224331_
                               _hd2372324334_
                               _tl2372424336_
                               _e2372524339_
                               _hd2372624342_
                               _tl2372724344_
                               _e2372824347_
                               _hd2372924350_
                               _tl2373024352_
                               _e2373124355_
                               _hd2373224358_
                               _tl2373324360_
                               _e2373424363_
                               _hd2373524366_
                               _tl2373624368_
                               _e2373724371_
                               _hd2373824374_
                               _tl2373924376_
                               _e2374024379_
                               _hd2374124382_
                               _tl2374224384_
                               _e2374324387_
                               _hd2374424390_
                               _tl2374524392_
                               _e2374624395_
                               _hd2374724398_
                               _tl2374824400_
                               _e2374924403_
                               _hd2375024406_
                               _tl2375124408_
                               _e2382224028_
                               _hd2382324031_
                               _tl2382424033_
                               ___splice2637126372_
                               _target2382524036_
                               _tl2382724038_
                               _e2384024041_
                               _hd2384124044_
                               _tl2384224046_
                               _e2384324049_
                               _hd2384424052_
                               _tl2384524054_
                               _e2384624057_
                               _hd2384724060_
                               _tl2384824062_)
                              (___kont2637326374_ _tl2370924537_))
                          (___kont2637326374_ _tl2370924537_))))
                  (___kont2637326374_ _tl2370924537_))
              (___kont2637326374_ _tl2370924537_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2637326374_
                                                   _tl2370924537_))))
                                          (___kont2637326374_
                                           _tl2370924537_))))
                                  (___kont2637326374_ _tl2370924537_))))
                          (___kont2637326374_ _tl2370924537_))
                      (___kont2637326374_ _tl2370924537_))
                  (___kont2637326374_ _tl2370924537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2637326374_
                                                   _tl2370924537_))
                                              (___kont2637326374_
                                               _tl2370924537_))))
                                      (___kont2637326374_ _tl2370924537_)))
                              (if (gx#stx-pair? _hd2372024326_)
                                  (let ((_e2378923940_
                                         (gx#stx-e _hd2372024326_)))
                                    (let ((_tl2379123945_
                                           (##cdr _e2378923940_))
                                          (_hd2379023943_
                                           (##car _e2378923940_)))
                                      (___kont2637326374_ _tl2370924537_)))
                                  (___kont2637326374_ _tl2370924537_)))))
                      (if (gx#stx-pair? _hd2372024326_)
                          (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                            (let ((_tl2379123945_ (##cdr _e2378923940_))
                                  (_hd2379023943_ (##car _e2378923940_)))
                              (___kont2637326374_ _tl2370924537_)))
                          (___kont2637326374_ _tl2370924537_)))))
              (if (gx#stx-pair? _hd2372024326_)
                  (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                    (let ((_tl2379123945_ (##cdr _e2378923940_))
                          (_hd2379023943_ (##car _e2378923940_)))
                      (___kont2637326374_ _tl2370924537_)))
                  (___kont2637326374_ _tl2370924537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _hd2372024326_)
                                                      (let ((_e2378923940_
                                                             (gx#stx-e
                                                              _hd2372024326_)))
                                                        (let ((_tl2379123945_
                                                               (##cdr _e2378923940_))
                                                              (_hd2379023943_
                                                               (##car _e2378923940_)))
                                                          (___kont2637326374_
                                                           _tl2370924537_)))
                                                      (___kont2637326374_
                                                       _tl2370924537_)))))
                                          (if (gx#stx-pair? _hd2372024326_)
                                              (let ((_e2378923940_
                                                     (gx#stx-e
                                                      _hd2372024326_)))
                                                (let ((_tl2379123945_
                                                       (##cdr _e2378923940_))
                                                      (_hd2379023943_
                                                       (##car _e2378923940_)))
                                                  (___kont2637326374_
                                                   _tl2370924537_)))
                                              (___kont2637326374_
                                               _tl2370924537_)))
                                      (if (gx#stx-pair? _hd2372024326_)
                                          (let ((_e2378923940_
                                                 (gx#stx-e _hd2372024326_)))
                                            (let ((_tl2379123945_
                                                   (##cdr _e2378923940_))
                                                  (_hd2379023943_
                                                   (##car _e2378923940_)))
                                              (___kont2637326374_
                                               _tl2370924537_)))
                                          (___kont2637326374_ _tl2370924537_)))
                                  (if (gx#stx-pair? _hd2372024326_)
                                      (let ((_e2378923940_
                                             (gx#stx-e _hd2372024326_)))
                                        (let ((_tl2379123945_
                                               (##cdr _e2378923940_))
                                              (_hd2379023943_
                                               (##car _e2378923940_)))
                                          (___kont2637326374_ _tl2370924537_)))
                                      (___kont2637326374_ _tl2370924537_)))))
                          (if (gx#stx-pair? _hd2372024326_)
                              (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                                (let ((_tl2379123945_ (##cdr _e2378923940_))
                                      (_hd2379023943_ (##car _e2378923940_)))
                                  (___kont2637326374_ _tl2370924537_)))
                              (___kont2637326374_ _tl2370924537_)))))
                  (if (gx#stx-pair? _hd2372024326_)
                      (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                        (let ((_tl2379123945_ (##cdr _e2378923940_))
                              (_hd2379023943_ (##car _e2378923940_)))
                          (___kont2637326374_ _tl2370924537_)))
                      (___kont2637326374_ _tl2370924537_)))
              (if (gx#stx-pair? _hd2372024326_)
                  (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                    (let ((_tl2379123945_ (##cdr _e2378923940_))
                          (_hd2379023943_ (##car _e2378923940_)))
                      (___kont2637326374_ _tl2370924537_)))
                  (___kont2637326374_ _tl2370924537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2372024326_)
                                                  (let ((_e2378923940_
                                                         (gx#stx-e
                                                          _hd2372024326_)))
                                                    (let ((_tl2379123945_
                                                           (##cdr _e2378923940_))
                                                          (_hd2379023943_
                                                           (##car _e2378923940_)))
                                                      (___kont2637326374_
                                                       _tl2370924537_)))
                                                  (___kont2637326374_
                                                   _tl2370924537_)))
                                          (if (gx#stx-pair? _hd2372024326_)
                                              (let ((_e2378923940_
                                                     (gx#stx-e
                                                      _hd2372024326_)))
                                                (let ((_tl2379123945_
                                                       (##cdr _e2378923940_))
                                                      (_hd2379023943_
                                                       (##car _e2378923940_)))
                                                  (___kont2637326374_
                                                   _tl2370924537_)))
                                              (___kont2637326374_
                                               _tl2370924537_)))
                                      (if (gx#stx-pair? _hd2372024326_)
                                          (let ((_e2378923940_
                                                 (gx#stx-e _hd2372024326_)))
                                            (let ((_tl2379123945_
                                                   (##cdr _e2378923940_))
                                                  (_hd2379023943_
                                                   (##car _e2378923940_)))
                                              (___kont2637326374_
                                               _tl2370924537_)))
                                          (___kont2637326374_
                                           _tl2370924537_)))))
                              (if (gx#stx-pair? _hd2372024326_)
                                  (let ((_e2378923940_
                                         (gx#stx-e _hd2372024326_)))
                                    (let ((_tl2379123945_
                                           (##cdr _e2378923940_))
                                          (_hd2379023943_
                                           (##car _e2378923940_)))
                                      (___kont2637326374_ _tl2370924537_)))
                                  (___kont2637326374_ _tl2370924537_)))))
                      (if (gx#stx-pair? _hd2372024326_)
                          (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                            (let ((_tl2379123945_ (##cdr _e2378923940_))
                                  (_hd2379023943_ (##car _e2378923940_)))
                              (___kont2637326374_ _tl2370924537_)))
                          (___kont2637326374_ _tl2370924537_)))
                  (if (gx#stx-pair? _hd2372024326_)
                      (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                        (let ((_tl2379123945_ (##cdr _e2378923940_))
                              (_hd2379023943_ (##car _e2378923940_)))
                          (___kont2637326374_ _tl2370924537_)))
                      (___kont2637326374_ _tl2370924537_)))
              (if (gx#stx-pair? _hd2372024326_)
                  (let ((_e2378923940_ (gx#stx-e _hd2372024326_)))
                    (let ((_tl2379123945_ (##cdr _e2378923940_))
                          (_hd2379023943_ (##car _e2378923940_)))
                      (___kont2637326374_ _tl2370924537_)))
                  (___kont2637326374_ _tl2370924537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2372024326_)
                                                  (let ((_e2378923940_
                                                         (gx#stx-e
                                                          _hd2372024326_)))
                                                    (let ((_tl2379123945_
                                                           (##cdr _e2378923940_))
                                                          (_hd2379023943_
                                                           (##car _e2378923940_)))
                                                      (___kont2637326374_
                                                       _tl2370924537_)))
                                                  (___kont2637326374_
                                                   _tl2370924537_)))))
                                      (if (gx#stx-pair? _hd2372024326_)
                                          (let ((_e2378923940_
                                                 (gx#stx-e _hd2372024326_)))
                                            (let ((_tl2379123945_
                                                   (##cdr _e2378923940_))
                                                  (_hd2379023943_
                                                   (##car _e2378923940_)))
                                              (___kont2637326374_
                                               _tl2370924537_)))
                                          (___kont2637326374_
                                           _tl2370924537_)))))
                              (___kont2637326374_ _tl2370924537_))))))
                 (___match2652226523_
                  (lambda (_e2365224554_
                           _hd2365324557_
                           _tl2365424559_
                           _e2365524562_
                           _hd2365624565_
                           _tl2365724567_
                           ___splice2636126362_
                           _target2365824570_
                           _tl2366024572_)
                    (letrec ((_loop2366124575_
                              (lambda (_hd2365924578_ _arg2366524580_)
                                (if (gx#stx-pair? _hd2365924578_)
                                    (let ((_e2366224583_
                                           (gx#stx-e _hd2365924578_)))
                                      (let ((_lp-tl2366424588_
                                             (##cdr _e2366224583_))
                                            (_lp-hd2366324586_
                                             (##car _e2366224583_)))
                                        (_loop2366124575_
                                         _lp-tl2366424588_
                                         (cons _lp-hd2366324586_
                                               _arg2366524580_))))
                                    (let ((_arg2366624591_
                                           (reverse _arg2366524580_)))
                                      (if (gx#stx-pair? _tl2365724567_)
                                          (let ((_e2366724594_
                                                 (gx#stx-e _tl2365724567_)))
                                            (let ((_tl2366924599_
                                                   (##cdr _e2366724594_))
                                                  (_hd2366824597_
                                                   (##car _e2366724594_)))
                                              (if (gx#stx-pair? _hd2366824597_)
                                                  (let ((_e2367024602_
                                                         (gx#stx-e
                                                          _hd2366824597_)))
                                                    (let ((_tl2367224607_
                                                           (##cdr _e2367024602_))
                                                          (_hd2367124605_
                                                           (##car _e2367024602_)))
                                                      (if (gx#identifier?
                                                           _hd2367124605_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2367124605_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2367224607_)
                          (let ((_e2367324610_ (gx#stx-e _tl2367224607_)))
                            (let ((_tl2367524615_ (##cdr _e2367324610_))
                                  (_hd2367424613_ (##car _e2367324610_)))
                              (if (gx#stx-pair? _hd2367424613_)
                                  (let ((_e2367624618_
                                         (gx#stx-e _hd2367424613_)))
                                    (let ((_tl2367824623_
                                           (##cdr _e2367624618_))
                                          (_hd2367724621_
                                           (##car _e2367624618_)))
                                      (if (gx#identifier? _hd2367724621_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2367724621_)
                                              (if (gx#stx-pair? _tl2367824623_)
                                                  (let ((_e2367924626_
                                                         (gx#stx-e
                                                          _tl2367824623_)))
                                                    (let ((_tl2368124631_
                                                           (##cdr _e2367924626_))
                                                          (_hd2368024629_
                                                           (##car _e2367924626_)))
                                                      (if (gx#stx-null?
                                                           _tl2368124631_)
                                                          (if (gx#stx-pair?
                                                               _tl2367524615_)
                                                              (let ((_e2368224634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2367524615_)))
                        (let ((_tl2368424639_ (##cdr _e2368224634_))
                              (_hd2368324637_ (##car _e2368224634_)))
                          (if (gx#stx-pair? _hd2368324637_)
                              (let ((_e2368524642_ (gx#stx-e _hd2368324637_)))
                                (let ((_tl2368724647_ (##cdr _e2368524642_))
                                      (_hd2368624645_ (##car _e2368524642_)))
                                  (if (gx#identifier? _hd2368624645_)
                                      (if (gx#stx-eq? '%#ref _hd2368624645_)
                                          (if (gx#stx-pair? _tl2368724647_)
                                              (let ((_e2368824650_
                                                     (gx#stx-e
                                                      _tl2368724647_)))
                                                (let ((_tl2369024655_
                                                       (##cdr _e2368824650_))
                                                      (_hd2368924653_
                                                       (##car _e2368824650_)))
                                                  (if (gx#stx-null?
                                                       _tl2369024655_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2368424639_)
                                                          (let ((___splice2636326364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl2368424639_ '0)))
                    (let ((_tl2369324660_
                           (##vector-ref ___splice2636326364_ '1))
                          (_target2369124658_
                           (##vector-ref ___splice2636326364_ '0)))
                      (if (gx#stx-null? _tl2369324660_)
                          (letrec ((_loop2369424663_
                                    (lambda (_hd2369224666_ _xarg2369824668_)
                                      (if (gx#stx-pair? _hd2369224666_)
                                          (let ((_e2369524671_
                                                 (gx#stx-e _hd2369224666_)))
                                            (let ((_lp-tl2369724676_
                                                   (##cdr _e2369524671_))
                                                  (_lp-hd2369624674_
                                                   (##car _e2369524671_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2369624674_)
                                                  (let ((_e2370024679_
                                                         (gx#stx-e
                                                          _lp-hd2369624674_)))
                                                    (let ((_tl2370224684_
                                                           (##cdr _e2370024679_))
                                                          (_hd2370124682_
                                                           (##car _e2370024679_)))
                                                      (if (gx#identifier?
                                                           _hd2370124682_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2370124682_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2370224684_)
                          (let ((_e2370324687_ (gx#stx-e _tl2370224684_)))
                            (let ((_tl2370524692_ (##cdr _e2370324687_))
                                  (_hd2370424690_ (##car _e2370324687_)))
                              (if (gx#stx-null? _tl2370524692_)
                                  (_loop2369424663_
                                   _lp-tl2369724676_
                                   (cons _hd2370424690_ _xarg2369824668_))
                                  (___match2652826529_
                                   _e2365224554_
                                   _hd2365324557_
                                   _tl2365424559_))))
                          (___match2652826529_
                           _e2365224554_
                           _hd2365324557_
                           _tl2365424559_))
                      (___match2652826529_
                       _e2365224554_
                       _hd2365324557_
                       _tl2365424559_))
                  (___match2652826529_
                   _e2365224554_
                   _hd2365324557_
                   _tl2365424559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2652826529_
                                                   _e2365224554_
                                                   _hd2365324557_
                                                   _tl2365424559_))))
                                          (let ((_xarg2369924695_
                                                 (reverse _xarg2369824668_)))
                                            (if (gx#stx-null? _tl2366924599_)
                                                (let ((_L24698_
                                                       _xarg2369924695_)
                                                      (_L24699_ _hd2368924653_)
                                                      (_L24700_ _hd2368024629_)
                                                      (_L24701_
                                                       _arg2366624591_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2473824741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2473924743_)
                               (cons _g2473824741_ _g2473924743_))
                             '()
                             _L24701_)))
                  (if (gxc#runtime-identifier=? _L24700_ 'make-struct-instance)
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2474524748_
                                                          _g2474624750_)
                                                   (cons _g2474524748_
                                                         _g2474624750_))
                                                 '()
                                                 _L24701_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2475224755_
                                                          _g2475324757_)
                                                   (cons _g2475224755_
                                                         _g2475324757_))
                                                 '()
                                                 _L24698_))))
                          (andmap2 gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2475924762_
                                                      _g2476024764_)
                                               (cons _g2475924762_
                                                     _g2476024764_))
                                             '()
                                             _L24701_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2476624769_
                                                      _g2476724771_)
                                               (cons _g2476624769_
                                                     _g2476724771_))
                                             '()
                                             _L24698_)))
                          '#f)
                      '#f)
                  '#f)
              (___kont2635926360_ _L24698_ _L24699_ _L24700_ _L24701_)
              (___match2652826529_
               _e2365224554_
               _hd2365324557_
               _tl2365424559_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2652826529_
                                                 _e2365224554_
                                                 _hd2365324557_
                                                 _tl2365424559_)))))))
                            (_loop2369424663_ _target2369124658_ '()))
                          (___match2652826529_
                           _e2365224554_
                           _hd2365324557_
                           _tl2365424559_))))
                  (___match2652826529_
                   _e2365224554_
                   _hd2365324557_
                   _tl2365424559_))
              (___match2652826529_
               _e2365224554_
               _hd2365324557_
               _tl2365424559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2652826529_
                                               _e2365224554_
                                               _hd2365324557_
                                               _tl2365424559_))
                                          (___match2652826529_
                                           _e2365224554_
                                           _hd2365324557_
                                           _tl2365424559_))
                                      (___match2652826529_
                                       _e2365224554_
                                       _hd2365324557_
                                       _tl2365424559_))))
                              (___match2652826529_
                               _e2365224554_
                               _hd2365324557_
                               _tl2365424559_))))
                      (___match2652826529_
                       _e2365224554_
                       _hd2365324557_
                       _tl2365424559_))
                  (___match2652826529_
                   _e2365224554_
                   _hd2365324557_
                   _tl2365424559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2652826529_
                                                   _e2365224554_
                                                   _hd2365324557_
                                                   _tl2365424559_))
                                              (___match2652826529_
                                               _e2365224554_
                                               _hd2365324557_
                                               _tl2365424559_))
                                          (___match2652826529_
                                           _e2365224554_
                                           _hd2365324557_
                                           _tl2365424559_))))
                                  (___match2652826529_
                                   _e2365224554_
                                   _hd2365324557_
                                   _tl2365424559_))))
                          (___match2652826529_
                           _e2365224554_
                           _hd2365324557_
                           _tl2365424559_))
                      (___match2652826529_
                       _e2365224554_
                       _hd2365324557_
                       _tl2365424559_))
                  (___match2652826529_
                   _e2365224554_
                   _hd2365324557_
                   _tl2365424559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2652826529_
                                                   _e2365224554_
                                                   _hd2365324557_
                                                   _tl2365424559_))))
                                          (___match2652826529_
                                           _e2365224554_
                                           _hd2365324557_
                                           _tl2365424559_)))))))
                      (_loop2366124575_ _target2365824570_ '()))))
                 (___match2650226503_
                  (lambda (_e2360024784_
                           _hd2360124787_
                           _tl2360224789_
                           _e2360324792_
                           _hd2360424795_
                           _tl2360524797_
                           _e2360624800_
                           _hd2360724803_
                           _tl2360824805_
                           _e2360924808_
                           _hd2361024811_
                           _tl2361124813_
                           _e2361224816_
                           _hd2361324819_
                           _tl2361424821_
                           _e2361524824_
                           _hd2361624827_
                           _tl2361724829_
                           _e2361824832_
                           _hd2361924835_
                           _tl2362024837_
                           _e2362124840_
                           _hd2362224843_
                           _tl2362324845_
                           _e2362424848_
                           _hd2362524851_
                           _tl2362624853_
                           _e2362724856_
                           _hd2362824859_
                           _tl2362924861_
                           _e2363024864_
                           _hd2363124867_
                           _tl2363224869_
                           _e2363324872_
                           _hd2363424875_
                           _tl2363524877_
                           _e2363624880_
                           _hd2363724883_
                           _tl2363824885_
                           _e2363924888_
                           _hd2364024891_
                           _tl2364124893_
                           _e2364224896_
                           _hd2364324899_
                           _tl2364424901_
                           _e2364524904_
                           _hd2364624907_
                           _tl2364724909_)
                    (let ((_L24912_ _hd2364624907_)
                          (_L24913_ _hd2363724883_)
                          (_L24914_ _hd2362824859_)
                          (_L24915_ _hd2361924835_)
                          (_L24916_ _hd2360424795_))
                      (if (if (gx#identifier? _L24916_)
                              (if (gxc#runtime-identifier=? _L24915_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L24914_
                                       'make-struct-instance)
                                      (gx#free-identifier=? _L24916_ _L24912_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2635726358_
                           _L24912_
                           _L24913_
                           _L24914_
                           _L24915_
                           _L24916_)
                          (if (gx#stx-pair/null? _hd2360424795_)
                              (let ((___splice2636126362_
                                     (gx#syntax-split-splice
                                      _hd2360424795_
                                      '0)))
                                (let ((_tl2366024572_
                                       (##vector-ref ___splice2636126362_ '1))
                                      (_target2365824570_
                                       (##vector-ref ___splice2636126362_ '0)))
                                  (if (gx#stx-null? _tl2366024572_)
                                      (___match2652226523_
                                       _e2360024784_
                                       _hd2360124787_
                                       _tl2360224789_
                                       _e2360324792_
                                       _hd2360424795_
                                       _tl2360524797_
                                       ___splice2636126362_
                                       _target2365824570_
                                       _tl2366024572_)
                                      (___match2652826529_
                                       _e2360024784_
                                       _hd2360124787_
                                       _tl2360224789_))))
                              (___match2652826529_
                               _e2360024784_
                               _hd2360124787_
                               _tl2360224789_)))))))
            (if (gx#stx-pair? ___stx2635526356_)
                (let ((_e2360024784_ (gx#stx-e ___stx2635526356_)))
                  (let ((_tl2360224789_ (##cdr _e2360024784_))
                        (_hd2360124787_ (##car _e2360024784_)))
                    (if (gx#stx-pair? _tl2360224789_)
                        (let ((_e2360324792_ (gx#stx-e _tl2360224789_)))
                          (let ((_tl2360524797_ (##cdr _e2360324792_))
                                (_hd2360424795_ (##car _e2360324792_)))
                            (if (gx#stx-pair? _tl2360524797_)
                                (let ((_e2360624800_
                                       (gx#stx-e _tl2360524797_)))
                                  (let ((_tl2360824805_ (##cdr _e2360624800_))
                                        (_hd2360724803_ (##car _e2360624800_)))
                                    (if (gx#stx-pair? _hd2360724803_)
                                        (let ((_e2360924808_
                                               (gx#stx-e _hd2360724803_)))
                                          (let ((_tl2361124813_
                                                 (##cdr _e2360924808_))
                                                (_hd2361024811_
                                                 (##car _e2360924808_)))
                                            (if (gx#identifier? _hd2361024811_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2361024811_)
                                                    (if (gx#stx-pair?
                                                         _tl2361124813_)
                                                        (let ((_e2361224816_
                                                               (gx#stx-e
                                                                _tl2361124813_)))
                                                          (let ((_tl2361424821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2361224816_))
                        (_hd2361324819_ (##car _e2361224816_)))
                    (if (gx#stx-pair? _hd2361324819_)
                        (let ((_e2361524824_ (gx#stx-e _hd2361324819_)))
                          (let ((_tl2361724829_ (##cdr _e2361524824_))
                                (_hd2361624827_ (##car _e2361524824_)))
                            (if (gx#identifier? _hd2361624827_)
                                (if (gx#stx-eq? '%#ref _hd2361624827_)
                                    (if (gx#stx-pair? _tl2361724829_)
                                        (let ((_e2361824832_
                                               (gx#stx-e _tl2361724829_)))
                                          (let ((_tl2362024837_
                                                 (##cdr _e2361824832_))
                                                (_hd2361924835_
                                                 (##car _e2361824832_)))
                                            (if (gx#stx-null? _tl2362024837_)
                                                (if (gx#stx-pair?
                                                     _tl2361424821_)
                                                    (let ((_e2362124840_
                                                           (gx#stx-e
                                                            _tl2361424821_)))
                                                      (let ((_tl2362324845_
                                                             (##cdr _e2362124840_))
                                                            (_hd2362224843_
                                                             (##car _e2362124840_)))
                                                        (if (gx#stx-pair?
                                                             _hd2362224843_)
                                                            (let ((_e2362424848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2362224843_)))
                      (let ((_tl2362624853_ (##cdr _e2362424848_))
                            (_hd2362524851_ (##car _e2362424848_)))
                        (if (gx#identifier? _hd2362524851_)
                            (if (gx#stx-eq? '%#ref _hd2362524851_)
                                (if (gx#stx-pair? _tl2362624853_)
                                    (let ((_e2362724856_
                                           (gx#stx-e _tl2362624853_)))
                                      (let ((_tl2362924861_
                                             (##cdr _e2362724856_))
                                            (_hd2362824859_
                                             (##car _e2362724856_)))
                                        (if (gx#stx-null? _tl2362924861_)
                                            (if (gx#stx-pair? _tl2362324845_)
                                                (let ((_e2363024864_
                                                       (gx#stx-e
                                                        _tl2362324845_)))
                                                  (let ((_tl2363224869_
                                                         (##cdr _e2363024864_))
                                                        (_hd2363124867_
                                                         (##car _e2363024864_)))
                                                    (if (gx#stx-pair?
                                                         _hd2363124867_)
                                                        (let ((_e2363324872_
                                                               (gx#stx-e
                                                                _hd2363124867_)))
                                                          (let ((_tl2363524877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2363324872_))
                        (_hd2363424875_ (##car _e2363324872_)))
                    (if (gx#identifier? _hd2363424875_)
                        (if (gx#stx-eq? '%#ref _hd2363424875_)
                            (if (gx#stx-pair? _tl2363524877_)
                                (let ((_e2363624880_
                                       (gx#stx-e _tl2363524877_)))
                                  (let ((_tl2363824885_ (##cdr _e2363624880_))
                                        (_hd2363724883_ (##car _e2363624880_)))
                                    (if (gx#stx-null? _tl2363824885_)
                                        (if (gx#stx-pair? _tl2363224869_)
                                            (let ((_e2363924888_
                                                   (gx#stx-e _tl2363224869_)))
                                              (let ((_tl2364124893_
                                                     (##cdr _e2363924888_))
                                                    (_hd2364024891_
                                                     (##car _e2363924888_)))
                                                (if (gx#stx-pair?
                                                     _hd2364024891_)
                                                    (let ((_e2364224896_
                                                           (gx#stx-e
                                                            _hd2364024891_)))
                                                      (let ((_tl2364424901_
                                                             (##cdr _e2364224896_))
                                                            (_hd2364324899_
                                                             (##car _e2364224896_)))
                                                        (if (gx#identifier?
                                                             _hd2364324899_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2364324899_)
                        (if (gx#stx-pair? _tl2364424901_)
                            (let ((_e2364524904_ (gx#stx-e _tl2364424901_)))
                              (let ((_tl2364724909_ (##cdr _e2364524904_))
                                    (_hd2364624907_ (##car _e2364524904_)))
                                (if (gx#stx-null? _tl2364724909_)
                                    (if (gx#stx-null? _tl2364124893_)
                                        (if (gx#stx-null? _tl2360824805_)
                                            (___match2650226503_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_
                                             _e2360324792_
                                             _hd2360424795_
                                             _tl2360524797_
                                             _e2360624800_
                                             _hd2360724803_
                                             _tl2360824805_
                                             _e2360924808_
                                             _hd2361024811_
                                             _tl2361124813_
                                             _e2361224816_
                                             _hd2361324819_
                                             _tl2361424821_
                                             _e2361524824_
                                             _hd2361624827_
                                             _tl2361724829_
                                             _e2361824832_
                                             _hd2361924835_
                                             _tl2362024837_
                                             _e2362124840_
                                             _hd2362224843_
                                             _tl2362324845_
                                             _e2362424848_
                                             _hd2362524851_
                                             _tl2362624853_
                                             _e2362724856_
                                             _hd2362824859_
                                             _tl2362924861_
                                             _e2363024864_
                                             _hd2363124867_
                                             _tl2363224869_
                                             _e2363324872_
                                             _hd2363424875_
                                             _tl2363524877_
                                             _e2363624880_
                                             _hd2363724883_
                                             _tl2363824885_
                                             _e2363924888_
                                             _hd2364024891_
                                             _tl2364124893_
                                             _e2364224896_
                                             _hd2364324899_
                                             _tl2364424901_
                                             _e2364524904_
                                             _hd2364624907_
                                             _tl2364724909_)
                                            (if (gx#stx-pair/null?
                                                 _hd2360424795_)
                                                (let ((___splice2636126362_
                                                       (gx#syntax-split-splice
                                                        _hd2360424795_
                                                        '0)))
                                                  (let ((_tl2366024572_
                                                         (##vector-ref
                                                          ___splice2636126362_
                                                          '1))
                                                        (_target2365824570_
                                                         (##vector-ref
                                                          ___splice2636126362_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2366024572_)
                                                        (___match2652226523_
                                                         _e2360024784_
                                                         _hd2360124787_
                                                         _tl2360224789_
                                                         _e2360324792_
                                                         _hd2360424795_
                                                         _tl2360524797_
                                                         ___splice2636126362_
                                                         _target2365824570_
                                                         _tl2366024572_)
                                                        (___match2652826529_
                                                         _e2360024784_
                                                         _hd2360124787_
                                                         _tl2360224789_))))
                                                (___match2652826529_
                                                 _e2360024784_
                                                 _hd2360124787_
                                                 _tl2360224789_)))
                                        (if (gx#stx-pair/null? _hd2360424795_)
                                            (let ((___splice2636126362_
                                                   (gx#syntax-split-splice
                                                    _hd2360424795_
                                                    '0)))
                                              (let ((_tl2366024572_
                                                     (##vector-ref
                                                      ___splice2636126362_
                                                      '1))
                                                    (_target2365824570_
                                                     (##vector-ref
                                                      ___splice2636126362_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2366024572_)
                                                    (___match2652226523_
                                                     _e2360024784_
                                                     _hd2360124787_
                                                     _tl2360224789_
                                                     _e2360324792_
                                                     _hd2360424795_
                                                     _tl2360524797_
                                                     ___splice2636126362_
                                                     _target2365824570_
                                                     _tl2366024572_)
                                                    (___match2652826529_
                                                     _e2360024784_
                                                     _hd2360124787_
                                                     _tl2360224789_))))
                                            (___match2652826529_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_)))
                                    (if (gx#stx-pair/null? _hd2360424795_)
                                        (let ((___splice2636126362_
                                               (gx#syntax-split-splice
                                                _hd2360424795_
                                                '0)))
                                          (let ((_tl2366024572_
                                                 (##vector-ref
                                                  ___splice2636126362_
                                                  '1))
                                                (_target2365824570_
                                                 (##vector-ref
                                                  ___splice2636126362_
                                                  '0)))
                                            (if (gx#stx-null? _tl2366024572_)
                                                (___match2652226523_
                                                 _e2360024784_
                                                 _hd2360124787_
                                                 _tl2360224789_
                                                 _e2360324792_
                                                 _hd2360424795_
                                                 _tl2360524797_
                                                 ___splice2636126362_
                                                 _target2365824570_
                                                 _tl2366024572_)
                                                (___match2652826529_
                                                 _e2360024784_
                                                 _hd2360124787_
                                                 _tl2360224789_))))
                                        (___match2652826529_
                                         _e2360024784_
                                         _hd2360124787_
                                         _tl2360224789_)))))
                            (if (gx#stx-pair/null? _hd2360424795_)
                                (let ((___splice2636126362_
                                       (gx#syntax-split-splice
                                        _hd2360424795_
                                        '0)))
                                  (let ((_tl2366024572_
                                         (##vector-ref
                                          ___splice2636126362_
                                          '1))
                                        (_target2365824570_
                                         (##vector-ref
                                          ___splice2636126362_
                                          '0)))
                                    (if (gx#stx-null? _tl2366024572_)
                                        (___match2652226523_
                                         _e2360024784_
                                         _hd2360124787_
                                         _tl2360224789_
                                         _e2360324792_
                                         _hd2360424795_
                                         _tl2360524797_
                                         ___splice2636126362_
                                         _target2365824570_
                                         _tl2366024572_)
                                        (___match2652826529_
                                         _e2360024784_
                                         _hd2360124787_
                                         _tl2360224789_))))
                                (___match2652826529_
                                 _e2360024784_
                                 _hd2360124787_
                                 _tl2360224789_)))
                        (if (gx#stx-pair/null? _hd2360424795_)
                            (let ((___splice2636126362_
                                   (gx#syntax-split-splice _hd2360424795_ '0)))
                              (let ((_tl2366024572_
                                     (##vector-ref ___splice2636126362_ '1))
                                    (_target2365824570_
                                     (##vector-ref ___splice2636126362_ '0)))
                                (if (gx#stx-null? _tl2366024572_)
                                    (___match2652226523_
                                     _e2360024784_
                                     _hd2360124787_
                                     _tl2360224789_
                                     _e2360324792_
                                     _hd2360424795_
                                     _tl2360524797_
                                     ___splice2636126362_
                                     _target2365824570_
                                     _tl2366024572_)
                                    (___match2652826529_
                                     _e2360024784_
                                     _hd2360124787_
                                     _tl2360224789_))))
                            (___match2652826529_
                             _e2360024784_
                             _hd2360124787_
                             _tl2360224789_)))
                    (if (gx#stx-pair/null? _hd2360424795_)
                        (let ((___splice2636126362_
                               (gx#syntax-split-splice _hd2360424795_ '0)))
                          (let ((_tl2366024572_
                                 (##vector-ref ___splice2636126362_ '1))
                                (_target2365824570_
                                 (##vector-ref ___splice2636126362_ '0)))
                            (if (gx#stx-null? _tl2366024572_)
                                (___match2652226523_
                                 _e2360024784_
                                 _hd2360124787_
                                 _tl2360224789_
                                 _e2360324792_
                                 _hd2360424795_
                                 _tl2360524797_
                                 ___splice2636126362_
                                 _target2365824570_
                                 _tl2366024572_)
                                (___match2652826529_
                                 _e2360024784_
                                 _hd2360124787_
                                 _tl2360224789_))))
                        (___match2652826529_
                         _e2360024784_
                         _hd2360124787_
                         _tl2360224789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2360424795_)
                                                        (let ((___splice2636126362_
                                                               (gx#syntax-split-splice
                                                                _hd2360424795_
                                                                '0)))
                                                          (let ((_tl2366024572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2636126362_ '1))
                        (_target2365824570_
                         (##vector-ref ___splice2636126362_ '0)))
                    (if (gx#stx-null? _tl2366024572_)
                        (___match2652226523_
                         _e2360024784_
                         _hd2360124787_
                         _tl2360224789_
                         _e2360324792_
                         _hd2360424795_
                         _tl2360524797_
                         ___splice2636126362_
                         _target2365824570_
                         _tl2366024572_)
                        (___match2652826529_
                         _e2360024784_
                         _hd2360124787_
                         _tl2360224789_))))
                (___match2652826529_
                 _e2360024784_
                 _hd2360124787_
                 _tl2360224789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd2360424795_)
                                                (let ((___splice2636126362_
                                                       (gx#syntax-split-splice
                                                        _hd2360424795_
                                                        '0)))
                                                  (let ((_tl2366024572_
                                                         (##vector-ref
                                                          ___splice2636126362_
                                                          '1))
                                                        (_target2365824570_
                                                         (##vector-ref
                                                          ___splice2636126362_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2366024572_)
                                                        (___match2652226523_
                                                         _e2360024784_
                                                         _hd2360124787_
                                                         _tl2360224789_
                                                         _e2360324792_
                                                         _hd2360424795_
                                                         _tl2360524797_
                                                         ___splice2636126362_
                                                         _target2365824570_
                                                         _tl2366024572_)
                                                        (___match2652826529_
                                                         _e2360024784_
                                                         _hd2360124787_
                                                         _tl2360224789_))))
                                                (___match2652826529_
                                                 _e2360024784_
                                                 _hd2360124787_
                                                 _tl2360224789_)))
                                        (if (gx#stx-pair/null? _hd2360424795_)
                                            (let ((___splice2636126362_
                                                   (gx#syntax-split-splice
                                                    _hd2360424795_
                                                    '0)))
                                              (let ((_tl2366024572_
                                                     (##vector-ref
                                                      ___splice2636126362_
                                                      '1))
                                                    (_target2365824570_
                                                     (##vector-ref
                                                      ___splice2636126362_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2366024572_)
                                                    (___match2652226523_
                                                     _e2360024784_
                                                     _hd2360124787_
                                                     _tl2360224789_
                                                     _e2360324792_
                                                     _hd2360424795_
                                                     _tl2360524797_
                                                     ___splice2636126362_
                                                     _target2365824570_
                                                     _tl2366024572_)
                                                    (___match2652826529_
                                                     _e2360024784_
                                                     _hd2360124787_
                                                     _tl2360224789_))))
                                            (___match2652826529_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_)))))
                                (if (gx#stx-pair/null? _hd2360424795_)
                                    (let ((___splice2636126362_
                                           (gx#syntax-split-splice
                                            _hd2360424795_
                                            '0)))
                                      (let ((_tl2366024572_
                                             (##vector-ref
                                              ___splice2636126362_
                                              '1))
                                            (_target2365824570_
                                             (##vector-ref
                                              ___splice2636126362_
                                              '0)))
                                        (if (gx#stx-null? _tl2366024572_)
                                            (___match2652226523_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_
                                             _e2360324792_
                                             _hd2360424795_
                                             _tl2360524797_
                                             ___splice2636126362_
                                             _target2365824570_
                                             _tl2366024572_)
                                            (___match2652826529_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_))))
                                    (___match2652826529_
                                     _e2360024784_
                                     _hd2360124787_
                                     _tl2360224789_)))
                            (if (gx#stx-pair/null? _hd2360424795_)
                                (let ((___splice2636126362_
                                       (gx#syntax-split-splice
                                        _hd2360424795_
                                        '0)))
                                  (let ((_tl2366024572_
                                         (##vector-ref
                                          ___splice2636126362_
                                          '1))
                                        (_target2365824570_
                                         (##vector-ref
                                          ___splice2636126362_
                                          '0)))
                                    (if (gx#stx-null? _tl2366024572_)
                                        (___match2652226523_
                                         _e2360024784_
                                         _hd2360124787_
                                         _tl2360224789_
                                         _e2360324792_
                                         _hd2360424795_
                                         _tl2360524797_
                                         ___splice2636126362_
                                         _target2365824570_
                                         _tl2366024572_)
                                        (___match2652826529_
                                         _e2360024784_
                                         _hd2360124787_
                                         _tl2360224789_))))
                                (___match2652826529_
                                 _e2360024784_
                                 _hd2360124787_
                                 _tl2360224789_)))
                        (if (gx#stx-pair/null? _hd2360424795_)
                            (let ((___splice2636126362_
                                   (gx#syntax-split-splice _hd2360424795_ '0)))
                              (let ((_tl2366024572_
                                     (##vector-ref ___splice2636126362_ '1))
                                    (_target2365824570_
                                     (##vector-ref ___splice2636126362_ '0)))
                                (if (gx#stx-null? _tl2366024572_)
                                    (___match2652226523_
                                     _e2360024784_
                                     _hd2360124787_
                                     _tl2360224789_
                                     _e2360324792_
                                     _hd2360424795_
                                     _tl2360524797_
                                     ___splice2636126362_
                                     _target2365824570_
                                     _tl2366024572_)
                                    (___match2652826529_
                                     _e2360024784_
                                     _hd2360124787_
                                     _tl2360224789_))))
                            (___match2652826529_
                             _e2360024784_
                             _hd2360124787_
                             _tl2360224789_)))))
                (if (gx#stx-pair/null? _hd2360424795_)
                    (let ((___splice2636126362_
                           (gx#syntax-split-splice _hd2360424795_ '0)))
                      (let ((_tl2366024572_
                             (##vector-ref ___splice2636126362_ '1))
                            (_target2365824570_
                             (##vector-ref ___splice2636126362_ '0)))
                        (if (gx#stx-null? _tl2366024572_)
                            (___match2652226523_
                             _e2360024784_
                             _hd2360124787_
                             _tl2360224789_
                             _e2360324792_
                             _hd2360424795_
                             _tl2360524797_
                             ___splice2636126362_
                             _target2365824570_
                             _tl2366024572_)
                            (___match2652826529_
                             _e2360024784_
                             _hd2360124787_
                             _tl2360224789_))))
                    (___match2652826529_
                     _e2360024784_
                     _hd2360124787_
                     _tl2360224789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2360424795_)
                                                    (let ((___splice2636126362_
                                                           (gx#syntax-split-splice
                                                            _hd2360424795_
                                                            '0)))
                                                      (let ((_tl2366024572_
                                                             (##vector-ref
                                                              ___splice2636126362_
                                                              '1))
                                                            (_target2365824570_
                                                             (##vector-ref
                                                              ___splice2636126362_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2366024572_)
                                                            (___match2652226523_
                                                             _e2360024784_
                                                             _hd2360124787_
                                                             _tl2360224789_
                                                             _e2360324792_
                                                             _hd2360424795_
                                                             _tl2360524797_
                                                             ___splice2636126362_
                                                             _target2365824570_
                                                             _tl2366024572_)
                                                            (___match2652826529_
                                                             _e2360024784_
                                                             _hd2360124787_
                                                             _tl2360224789_))))
                                                    (___match2652826529_
                                                     _e2360024784_
                                                     _hd2360124787_
                                                     _tl2360224789_)))
                                            (if (gx#stx-pair/null?
                                                 _hd2360424795_)
                                                (let ((___splice2636126362_
                                                       (gx#syntax-split-splice
                                                        _hd2360424795_
                                                        '0)))
                                                  (let ((_tl2366024572_
                                                         (##vector-ref
                                                          ___splice2636126362_
                                                          '1))
                                                        (_target2365824570_
                                                         (##vector-ref
                                                          ___splice2636126362_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2366024572_)
                                                        (___match2652226523_
                                                         _e2360024784_
                                                         _hd2360124787_
                                                         _tl2360224789_
                                                         _e2360324792_
                                                         _hd2360424795_
                                                         _tl2360524797_
                                                         ___splice2636126362_
                                                         _target2365824570_
                                                         _tl2366024572_)
                                                        (___match2652826529_
                                                         _e2360024784_
                                                         _hd2360124787_
                                                         _tl2360224789_))))
                                                (___match2652826529_
                                                 _e2360024784_
                                                 _hd2360124787_
                                                 _tl2360224789_)))))
                                    (if (gx#stx-pair/null? _hd2360424795_)
                                        (let ((___splice2636126362_
                                               (gx#syntax-split-splice
                                                _hd2360424795_
                                                '0)))
                                          (let ((_tl2366024572_
                                                 (##vector-ref
                                                  ___splice2636126362_
                                                  '1))
                                                (_target2365824570_
                                                 (##vector-ref
                                                  ___splice2636126362_
                                                  '0)))
                                            (if (gx#stx-null? _tl2366024572_)
                                                (___match2652226523_
                                                 _e2360024784_
                                                 _hd2360124787_
                                                 _tl2360224789_
                                                 _e2360324792_
                                                 _hd2360424795_
                                                 _tl2360524797_
                                                 ___splice2636126362_
                                                 _target2365824570_
                                                 _tl2366024572_)
                                                (___match2652826529_
                                                 _e2360024784_
                                                 _hd2360124787_
                                                 _tl2360224789_))))
                                        (___match2652826529_
                                         _e2360024784_
                                         _hd2360124787_
                                         _tl2360224789_)))
                                (if (gx#stx-pair/null? _hd2360424795_)
                                    (let ((___splice2636126362_
                                           (gx#syntax-split-splice
                                            _hd2360424795_
                                            '0)))
                                      (let ((_tl2366024572_
                                             (##vector-ref
                                              ___splice2636126362_
                                              '1))
                                            (_target2365824570_
                                             (##vector-ref
                                              ___splice2636126362_
                                              '0)))
                                        (if (gx#stx-null? _tl2366024572_)
                                            (___match2652226523_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_
                                             _e2360324792_
                                             _hd2360424795_
                                             _tl2360524797_
                                             ___splice2636126362_
                                             _target2365824570_
                                             _tl2366024572_)
                                            (___match2652826529_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_))))
                                    (___match2652826529_
                                     _e2360024784_
                                     _hd2360124787_
                                     _tl2360224789_)))
                            (if (gx#stx-pair/null? _hd2360424795_)
                                (let ((___splice2636126362_
                                       (gx#syntax-split-splice
                                        _hd2360424795_
                                        '0)))
                                  (let ((_tl2366024572_
                                         (##vector-ref
                                          ___splice2636126362_
                                          '1))
                                        (_target2365824570_
                                         (##vector-ref
                                          ___splice2636126362_
                                          '0)))
                                    (if (gx#stx-null? _tl2366024572_)
                                        (___match2652226523_
                                         _e2360024784_
                                         _hd2360124787_
                                         _tl2360224789_
                                         _e2360324792_
                                         _hd2360424795_
                                         _tl2360524797_
                                         ___splice2636126362_
                                         _target2365824570_
                                         _tl2366024572_)
                                        (___match2652826529_
                                         _e2360024784_
                                         _hd2360124787_
                                         _tl2360224789_))))
                                (___match2652826529_
                                 _e2360024784_
                                 _hd2360124787_
                                 _tl2360224789_)))))
                    (if (gx#stx-pair/null? _hd2360424795_)
                        (let ((___splice2636126362_
                               (gx#syntax-split-splice _hd2360424795_ '0)))
                          (let ((_tl2366024572_
                                 (##vector-ref ___splice2636126362_ '1))
                                (_target2365824570_
                                 (##vector-ref ___splice2636126362_ '0)))
                            (if (gx#stx-null? _tl2366024572_)
                                (___match2652226523_
                                 _e2360024784_
                                 _hd2360124787_
                                 _tl2360224789_
                                 _e2360324792_
                                 _hd2360424795_
                                 _tl2360524797_
                                 ___splice2636126362_
                                 _target2365824570_
                                 _tl2366024572_)
                                (___match2652826529_
                                 _e2360024784_
                                 _hd2360124787_
                                 _tl2360224789_))))
                        (___match2652826529_
                         _e2360024784_
                         _hd2360124787_
                         _tl2360224789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2360424795_)
                                                        (let ((___splice2636126362_
                                                               (gx#syntax-split-splice
                                                                _hd2360424795_
                                                                '0)))
                                                          (let ((_tl2366024572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2636126362_ '1))
                        (_target2365824570_
                         (##vector-ref ___splice2636126362_ '0)))
                    (if (gx#stx-null? _tl2366024572_)
                        (___match2652226523_
                         _e2360024784_
                         _hd2360124787_
                         _tl2360224789_
                         _e2360324792_
                         _hd2360424795_
                         _tl2360524797_
                         ___splice2636126362_
                         _target2365824570_
                         _tl2366024572_)
                        (___match2652826529_
                         _e2360024784_
                         _hd2360124787_
                         _tl2360224789_))))
                (___match2652826529_
                 _e2360024784_
                 _hd2360124787_
                 _tl2360224789_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2360424795_)
                                                    (let ((___splice2636126362_
                                                           (gx#syntax-split-splice
                                                            _hd2360424795_
                                                            '0)))
                                                      (let ((_tl2366024572_
                                                             (##vector-ref
                                                              ___splice2636126362_
                                                              '1))
                                                            (_target2365824570_
                                                             (##vector-ref
                                                              ___splice2636126362_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2366024572_)
                                                            (___match2652226523_
                                                             _e2360024784_
                                                             _hd2360124787_
                                                             _tl2360224789_
                                                             _e2360324792_
                                                             _hd2360424795_
                                                             _tl2360524797_
                                                             ___splice2636126362_
                                                             _target2365824570_
                                                             _tl2366024572_)
                                                            (___match2652826529_
                                                             _e2360024784_
                                                             _hd2360124787_
                                                             _tl2360224789_))))
                                                    (___match2652826529_
                                                     _e2360024784_
                                                     _hd2360124787_
                                                     _tl2360224789_)))))
                                        (if (gx#stx-pair/null? _hd2360424795_)
                                            (let ((___splice2636126362_
                                                   (gx#syntax-split-splice
                                                    _hd2360424795_
                                                    '0)))
                                              (let ((_tl2366024572_
                                                     (##vector-ref
                                                      ___splice2636126362_
                                                      '1))
                                                    (_target2365824570_
                                                     (##vector-ref
                                                      ___splice2636126362_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2366024572_)
                                                    (___match2652226523_
                                                     _e2360024784_
                                                     _hd2360124787_
                                                     _tl2360224789_
                                                     _e2360324792_
                                                     _hd2360424795_
                                                     _tl2360524797_
                                                     ___splice2636126362_
                                                     _target2365824570_
                                                     _tl2366024572_)
                                                    (___match2652826529_
                                                     _e2360024784_
                                                     _hd2360124787_
                                                     _tl2360224789_))))
                                            (___match2652826529_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_)))
                                    (if (gx#stx-pair/null? _hd2360424795_)
                                        (let ((___splice2636126362_
                                               (gx#syntax-split-splice
                                                _hd2360424795_
                                                '0)))
                                          (let ((_tl2366024572_
                                                 (##vector-ref
                                                  ___splice2636126362_
                                                  '1))
                                                (_target2365824570_
                                                 (##vector-ref
                                                  ___splice2636126362_
                                                  '0)))
                                            (if (gx#stx-null? _tl2366024572_)
                                                (___match2652226523_
                                                 _e2360024784_
                                                 _hd2360124787_
                                                 _tl2360224789_
                                                 _e2360324792_
                                                 _hd2360424795_
                                                 _tl2360524797_
                                                 ___splice2636126362_
                                                 _target2365824570_
                                                 _tl2366024572_)
                                                (___match2652826529_
                                                 _e2360024784_
                                                 _hd2360124787_
                                                 _tl2360224789_))))
                                        (___match2652826529_
                                         _e2360024784_
                                         _hd2360124787_
                                         _tl2360224789_)))
                                (if (gx#stx-pair/null? _hd2360424795_)
                                    (let ((___splice2636126362_
                                           (gx#syntax-split-splice
                                            _hd2360424795_
                                            '0)))
                                      (let ((_tl2366024572_
                                             (##vector-ref
                                              ___splice2636126362_
                                              '1))
                                            (_target2365824570_
                                             (##vector-ref
                                              ___splice2636126362_
                                              '0)))
                                        (if (gx#stx-null? _tl2366024572_)
                                            (___match2652226523_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_
                                             _e2360324792_
                                             _hd2360424795_
                                             _tl2360524797_
                                             ___splice2636126362_
                                             _target2365824570_
                                             _tl2366024572_)
                                            (___match2652826529_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_))))
                                    (___match2652826529_
                                     _e2360024784_
                                     _hd2360124787_
                                     _tl2360224789_)))))
                        (if (gx#stx-pair/null? _hd2360424795_)
                            (let ((___splice2636126362_
                                   (gx#syntax-split-splice _hd2360424795_ '0)))
                              (let ((_tl2366024572_
                                     (##vector-ref ___splice2636126362_ '1))
                                    (_target2365824570_
                                     (##vector-ref ___splice2636126362_ '0)))
                                (if (gx#stx-null? _tl2366024572_)
                                    (___match2652226523_
                                     _e2360024784_
                                     _hd2360124787_
                                     _tl2360224789_
                                     _e2360324792_
                                     _hd2360424795_
                                     _tl2360524797_
                                     ___splice2636126362_
                                     _target2365824570_
                                     _tl2366024572_)
                                    (___match2652826529_
                                     _e2360024784_
                                     _hd2360124787_
                                     _tl2360224789_))))
                            (___match2652826529_
                             _e2360024784_
                             _hd2360124787_
                             _tl2360224789_)))))
                (if (gx#stx-pair/null? _hd2360424795_)
                    (let ((___splice2636126362_
                           (gx#syntax-split-splice _hd2360424795_ '0)))
                      (let ((_tl2366024572_
                             (##vector-ref ___splice2636126362_ '1))
                            (_target2365824570_
                             (##vector-ref ___splice2636126362_ '0)))
                        (if (gx#stx-null? _tl2366024572_)
                            (___match2652226523_
                             _e2360024784_
                             _hd2360124787_
                             _tl2360224789_
                             _e2360324792_
                             _hd2360424795_
                             _tl2360524797_
                             ___splice2636126362_
                             _target2365824570_
                             _tl2366024572_)
                            (___match2652826529_
                             _e2360024784_
                             _hd2360124787_
                             _tl2360224789_))))
                    (___match2652826529_
                     _e2360024784_
                     _hd2360124787_
                     _tl2360224789_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2360424795_)
                                                        (let ((___splice2636126362_
                                                               (gx#syntax-split-splice
                                                                _hd2360424795_
                                                                '0)))
                                                          (let ((_tl2366024572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2636126362_ '1))
                        (_target2365824570_
                         (##vector-ref ___splice2636126362_ '0)))
                    (if (gx#stx-null? _tl2366024572_)
                        (___match2652226523_
                         _e2360024784_
                         _hd2360124787_
                         _tl2360224789_
                         _e2360324792_
                         _hd2360424795_
                         _tl2360524797_
                         ___splice2636126362_
                         _target2365824570_
                         _tl2366024572_)
                        (___match2652826529_
                         _e2360024784_
                         _hd2360124787_
                         _tl2360224789_))))
                (___match2652826529_
                 _e2360024784_
                 _hd2360124787_
                 _tl2360224789_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2360424795_)
                                                    (let ((___splice2636126362_
                                                           (gx#syntax-split-splice
                                                            _hd2360424795_
                                                            '0)))
                                                      (let ((_tl2366024572_
                                                             (##vector-ref
                                                              ___splice2636126362_
                                                              '1))
                                                            (_target2365824570_
                                                             (##vector-ref
                                                              ___splice2636126362_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2366024572_)
                                                            (___match2652226523_
                                                             _e2360024784_
                                                             _hd2360124787_
                                                             _tl2360224789_
                                                             _e2360324792_
                                                             _hd2360424795_
                                                             _tl2360524797_
                                                             ___splice2636126362_
                                                             _target2365824570_
                                                             _tl2366024572_)
                                                            (___match2652826529_
                                                             _e2360024784_
                                                             _hd2360124787_
                                                             _tl2360224789_))))
                                                    (___match2652826529_
                                                     _e2360024784_
                                                     _hd2360124787_
                                                     _tl2360224789_)))))
                                        (if (gx#stx-pair/null? _hd2360424795_)
                                            (let ((___splice2636126362_
                                                   (gx#syntax-split-splice
                                                    _hd2360424795_
                                                    '0)))
                                              (let ((_tl2366024572_
                                                     (##vector-ref
                                                      ___splice2636126362_
                                                      '1))
                                                    (_target2365824570_
                                                     (##vector-ref
                                                      ___splice2636126362_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2366024572_)
                                                    (___match2652226523_
                                                     _e2360024784_
                                                     _hd2360124787_
                                                     _tl2360224789_
                                                     _e2360324792_
                                                     _hd2360424795_
                                                     _tl2360524797_
                                                     ___splice2636126362_
                                                     _target2365824570_
                                                     _tl2366024572_)
                                                    (___match2652826529_
                                                     _e2360024784_
                                                     _hd2360124787_
                                                     _tl2360224789_))))
                                            (___match2652826529_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_)))))
                                (if (gx#stx-pair/null? _hd2360424795_)
                                    (let ((___splice2636126362_
                                           (gx#syntax-split-splice
                                            _hd2360424795_
                                            '0)))
                                      (let ((_tl2366024572_
                                             (##vector-ref
                                              ___splice2636126362_
                                              '1))
                                            (_target2365824570_
                                             (##vector-ref
                                              ___splice2636126362_
                                              '0)))
                                        (if (gx#stx-null? _tl2366024572_)
                                            (___match2652226523_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_
                                             _e2360324792_
                                             _hd2360424795_
                                             _tl2360524797_
                                             ___splice2636126362_
                                             _target2365824570_
                                             _tl2366024572_)
                                            (___match2652826529_
                                             _e2360024784_
                                             _hd2360124787_
                                             _tl2360224789_))))
                                    (___match2652826529_
                                     _e2360024784_
                                     _hd2360124787_
                                     _tl2360224789_)))))
                        (___match2652826529_
                         _e2360024784_
                         _hd2360124787_
                         _tl2360224789_))))
                (_g2359323896_)))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx23541_)
      (letrec ((_clause-e23543_
                (lambda (_form23584_)
                  (let ((__obj28590 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj28590
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form23584_)
                       (if (gxc#dispatch-lambda-form? _form23584_)
                           (gxc#dispatch-lambda-form-delegate _form23584_)
                           '#f))
                      __obj28590)))))
        (let* ((_g2354523555_
                (lambda (_g2354623552_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2354623552_)))
               (_g2354423581_
                (lambda (_g2354623558_)
                  (if (gx#stx-pair? _g2354623558_)
                      (let ((_e2354823560_ (gx#stx-e _g2354623558_)))
                        (let ((_hd2354923563_ (##car _e2354823560_))
                              (_tl2355023565_ (##cdr _e2354823560_)))
                          ((lambda (_L23568_)
                             (let ((_clauses23579_
                                    (map _clause-e23543_ _L23568_)))
                               (##structure
                                gxc#!case-lambda::t
                                'case-lambda
                                _clauses23579_)))
                           _tl2355023565_)))
                      (_g2354523555_ _g2354623558_)))))
          (_g2354423581_ _stx23541_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx23446_)
      (let* ((___stx2682926830_ _stx23446_)
             (_g2344923469_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2682926830_))))
        (let ((___kont2683126832_
               (lambda (_L23513_ _L23514_)
                 (let ((_type-e2353123533_
                        (table-ref
                         gxc#basic-expression-type-builtin
                         (gxc#identifier-symbol _L23514_)
                         '#f)))
                   (if _type-e2353123533_
                       (let ((_type-e23536_ _type-e2353123533_))
                         (_type-e23536_ _stx23446_ _L23513_))
                       '#f))))
              (___kont2683326834_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2682926830_)
              (let ((_e2345323481_ (gx#stx-e ___stx2682926830_)))
                (let ((_tl2345523486_ (##cdr _e2345323481_))
                      (_hd2345423484_ (##car _e2345323481_)))
                  (if (gx#stx-pair? _tl2345523486_)
                      (let ((_e2345623489_ (gx#stx-e _tl2345523486_)))
                        (let ((_tl2345823494_ (##cdr _e2345623489_))
                              (_hd2345723492_ (##car _e2345623489_)))
                          (if (gx#stx-pair? _hd2345723492_)
                              (let ((_e2345923497_ (gx#stx-e _hd2345723492_)))
                                (let ((_tl2346123502_ (##cdr _e2345923497_))
                                      (_hd2346023500_ (##car _e2345923497_)))
                                  (if (gx#identifier? _hd2346023500_)
                                      (if (gx#stx-eq? '%#ref _hd2346023500_)
                                          (if (gx#stx-pair? _tl2346123502_)
                                              (let ((_e2346223505_
                                                     (gx#stx-e
                                                      _tl2346123502_)))
                                                (let ((_tl2346423510_
                                                       (##cdr _e2346223505_))
                                                      (_hd2346323508_
                                                       (##car _e2346223505_)))
                                                  (if (gx#stx-null?
                                                       _tl2346423510_)
                                                      (___kont2683126832_
                                                       _tl2345823494_
                                                       _hd2346323508_)
                                                      (___kont2683326834_))))
                                              (___kont2683326834_))
                                          (___kont2683326834_))
                                      (___kont2683326834_))))
                              (___kont2683326834_))))
                      (___kont2683326834_))))
              (___kont2683326834_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx22926_ _args22927_)
      (let* ((___stx2686726868_ _args22927_)
             (_g2293123045_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2686726868_))))
        (let ((___kont2686926870_
               (lambda (_L23395_ _L23396_ _L23397_ _L23398_ _L23399_)
                 (let ((__obj28591 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj28591
                      (gx#stx-e _L23399_)
                      '#f
                      (gx#stx-e _L23398_)
                      '0
                      (gx#stx-e _L23395_)
                      (gx#stx-e _L23396_))
                     __obj28591))))
              (___kont2687126872_
               (lambda (_L23185_ _L23186_ _L23187_ _L23188_ _L23189_ _L23190_)
                 (let* ((_super-t23236_
                         (if (gx#stx-e _L23189_)
                             (gxc#identifier-symbol _L23189_)
                             '#f))
                        (_super-type23238_
                         (if _super-t23236_
                             (gxc#optimizer-resolve-type _super-t23236_)
                             '#f)))
                   (begin
                     (if (if _super-type23238_
                             (not (##structure-instance-of?
                                   _super-type23238_
                                   'gxc#!struct-type::t))
                             '#f)
                         (gxc#raise-compile-error
                          '"Illegal struct-type construction; invalid super type"
                          _stx22926_
                          _L23189_)
                         '#!void)
                     (let ((_fields23254_ (gx#stx-e _L23188_))
                           (_xfields23255_
                            (if _super-type23238_
                                (let ((_super-fields2324023243_
                                       (##structure-ref
                                        _super-type23238_
                                        '3
                                        gxc#!struct-type::t
                                        '#f))
                                      (_super-xfields2324123245_
                                       (##structure-ref
                                        _super-type23238_
                                        '4
                                        gxc#!struct-type::t
                                        '#f)))
                                  (if _super-fields2324023243_
                                      (if _super-xfields2324123245_
                                          (let ((_super-fields23248_
                                                 _super-fields2324023243_)
                                                (_super-xfields23249_
                                                 _super-xfields2324123245_))
                                            (fx+ _super-fields23248_
                                                 _super-xfields23249_))
                                          '#f)
                                      '#f))
                                '#f))
                           (_plist23256_ (gx#stx-e _L23186_))
                           (_ctor23257_
                            (let ((_$e23251_ (gx#stx-e _L23185_)))
                              (if _$e23251_
                                  (values _$e23251_)
                                  (if _super-type23238_
                                      (##structure-ref
                                       _super-type23238_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)
                                      (if _super-t23236_ '#!void '#f))))))
                       (let ((__obj28592 (make-object gxc#!struct-type::t '7)))
                         (begin
                           (gxc#!struct-type:::init!
                            __obj28592
                            (gx#stx-e _L23190_)
                            _super-t23236_
                            _fields23254_
                            _xfields23255_
                            _ctor23257_
                            _plist23256_)
                           __obj28592)))))))
              (___kont2687326874_
               (lambda ()
                 (begin
                   (gxc#verbose
                    '"make-struct-type: can't infer type "
                    (gx#syntax->datum _stx22926_))
                   '#f))))
          (if (gx#stx-pair? ___stx2686726868_)
              (let ((_e2293823264_ (gx#stx-e ___stx2686726868_)))
                (let ((_tl2294023269_ (##cdr _e2293823264_))
                      (_hd2293923267_ (##car _e2293823264_)))
                  (if (gx#stx-pair? _hd2293923267_)
                      (let ((_e2294123272_ (gx#stx-e _hd2293923267_)))
                        (let ((_tl2294323277_ (##cdr _e2294123272_))
                              (_hd2294223275_ (##car _e2294123272_)))
                          (if (gx#identifier? _hd2294223275_)
                              (if (gx#stx-eq? '%#quote _hd2294223275_)
                                  (if (gx#stx-pair? _tl2294323277_)
                                      (let ((_e2294423280_
                                             (gx#stx-e _tl2294323277_)))
                                        (let ((_tl2294623285_
                                               (##cdr _e2294423280_))
                                              (_hd2294523283_
                                               (##car _e2294423280_)))
                                          (if (gx#stx-null? _tl2294623285_)
                                              (if (gx#stx-pair? _tl2294023269_)
                                                  (let ((_e2294723288_
                                                         (gx#stx-e
                                                          _tl2294023269_)))
                                                    (let ((_tl2294923293_
                                                           (##cdr _e2294723288_))
                                                          (_hd2294823291_
                                                           (##car _e2294723288_)))
                                                      (if (gx#stx-pair?
                                                           _hd2294823291_)
                                                          (let ((_e2295023296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2294823291_)))
                    (let ((_tl2295223301_ (##cdr _e2295023296_))
                          (_hd2295123299_ (##car _e2295023296_)))
                      (if (gx#identifier? _hd2295123299_)
                          (if (gx#stx-eq? '%#quote _hd2295123299_)
                              (if (gx#stx-pair? _tl2295223301_)
                                  (let ((_e2295323304_
                                         (gx#stx-e _tl2295223301_)))
                                    (let ((_tl2295523309_
                                           (##cdr _e2295323304_))
                                          (_hd2295423307_
                                           (##car _e2295323304_)))
                                      (if (gx#stx-datum? _hd2295423307_)
                                          (let ((_e2295623312_
                                                 (gx#stx-e _hd2295423307_)))
                                            (if (equal? _e2295623312_ '#f)
                                                (if (gx#stx-null?
                                                     _tl2295523309_)
                                                    (if (gx#stx-pair?
                                                         _tl2294923293_)
                                                        (let ((_e2295723315_
                                                               (gx#stx-e
                                                                _tl2294923293_)))
                                                          (let ((_tl2295923320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2295723315_))
                        (_hd2295823318_ (##car _e2295723315_)))
                    (if (gx#stx-pair? _hd2295823318_)
                        (let ((_e2296023323_ (gx#stx-e _hd2295823318_)))
                          (let ((_tl2296223328_ (##cdr _e2296023323_))
                                (_hd2296123326_ (##car _e2296023323_)))
                            (if (gx#identifier? _hd2296123326_)
                                (if (gx#stx-eq? '%#quote _hd2296123326_)
                                    (if (gx#stx-pair? _tl2296223328_)
                                        (let ((_e2296323331_
                                               (gx#stx-e _tl2296223328_)))
                                          (let ((_tl2296523336_
                                                 (##cdr _e2296323331_))
                                                (_hd2296423334_
                                                 (##car _e2296323331_)))
                                            (if (gx#stx-null? _tl2296523336_)
                                                (if (gx#stx-pair?
                                                     _tl2295923320_)
                                                    (let ((_e2296623339_
                                                           (gx#stx-e
                                                            _tl2295923320_)))
                                                      (let ((_tl2296823344_
                                                             (##cdr _e2296623339_))
                                                            (_hd2296723342_
                                                             (##car _e2296623339_)))
                                                        (if (gx#stx-pair?
                                                             _tl2296823344_)
                                                            (let ((_e2296923347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2296823344_)))
                      (let ((_tl2297123352_ (##cdr _e2296923347_))
                            (_hd2297023350_ (##car _e2296923347_)))
                        (if (gx#stx-pair? _hd2297023350_)
                            (let ((_e2297223355_ (gx#stx-e _hd2297023350_)))
                              (let ((_tl2297423360_ (##cdr _e2297223355_))
                                    (_hd2297323358_ (##car _e2297223355_)))
                                (if (gx#identifier? _hd2297323358_)
                                    (if (gx#stx-eq? '%#quote _hd2297323358_)
                                        (if (gx#stx-pair? _tl2297423360_)
                                            (let ((_e2297523363_
                                                   (gx#stx-e _tl2297423360_)))
                                              (let ((_tl2297723368_
                                                     (##cdr _e2297523363_))
                                                    (_hd2297623366_
                                                     (##car _e2297523363_)))
                                                (if (gx#stx-null?
                                                     _tl2297723368_)
                                                    (if (gx#stx-pair?
                                                         _tl2297123352_)
                                                        (let ((_e2297823371_
                                                               (gx#stx-e
                                                                _tl2297123352_)))
                                                          (let ((_tl2298023376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2297823371_))
                        (_hd2297923374_ (##car _e2297823371_)))
                    (if (gx#stx-pair? _hd2297923374_)
                        (let ((_e2298123379_ (gx#stx-e _hd2297923374_)))
                          (let ((_tl2298323384_ (##cdr _e2298123379_))
                                (_hd2298223382_ (##car _e2298123379_)))
                            (if (gx#identifier? _hd2298223382_)
                                (if (gx#stx-eq? '%#quote _hd2298223382_)
                                    (if (gx#stx-pair? _tl2298323384_)
                                        (let ((_e2298423387_
                                               (gx#stx-e _tl2298323384_)))
                                          (let ((_tl2298623392_
                                                 (##cdr _e2298423387_))
                                                (_hd2298523390_
                                                 (##car _e2298423387_)))
                                            (if (gx#stx-null? _tl2298623392_)
                                                (___kont2686926870_
                                                 _hd2298523390_
                                                 _hd2297623366_
                                                 _hd2296723342_
                                                 _hd2296423334_
                                                 _hd2294523283_)
                                                (___kont2687326874_))))
                                        (___kont2687326874_))
                                    (___kont2687326874_))
                                (___kont2687326874_))))
                        (___kont2687326874_))))
                (___kont2687326874_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2687326874_))))
                                            (___kont2687326874_))
                                        (___kont2687326874_))
                                    (___kont2687326874_))))
                            (___kont2687326874_))))
                    (___kont2687326874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2687326874_))
                                                (___kont2687326874_))))
                                        (___kont2687326874_))
                                    (___kont2687326874_))
                                (___kont2687326874_))))
                        (___kont2687326874_))))
                (___kont2687326874_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2687326874_))
                                                (___kont2687326874_)))
                                          (___kont2687326874_))))
                                  (___kont2687326874_))
                              (if (gx#stx-eq? '%#ref _hd2295123299_)
                                  (if (gx#stx-pair? _tl2295223301_)
                                      (let ((_e2300823097_
                                             (gx#stx-e _tl2295223301_)))
                                        (let ((_tl2301023102_
                                               (##cdr _e2300823097_))
                                              (_hd2300923100_
                                               (##car _e2300823097_)))
                                          (if (gx#stx-null? _tl2301023102_)
                                              (if (gx#stx-pair? _tl2294923293_)
                                                  (let ((_e2301123105_
                                                         (gx#stx-e
                                                          _tl2294923293_)))
                                                    (let ((_tl2301323110_
                                                           (##cdr _e2301123105_))
                                                          (_hd2301223108_
                                                           (##car _e2301123105_)))
                                                      (if (gx#stx-pair?
                                                           _hd2301223108_)
                                                          (let ((_e2301423113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2301223108_)))
                    (let ((_tl2301623118_ (##cdr _e2301423113_))
                          (_hd2301523116_ (##car _e2301423113_)))
                      (if (gx#identifier? _hd2301523116_)
                          (if (gx#stx-eq? '%#quote _hd2301523116_)
                              (if (gx#stx-pair? _tl2301623118_)
                                  (let ((_e2301723121_
                                         (gx#stx-e _tl2301623118_)))
                                    (let ((_tl2301923126_
                                           (##cdr _e2301723121_))
                                          (_hd2301823124_
                                           (##car _e2301723121_)))
                                      (if (gx#stx-null? _tl2301923126_)
                                          (if (gx#stx-pair? _tl2301323110_)
                                              (let ((_e2302023129_
                                                     (gx#stx-e
                                                      _tl2301323110_)))
                                                (let ((_tl2302223134_
                                                       (##cdr _e2302023129_))
                                                      (_hd2302123132_
                                                       (##car _e2302023129_)))
                                                  (if (gx#stx-pair?
                                                       _tl2302223134_)
                                                      (let ((_e2302323137_
                                                             (gx#stx-e
                                                              _tl2302223134_)))
                                                        (let ((_tl2302523142_
                                                               (##cdr _e2302323137_))
                                                              (_hd2302423140_
                                                               (##car _e2302323137_)))
                                                          (if (gx#stx-pair?
                                                               _hd2302423140_)
                                                              (let ((_e2302623145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2302423140_)))
                        (let ((_tl2302823150_ (##cdr _e2302623145_))
                              (_hd2302723148_ (##car _e2302623145_)))
                          (if (gx#identifier? _hd2302723148_)
                              (if (gx#stx-eq? '%#quote _hd2302723148_)
                                  (if (gx#stx-pair? _tl2302823150_)
                                      (let ((_e2302923153_
                                             (gx#stx-e _tl2302823150_)))
                                        (let ((_tl2303123158_
                                               (##cdr _e2302923153_))
                                              (_hd2303023156_
                                               (##car _e2302923153_)))
                                          (if (gx#stx-null? _tl2303123158_)
                                              (if (gx#stx-pair? _tl2302523142_)
                                                  (let ((_e2303223161_
                                                         (gx#stx-e
                                                          _tl2302523142_)))
                                                    (let ((_tl2303423166_
                                                           (##cdr _e2303223161_))
                                                          (_hd2303323164_
                                                           (##car _e2303223161_)))
                                                      (if (gx#stx-pair?
                                                           _hd2303323164_)
                                                          (let ((_e2303523169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2303323164_)))
                    (let ((_tl2303723174_ (##cdr _e2303523169_))
                          (_hd2303623172_ (##car _e2303523169_)))
                      (if (gx#identifier? _hd2303623172_)
                          (if (gx#stx-eq? '%#quote _hd2303623172_)
                              (if (gx#stx-pair? _tl2303723174_)
                                  (let ((_e2303823177_
                                         (gx#stx-e _tl2303723174_)))
                                    (let ((_tl2304023182_
                                           (##cdr _e2303823177_))
                                          (_hd2303923180_
                                           (##car _e2303823177_)))
                                      (if (gx#stx-null? _tl2304023182_)
                                          (___kont2687126872_
                                           _hd2303923180_
                                           _hd2303023156_
                                           _hd2302123132_
                                           _hd2301823124_
                                           _hd2300923100_
                                           _hd2294523283_)
                                          (___kont2687326874_))))
                                  (___kont2687326874_))
                              (___kont2687326874_))
                          (___kont2687326874_))))
                  (___kont2687326874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2687326874_))
                                              (___kont2687326874_))))
                                      (___kont2687326874_))
                                  (___kont2687326874_))
                              (___kont2687326874_))))
                      (___kont2687326874_))))
              (___kont2687326874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2687326874_))
                                          (___kont2687326874_))))
                                  (___kont2687326874_))
                              (___kont2687326874_))
                          (___kont2687326874_))))
                  (___kont2687326874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2687326874_))
                                              (___kont2687326874_))))
                                      (___kont2687326874_))
                                  (___kont2687326874_)))
                          (___kont2687326874_))))
                  (___kont2687326874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2687326874_))
                                              (___kont2687326874_))))
                                      (___kont2687326874_))
                                  (___kont2687326874_))
                              (___kont2687326874_))))
                      (___kont2687326874_))))
              (___kont2687326874_))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx22852_ _args22853_)
      (let* ((___stx2713527136_ _args22853_)
             (_g2285622872_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2713527136_))))
        (let ((___kont2713727138_
               (lambda (_L22908_)
                 (##structure
                  gxc#!struct-pred::t
                  (gxc#identifier-symbol _L22908_))))
              (___kont2713927140_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2713527136_)
              (let ((_e2285922884_ (gx#stx-e ___stx2713527136_)))
                (let ((_tl2286122889_ (##cdr _e2285922884_))
                      (_hd2286022887_ (##car _e2285922884_)))
                  (if (gx#stx-pair? _hd2286022887_)
                      (let ((_e2286222892_ (gx#stx-e _hd2286022887_)))
                        (let ((_tl2286422897_ (##cdr _e2286222892_))
                              (_hd2286322895_ (##car _e2286222892_)))
                          (if (gx#identifier? _hd2286322895_)
                              (if (gx#stx-eq? '%#ref _hd2286322895_)
                                  (if (gx#stx-pair? _tl2286422897_)
                                      (let ((_e2286522900_
                                             (gx#stx-e _tl2286422897_)))
                                        (let ((_tl2286722905_
                                               (##cdr _e2286522900_))
                                              (_hd2286622903_
                                               (##car _e2286522900_)))
                                          (if (gx#stx-null? _tl2286722905_)
                                              (if (gx#stx-null? _tl2286122889_)
                                                  (___kont2713727138_
                                                   _hd2286622903_)
                                                  (___kont2713927140_))
                                              (___kont2713927140_))))
                                      (___kont2713927140_))
                                  (___kont2713927140_))
                              (___kont2713927140_))))
                      (___kont2713927140_))))
              (___kont2713927140_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx22723_ _args22724_ _unchecked?22725_)
        (let* ((___stx2716927170_ _args22724_)
               (_g2272822754_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2716927170_))))
          (let ((___kont2717127172_
                 (lambda (_L22814_ _L22815_)
                   (##structure
                    gxc#!struct-getf::t
                    (gxc#identifier-symbol _L22815_)
                    (gx#stx-e _L22814_)
                    _unchecked?22725_)))
                (___kont2717327174_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2716927170_)
                (let ((_e2273222766_ (gx#stx-e ___stx2716927170_)))
                  (let ((_tl2273422771_ (##cdr _e2273222766_))
                        (_hd2273322769_ (##car _e2273222766_)))
                    (if (gx#stx-pair? _hd2273322769_)
                        (let ((_e2273522774_ (gx#stx-e _hd2273322769_)))
                          (let ((_tl2273722779_ (##cdr _e2273522774_))
                                (_hd2273622777_ (##car _e2273522774_)))
                            (if (gx#identifier? _hd2273622777_)
                                (if (gx#stx-eq? '%#ref _hd2273622777_)
                                    (if (gx#stx-pair? _tl2273722779_)
                                        (let ((_e2273822782_
                                               (gx#stx-e _tl2273722779_)))
                                          (let ((_tl2274022787_
                                                 (##cdr _e2273822782_))
                                                (_hd2273922785_
                                                 (##car _e2273822782_)))
                                            (if (gx#stx-null? _tl2274022787_)
                                                (if (gx#stx-pair?
                                                     _tl2273422771_)
                                                    (let ((_e2274122790_
                                                           (gx#stx-e
                                                            _tl2273422771_)))
                                                      (let ((_tl2274322795_
                                                             (##cdr _e2274122790_))
                                                            (_hd2274222793_
                                                             (##car _e2274122790_)))
                                                        (if (gx#stx-pair?
                                                             _hd2274222793_)
                                                            (let ((_e2274422798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2274222793_)))
                      (let ((_tl2274622803_ (##cdr _e2274422798_))
                            (_hd2274522801_ (##car _e2274422798_)))
                        (if (gx#identifier? _hd2274522801_)
                            (if (gx#stx-eq? '%#quote _hd2274522801_)
                                (if (gx#stx-pair? _tl2274622803_)
                                    (let ((_e2274722806_
                                           (gx#stx-e _tl2274622803_)))
                                      (let ((_tl2274922811_
                                             (##cdr _e2274722806_))
                                            (_hd2274822809_
                                             (##car _e2274722806_)))
                                        (if (gx#stx-null? _tl2274922811_)
                                            (if (gx#stx-null? _tl2274322795_)
                                                (___kont2717127172_
                                                 _hd2274822809_
                                                 _hd2273922785_)
                                                (___kont2717327174_))
                                            (___kont2717327174_))))
                                    (___kont2717327174_))
                                (___kont2717327174_))
                            (___kont2717327174_))))
                    (___kont2717327174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2717327174_))
                                                (___kont2717327174_))))
                                        (___kont2717327174_))
                                    (___kont2717327174_))
                                (___kont2717327174_))))
                        (___kont2717327174_))))
                (___kont2717327174_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx22843_ _args22844_)
          (let ((_unchecked?22846_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx22843_
             _args22844_
             _unchecked?22846_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g28598_
          (let ((_g28597_ (length _g28598_)))
            (cond ((##fx= _g28597_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g28598_))
                  ((##fx= _g28597_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g28598_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g28598_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx22593_ _args22594_ _unchecked?22595_)
        (let* ((___stx2722727228_ _args22594_)
               (_g2259822624_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2722727228_))))
          (let ((___kont2722927230_
                 (lambda (_L22684_ _L22685_)
                   (##structure
                    gxc#!struct-setf::t
                    (gxc#identifier-symbol _L22685_)
                    (gx#stx-e _L22684_)
                    _unchecked?22595_)))
                (___kont2723127232_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2722727228_)
                (let ((_e2260222636_ (gx#stx-e ___stx2722727228_)))
                  (let ((_tl2260422641_ (##cdr _e2260222636_))
                        (_hd2260322639_ (##car _e2260222636_)))
                    (if (gx#stx-pair? _hd2260322639_)
                        (let ((_e2260522644_ (gx#stx-e _hd2260322639_)))
                          (let ((_tl2260722649_ (##cdr _e2260522644_))
                                (_hd2260622647_ (##car _e2260522644_)))
                            (if (gx#identifier? _hd2260622647_)
                                (if (gx#stx-eq? '%#ref _hd2260622647_)
                                    (if (gx#stx-pair? _tl2260722649_)
                                        (let ((_e2260822652_
                                               (gx#stx-e _tl2260722649_)))
                                          (let ((_tl2261022657_
                                                 (##cdr _e2260822652_))
                                                (_hd2260922655_
                                                 (##car _e2260822652_)))
                                            (if (gx#stx-null? _tl2261022657_)
                                                (if (gx#stx-pair?
                                                     _tl2260422641_)
                                                    (let ((_e2261122660_
                                                           (gx#stx-e
                                                            _tl2260422641_)))
                                                      (let ((_tl2261322665_
                                                             (##cdr _e2261122660_))
                                                            (_hd2261222663_
                                                             (##car _e2261122660_)))
                                                        (if (gx#stx-pair?
                                                             _hd2261222663_)
                                                            (let ((_e2261422668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2261222663_)))
                      (let ((_tl2261622673_ (##cdr _e2261422668_))
                            (_hd2261522671_ (##car _e2261422668_)))
                        (if (gx#identifier? _hd2261522671_)
                            (if (gx#stx-eq? '%#quote _hd2261522671_)
                                (if (gx#stx-pair? _tl2261622673_)
                                    (let ((_e2261722676_
                                           (gx#stx-e _tl2261622673_)))
                                      (let ((_tl2261922681_
                                             (##cdr _e2261722676_))
                                            (_hd2261822679_
                                             (##car _e2261722676_)))
                                        (if (gx#stx-null? _tl2261922681_)
                                            (if (gx#stx-null? _tl2261322665_)
                                                (___kont2722927230_
                                                 _hd2261822679_
                                                 _hd2260922655_)
                                                (___kont2723127232_))
                                            (___kont2723127232_))))
                                    (___kont2723127232_))
                                (___kont2723127232_))
                            (___kont2723127232_))))
                    (___kont2723127232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2723127232_))
                                                (___kont2723127232_))))
                                        (___kont2723127232_))
                                    (___kont2723127232_))
                                (___kont2723127232_))))
                        (___kont2723127232_))))
                (___kont2723127232_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx22713_ _args22714_)
          (let ((_unchecked?22716_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx22713_
             _args22714_
             _unchecked?22716_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g28600_
          (let ((_g28599_ (length _g28600_)))
            (cond ((##fx= _g28599_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g28600_))
                  ((##fx= _g28599_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g28600_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g28600_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx22589_ _args22590_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx22589_
       _args22590_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx22586_ _args22587_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx22586_
       _args22587_
       '#t)))
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-type
   gxc#basic-expression-type-make-struct-type)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-predicate
   gxc#basic-expression-type-make-struct-predicate)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-accessor
   gxc#basic-expression-type-make-struct-field-accessor)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-mutator
   gxc#basic-expression-type-make-struct-field-mutator)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-unchecked-accessor
   gxc#basic-expression-type-make-struct-field-unchecked-accessor)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-unchecked-mutator
   gxc#basic-expression-type-make-struct-field-unchecked-mutator)
  (define gxc#basic-expression-type-ref%
    (lambda (_stx22535_)
      (let* ((_g2253722550_
              (lambda (_g2253822547_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2253822547_)))
             (_g2253622583_
              (lambda (_g2253822553_)
                (if (gx#stx-pair? _g2253822553_)
                    (let ((_e2254022555_ (gx#stx-e _g2253822553_)))
                      (let ((_hd2254122558_ (##car _e2254022555_))
                            (_tl2254222560_ (##cdr _e2254022555_)))
                        (if (gx#stx-pair? _tl2254222560_)
                            (let ((_e2254322563_ (gx#stx-e _tl2254222560_)))
                              (let ((_hd2254422566_ (##car _e2254322563_))
                                    (_tl2254522568_ (##cdr _e2254322563_)))
                                (if (gx#stx-null? _tl2254522568_)
                                    ((lambda (_L22571_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L22571_)))
                                     _hd2254422566_)
                                    (_g2253722550_ _g2253822553_))))
                            (_g2253722550_ _g2253822553_))))
                    (_g2253722550_ _g2253822553_)))))
        (_g2253622583_ _stx22535_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21769_)
      (let* ((___stx2728527286_ _form21769_)
             (_g2177421931_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2728527286_))))
        (let ((___kont2728727288_ (lambda (_L22455_ _L22456_ _L22457_) '#t))
              (___kont2729327294_
               (lambda (_L22243_ _L22244_ _L22245_ _L22246_ _L22247_ _L22248_)
                 '#t))
              (___kont2729927300_
               (lambda (_L22039_ _L22040_ _L22041_ _L22042_) '#t))
              (___kont2730127302_ (lambda () '#f)))
          (let* ((___match2742627427_
                  (lambda (_e2189121943_
                           _hd2189221946_
                           _tl2189321948_
                           _e2189421951_
                           _hd2189521954_
                           _tl2189621956_
                           _e2189721959_
                           _hd2189821962_
                           _tl2189921964_
                           _e2190021967_
                           _hd2190121970_
                           _tl2190221972_
                           _e2190321975_
                           _hd2190421978_
                           _tl2190521980_
                           _e2190621983_
                           _hd2190721986_
                           _tl2190821988_
                           _e2190921991_
                           _hd2191021994_
                           _tl2191121996_
                           _e2191221999_
                           _hd2191322002_
                           _tl2191422004_
                           _e2191522007_
                           _hd2191622010_
                           _tl2191722012_
                           _e2191822015_
                           _hd2191922018_
                           _tl2192022020_
                           _e2192122023_
                           _hd2192222026_
                           _tl2192322028_
                           _e2192422031_
                           _hd2192522034_
                           _tl2192622036_)
                    (let ((_L22039_ _hd2192522034_)
                          (_L22040_ _hd2191622010_)
                          (_L22041_ _hd2190721986_)
                          (_L22042_ _hd2189221946_))
                      (if (if (gx#identifier? _L22042_)
                              (if (gxc#runtime-identifier=? _L22041_ 'apply)
                                  (if (gx#free-identifier=? _L22042_ _L22039_)
                                      (not (gx#free-identifier=?
                                            _L22040_
                                            _L22042_))
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2729927300_
                           _L22039_
                           _L22040_
                           _L22041_
                           _L22042_)
                          (___kont2730127302_)))))
                 (___match2739827399_
                  (lambda (_e2189121943_
                           _hd2189221946_
                           _tl2189321948_
                           _e2189421951_
                           _hd2189521954_
                           _tl2189621956_
                           _e2189721959_
                           _hd2189821962_
                           _tl2189921964_
                           _e2190021967_
                           _hd2190121970_
                           _tl2190221972_
                           _e2190321975_
                           _hd2190421978_
                           _tl2190521980_
                           _e2190621983_
                           _hd2190721986_
                           _tl2190821988_
                           _e2190921991_
                           _hd2191021994_
                           _tl2191121996_
                           _e2191221999_
                           _hd2191322002_
                           _tl2191422004_
                           _e2191522007_
                           _hd2191622010_
                           _tl2191722012_)
                    (if (gx#stx-pair? _tl2191121996_)
                        (let ((_e2191822015_ (gx#stx-e _tl2191121996_)))
                          (let ((_tl2192022020_ (##cdr _e2191822015_))
                                (_hd2191922018_ (##car _e2191822015_)))
                            (if (gx#stx-pair? _hd2191922018_)
                                (let ((_e2192122023_
                                       (gx#stx-e _hd2191922018_)))
                                  (let ((_tl2192322028_ (##cdr _e2192122023_))
                                        (_hd2192222026_ (##car _e2192122023_)))
                                    (if (gx#identifier? _hd2192222026_)
                                        (if (gx#stx-eq? '%#ref _hd2192222026_)
                                            (if (gx#stx-pair? _tl2192322028_)
                                                (let ((_e2192422031_
                                                       (gx#stx-e
                                                        _tl2192322028_)))
                                                  (let ((_tl2192622036_
                                                         (##cdr _e2192422031_))
                                                        (_hd2192522034_
                                                         (##car _e2192422031_)))
                                                    (if (gx#stx-null?
                                                         _tl2192622036_)
                                                        (if (gx#stx-null?
                                                             _tl2192022020_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2189621956_)
                        (___match2742627427_
                         _e2189121943_
                         _hd2189221946_
                         _tl2189321948_
                         _e2189421951_
                         _hd2189521954_
                         _tl2189621956_
                         _e2189721959_
                         _hd2189821962_
                         _tl2189921964_
                         _e2190021967_
                         _hd2190121970_
                         _tl2190221972_
                         _e2190321975_
                         _hd2190421978_
                         _tl2190521980_
                         _e2190621983_
                         _hd2190721986_
                         _tl2190821988_
                         _e2190921991_
                         _hd2191021994_
                         _tl2191121996_
                         _e2191221999_
                         _hd2191322002_
                         _tl2191422004_
                         _e2191522007_
                         _hd2191622010_
                         _tl2191722012_
                         _e2191822015_
                         _hd2191922018_
                         _tl2192022020_
                         _e2192122023_
                         _hd2192222026_
                         _tl2192322028_
                         _e2192422031_
                         _hd2192522034_
                         _tl2192622036_)
                        (___kont2730127302_))
                    (___kont2730127302_))
                (___kont2730127302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2730127302_))
                                            (___kont2730127302_))
                                        (___kont2730127302_))))
                                (___kont2730127302_))))
                        (___kont2730127302_))))
                 (___match2732827329_
                  (lambda (_e2182722083_
                           _hd2182822086_
                           _tl2182922088_
                           ___splice2729527296_
                           _target2183022091_
                           _tl2183222093_)
                    (letrec ((_loop2183322096_
                              (lambda (_hd2183122099_ _arg2183722101_)
                                (if (gx#stx-pair? _hd2183122099_)
                                    (let ((_e2183422104_
                                           (gx#stx-e _hd2183122099_)))
                                      (let ((_lp-tl2183622109_
                                             (##cdr _e2183422104_))
                                            (_lp-hd2183522107_
                                             (##car _e2183422104_)))
                                        (_loop2183322096_
                                         _lp-tl2183622109_
                                         (cons _lp-hd2183522107_
                                               _arg2183722101_))))
                                    (let ((_arg2183822112_
                                           (reverse _arg2183722101_)))
                                      (if (gx#stx-pair? _tl2182922088_)
                                          (let ((_e2183922115_
                                                 (gx#stx-e _tl2182922088_)))
                                            (let ((_tl2184122120_
                                                   (##cdr _e2183922115_))
                                                  (_hd2184022118_
                                                   (##car _e2183922115_)))
                                              (if (gx#stx-pair? _hd2184022118_)
                                                  (let ((_e2184222123_
                                                         (gx#stx-e
                                                          _hd2184022118_)))
                                                    (let ((_tl2184422128_
                                                           (##cdr _e2184222123_))
                                                          (_hd2184322126_
                                                           (##car _e2184222123_)))
                                                      (if (gx#identifier?
                                                           _hd2184322126_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2184322126_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2184422128_)
                          (let ((_e2184522131_ (gx#stx-e _tl2184422128_)))
                            (let ((_tl2184722136_ (##cdr _e2184522131_))
                                  (_hd2184622134_ (##car _e2184522131_)))
                              (if (gx#stx-pair? _hd2184622134_)
                                  (let ((_e2184822139_
                                         (gx#stx-e _hd2184622134_)))
                                    (let ((_tl2185022144_
                                           (##cdr _e2184822139_))
                                          (_hd2184922142_
                                           (##car _e2184822139_)))
                                      (if (gx#identifier? _hd2184922142_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2184922142_)
                                              (if (gx#stx-pair? _tl2185022144_)
                                                  (let ((_e2185122147_
                                                         (gx#stx-e
                                                          _tl2185022144_)))
                                                    (let ((_tl2185322152_
                                                           (##cdr _e2185122147_))
                                                          (_hd2185222150_
                                                           (##car _e2185122147_)))
                                                      (if (gx#stx-null?
                                                           _tl2185322152_)
                                                          (if (gx#stx-pair?
                                                               _tl2184722136_)
                                                              (let ((_e2185422155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2184722136_)))
                        (let ((_tl2185622160_ (##cdr _e2185422155_))
                              (_hd2185522158_ (##car _e2185422155_)))
                          (if (gx#stx-pair? _hd2185522158_)
                              (let ((_e2185722163_ (gx#stx-e _hd2185522158_)))
                                (let ((_tl2185922168_ (##cdr _e2185722163_))
                                      (_hd2185822166_ (##car _e2185722163_)))
                                  (if (gx#identifier? _hd2185822166_)
                                      (if (gx#stx-eq? '%#ref _hd2185822166_)
                                          (if (gx#stx-pair? _tl2185922168_)
                                              (let ((_e2186022171_
                                                     (gx#stx-e
                                                      _tl2185922168_)))
                                                (let ((_tl2186222176_
                                                       (##cdr _e2186022171_))
                                                      (_hd2186122174_
                                                       (##car _e2186022171_)))
                                                  (if (gx#stx-null?
                                                       _tl2186222176_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2185622160_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2185622160_)
                            '1)
                      (let ((___splice2729727298_
                             (gx#syntax-split-splice _tl2185622160_ '1)))
                        (let ((_tl2186522181_
                               (##vector-ref ___splice2729727298_ '1))
                              (_target2186322179_
                               (##vector-ref ___splice2729727298_ '0)))
                          (if (gx#stx-pair? _tl2186522181_)
                              (let ((_e2187222184_ (gx#stx-e _tl2186522181_)))
                                (let ((_tl2187422189_ (##cdr _e2187222184_))
                                      (_hd2187322187_ (##car _e2187222184_)))
                                  (if (gx#stx-pair? _hd2187322187_)
                                      (let ((_e2187522192_
                                             (gx#stx-e _hd2187322187_)))
                                        (let ((_tl2187722197_
                                               (##cdr _e2187522192_))
                                              (_hd2187622195_
                                               (##car _e2187522192_)))
                                          (if (gx#identifier? _hd2187622195_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2187622195_)
                                                  (if (gx#stx-pair?
                                                       _tl2187722197_)
                                                      (let ((_e2187822200_
                                                             (gx#stx-e
                                                              _tl2187722197_)))
                                                        (let ((_tl2188022205_
                                                               (##cdr _e2187822200_))
                                                              (_hd2187922203_
                                                               (##car _e2187822200_)))
                                                          (if (gx#stx-null?
                                                               _tl2188022205_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2187422189_)
                          (letrec ((_loop2186622208_
                                    (lambda (_hd2186422211_ _xarg2187022213_)
                                      (if (gx#stx-pair? _hd2186422211_)
                                          (let ((_e2186722216_
                                                 (gx#stx-e _hd2186422211_)))
                                            (let ((_lp-tl2186922221_
                                                   (##cdr _e2186722216_))
                                                  (_lp-hd2186822219_
                                                   (##car _e2186722216_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2186822219_)
                                                  (let ((_e2188122224_
                                                         (gx#stx-e
                                                          _lp-hd2186822219_)))
                                                    (let ((_tl2188322229_
                                                           (##cdr _e2188122224_))
                                                          (_hd2188222227_
                                                           (##car _e2188122224_)))
                                                      (if (gx#identifier?
                                                           _hd2188222227_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2188222227_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2188322229_)
                          (let ((_e2188422232_ (gx#stx-e _tl2188322229_)))
                            (let ((_tl2188622237_ (##cdr _e2188422232_))
                                  (_hd2188522235_ (##car _e2188422232_)))
                              (if (gx#stx-null? _tl2188622237_)
                                  (_loop2186622208_
                                   _lp-tl2186922221_
                                   (cons _hd2188522235_ _xarg2187022213_))
                                  (___match2739827399_
                                   _e2182722083_
                                   _hd2182822086_
                                   _tl2182922088_
                                   _e2183922115_
                                   _hd2184022118_
                                   _tl2184122120_
                                   _e2184222123_
                                   _hd2184322126_
                                   _tl2184422128_
                                   _e2184522131_
                                   _hd2184622134_
                                   _tl2184722136_
                                   _e2184822139_
                                   _hd2184922142_
                                   _tl2185022144_
                                   _e2185122147_
                                   _hd2185222150_
                                   _tl2185322152_
                                   _e2185422155_
                                   _hd2185522158_
                                   _tl2185622160_
                                   _e2185722163_
                                   _hd2185822166_
                                   _tl2185922168_
                                   _e2186022171_
                                   _hd2186122174_
                                   _tl2186222176_))))
                          (___match2739827399_
                           _e2182722083_
                           _hd2182822086_
                           _tl2182922088_
                           _e2183922115_
                           _hd2184022118_
                           _tl2184122120_
                           _e2184222123_
                           _hd2184322126_
                           _tl2184422128_
                           _e2184522131_
                           _hd2184622134_
                           _tl2184722136_
                           _e2184822139_
                           _hd2184922142_
                           _tl2185022144_
                           _e2185122147_
                           _hd2185222150_
                           _tl2185322152_
                           _e2185422155_
                           _hd2185522158_
                           _tl2185622160_
                           _e2185722163_
                           _hd2185822166_
                           _tl2185922168_
                           _e2186022171_
                           _hd2186122174_
                           _tl2186222176_))
                      (___match2739827399_
                       _e2182722083_
                       _hd2182822086_
                       _tl2182922088_
                       _e2183922115_
                       _hd2184022118_
                       _tl2184122120_
                       _e2184222123_
                       _hd2184322126_
                       _tl2184422128_
                       _e2184522131_
                       _hd2184622134_
                       _tl2184722136_
                       _e2184822139_
                       _hd2184922142_
                       _tl2185022144_
                       _e2185122147_
                       _hd2185222150_
                       _tl2185322152_
                       _e2185422155_
                       _hd2185522158_
                       _tl2185622160_
                       _e2185722163_
                       _hd2185822166_
                       _tl2185922168_
                       _e2186022171_
                       _hd2186122174_
                       _tl2186222176_))
                  (___match2739827399_
                   _e2182722083_
                   _hd2182822086_
                   _tl2182922088_
                   _e2183922115_
                   _hd2184022118_
                   _tl2184122120_
                   _e2184222123_
                   _hd2184322126_
                   _tl2184422128_
                   _e2184522131_
                   _hd2184622134_
                   _tl2184722136_
                   _e2184822139_
                   _hd2184922142_
                   _tl2185022144_
                   _e2185122147_
                   _hd2185222150_
                   _tl2185322152_
                   _e2185422155_
                   _hd2185522158_
                   _tl2185622160_
                   _e2185722163_
                   _hd2185822166_
                   _tl2185922168_
                   _e2186022171_
                   _hd2186122174_
                   _tl2186222176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2739827399_
                                                   _e2182722083_
                                                   _hd2182822086_
                                                   _tl2182922088_
                                                   _e2183922115_
                                                   _hd2184022118_
                                                   _tl2184122120_
                                                   _e2184222123_
                                                   _hd2184322126_
                                                   _tl2184422128_
                                                   _e2184522131_
                                                   _hd2184622134_
                                                   _tl2184722136_
                                                   _e2184822139_
                                                   _hd2184922142_
                                                   _tl2185022144_
                                                   _e2185122147_
                                                   _hd2185222150_
                                                   _tl2185322152_
                                                   _e2185422155_
                                                   _hd2185522158_
                                                   _tl2185622160_
                                                   _e2185722163_
                                                   _hd2185822166_
                                                   _tl2185922168_
                                                   _e2186022171_
                                                   _hd2186122174_
                                                   _tl2186222176_))))
                                          (let ((_xarg2187122240_
                                                 (reverse _xarg2187022213_)))
                                            (if (gx#stx-null? _tl2184122120_)
                                                (let ((_L22243_ _hd2187922203_)
                                                      (_L22244_
                                                       _xarg2187122240_)
                                                      (_L22245_ _hd2186122174_)
                                                      (_L22246_ _hd2185222150_)
                                                      (_L22247_ _tl2183222093_)
                                                      (_L22248_
                                                       _arg2183822112_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2229122294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2229222296_)
                               (cons _g2229122294_ _g2229222296_))
                             '()
                             _L22248_)))
                  (if (gx#identifier? _L22247_)
                      (if (gxc#runtime-identifier=? _L22246_ 'apply)
                          (if (fx= (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2229822301_
                                                              _g2229922303_)
                                                       (cons _g2229822301_
                                                             _g2229922303_))
                                                     '()
                                                     _L22248_)))
                                   (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2230522308_
                                                              _g2230622310_)
                                                       (cons _g2230522308_
                                                             _g2230622310_))
                                                     '()
                                                     _L22244_))))
                              (if (andmap2 gx#free-identifier=?
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2231222315_
                                                              _g2231322317_)
                                                       (cons _g2231222315_
                                                             _g2231322317_))
                                                     '()
                                                     _L22248_))
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2231922322_
                                                              _g2232022324_)
                                                       (cons _g2231922322_
                                                             _g2232022324_))
                                                     '()
                                                     _L22244_)))
                                  (if (gx#free-identifier=? _L22247_ _L22243_)
                                      (not (find (lambda (_g2232622328_)
                                                   (gx#free-identifier=?
                                                    _g2232622328_
                                                    _L22245_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2233022333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2233122335_)
                     (cons _g2233022333_ _g2233122335_))
                   (cons _L22247_ '())
                   _L22248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '#f)
                                  '#f)
                              '#f)
                          '#f)
                      '#f)
                  '#f)
              (___kont2729327294_
               _L22243_
               _L22244_
               _L22245_
               _L22246_
               _L22247_
               _L22248_)
              (___match2739827399_
               _e2182722083_
               _hd2182822086_
               _tl2182922088_
               _e2183922115_
               _hd2184022118_
               _tl2184122120_
               _e2184222123_
               _hd2184322126_
               _tl2184422128_
               _e2184522131_
               _hd2184622134_
               _tl2184722136_
               _e2184822139_
               _hd2184922142_
               _tl2185022144_
               _e2185122147_
               _hd2185222150_
               _tl2185322152_
               _e2185422155_
               _hd2185522158_
               _tl2185622160_
               _e2185722163_
               _hd2185822166_
               _tl2185922168_
               _e2186022171_
               _hd2186122174_
               _tl2186222176_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2739827399_
                                                 _e2182722083_
                                                 _hd2182822086_
                                                 _tl2182922088_
                                                 _e2183922115_
                                                 _hd2184022118_
                                                 _tl2184122120_
                                                 _e2184222123_
                                                 _hd2184322126_
                                                 _tl2184422128_
                                                 _e2184522131_
                                                 _hd2184622134_
                                                 _tl2184722136_
                                                 _e2184822139_
                                                 _hd2184922142_
                                                 _tl2185022144_
                                                 _e2185122147_
                                                 _hd2185222150_
                                                 _tl2185322152_
                                                 _e2185422155_
                                                 _hd2185522158_
                                                 _tl2185622160_
                                                 _e2185722163_
                                                 _hd2185822166_
                                                 _tl2185922168_
                                                 _e2186022171_
                                                 _hd2186122174_
                                                 _tl2186222176_)))))))
                            (_loop2186622208_ _target2186322179_ '()))
                          (___match2739827399_
                           _e2182722083_
                           _hd2182822086_
                           _tl2182922088_
                           _e2183922115_
                           _hd2184022118_
                           _tl2184122120_
                           _e2184222123_
                           _hd2184322126_
                           _tl2184422128_
                           _e2184522131_
                           _hd2184622134_
                           _tl2184722136_
                           _e2184822139_
                           _hd2184922142_
                           _tl2185022144_
                           _e2185122147_
                           _hd2185222150_
                           _tl2185322152_
                           _e2185422155_
                           _hd2185522158_
                           _tl2185622160_
                           _e2185722163_
                           _hd2185822166_
                           _tl2185922168_
                           _e2186022171_
                           _hd2186122174_
                           _tl2186222176_))
                      (___match2739827399_
                       _e2182722083_
                       _hd2182822086_
                       _tl2182922088_
                       _e2183922115_
                       _hd2184022118_
                       _tl2184122120_
                       _e2184222123_
                       _hd2184322126_
                       _tl2184422128_
                       _e2184522131_
                       _hd2184622134_
                       _tl2184722136_
                       _e2184822139_
                       _hd2184922142_
                       _tl2185022144_
                       _e2185122147_
                       _hd2185222150_
                       _tl2185322152_
                       _e2185422155_
                       _hd2185522158_
                       _tl2185622160_
                       _e2185722163_
                       _hd2185822166_
                       _tl2185922168_
                       _e2186022171_
                       _hd2186122174_
                       _tl2186222176_))))
              (___match2739827399_
               _e2182722083_
               _hd2182822086_
               _tl2182922088_
               _e2183922115_
               _hd2184022118_
               _tl2184122120_
               _e2184222123_
               _hd2184322126_
               _tl2184422128_
               _e2184522131_
               _hd2184622134_
               _tl2184722136_
               _e2184822139_
               _hd2184922142_
               _tl2185022144_
               _e2185122147_
               _hd2185222150_
               _tl2185322152_
               _e2185422155_
               _hd2185522158_
               _tl2185622160_
               _e2185722163_
               _hd2185822166_
               _tl2185922168_
               _e2186022171_
               _hd2186122174_
               _tl2186222176_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2739827399_
                                                   _e2182722083_
                                                   _hd2182822086_
                                                   _tl2182922088_
                                                   _e2183922115_
                                                   _hd2184022118_
                                                   _tl2184122120_
                                                   _e2184222123_
                                                   _hd2184322126_
                                                   _tl2184422128_
                                                   _e2184522131_
                                                   _hd2184622134_
                                                   _tl2184722136_
                                                   _e2184822139_
                                                   _hd2184922142_
                                                   _tl2185022144_
                                                   _e2185122147_
                                                   _hd2185222150_
                                                   _tl2185322152_
                                                   _e2185422155_
                                                   _hd2185522158_
                                                   _tl2185622160_
                                                   _e2185722163_
                                                   _hd2185822166_
                                                   _tl2185922168_
                                                   _e2186022171_
                                                   _hd2186122174_
                                                   _tl2186222176_))
                                              (___match2739827399_
                                               _e2182722083_
                                               _hd2182822086_
                                               _tl2182922088_
                                               _e2183922115_
                                               _hd2184022118_
                                               _tl2184122120_
                                               _e2184222123_
                                               _hd2184322126_
                                               _tl2184422128_
                                               _e2184522131_
                                               _hd2184622134_
                                               _tl2184722136_
                                               _e2184822139_
                                               _hd2184922142_
                                               _tl2185022144_
                                               _e2185122147_
                                               _hd2185222150_
                                               _tl2185322152_
                                               _e2185422155_
                                               _hd2185522158_
                                               _tl2185622160_
                                               _e2185722163_
                                               _hd2185822166_
                                               _tl2185922168_
                                               _e2186022171_
                                               _hd2186122174_
                                               _tl2186222176_))))
                                      (___match2739827399_
                                       _e2182722083_
                                       _hd2182822086_
                                       _tl2182922088_
                                       _e2183922115_
                                       _hd2184022118_
                                       _tl2184122120_
                                       _e2184222123_
                                       _hd2184322126_
                                       _tl2184422128_
                                       _e2184522131_
                                       _hd2184622134_
                                       _tl2184722136_
                                       _e2184822139_
                                       _hd2184922142_
                                       _tl2185022144_
                                       _e2185122147_
                                       _hd2185222150_
                                       _tl2185322152_
                                       _e2185422155_
                                       _hd2185522158_
                                       _tl2185622160_
                                       _e2185722163_
                                       _hd2185822166_
                                       _tl2185922168_
                                       _e2186022171_
                                       _hd2186122174_
                                       _tl2186222176_))))
                              (___match2739827399_
                               _e2182722083_
                               _hd2182822086_
                               _tl2182922088_
                               _e2183922115_
                               _hd2184022118_
                               _tl2184122120_
                               _e2184222123_
                               _hd2184322126_
                               _tl2184422128_
                               _e2184522131_
                               _hd2184622134_
                               _tl2184722136_
                               _e2184822139_
                               _hd2184922142_
                               _tl2185022144_
                               _e2185122147_
                               _hd2185222150_
                               _tl2185322152_
                               _e2185422155_
                               _hd2185522158_
                               _tl2185622160_
                               _e2185722163_
                               _hd2185822166_
                               _tl2185922168_
                               _e2186022171_
                               _hd2186122174_
                               _tl2186222176_))))
                      (___match2739827399_
                       _e2182722083_
                       _hd2182822086_
                       _tl2182922088_
                       _e2183922115_
                       _hd2184022118_
                       _tl2184122120_
                       _e2184222123_
                       _hd2184322126_
                       _tl2184422128_
                       _e2184522131_
                       _hd2184622134_
                       _tl2184722136_
                       _e2184822139_
                       _hd2184922142_
                       _tl2185022144_
                       _e2185122147_
                       _hd2185222150_
                       _tl2185322152_
                       _e2185422155_
                       _hd2185522158_
                       _tl2185622160_
                       _e2185722163_
                       _hd2185822166_
                       _tl2185922168_
                       _e2186022171_
                       _hd2186122174_
                       _tl2186222176_))
                  (___match2739827399_
                   _e2182722083_
                   _hd2182822086_
                   _tl2182922088_
                   _e2183922115_
                   _hd2184022118_
                   _tl2184122120_
                   _e2184222123_
                   _hd2184322126_
                   _tl2184422128_
                   _e2184522131_
                   _hd2184622134_
                   _tl2184722136_
                   _e2184822139_
                   _hd2184922142_
                   _tl2185022144_
                   _e2185122147_
                   _hd2185222150_
                   _tl2185322152_
                   _e2185422155_
                   _hd2185522158_
                   _tl2185622160_
                   _e2185722163_
                   _hd2185822166_
                   _tl2185922168_
                   _e2186022171_
                   _hd2186122174_
                   _tl2186222176_))
              (___kont2730127302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2730127302_))
                                          (___kont2730127302_))
                                      (___kont2730127302_))))
                              (___kont2730127302_))))
                      (___kont2730127302_))
                  (___kont2730127302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2730127302_))
                                              (___kont2730127302_))
                                          (___kont2730127302_))))
                                  (___kont2730127302_))))
                          (___kont2730127302_))
                      (___kont2730127302_))
                  (___kont2730127302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2730127302_))))
                                          (___kont2730127302_)))))))
                      (_loop2183322096_ _target2183022091_ '()))))
                 (___match2731627317_
                  (lambda (_e2177922343_
                           _hd2178022346_
                           _tl2178122348_
                           ___splice2728927290_
                           _target2178222351_
                           _tl2178422353_)
                    (letrec ((_loop2178522356_
                              (lambda (_hd2178322359_ _arg2178922361_)
                                (if (gx#stx-pair? _hd2178322359_)
                                    (let ((_e2178622364_
                                           (gx#stx-e _hd2178322359_)))
                                      (let ((_lp-tl2178822369_
                                             (##cdr _e2178622364_))
                                            (_lp-hd2178722367_
                                             (##car _e2178622364_)))
                                        (_loop2178522356_
                                         _lp-tl2178822369_
                                         (cons _lp-hd2178722367_
                                               _arg2178922361_))))
                                    (let ((_arg2179022372_
                                           (reverse _arg2178922361_)))
                                      (if (gx#stx-pair? _tl2178122348_)
                                          (let ((_e2179122375_
                                                 (gx#stx-e _tl2178122348_)))
                                            (let ((_tl2179322380_
                                                   (##cdr _e2179122375_))
                                                  (_hd2179222378_
                                                   (##car _e2179122375_)))
                                              (if (gx#stx-pair? _hd2179222378_)
                                                  (let ((_e2179422383_
                                                         (gx#stx-e
                                                          _hd2179222378_)))
                                                    (let ((_tl2179622388_
                                                           (##cdr _e2179422383_))
                                                          (_hd2179522386_
                                                           (##car _e2179422383_)))
                                                      (if (gx#identifier?
                                                           _hd2179522386_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2179522386_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2179622388_)
                          (let ((_e2179722391_ (gx#stx-e _tl2179622388_)))
                            (let ((_tl2179922396_ (##cdr _e2179722391_))
                                  (_hd2179822394_ (##car _e2179722391_)))
                              (if (gx#stx-pair? _hd2179822394_)
                                  (let ((_e2180022399_
                                         (gx#stx-e _hd2179822394_)))
                                    (let ((_tl2180222404_
                                           (##cdr _e2180022399_))
                                          (_hd2180122402_
                                           (##car _e2180022399_)))
                                      (if (gx#identifier? _hd2180122402_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2180122402_)
                                              (if (gx#stx-pair? _tl2180222404_)
                                                  (let ((_e2180322407_
                                                         (gx#stx-e
                                                          _tl2180222404_)))
                                                    (let ((_tl2180522412_
                                                           (##cdr _e2180322407_))
                                                          (_hd2180422410_
                                                           (##car _e2180322407_)))
                                                      (if (gx#stx-null?
                                                           _tl2180522412_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2179922396_)
                                                              (let ((___splice2729127292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2179922396_ '0)))
                        (let ((_tl2180822417_
                               (##vector-ref ___splice2729127292_ '1))
                              (_target2180622415_
                               (##vector-ref ___splice2729127292_ '0)))
                          (if (gx#stx-null? _tl2180822417_)
                              (letrec ((_loop2180922420_
                                        (lambda (_hd2180722423_
                                                 _xarg2181322425_)
                                          (if (gx#stx-pair? _hd2180722423_)
                                              (let ((_e2181022428_
                                                     (gx#stx-e
                                                      _hd2180722423_)))
                                                (let ((_lp-tl2181222433_
                                                       (##cdr _e2181022428_))
                                                      (_lp-hd2181122431_
                                                       (##car _e2181022428_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2181122431_)
                                                      (let ((_e2181522436_
                                                             (gx#stx-e
                                                              _lp-hd2181122431_)))
                                                        (let ((_tl2181722441_
                                                               (##cdr _e2181522436_))
                                                              (_hd2181622439_
                                                               (##car _e2181522436_)))
                                                          (if (gx#identifier?
                                                               _hd2181622439_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2181622439_)
                          (if (gx#stx-pair? _tl2181722441_)
                              (let ((_e2181822444_ (gx#stx-e _tl2181722441_)))
                                (let ((_tl2182022449_ (##cdr _e2181822444_))
                                      (_hd2181922447_ (##car _e2181822444_)))
                                  (if (gx#stx-null? _tl2182022449_)
                                      (_loop2180922420_
                                       _lp-tl2181222433_
                                       (cons _hd2181922447_ _xarg2181322425_))
                                      (___match2732827329_
                                       _e2177922343_
                                       _hd2178022346_
                                       _tl2178122348_
                                       ___splice2728927290_
                                       _target2178222351_
                                       _tl2178422353_))))
                              (___match2732827329_
                               _e2177922343_
                               _hd2178022346_
                               _tl2178122348_
                               ___splice2728927290_
                               _target2178222351_
                               _tl2178422353_))
                          (___match2732827329_
                           _e2177922343_
                           _hd2178022346_
                           _tl2178122348_
                           ___splice2728927290_
                           _target2178222351_
                           _tl2178422353_))
                      (___match2732827329_
                       _e2177922343_
                       _hd2178022346_
                       _tl2178122348_
                       ___splice2728927290_
                       _target2178222351_
                       _tl2178422353_))))
              (___match2732827329_
               _e2177922343_
               _hd2178022346_
               _tl2178122348_
               ___splice2728927290_
               _target2178222351_
               _tl2178422353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2181422452_
                                                     (reverse _xarg2181322425_)))
                                                (if (gx#stx-null?
                                                     _tl2179322380_)
                                                    (let ((_L22455_
                                                           _xarg2181422452_)
                                                          (_L22456_
                                                           _hd2180422410_)
                                                          (_L22457_
                                                           _arg2179022372_))
                                                      (if (if (gx#identifier-list?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2248522488_ _g2248622490_)
                                   (cons _g2248522488_ _g2248622490_))
                                 '()
                                 _L22457_)))
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2249222495_
                                                          _g2249322497_)
                                                   (cons _g2249222495_
                                                         _g2249322497_))
                                                 '()
                                                 _L22457_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2249922502_
                                                          _g2250022504_)
                                                   (cons _g2249922502_
                                                         _g2250022504_))
                                                 '()
                                                 _L22455_))))
                          (if (andmap2 gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2250622509_
                                                          _g2250722511_)
                                                   (cons _g2250622509_
                                                         _g2250722511_))
                                                 '()
                                                 _L22457_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2251322516_
                                                          _g2251422518_)
                                                   (cons _g2251322516_
                                                         _g2251422518_))
                                                 '()
                                                 _L22455_)))
                              (not (find (lambda (_g2252022522_)
                                           (gx#free-identifier=?
                                            _g2252022522_
                                            _L22456_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2252422527_
                                                            _g2252522529_)
                                                     (cons _g2252422527_
                                                           _g2252522529_))
                                                   '()
                                                   _L22457_))))
                              '#f)
                          '#f)
                      '#f)
                  (___kont2728727288_ _L22455_ _L22456_ _L22457_)
                  (___match2732827329_
                   _e2177922343_
                   _hd2178022346_
                   _tl2178122348_
                   ___splice2728927290_
                   _target2178222351_
                   _tl2178422353_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2732827329_
                                                     _e2177922343_
                                                     _hd2178022346_
                                                     _tl2178122348_
                                                     ___splice2728927290_
                                                     _target2178222351_
                                                     _tl2178422353_)))))))
                                (_loop2180922420_ _target2180622415_ '()))
                              (___match2732827329_
                               _e2177922343_
                               _hd2178022346_
                               _tl2178122348_
                               ___splice2728927290_
                               _target2178222351_
                               _tl2178422353_))))
                      (___match2732827329_
                       _e2177922343_
                       _hd2178022346_
                       _tl2178122348_
                       ___splice2728927290_
                       _target2178222351_
                       _tl2178422353_))
                  (___match2732827329_
                   _e2177922343_
                   _hd2178022346_
                   _tl2178122348_
                   ___splice2728927290_
                   _target2178222351_
                   _tl2178422353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2732827329_
                                                   _e2177922343_
                                                   _hd2178022346_
                                                   _tl2178122348_
                                                   ___splice2728927290_
                                                   _target2178222351_
                                                   _tl2178422353_))
                                              (___match2732827329_
                                               _e2177922343_
                                               _hd2178022346_
                                               _tl2178122348_
                                               ___splice2728927290_
                                               _target2178222351_
                                               _tl2178422353_))
                                          (___match2732827329_
                                           _e2177922343_
                                           _hd2178022346_
                                           _tl2178122348_
                                           ___splice2728927290_
                                           _target2178222351_
                                           _tl2178422353_))))
                                  (___match2732827329_
                                   _e2177922343_
                                   _hd2178022346_
                                   _tl2178122348_
                                   ___splice2728927290_
                                   _target2178222351_
                                   _tl2178422353_))))
                          (___match2732827329_
                           _e2177922343_
                           _hd2178022346_
                           _tl2178122348_
                           ___splice2728927290_
                           _target2178222351_
                           _tl2178422353_))
                      (___match2732827329_
                       _e2177922343_
                       _hd2178022346_
                       _tl2178122348_
                       ___splice2728927290_
                       _target2178222351_
                       _tl2178422353_))
                  (___match2732827329_
                   _e2177922343_
                   _hd2178022346_
                   _tl2178122348_
                   ___splice2728927290_
                   _target2178222351_
                   _tl2178422353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2732827329_
                                                   _e2177922343_
                                                   _hd2178022346_
                                                   _tl2178122348_
                                                   ___splice2728927290_
                                                   _target2178222351_
                                                   _tl2178422353_))))
                                          (___match2732827329_
                                           _e2177922343_
                                           _hd2178022346_
                                           _tl2178122348_
                                           ___splice2728927290_
                                           _target2178222351_
                                           _tl2178422353_)))))))
                      (_loop2178522356_ _target2178222351_ '())))))
            (if (gx#stx-pair? ___stx2728527286_)
                (let ((_e2177922343_ (gx#stx-e ___stx2728527286_)))
                  (let ((_tl2178122348_ (##cdr _e2177922343_))
                        (_hd2178022346_ (##car _e2177922343_)))
                    (if (gx#stx-pair/null? _hd2178022346_)
                        (let ((___splice2728927290_
                               (gx#syntax-split-splice _hd2178022346_ '0)))
                          (let ((_tl2178422353_
                                 (##vector-ref ___splice2728927290_ '1))
                                (_target2178222351_
                                 (##vector-ref ___splice2728927290_ '0)))
                            (if (gx#stx-null? _tl2178422353_)
                                (___match2731627317_
                                 _e2177922343_
                                 _hd2178022346_
                                 _tl2178122348_
                                 ___splice2728927290_
                                 _target2178222351_
                                 _tl2178422353_)
                                (___match2732827329_
                                 _e2177922343_
                                 _hd2178022346_
                                 _tl2178122348_
                                 ___splice2728927290_
                                 _target2178222351_
                                 _tl2178422353_))))
                        (if (gx#stx-pair? _tl2178122348_)
                            (let ((_e2189421951_ (gx#stx-e _tl2178122348_)))
                              (let ((_tl2189621956_ (##cdr _e2189421951_))
                                    (_hd2189521954_ (##car _e2189421951_)))
                                (if (gx#stx-pair? _hd2189521954_)
                                    (let ((_e2189721959_
                                           (gx#stx-e _hd2189521954_)))
                                      (let ((_tl2189921964_
                                             (##cdr _e2189721959_))
                                            (_hd2189821962_
                                             (##car _e2189721959_)))
                                        (if (gx#identifier? _hd2189821962_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2189821962_)
                                                (if (gx#stx-pair?
                                                     _tl2189921964_)
                                                    (let ((_e2190021967_
                                                           (gx#stx-e
                                                            _tl2189921964_)))
                                                      (let ((_tl2190221972_
                                                             (##cdr _e2190021967_))
                                                            (_hd2190121970_
                                                             (##car _e2190021967_)))
                                                        (if (gx#stx-pair?
                                                             _hd2190121970_)
                                                            (let ((_e2190321975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2190121970_)))
                      (let ((_tl2190521980_ (##cdr _e2190321975_))
                            (_hd2190421978_ (##car _e2190321975_)))
                        (if (gx#identifier? _hd2190421978_)
                            (if (gx#stx-eq? '%#ref _hd2190421978_)
                                (if (gx#stx-pair? _tl2190521980_)
                                    (let ((_e2190621983_
                                           (gx#stx-e _tl2190521980_)))
                                      (let ((_tl2190821988_
                                             (##cdr _e2190621983_))
                                            (_hd2190721986_
                                             (##car _e2190621983_)))
                                        (if (gx#stx-null? _tl2190821988_)
                                            (if (gx#stx-pair? _tl2190221972_)
                                                (let ((_e2190921991_
                                                       (gx#stx-e
                                                        _tl2190221972_)))
                                                  (let ((_tl2191121996_
                                                         (##cdr _e2190921991_))
                                                        (_hd2191021994_
                                                         (##car _e2190921991_)))
                                                    (if (gx#stx-pair?
                                                         _hd2191021994_)
                                                        (let ((_e2191221999_
                                                               (gx#stx-e
                                                                _hd2191021994_)))
                                                          (let ((_tl2191422004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2191221999_))
                        (_hd2191322002_ (##car _e2191221999_)))
                    (if (gx#identifier? _hd2191322002_)
                        (if (gx#stx-eq? '%#ref _hd2191322002_)
                            (if (gx#stx-pair? _tl2191422004_)
                                (let ((_e2191522007_
                                       (gx#stx-e _tl2191422004_)))
                                  (let ((_tl2191722012_ (##cdr _e2191522007_))
                                        (_hd2191622010_ (##car _e2191522007_)))
                                    (if (gx#stx-null? _tl2191722012_)
                                        (if (gx#stx-pair? _tl2191121996_)
                                            (let ((_e2191822015_
                                                   (gx#stx-e _tl2191121996_)))
                                              (let ((_tl2192022020_
                                                     (##cdr _e2191822015_))
                                                    (_hd2191922018_
                                                     (##car _e2191822015_)))
                                                (if (gx#stx-pair?
                                                     _hd2191922018_)
                                                    (let ((_e2192122023_
                                                           (gx#stx-e
                                                            _hd2191922018_)))
                                                      (let ((_tl2192322028_
                                                             (##cdr _e2192122023_))
                                                            (_hd2192222026_
                                                             (##car _e2192122023_)))
                                                        (if (gx#identifier?
                                                             _hd2192222026_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2192222026_)
                        (if (gx#stx-pair? _tl2192322028_)
                            (let ((_e2192422031_ (gx#stx-e _tl2192322028_)))
                              (let ((_tl2192622036_ (##cdr _e2192422031_))
                                    (_hd2192522034_ (##car _e2192422031_)))
                                (if (gx#stx-null? _tl2192622036_)
                                    (if (gx#stx-null? _tl2192022020_)
                                        (if (gx#stx-null? _tl2189621956_)
                                            (___match2742627427_
                                             _e2177922343_
                                             _hd2178022346_
                                             _tl2178122348_
                                             _e2189421951_
                                             _hd2189521954_
                                             _tl2189621956_
                                             _e2189721959_
                                             _hd2189821962_
                                             _tl2189921964_
                                             _e2190021967_
                                             _hd2190121970_
                                             _tl2190221972_
                                             _e2190321975_
                                             _hd2190421978_
                                             _tl2190521980_
                                             _e2190621983_
                                             _hd2190721986_
                                             _tl2190821988_
                                             _e2190921991_
                                             _hd2191021994_
                                             _tl2191121996_
                                             _e2191221999_
                                             _hd2191322002_
                                             _tl2191422004_
                                             _e2191522007_
                                             _hd2191622010_
                                             _tl2191722012_
                                             _e2191822015_
                                             _hd2191922018_
                                             _tl2192022020_
                                             _e2192122023_
                                             _hd2192222026_
                                             _tl2192322028_
                                             _e2192422031_
                                             _hd2192522034_
                                             _tl2192622036_)
                                            (___kont2730127302_))
                                        (___kont2730127302_))
                                    (___kont2730127302_))))
                            (___kont2730127302_))
                        (___kont2730127302_))
                    (___kont2730127302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2730127302_))))
                                            (___kont2730127302_))
                                        (___kont2730127302_))))
                                (___kont2730127302_))
                            (___kont2730127302_))
                        (___kont2730127302_))))
                (___kont2730127302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2730127302_))
                                            (___kont2730127302_))))
                                    (___kont2730127302_))
                                (___kont2730127302_))
                            (___kont2730127302_))))
                    (___kont2730127302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2730127302_))
                                                (___kont2730127302_))
                                            (___kont2730127302_))))
                                    (___kont2730127302_))))
                            (___kont2730127302_)))))
                (___kont2730127302_)))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form21237_)
      (let* ((___stx2742927430_ _form21237_)
             (_g2124121365_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2742927430_))))
        (let ((___kont2743127432_
               (lambda (_L21735_ _L21736_ _L21737_)
                 (gxc#identifier-symbol _L21736_)))
              (___kont2743727438_
               (lambda (_L21583_ _L21584_ _L21585_ _L21586_)
                 (gxc#identifier-symbol _L21583_)))
              (___kont2744127442_
               (lambda (_L21450_ _L21451_ _L21452_)
                 (gxc#identifier-symbol _L21450_))))
          (let* ((___match2753827539_
                  (lambda (_e2133121370_
                           _hd2133221373_
                           _tl2133321375_
                           _e2133421378_
                           _hd2133521381_
                           _tl2133621383_
                           _e2133721386_
                           _hd2133821389_
                           _tl2133921391_
                           _e2134021394_
                           _hd2134121397_
                           _tl2134221399_
                           _e2134321402_
                           _hd2134421405_
                           _tl2134521407_
                           _e2134621410_
                           _hd2134721413_
                           _tl2134821415_
                           _e2134921418_
                           _hd2135021421_
                           _tl2135121423_
                           _e2135221426_
                           _hd2135321429_
                           _tl2135421431_
                           _e2135521434_
                           _hd2135621437_
                           _tl2135721439_)
                    (if (gx#stx-pair? _tl2135121423_)
                        (let ((_e2135821442_ (gx#stx-e _tl2135121423_)))
                          (let ((_tl2136021447_ (##cdr _e2135821442_))
                                (_hd2135921445_ (##car _e2135821442_)))
                            (if (gx#stx-null? _tl2136021447_)
                                (if (gx#stx-null? _tl2133621383_)
                                    (___kont2744127442_
                                     _hd2135621437_
                                     _hd2134721413_
                                     _hd2133221373_)
                                    (_g2124121365_))
                                (_g2124121365_))))
                        (_g2124121365_))))
                 (___match2746827469_
                  (lambda (_e2129221487_
                           _hd2129321490_
                           _tl2129421492_
                           ___splice2743927440_
                           _target2129521495_
                           _tl2129721497_)
                    (letrec ((_loop2129821500_
                              (lambda (_hd2129621503_ _arg2130221505_)
                                (if (gx#stx-pair? _hd2129621503_)
                                    (let ((_e2129921508_
                                           (gx#stx-e _hd2129621503_)))
                                      (let ((_lp-tl2130121513_
                                             (##cdr _e2129921508_))
                                            (_lp-hd2130021511_
                                             (##car _e2129921508_)))
                                        (_loop2129821500_
                                         _lp-tl2130121513_
                                         (cons _lp-hd2130021511_
                                               _arg2130221505_))))
                                    (let ((_arg2130321516_
                                           (reverse _arg2130221505_)))
                                      (if (gx#stx-pair? _tl2129421492_)
                                          (let ((_e2130421519_
                                                 (gx#stx-e _tl2129421492_)))
                                            (let ((_tl2130621524_
                                                   (##cdr _e2130421519_))
                                                  (_hd2130521522_
                                                   (##car _e2130421519_)))
                                              (if (gx#stx-pair? _hd2130521522_)
                                                  (let ((_e2130721527_
                                                         (gx#stx-e
                                                          _hd2130521522_)))
                                                    (let ((_tl2130921532_
                                                           (##cdr _e2130721527_))
                                                          (_hd2130821530_
                                                           (##car _e2130721527_)))
                                                      (if (gx#identifier?
                                                           _hd2130821530_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2130821530_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2130921532_)
                          (let ((_e2131021535_ (gx#stx-e _tl2130921532_)))
                            (let ((_tl2131221540_ (##cdr _e2131021535_))
                                  (_hd2131121538_ (##car _e2131021535_)))
                              (if (gx#stx-pair? _hd2131121538_)
                                  (let ((_e2131321543_
                                         (gx#stx-e _hd2131121538_)))
                                    (let ((_tl2131521548_
                                           (##cdr _e2131321543_))
                                          (_hd2131421546_
                                           (##car _e2131321543_)))
                                      (if (gx#identifier? _hd2131421546_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2131421546_)
                                              (if (gx#stx-pair? _tl2131521548_)
                                                  (let ((_e2131621551_
                                                         (gx#stx-e
                                                          _tl2131521548_)))
                                                    (let ((_tl2131821556_
                                                           (##cdr _e2131621551_))
                                                          (_hd2131721554_
                                                           (##car _e2131621551_)))
                                                      (if (gx#stx-null?
                                                           _tl2131821556_)
                                                          (if (gx#stx-pair?
                                                               _tl2131221540_)
                                                              (let ((_e2131921559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2131221540_)))
                        (let ((_tl2132121564_ (##cdr _e2131921559_))
                              (_hd2132021562_ (##car _e2131921559_)))
                          (if (gx#stx-pair? _hd2132021562_)
                              (let ((_e2132221567_ (gx#stx-e _hd2132021562_)))
                                (let ((_tl2132421572_ (##cdr _e2132221567_))
                                      (_hd2132321570_ (##car _e2132221567_)))
                                  (if (gx#identifier? _hd2132321570_)
                                      (if (gx#stx-eq? '%#ref _hd2132321570_)
                                          (if (gx#stx-pair? _tl2132421572_)
                                              (let ((_e2132521575_
                                                     (gx#stx-e
                                                      _tl2132421572_)))
                                                (let ((_tl2132721580_
                                                       (##cdr _e2132521575_))
                                                      (_hd2132621578_
                                                       (##car _e2132521575_)))
                                                  (if (gx#stx-null?
                                                       _tl2132721580_)
                                                      (if (gx#stx-null?
                                                           _tl2130621524_)
                                                          (___kont2743727438_
                                                           _hd2132621578_
                                                           _hd2131721554_
                                                           _tl2129721497_
                                                           _arg2130321516_)
                                                          (___match2753827539_
                                                           _e2129221487_
                                                           _hd2129321490_
                                                           _tl2129421492_
                                                           _e2130421519_
                                                           _hd2130521522_
                                                           _tl2130621524_
                                                           _e2130721527_
                                                           _hd2130821530_
                                                           _tl2130921532_
                                                           _e2131021535_
                                                           _hd2131121538_
                                                           _tl2131221540_
                                                           _e2131321543_
                                                           _hd2131421546_
                                                           _tl2131521548_
                                                           _e2131621551_
                                                           _hd2131721554_
                                                           _tl2131821556_
                                                           _e2131921559_
                                                           _hd2132021562_
                                                           _tl2132121564_
                                                           _e2132221567_
                                                           _hd2132321570_
                                                           _tl2132421572_
                                                           _e2132521575_
                                                           _hd2132621578_
                                                           _tl2132721580_))
                                                      (_g2124121365_))))
                                              (_g2124121365_))
                                          (_g2124121365_))
                                      (_g2124121365_))))
                              (_g2124121365_))))
                      (_g2124121365_))
                  (_g2124121365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2124121365_))
                                              (_g2124121365_))
                                          (_g2124121365_))))
                                  (_g2124121365_))))
                          (_g2124121365_))
                      (_g2124121365_))
                  (_g2124121365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2124121365_))))
                                          (_g2124121365_)))))))
                      (_loop2129821500_ _target2129521495_ '()))))
                 (___match2745627457_
                  (lambda (_e2124621623_
                           _hd2124721626_
                           _tl2124821628_
                           ___splice2743327434_
                           _target2124921631_
                           _tl2125121633_)
                    (letrec ((_loop2125221636_
                              (lambda (_hd2125021639_ _arg2125621641_)
                                (if (gx#stx-pair? _hd2125021639_)
                                    (let ((_e2125321644_
                                           (gx#stx-e _hd2125021639_)))
                                      (let ((_lp-tl2125521649_
                                             (##cdr _e2125321644_))
                                            (_lp-hd2125421647_
                                             (##car _e2125321644_)))
                                        (_loop2125221636_
                                         _lp-tl2125521649_
                                         (cons _lp-hd2125421647_
                                               _arg2125621641_))))
                                    (let ((_arg2125721652_
                                           (reverse _arg2125621641_)))
                                      (if (gx#stx-pair? _tl2124821628_)
                                          (let ((_e2125821655_
                                                 (gx#stx-e _tl2124821628_)))
                                            (let ((_tl2126021660_
                                                   (##cdr _e2125821655_))
                                                  (_hd2125921658_
                                                   (##car _e2125821655_)))
                                              (if (gx#stx-pair? _hd2125921658_)
                                                  (let ((_e2126121663_
                                                         (gx#stx-e
                                                          _hd2125921658_)))
                                                    (let ((_tl2126321668_
                                                           (##cdr _e2126121663_))
                                                          (_hd2126221666_
                                                           (##car _e2126121663_)))
                                                      (if (gx#identifier?
                                                           _hd2126221666_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2126221666_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2126321668_)
                          (let ((_e2126421671_ (gx#stx-e _tl2126321668_)))
                            (let ((_tl2126621676_ (##cdr _e2126421671_))
                                  (_hd2126521674_ (##car _e2126421671_)))
                              (if (gx#stx-pair? _hd2126521674_)
                                  (let ((_e2126721679_
                                         (gx#stx-e _hd2126521674_)))
                                    (let ((_tl2126921684_
                                           (##cdr _e2126721679_))
                                          (_hd2126821682_
                                           (##car _e2126721679_)))
                                      (if (gx#identifier? _hd2126821682_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2126821682_)
                                              (if (gx#stx-pair? _tl2126921684_)
                                                  (let ((_e2127021687_
                                                         (gx#stx-e
                                                          _tl2126921684_)))
                                                    (let ((_tl2127221692_
                                                           (##cdr _e2127021687_))
                                                          (_hd2127121690_
                                                           (##car _e2127021687_)))
                                                      (if (gx#stx-null?
                                                           _tl2127221692_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2126621676_)
                                                              (let ((___splice2743527436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2126621676_ '0)))
                        (let ((_tl2127521697_
                               (##vector-ref ___splice2743527436_ '1))
                              (_target2127321695_
                               (##vector-ref ___splice2743527436_ '0)))
                          (if (gx#stx-null? _tl2127521697_)
                              (letrec ((_loop2127621700_
                                        (lambda (_hd2127421703_
                                                 _xarg2128021705_)
                                          (if (gx#stx-pair? _hd2127421703_)
                                              (let ((_e2127721708_
                                                     (gx#stx-e
                                                      _hd2127421703_)))
                                                (let ((_lp-tl2127921713_
                                                       (##cdr _e2127721708_))
                                                      (_lp-hd2127821711_
                                                       (##car _e2127721708_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2127821711_)
                                                      (let ((_e2128221716_
                                                             (gx#stx-e
                                                              _lp-hd2127821711_)))
                                                        (let ((_tl2128421721_
                                                               (##cdr _e2128221716_))
                                                              (_hd2128321719_
                                                               (##car _e2128221716_)))
                                                          (if (gx#identifier?
                                                               _hd2128321719_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2128321719_)
                          (if (gx#stx-pair? _tl2128421721_)
                              (let ((_e2128521724_ (gx#stx-e _tl2128421721_)))
                                (let ((_tl2128721729_ (##cdr _e2128521724_))
                                      (_hd2128621727_ (##car _e2128521724_)))
                                  (if (gx#stx-null? _tl2128721729_)
                                      (_loop2127621700_
                                       _lp-tl2127921713_
                                       (cons _hd2128621727_ _xarg2128021705_))
                                      (___match2746827469_
                                       _e2124621623_
                                       _hd2124721626_
                                       _tl2124821628_
                                       ___splice2743327434_
                                       _target2124921631_
                                       _tl2125121633_))))
                              (___match2746827469_
                               _e2124621623_
                               _hd2124721626_
                               _tl2124821628_
                               ___splice2743327434_
                               _target2124921631_
                               _tl2125121633_))
                          (___match2746827469_
                           _e2124621623_
                           _hd2124721626_
                           _tl2124821628_
                           ___splice2743327434_
                           _target2124921631_
                           _tl2125121633_))
                      (___match2746827469_
                       _e2124621623_
                       _hd2124721626_
                       _tl2124821628_
                       ___splice2743327434_
                       _target2124921631_
                       _tl2125121633_))))
              (___match2746827469_
               _e2124621623_
               _hd2124721626_
               _tl2124821628_
               ___splice2743327434_
               _target2124921631_
               _tl2125121633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2128121732_
                                                     (reverse _xarg2128021705_)))
                                                (if (gx#stx-null?
                                                     _tl2126021660_)
                                                    (___kont2743127432_
                                                     _xarg2128121732_
                                                     _hd2127121690_
                                                     _arg2125721652_)
                                                    (___match2746827469_
                                                     _e2124621623_
                                                     _hd2124721626_
                                                     _tl2124821628_
                                                     ___splice2743327434_
                                                     _target2124921631_
                                                     _tl2125121633_)))))))
                                (_loop2127621700_ _target2127321695_ '()))
                              (___match2746827469_
                               _e2124621623_
                               _hd2124721626_
                               _tl2124821628_
                               ___splice2743327434_
                               _target2124921631_
                               _tl2125121633_))))
                      (___match2746827469_
                       _e2124621623_
                       _hd2124721626_
                       _tl2124821628_
                       ___splice2743327434_
                       _target2124921631_
                       _tl2125121633_))
                  (___match2746827469_
                   _e2124621623_
                   _hd2124721626_
                   _tl2124821628_
                   ___splice2743327434_
                   _target2124921631_
                   _tl2125121633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2746827469_
                                                   _e2124621623_
                                                   _hd2124721626_
                                                   _tl2124821628_
                                                   ___splice2743327434_
                                                   _target2124921631_
                                                   _tl2125121633_))
                                              (___match2746827469_
                                               _e2124621623_
                                               _hd2124721626_
                                               _tl2124821628_
                                               ___splice2743327434_
                                               _target2124921631_
                                               _tl2125121633_))
                                          (___match2746827469_
                                           _e2124621623_
                                           _hd2124721626_
                                           _tl2124821628_
                                           ___splice2743327434_
                                           _target2124921631_
                                           _tl2125121633_))))
                                  (___match2746827469_
                                   _e2124621623_
                                   _hd2124721626_
                                   _tl2124821628_
                                   ___splice2743327434_
                                   _target2124921631_
                                   _tl2125121633_))))
                          (___match2746827469_
                           _e2124621623_
                           _hd2124721626_
                           _tl2124821628_
                           ___splice2743327434_
                           _target2124921631_
                           _tl2125121633_))
                      (___match2746827469_
                       _e2124621623_
                       _hd2124721626_
                       _tl2124821628_
                       ___splice2743327434_
                       _target2124921631_
                       _tl2125121633_))
                  (___match2746827469_
                   _e2124621623_
                   _hd2124721626_
                   _tl2124821628_
                   ___splice2743327434_
                   _target2124921631_
                   _tl2125121633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2746827469_
                                                   _e2124621623_
                                                   _hd2124721626_
                                                   _tl2124821628_
                                                   ___splice2743327434_
                                                   _target2124921631_
                                                   _tl2125121633_))))
                                          (___match2746827469_
                                           _e2124621623_
                                           _hd2124721626_
                                           _tl2124821628_
                                           ___splice2743327434_
                                           _target2124921631_
                                           _tl2125121633_)))))))
                      (_loop2125221636_ _target2124921631_ '())))))
            (if (gx#stx-pair? ___stx2742927430_)
                (let ((_e2124621623_ (gx#stx-e ___stx2742927430_)))
                  (let ((_tl2124821628_ (##cdr _e2124621623_))
                        (_hd2124721626_ (##car _e2124621623_)))
                    (if (gx#stx-pair/null? _hd2124721626_)
                        (let ((___splice2743327434_
                               (gx#syntax-split-splice _hd2124721626_ '0)))
                          (let ((_tl2125121633_
                                 (##vector-ref ___splice2743327434_ '1))
                                (_target2124921631_
                                 (##vector-ref ___splice2743327434_ '0)))
                            (if (gx#stx-null? _tl2125121633_)
                                (___match2745627457_
                                 _e2124621623_
                                 _hd2124721626_
                                 _tl2124821628_
                                 ___splice2743327434_
                                 _target2124921631_
                                 _tl2125121633_)
                                (___match2746827469_
                                 _e2124621623_
                                 _hd2124721626_
                                 _tl2124821628_
                                 ___splice2743327434_
                                 _target2124921631_
                                 _tl2125121633_))))
                        (if (gx#stx-pair? _tl2124821628_)
                            (let ((_e2133421378_ (gx#stx-e _tl2124821628_)))
                              (let ((_tl2133621383_ (##cdr _e2133421378_))
                                    (_hd2133521381_ (##car _e2133421378_)))
                                (if (gx#stx-pair? _hd2133521381_)
                                    (let ((_e2133721386_
                                           (gx#stx-e _hd2133521381_)))
                                      (let ((_tl2133921391_
                                             (##cdr _e2133721386_))
                                            (_hd2133821389_
                                             (##car _e2133721386_)))
                                        (if (gx#identifier? _hd2133821389_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2133821389_)
                                                (if (gx#stx-pair?
                                                     _tl2133921391_)
                                                    (let ((_e2134021394_
                                                           (gx#stx-e
                                                            _tl2133921391_)))
                                                      (let ((_tl2134221399_
                                                             (##cdr _e2134021394_))
                                                            (_hd2134121397_
                                                             (##car _e2134021394_)))
                                                        (if (gx#stx-pair?
                                                             _hd2134121397_)
                                                            (let ((_e2134321402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2134121397_)))
                      (let ((_tl2134521407_ (##cdr _e2134321402_))
                            (_hd2134421405_ (##car _e2134321402_)))
                        (if (gx#identifier? _hd2134421405_)
                            (if (gx#stx-eq? '%#ref _hd2134421405_)
                                (if (gx#stx-pair? _tl2134521407_)
                                    (let ((_e2134621410_
                                           (gx#stx-e _tl2134521407_)))
                                      (let ((_tl2134821415_
                                             (##cdr _e2134621410_))
                                            (_hd2134721413_
                                             (##car _e2134621410_)))
                                        (if (gx#stx-null? _tl2134821415_)
                                            (if (gx#stx-pair? _tl2134221399_)
                                                (let ((_e2134921418_
                                                       (gx#stx-e
                                                        _tl2134221399_)))
                                                  (let ((_tl2135121423_
                                                         (##cdr _e2134921418_))
                                                        (_hd2135021421_
                                                         (##car _e2134921418_)))
                                                    (if (gx#stx-pair?
                                                         _hd2135021421_)
                                                        (let ((_e2135221426_
                                                               (gx#stx-e
                                                                _hd2135021421_)))
                                                          (let ((_tl2135421431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2135221426_))
                        (_hd2135321429_ (##car _e2135221426_)))
                    (if (gx#identifier? _hd2135321429_)
                        (if (gx#stx-eq? '%#ref _hd2135321429_)
                            (if (gx#stx-pair? _tl2135421431_)
                                (let ((_e2135521434_
                                       (gx#stx-e _tl2135421431_)))
                                  (let ((_tl2135721439_ (##cdr _e2135521434_))
                                        (_hd2135621437_ (##car _e2135521434_)))
                                    (if (gx#stx-null? _tl2135721439_)
                                        (if (gx#stx-pair? _tl2135121423_)
                                            (let ((_e2135821442_
                                                   (gx#stx-e _tl2135121423_)))
                                              (let ((_tl2136021447_
                                                     (##cdr _e2135821442_))
                                                    (_hd2135921445_
                                                     (##car _e2135821442_)))
                                                (if (gx#stx-null?
                                                     _tl2136021447_)
                                                    (if (gx#stx-null?
                                                         _tl2133621383_)
                                                        (___kont2744127442_
                                                         _hd2135621437_
                                                         _hd2134721413_
                                                         _hd2124721626_)
                                                        (_g2124121365_))
                                                    (_g2124121365_))))
                                            (_g2124121365_))
                                        (_g2124121365_))))
                                (_g2124121365_))
                            (_g2124121365_))
                        (_g2124121365_))))
                (_g2124121365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2124121365_))
                                            (_g2124121365_))))
                                    (_g2124121365_))
                                (_g2124121365_))
                            (_g2124121365_))))
                    (_g2124121365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2124121365_))
                                                (_g2124121365_))
                                            (_g2124121365_))))
                                    (_g2124121365_))))
                            (_g2124121365_)))))
                (_g2124121365_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form21041_)
      (let* ((_g2104321057_
              (lambda (_g2104421054_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2104421054_)))
             (_g2104221234_
              (lambda (_g2104421060_)
                (if (gx#stx-pair? _g2104421060_)
                    (let ((_e2104721062_ (gx#stx-e _g2104421060_)))
                      (let ((_hd2104821065_ (##car _e2104721062_))
                            (_tl2104921067_ (##cdr _e2104721062_)))
                        (if (gx#stx-pair? _tl2104921067_)
                            (let ((_e2105021070_ (gx#stx-e _tl2104921067_)))
                              (let ((_hd2105121073_ (##car _e2105021070_))
                                    (_tl2105221075_ (##cdr _e2105021070_)))
                                (if (gx#stx-null? _tl2105221075_)
                                    ((lambda (_L21078_ _L21079_)
                                       (let* ((___stx2755127552_ _L21079_)
                                              (_g2109421122_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx2755127552_))))
                                         (let ((___kont2755327554_
                                                (lambda (_L21213_)
                                                  (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2122321226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2122421228_)
                              (cons _g2122321226_ _g2122421228_))
                            '()
                            _L21213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2755727558_
                                                (lambda (_L21164_ _L21165_)
                                                  (cons (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2117621179_ _g2117721181_)
                                    (cons _g2117621179_ _g2117721181_))
                                  '()
                                  _L21165_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2756127562_
                                                (lambda (_L21127_)
                                                  (cons '0 '()))))
                                           (let* ((___match2757627577_
                                                   (lambda (___splice2755927560_
                                                            _target2110821140_
                                                            _tl2111021142_)
                                                     (letrec ((_loop2111121145_
                                                               (lambda (_hd2110921148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2111521150_)
                         (if (gx#stx-pair? _hd2110921148_)
                             (let ((_e2111221153_ (gx#stx-e _hd2110921148_)))
                               (let ((_lp-tl2111421158_ (##cdr _e2111221153_))
                                     (_lp-hd2111321156_ (##car _e2111221153_)))
                                 (_loop2111121145_
                                  _lp-tl2111421158_
                                  (cons _lp-hd2111321156_ _arg2111521150_))))
                             (let ((_arg2111621161_ (reverse _arg2111521150_)))
                               (___kont2755727558_
                                _tl2111021142_
                                _arg2111621161_))))))
               (_loop2111121145_ _target2110821140_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2757027571_
                                                   (lambda (___splice2755527556_
                                                            _target2109721189_
                                                            _tl2109921191_)
                                                     (letrec ((_loop2110021194_
                                                               (lambda (_hd2109821197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2110421199_)
                         (if (gx#stx-pair? _hd2109821197_)
                             (let ((_e2110121202_ (gx#stx-e _hd2109821197_)))
                               (let ((_lp-tl2110321207_ (##cdr _e2110121202_))
                                     (_lp-hd2110221205_ (##car _e2110121202_)))
                                 (_loop2110021194_
                                  _lp-tl2110321207_
                                  (cons _lp-hd2110221205_ _arg2110421199_))))
                             (let ((_arg2110521210_ (reverse _arg2110421199_)))
                               (___kont2755327554_ _arg2110521210_))))))
               (_loop2110021194_ _target2109721189_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  ___stx2755127552_)
                                                 (let ((___splice2755527556_
                                                        (gx#syntax-split-splice
                                                         ___stx2755127552_
                                                         '0)))
                                                   (let ((_tl2109921191_
                                                          (##vector-ref
                                                           ___splice2755527556_
                                                           '1))
                                                         (_target2109721189_
                                                          (##vector-ref
                                                           ___splice2755527556_
                                                           '0)))
                                                     (if (gx#stx-null?
                                                          _tl2109921191_)
                                                         (___match2757027571_
                                                          ___splice2755527556_
                                                          _target2109721189_
                                                          _tl2109921191_)
                                                         (___match2757627577_
                                                          ___splice2755527556_
                                                          _target2109721189_
                                                          _tl2109921191_))))
                                                 (___kont2756127562_
                                                  ___stx2755127552_))))))
                                     _hd2105121073_
                                     _hd2104821065_)
                                    (_g2104321057_ _g2104421060_))))
                            (_g2104321057_ _g2104421060_))))
                    (_g2104321057_ _g2104421060_)))))
        (_g2104221234_ _form21041_))))
  (define gxc#lambda-expr?
    (lambda (_expr20994_)
      (let* ((___stx2757927580_ _expr20994_)
             (_g2099721007_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2757927580_))))
        (let ((___kont2758127582_ (lambda (_L21027_) '#t))
              (___kont2758327584_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2757927580_)
              (let ((_e2100021019_ (gx#stx-e ___stx2757927580_)))
                (let ((_tl2100221024_ (##cdr _e2100021019_))
                      (_hd2100121022_ (##car _e2100021019_)))
                  (if (gx#identifier? _hd2100121022_)
                      (if (gx#stx-eq? '%#lambda _hd2100121022_)
                          (___kont2758127582_ _tl2100221024_)
                          (___kont2758327584_))
                      (___kont2758327584_))))
              (___kont2758327584_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20947_)
      (let* ((___stx2759727598_ _expr20947_)
             (_g2095020960_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2759727598_))))
        (let ((___kont2759927600_ (lambda (_L20980_) '#t))
              (___kont2760127602_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2759727598_)
              (let ((_e2095320972_ (gx#stx-e ___stx2759727598_)))
                (let ((_tl2095520977_ (##cdr _e2095320972_))
                      (_hd2095420975_ (##car _e2095320972_)))
                  (if (gx#identifier? _hd2095420975_)
                      (if (gx#stx-eq? '%#case-lambda _hd2095420975_)
                          (___kont2759927600_ _tl2095520977_)
                          (___kont2760127602_))
                      (___kont2760127602_))))
              (___kont2760127602_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20816_)
      (let* ((___stx2761527616_ _expr20816_)
             (_g2081920849_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2761527616_))))
        (let ((___kont2761727618_
               (lambda (_L20917_ _L20918_ _L20919_)
                 (if (gx#identifier? _L20919_)
                     (if (gxc#lambda-expr? _L20918_)
                         (gxc#case-lambda-expr? _L20917_)
                         '#f)
                     '#f)))
              (___kont2761927620_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2761527616_)
              (let ((_e2082420861_ (gx#stx-e ___stx2761527616_)))
                (let ((_tl2082620866_ (##cdr _e2082420861_))
                      (_hd2082520864_ (##car _e2082420861_)))
                  (if (gx#identifier? _hd2082520864_)
                      (if (gx#stx-eq? '%#let-values _hd2082520864_)
                          (if (gx#stx-pair? _tl2082620866_)
                              (let ((_e2082720869_ (gx#stx-e _tl2082620866_)))
                                (let ((_tl2082920874_ (##cdr _e2082720869_))
                                      (_hd2082820872_ (##car _e2082720869_)))
                                  (if (gx#stx-pair? _hd2082820872_)
                                      (let ((_e2083020877_
                                             (gx#stx-e _hd2082820872_)))
                                        (let ((_tl2083220882_
                                               (##cdr _e2083020877_))
                                              (_hd2083120880_
                                               (##car _e2083020877_)))
                                          (if (gx#stx-pair? _hd2083120880_)
                                              (let ((_e2083320885_
                                                     (gx#stx-e
                                                      _hd2083120880_)))
                                                (let ((_tl2083520890_
                                                       (##cdr _e2083320885_))
                                                      (_hd2083420888_
                                                       (##car _e2083320885_)))
                                                  (if (gx#stx-pair?
                                                       _hd2083420888_)
                                                      (let ((_e2083620893_
                                                             (gx#stx-e
                                                              _hd2083420888_)))
                                                        (let ((_tl2083820898_
                                                               (##cdr _e2083620893_))
                                                              (_hd2083720896_
                                                               (##car _e2083620893_)))
                                                          (if (gx#stx-null?
                                                               _tl2083820898_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2083520890_)
                          (let ((_e2083920901_ (gx#stx-e _tl2083520890_)))
                            (let ((_tl2084120906_ (##cdr _e2083920901_))
                                  (_hd2084020904_ (##car _e2083920901_)))
                              (if (gx#stx-null? _tl2084120906_)
                                  (if (gx#stx-null? _tl2083220882_)
                                      (if (gx#stx-pair? _tl2082920874_)
                                          (let ((_e2084220909_
                                                 (gx#stx-e _tl2082920874_)))
                                            (let ((_tl2084420914_
                                                   (##cdr _e2084220909_))
                                                  (_hd2084320912_
                                                   (##car _e2084220909_)))
                                              (if (gx#stx-null? _tl2084420914_)
                                                  (___kont2761727618_
                                                   _hd2084320912_
                                                   _hd2084020904_
                                                   _hd2083720896_)
                                                  (___kont2761927620_))))
                                          (___kont2761927620_))
                                      (___kont2761927620_))
                                  (___kont2761927620_))))
                          (___kont2761927620_))
                      (___kont2761927620_))))
              (___kont2761927620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2761927620_))))
                                      (___kont2761927620_))))
                              (___kont2761927620_))
                          (___kont2761927620_))
                      (___kont2761927620_))))
              (___kont2761927620_))))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr20141_)
      (let* ((___stx2767727678_ _expr20141_)
             (_g2014420302_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2767727678_))))
        (let ((___kont2767927680_
               (lambda (_L20690_
                        _L20691_
                        _L20692_
                        _L20693_
                        _L20694_
                        _L20695_
                        _L20696_
                        _L20697_
                        _L20698_
                        _L20699_
                        _L20700_)
                 (if (gxc#runtime-identifier=? _L20697_ 'apply)
                     (if (gxc#runtime-identifier=? _L20693_ 'apply)
                         (if (gxc#runtime-identifier=?
                              _L20692_
                              'keyword-dispatch)
                             (if (gx#free-identifier=? _L20700_ _L20691_)
                                 (if (gx#free-identifier=? _L20699_ _L20696_)
                                     (if (gx#free-identifier=?
                                          _L20694_
                                          _L20690_)
                                         (gx#free-identifier=?
                                          _L20698_
                                          _L20695_)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)))
              (___kont2768127682_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2767727678_)
              (let ((_e2015720314_ (gx#stx-e ___stx2767727678_)))
                (let ((_tl2015920319_ (##cdr _e2015720314_))
                      (_hd2015820317_ (##car _e2015720314_)))
                  (if (gx#identifier? _hd2015820317_)
                      (if (gx#stx-eq? '%#let-values _hd2015820317_)
                          (if (gx#stx-pair? _tl2015920319_)
                              (let ((_e2016020322_ (gx#stx-e _tl2015920319_)))
                                (let ((_tl2016220327_ (##cdr _e2016020322_))
                                      (_hd2016120325_ (##car _e2016020322_)))
                                  (if (gx#stx-pair? _hd2016120325_)
                                      (let ((_e2016320330_
                                             (gx#stx-e _hd2016120325_)))
                                        (let ((_tl2016520335_
                                               (##cdr _e2016320330_))
                                              (_hd2016420333_
                                               (##car _e2016320330_)))
                                          (if (gx#stx-pair? _hd2016420333_)
                                              (let ((_e2016620338_
                                                     (gx#stx-e
                                                      _hd2016420333_)))
                                                (let ((_tl2016820343_
                                                       (##cdr _e2016620338_))
                                                      (_hd2016720341_
                                                       (##car _e2016620338_)))
                                                  (if (gx#stx-pair?
                                                       _hd2016720341_)
                                                      (let ((_e2016920346_
                                                             (gx#stx-e
                                                              _hd2016720341_)))
                                                        (let ((_tl2017120351_
                                                               (##cdr _e2016920346_))
                                                              (_hd2017020349_
                                                               (##car _e2016920346_)))
                                                          (if (gx#stx-null?
                                                               _tl2017120351_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2016820343_)
                          (let ((_e2017220354_ (gx#stx-e _tl2016820343_)))
                            (let ((_tl2017420359_ (##cdr _e2017220354_))
                                  (_hd2017320357_ (##car _e2017220354_)))
                              (if (gx#stx-pair? _hd2017320357_)
                                  (let ((_e2017520362_
                                         (gx#stx-e _hd2017320357_)))
                                    (let ((_tl2017720367_
                                           (##cdr _e2017520362_))
                                          (_hd2017620365_
                                           (##car _e2017520362_)))
                                      (if (gx#identifier? _hd2017620365_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd2017620365_)
                                              (if (gx#stx-pair? _tl2017720367_)
                                                  (let ((_e2017820370_
                                                         (gx#stx-e
                                                          _tl2017720367_)))
                                                    (let ((_tl2018020375_
                                                           (##cdr _e2017820370_))
                                                          (_hd2017920373_
                                                           (##car _e2017820370_)))
                                                      (if (gx#stx-pair?
                                                           _hd2017920373_)
                                                          (let ((_e2018120378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2017920373_)))
                    (let ((_tl2018320383_ (##cdr _e2018120378_))
                          (_hd2018220381_ (##car _e2018120378_)))
                      (if (gx#stx-pair? _hd2018220381_)
                          (let ((_e2018420386_ (gx#stx-e _hd2018220381_)))
                            (let ((_tl2018620391_ (##cdr _e2018420386_))
                                  (_hd2018520389_ (##car _e2018420386_)))
                              (if (gx#stx-pair? _hd2018520389_)
                                  (let ((_e2018720394_
                                         (gx#stx-e _hd2018520389_)))
                                    (let ((_tl2018920399_
                                           (##cdr _e2018720394_))
                                          (_hd2018820397_
                                           (##car _e2018720394_)))
                                      (if (gx#stx-null? _tl2018920399_)
                                          (if (gx#stx-pair? _tl2018620391_)
                                              (let ((_e2019020402_
                                                     (gx#stx-e
                                                      _tl2018620391_)))
                                                (let ((_tl2019220407_
                                                       (##cdr _e2019020402_))
                                                      (_hd2019120405_
                                                       (##car _e2019020402_)))
                                                  (if (gx#stx-null?
                                                       _tl2019220407_)
                                                      (if (gx#stx-null?
                                                           _tl2018320383_)
                                                          (if (gx#stx-pair?
                                                               _tl2018020375_)
                                                              (let ((_e2019320410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2018020375_)))
                        (let ((_tl2019520415_ (##cdr _e2019320410_))
                              (_hd2019420413_ (##car _e2019320410_)))
                          (if (gx#stx-pair? _hd2019420413_)
                              (let ((_e2019620418_ (gx#stx-e _hd2019420413_)))
                                (let ((_tl2019820423_ (##cdr _e2019620418_))
                                      (_hd2019720421_ (##car _e2019620418_)))
                                  (if (gx#identifier? _hd2019720421_)
                                      (if (gx#stx-eq? '%#lambda _hd2019720421_)
                                          (if (gx#stx-pair? _tl2019820423_)
                                              (let ((_e2019920426_
                                                     (gx#stx-e
                                                      _tl2019820423_)))
                                                (let ((_tl2020120431_
                                                       (##cdr _e2019920426_))
                                                      (_hd2020020429_
                                                       (##car _e2019920426_)))
                                                  (if (gx#stx-pair?
                                                       _hd2020020429_)
                                                      (let ((_e2020220434_
                                                             (gx#stx-e
                                                              _hd2020020429_)))
                                                        (let ((_tl2020420439_
                                                               (##cdr _e2020220434_))
                                                              (_hd2020320437_
                                                               (##car _e2020220434_)))
                                                          (if (gx#stx-pair?
                                                               _tl2020120431_)
                                                              (let ((_e2020520442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2020120431_)))
                        (let ((_tl2020720447_ (##cdr _e2020520442_))
                              (_hd2020620445_ (##car _e2020520442_)))
                          (if (gx#stx-pair? _hd2020620445_)
                              (let ((_e2020820450_ (gx#stx-e _hd2020620445_)))
                                (let ((_tl2021020455_ (##cdr _e2020820450_))
                                      (_hd2020920453_ (##car _e2020820450_)))
                                  (if (gx#identifier? _hd2020920453_)
                                      (if (gx#stx-eq? '%#call _hd2020920453_)
                                          (if (gx#stx-pair? _tl2021020455_)
                                              (let ((_e2021120458_
                                                     (gx#stx-e
                                                      _tl2021020455_)))
                                                (let ((_tl2021320463_
                                                       (##cdr _e2021120458_))
                                                      (_hd2021220461_
                                                       (##car _e2021120458_)))
                                                  (if (gx#stx-pair?
                                                       _hd2021220461_)
                                                      (let ((_e2021420466_
                                                             (gx#stx-e
                                                              _hd2021220461_)))
                                                        (let ((_tl2021620471_
                                                               (##cdr _e2021420466_))
                                                              (_hd2021520469_
                                                               (##car _e2021420466_)))
                                                          (if (gx#identifier?
                                                               _hd2021520469_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2021520469_)
                          (if (gx#stx-pair? _tl2021620471_)
                              (let ((_e2021720474_ (gx#stx-e _tl2021620471_)))
                                (let ((_tl2021920479_ (##cdr _e2021720474_))
                                      (_hd2021820477_ (##car _e2021720474_)))
                                  (if (gx#stx-null? _tl2021920479_)
                                      (if (gx#stx-pair? _tl2021320463_)
                                          (let ((_e2022020482_
                                                 (gx#stx-e _tl2021320463_)))
                                            (let ((_tl2022220487_
                                                   (##cdr _e2022020482_))
                                                  (_hd2022120485_
                                                   (##car _e2022020482_)))
                                              (if (gx#stx-pair? _hd2022120485_)
                                                  (let ((_e2022320490_
                                                         (gx#stx-e
                                                          _hd2022120485_)))
                                                    (let ((_tl2022520495_
                                                           (##cdr _e2022320490_))
                                                          (_hd2022420493_
                                                           (##car _e2022320490_)))
                                                      (if (gx#identifier?
                                                           _hd2022420493_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2022420493_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2022520495_)
                          (let ((_e2022620498_ (gx#stx-e _tl2022520495_)))
                            (let ((_tl2022820503_ (##cdr _e2022620498_))
                                  (_hd2022720501_ (##car _e2022620498_)))
                              (if (gx#stx-null? _tl2022820503_)
                                  (if (gx#stx-pair? _tl2022220487_)
                                      (let ((_e2022920506_
                                             (gx#stx-e _tl2022220487_)))
                                        (let ((_tl2023120511_
                                               (##cdr _e2022920506_))
                                              (_hd2023020509_
                                               (##car _e2022920506_)))
                                          (if (gx#stx-pair? _hd2023020509_)
                                              (let ((_e2023220514_
                                                     (gx#stx-e
                                                      _hd2023020509_)))
                                                (let ((_tl2023420519_
                                                       (##cdr _e2023220514_))
                                                      (_hd2023320517_
                                                       (##car _e2023220514_)))
                                                  (if (gx#identifier?
                                                       _hd2023320517_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2023320517_)
                                                          (if (gx#stx-pair?
                                                               _tl2023420519_)
                                                              (let ((_e2023520522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2023420519_)))
                        (let ((_tl2023720527_ (##cdr _e2023520522_))
                              (_hd2023620525_ (##car _e2023520522_)))
                          (if (gx#stx-null? _tl2023720527_)
                              (if (gx#stx-null? _tl2020720447_)
                                  (if (gx#stx-null? _tl2019520415_)
                                      (if (gx#stx-null? _tl2017420359_)
                                          (if (gx#stx-null? _tl2016520335_)
                                              (if (gx#stx-pair? _tl2016220327_)
                                                  (let ((_e2023820530_
                                                         (gx#stx-e
                                                          _tl2016220327_)))
                                                    (let ((_tl2024020535_
                                                           (##cdr _e2023820530_))
                                                          (_hd2023920533_
                                                           (##car _e2023820530_)))
                                                      (if (gx#stx-pair?
                                                           _hd2023920533_)
                                                          (let ((_e2024120538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2023920533_)))
                    (let ((_tl2024320543_ (##cdr _e2024120538_))
                          (_hd2024220541_ (##car _e2024120538_)))
                      (if (gx#identifier? _hd2024220541_)
                          (if (gx#stx-eq? '%#lambda _hd2024220541_)
                              (if (gx#stx-pair? _tl2024320543_)
                                  (let ((_e2024420546_
                                         (gx#stx-e _tl2024320543_)))
                                    (let ((_tl2024620551_
                                           (##cdr _e2024420546_))
                                          (_hd2024520549_
                                           (##car _e2024420546_)))
                                      (if (gx#stx-pair? _tl2024620551_)
                                          (let ((_e2024720554_
                                                 (gx#stx-e _tl2024620551_)))
                                            (let ((_tl2024920559_
                                                   (##cdr _e2024720554_))
                                                  (_hd2024820557_
                                                   (##car _e2024720554_)))
                                              (if (gx#stx-pair? _hd2024820557_)
                                                  (let ((_e2025020562_
                                                         (gx#stx-e
                                                          _hd2024820557_)))
                                                    (let ((_tl2025220567_
                                                           (##cdr _e2025020562_))
                                                          (_hd2025120565_
                                                           (##car _e2025020562_)))
                                                      (if (gx#identifier?
                                                           _hd2025120565_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2025120565_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2025220567_)
                          (let ((_e2025320570_ (gx#stx-e _tl2025220567_)))
                            (let ((_tl2025520575_ (##cdr _e2025320570_))
                                  (_hd2025420573_ (##car _e2025320570_)))
                              (if (gx#stx-pair? _hd2025420573_)
                                  (let ((_e2025620578_
                                         (gx#stx-e _hd2025420573_)))
                                    (let ((_tl2025820583_
                                           (##cdr _e2025620578_))
                                          (_hd2025720581_
                                           (##car _e2025620578_)))
                                      (if (gx#identifier? _hd2025720581_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2025720581_)
                                              (if (gx#stx-pair? _tl2025820583_)
                                                  (let ((_e2025920586_
                                                         (gx#stx-e
                                                          _tl2025820583_)))
                                                    (let ((_tl2026120591_
                                                           (##cdr _e2025920586_))
                                                          (_hd2026020589_
                                                           (##car _e2025920586_)))
                                                      (if (gx#stx-null?
                                                           _tl2026120591_)
                                                          (if (gx#stx-pair?
                                                               _tl2025520575_)
                                                              (let ((_e2026220594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2025520575_)))
                        (let ((_tl2026420599_ (##cdr _e2026220594_))
                              (_hd2026320597_ (##car _e2026220594_)))
                          (if (gx#stx-pair? _hd2026320597_)
                              (let ((_e2026520602_ (gx#stx-e _hd2026320597_)))
                                (let ((_tl2026720607_ (##cdr _e2026520602_))
                                      (_hd2026620605_ (##car _e2026520602_)))
                                  (if (gx#identifier? _hd2026620605_)
                                      (if (gx#stx-eq? '%#ref _hd2026620605_)
                                          (if (gx#stx-pair? _tl2026720607_)
                                              (let ((_e2026820610_
                                                     (gx#stx-e
                                                      _tl2026720607_)))
                                                (let ((_tl2027020615_
                                                       (##cdr _e2026820610_))
                                                      (_hd2026920613_
                                                       (##car _e2026820610_)))
                                                  (if (gx#stx-null?
                                                       _tl2027020615_)
                                                      (if (gx#stx-pair?
                                                           _tl2026420599_)
                                                          (let ((_e2027120618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2026420599_)))
                    (let ((_tl2027320623_ (##cdr _e2027120618_))
                          (_hd2027220621_ (##car _e2027120618_)))
                      (if (gx#stx-pair? _hd2027220621_)
                          (let ((_e2027420626_ (gx#stx-e _hd2027220621_)))
                            (let ((_tl2027620631_ (##cdr _e2027420626_))
                                  (_hd2027520629_ (##car _e2027420626_)))
                              (if (gx#identifier? _hd2027520629_)
                                  (if (gx#stx-eq? '%#quote _hd2027520629_)
                                      (if (gx#stx-pair? _tl2027620631_)
                                          (let ((_e2027720634_
                                                 (gx#stx-e _tl2027620631_)))
                                            (let ((_tl2027920639_
                                                   (##cdr _e2027720634_))
                                                  (_hd2027820637_
                                                   (##car _e2027720634_)))
                                              (if (gx#stx-null? _tl2027920639_)
                                                  (if (gx#stx-pair?
                                                       _tl2027320623_)
                                                      (let ((_e2028020642_
                                                             (gx#stx-e
                                                              _tl2027320623_)))
                                                        (let ((_tl2028220647_
                                                               (##cdr _e2028020642_))
                                                              (_hd2028120645_
                                                               (##car _e2028020642_)))
                                                          (if (gx#stx-pair?
                                                               _hd2028120645_)
                                                              (let ((_e2028320650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2028120645_)))
                        (let ((_tl2028520655_ (##cdr _e2028320650_))
                              (_hd2028420653_ (##car _e2028320650_)))
                          (if (gx#identifier? _hd2028420653_)
                              (if (gx#stx-eq? '%#ref _hd2028420653_)
                                  (if (gx#stx-pair? _tl2028520655_)
                                      (let ((_e2028620658_
                                             (gx#stx-e _tl2028520655_)))
                                        (let ((_tl2028820663_
                                               (##cdr _e2028620658_))
                                              (_hd2028720661_
                                               (##car _e2028620658_)))
                                          (if (gx#stx-null? _tl2028820663_)
                                              (if (gx#stx-pair? _tl2028220647_)
                                                  (let ((_e2028920666_
                                                         (gx#stx-e
                                                          _tl2028220647_)))
                                                    (let ((_tl2029120671_
                                                           (##cdr _e2028920666_))
                                                          (_hd2029020669_
                                                           (##car _e2028920666_)))
                                                      (if (gx#stx-pair?
                                                           _hd2029020669_)
                                                          (let ((_e2029220674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2029020669_)))
                    (let ((_tl2029420679_ (##cdr _e2029220674_))
                          (_hd2029320677_ (##car _e2029220674_)))
                      (if (gx#identifier? _hd2029320677_)
                          (if (gx#stx-eq? '%#ref _hd2029320677_)
                              (if (gx#stx-pair? _tl2029420679_)
                                  (let ((_e2029520682_
                                         (gx#stx-e _tl2029420679_)))
                                    (let ((_tl2029720687_
                                           (##cdr _e2029520682_))
                                          (_hd2029620685_
                                           (##car _e2029520682_)))
                                      (if (gx#stx-null? _tl2029720687_)
                                          (if (gx#stx-null? _tl2029120671_)
                                              (if (gx#stx-null? _tl2024920559_)
                                                  (if (gx#stx-null?
                                                       _tl2024020535_)
                                                      (___kont2767927680_
                                                       _hd2029620685_
                                                       _hd2028720661_
                                                       _hd2026920613_
                                                       _hd2026020589_
                                                       _hd2024520549_
                                                       _hd2023620525_
                                                       _hd2022720501_
                                                       _hd2021820477_
                                                       _hd2020320437_
                                                       _hd2018820397_
                                                       _hd2017020349_)
                                                      (___kont2768127682_))
                                                  (___kont2768127682_))
                                              (___kont2768127682_))
                                          (___kont2768127682_))))
                                  (___kont2768127682_))
                              (___kont2768127682_))
                          (___kont2768127682_))))
                  (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2768127682_))
                                              (___kont2768127682_))))
                                      (___kont2768127682_))
                                  (___kont2768127682_))
                              (___kont2768127682_))))
                      (___kont2768127682_))))
              (___kont2768127682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2768127682_))))
                                          (___kont2768127682_))
                                      (___kont2768127682_))
                                  (___kont2768127682_))))
                          (___kont2768127682_))))
                  (___kont2768127682_))
              (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2768127682_))
                                          (___kont2768127682_))
                                      (___kont2768127682_))))
                              (___kont2768127682_))))
                      (___kont2768127682_))
                  (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2768127682_))
                                              (___kont2768127682_))
                                          (___kont2768127682_))))
                                  (___kont2768127682_))))
                          (___kont2768127682_))
                      (___kont2768127682_))
                  (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2768127682_))))
                                          (___kont2768127682_))))
                                  (___kont2768127682_))
                              (___kont2768127682_))
                          (___kont2768127682_))))
                  (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2768127682_))
                                              (___kont2768127682_))
                                          (___kont2768127682_))
                                      (___kont2768127682_))
                                  (___kont2768127682_))
                              (___kont2768127682_))))
                      (___kont2768127682_))
                  (___kont2768127682_))
              (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2768127682_))))
                                      (___kont2768127682_))
                                  (___kont2768127682_))))
                          (___kont2768127682_))
                      (___kont2768127682_))
                  (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2768127682_))))
                                          (___kont2768127682_))
                                      (___kont2768127682_))))
                              (___kont2768127682_))
                          (___kont2768127682_))
                      (___kont2768127682_))))
              (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2768127682_))
                                          (___kont2768127682_))
                                      (___kont2768127682_))))
                              (___kont2768127682_))))
                      (___kont2768127682_))))
              (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2768127682_))
                                          (___kont2768127682_))
                                      (___kont2768127682_))))
                              (___kont2768127682_))))
                      (___kont2768127682_))
                  (___kont2768127682_))
              (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2768127682_))
                                          (___kont2768127682_))))
                                  (___kont2768127682_))))
                          (___kont2768127682_))))
                  (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2768127682_))
                                              (___kont2768127682_))
                                          (___kont2768127682_))))
                                  (___kont2768127682_))))
                          (___kont2768127682_))
                      (___kont2768127682_))))
              (___kont2768127682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2768127682_))))
                                      (___kont2768127682_))))
                              (___kont2768127682_))
                          (___kont2768127682_))
                      (___kont2768127682_))))
              (___kont2768127682_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx19883_ _id19884_ _clauses19885_ _gensym?19886_)
        (let _lp19888_ ((_rest19890_ _clauses19885_)
                        (_ids19891_ '())
                        (_impls19892_ '())
                        (_clauses19893_ '()))
          (let* ((_rest1989419902_ _rest19890_)
                 (_else1989619910_
                  (lambda ()
                    (values (reverse _ids19891_)
                            (reverse _impls19892_)
                            (reverse _clauses19893_))))
                 (_K1989820115_
                  (lambda (_rest19913_ _clause19914_)
                    (if (gxc#dispatch-lambda-form? _clause19914_)
                        (_lp19888_
                         _rest19913_
                         _ids19891_
                         _impls19892_
                         (cons _clause19914_ _clauses19893_))
                        (let* ((_g1991619927_
                                (lambda (_g1991719924_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1991719924_)))
                               (_g1991520112_
                                (lambda (_g1991719930_)
                                  (if (gx#stx-pair? _g1991719930_)
                                      (let ((_e1992019932_
                                             (gx#stx-e _g1991719930_)))
                                        (let ((_hd1992119935_
                                               (##car _e1992019932_))
                                              (_tl1992219937_
                                               (##cdr _e1992019932_)))
                                          ((lambda (_L19940_ _L19941_)
                                             (let* ((_id19958_
                                                     (make-symbol
                                                      (gx#stx-e _id19884_)
                                                      '"__"
                                                      (length _clauses19893_)
                                                      (if _gensym?19886_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id19960_
                                                     (gx#core-quote-syntax__1
                                                      _id19958_
                                                      (gx#stx-source
                                                       _stx19883_)))
                                                    (_impl19962_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L19941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19940_))
              _stx19883_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20109_
                                                     (let* ((___stx2806128062_
                                                             _L19941_)
                                                            (_g1996619994_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx2806128062_))))
                                                       (let ((___kont2806328064_
                                                              (lambda (_L20088_)
                                                                (cons _L19941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons _id19960_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2009820101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2009920103_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g2009820101_ '()))
                           _g2009920103_))
                   '()
                   _L20088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19883_)
                                    '()))))
                     (___kont2806728068_
                      (lambda (_L20039_ _L20040_)
                        (cons _L19941_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id19960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (foldr1 cons
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _L20039_ '()))
                             '())
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2005120054_ _g2005220056_)
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _g2005120054_ '()))
                                         _g2005220056_))
                                 '()
                                 _L20040_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19883_)
                                    '()))))
                     (___kont2807128072_
                      (lambda (_L19999_)
                        (cons _L19941_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id19960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                           (cons _L19999_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19883_)
                                    '())))))
                 (let* ((___match2808628087_
                         (lambda (___splice2806928070_
                                  _target1998020015_
                                  _tl1998220017_)
                           (letrec ((_loop1998320020_
                                     (lambda (_hd1998120023_ _arg1998720025_)
                                       (if (gx#stx-pair? _hd1998120023_)
                                           (let ((_e1998420028_
                                                  (gx#stx-e _hd1998120023_)))
                                             (let ((_lp-tl1998620033_
                                                    (##cdr _e1998420028_))
                                                   (_lp-hd1998520031_
                                                    (##car _e1998420028_)))
                                               (_loop1998320020_
                                                _lp-tl1998620033_
                                                (cons _lp-hd1998520031_
                                                      _arg1998720025_))))
                                           (let ((_arg1998820036_
                                                  (reverse _arg1998720025_)))
                                             (___kont2806728068_
                                              _tl1998220017_
                                              _arg1998820036_))))))
                             (_loop1998320020_ _target1998020015_ '()))))
                        (___match2808028081_
                         (lambda (___splice2806528066_
                                  _target1996920064_
                                  _tl1997120066_)
                           (letrec ((_loop1997220069_
                                     (lambda (_hd1997020072_ _arg1997620074_)
                                       (if (gx#stx-pair? _hd1997020072_)
                                           (let ((_e1997320077_
                                                  (gx#stx-e _hd1997020072_)))
                                             (let ((_lp-tl1997520082_
                                                    (##cdr _e1997320077_))
                                                   (_lp-hd1997420080_
                                                    (##car _e1997320077_)))
                                               (_loop1997220069_
                                                _lp-tl1997520082_
                                                (cons _lp-hd1997420080_
                                                      _arg1997620074_))))
                                           (let ((_arg1997720085_
                                                  (reverse _arg1997620074_)))
                                             (___kont2806328064_
                                              _arg1997720085_))))))
                             (_loop1997220069_ _target1996920064_ '())))))
                   (if (gx#stx-pair/null? ___stx2806128062_)
                       (let ((___splice2806528066_
                              (gx#syntax-split-splice ___stx2806128062_ '0)))
                         (let ((_tl1997120066_
                                (##vector-ref ___splice2806528066_ '1))
                               (_target1996920064_
                                (##vector-ref ___splice2806528066_ '0)))
                           (if (gx#stx-null? _tl1997120066_)
                               (___match2808028081_
                                ___splice2806528066_
                                _target1996920064_
                                _tl1997120066_)
                               (___match2808628087_
                                ___splice2806528066_
                                _target1996920064_
                                _tl1997120066_))))
                       (___kont2807128072_ ___stx2806128062_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp19888_
                                                _rest19913_
                                                (cons _id19960_ _ids19891_)
                                                (cons _impl19962_ _impls19892_)
                                                (cons _clause20109_
                                                      _clauses19893_))))
                                           _tl1992219937_
                                           _hd1992119935_)))
                                      (_g1991619927_ _g1991719930_)))))
                          (_g1991520112_ _clause19914_))))))
            (if (##pair? _rest1989419902_)
                (let ((_hd1989920118_ (##car _rest1989419902_))
                      (_tl1990020120_ (##cdr _rest1989419902_)))
                  (let* ((_clause20123_ _hd1989920118_)
                         (_rest20125_ _tl1990020120_))
                    (_K1989820115_ _rest20125_ _clause20123_)))
                (_else1989619910_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20130_ _id20131_ _clauses20132_)
          (let ((_gensym?20134_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx20130_
             _id20131_
             _clauses20132_
             _gensym?20134_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g28602_
          (let ((_g28601_ (length _g28602_)))
            (cond ((##fx= _g28601_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g28602_))
                  ((##fx= _g28601_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g28602_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g28602_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19160_)
      (letrec ((_case-lambda-clause-def19162_
                (lambda (_id19879_ _impl19880_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id19879_ '())
                               (cons (gxc#compile-e _impl19880_) '())))
                   _stx19160_)))
               (_opt-lambda-dispatch-name19163_
                (lambda (_id19875_)
                  (if (uninterned-symbol? _id19875_)
                      (let ((_str19877_ (symbol->string _id19875_)))
                        (if (string-prefix? _str19877_ '"opt-lambda")
                            '"%"
                            _id19875_))
                      _id19875_)))
               (_kw-lambda-dispatch-name19164_
                (lambda (_id19870_ _name19871_)
                  (if (uninterned-symbol? _id19870_)
                      (let ((_str19873_ (symbol->string _id19870_)))
                        (if (string-prefix? _str19873_ '"kw-lambda")
                            _name19871_
                            _id19870_))
                      _id19870_))))
        (let* ((___stx2810928110_ _stx19160_)
               (_g1916919228_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2810928110_))))
          (let ((___kont2811128112_
                 (lambda (_L19779_ _L19780_)
                   (let* ((___stx2808928090_ _L19779_)
                          (_g1979719811_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2808928090_))))
                     (let ((___kont2809128092_ (lambda (_L19855_) _stx19160_))
                           (___kont2809328094_
                            (lambda (_L19824_)
                              (let ((_g28603_
                                     (gxc#lift-case-lambda-clauses__0
                                      _stx19160_
                                      _L19780_
                                      _L19824_)))
                                (begin
                                  (let ((_g28604_
                                         (if (##values? _g28603_)
                                             (##vector-length _g28603_)
                                             1)))
                                    (if (not (##fx= _g28604_ 3))
                                        (error "Context expects 3 values"
                                               _g28604_)))
                                  (let ((_ids19834_ (##vector-ref _g28603_ 0))
                                        (_impls19835_
                                         (##vector-ref _g28603_ 1))
                                        (_clauses19836_
                                         (##vector-ref _g28603_ 2)))
                                    (let* ((_g28605_
                                            (for-each
                                             gx#core-bind-runtime!
                                             _ids19834_))
                                           (_defs19839_
                                            (map _case-lambda-clause-def19162_
                                                 _ids19834_
                                                 _impls19835_)))
                                      (begin
                                        (gxc#verbose
                                         '"lift case-lambda clauses "
                                         (gxc#identifier-symbol _L19780_)
                                         '" => "
                                         (map gxc#identifier-symbol
                                              _ids19834_))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin
                                               (foldr1 cons
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L19780_ '())
                                  (cons (gxc#xform-wrap-source
                                         (cons '%#case-lambda _clauses19836_)
                                         (gx#datum->syntax__0
                                          '#f
                                          'case-lambda-expr))
                                        '())))
                      _stx19160_)
                     '())
               _defs19839_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx19160_)))))))))
                       (let ((___match2810028101_
                              (lambda (_e1980019847_
                                       _hd1980119850_
                                       _tl1980219852_)
                                (let ((_L19855_ _tl1980219852_))
                                  (if (andmap1 gxc#dispatch-lambda-form?
                                               _L19855_)
                                      (___kont2809128092_ _L19855_)
                                      (___kont2809328094_ _tl1980219852_))))))
                         (if (gx#stx-pair? ___stx2808928090_)
                             (let ((_e1980019847_
                                    (gx#stx-e ___stx2808928090_)))
                               (let ((_tl1980219852_ (##cdr _e1980019847_))
                                     (_hd1980119850_ (##car _e1980019847_)))
                                 (___match2810028101_
                                  _e1980019847_
                                  _hd1980119850_
                                  _tl1980219852_)))
                             (_g1979719811_)))))))
                (___kont2811328114_
                 (lambda (_L19597_ _L19598_)
                   (let* ((_g1961419644_
                           (lambda (_g1961519641_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1961519641_)))
                          (_g1961319739_
                           (lambda (_g1961519647_)
                             (if (gx#stx-pair? _g1961519647_)
                                 (let ((_e1961919649_
                                        (gx#stx-e _g1961519647_)))
                                   (let ((_hd1962019652_ (##car _e1961919649_))
                                         (_tl1962119654_
                                          (##cdr _e1961919649_)))
                                     (if (gx#stx-pair? _tl1962119654_)
                                         (let ((_e1962219657_
                                                (gx#stx-e _tl1962119654_)))
                                           (let ((_hd1962319660_
                                                  (##car _e1962219657_))
                                                 (_tl1962419662_
                                                  (##cdr _e1962219657_)))
                                             (if (gx#stx-pair? _hd1962319660_)
                                                 (let ((_e1962519665_
                                                        (gx#stx-e
                                                         _hd1962319660_)))
                                                   (let ((_hd1962619668_
                                                          (##car _e1962519665_))
                                                         (_tl1962719670_
                                                          (##cdr _e1962519665_)))
                                                     (if (gx#stx-pair?
                                                          _hd1962619668_)
                                                         (let ((_e1962819673_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1962619668_)))
                   (let ((_hd1962919676_ (##car _e1962819673_))
                         (_tl1963019678_ (##cdr _e1962819673_)))
                     (if (gx#stx-pair? _hd1962919676_)
                         (let ((_e1963119681_ (gx#stx-e _hd1962919676_)))
                           (let ((_hd1963219684_ (##car _e1963119681_))
                                 (_tl1963319686_ (##cdr _e1963119681_)))
                             (if (gx#stx-null? _tl1963319686_)
                                 (if (gx#stx-pair? _tl1963019678_)
                                     (let ((_e1963419689_
                                            (gx#stx-e _tl1963019678_)))
                                       (let ((_hd1963519692_
                                              (##car _e1963419689_))
                                             (_tl1963619694_
                                              (##cdr _e1963419689_)))
                                         (if (gx#stx-null? _tl1963619694_)
                                             (if (gx#stx-null? _tl1962719670_)
                                                 (if (gx#stx-pair?
                                                      _tl1962419662_)
                                                     (let ((_e1963719697_
                                                            (gx#stx-e
                                                             _tl1962419662_)))
                                                       (let ((_hd1963819700_
                                                              (##car _e1963719697_))
                                                             (_tl1963919702_
                                                              (##cdr _e1963719697_)))
                                                         (if (gx#stx-null?
                                                              _tl1963919702_)
                                                             ((lambda (_L19705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19706_
                               _L19707_)
                        (let* ((_lambda-id19731_
                                (make-symbol
                                 (gx#stx-e _L19598_)
                                 '"__"
                                 (_opt-lambda-dispatch-name19163_
                                  (gx#stx-e _L19707_))))
                               (_lambda-id19733_
                                (gx#core-quote-syntax__1
                                 _lambda-id19731_
                                 (gx#stx-source _stx19160_)))
                               (_g28606_
                                (gx#core-bind-runtime!__0 _lambda-id19733_))
                               (_new-case-lambda-expr19736_
                                (gxc#apply-expression-subst
                                 _L19705_
                                 _L19707_
                                 _lambda-id19733_)))
                          (begin
                            (gxc#verbose
                             '"lift opt-lambda dispatch "
                             (gxc#identifier-symbol _L19598_)
                             '" => "
                             (gxc#identifier-symbol _lambda-id19733_))
                            (gxc#xform-wrap-source
                             (cons '%#begin
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#define-values
                                                (cons (cons _lambda-id19733_
                                                            '())
                                                      (cons (gxc#compile-e
                                                             _L19706_)
                                                            '())))
                                          _stx19160_)
                                         (cons (gxc#lift-top-lambda-define-values%
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons (cons _L19598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _new-case-lambda-expr19736_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx19160_))
                                               '())))
                             _stx19160_))))
                      _hd1963819700_
                      _hd1963519692_
                      _hd1963219684_)
                     (_g1961419644_ _g1961519647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1961419644_
                                                      _g1961519647_))
                                                 (_g1961419644_ _g1961519647_))
                                             (_g1961419644_ _g1961519647_))))
                                     (_g1961419644_ _g1961519647_))
                                 (_g1961419644_ _g1961519647_))))
                         (_g1961419644_ _g1961519647_))))
                 (_g1961419644_ _g1961519647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1961419644_
                                                  _g1961519647_))))
                                         (_g1961419644_ _g1961519647_))))
                                 (_g1961419644_ _g1961519647_)))))
                     (_g1961319739_ _L19597_))))
                (___kont2811528116_
                 (lambda (_L19311_ _L19312_)
                   (let* ((_g1932819381_
                           (lambda (_g1932919378_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1932919378_)))
                          (_g1932719557_
                           (lambda (_g1932919384_)
                             (if (gx#stx-pair? _g1932919384_)
                                 (let ((_e1933519386_
                                        (gx#stx-e _g1932919384_)))
                                   (let ((_hd1933619389_ (##car _e1933519386_))
                                         (_tl1933719391_
                                          (##cdr _e1933519386_)))
                                     (if (gx#stx-pair? _tl1933719391_)
                                         (let ((_e1933819394_
                                                (gx#stx-e _tl1933719391_)))
                                           (let ((_hd1933919397_
                                                  (##car _e1933819394_))
                                                 (_tl1934019399_
                                                  (##cdr _e1933819394_)))
                                             (if (gx#stx-pair? _hd1933919397_)
                                                 (let ((_e1934119402_
                                                        (gx#stx-e
                                                         _hd1933919397_)))
                                                   (let ((_hd1934219405_
                                                          (##car _e1934119402_))
                                                         (_tl1934319407_
                                                          (##cdr _e1934119402_)))
                                                     (if (gx#stx-pair?
                                                          _hd1934219405_)
                                                         (let ((_e1934419410_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1934219405_)))
                   (let ((_hd1934519413_ (##car _e1934419410_))
                         (_tl1934619415_ (##cdr _e1934419410_)))
                     (if (gx#stx-pair? _hd1934519413_)
                         (let ((_e1934719418_ (gx#stx-e _hd1934519413_)))
                           (let ((_hd1934819421_ (##car _e1934719418_))
                                 (_tl1934919423_ (##cdr _e1934719418_)))
                             (if (gx#stx-null? _tl1934919423_)
                                 (if (gx#stx-pair? _tl1934619415_)
                                     (let ((_e1935019426_
                                            (gx#stx-e _tl1934619415_)))
                                       (let ((_hd1935119429_
                                              (##car _e1935019426_))
                                             (_tl1935219431_
                                              (##cdr _e1935019426_)))
                                         (if (gx#stx-pair? _hd1935119429_)
                                             (let ((_e1935319434_
                                                    (gx#stx-e _hd1935119429_)))
                                               (let ((_hd1935419437_
                                                      (##car _e1935319434_))
                                                     (_tl1935519439_
                                                      (##cdr _e1935319434_)))
                                                 (if (gx#stx-pair?
                                                      _tl1935519439_)
                                                     (let ((_e1935619442_
                                                            (gx#stx-e
                                                             _tl1935519439_)))
                                                       (let ((_hd1935719445_
                                                              (##car _e1935619442_))
                                                             (_tl1935819447_
                                                              (##cdr _e1935619442_)))
                                                         (if (gx#stx-pair?
                                                              _hd1935719445_)
                                                             (let ((_e1935919450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1935719445_)))
                       (let ((_hd1936019453_ (##car _e1935919450_))
                             (_tl1936119455_ (##cdr _e1935919450_)))
                         (if (gx#stx-pair? _hd1936019453_)
                             (let ((_e1936219458_ (gx#stx-e _hd1936019453_)))
                               (let ((_hd1936319461_ (##car _e1936219458_))
                                     (_tl1936419463_ (##cdr _e1936219458_)))
                                 (if (gx#stx-pair? _hd1936319461_)
                                     (let ((_e1936519466_
                                            (gx#stx-e _hd1936319461_)))
                                       (let ((_hd1936619469_
                                              (##car _e1936519466_))
                                             (_tl1936719471_
                                              (##cdr _e1936519466_)))
                                         (if (gx#stx-null? _tl1936719471_)
                                             (if (gx#stx-pair? _tl1936419463_)
                                                 (let ((_e1936819474_
                                                        (gx#stx-e
                                                         _tl1936419463_)))
                                                   (let ((_hd1936919477_
                                                          (##car _e1936819474_))
                                                         (_tl1937019479_
                                                          (##cdr _e1936819474_)))
                                                     (if (gx#stx-null?
                                                          _tl1937019479_)
                                                         (if (gx#stx-null?
                                                              _tl1936119455_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1935819447_)
                         (let ((_e1937119482_ (gx#stx-e _tl1935819447_)))
                           (let ((_hd1937219485_ (##car _e1937119482_))
                                 (_tl1937319487_ (##cdr _e1937119482_)))
                             (if (gx#stx-null? _tl1937319487_)
                                 (if (gx#stx-null? _tl1935219431_)
                                     (if (gx#stx-null? _tl1934319407_)
                                         (if (gx#stx-pair? _tl1934019399_)
                                             (let ((_e1937419490_
                                                    (gx#stx-e _tl1934019399_)))
                                               (let ((_hd1937519493_
                                                      (##car _e1937419490_))
                                                     (_tl1937619495_
                                                      (##cdr _e1937419490_)))
                                                 (if (gx#stx-null?
                                                      _tl1937619495_)
                                                     ((lambda (_L19498_
                                                               _L19499_
                                                               _L19500_
                                                               _L19501_
                                                               _L19502_)
                                                        (let* ((_get-kws-id19542_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L19312_)
                         '"__"
                         (_kw-lambda-dispatch-name19164_
                          (gx#stx-e _L19502_)
                          '"@")))
                       (_get-kws-id19544_
                        (gx#core-quote-syntax__1
                         _get-kws-id19542_
                         (gx#stx-source _stx19160_)))
                       (_main-id19546_
                        (make-symbol
                         (gx#stx-e _L19312_)
                         '"__"
                         (_kw-lambda-dispatch-name19164_
                          (gx#stx-e _L19501_)
                          '"%")))
                       (_main-id19548_
                        (gx#core-quote-syntax__1
                         _main-id19546_
                         (gx#stx-source _stx19160_)))
                       (_g28607_ (gx#core-bind-runtime!__0 _get-kws-id19544_))
                       (_g28608_ (gx#core-bind-runtime!__0 _main-id19548_))
                       (_new-kw-dispatch19552_
                        (gxc#apply-expression-subst
                         _L19498_
                         _L19502_
                         _get-kws-id19544_))
                       (_new-get-kws19554_
                        (gxc#apply-expression-subst
                         _L19499_
                         _L19501_
                         _main-id19548_)))
                  (begin
                    (gxc#verbose
                     '"lift kw-lambda dispatch "
                     (gxc#identifier-symbol _L19312_)
                     '" => "
                     (gxc#identifier-symbol _get-kws-id19544_)
                     '" => "
                     (gxc#identifier-symbol _main-id19548_))
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons (gxc#lift-top-lambda-define-values%
                                  (gxc#xform-wrap-source
                                   (cons '%#define-values
                                         (cons (cons _main-id19548_ '())
                                               (cons _L19500_ '())))
                                   _stx19160_))
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _get-kws-id19544_
                                                          '())
                                                    (cons _new-get-kws19554_
                                                          '())))
                                        _stx19160_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _L19312_ '())
                                                          (cons _new-kw-dispatch19552_
                                                                '())))
                                              _stx19160_)
                                             '()))))
                     _stx19160_))))
              _hd1937519493_
              _hd1937219485_
              _hd1936919477_
              _hd1936619469_
              _hd1934819421_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1932819381_
                                                      _g1932919384_))))
                                             (_g1932819381_ _g1932919384_))
                                         (_g1932819381_ _g1932919384_))
                                     (_g1932819381_ _g1932919384_))
                                 (_g1932819381_ _g1932919384_))))
                         (_g1932819381_ _g1932919384_))
                     (_g1932819381_ _g1932919384_))
                 (_g1932819381_ _g1932919384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1932819381_ _g1932919384_))
                                             (_g1932819381_ _g1932919384_))))
                                     (_g1932819381_ _g1932919384_))))
                             (_g1932819381_ _g1932919384_))))
                     (_g1932819381_ _g1932919384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1932819381_
                                                      _g1932919384_))))
                                             (_g1932819381_ _g1932919384_))))
                                     (_g1932819381_ _g1932919384_))
                                 (_g1932819381_ _g1932919384_))))
                         (_g1932819381_ _g1932919384_))))
                 (_g1932819381_ _g1932919384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1932819381_
                                                  _g1932919384_))))
                                         (_g1932819381_ _g1932919384_))))
                                 (_g1932819381_ _g1932919384_)))))
                     (_g1932719557_ _L19311_))))
                (___kont2811728118_
                 (lambda (_L19257_ _L19258_)
                   (gxc#xform-wrap-source
                    (cons '%#define-values
                          (cons _L19258_ (cons (gxc#compile-e _L19257_) '())))
                    _stx19160_))))
            (let* ((___match2820228203_
                    (lambda (_e1920119279_
                             _hd1920219282_
                             _tl1920319284_
                             _e1920419287_
                             _hd1920519290_
                             _tl1920619292_
                             _e1920719295_
                             _hd1920819298_
                             _tl1920919300_
                             _e1921019303_
                             _hd1921119306_
                             _tl1921219308_)
                      (let ((_L19311_ _hd1921119306_)
                            (_L19312_ _hd1920819298_))
                        (if (if (gx#identifier? _L19312_)
                                (gxc#kw-lambda-expr? _L19311_)
                                '#f)
                            (___kont2811528116_ _L19311_ _L19312_)
                            (___kont2811728118_
                             _hd1921119306_
                             _hd1920519290_)))))
                   (___match2817428175_
                    (lambda (_e1918719565_
                             _hd1918819568_
                             _tl1918919570_
                             _e1919019573_
                             _hd1919119576_
                             _tl1919219578_
                             _e1919319581_
                             _hd1919419584_
                             _tl1919519586_
                             _e1919619589_
                             _hd1919719592_
                             _tl1919819594_)
                      (let ((_L19597_ _hd1919719592_)
                            (_L19598_ _hd1919419584_))
                        (if (if (gx#identifier? _L19598_)
                                (gxc#opt-lambda-expr? _L19597_)
                                '#f)
                            (___kont2811328114_ _L19597_ _L19598_)
                            (___match2820228203_
                             _e1918719565_
                             _hd1918819568_
                             _tl1918919570_
                             _e1919019573_
                             _hd1919119576_
                             _tl1919219578_
                             _e1919319581_
                             _hd1919419584_
                             _tl1919519586_
                             _e1919619589_
                             _hd1919719592_
                             _tl1919819594_)))))
                   (___match2814628147_
                    (lambda (_e1917319747_
                             _hd1917419750_
                             _tl1917519752_
                             _e1917619755_
                             _hd1917719758_
                             _tl1917819760_
                             _e1917919763_
                             _hd1918019766_
                             _tl1918119768_
                             _e1918219771_
                             _hd1918319774_
                             _tl1918419776_)
                      (let ((_L19779_ _hd1918319774_)
                            (_L19780_ _hd1918019766_))
                        (if (if (gx#identifier? _L19780_)
                                (gxc#case-lambda-expr? _L19779_)
                                '#f)
                            (___kont2811128112_ _L19779_ _L19780_)
                            (___match2817428175_
                             _e1917319747_
                             _hd1917419750_
                             _tl1917519752_
                             _e1917619755_
                             _hd1917719758_
                             _tl1917819760_
                             _e1917919763_
                             _hd1918019766_
                             _tl1918119768_
                             _e1918219771_
                             _hd1918319774_
                             _tl1918419776_))))))
              (if (gx#stx-pair? ___stx2810928110_)
                  (let ((_e1917319747_ (gx#stx-e ___stx2810928110_)))
                    (let ((_tl1917519752_ (##cdr _e1917319747_))
                          (_hd1917419750_ (##car _e1917319747_)))
                      (if (gx#stx-pair? _tl1917519752_)
                          (let ((_e1917619755_ (gx#stx-e _tl1917519752_)))
                            (let ((_tl1917819760_ (##cdr _e1917619755_))
                                  (_hd1917719758_ (##car _e1917619755_)))
                              (if (gx#stx-pair? _hd1917719758_)
                                  (let ((_e1917919763_
                                         (gx#stx-e _hd1917719758_)))
                                    (let ((_tl1918119768_
                                           (##cdr _e1917919763_))
                                          (_hd1918019766_
                                           (##car _e1917919763_)))
                                      (if (gx#stx-null? _tl1918119768_)
                                          (if (gx#stx-pair? _tl1917819760_)
                                              (let ((_e1918219771_
                                                     (gx#stx-e
                                                      _tl1917819760_)))
                                                (let ((_tl1918419776_
                                                       (##cdr _e1918219771_))
                                                      (_hd1918319774_
                                                       (##car _e1918219771_)))
                                                  (if (gx#stx-null?
                                                       _tl1918419776_)
                                                      (___match2814628147_
                                                       _e1917319747_
                                                       _hd1917419750_
                                                       _tl1917519752_
                                                       _e1917619755_
                                                       _hd1917719758_
                                                       _tl1917819760_
                                                       _e1917919763_
                                                       _hd1918019766_
                                                       _tl1918119768_
                                                       _e1918219771_
                                                       _hd1918319774_
                                                       _tl1918419776_)
                                                      (_g1916919228_))))
                                              (_g1916919228_))
                                          (if (gx#stx-pair? _tl1917819760_)
                                              (let ((_e1922119249_
                                                     (gx#stx-e
                                                      _tl1917819760_)))
                                                (let ((_tl1922319254_
                                                       (##cdr _e1922119249_))
                                                      (_hd1922219252_
                                                       (##car _e1922119249_)))
                                                  (if (gx#stx-null?
                                                       _tl1922319254_)
                                                      (___kont2811728118_
                                                       _hd1922219252_
                                                       _hd1917719758_)
                                                      (_g1916919228_))))
                                              (_g1916919228_)))))
                                  (if (gx#stx-pair? _tl1917819760_)
                                      (let ((_e1922119249_
                                             (gx#stx-e _tl1917819760_)))
                                        (let ((_tl1922319254_
                                               (##cdr _e1922119249_))
                                              (_hd1922219252_
                                               (##car _e1922119249_)))
                                          (if (gx#stx-null? _tl1922319254_)
                                              (___kont2811728118_
                                               _hd1922219252_
                                               _hd1917719758_)
                                              (_g1916919228_))))
                                      (_g1916919228_)))))
                          (_g1916919228_))))
                  (_g1916919228_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx18092_)
      (letrec* ((_bind-e__2599125992_
                 (lambda (_id19144_ _expr19145_ _compile?19146_)
                   (cons (cons _id19144_ '())
                         (cons (if _compile?19146_
                                   (gxc#compile-e _expr19145_)
                                   _expr19145_)
                               '()))))
                (_bind-e__0__2599325994_
                 (lambda (_id19151_ _expr19152_)
                   (let ((_compile?19154_ '#t))
                     (_bind-e__2599125992_
                      _id19151_
                      _expr19152_
                      _compile?19154_))))
                (_bind-e18094_
                 (lambda _g28610_
                   (let ((_g28609_ (length _g28610_)))
                     (cond ((##fx= _g28609_ 2)
                            (apply _bind-e__0__2599325994_ _g28610_))
                           ((##fx= _g28609_ 3)
                            (apply _bind-e__2599125992_ _g28610_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28610_))))))
                (_compile-bindings18095_
                 (lambda (_bindings18728_)
                   (let _lp18730_ ((_rest18732_ _bindings18728_)
                                   (_lift118733_ '())
                                   (_lift218734_ '())
                                   (_bind18735_ '()))
                     (let* ((_rest1873618744_ _rest18732_)
                            (_else1873818752_
                             (lambda ()
                               (values (reverse _lift118733_)
                                       (reverse _lift218734_)
                                       (reverse _bind18735_))))
                            (_K1874019131_
                             (lambda (_rest18755_ _hd18756_)
                               (let* ((___stx2824528246_ _hd18756_)
                                      (_g1876018796_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2824528246_))))
                                 (let ((___kont2824728248_
                                        (lambda (_L19038_ _L19039_)
                                          (let* ((___stx2822528226_ _L19038_)
                                                 (_g1905419068_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2822528226_))))
                                            (let ((___kont2822728228_
                                                   (lambda (_L19116_)
                                                     (_lp18730_
                                                      _rest18755_
                                                      _lift118733_
                                                      _lift218734_
                                                      (cons (_bind-e__2599125992_
                                                             _L19039_
                                                             _L19038_
                                                             '#f)
                                                            _bind18735_))))
                                                  (___kont2822928230_
                                                   (lambda (_L19081_)
                                                     (let ((_g28611_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx18092_
                                                             _L19039_
                                                             _L19081_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28612_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28611_)
                            (##vector-length _g28611_)
                            1)))
                   (if (not (##fx= _g28612_ 3))
                       (error "Context expects 3 values" _g28612_)))
                 (let ((_ids19091_ (##vector-ref _g28611_ 0))
                       (_impls19092_ (##vector-ref _g28611_ 1))
                       (_clauses19093_ (##vector-ref _g28611_ 2)))
                   (let* ((_g28613_
                           (for-each gx#core-bind-runtime! _ids19091_))
                          (_xbind19096_
                           (map _bind-e18094_ _ids19091_ _impls19092_))
                          (_expr*19098_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses19093_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*19100_
                           (_bind-e__2599125992_ _L19039_ _expr*19098_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L19039_)
                        '" => "
                        (map gxc#identifier-symbol _ids19091_))
                       (_lp18730_
                        _rest18755_
                        _lift118733_
                        (foldl1 cons _lift218734_ _xbind19096_)
                        (cons _bind*19100_ _bind18735_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2823628237_
                                                     (lambda (_e1905719108_
                                                              _hd1905819111_
                                                              _tl1905919113_)
                                                       (let ((_L19116_
                                                              _tl1905919113_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L19116_)
                     (___kont2822728228_ _L19116_)
                     (___kont2822928230_ _tl1905919113_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2822528226_)
                                                    (let ((_e1905719108_
                                                           (gx#stx-e
                                                            ___stx2822528226_)))
                                                      (let ((_tl1905919113_
                                                             (##cdr _e1905719108_))
                                                            (_hd1905819111_
                                                             (##car _e1905719108_)))
                                                        (___match2823628237_
                                                         _e1905719108_
                                                         _hd1905819111_
                                                         _tl1905919113_)))
                                                    (_g1905419068_)))))))
                                       (___kont2824928250_
                                        (lambda (_L18866_ _L18867_)
                                          (let* ((_g1888118911_
                                                  (lambda (_g1888218908_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1888218908_)))
                                                 (_g1888019006_
                                                  (lambda (_g1888218914_)
                                                    (if (gx#stx-pair?
                                                         _g1888218914_)
                                                        (let ((_e1888618916_
                                                               (gx#stx-e
                                                                _g1888218914_)))
                                                          (let ((_hd1888718919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1888618916_))
                        (_tl1888818921_ (##cdr _e1888618916_)))
                    (if (gx#stx-pair? _tl1888818921_)
                        (let ((_e1888918924_ (gx#stx-e _tl1888818921_)))
                          (let ((_hd1889018927_ (##car _e1888918924_))
                                (_tl1889118929_ (##cdr _e1888918924_)))
                            (if (gx#stx-pair? _hd1889018927_)
                                (let ((_e1889218932_
                                       (gx#stx-e _hd1889018927_)))
                                  (let ((_hd1889318935_ (##car _e1889218932_))
                                        (_tl1889418937_ (##cdr _e1889218932_)))
                                    (if (gx#stx-pair? _hd1889318935_)
                                        (let ((_e1889518940_
                                               (gx#stx-e _hd1889318935_)))
                                          (let ((_hd1889618943_
                                                 (##car _e1889518940_))
                                                (_tl1889718945_
                                                 (##cdr _e1889518940_)))
                                            (if (gx#stx-pair? _hd1889618943_)
                                                (let ((_e1889818948_
                                                       (gx#stx-e
                                                        _hd1889618943_)))
                                                  (let ((_hd1889918951_
                                                         (##car _e1889818948_))
                                                        (_tl1890018953_
                                                         (##cdr _e1889818948_)))
                                                    (if (gx#stx-null?
                                                         _tl1890018953_)
                                                        (if (gx#stx-pair?
                                                             _tl1889718945_)
                                                            (let ((_e1890118956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1889718945_)))
                      (let ((_hd1890218959_ (##car _e1890118956_))
                            (_tl1890318961_ (##cdr _e1890118956_)))
                        (if (gx#stx-null? _tl1890318961_)
                            (if (gx#stx-null? _tl1889418937_)
                                (if (gx#stx-pair? _tl1889118929_)
                                    (let ((_e1890418964_
                                           (gx#stx-e _tl1889118929_)))
                                      (let ((_hd1890518967_
                                             (##car _e1890418964_))
                                            (_tl1890618969_
                                             (##cdr _e1890418964_)))
                                        (if (gx#stx-null? _tl1890618969_)
                                            ((lambda (_L18972_
                                                      _L18973_
                                                      _L18974_)
                                               (let* ((_lambda-id18998_
                                                       (make-symbol
                                                        (gx#stx-e _L18867_)
                                                        (gensym '__)))
                                                      (_lambda-id19000_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id18998_
                                                        (gx#stx-source
                                                         _stx18092_)))
                                                      (_g28614_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id19000_))
                                                      (_new-case-lambda-expr19003_
                                                       (gxc#apply-expression-subst
                                                        _L18972_
                                                        _L18974_
                                                        _lambda-id19000_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L18867_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id19000_))
                                                   (_lp18730_
                                                    (cons (_bind-e__2599125992_
                                                           _L18867_
                                                           _new-case-lambda-expr19003_
                                                           '#f)
                                                          _rest18755_)
                                                    (cons (_bind-e__0__2599325994_
                                                           _lambda-id19000_
                                                           _L18973_)
                                                          _lift118733_)
                                                    _lift218734_
                                                    _bind18735_))))
                                             _hd1890518967_
                                             _hd1890218959_
                                             _hd1889918951_)
                                            (_g1888118911_ _g1888218914_))))
                                    (_g1888118911_ _g1888218914_))
                                (_g1888118911_ _g1888218914_))
                            (_g1888118911_ _g1888218914_))))
                    (_g1888118911_ _g1888218914_))
                (_g1888118911_ _g1888218914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1888118911_
                                                 _g1888218914_))))
                                        (_g1888118911_ _g1888218914_))))
                                (_g1888118911_ _g1888218914_))))
                        (_g1888118911_ _g1888218914_))))
                (_g1888118911_ _g1888218914_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1888019006_ _L18866_))))
                                       (___kont2825128252_
                                        (lambda (_L18817_ _L18818_)
                                          (_lp18730_
                                           _rest18755_
                                           _lift118733_
                                           _lift218734_
                                           (cons (cons _L18818_
                                                       (cons (gxc#compile-e
                                                              _L18817_)
                                                             '()))
                                                 _bind18735_)))))
                                   (let* ((___match2829628297_
                                           (lambda (_e1877518842_
                                                    _hd1877618845_
                                                    _tl1877718847_
                                                    _e1877818850_
                                                    _hd1877918853_
                                                    _tl1878018855_
                                                    _e1878118858_
                                                    _hd1878218861_
                                                    _tl1878318863_)
                                             (let ((_L18866_ _hd1878218861_)
                                                   (_L18867_ _hd1877918853_))
                                               (if (if (gx#identifier?
                                                        _L18867_)
                                                       (gxc#opt-lambda-expr?
                                                        _L18866_)
                                                       '#f)
                                                   (___kont2824928250_
                                                    _L18866_
                                                    _L18867_)
                                                   (___kont2825128252_
                                                    _hd1878218861_
                                                    _hd1877618845_)))))
                                          (___match2827428275_
                                           (lambda (_e1876419014_
                                                    _hd1876519017_
                                                    _tl1876619019_
                                                    _e1876719022_
                                                    _hd1876819025_
                                                    _tl1876919027_
                                                    _e1877019030_
                                                    _hd1877119033_
                                                    _tl1877219035_)
                                             (let ((_L19038_ _hd1877119033_)
                                                   (_L19039_ _hd1876819025_))
                                               (if (if (gx#identifier?
                                                        _L19039_)
                                                       (gxc#case-lambda-expr?
                                                        _L19038_)
                                                       '#f)
                                                   (___kont2824728248_
                                                    _L19038_
                                                    _L19039_)
                                                   (___match2829628297_
                                                    _e1876419014_
                                                    _hd1876519017_
                                                    _tl1876619019_
                                                    _e1876719022_
                                                    _hd1876819025_
                                                    _tl1876919027_
                                                    _e1877019030_
                                                    _hd1877119033_
                                                    _tl1877219035_))))))
                                     (if (gx#stx-pair? ___stx2824528246_)
                                         (let ((_e1876419014_
                                                (gx#stx-e ___stx2824528246_)))
                                           (let ((_tl1876619019_
                                                  (##cdr _e1876419014_))
                                                 (_hd1876519017_
                                                  (##car _e1876419014_)))
                                             (if (gx#stx-pair? _hd1876519017_)
                                                 (let ((_e1876719022_
                                                        (gx#stx-e
                                                         _hd1876519017_)))
                                                   (let ((_tl1876919027_
                                                          (##cdr _e1876719022_))
                                                         (_hd1876819025_
                                                          (##car _e1876719022_)))
                                                     (if (gx#stx-null?
                                                          _tl1876919027_)
                                                         (if (gx#stx-pair?
                                                              _tl1876619019_)
                                                             (let ((_e1877019030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1876619019_)))
                       (let ((_tl1877219035_ (##cdr _e1877019030_))
                             (_hd1877119033_ (##car _e1877019030_)))
                         (if (gx#stx-null? _tl1877219035_)
                             (___match2827428275_
                              _e1876419014_
                              _hd1876519017_
                              _tl1876619019_
                              _e1876719022_
                              _hd1876819025_
                              _tl1876919027_
                              _e1877019030_
                              _hd1877119033_
                              _tl1877219035_)
                             (_g1876018796_))))
                     (_g1876018796_))
                 (if (gx#stx-pair? _tl1876619019_)
                     (let ((_e1878918809_ (gx#stx-e _tl1876619019_)))
                       (let ((_tl1879118814_ (##cdr _e1878918809_))
                             (_hd1879018812_ (##car _e1878918809_)))
                         (if (gx#stx-null? _tl1879118814_)
                             (___kont2825128252_ _hd1879018812_ _hd1876519017_)
                             (_g1876018796_))))
                     (_g1876018796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1876619019_)
                                                     (let ((_e1878918809_
                                                            (gx#stx-e
                                                             _tl1876619019_)))
                                                       (let ((_tl1879118814_
                                                              (##cdr _e1878918809_))
                                                             (_hd1879018812_
                                                              (##car _e1878918809_)))
                                                         (if (gx#stx-null?
                                                              _tl1879118814_)
                                                             (___kont2825128252_
                                                              _hd1879018812_
                                                              _hd1876519017_)
                                                             (_g1876018796_))))
                                                     (_g1876018796_)))))
                                         (_g1876018796_))))))))
                       (if (##pair? _rest1873618744_)
                           (let ((_hd1874119134_ (##car _rest1873618744_))
                                 (_tl1874219136_ (##cdr _rest1873618744_)))
                             (let* ((_hd19139_ _hd1874119134_)
                                    (_rest19141_ _tl1874219136_))
                               (_K1874019131_ _rest19141_ _hd19139_)))
                           (_else1873818752_))))))
                (_lift-kw-lambda?18096_
                 (lambda (_bind18652_)
                   (let* ((___stx2831328314_ _bind18652_)
                          (_g1865518672_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2831328314_))))
                     (let ((___kont2831528316_
                            (lambda (_L18708_ _L18709_)
                              (if (gx#identifier? _L18709_)
                                  (gxc#kw-lambda-expr? _L18708_)
                                  '#f)))
                           (___kont2831728318_ (lambda () '#f)))
                       (if (gx#stx-pair? ___stx2831328314_)
                           (let ((_e1865918684_ (gx#stx-e ___stx2831328314_)))
                             (let ((_tl1866118689_ (##cdr _e1865918684_))
                                   (_hd1866018687_ (##car _e1865918684_)))
                               (if (gx#stx-pair? _hd1866018687_)
                                   (let ((_e1866218692_
                                          (gx#stx-e _hd1866018687_)))
                                     (let ((_tl1866418697_
                                            (##cdr _e1866218692_))
                                           (_hd1866318695_
                                            (##car _e1866218692_)))
                                       (if (gx#stx-null? _tl1866418697_)
                                           (if (gx#stx-pair? _tl1866118689_)
                                               (let ((_e1866518700_
                                                      (gx#stx-e
                                                       _tl1866118689_)))
                                                 (let ((_tl1866718705_
                                                        (##cdr _e1866518700_))
                                                       (_hd1866618703_
                                                        (##car _e1866518700_)))
                                                   (if (gx#stx-null?
                                                        _tl1866718705_)
                                                       (___kont2831528316_
                                                        _hd1866618703_
                                                        _hd1866318695_)
                                                       (___kont2831728318_))))
                                               (___kont2831728318_))
                                           (___kont2831728318_))))
                                   (___kont2831728318_))))
                           (___kont2831728318_))))))
                (_lift-kw-lambda-bindings18097_
                 (lambda (_bindings18264_)
                   (let _lp18266_ ((_rest18268_ _bindings18264_)
                                   (_lift118269_ '())
                                   (_lift218270_ '())
                                   (_bind18271_ '()))
                     (let* ((_rest1827218280_ _rest18268_)
                            (_else1827418288_
                             (lambda ()
                               (values (reverse _lift118269_)
                                       (reverse _lift218270_)
                                       (reverse _bind18271_))))
                            (_K1827618640_
                             (lambda (_rest18291_ _hd18292_)
                               (let* ((___stx2834328344_ _hd18292_)
                                      (_g1829518320_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2834328344_))))
                                 (let ((___kont2834528346_
                                        (lambda (_L18390_ _L18391_)
                                          (let* ((_g1840518458_
                                                  (lambda (_g1840618455_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1840618455_)))
                                                 (_g1840418634_
                                                  (lambda (_g1840618461_)
                                                    (if (gx#stx-pair?
                                                         _g1840618461_)
                                                        (let ((_e1841218463_
                                                               (gx#stx-e
                                                                _g1840618461_)))
                                                          (let ((_hd1841318466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1841218463_))
                        (_tl1841418468_ (##cdr _e1841218463_)))
                    (if (gx#stx-pair? _tl1841418468_)
                        (let ((_e1841518471_ (gx#stx-e _tl1841418468_)))
                          (let ((_hd1841618474_ (##car _e1841518471_))
                                (_tl1841718476_ (##cdr _e1841518471_)))
                            (if (gx#stx-pair? _hd1841618474_)
                                (let ((_e1841818479_
                                       (gx#stx-e _hd1841618474_)))
                                  (let ((_hd1841918482_ (##car _e1841818479_))
                                        (_tl1842018484_ (##cdr _e1841818479_)))
                                    (if (gx#stx-pair? _hd1841918482_)
                                        (let ((_e1842118487_
                                               (gx#stx-e _hd1841918482_)))
                                          (let ((_hd1842218490_
                                                 (##car _e1842118487_))
                                                (_tl1842318492_
                                                 (##cdr _e1842118487_)))
                                            (if (gx#stx-pair? _hd1842218490_)
                                                (let ((_e1842418495_
                                                       (gx#stx-e
                                                        _hd1842218490_)))
                                                  (let ((_hd1842518498_
                                                         (##car _e1842418495_))
                                                        (_tl1842618500_
                                                         (##cdr _e1842418495_)))
                                                    (if (gx#stx-null?
                                                         _tl1842618500_)
                                                        (if (gx#stx-pair?
                                                             _tl1842318492_)
                                                            (let ((_e1842718503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1842318492_)))
                      (let ((_hd1842818506_ (##car _e1842718503_))
                            (_tl1842918508_ (##cdr _e1842718503_)))
                        (if (gx#stx-pair? _hd1842818506_)
                            (let ((_e1843018511_ (gx#stx-e _hd1842818506_)))
                              (let ((_hd1843118514_ (##car _e1843018511_))
                                    (_tl1843218516_ (##cdr _e1843018511_)))
                                (if (gx#stx-pair? _tl1843218516_)
                                    (let ((_e1843318519_
                                           (gx#stx-e _tl1843218516_)))
                                      (let ((_hd1843418522_
                                             (##car _e1843318519_))
                                            (_tl1843518524_
                                             (##cdr _e1843318519_)))
                                        (if (gx#stx-pair? _hd1843418522_)
                                            (let ((_e1843618527_
                                                   (gx#stx-e _hd1843418522_)))
                                              (let ((_hd1843718530_
                                                     (##car _e1843618527_))
                                                    (_tl1843818532_
                                                     (##cdr _e1843618527_)))
                                                (if (gx#stx-pair?
                                                     _hd1843718530_)
                                                    (let ((_e1843918535_
                                                           (gx#stx-e
                                                            _hd1843718530_)))
                                                      (let ((_hd1844018538_
                                                             (##car _e1843918535_))
                                                            (_tl1844118540_
                                                             (##cdr _e1843918535_)))
                                                        (if (gx#stx-pair?
                                                             _hd1844018538_)
                                                            (let ((_e1844218543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1844018538_)))
                      (let ((_hd1844318546_ (##car _e1844218543_))
                            (_tl1844418548_ (##cdr _e1844218543_)))
                        (if (gx#stx-null? _tl1844418548_)
                            (if (gx#stx-pair? _tl1844118540_)
                                (let ((_e1844518551_
                                       (gx#stx-e _tl1844118540_)))
                                  (let ((_hd1844618554_ (##car _e1844518551_))
                                        (_tl1844718556_ (##cdr _e1844518551_)))
                                    (if (gx#stx-null? _tl1844718556_)
                                        (if (gx#stx-null? _tl1843818532_)
                                            (if (gx#stx-pair? _tl1843518524_)
                                                (let ((_e1844818559_
                                                       (gx#stx-e
                                                        _tl1843518524_)))
                                                  (let ((_hd1844918562_
                                                         (##car _e1844818559_))
                                                        (_tl1845018564_
                                                         (##cdr _e1844818559_)))
                                                    (if (gx#stx-null?
                                                         _tl1845018564_)
                                                        (if (gx#stx-null?
                                                             _tl1842918508_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1842018484_)
                        (if (gx#stx-pair? _tl1841718476_)
                            (let ((_e1845118567_ (gx#stx-e _tl1841718476_)))
                              (let ((_hd1845218570_ (##car _e1845118567_))
                                    (_tl1845318572_ (##cdr _e1845118567_)))
                                (if (gx#stx-null? _tl1845318572_)
                                    ((lambda (_L18575_
                                              _L18576_
                                              _L18577_
                                              _L18578_
                                              _L18579_)
                                       (let* ((_get-kws-id18619_
                                               (make-symbol
                                                (gx#stx-e _L18391_)
                                                (gensym '__)))
                                              (_get-kws-id18621_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id18619_
                                                (gx#stx-source _stx18092_)))
                                              (_main-id18623_
                                               (make-symbol
                                                (gx#stx-e _L18391_)
                                                (gensym '__)))
                                              (_main-id18625_
                                               (gx#core-quote-syntax__1
                                                _main-id18623_
                                                (gx#stx-source _stx18092_)))
                                              (_g28615_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id18621_))
                                              (_g28616_
                                               (gx#core-bind-runtime!__0
                                                _main-id18625_))
                                              (_new-kw-dispatch18629_
                                               (gxc#apply-expression-subst
                                                _L18575_
                                                _L18579_
                                                _get-kws-id18621_))
                                              (_new-get-kws18631_
                                               (gxc#apply-expression-subst
                                                _L18576_
                                                _L18578_
                                                _main-id18625_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L18391_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id18621_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id18625_))
                                           (_lp18266_
                                            _rest18291_
                                            (cons (_bind-e__2599125992_
                                                   _main-id18625_
                                                   _L18577_
                                                   '#f)
                                                  _lift118269_)
                                            (cons (_bind-e__2599125992_
                                                   _get-kws-id18621_
                                                   _new-get-kws18631_
                                                   '#f)
                                                  _lift218270_)
                                            (cons (_bind-e__2599125992_
                                                   _L18391_
                                                   _new-kw-dispatch18629_
                                                   '#f)
                                                  _bind18271_)))))
                                     _hd1845218570_
                                     _hd1844918562_
                                     _hd1844618554_
                                     _hd1844318546_
                                     _hd1842518498_)
                                    (_g1840518458_ _g1840618461_))))
                            (_g1840518458_ _g1840618461_))
                        (_g1840518458_ _g1840618461_))
                    (_g1840518458_ _g1840618461_))
                (_g1840518458_ _g1840618461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1840518458_ _g1840618461_))
                                            (_g1840518458_ _g1840618461_))
                                        (_g1840518458_ _g1840618461_))))
                                (_g1840518458_ _g1840618461_))
                            (_g1840518458_ _g1840618461_))))
                    (_g1840518458_ _g1840618461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1840518458_
                                                     _g1840618461_))))
                                            (_g1840518458_ _g1840618461_))))
                                    (_g1840518458_ _g1840618461_))))
                            (_g1840518458_ _g1840618461_))))
                    (_g1840518458_ _g1840618461_))
                (_g1840518458_ _g1840618461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1840518458_
                                                 _g1840618461_))))
                                        (_g1840518458_ _g1840618461_))))
                                (_g1840518458_ _g1840618461_))))
                        (_g1840518458_ _g1840618461_))))
                (_g1840518458_ _g1840618461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1840418634_ _L18390_))))
                                       (___kont2834728348_
                                        (lambda (_L18341_ _L18342_)
                                          (_lp18266_
                                           _rest18291_
                                           _lift118269_
                                           _lift218270_
                                           (cons (cons _L18342_
                                                       (cons _L18341_ '()))
                                                 _bind18271_)))))
                                   (let ((___match2837028371_
                                          (lambda (_e1829918366_
                                                   _hd1830018369_
                                                   _tl1830118371_
                                                   _e1830218374_
                                                   _hd1830318377_
                                                   _tl1830418379_
                                                   _e1830518382_
                                                   _hd1830618385_
                                                   _tl1830718387_)
                                            (let ((_L18390_ _hd1830618385_)
                                                  (_L18391_ _hd1830318377_))
                                              (if (if (gx#identifier? _L18391_)
                                                      (gxc#kw-lambda-expr?
                                                       _L18390_)
                                                      '#f)
                                                  (___kont2834528346_
                                                   _L18390_
                                                   _L18391_)
                                                  (___kont2834728348_
                                                   _hd1830618385_
                                                   _hd1830018369_))))))
                                     (if (gx#stx-pair? ___stx2834328344_)
                                         (let ((_e1829918366_
                                                (gx#stx-e ___stx2834328344_)))
                                           (let ((_tl1830118371_
                                                  (##cdr _e1829918366_))
                                                 (_hd1830018369_
                                                  (##car _e1829918366_)))
                                             (if (gx#stx-pair? _hd1830018369_)
                                                 (let ((_e1830218374_
                                                        (gx#stx-e
                                                         _hd1830018369_)))
                                                   (let ((_tl1830418379_
                                                          (##cdr _e1830218374_))
                                                         (_hd1830318377_
                                                          (##car _e1830218374_)))
                                                     (if (gx#stx-null?
                                                          _tl1830418379_)
                                                         (if (gx#stx-pair?
                                                              _tl1830118371_)
                                                             (let ((_e1830518382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1830118371_)))
                       (let ((_tl1830718387_ (##cdr _e1830518382_))
                             (_hd1830618385_ (##car _e1830518382_)))
                         (if (gx#stx-null? _tl1830718387_)
                             (___match2837028371_
                              _e1829918366_
                              _hd1830018369_
                              _tl1830118371_
                              _e1830218374_
                              _hd1830318377_
                              _tl1830418379_
                              _e1830518382_
                              _hd1830618385_
                              _tl1830718387_)
                             (_g1829518320_))))
                     (_g1829518320_))
                 (if (gx#stx-pair? _tl1830118371_)
                     (let ((_e1831318333_ (gx#stx-e _tl1830118371_)))
                       (let ((_tl1831518338_ (##cdr _e1831318333_))
                             (_hd1831418336_ (##car _e1831318333_)))
                         (if (gx#stx-null? _tl1831518338_)
                             (___kont2834728348_ _hd1831418336_ _hd1830018369_)
                             (_g1829518320_))))
                     (_g1829518320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1830118371_)
                                                     (let ((_e1831318333_
                                                            (gx#stx-e
                                                             _tl1830118371_)))
                                                       (let ((_tl1831518338_
                                                              (##cdr _e1831318333_))
                                                             (_hd1831418336_
                                                              (##car _e1831318333_)))
                                                         (if (gx#stx-null?
                                                              _tl1831518338_)
                                                             (___kont2834728348_
                                                              _hd1831418336_
                                                              _hd1830018369_)
                                                             (_g1829518320_))))
                                                     (_g1829518320_)))))
                                         (_g1829518320_))))))))
                       (if (##pair? _rest1827218280_)
                           (let ((_hd1827718643_ (##car _rest1827218280_))
                                 (_tl1827818645_ (##cdr _rest1827218280_)))
                             (let* ((_hd18648_ _hd1827718643_)
                                    (_rest18650_ _tl1827818645_))
                               (_K1827618640_ _rest18650_ _hd18648_)))
                           (_else1827418288_)))))))
        (let* ((___stx2838728388_ _stx18092_)
               (_g1810018126_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2838728388_))))
          (let ((___kont2838928390_
                 (lambda (_L18186_ _L18187_)
                   (call-with-parameters
                    (lambda ()
                      (if (ormap1 _lift-kw-lambda?18096_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1821518218_
                                                     _g1821618220_)
                                              (cons _g1821518218_
                                                    _g1821618220_))
                                            '()
                                            _L18187_)))
                          (let ((_g28617_
                                 (_lift-kw-lambda-bindings18097_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1822218225_
                                                     _g1822318227_)
                                              (cons _g1822218225_
                                                    _g1822318227_))
                                            '()
                                            _L18187_)))))
                            (begin
                              (let ((_g28618_
                                     (if (##values? _g28617_)
                                         (##vector-length _g28617_)
                                         1)))
                                (if (not (##fx= _g28618_ 3))
                                    (error "Context expects 3 values"
                                           _g28618_)))
                              (let ((_lift118230_ (##vector-ref _g28617_ 0))
                                    (_lift218231_ (##vector-ref _g28617_ 1))
                                    (_hd18232_ (##vector-ref _g28617_ 2)))
                                (let* ((_expr18234_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18232_
                                                     (cons _L18186_ '())))
                                         _stx18092_))
                                       (_expr18236_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift218231_
                                                     (cons _expr18234_ '())))
                                         _stx18092_))
                                       (_expr18238_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift118230_
                                                     (cons _expr18236_ '())))
                                         _stx18092_)))
                                  (gxc#lift-top-lambda-let-values%
                                   _expr18238_)))))
                          (let ((_g28619_
                                 (_compile-bindings18095_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1824018243_
                                                     _g1824118245_)
                                              (cons _g1824018243_
                                                    _g1824118245_))
                                            '()
                                            _L18187_)))))
                            (begin
                              (let ((_g28620_
                                     (if (##values? _g28619_)
                                         (##vector-length _g28619_)
                                         1)))
                                (if (not (##fx= _g28620_ 3))
                                    (error "Context expects 3 values"
                                           _g28620_)))
                              (let ((_lift118248_ (##vector-ref _g28619_ 0))
                                    (_lift218249_ (##vector-ref _g28619_ 1))
                                    (_hd18250_ (##vector-ref _g28619_ 2)))
                                (let* ((_body18252_ (gxc#compile-e _L18186_))
                                       (_expr18254_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18250_
                                                     (cons _body18252_ '())))
                                         _stx18092_))
                                       (_expr18256_
                                        (if (null? _lift218249_)
                                            _expr18254_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift218249_
                                                         (cons _expr18254_
                                                               '())))
                                             _stx18092_)))
                                       (_expr18258_
                                        (if (null? _lift118248_)
                                            _expr18256_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift118248_
                                                         (cons _expr18256_
                                                               '())))
                                             _stx18092_))))
                                  _expr18258_))))))
                    gx#current-expander-context
                    (let ((__obj28593 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28593)
                        __obj28593)))))
                (___kont2839328394_
                 (lambda () (gxc#xform-let-values% _stx18092_))))
            (let ((___match2841428415_
                   (lambda (_e1810418138_
                            _hd1810518141_
                            _tl1810618143_
                            _e1810718146_
                            _hd1810818149_
                            _tl1810918151_
                            ___splice2839128392_
                            _target1811018154_
                            _tl1811218156_)
                     (letrec ((_loop1811318159_
                               (lambda (_hd1811118162_ _bind1811718164_)
                                 (if (gx#stx-pair? _hd1811118162_)
                                     (let ((_e1811418167_
                                            (gx#stx-e _hd1811118162_)))
                                       (let ((_lp-tl1811618172_
                                              (##cdr _e1811418167_))
                                             (_lp-hd1811518170_
                                              (##car _e1811418167_)))
                                         (_loop1811318159_
                                          _lp-tl1811618172_
                                          (cons _lp-hd1811518170_
                                                _bind1811718164_))))
                                     (let ((_bind1811818175_
                                            (reverse _bind1811718164_)))
                                       (if (gx#stx-pair? _tl1810918151_)
                                           (let ((_e1811918178_
                                                  (gx#stx-e _tl1810918151_)))
                                             (let ((_tl1812118183_
                                                    (##cdr _e1811918178_))
                                                   (_hd1812018181_
                                                    (##car _e1811918178_)))
                                               (if (gx#stx-null?
                                                    _tl1812118183_)
                                                   (let ((_L18186_
                                                          _hd1812018181_)
                                                         (_L18187_
                                                          _bind1811818175_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1820718210_ _g1820818212_)
                                     (cons _g1820718210_ _g1820818212_))
                                   '()
                                   _L18187_)))
                 (___kont2838928390_ _L18186_ _L18187_)
                 (___kont2839328394_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2839328394_))))
                                           (___kont2839328394_)))))))
                       (_loop1811318159_ _target1811018154_ '())))))
              (if (gx#stx-pair? ___stx2838728388_)
                  (let ((_e1810418138_ (gx#stx-e ___stx2838728388_)))
                    (let ((_tl1810618143_ (##cdr _e1810418138_))
                          (_hd1810518141_ (##car _e1810418138_)))
                      (if (gx#stx-pair? _tl1810618143_)
                          (let ((_e1810718146_ (gx#stx-e _tl1810618143_)))
                            (let ((_tl1810918151_ (##cdr _e1810718146_))
                                  (_hd1810818149_ (##car _e1810718146_)))
                              (if (gx#stx-pair/null? _hd1810818149_)
                                  (let ((___splice2839128392_
                                         (gx#syntax-split-splice
                                          _hd1810818149_
                                          '0)))
                                    (let ((_tl1811218156_
                                           (##vector-ref
                                            ___splice2839128392_
                                            '1))
                                          (_target1811018154_
                                           (##vector-ref
                                            ___splice2839128392_
                                            '0)))
                                      (if (gx#stx-null? _tl1811218156_)
                                          (___match2841428415_
                                           _e1810418138_
                                           _hd1810518141_
                                           _tl1810618143_
                                           _e1810718146_
                                           _hd1810818149_
                                           _tl1810918151_
                                           ___splice2839128392_
                                           _target1811018154_
                                           _tl1811218156_)
                                          (___kont2839328394_))))
                                  (___kont2839328394_))))
                          (___kont2839328394_))))
                  (___kont2839328394_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx17236_)
      (letrec* ((_bind-e__2599625997_
                 (lambda (_id18076_ _expr18077_ _compile?18078_)
                   (cons (cons _id18076_ '())
                         (cons (if _compile?18078_
                                   (gxc#compile-e _expr18077_)
                                   _expr18077_)
                               '()))))
                (_bind-e__0__2599825999_
                 (lambda (_id18083_ _expr18084_)
                   (let ((_compile?18086_ '#t))
                     (_bind-e__2599625997_
                      _id18083_
                      _expr18084_
                      _compile?18086_))))
                (_bind-e17238_
                 (lambda _g28622_
                   (let ((_g28621_ (length _g28622_)))
                     (cond ((##fx= _g28621_ 2)
                            (apply _bind-e__0__2599825999_ _g28622_))
                           ((##fx= _g28621_ 3)
                            (apply _bind-e__2599625997_ _g28622_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28622_))))))
                (_compile-bindings17239_
                 (lambda (_rest17374_)
                   (let _lp17376_ ((_rest17378_ _rest17374_) (_bind17379_ '()))
                     (let* ((_rest1738017388_ _rest17378_)
                            (_else1738217396_
                             (lambda () (reverse _bind17379_)))
                            (_K1738418063_
                             (lambda (_rest17399_ _hd17400_)
                               (let* ((___stx2843728438_ _hd17400_)
                                      (_g1740517452_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2843728438_))))
                                 (let ((___kont2843928440_
                                        (lambda (_L17970_ _L17971_)
                                          (let* ((___stx2841728418_ _L17970_)
                                                 (_g1798618000_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2841728418_))))
                                            (let ((___kont2841928420_
                                                   (lambda (_L18048_)
                                                     (_lp17376_
                                                      _rest17399_
                                                      (cons (_bind-e__2599625997_
                                                             _L17971_
                                                             _L17970_
                                                             '#f)
                                                            _bind17379_))))
                                                  (___kont2842128422_
                                                   (lambda (_L18013_)
                                                     (let ((_g28623_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx17236_
                                                             _L17971_
                                                             _L18013_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28624_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28623_)
                            (##vector-length _g28623_)
                            1)))
                   (if (not (##fx= _g28624_ 3))
                       (error "Context expects 3 values" _g28624_)))
                 (let ((_ids18023_ (##vector-ref _g28623_ 0))
                       (_impls18024_ (##vector-ref _g28623_ 1))
                       (_clauses18025_ (##vector-ref _g28623_ 2)))
                   (let* ((_g28625_
                           (for-each gx#core-bind-runtime! _ids18023_))
                          (_xbind18028_
                           (map _bind-e17238_ _ids18023_ _impls18024_))
                          (_expr*18030_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses18025_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*18032_
                           (_bind-e__2599625997_ _L17971_ _expr*18030_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L17971_)
                        '" => "
                        (map gxc#identifier-symbol _ids18023_))
                       (_lp17376_
                        _rest17399_
                        (cons _bind*18032_
                              (foldl1 cons _bind17379_ _xbind18028_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2842828429_
                                                     (lambda (_e1798918040_
                                                              _hd1799018043_
                                                              _tl1799118045_)
                                                       (let ((_L18048_
                                                              _tl1799118045_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18048_)
                     (___kont2841928420_ _L18048_)
                     (___kont2842128422_ _tl1799118045_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2841728418_)
                                                    (let ((_e1798918040_
                                                           (gx#stx-e
                                                            ___stx2841728418_)))
                                                      (let ((_tl1799118045_
                                                             (##cdr _e1798918040_))
                                                            (_hd1799018043_
                                                             (##car _e1798918040_)))
                                                        (___match2842828429_
                                                         _e1798918040_
                                                         _hd1799018043_
                                                         _tl1799118045_)))
                                                    (_g1798618000_)))))))
                                       (___kont2844128442_
                                        (lambda (_L17798_ _L17799_)
                                          (let* ((_g1781317843_
                                                  (lambda (_g1781417840_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1781417840_)))
                                                 (_g1781217938_
                                                  (lambda (_g1781417846_)
                                                    (if (gx#stx-pair?
                                                         _g1781417846_)
                                                        (let ((_e1781817848_
                                                               (gx#stx-e
                                                                _g1781417846_)))
                                                          (let ((_hd1781917851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1781817848_))
                        (_tl1782017853_ (##cdr _e1781817848_)))
                    (if (gx#stx-pair? _tl1782017853_)
                        (let ((_e1782117856_ (gx#stx-e _tl1782017853_)))
                          (let ((_hd1782217859_ (##car _e1782117856_))
                                (_tl1782317861_ (##cdr _e1782117856_)))
                            (if (gx#stx-pair? _hd1782217859_)
                                (let ((_e1782417864_
                                       (gx#stx-e _hd1782217859_)))
                                  (let ((_hd1782517867_ (##car _e1782417864_))
                                        (_tl1782617869_ (##cdr _e1782417864_)))
                                    (if (gx#stx-pair? _hd1782517867_)
                                        (let ((_e1782717872_
                                               (gx#stx-e _hd1782517867_)))
                                          (let ((_hd1782817875_
                                                 (##car _e1782717872_))
                                                (_tl1782917877_
                                                 (##cdr _e1782717872_)))
                                            (if (gx#stx-pair? _hd1782817875_)
                                                (let ((_e1783017880_
                                                       (gx#stx-e
                                                        _hd1782817875_)))
                                                  (let ((_hd1783117883_
                                                         (##car _e1783017880_))
                                                        (_tl1783217885_
                                                         (##cdr _e1783017880_)))
                                                    (if (gx#stx-null?
                                                         _tl1783217885_)
                                                        (if (gx#stx-pair?
                                                             _tl1782917877_)
                                                            (let ((_e1783317888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1782917877_)))
                      (let ((_hd1783417891_ (##car _e1783317888_))
                            (_tl1783517893_ (##cdr _e1783317888_)))
                        (if (gx#stx-null? _tl1783517893_)
                            (if (gx#stx-null? _tl1782617869_)
                                (if (gx#stx-pair? _tl1782317861_)
                                    (let ((_e1783617896_
                                           (gx#stx-e _tl1782317861_)))
                                      (let ((_hd1783717899_
                                             (##car _e1783617896_))
                                            (_tl1783817901_
                                             (##cdr _e1783617896_)))
                                        (if (gx#stx-null? _tl1783817901_)
                                            ((lambda (_L17904_
                                                      _L17905_
                                                      _L17906_)
                                               (let* ((_lambda-id17930_
                                                       (make-symbol
                                                        (gx#stx-e _L17799_)
                                                        (gensym '__)))
                                                      (_lambda-id17932_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id17930_
                                                        (gx#stx-source
                                                         _stx17236_)))
                                                      (_g28626_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id17932_))
                                                      (_new-case-lambda-expr17935_
                                                       (gxc#apply-expression-subst
                                                        _L17904_
                                                        _L17906_
                                                        _lambda-id17932_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L17799_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id17932_))
                                                   (_lp17376_
                                                    (cons (_bind-e__2599625997_
                                                           _L17799_
                                                           _new-case-lambda-expr17935_
                                                           '#f)
                                                          _rest17399_)
                                                    (cons (_bind-e__0__2599825999_
                                                           _lambda-id17932_
                                                           _L17905_)
                                                          _bind17379_)))))
                                             _hd1783717899_
                                             _hd1783417891_
                                             _hd1783117883_)
                                            (_g1781317843_ _g1781417846_))))
                                    (_g1781317843_ _g1781417846_))
                                (_g1781317843_ _g1781417846_))
                            (_g1781317843_ _g1781417846_))))
                    (_g1781317843_ _g1781417846_))
                (_g1781317843_ _g1781417846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1781317843_
                                                 _g1781417846_))))
                                        (_g1781317843_ _g1781417846_))))
                                (_g1781317843_ _g1781417846_))))
                        (_g1781317843_ _g1781417846_))))
                (_g1781317843_ _g1781417846_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1781217938_ _L17798_))))
                                       (___kont2844328444_
                                        (lambda (_L17522_ _L17523_)
                                          (let* ((_g1753717590_
                                                  (lambda (_g1753817587_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1753817587_)))
                                                 (_g1753617766_
                                                  (lambda (_g1753817593_)
                                                    (if (gx#stx-pair?
                                                         _g1753817593_)
                                                        (let ((_e1754417595_
                                                               (gx#stx-e
                                                                _g1753817593_)))
                                                          (let ((_hd1754517598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1754417595_))
                        (_tl1754617600_ (##cdr _e1754417595_)))
                    (if (gx#stx-pair? _tl1754617600_)
                        (let ((_e1754717603_ (gx#stx-e _tl1754617600_)))
                          (let ((_hd1754817606_ (##car _e1754717603_))
                                (_tl1754917608_ (##cdr _e1754717603_)))
                            (if (gx#stx-pair? _hd1754817606_)
                                (let ((_e1755017611_
                                       (gx#stx-e _hd1754817606_)))
                                  (let ((_hd1755117614_ (##car _e1755017611_))
                                        (_tl1755217616_ (##cdr _e1755017611_)))
                                    (if (gx#stx-pair? _hd1755117614_)
                                        (let ((_e1755317619_
                                               (gx#stx-e _hd1755117614_)))
                                          (let ((_hd1755417622_
                                                 (##car _e1755317619_))
                                                (_tl1755517624_
                                                 (##cdr _e1755317619_)))
                                            (if (gx#stx-pair? _hd1755417622_)
                                                (let ((_e1755617627_
                                                       (gx#stx-e
                                                        _hd1755417622_)))
                                                  (let ((_hd1755717630_
                                                         (##car _e1755617627_))
                                                        (_tl1755817632_
                                                         (##cdr _e1755617627_)))
                                                    (if (gx#stx-null?
                                                         _tl1755817632_)
                                                        (if (gx#stx-pair?
                                                             _tl1755517624_)
                                                            (let ((_e1755917635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1755517624_)))
                      (let ((_hd1756017638_ (##car _e1755917635_))
                            (_tl1756117640_ (##cdr _e1755917635_)))
                        (if (gx#stx-pair? _hd1756017638_)
                            (let ((_e1756217643_ (gx#stx-e _hd1756017638_)))
                              (let ((_hd1756317646_ (##car _e1756217643_))
                                    (_tl1756417648_ (##cdr _e1756217643_)))
                                (if (gx#stx-pair? _tl1756417648_)
                                    (let ((_e1756517651_
                                           (gx#stx-e _tl1756417648_)))
                                      (let ((_hd1756617654_
                                             (##car _e1756517651_))
                                            (_tl1756717656_
                                             (##cdr _e1756517651_)))
                                        (if (gx#stx-pair? _hd1756617654_)
                                            (let ((_e1756817659_
                                                   (gx#stx-e _hd1756617654_)))
                                              (let ((_hd1756917662_
                                                     (##car _e1756817659_))
                                                    (_tl1757017664_
                                                     (##cdr _e1756817659_)))
                                                (if (gx#stx-pair?
                                                     _hd1756917662_)
                                                    (let ((_e1757117667_
                                                           (gx#stx-e
                                                            _hd1756917662_)))
                                                      (let ((_hd1757217670_
                                                             (##car _e1757117667_))
                                                            (_tl1757317672_
                                                             (##cdr _e1757117667_)))
                                                        (if (gx#stx-pair?
                                                             _hd1757217670_)
                                                            (let ((_e1757417675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1757217670_)))
                      (let ((_hd1757517678_ (##car _e1757417675_))
                            (_tl1757617680_ (##cdr _e1757417675_)))
                        (if (gx#stx-null? _tl1757617680_)
                            (if (gx#stx-pair? _tl1757317672_)
                                (let ((_e1757717683_
                                       (gx#stx-e _tl1757317672_)))
                                  (let ((_hd1757817686_ (##car _e1757717683_))
                                        (_tl1757917688_ (##cdr _e1757717683_)))
                                    (if (gx#stx-null? _tl1757917688_)
                                        (if (gx#stx-null? _tl1757017664_)
                                            (if (gx#stx-pair? _tl1756717656_)
                                                (let ((_e1758017691_
                                                       (gx#stx-e
                                                        _tl1756717656_)))
                                                  (let ((_hd1758117694_
                                                         (##car _e1758017691_))
                                                        (_tl1758217696_
                                                         (##cdr _e1758017691_)))
                                                    (if (gx#stx-null?
                                                         _tl1758217696_)
                                                        (if (gx#stx-null?
                                                             _tl1756117640_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1755217616_)
                        (if (gx#stx-pair? _tl1754917608_)
                            (let ((_e1758317699_ (gx#stx-e _tl1754917608_)))
                              (let ((_hd1758417702_ (##car _e1758317699_))
                                    (_tl1758517704_ (##cdr _e1758317699_)))
                                (if (gx#stx-null? _tl1758517704_)
                                    ((lambda (_L17707_
                                              _L17708_
                                              _L17709_
                                              _L17710_
                                              _L17711_)
                                       (let* ((_get-kws-id17751_
                                               (make-symbol
                                                (gx#stx-e _L17523_)
                                                (gensym '__)))
                                              (_get-kws-id17753_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id17751_
                                                (gx#stx-source _stx17236_)))
                                              (_main-id17755_
                                               (make-symbol
                                                (gx#stx-e _L17523_)
                                                (gensym '__)))
                                              (_main-id17757_
                                               (gx#core-quote-syntax__1
                                                _main-id17755_
                                                (gx#stx-source _stx17236_)))
                                              (_g28627_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id17753_))
                                              (_g28628_
                                               (gx#core-bind-runtime!__0
                                                _main-id17757_))
                                              (_new-kw-dispatch17761_
                                               (gxc#apply-expression-subst
                                                _L17707_
                                                _L17711_
                                                _get-kws-id17753_))
                                              (_new-get-kws17763_
                                               (gxc#apply-expression-subst
                                                _L17708_
                                                _L17710_
                                                _main-id17757_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L17523_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id17753_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id17757_))
                                           (_lp17376_
                                            (cons (_bind-e__2599625997_
                                                   _main-id17757_
                                                   _L17709_
                                                   '#f)
                                                  (cons (_bind-e__2599625997_
                                                         _get-kws-id17753_
                                                         _new-get-kws17763_
                                                         '#f)
                                                        (cons (_bind-e__2599625997_
                                                               _L17523_
                                                               _new-kw-dispatch17761_
                                                               '#f)
                                                              _rest17399_)))
                                            _bind17379_))))
                                     _hd1758417702_
                                     _hd1758117694_
                                     _hd1757817686_
                                     _hd1757517678_
                                     _hd1755717630_)
                                    (_g1753717590_ _g1753817593_))))
                            (_g1753717590_ _g1753817593_))
                        (_g1753717590_ _g1753817593_))
                    (_g1753717590_ _g1753817593_))
                (_g1753717590_ _g1753817593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1753717590_ _g1753817593_))
                                            (_g1753717590_ _g1753817593_))
                                        (_g1753717590_ _g1753817593_))))
                                (_g1753717590_ _g1753817593_))
                            (_g1753717590_ _g1753817593_))))
                    (_g1753717590_ _g1753817593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1753717590_
                                                     _g1753817593_))))
                                            (_g1753717590_ _g1753817593_))))
                                    (_g1753717590_ _g1753817593_))))
                            (_g1753717590_ _g1753817593_))))
                    (_g1753717590_ _g1753817593_))
                (_g1753717590_ _g1753817593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1753717590_
                                                 _g1753817593_))))
                                        (_g1753717590_ _g1753817593_))))
                                (_g1753717590_ _g1753817593_))))
                        (_g1753717590_ _g1753817593_))))
                (_g1753717590_ _g1753817593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1753617766_ _L17522_))))
                                       (___kont2844528446_
                                        (lambda (_L17473_ _L17474_)
                                          (_lp17376_
                                           _rest17399_
                                           (cons (cons _L17474_
                                                       (cons (gxc#compile-e
                                                              _L17473_)
                                                             '()))
                                                 _bind17379_)))))
                                   (let* ((___match2851228513_
                                           (lambda (_e1743117498_
                                                    _hd1743217501_
                                                    _tl1743317503_
                                                    _e1743417506_
                                                    _hd1743517509_
                                                    _tl1743617511_
                                                    _e1743717514_
                                                    _hd1743817517_
                                                    _tl1743917519_)
                                             (let ((_L17522_ _hd1743817517_)
                                                   (_L17523_ _hd1743517509_))
                                               (if (if (gx#identifier?
                                                        _L17523_)
                                                       (gxc#kw-lambda-expr?
                                                        _L17522_)
                                                       '#f)
                                                   (___kont2844328444_
                                                    _L17522_
                                                    _L17523_)
                                                   (___kont2844528446_
                                                    _hd1743817517_
                                                    _hd1743217501_)))))
                                          (___match2849028491_
                                           (lambda (_e1742017774_
                                                    _hd1742117777_
                                                    _tl1742217779_
                                                    _e1742317782_
                                                    _hd1742417785_
                                                    _tl1742517787_
                                                    _e1742617790_
                                                    _hd1742717793_
                                                    _tl1742817795_)
                                             (let ((_L17798_ _hd1742717793_)
                                                   (_L17799_ _hd1742417785_))
                                               (if (if (gx#identifier?
                                                        _L17799_)
                                                       (gxc#opt-lambda-expr?
                                                        _L17798_)
                                                       '#f)
                                                   (___kont2844128442_
                                                    _L17798_
                                                    _L17799_)
                                                   (___match2851228513_
                                                    _e1742017774_
                                                    _hd1742117777_
                                                    _tl1742217779_
                                                    _e1742317782_
                                                    _hd1742417785_
                                                    _tl1742517787_
                                                    _e1742617790_
                                                    _hd1742717793_
                                                    _tl1742817795_)))))
                                          (___match2846828469_
                                           (lambda (_e1740917946_
                                                    _hd1741017949_
                                                    _tl1741117951_
                                                    _e1741217954_
                                                    _hd1741317957_
                                                    _tl1741417959_
                                                    _e1741517962_
                                                    _hd1741617965_
                                                    _tl1741717967_)
                                             (let ((_L17970_ _hd1741617965_)
                                                   (_L17971_ _hd1741317957_))
                                               (if (if (gx#identifier?
                                                        _L17971_)
                                                       (gxc#case-lambda-expr?
                                                        _L17970_)
                                                       '#f)
                                                   (___kont2843928440_
                                                    _L17970_
                                                    _L17971_)
                                                   (___match2849028491_
                                                    _e1740917946_
                                                    _hd1741017949_
                                                    _tl1741117951_
                                                    _e1741217954_
                                                    _hd1741317957_
                                                    _tl1741417959_
                                                    _e1741517962_
                                                    _hd1741617965_
                                                    _tl1741717967_))))))
                                     (if (gx#stx-pair? ___stx2843728438_)
                                         (let ((_e1740917946_
                                                (gx#stx-e ___stx2843728438_)))
                                           (let ((_tl1741117951_
                                                  (##cdr _e1740917946_))
                                                 (_hd1741017949_
                                                  (##car _e1740917946_)))
                                             (if (gx#stx-pair? _hd1741017949_)
                                                 (let ((_e1741217954_
                                                        (gx#stx-e
                                                         _hd1741017949_)))
                                                   (let ((_tl1741417959_
                                                          (##cdr _e1741217954_))
                                                         (_hd1741317957_
                                                          (##car _e1741217954_)))
                                                     (if (gx#stx-null?
                                                          _tl1741417959_)
                                                         (if (gx#stx-pair?
                                                              _tl1741117951_)
                                                             (let ((_e1741517962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1741117951_)))
                       (let ((_tl1741717967_ (##cdr _e1741517962_))
                             (_hd1741617965_ (##car _e1741517962_)))
                         (if (gx#stx-null? _tl1741717967_)
                             (___match2846828469_
                              _e1740917946_
                              _hd1741017949_
                              _tl1741117951_
                              _e1741217954_
                              _hd1741317957_
                              _tl1741417959_
                              _e1741517962_
                              _hd1741617965_
                              _tl1741717967_)
                             (_g1740517452_))))
                     (_g1740517452_))
                 (if (gx#stx-pair? _tl1741117951_)
                     (let ((_e1744517465_ (gx#stx-e _tl1741117951_)))
                       (let ((_tl1744717470_ (##cdr _e1744517465_))
                             (_hd1744617468_ (##car _e1744517465_)))
                         (if (gx#stx-null? _tl1744717470_)
                             (___kont2844528446_ _hd1744617468_ _hd1741017949_)
                             (_g1740517452_))))
                     (_g1740517452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1741117951_)
                                                     (let ((_e1744517465_
                                                            (gx#stx-e
                                                             _tl1741117951_)))
                                                       (let ((_tl1744717470_
                                                              (##cdr _e1744517465_))
                                                             (_hd1744617468_
                                                              (##car _e1744517465_)))
                                                         (if (gx#stx-null?
                                                              _tl1744717470_)
                                                             (___kont2844528446_
                                                              _hd1744617468_
                                                              _hd1741017949_)
                                                             (_g1740517452_))))
                                                     (_g1740517452_)))))
                                         (_g1740517452_))))))))
                       (if (##pair? _rest1738017388_)
                           (let ((_hd1738518066_ (##car _rest1738017388_))
                                 (_tl1738618068_ (##cdr _rest1738017388_)))
                             (let* ((_hd18071_ _hd1738518066_)
                                    (_rest18073_ _tl1738618068_))
                               (_K1738418063_ _rest18073_ _hd18071_)))
                           (_else1738217396_)))))))
        (let* ((___stx2852928530_ _stx17236_)
               (_g1724217269_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2852928530_))))
          (let ((___kont2853128532_
                 (lambda (_L17329_ _L17330_ _L17331_)
                   (call-with-parameters
                    (lambda ()
                      (let ((_hd17368_
                             (_compile-bindings17239_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1736017363_ _g1736117365_)
                                          (cons _g1736017363_ _g1736117365_))
                                        '()
                                        _L17330_))))
                            (_body17369_ (gxc#compile-e _L17329_)))
                        (gxc#xform-wrap-source
                         (cons _L17331_
                               (cons _hd17368_ (cons _body17369_ '())))
                         _stx17236_)))
                    gx#current-expander-context
                    (let ((__obj28594 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28594)
                        __obj28594)))))
                (___kont2853528536_
                 (lambda () (gxc#xform-let-values% _stx17236_))))
            (let ((___match2855628557_
                   (lambda (_e1724717281_
                            _hd1724817284_
                            _tl1724917286_
                            _e1725017289_
                            _hd1725117292_
                            _tl1725217294_
                            ___splice2853328534_
                            _target1725317297_
                            _tl1725517299_)
                     (letrec ((_loop1725617302_
                               (lambda (_hd1725417305_ _bind1726017307_)
                                 (if (gx#stx-pair? _hd1725417305_)
                                     (let ((_e1725717310_
                                            (gx#stx-e _hd1725417305_)))
                                       (let ((_lp-tl1725917315_
                                              (##cdr _e1725717310_))
                                             (_lp-hd1725817313_
                                              (##car _e1725717310_)))
                                         (_loop1725617302_
                                          _lp-tl1725917315_
                                          (cons _lp-hd1725817313_
                                                _bind1726017307_))))
                                     (let ((_bind1726117318_
                                            (reverse _bind1726017307_)))
                                       (if (gx#stx-pair? _tl1725217294_)
                                           (let ((_e1726217321_
                                                  (gx#stx-e _tl1725217294_)))
                                             (let ((_tl1726417326_
                                                    (##cdr _e1726217321_))
                                                   (_hd1726317324_
                                                    (##car _e1726217321_)))
                                               (if (gx#stx-null?
                                                    _tl1726417326_)
                                                   (let ((_L17329_
                                                          _hd1726317324_)
                                                         (_L17330_
                                                          _bind1726117318_)
                                                         (_L17331_
                                                          _hd1724817284_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1735217355_ _g1735317357_)
                                     (cons _g1735217355_ _g1735317357_))
                                   '()
                                   _L17330_)))
                 (___kont2853128532_ _L17329_ _L17330_ _L17331_)
                 (___kont2853528536_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2853528536_))))
                                           (___kont2853528536_)))))))
                       (_loop1725617302_ _target1725317297_ '())))))
              (if (gx#stx-pair? ___stx2852928530_)
                  (let ((_e1724717281_ (gx#stx-e ___stx2852928530_)))
                    (let ((_tl1724917286_ (##cdr _e1724717281_))
                          (_hd1724817284_ (##car _e1724717281_)))
                      (if (gx#stx-pair? _tl1724917286_)
                          (let ((_e1725017289_ (gx#stx-e _tl1724917286_)))
                            (let ((_tl1725217294_ (##cdr _e1725017289_))
                                  (_hd1725117292_ (##car _e1725017289_)))
                              (if (gx#stx-pair/null? _hd1725117292_)
                                  (let ((___splice2853328534_
                                         (gx#syntax-split-splice
                                          _hd1725117292_
                                          '0)))
                                    (let ((_tl1725517299_
                                           (##vector-ref
                                            ___splice2853328534_
                                            '1))
                                          (_target1725317297_
                                           (##vector-ref
                                            ___splice2853328534_
                                            '0)))
                                      (if (gx#stx-null? _tl1725517299_)
                                          (___match2855628557_
                                           _e1724717281_
                                           _hd1724817284_
                                           _tl1724917286_
                                           _e1725017289_
                                           _hd1725117292_
                                           _tl1725217294_
                                           ___splice2853328534_
                                           _target1725317297_
                                           _tl1725517299_)
                                          (___kont2853528536_))))
                                  (___kont2853528536_))))
                          (___kont2853528536_))))
                  (___kont2853528536_))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind17154_)
      (let* ((___stx2855928560_ _bind17154_)
             (_g1715717174_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2855928560_))))
        (let ((___kont2856128562_
               (lambda (_L17210_ _L17211_)
                 (if (gx#identifier? _L17211_)
                     (let ((_$e17227_ (gxc#case-lambda-expr? _L17210_)))
                       (if _$e17227_
                           _$e17227_
                           (let ((_$e17230_ (gxc#opt-lambda-expr? _L17210_)))
                             (if _$e17230_
                                 _$e17230_
                                 (gxc#kw-lambda-expr? _L17210_)))))
                     '#f)))
              (___kont2856328564_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2855928560_)
              (let ((_e1716117186_ (gx#stx-e ___stx2855928560_)))
                (let ((_tl1716317191_ (##cdr _e1716117186_))
                      (_hd1716217189_ (##car _e1716117186_)))
                  (if (gx#stx-pair? _hd1716217189_)
                      (let ((_e1716417194_ (gx#stx-e _hd1716217189_)))
                        (let ((_tl1716617199_ (##cdr _e1716417194_))
                              (_hd1716517197_ (##car _e1716417194_)))
                          (if (gx#stx-null? _tl1716617199_)
                              (if (gx#stx-pair? _tl1716317191_)
                                  (let ((_e1716717202_
                                         (gx#stx-e _tl1716317191_)))
                                    (let ((_tl1716917207_
                                           (##cdr _e1716717202_))
                                          (_hd1716817205_
                                           (##car _e1716717202_)))
                                      (if (gx#stx-null? _tl1716917207_)
                                          (___kont2856128562_
                                           _hd1716817205_
                                           _hd1716517197_)
                                          (___kont2856328564_))))
                                  (___kont2856328564_))
                              (___kont2856328564_))))
                      (___kont2856328564_))))
              (___kont2856328564_)))))))
