(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl25929_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25929_ (force gxc#&void))
           (table-set! _tbl25929_ '%#begin gxc#collect-begin%)
           (table-set! _tbl25929_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl25929_ '%#module gxc#collect-module%)
           (table-set!
            _tbl25929_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl25929_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl25929_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl25929_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl25929_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl25929_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl25929_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl25929_ '%#call gxc#collect-type-call%)
           (table-set! _tbl25929_ '%#if gxc#collect-operands)
           (table-set! _tbl25929_ '%#set! gxc#collect-body-setq%)
           _tbl25929_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx25922_ . _args25924_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25922_ _args25924_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl25919_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25919_ (force gxc#&false))
           (table-set! _tbl25919_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl25919_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl25919_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl25919_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl25919_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl25919_ '%#ref gxc#basic-expression-type-ref%)
           _tbl25919_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx25912_ . _args25914_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25912_ _args25914_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl25909_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25909_ (force gxc#&basic-xform))
           (table-set!
            _tbl25909_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl25909_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl25909_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl25909_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl25909_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx25902_ . _args25904_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25902_ _args25904_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx25758_)
      (let* ((___stx2594225943_ _stx25758_)
             (_g2576125792_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2594225943_))))
        (let ((___kont2594425945_
               (lambda (_L25874_ _L25875_)
                 (let ((_sym25891_ (gxc#identifier-symbol _L25875_)))
                   (begin
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym25891_
                          '#f)
                         (gxc#verbose
                          '"skipping type declaration for mutable binding "
                          _sym25891_)
                         (let ((_type2589225894_
                                (gxc#apply-basic-expression-type _L25874_)))
                           (if _type2589225894_
                               (let ((_type25897_ _type2589225894_))
                                 (gxc#optimizer-declare-type!__0
                                  _sym25891_
                                  _type25897_))
                               '#f)))
                     (gxc#compile-e _L25874_)))))
              (___kont2594625947_
               (lambda (_L25821_ _L25822_) (gxc#compile-e _L25821_))))
          (let ((___match2597525976_
                 (lambda (_e2576525842_
                          _hd2576625845_
                          _tl2576725847_
                          _e2576825850_
                          _hd2576925853_
                          _tl2577025855_
                          _e2577125858_
                          _hd2577225861_
                          _tl2577325863_
                          _e2577425866_
                          _hd2577525869_
                          _tl2577625871_)
                   (let ((_L25874_ _hd2577525869_) (_L25875_ _hd2577225861_))
                     (if (gx#identifier? _L25875_)
                         (___kont2594425945_ _L25874_ _L25875_)
                         (___kont2594625947_
                          _hd2577525869_
                          _hd2576925853_))))))
            (if (gx#stx-pair? ___stx2594225943_)
                (let ((_e2576525842_ (gx#stx-e ___stx2594225943_)))
                  (let ((_tl2576725847_ (##cdr _e2576525842_))
                        (_hd2576625845_ (##car _e2576525842_)))
                    (if (gx#stx-pair? _tl2576725847_)
                        (let ((_e2576825850_ (gx#stx-e _tl2576725847_)))
                          (let ((_tl2577025855_ (##cdr _e2576825850_))
                                (_hd2576925853_ (##car _e2576825850_)))
                            (if (gx#stx-pair? _hd2576925853_)
                                (let ((_e2577125858_
                                       (gx#stx-e _hd2576925853_)))
                                  (let ((_tl2577325863_ (##cdr _e2577125858_))
                                        (_hd2577225861_ (##car _e2577125858_)))
                                    (if (gx#stx-null? _tl2577325863_)
                                        (if (gx#stx-pair? _tl2577025855_)
                                            (let ((_e2577425866_
                                                   (gx#stx-e _tl2577025855_)))
                                              (let ((_tl2577625871_
                                                     (##cdr _e2577425866_))
                                                    (_hd2577525869_
                                                     (##car _e2577425866_)))
                                                (if (gx#stx-null?
                                                     _tl2577625871_)
                                                    (___match2597525976_
                                                     _e2576525842_
                                                     _hd2576625845_
                                                     _tl2576725847_
                                                     _e2576825850_
                                                     _hd2576925853_
                                                     _tl2577025855_
                                                     _e2577125858_
                                                     _hd2577225861_
                                                     _tl2577325863_
                                                     _e2577425866_
                                                     _hd2577525869_
                                                     _tl2577625871_)
                                                    (_g2576125792_))))
                                            (_g2576125792_))
                                        (if (gx#stx-pair? _tl2577025855_)
                                            (let ((_e2578525813_
                                                   (gx#stx-e _tl2577025855_)))
                                              (let ((_tl2578725818_
                                                     (##cdr _e2578525813_))
                                                    (_hd2578625816_
                                                     (##car _e2578525813_)))
                                                (if (gx#stx-null?
                                                     _tl2578725818_)
                                                    (___kont2594625947_
                                                     _hd2578625816_
                                                     _hd2576925853_)
                                                    (_g2576125792_))))
                                            (_g2576125792_)))))
                                (if (gx#stx-pair? _tl2577025855_)
                                    (let ((_e2578525813_
                                           (gx#stx-e _tl2577025855_)))
                                      (let ((_tl2578725818_
                                             (##cdr _e2578525813_))
                                            (_hd2578625816_
                                             (##car _e2578525813_)))
                                        (if (gx#stx-null? _tl2578725818_)
                                            (___kont2594625947_
                                             _hd2578625816_
                                             _hd2576925853_)
                                            (_g2576125792_))))
                                    (_g2576125792_)))))
                        (_g2576125792_))))
                (_g2576125792_)))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx25543_)
      (letrec ((_collect-e25545_
                (lambda (_hd25702_ _expr25703_)
                  (let* ((___stx2599825999_ _hd25702_)
                         (_g2570625716_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx2599825999_))))
                    (let ((___kont2600026001_
                           (lambda (_L25736_)
                             (let ((_sym25747_
                                    (gxc#identifier-symbol _L25736_)))
                               (if (table-ref
                                    (gxc#current-compile-mutators)
                                    _sym25747_
                                    '#f)
                                   (gxc#verbose
                                    '"skipping type declaration for mutable binding "
                                    _sym25747_)
                                   (let ((_type2574825750_
                                          (gxc#apply-basic-expression-type
                                           _expr25703_)))
                                     (if _type2574825750_
                                         (let ((_type25753_ _type2574825750_))
                                           (gxc#optimizer-declare-type!__%
                                            _sym25747_
                                            _type25753_
                                            '#t))
                                         '#f))))))
                          (___kont2600226003_ (lambda () '#!void)))
                      (let ((___match2601126012_
                             (lambda (_e2570925728_
                                      _hd2571025731_
                                      _tl2571125733_)
                               (let ((_L25736_ _hd2571025731_))
                                 (if (gx#identifier? _L25736_)
                                     (___kont2600026001_ _L25736_)
                                     (___kont2600226003_))))))
                        (if (gx#stx-pair? ___stx2599825999_)
                            (let ((_e2570925728_ (gx#stx-e ___stx2599825999_)))
                              (let ((_tl2571125733_ (##cdr _e2570925728_))
                                    (_hd2571025731_ (##car _e2570925728_)))
                                (if (gx#stx-null? _tl2571125733_)
                                    (___match2601126012_
                                     _e2570925728_
                                     _hd2571025731_
                                     _tl2571125733_)
                                    (___kont2600226003_))))
                            (___kont2600226003_))))))))
        (let* ((_g2554725582_
                (lambda (_g2554825579_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2554825579_)))
               (_g2554625699_
                (lambda (_g2554825585_)
                  (if (gx#stx-pair? _g2554825585_)
                      (let ((_e2555225587_ (gx#stx-e _g2554825585_)))
                        (let ((_hd2555325590_ (##car _e2555225587_))
                              (_tl2555425592_ (##cdr _e2555225587_)))
                          (if (gx#stx-pair? _tl2555425592_)
                              (let ((_e2555525595_ (gx#stx-e _tl2555425592_)))
                                (let ((_hd2555625598_ (##car _e2555525595_))
                                      (_tl2555725600_ (##cdr _e2555525595_)))
                                  (if (gx#stx-pair/null? _hd2555625598_)
                                      (let ((_g28527_
                                             (gx#syntax-split-splice
                                              _hd2555625598_
                                              '0)))
                                        (begin
                                          (let ((_g28528_
                                                 (if (##values? _g28527_)
                                                     (##vector-length _g28527_)
                                                     1)))
                                            (if (not (##fx= _g28528_ 2))
                                                (error "Context expects 2 values"
                                                       _g28528_)))
                                          (let ((_target2555825603_
                                                 (##vector-ref _g28527_ 0))
                                                (_tl2556025605_
                                                 (##vector-ref _g28527_ 1)))
                                            (if (gx#stx-null? _tl2556025605_)
                                                (letrec ((_loop2556125608_
                                                          (lambda (_hd2555925611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2556525613_
                           _hd2556625615_)
                    (if (gx#stx-pair? _hd2555925611_)
                        (let ((_e2556225618_ (gx#stx-e _hd2555925611_)))
                          (let ((_lp-hd2556325621_ (##car _e2556225618_))
                                (_lp-tl2556425623_ (##cdr _e2556225618_)))
                            (if (gx#stx-pair? _lp-hd2556325621_)
                                (let ((_e2556925626_
                                       (gx#stx-e _lp-hd2556325621_)))
                                  (let ((_hd2557025629_ (##car _e2556925626_))
                                        (_tl2557125631_ (##cdr _e2556925626_)))
                                    (if (gx#stx-pair? _tl2557125631_)
                                        (let ((_e2557225634_
                                               (gx#stx-e _tl2557125631_)))
                                          (let ((_hd2557325637_
                                                 (##car _e2557225634_))
                                                (_tl2557425639_
                                                 (##cdr _e2557225634_)))
                                            (if (gx#stx-null? _tl2557425639_)
                                                (_loop2556125608_
                                                 _lp-tl2556425623_
                                                 (cons _hd2557325637_
                                                       _expr2556525613_)
                                                 (cons _hd2557025629_
                                                       _hd2556625615_))
                                                (_g2554725582_
                                                 _g2554825585_))))
                                        (_g2554725582_ _g2554825585_))))
                                (_g2554725582_ _g2554825585_))))
                        (let ((_expr2556725642_ (reverse _expr2556525613_))
                              (_hd2556825644_ (reverse _hd2556625615_)))
                          (if (gx#stx-pair? _tl2555725600_)
                              (let ((_e2557525647_ (gx#stx-e _tl2555725600_)))
                                (let ((_hd2557625650_ (##car _e2557525647_))
                                      (_tl2557725652_ (##cdr _e2557525647_)))
                                  (if (gx#stx-null? _tl2557725652_)
                                      ((lambda (_L25655_ _L25656_ _L25657_)
                                         (begin
                                           (for-each
                                            _collect-e25545_
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2567725680_
                                                               _g2567825682_)
                                                        (cons _g2567725680_
                                                              _g2567825682_))
                                                      '()
                                                      _L25657_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2568425687_
                                                               _g2568525689_)
                                                        (cons _g2568425687_
                                                              _g2568525689_))
                                                      '()
                                                      _L25656_)))
                                           (for-each
                                            gxc#compile-e
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2569125694_
                                                               _g2569225696_)
                                                        (cons _g2569125694_
                                                              _g2569225696_))
                                                      '()
                                                      _L25656_)))
                                           (gxc#compile-e _L25655_)))
                                       _hd2557625650_
                                       _expr2556725642_
                                       _hd2556825644_)
                                      (_g2554725582_ _g2554825585_))))
                              (_g2554725582_ _g2554825585_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2556125608_
                                                   _target2555825603_
                                                   '()
                                                   '()))
                                                (_g2554725582_
                                                 _g2554825585_)))))
                                      (_g2554725582_ _g2554825585_))))
                              (_g2554725582_ _g2554825585_))))
                      (_g2554725582_ _g2554825585_)))))
          (_g2554625699_ _stx25543_)))))
  (define gxc#collect-type-call%
    (lambda (_stx25097_)
      (let* ((___stx2601426015_ _stx25097_)
             (_g2510125203_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2601426015_))))
        (let ((___kont2601626017_
               (lambda (_L25493_ _L25494_ _L25495_ _L25496_ _L25497_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25496_)
                  (gx#stx-e _L25495_)
                  (gxc#identifier-symbol _L25494_)
                  (gx#stx-e _L25493_))))
              (___kont2601826019_
               (lambda (_L25319_ _L25320_ _L25321_ _L25322_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25321_)
                  (gx#stx-e _L25320_)
                  (gxc#identifier-symbol _L25319_)
                  '#f)))
              (___kont2602026021_ (lambda () '#!void)))
          (let ((___match2614926150_
                 (lambda (_e2510825365_
                          _hd2510925368_
                          _tl2511025370_
                          _e2511125373_
                          _hd2511225376_
                          _tl2511325378_
                          _e2511425381_
                          _hd2511525384_
                          _tl2511625386_
                          _e2511725389_
                          _hd2511825392_
                          _tl2511925394_
                          _e2512025397_
                          _hd2512125400_
                          _tl2512225402_
                          _e2512325405_
                          _hd2512425408_
                          _tl2512525410_
                          _e2512625413_
                          _hd2512725416_
                          _tl2512825418_
                          _e2512925421_
                          _hd2513025424_
                          _tl2513125426_
                          _e2513225429_
                          _hd2513325432_
                          _tl2513425434_
                          _e2513525437_
                          _hd2513625440_
                          _tl2513725442_
                          _e2513825445_
                          _hd2513925448_
                          _tl2514025450_
                          _e2514125453_
                          _hd2514225456_
                          _tl2514325458_
                          _e2514425461_
                          _hd2514525464_
                          _tl2514625466_
                          _e2514725469_
                          _hd2514825472_
                          _tl2514925474_
                          _e2515025477_
                          _hd2515125480_
                          _tl2515225482_
                          _e2515325485_
                          _hd2515425488_
                          _tl2515525490_)
                   (let ((_L25493_ _hd2515425488_)
                         (_L25494_ _hd2514525464_)
                         (_L25495_ _hd2513625440_)
                         (_L25496_ _hd2512725416_)
                         (_L25497_ _hd2511825392_))
                     (if (gxc#runtime-identifier=? _L25497_ 'bind-method!)
                         (___kont2601626017_
                          _L25493_
                          _L25494_
                          _L25495_
                          _L25496_
                          _L25497_)
                         (___kont2602026021_))))))
            (if (gx#stx-pair? ___stx2601426015_)
                (let ((_e2510825365_ (gx#stx-e ___stx2601426015_)))
                  (let ((_tl2511025370_ (##cdr _e2510825365_))
                        (_hd2510925368_ (##car _e2510825365_)))
                    (if (gx#stx-pair? _tl2511025370_)
                        (let ((_e2511125373_ (gx#stx-e _tl2511025370_)))
                          (let ((_tl2511325378_ (##cdr _e2511125373_))
                                (_hd2511225376_ (##car _e2511125373_)))
                            (if (gx#stx-pair? _hd2511225376_)
                                (let ((_e2511425381_
                                       (gx#stx-e _hd2511225376_)))
                                  (let ((_tl2511625386_ (##cdr _e2511425381_))
                                        (_hd2511525384_ (##car _e2511425381_)))
                                    (if (gx#identifier? _hd2511525384_)
                                        (if (gx#stx-eq? '%#ref _hd2511525384_)
                                            (if (gx#stx-pair? _tl2511625386_)
                                                (let ((_e2511725389_
                                                       (gx#stx-e
                                                        _tl2511625386_)))
                                                  (let ((_tl2511925394_
                                                         (##cdr _e2511725389_))
                                                        (_hd2511825392_
                                                         (##car _e2511725389_)))
                                                    (if (gx#stx-null?
                                                         _tl2511925394_)
                                                        (if (gx#stx-pair?
                                                             _tl2511325378_)
                                                            (let ((_e2512025397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2511325378_)))
                      (let ((_tl2512225402_ (##cdr _e2512025397_))
                            (_hd2512125400_ (##car _e2512025397_)))
                        (if (gx#stx-pair? _hd2512125400_)
                            (let ((_e2512325405_ (gx#stx-e _hd2512125400_)))
                              (let ((_tl2512525410_ (##cdr _e2512325405_))
                                    (_hd2512425408_ (##car _e2512325405_)))
                                (if (gx#identifier? _hd2512425408_)
                                    (if (gx#stx-eq? '%#ref _hd2512425408_)
                                        (if (gx#stx-pair? _tl2512525410_)
                                            (let ((_e2512625413_
                                                   (gx#stx-e _tl2512525410_)))
                                              (let ((_tl2512825418_
                                                     (##cdr _e2512625413_))
                                                    (_hd2512725416_
                                                     (##car _e2512625413_)))
                                                (if (gx#stx-null?
                                                     _tl2512825418_)
                                                    (if (gx#stx-pair?
                                                         _tl2512225402_)
                                                        (let ((_e2512925421_
                                                               (gx#stx-e
                                                                _tl2512225402_)))
                                                          (let ((_tl2513125426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2512925421_))
                        (_hd2513025424_ (##car _e2512925421_)))
                    (if (gx#stx-pair? _hd2513025424_)
                        (let ((_e2513225429_ (gx#stx-e _hd2513025424_)))
                          (let ((_tl2513425434_ (##cdr _e2513225429_))
                                (_hd2513325432_ (##car _e2513225429_)))
                            (if (gx#identifier? _hd2513325432_)
                                (if (gx#stx-eq? '%#quote _hd2513325432_)
                                    (if (gx#stx-pair? _tl2513425434_)
                                        (let ((_e2513525437_
                                               (gx#stx-e _tl2513425434_)))
                                          (let ((_tl2513725442_
                                                 (##cdr _e2513525437_))
                                                (_hd2513625440_
                                                 (##car _e2513525437_)))
                                            (if (gx#stx-null? _tl2513725442_)
                                                (if (gx#stx-pair?
                                                     _tl2513125426_)
                                                    (let ((_e2513825445_
                                                           (gx#stx-e
                                                            _tl2513125426_)))
                                                      (let ((_tl2514025450_
                                                             (##cdr _e2513825445_))
                                                            (_hd2513925448_
                                                             (##car _e2513825445_)))
                                                        (if (gx#stx-pair?
                                                             _hd2513925448_)
                                                            (let ((_e2514125453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2513925448_)))
                      (let ((_tl2514325458_ (##cdr _e2514125453_))
                            (_hd2514225456_ (##car _e2514125453_)))
                        (if (gx#identifier? _hd2514225456_)
                            (if (gx#stx-eq? '%#ref _hd2514225456_)
                                (if (gx#stx-pair? _tl2514325458_)
                                    (let ((_e2514425461_
                                           (gx#stx-e _tl2514325458_)))
                                      (let ((_tl2514625466_
                                             (##cdr _e2514425461_))
                                            (_hd2514525464_
                                             (##car _e2514425461_)))
                                        (if (gx#stx-null? _tl2514625466_)
                                            (if (gx#stx-pair? _tl2514025450_)
                                                (let ((_e2514725469_
                                                       (gx#stx-e
                                                        _tl2514025450_)))
                                                  (let ((_tl2514925474_
                                                         (##cdr _e2514725469_))
                                                        (_hd2514825472_
                                                         (##car _e2514725469_)))
                                                    (if (gx#stx-pair?
                                                         _hd2514825472_)
                                                        (let ((_e2515025477_
                                                               (gx#stx-e
                                                                _hd2514825472_)))
                                                          (let ((_tl2515225482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2515025477_))
                        (_hd2515125480_ (##car _e2515025477_)))
                    (if (gx#identifier? _hd2515125480_)
                        (if (gx#stx-eq? '%#quote _hd2515125480_)
                            (if (gx#stx-pair? _tl2515225482_)
                                (let ((_e2515325485_
                                       (gx#stx-e _tl2515225482_)))
                                  (let ((_tl2515525490_ (##cdr _e2515325485_))
                                        (_hd2515425488_ (##car _e2515325485_)))
                                    (if (gx#stx-null? _tl2515525490_)
                                        (if (gx#stx-null? _tl2514925474_)
                                            (___match2614926150_
                                             _e2510825365_
                                             _hd2510925368_
                                             _tl2511025370_
                                             _e2511125373_
                                             _hd2511225376_
                                             _tl2511325378_
                                             _e2511425381_
                                             _hd2511525384_
                                             _tl2511625386_
                                             _e2511725389_
                                             _hd2511825392_
                                             _tl2511925394_
                                             _e2512025397_
                                             _hd2512125400_
                                             _tl2512225402_
                                             _e2512325405_
                                             _hd2512425408_
                                             _tl2512525410_
                                             _e2512625413_
                                             _hd2512725416_
                                             _tl2512825418_
                                             _e2512925421_
                                             _hd2513025424_
                                             _tl2513125426_
                                             _e2513225429_
                                             _hd2513325432_
                                             _tl2513425434_
                                             _e2513525437_
                                             _hd2513625440_
                                             _tl2513725442_
                                             _e2513825445_
                                             _hd2513925448_
                                             _tl2514025450_
                                             _e2514125453_
                                             _hd2514225456_
                                             _tl2514325458_
                                             _e2514425461_
                                             _hd2514525464_
                                             _tl2514625466_
                                             _e2514725469_
                                             _hd2514825472_
                                             _tl2514925474_
                                             _e2515025477_
                                             _hd2515125480_
                                             _tl2515225482_
                                             _e2515325485_
                                             _hd2515425488_
                                             _tl2515525490_)
                                            (___kont2602026021_))
                                        (___kont2602026021_))))
                                (___kont2602026021_))
                            (___kont2602026021_))
                        (___kont2602026021_))))
                (___kont2602026021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl2514025450_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L25319_
                                                               _hd2514525464_)
                                                              (_L25320_
                                                               _hd2513625440_)
                                                              (_L25321_
                                                               _hd2512725416_)
                                                              (_L25322_
                                                               _hd2511825392_))
                                                          (___kont2601826019_
                                                           _L25319_
                                                           _L25320_
                                                           _L25321_
                                                           _L25322_))
                                                        (___kont2602026021_))
                                                    (___kont2602026021_)))
                                            (___kont2602026021_))))
                                    (___kont2602026021_))
                                (___kont2602026021_))
                            (___kont2602026021_))))
                    (___kont2602026021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2602026021_))
                                                (___kont2602026021_))))
                                        (___kont2602026021_))
                                    (___kont2602026021_))
                                (___kont2602026021_))))
                        (___kont2602026021_))))
                (___kont2602026021_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2602026021_))))
                                            (___kont2602026021_))
                                        (___kont2602026021_))
                                    (___kont2602026021_))))
                            (___kont2602026021_))))
                    (___kont2602026021_))
                (___kont2602026021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2602026021_))
                                            (___kont2602026021_))
                                        (___kont2602026021_))))
                                (___kont2602026021_))))
                        (___kont2602026021_))))
                (___kont2602026021_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx25037_)
      (let* ((___stx2625826259_ _stx25037_)
             (_g2504025053_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2625826259_))))
        (let ((___kont2626026261_ (lambda (_L25081_) (gxc#compile-e _L25081_)))
              (___kont2626226263_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2625826259_)
              (let ((_e2504325065_ (gx#stx-e ___stx2625826259_)))
                (let ((_tl2504525070_ (##cdr _e2504325065_))
                      (_hd2504425068_ (##car _e2504325065_)))
                  (if (gx#stx-pair? _tl2504525070_)
                      (let ((_e2504625073_ (gx#stx-e _tl2504525070_)))
                        (let ((_tl2504825078_ (##cdr _e2504625073_))
                              (_hd2504725076_ (##car _e2504625073_)))
                          (if (gx#stx-null? _tl2504825078_)
                              (___kont2626026261_ _hd2504725076_)
                              (___kont2626226263_))))
                      (___kont2626226263_))))
              (___kont2626226263_))))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx24970_)
      (let* ((_g2497224989_
              (lambda (_g2497324986_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2497324986_)))
             (_g2497125034_
              (lambda (_g2497324992_)
                (if (gx#stx-pair? _g2497324992_)
                    (let ((_e2497624994_ (gx#stx-e _g2497324992_)))
                      (let ((_hd2497724997_ (##car _e2497624994_))
                            (_tl2497824999_ (##cdr _e2497624994_)))
                        (if (gx#stx-pair? _tl2497824999_)
                            (let ((_e2497925002_ (gx#stx-e _tl2497824999_)))
                              (let ((_hd2498025005_ (##car _e2497925002_))
                                    (_tl2498125007_ (##cdr _e2497925002_)))
                                (if (gx#stx-pair? _tl2498125007_)
                                    (let ((_e2498225010_
                                           (gx#stx-e _tl2498125007_)))
                                      (let ((_hd2498325013_
                                             (##car _e2498225010_))
                                            (_tl2498425015_
                                             (##cdr _e2498225010_)))
                                        (if (gx#stx-null? _tl2498425015_)
                                            ((lambda (_L25018_ _L25019_)
                                               (gxc#compile-e _L25018_))
                                             _hd2498325013_
                                             _hd2498025005_)
                                            (_g2497224989_ _g2497324992_))))
                                    (_g2497224989_ _g2497324992_))))
                            (_g2497224989_ _g2497324992_))))
                    (_g2497224989_ _g2497324992_)))))
        (_g2497125034_ _stx24970_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx23607_)
      (let* ((___stx2628026281_ _stx23607_)
             (_g2361423913_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2628026281_))))
        (let ((___kont2628226283_
               (lambda (_L24915_ _L24916_ _L24917_ _L24918_ _L24919_)
                 (let* ((_type-t24962_ (gxc#identifier-symbol _L24916_))
                        (_type24964_
                         (gxc#optimizer-resolve-type _type-t24962_)))
                   (if (##structure-instance-of?
                        _type24964_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t24962_)
                       '#f))))
              (___kont2628426285_
               (lambda (_L24701_ _L24702_ _L24703_ _L24704_)
                 (let* ((_type-t24777_ (gxc#identifier-symbol _L24702_))
                        (_type24779_
                         (gxc#optimizer-resolve-type _type-t24777_)))
                   (if (##structure-instance-of?
                        _type24779_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t24777_)
                       '#f))))
              (___kont2629026291_
               (lambda (_L24543_)
                 (let ((__obj28521 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj28521
                      'lambda
                      (gxc#lambda-form-arity _L24543_)
                      (gxc#dispatch-lambda-form-delegate _L24543_))
                     __obj28521))))
              (___kont2629226293_
               (lambda (_L24470_ _L24471_ _L24472_ _L24473_ _L24474_ _L24475_)
                 (let* ((_tab24525_ (gx#stx-e _L24472_))
                        (_keys24527_
                         (if _tab24525_
                             (filter values (vector->list _tab24525_))
                             '#f)))
                   (##structure
                    gxc#!kw-lambda::t
                    'kw-lambda
                    _keys24527_
                    (gxc#identifier-symbol _L24471_)))))
              (___kont2629426295_
               (lambda (_L24201_
                        _L24202_
                        _L24203_
                        _L24204_
                        _L24205_
                        _L24206_
                        _L24207_
                        _L24208_
                        _L24209_
                        _L24210_)
                 (##structure
                  gxc#!kw-lambda-primary::t
                  'kw-lambda-dispatch
                  (map gx#stx-e
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2430524308_ _g2430624310_)
                                   (cons _g2430524308_ _g2430624310_))
                                 '()
                                 _L24203_)))
                  (gxc#identifier-symbol _L24207_))))
              (___kont2629826299_ (lambda () '#f)))
          (let* ((___match2674526746_
                  (lambda (_e2380423925_
                           _hd2380523928_
                           _tl2380623930_
                           _e2380723933_
                           _hd2380823936_
                           _tl2380923938_
                           _e2381023941_
                           _hd2381123944_
                           _tl2381223946_
                           _e2381323949_
                           _hd2381423952_
                           _tl2381523954_
                           _e2381623957_
                           _hd2381723960_
                           _tl2381823962_
                           _e2381923965_
                           _hd2382023968_
                           _tl2382123970_
                           _e2382223973_
                           _hd2382323976_
                           _tl2382423978_
                           _e2382523981_
                           _hd2382623984_
                           _tl2382723986_
                           _e2382823989_
                           _hd2382923992_
                           _tl2383023994_
                           _e2383123997_
                           _hd2383224000_
                           _tl2383324002_
                           _e2383424005_
                           _hd2383524008_
                           _tl2383624010_
                           _e2383724013_
                           _hd2383824016_
                           _tl2383924018_
                           _e2384024021_
                           _hd2384124024_
                           _tl2384224026_
                           _e2384324029_
                           _hd2384424032_
                           _tl2384524034_
                           ___splice2629626297_
                           _target2384624037_
                           _tl2384824039_
                           _e2386124042_
                           _hd2386224045_
                           _tl2386324047_
                           _e2386424050_
                           _hd2386524053_
                           _tl2386624055_
                           _e2386724058_
                           _hd2386824061_
                           _tl2386924063_)
                    (letrec ((_loop2384924066_
                              (lambda (_hd2384724069_
                                       _-absent-value2385324071_
                                       _key2385424073_
                                       _-xkwvar2385524075_
                                       _-hash-ref2385624077_)
                                (if (gx#stx-pair? _hd2384724069_)
                                    (let ((_e2385024080_
                                           (gx#stx-e _hd2384724069_)))
                                      (let ((_lp-tl2385224085_
                                             (##cdr _e2385024080_))
                                            (_lp-hd2385124083_
                                             (##car _e2385024080_)))
                                        (if (gx#stx-pair? _lp-hd2385124083_)
                                            (let ((_e2387024088_
                                                   (gx#stx-e
                                                    _lp-hd2385124083_)))
                                              (let ((_tl2387224093_
                                                     (##cdr _e2387024088_))
                                                    (_hd2387124091_
                                                     (##car _e2387024088_)))
                                                (if (gx#identifier?
                                                     _hd2387124091_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2387124091_)
                                                        (if (gx#stx-pair?
                                                             _tl2387224093_)
                                                            (let ((_e2387324096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2387224093_)))
                      (let ((_tl2387524101_ (##cdr _e2387324096_))
                            (_hd2387424099_ (##car _e2387324096_)))
                        (if (gx#stx-pair? _hd2387424099_)
                            (let ((_e2387624104_ (gx#stx-e _hd2387424099_)))
                              (let ((_tl2387824109_ (##cdr _e2387624104_))
                                    (_hd2387724107_ (##car _e2387624104_)))
                                (if (gx#identifier? _hd2387724107_)
                                    (if (gx#stx-eq? '%#ref _hd2387724107_)
                                        (if (gx#stx-pair? _tl2387824109_)
                                            (let ((_e2387924112_
                                                   (gx#stx-e _tl2387824109_)))
                                              (let ((_tl2388124117_
                                                     (##cdr _e2387924112_))
                                                    (_hd2388024115_
                                                     (##car _e2387924112_)))
                                                (if (gx#stx-null?
                                                     _tl2388124117_)
                                                    (if (gx#stx-pair?
                                                         _tl2387524101_)
                                                        (let ((_e2388224120_
                                                               (gx#stx-e
                                                                _tl2387524101_)))
                                                          (let ((_tl2388424125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2388224120_))
                        (_hd2388324123_ (##car _e2388224120_)))
                    (if (gx#stx-pair? _hd2388324123_)
                        (let ((_e2388524128_ (gx#stx-e _hd2388324123_)))
                          (let ((_tl2388724133_ (##cdr _e2388524128_))
                                (_hd2388624131_ (##car _e2388524128_)))
                            (if (gx#identifier? _hd2388624131_)
                                (if (gx#stx-eq? '%#ref _hd2388624131_)
                                    (if (gx#stx-pair? _tl2388724133_)
                                        (let ((_e2388824136_
                                               (gx#stx-e _tl2388724133_)))
                                          (let ((_tl2389024141_
                                                 (##cdr _e2388824136_))
                                                (_hd2388924139_
                                                 (##car _e2388824136_)))
                                            (if (gx#stx-null? _tl2389024141_)
                                                (if (gx#stx-pair?
                                                     _tl2388424125_)
                                                    (let ((_e2389124144_
                                                           (gx#stx-e
                                                            _tl2388424125_)))
                                                      (let ((_tl2389324149_
                                                             (##cdr _e2389124144_))
                                                            (_hd2389224147_
                                                             (##car _e2389124144_)))
                                                        (if (gx#stx-pair?
                                                             _hd2389224147_)
                                                            (let ((_e2389424152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2389224147_)))
                      (let ((_tl2389624157_ (##cdr _e2389424152_))
                            (_hd2389524155_ (##car _e2389424152_)))
                        (if (gx#identifier? _hd2389524155_)
                            (if (gx#stx-eq? '%#quote _hd2389524155_)
                                (if (gx#stx-pair? _tl2389624157_)
                                    (let ((_e2389724160_
                                           (gx#stx-e _tl2389624157_)))
                                      (let ((_tl2389924165_
                                             (##cdr _e2389724160_))
                                            (_hd2389824163_
                                             (##car _e2389724160_)))
                                        (if (gx#stx-null? _tl2389924165_)
                                            (if (gx#stx-pair? _tl2389324149_)
                                                (let ((_e2390024168_
                                                       (gx#stx-e
                                                        _tl2389324149_)))
                                                  (let ((_tl2390224173_
                                                         (##cdr _e2390024168_))
                                                        (_hd2390124171_
                                                         (##car _e2390024168_)))
                                                    (if (gx#stx-pair?
                                                         _hd2390124171_)
                                                        (let ((_e2390324176_
                                                               (gx#stx-e
                                                                _hd2390124171_)))
                                                          (let ((_tl2390524181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2390324176_))
                        (_hd2390424179_ (##car _e2390324176_)))
                    (if (gx#identifier? _hd2390424179_)
                        (if (gx#stx-eq? '%#ref _hd2390424179_)
                            (if (gx#stx-pair? _tl2390524181_)
                                (let ((_e2390624184_
                                       (gx#stx-e _tl2390524181_)))
                                  (let ((_tl2390824189_ (##cdr _e2390624184_))
                                        (_hd2390724187_ (##car _e2390624184_)))
                                    (if (gx#stx-null? _tl2390824189_)
                                        (if (gx#stx-null? _tl2390224173_)
                                            (_loop2384924066_
                                             _lp-tl2385224085_
                                             (cons _hd2390724187_
                                                   _-absent-value2385324071_)
                                             (cons _hd2389824163_
                                                   _key2385424073_)
                                             (cons _hd2388924139_
                                                   _-xkwvar2385524075_)
                                             (cons _hd2388024115_
                                                   _-hash-ref2385624077_))
                                            (___kont2629826299_))
                                        (___kont2629826299_))))
                                (___kont2629826299_))
                            (___kont2629826299_))
                        (___kont2629826299_))))
                (___kont2629826299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2629826299_))
                                            (___kont2629826299_))))
                                    (___kont2629826299_))
                                (___kont2629826299_))
                            (___kont2629826299_))))
                    (___kont2629826299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2629826299_))
                                                (___kont2629826299_))))
                                        (___kont2629826299_))
                                    (___kont2629826299_))
                                (___kont2629826299_))))
                        (___kont2629826299_))))
                (___kont2629826299_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2629826299_))))
                                            (___kont2629826299_))
                                        (___kont2629826299_))
                                    (___kont2629826299_))))
                            (___kont2629826299_))))
                    (___kont2629826299_))
                (___kont2629826299_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2629826299_))))
                                            (___kont2629826299_))))
                                    (let ((_-hash-ref2386024198_
                                           (reverse _-hash-ref2385624077_))
                                          (_-xkwvar2385924196_
                                           (reverse _-xkwvar2385524075_))
                                          (_key2385824194_
                                           (reverse _key2385424073_))
                                          (_-absent-value2385724192_
                                           (reverse _-absent-value2385324071_)))
                                      (if (gx#stx-null? _tl2381523954_)
                                          (let ((_L24201_ _hd2386824061_)
                                                (_L24202_
                                                 _-absent-value2385724192_)
                                                (_L24203_ _key2385824194_)
                                                (_L24204_ _-xkwvar2385924196_)
                                                (_L24205_
                                                 _-hash-ref2386024198_)
                                                (_L24206_ _hd2384424032_)
                                                (_L24207_ _hd2383524008_)
                                                (_L24208_ _hd2382623984_)
                                                (_L24209_ _tl2381223946_)
                                                (_L24210_ _hd2381123944_))
                                            (if (if (gx#identifier? _L24210_)
                                                    (if (gx#identifier?
                                                         _L24209_)
                                                        (if (gxc#runtime-identifier=?
                                                             _L24208_
                                                             'apply)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24210_
                         _L24206_)
                        (if (andmap1 gx#stx-keyword?
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g2426524268_
                                                        _g2426624270_)
                                                 (cons _g2426524268_
                                                       _g2426624270_))
                                               '()
                                               _L24203_)))
                            (if (andmap1 (lambda (_g2427224274_)
                                           (gxc#runtime-identifier=?
                                            _g2427224274_
                                            'hash-ref))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2427624279_
                                                            _g2427724281_)
                                                     (cons _g2427624279_
                                                           _g2427724281_))
                                                   '()
                                                   _L24205_)))
                                (if (andmap1 (lambda (_g2428324285_)
                                               (gxc#runtime-identifier=?
                                                _g2428324285_
                                                'absent-value))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2428724290_
                                                                _g2428824292_)
                                                         (cons _g2428724290_
                                                               _g2428824292_))
                                                       '()
                                                       _L24202_)))
                                    (andmap1 (lambda (_g2429424296_)
                                               (gx#free-identifier=?
                                                _g2429424296_
                                                _L24210_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2429824301_
                                                                _g2429924303_)
                                                         (cons _g2429824301_
                                                               _g2429924303_))
                                                       '()
                                                       _L24204_)))
                                    '#f)
                                '#f)
                            '#f)
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (___kont2629426295_
                                                 _L24201_
                                                 _L24202_
                                                 _L24203_
                                                 _L24204_
                                                 _L24205_
                                                 _L24206_
                                                 _L24207_
                                                 _L24208_
                                                 _L24209_
                                                 _L24210_)
                                                (___kont2629826299_)))
                                          (___kont2629826299_)))))))
                      (_loop2384924066_ _target2384624037_ '() '() '() '()))))
                 (___match2660526606_
                  (lambda (_e2373724318_
                           _hd2373824321_
                           _tl2373924323_
                           _e2374024326_
                           _hd2374124329_
                           _tl2374224331_
                           _e2374324334_
                           _hd2374424337_
                           _tl2374524339_
                           _e2374624342_
                           _hd2374724345_
                           _tl2374824347_
                           _e2374924350_
                           _hd2375024353_
                           _tl2375124355_
                           _e2375224358_
                           _hd2375324361_
                           _tl2375424363_
                           _e2375524366_
                           _hd2375624369_
                           _tl2375724371_
                           _e2375824374_
                           _hd2375924377_
                           _tl2376024379_
                           _e2376124382_
                           _hd2376224385_
                           _tl2376324387_
                           _e2376424390_
                           _hd2376524393_
                           _tl2376624395_
                           _e2376724398_
                           _hd2376824401_
                           _tl2376924403_
                           _e2377024406_
                           _hd2377124409_
                           _tl2377224411_
                           _e2377324414_
                           _hd2377424417_
                           _tl2377524419_
                           _e2377624422_
                           _hd2377724425_
                           _tl2377824427_
                           _e2377924430_
                           _hd2378024433_
                           _tl2378124435_
                           _e2378224438_
                           _hd2378324441_
                           _tl2378424443_
                           _e2378524446_
                           _hd2378624449_
                           _tl2378724451_
                           _e2378824454_
                           _hd2378924457_
                           _tl2379024459_
                           _e2379124462_
                           _hd2379224465_
                           _tl2379324467_)
                    (let ((_L24470_ _hd2379224465_)
                          (_L24471_ _hd2378324441_)
                          (_L24472_ _hd2377424417_)
                          (_L24473_ _hd2376524393_)
                          (_L24474_ _hd2375624369_)
                          (_L24475_ _hd2374124329_))
                      (if (if (gx#identifier? _L24475_)
                              (if (gxc#runtime-identifier=? _L24474_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L24473_
                                       'keyword-dispatch)
                                      (gx#free-identifier=? _L24475_ _L24470_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2629226293_
                           _L24470_
                           _L24471_
                           _L24472_
                           _L24473_
                           _L24474_
                           _L24475_)
                          (if (gx#stx-pair? _hd2374124329_)
                              (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                                (let ((_tl2381223946_ (##cdr _e2381023941_))
                                      (_hd2381123944_ (##car _e2381023941_)))
                                  (___kont2629826299_)))
                              (___kont2629826299_))))))
                 (___match2645326454_
                  (lambda (_e2372824535_ _hd2372924538_ _tl2373024540_)
                    (let ((_L24543_ _tl2373024540_))
                      (if (gxc#dispatch-lambda-form? _L24543_)
                          (___kont2629026291_ _L24543_)
                          (if (gx#stx-pair? _tl2373024540_)
                              (let ((_e2374024326_ (gx#stx-e _tl2373024540_)))
                                (let ((_tl2374224331_ (##cdr _e2374024326_))
                                      (_hd2374124329_ (##car _e2374024326_)))
                                  (if (gx#stx-pair? _tl2374224331_)
                                      (let ((_e2374324334_
                                             (gx#stx-e _tl2374224331_)))
                                        (let ((_tl2374524339_
                                               (##cdr _e2374324334_))
                                              (_hd2374424337_
                                               (##car _e2374324334_)))
                                          (if (gx#stx-pair? _hd2374424337_)
                                              (let ((_e2374624342_
                                                     (gx#stx-e
                                                      _hd2374424337_)))
                                                (let ((_tl2374824347_
                                                       (##cdr _e2374624342_))
                                                      (_hd2374724345_
                                                       (##car _e2374624342_)))
                                                  (if (gx#identifier?
                                                       _hd2374724345_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd2374724345_)
                                                          (if (gx#stx-pair?
                                                               _tl2374824347_)
                                                              (let ((_e2374924350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2374824347_)))
                        (let ((_tl2375124355_ (##cdr _e2374924350_))
                              (_hd2375024353_ (##car _e2374924350_)))
                          (if (gx#stx-pair? _hd2375024353_)
                              (let ((_e2375224358_ (gx#stx-e _hd2375024353_)))
                                (let ((_tl2375424363_ (##cdr _e2375224358_))
                                      (_hd2375324361_ (##car _e2375224358_)))
                                  (if (gx#identifier? _hd2375324361_)
                                      (if (gx#stx-eq? '%#ref _hd2375324361_)
                                          (if (gx#stx-pair? _tl2375424363_)
                                              (let ((_e2375524366_
                                                     (gx#stx-e
                                                      _tl2375424363_)))
                                                (let ((_tl2375724371_
                                                       (##cdr _e2375524366_))
                                                      (_hd2375624369_
                                                       (##car _e2375524366_)))
                                                  (if (gx#stx-null?
                                                       _tl2375724371_)
                                                      (if (gx#stx-pair?
                                                           _tl2375124355_)
                                                          (let ((_e2375824374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2375124355_)))
                    (let ((_tl2376024379_ (##cdr _e2375824374_))
                          (_hd2375924377_ (##car _e2375824374_)))
                      (if (gx#stx-pair? _hd2375924377_)
                          (let ((_e2376124382_ (gx#stx-e _hd2375924377_)))
                            (let ((_tl2376324387_ (##cdr _e2376124382_))
                                  (_hd2376224385_ (##car _e2376124382_)))
                              (if (gx#identifier? _hd2376224385_)
                                  (if (gx#stx-eq? '%#ref _hd2376224385_)
                                      (if (gx#stx-pair? _tl2376324387_)
                                          (let ((_e2376424390_
                                                 (gx#stx-e _tl2376324387_)))
                                            (let ((_tl2376624395_
                                                   (##cdr _e2376424390_))
                                                  (_hd2376524393_
                                                   (##car _e2376424390_)))
                                              (if (gx#stx-null? _tl2376624395_)
                                                  (if (gx#stx-pair?
                                                       _tl2376024379_)
                                                      (let ((_e2376724398_
                                                             (gx#stx-e
                                                              _tl2376024379_)))
                                                        (let ((_tl2376924403_
                                                               (##cdr _e2376724398_))
                                                              (_hd2376824401_
                                                               (##car _e2376724398_)))
                                                          (if (gx#stx-pair?
                                                               _hd2376824401_)
                                                              (let ((_e2377024406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2376824401_)))
                        (let ((_tl2377224411_ (##cdr _e2377024406_))
                              (_hd2377124409_ (##car _e2377024406_)))
                          (if (gx#identifier? _hd2377124409_)
                              (if (gx#stx-eq? '%#quote _hd2377124409_)
                                  (if (gx#stx-pair? _tl2377224411_)
                                      (let ((_e2377324414_
                                             (gx#stx-e _tl2377224411_)))
                                        (let ((_tl2377524419_
                                               (##cdr _e2377324414_))
                                              (_hd2377424417_
                                               (##car _e2377324414_)))
                                          (if (gx#stx-null? _tl2377524419_)
                                              (if (gx#stx-pair? _tl2376924403_)
                                                  (let ((_e2377624422_
                                                         (gx#stx-e
                                                          _tl2376924403_)))
                                                    (let ((_tl2377824427_
                                                           (##cdr _e2377624422_))
                                                          (_hd2377724425_
                                                           (##car _e2377624422_)))
                                                      (if (gx#stx-pair?
                                                           _hd2377724425_)
                                                          (let ((_e2377924430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2377724425_)))
                    (let ((_tl2378124435_ (##cdr _e2377924430_))
                          (_hd2378024433_ (##car _e2377924430_)))
                      (if (gx#identifier? _hd2378024433_)
                          (if (gx#stx-eq? '%#ref _hd2378024433_)
                              (if (gx#stx-pair? _tl2378124435_)
                                  (let ((_e2378224438_
                                         (gx#stx-e _tl2378124435_)))
                                    (let ((_tl2378424443_
                                           (##cdr _e2378224438_))
                                          (_hd2378324441_
                                           (##car _e2378224438_)))
                                      (if (gx#stx-null? _tl2378424443_)
                                          (if (gx#stx-pair? _tl2377824427_)
                                              (let ((_e2378524446_
                                                     (gx#stx-e
                                                      _tl2377824427_)))
                                                (let ((_tl2378724451_
                                                       (##cdr _e2378524446_))
                                                      (_hd2378624449_
                                                       (##car _e2378524446_)))
                                                  (if (gx#stx-pair?
                                                       _hd2378624449_)
                                                      (let ((_e2378824454_
                                                             (gx#stx-e
                                                              _hd2378624449_)))
                                                        (let ((_tl2379024459_
                                                               (##cdr _e2378824454_))
                                                              (_hd2378924457_
                                                               (##car _e2378824454_)))
                                                          (if (gx#identifier?
                                                               _hd2378924457_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2378924457_)
                          (if (gx#stx-pair? _tl2379024459_)
                              (let ((_e2379124462_ (gx#stx-e _tl2379024459_)))
                                (let ((_tl2379324467_ (##cdr _e2379124462_))
                                      (_hd2379224465_ (##car _e2379124462_)))
                                  (if (gx#stx-null? _tl2379324467_)
                                      (if (gx#stx-null? _tl2378724451_)
                                          (if (gx#stx-null? _tl2374524339_)
                                              (___match2660526606_
                                               _e2372824535_
                                               _hd2372924538_
                                               _tl2373024540_
                                               _e2374024326_
                                               _hd2374124329_
                                               _tl2374224331_
                                               _e2374324334_
                                               _hd2374424337_
                                               _tl2374524339_
                                               _e2374624342_
                                               _hd2374724345_
                                               _tl2374824347_
                                               _e2374924350_
                                               _hd2375024353_
                                               _tl2375124355_
                                               _e2375224358_
                                               _hd2375324361_
                                               _tl2375424363_
                                               _e2375524366_
                                               _hd2375624369_
                                               _tl2375724371_
                                               _e2375824374_
                                               _hd2375924377_
                                               _tl2376024379_
                                               _e2376124382_
                                               _hd2376224385_
                                               _tl2376324387_
                                               _e2376424390_
                                               _hd2376524393_
                                               _tl2376624395_
                                               _e2376724398_
                                               _hd2376824401_
                                               _tl2376924403_
                                               _e2377024406_
                                               _hd2377124409_
                                               _tl2377224411_
                                               _e2377324414_
                                               _hd2377424417_
                                               _tl2377524419_
                                               _e2377624422_
                                               _hd2377724425_
                                               _tl2377824427_
                                               _e2377924430_
                                               _hd2378024433_
                                               _tl2378124435_
                                               _e2378224438_
                                               _hd2378324441_
                                               _tl2378424443_
                                               _e2378524446_
                                               _hd2378624449_
                                               _tl2378724451_
                                               _e2378824454_
                                               _hd2378924457_
                                               _tl2379024459_
                                               _e2379124462_
                                               _hd2379224465_
                                               _tl2379324467_)
                                              (if (gx#stx-pair? _hd2374124329_)
                                                  (let ((_e2381023941_
                                                         (gx#stx-e
                                                          _hd2374124329_)))
                                                    (let ((_tl2381223946_
                                                           (##cdr _e2381023941_))
                                                          (_hd2381123944_
                                                           (##car _e2381023941_)))
                                                      (___kont2629826299_)))
                                                  (___kont2629826299_)))
                                          (if (gx#stx-pair? _hd2374124329_)
                                              (let ((_e2381023941_
                                                     (gx#stx-e
                                                      _hd2374124329_)))
                                                (let ((_tl2381223946_
                                                       (##cdr _e2381023941_))
                                                      (_hd2381123944_
                                                       (##car _e2381023941_)))
                                                  (___kont2629826299_)))
                                              (___kont2629826299_)))
                                      (if (gx#stx-pair? _hd2374124329_)
                                          (let ((_e2381023941_
                                                 (gx#stx-e _hd2374124329_)))
                                            (let ((_tl2381223946_
                                                   (##cdr _e2381023941_))
                                                  (_hd2381123944_
                                                   (##car _e2381023941_)))
                                              (___kont2629826299_)))
                                          (___kont2629826299_)))))
                              (if (gx#stx-pair? _hd2374124329_)
                                  (let ((_e2381023941_
                                         (gx#stx-e _hd2374124329_)))
                                    (let ((_tl2381223946_
                                           (##cdr _e2381023941_))
                                          (_hd2381123944_
                                           (##car _e2381023941_)))
                                      (___kont2629826299_)))
                                  (___kont2629826299_)))
                          (if (gx#stx-pair? _hd2374124329_)
                              (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                                (let ((_tl2381223946_ (##cdr _e2381023941_))
                                      (_hd2381123944_ (##car _e2381023941_)))
                                  (___kont2629826299_)))
                              (___kont2629826299_)))
                      (if (gx#stx-pair? _hd2374124329_)
                          (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                            (let ((_tl2381223946_ (##cdr _e2381023941_))
                                  (_hd2381123944_ (##car _e2381023941_)))
                              (___kont2629826299_)))
                          (___kont2629826299_)))))
              (if (gx#stx-pair? _hd2374124329_)
                  (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                    (let ((_tl2381223946_ (##cdr _e2381023941_))
                          (_hd2381123944_ (##car _e2381023941_)))
                      (___kont2629826299_)))
                  (___kont2629826299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2374124329_)
                                                  (let ((_e2381023941_
                                                         (gx#stx-e
                                                          _hd2374124329_)))
                                                    (let ((_tl2381223946_
                                                           (##cdr _e2381023941_))
                                                          (_hd2381123944_
                                                           (##car _e2381023941_)))
                                                      (___kont2629826299_)))
                                                  (___kont2629826299_)))
                                          (if (gx#stx-pair? _hd2374124329_)
                                              (let ((_e2381023941_
                                                     (gx#stx-e
                                                      _hd2374124329_)))
                                                (let ((_tl2381223946_
                                                       (##cdr _e2381023941_))
                                                      (_hd2381123944_
                                                       (##car _e2381023941_)))
                                                  (___kont2629826299_)))
                                              (___kont2629826299_)))))
                                  (if (gx#stx-pair? _hd2374124329_)
                                      (let ((_e2381023941_
                                             (gx#stx-e _hd2374124329_)))
                                        (let ((_tl2381223946_
                                               (##cdr _e2381023941_))
                                              (_hd2381123944_
                                               (##car _e2381023941_)))
                                          (___kont2629826299_)))
                                      (___kont2629826299_)))
                              (if (gx#stx-pair? _hd2374124329_)
                                  (let ((_e2381023941_
                                         (gx#stx-e _hd2374124329_)))
                                    (let ((_tl2381223946_
                                           (##cdr _e2381023941_))
                                          (_hd2381123944_
                                           (##car _e2381023941_)))
                                      (___kont2629826299_)))
                                  (___kont2629826299_)))
                          (if (gx#stx-pair? _hd2374124329_)
                              (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                                (let ((_tl2381223946_ (##cdr _e2381023941_))
                                      (_hd2381123944_ (##car _e2381023941_)))
                                  (___kont2629826299_)))
                              (___kont2629826299_)))))
                  (if (gx#stx-pair? _hd2374124329_)
                      (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                        (let ((_tl2381223946_ (##cdr _e2381023941_))
                              (_hd2381123944_ (##car _e2381023941_)))
                          (___kont2629826299_)))
                      (___kont2629826299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _hd2374124329_)
                                                      (let ((_e2381023941_
                                                             (gx#stx-e
                                                              _hd2374124329_)))
                                                        (let ((_tl2381223946_
                                                               (##cdr _e2381023941_))
                                                              (_hd2381123944_
                                                               (##car _e2381023941_)))
                                                          (___kont2629826299_)))
                                                      (___kont2629826299_)))
                                              (if (gx#stx-pair? _hd2374124329_)
                                                  (let ((_e2381023941_
                                                         (gx#stx-e
                                                          _hd2374124329_)))
                                                    (let ((_tl2381223946_
                                                           (##cdr _e2381023941_))
                                                          (_hd2381123944_
                                                           (##car _e2381023941_)))
                                                      (___kont2629826299_)))
                                                  (___kont2629826299_)))))
                                      (if (gx#stx-pair? _hd2374124329_)
                                          (let ((_e2381023941_
                                                 (gx#stx-e _hd2374124329_)))
                                            (let ((_tl2381223946_
                                                   (##cdr _e2381023941_))
                                                  (_hd2381123944_
                                                   (##car _e2381023941_)))
                                              (___kont2629826299_)))
                                          (___kont2629826299_)))
                                  (if (gx#stx-pair? _hd2374124329_)
                                      (let ((_e2381023941_
                                             (gx#stx-e _hd2374124329_)))
                                        (let ((_tl2381223946_
                                               (##cdr _e2381023941_))
                                              (_hd2381123944_
                                               (##car _e2381023941_)))
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2377124409_)
                                              (if (gx#stx-pair? _tl2377224411_)
                                                  (let ((_e2384324029_
                                                         (gx#stx-e
                                                          _tl2377224411_)))
                                                    (let ((_tl2384524034_
                                                           (##cdr _e2384324029_))
                                                          (_hd2384424032_
                                                           (##car _e2384324029_)))
                                                      (if (gx#stx-null?
                                                           _tl2384524034_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2376924403_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl2376924403_)
                                '1)
                          (let ((___splice2629626297_
                                 (gx#syntax-split-splice _tl2376924403_ '1)))
                            (let ((_tl2384824039_
                                   (##vector-ref ___splice2629626297_ '1))
                                  (_target2384624037_
                                   (##vector-ref ___splice2629626297_ '0)))
                              (if (gx#stx-pair? _tl2384824039_)
                                  (let ((_e2386124042_
                                         (gx#stx-e _tl2384824039_)))
                                    (let ((_tl2386324047_
                                           (##cdr _e2386124042_))
                                          (_hd2386224045_
                                           (##car _e2386124042_)))
                                      (if (gx#stx-pair? _hd2386224045_)
                                          (let ((_e2386424050_
                                                 (gx#stx-e _hd2386224045_)))
                                            (let ((_tl2386624055_
                                                   (##cdr _e2386424050_))
                                                  (_hd2386524053_
                                                   (##car _e2386424050_)))
                                              (if (gx#identifier?
                                                   _hd2386524053_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2386524053_)
                                                      (if (gx#stx-pair?
                                                           _tl2386624055_)
                                                          (let ((_e2386724058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2386624055_)))
                    (let ((_tl2386924063_ (##cdr _e2386724058_))
                          (_hd2386824061_ (##car _e2386724058_)))
                      (if (gx#stx-null? _tl2386924063_)
                          (if (gx#stx-null? _tl2386324047_)
                              (___match2674526746_
                               _e2372824535_
                               _hd2372924538_
                               _tl2373024540_
                               _e2374024326_
                               _hd2374124329_
                               _tl2374224331_
                               _e2381023941_
                               _hd2381123944_
                               _tl2381223946_
                               _e2374324334_
                               _hd2374424337_
                               _tl2374524339_
                               _e2374624342_
                               _hd2374724345_
                               _tl2374824347_
                               _e2374924350_
                               _hd2375024353_
                               _tl2375124355_
                               _e2375224358_
                               _hd2375324361_
                               _tl2375424363_
                               _e2375524366_
                               _hd2375624369_
                               _tl2375724371_
                               _e2375824374_
                               _hd2375924377_
                               _tl2376024379_
                               _e2376124382_
                               _hd2376224385_
                               _tl2376324387_
                               _e2376424390_
                               _hd2376524393_
                               _tl2376624395_
                               _e2376724398_
                               _hd2376824401_
                               _tl2376924403_
                               _e2377024406_
                               _hd2377124409_
                               _tl2377224411_
                               _e2384324029_
                               _hd2384424032_
                               _tl2384524034_
                               ___splice2629626297_
                               _target2384624037_
                               _tl2384824039_
                               _e2386124042_
                               _hd2386224045_
                               _tl2386324047_
                               _e2386424050_
                               _hd2386524053_
                               _tl2386624055_
                               _e2386724058_
                               _hd2386824061_
                               _tl2386924063_)
                              (___kont2629826299_))
                          (___kont2629826299_))))
                  (___kont2629826299_))
              (___kont2629826299_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2629826299_))))
                                          (___kont2629826299_))))
                                  (___kont2629826299_))))
                          (___kont2629826299_))
                      (___kont2629826299_))
                  (___kont2629826299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2629826299_))
                                              (___kont2629826299_))))
                                      (___kont2629826299_)))
                              (if (gx#stx-pair? _hd2374124329_)
                                  (let ((_e2381023941_
                                         (gx#stx-e _hd2374124329_)))
                                    (let ((_tl2381223946_
                                           (##cdr _e2381023941_))
                                          (_hd2381123944_
                                           (##car _e2381023941_)))
                                      (___kont2629826299_)))
                                  (___kont2629826299_)))))
                      (if (gx#stx-pair? _hd2374124329_)
                          (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                            (let ((_tl2381223946_ (##cdr _e2381023941_))
                                  (_hd2381123944_ (##car _e2381023941_)))
                              (___kont2629826299_)))
                          (___kont2629826299_)))))
              (if (gx#stx-pair? _hd2374124329_)
                  (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                    (let ((_tl2381223946_ (##cdr _e2381023941_))
                          (_hd2381123944_ (##car _e2381023941_)))
                      (___kont2629826299_)))
                  (___kont2629826299_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _hd2374124329_)
                                                      (let ((_e2381023941_
                                                             (gx#stx-e
                                                              _hd2374124329_)))
                                                        (let ((_tl2381223946_
                                                               (##cdr _e2381023941_))
                                                              (_hd2381123944_
                                                               (##car _e2381023941_)))
                                                          (___kont2629826299_)))
                                                      (___kont2629826299_)))))
                                          (if (gx#stx-pair? _hd2374124329_)
                                              (let ((_e2381023941_
                                                     (gx#stx-e
                                                      _hd2374124329_)))
                                                (let ((_tl2381223946_
                                                       (##cdr _e2381023941_))
                                                      (_hd2381123944_
                                                       (##car _e2381023941_)))
                                                  (___kont2629826299_)))
                                              (___kont2629826299_)))
                                      (if (gx#stx-pair? _hd2374124329_)
                                          (let ((_e2381023941_
                                                 (gx#stx-e _hd2374124329_)))
                                            (let ((_tl2381223946_
                                                   (##cdr _e2381023941_))
                                                  (_hd2381123944_
                                                   (##car _e2381023941_)))
                                              (___kont2629826299_)))
                                          (___kont2629826299_)))
                                  (if (gx#stx-pair? _hd2374124329_)
                                      (let ((_e2381023941_
                                             (gx#stx-e _hd2374124329_)))
                                        (let ((_tl2381223946_
                                               (##cdr _e2381023941_))
                                              (_hd2381123944_
                                               (##car _e2381023941_)))
                                          (___kont2629826299_)))
                                      (___kont2629826299_)))))
                          (if (gx#stx-pair? _hd2374124329_)
                              (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                                (let ((_tl2381223946_ (##cdr _e2381023941_))
                                      (_hd2381123944_ (##car _e2381023941_)))
                                  (___kont2629826299_)))
                              (___kont2629826299_)))))
                  (if (gx#stx-pair? _hd2374124329_)
                      (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                        (let ((_tl2381223946_ (##cdr _e2381023941_))
                              (_hd2381123944_ (##car _e2381023941_)))
                          (___kont2629826299_)))
                      (___kont2629826299_)))
              (if (gx#stx-pair? _hd2374124329_)
                  (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                    (let ((_tl2381223946_ (##cdr _e2381023941_))
                          (_hd2381123944_ (##car _e2381023941_)))
                      (___kont2629826299_)))
                  (___kont2629826299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2374124329_)
                                                  (let ((_e2381023941_
                                                         (gx#stx-e
                                                          _hd2374124329_)))
                                                    (let ((_tl2381223946_
                                                           (##cdr _e2381023941_))
                                                          (_hd2381123944_
                                                           (##car _e2381023941_)))
                                                      (___kont2629826299_)))
                                                  (___kont2629826299_)))
                                          (if (gx#stx-pair? _hd2374124329_)
                                              (let ((_e2381023941_
                                                     (gx#stx-e
                                                      _hd2374124329_)))
                                                (let ((_tl2381223946_
                                                       (##cdr _e2381023941_))
                                                      (_hd2381123944_
                                                       (##car _e2381023941_)))
                                                  (___kont2629826299_)))
                                              (___kont2629826299_)))
                                      (if (gx#stx-pair? _hd2374124329_)
                                          (let ((_e2381023941_
                                                 (gx#stx-e _hd2374124329_)))
                                            (let ((_tl2381223946_
                                                   (##cdr _e2381023941_))
                                                  (_hd2381123944_
                                                   (##car _e2381023941_)))
                                              (___kont2629826299_)))
                                          (___kont2629826299_)))))
                              (if (gx#stx-pair? _hd2374124329_)
                                  (let ((_e2381023941_
                                         (gx#stx-e _hd2374124329_)))
                                    (let ((_tl2381223946_
                                           (##cdr _e2381023941_))
                                          (_hd2381123944_
                                           (##car _e2381023941_)))
                                      (___kont2629826299_)))
                                  (___kont2629826299_)))))
                      (if (gx#stx-pair? _hd2374124329_)
                          (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                            (let ((_tl2381223946_ (##cdr _e2381023941_))
                                  (_hd2381123944_ (##car _e2381023941_)))
                              (___kont2629826299_)))
                          (___kont2629826299_)))
                  (if (gx#stx-pair? _hd2374124329_)
                      (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                        (let ((_tl2381223946_ (##cdr _e2381023941_))
                              (_hd2381123944_ (##car _e2381023941_)))
                          (___kont2629826299_)))
                      (___kont2629826299_)))
              (if (gx#stx-pair? _hd2374124329_)
                  (let ((_e2381023941_ (gx#stx-e _hd2374124329_)))
                    (let ((_tl2381223946_ (##cdr _e2381023941_))
                          (_hd2381123944_ (##car _e2381023941_)))
                      (___kont2629826299_)))
                  (___kont2629826299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2374124329_)
                                                  (let ((_e2381023941_
                                                         (gx#stx-e
                                                          _hd2374124329_)))
                                                    (let ((_tl2381223946_
                                                           (##cdr _e2381023941_))
                                                          (_hd2381123944_
                                                           (##car _e2381023941_)))
                                                      (___kont2629826299_)))
                                                  (___kont2629826299_)))))
                                      (if (gx#stx-pair? _hd2374124329_)
                                          (let ((_e2381023941_
                                                 (gx#stx-e _hd2374124329_)))
                                            (let ((_tl2381223946_
                                                   (##cdr _e2381023941_))
                                                  (_hd2381123944_
                                                   (##car _e2381023941_)))
                                              (___kont2629826299_)))
                                          (___kont2629826299_)))))
                              (___kont2629826299_))))))
                 (___match2644726448_
                  (lambda (_e2367324557_
                           _hd2367424560_
                           _tl2367524562_
                           _e2367624565_
                           _hd2367724568_
                           _tl2367824570_
                           ___splice2628626287_
                           _target2367924573_
                           _tl2368124575_)
                    (letrec ((_loop2368224578_
                              (lambda (_hd2368024581_ _arg2368624583_)
                                (if (gx#stx-pair? _hd2368024581_)
                                    (let ((_e2368324586_
                                           (gx#stx-e _hd2368024581_)))
                                      (let ((_lp-tl2368524591_
                                             (##cdr _e2368324586_))
                                            (_lp-hd2368424589_
                                             (##car _e2368324586_)))
                                        (_loop2368224578_
                                         _lp-tl2368524591_
                                         (cons _lp-hd2368424589_
                                               _arg2368624583_))))
                                    (let ((_arg2368724594_
                                           (reverse _arg2368624583_)))
                                      (if (gx#stx-pair? _tl2367824570_)
                                          (let ((_e2368824597_
                                                 (gx#stx-e _tl2367824570_)))
                                            (let ((_tl2369024602_
                                                   (##cdr _e2368824597_))
                                                  (_hd2368924600_
                                                   (##car _e2368824597_)))
                                              (if (gx#stx-pair? _hd2368924600_)
                                                  (let ((_e2369124605_
                                                         (gx#stx-e
                                                          _hd2368924600_)))
                                                    (let ((_tl2369324610_
                                                           (##cdr _e2369124605_))
                                                          (_hd2369224608_
                                                           (##car _e2369124605_)))
                                                      (if (gx#identifier?
                                                           _hd2369224608_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2369224608_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2369324610_)
                          (let ((_e2369424613_ (gx#stx-e _tl2369324610_)))
                            (let ((_tl2369624618_ (##cdr _e2369424613_))
                                  (_hd2369524616_ (##car _e2369424613_)))
                              (if (gx#stx-pair? _hd2369524616_)
                                  (let ((_e2369724621_
                                         (gx#stx-e _hd2369524616_)))
                                    (let ((_tl2369924626_
                                           (##cdr _e2369724621_))
                                          (_hd2369824624_
                                           (##car _e2369724621_)))
                                      (if (gx#identifier? _hd2369824624_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2369824624_)
                                              (if (gx#stx-pair? _tl2369924626_)
                                                  (let ((_e2370024629_
                                                         (gx#stx-e
                                                          _tl2369924626_)))
                                                    (let ((_tl2370224634_
                                                           (##cdr _e2370024629_))
                                                          (_hd2370124632_
                                                           (##car _e2370024629_)))
                                                      (if (gx#stx-null?
                                                           _tl2370224634_)
                                                          (if (gx#stx-pair?
                                                               _tl2369624618_)
                                                              (let ((_e2370324637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2369624618_)))
                        (let ((_tl2370524642_ (##cdr _e2370324637_))
                              (_hd2370424640_ (##car _e2370324637_)))
                          (if (gx#stx-pair? _hd2370424640_)
                              (let ((_e2370624645_ (gx#stx-e _hd2370424640_)))
                                (let ((_tl2370824650_ (##cdr _e2370624645_))
                                      (_hd2370724648_ (##car _e2370624645_)))
                                  (if (gx#identifier? _hd2370724648_)
                                      (if (gx#stx-eq? '%#ref _hd2370724648_)
                                          (if (gx#stx-pair? _tl2370824650_)
                                              (let ((_e2370924653_
                                                     (gx#stx-e
                                                      _tl2370824650_)))
                                                (let ((_tl2371124658_
                                                       (##cdr _e2370924653_))
                                                      (_hd2371024656_
                                                       (##car _e2370924653_)))
                                                  (if (gx#stx-null?
                                                       _tl2371124658_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2370524642_)
                                                          (let ((___splice2628826289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl2370524642_ '0)))
                    (let ((_tl2371424663_
                           (##vector-ref ___splice2628826289_ '1))
                          (_target2371224661_
                           (##vector-ref ___splice2628826289_ '0)))
                      (if (gx#stx-null? _tl2371424663_)
                          (letrec ((_loop2371524666_
                                    (lambda (_hd2371324669_ _xarg2371924671_)
                                      (if (gx#stx-pair? _hd2371324669_)
                                          (let ((_e2371624674_
                                                 (gx#stx-e _hd2371324669_)))
                                            (let ((_lp-tl2371824679_
                                                   (##cdr _e2371624674_))
                                                  (_lp-hd2371724677_
                                                   (##car _e2371624674_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2371724677_)
                                                  (let ((_e2372124682_
                                                         (gx#stx-e
                                                          _lp-hd2371724677_)))
                                                    (let ((_tl2372324687_
                                                           (##cdr _e2372124682_))
                                                          (_hd2372224685_
                                                           (##car _e2372124682_)))
                                                      (if (gx#identifier?
                                                           _hd2372224685_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2372224685_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2372324687_)
                          (let ((_e2372424690_ (gx#stx-e _tl2372324687_)))
                            (let ((_tl2372624695_ (##cdr _e2372424690_))
                                  (_hd2372524693_ (##car _e2372424690_)))
                              (if (gx#stx-null? _tl2372624695_)
                                  (_loop2371524666_
                                   _lp-tl2371824679_
                                   (cons _hd2372524693_ _xarg2371924671_))
                                  (___match2645326454_
                                   _e2367324557_
                                   _hd2367424560_
                                   _tl2367524562_))))
                          (___match2645326454_
                           _e2367324557_
                           _hd2367424560_
                           _tl2367524562_))
                      (___match2645326454_
                       _e2367324557_
                       _hd2367424560_
                       _tl2367524562_))
                  (___match2645326454_
                   _e2367324557_
                   _hd2367424560_
                   _tl2367524562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2645326454_
                                                   _e2367324557_
                                                   _hd2367424560_
                                                   _tl2367524562_))))
                                          (let ((_xarg2372024698_
                                                 (reverse _xarg2371924671_)))
                                            (if (gx#stx-null? _tl2369024602_)
                                                (let ((_L24701_
                                                       _xarg2372024698_)
                                                      (_L24702_ _hd2371024656_)
                                                      (_L24703_ _hd2370124632_)
                                                      (_L24704_
                                                       _arg2368724594_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2474124744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2474224746_)
                               (cons _g2474124744_ _g2474224746_))
                             '()
                             _L24704_)))
                  (if (gxc#runtime-identifier=? _L24703_ 'make-struct-instance)
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2474824751_
                                                          _g2474924753_)
                                                   (cons _g2474824751_
                                                         _g2474924753_))
                                                 '()
                                                 _L24704_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2475524758_
                                                          _g2475624760_)
                                                   (cons _g2475524758_
                                                         _g2475624760_))
                                                 '()
                                                 _L24701_))))
                          (andmap2 gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2476224765_
                                                      _g2476324767_)
                                               (cons _g2476224765_
                                                     _g2476324767_))
                                             '()
                                             _L24704_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2476924772_
                                                      _g2477024774_)
                                               (cons _g2476924772_
                                                     _g2477024774_))
                                             '()
                                             _L24701_)))
                          '#f)
                      '#f)
                  '#f)
              (___kont2628426285_ _L24701_ _L24702_ _L24703_ _L24704_)
              (___match2645326454_
               _e2367324557_
               _hd2367424560_
               _tl2367524562_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2645326454_
                                                 _e2367324557_
                                                 _hd2367424560_
                                                 _tl2367524562_)))))))
                            (_loop2371524666_ _target2371224661_ '()))
                          (___match2645326454_
                           _e2367324557_
                           _hd2367424560_
                           _tl2367524562_))))
                  (___match2645326454_
                   _e2367324557_
                   _hd2367424560_
                   _tl2367524562_))
              (___match2645326454_
               _e2367324557_
               _hd2367424560_
               _tl2367524562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2645326454_
                                               _e2367324557_
                                               _hd2367424560_
                                               _tl2367524562_))
                                          (___match2645326454_
                                           _e2367324557_
                                           _hd2367424560_
                                           _tl2367524562_))
                                      (___match2645326454_
                                       _e2367324557_
                                       _hd2367424560_
                                       _tl2367524562_))))
                              (___match2645326454_
                               _e2367324557_
                               _hd2367424560_
                               _tl2367524562_))))
                      (___match2645326454_
                       _e2367324557_
                       _hd2367424560_
                       _tl2367524562_))
                  (___match2645326454_
                   _e2367324557_
                   _hd2367424560_
                   _tl2367524562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2645326454_
                                                   _e2367324557_
                                                   _hd2367424560_
                                                   _tl2367524562_))
                                              (___match2645326454_
                                               _e2367324557_
                                               _hd2367424560_
                                               _tl2367524562_))
                                          (___match2645326454_
                                           _e2367324557_
                                           _hd2367424560_
                                           _tl2367524562_))))
                                  (___match2645326454_
                                   _e2367324557_
                                   _hd2367424560_
                                   _tl2367524562_))))
                          (___match2645326454_
                           _e2367324557_
                           _hd2367424560_
                           _tl2367524562_))
                      (___match2645326454_
                       _e2367324557_
                       _hd2367424560_
                       _tl2367524562_))
                  (___match2645326454_
                   _e2367324557_
                   _hd2367424560_
                   _tl2367524562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2645326454_
                                                   _e2367324557_
                                                   _hd2367424560_
                                                   _tl2367524562_))))
                                          (___match2645326454_
                                           _e2367324557_
                                           _hd2367424560_
                                           _tl2367524562_)))))))
                      (_loop2368224578_ _target2367924573_ '()))))
                 (___match2642726428_
                  (lambda (_e2362124787_
                           _hd2362224790_
                           _tl2362324792_
                           _e2362424795_
                           _hd2362524798_
                           _tl2362624800_
                           _e2362724803_
                           _hd2362824806_
                           _tl2362924808_
                           _e2363024811_
                           _hd2363124814_
                           _tl2363224816_
                           _e2363324819_
                           _hd2363424822_
                           _tl2363524824_
                           _e2363624827_
                           _hd2363724830_
                           _tl2363824832_
                           _e2363924835_
                           _hd2364024838_
                           _tl2364124840_
                           _e2364224843_
                           _hd2364324846_
                           _tl2364424848_
                           _e2364524851_
                           _hd2364624854_
                           _tl2364724856_
                           _e2364824859_
                           _hd2364924862_
                           _tl2365024864_
                           _e2365124867_
                           _hd2365224870_
                           _tl2365324872_
                           _e2365424875_
                           _hd2365524878_
                           _tl2365624880_
                           _e2365724883_
                           _hd2365824886_
                           _tl2365924888_
                           _e2366024891_
                           _hd2366124894_
                           _tl2366224896_
                           _e2366324899_
                           _hd2366424902_
                           _tl2366524904_
                           _e2366624907_
                           _hd2366724910_
                           _tl2366824912_)
                    (let ((_L24915_ _hd2366724910_)
                          (_L24916_ _hd2365824886_)
                          (_L24917_ _hd2364924862_)
                          (_L24918_ _hd2364024838_)
                          (_L24919_ _hd2362524798_))
                      (if (if (gx#identifier? _L24919_)
                              (if (gxc#runtime-identifier=? _L24918_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L24917_
                                       'make-struct-instance)
                                      (gx#free-identifier=? _L24919_ _L24915_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2628226283_
                           _L24915_
                           _L24916_
                           _L24917_
                           _L24918_
                           _L24919_)
                          (if (gx#stx-pair/null? _hd2362524798_)
                              (let ((___splice2628626287_
                                     (gx#syntax-split-splice
                                      _hd2362524798_
                                      '0)))
                                (let ((_tl2368124575_
                                       (##vector-ref ___splice2628626287_ '1))
                                      (_target2367924573_
                                       (##vector-ref ___splice2628626287_ '0)))
                                  (if (gx#stx-null? _tl2368124575_)
                                      (___match2644726448_
                                       _e2362124787_
                                       _hd2362224790_
                                       _tl2362324792_
                                       _e2362424795_
                                       _hd2362524798_
                                       _tl2362624800_
                                       ___splice2628626287_
                                       _target2367924573_
                                       _tl2368124575_)
                                      (___match2645326454_
                                       _e2362124787_
                                       _hd2362224790_
                                       _tl2362324792_))))
                              (___match2645326454_
                               _e2362124787_
                               _hd2362224790_
                               _tl2362324792_)))))))
            (if (gx#stx-pair? ___stx2628026281_)
                (let ((_e2362124787_ (gx#stx-e ___stx2628026281_)))
                  (let ((_tl2362324792_ (##cdr _e2362124787_))
                        (_hd2362224790_ (##car _e2362124787_)))
                    (if (gx#stx-pair? _tl2362324792_)
                        (let ((_e2362424795_ (gx#stx-e _tl2362324792_)))
                          (let ((_tl2362624800_ (##cdr _e2362424795_))
                                (_hd2362524798_ (##car _e2362424795_)))
                            (if (gx#stx-pair? _tl2362624800_)
                                (let ((_e2362724803_
                                       (gx#stx-e _tl2362624800_)))
                                  (let ((_tl2362924808_ (##cdr _e2362724803_))
                                        (_hd2362824806_ (##car _e2362724803_)))
                                    (if (gx#stx-pair? _hd2362824806_)
                                        (let ((_e2363024811_
                                               (gx#stx-e _hd2362824806_)))
                                          (let ((_tl2363224816_
                                                 (##cdr _e2363024811_))
                                                (_hd2363124814_
                                                 (##car _e2363024811_)))
                                            (if (gx#identifier? _hd2363124814_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2363124814_)
                                                    (if (gx#stx-pair?
                                                         _tl2363224816_)
                                                        (let ((_e2363324819_
                                                               (gx#stx-e
                                                                _tl2363224816_)))
                                                          (let ((_tl2363524824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2363324819_))
                        (_hd2363424822_ (##car _e2363324819_)))
                    (if (gx#stx-pair? _hd2363424822_)
                        (let ((_e2363624827_ (gx#stx-e _hd2363424822_)))
                          (let ((_tl2363824832_ (##cdr _e2363624827_))
                                (_hd2363724830_ (##car _e2363624827_)))
                            (if (gx#identifier? _hd2363724830_)
                                (if (gx#stx-eq? '%#ref _hd2363724830_)
                                    (if (gx#stx-pair? _tl2363824832_)
                                        (let ((_e2363924835_
                                               (gx#stx-e _tl2363824832_)))
                                          (let ((_tl2364124840_
                                                 (##cdr _e2363924835_))
                                                (_hd2364024838_
                                                 (##car _e2363924835_)))
                                            (if (gx#stx-null? _tl2364124840_)
                                                (if (gx#stx-pair?
                                                     _tl2363524824_)
                                                    (let ((_e2364224843_
                                                           (gx#stx-e
                                                            _tl2363524824_)))
                                                      (let ((_tl2364424848_
                                                             (##cdr _e2364224843_))
                                                            (_hd2364324846_
                                                             (##car _e2364224843_)))
                                                        (if (gx#stx-pair?
                                                             _hd2364324846_)
                                                            (let ((_e2364524851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2364324846_)))
                      (let ((_tl2364724856_ (##cdr _e2364524851_))
                            (_hd2364624854_ (##car _e2364524851_)))
                        (if (gx#identifier? _hd2364624854_)
                            (if (gx#stx-eq? '%#ref _hd2364624854_)
                                (if (gx#stx-pair? _tl2364724856_)
                                    (let ((_e2364824859_
                                           (gx#stx-e _tl2364724856_)))
                                      (let ((_tl2365024864_
                                             (##cdr _e2364824859_))
                                            (_hd2364924862_
                                             (##car _e2364824859_)))
                                        (if (gx#stx-null? _tl2365024864_)
                                            (if (gx#stx-pair? _tl2364424848_)
                                                (let ((_e2365124867_
                                                       (gx#stx-e
                                                        _tl2364424848_)))
                                                  (let ((_tl2365324872_
                                                         (##cdr _e2365124867_))
                                                        (_hd2365224870_
                                                         (##car _e2365124867_)))
                                                    (if (gx#stx-pair?
                                                         _hd2365224870_)
                                                        (let ((_e2365424875_
                                                               (gx#stx-e
                                                                _hd2365224870_)))
                                                          (let ((_tl2365624880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2365424875_))
                        (_hd2365524878_ (##car _e2365424875_)))
                    (if (gx#identifier? _hd2365524878_)
                        (if (gx#stx-eq? '%#ref _hd2365524878_)
                            (if (gx#stx-pair? _tl2365624880_)
                                (let ((_e2365724883_
                                       (gx#stx-e _tl2365624880_)))
                                  (let ((_tl2365924888_ (##cdr _e2365724883_))
                                        (_hd2365824886_ (##car _e2365724883_)))
                                    (if (gx#stx-null? _tl2365924888_)
                                        (if (gx#stx-pair? _tl2365324872_)
                                            (let ((_e2366024891_
                                                   (gx#stx-e _tl2365324872_)))
                                              (let ((_tl2366224896_
                                                     (##cdr _e2366024891_))
                                                    (_hd2366124894_
                                                     (##car _e2366024891_)))
                                                (if (gx#stx-pair?
                                                     _hd2366124894_)
                                                    (let ((_e2366324899_
                                                           (gx#stx-e
                                                            _hd2366124894_)))
                                                      (let ((_tl2366524904_
                                                             (##cdr _e2366324899_))
                                                            (_hd2366424902_
                                                             (##car _e2366324899_)))
                                                        (if (gx#identifier?
                                                             _hd2366424902_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2366424902_)
                        (if (gx#stx-pair? _tl2366524904_)
                            (let ((_e2366624907_ (gx#stx-e _tl2366524904_)))
                              (let ((_tl2366824912_ (##cdr _e2366624907_))
                                    (_hd2366724910_ (##car _e2366624907_)))
                                (if (gx#stx-null? _tl2366824912_)
                                    (if (gx#stx-null? _tl2366224896_)
                                        (if (gx#stx-null? _tl2362924808_)
                                            (___match2642726428_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_
                                             _e2362424795_
                                             _hd2362524798_
                                             _tl2362624800_
                                             _e2362724803_
                                             _hd2362824806_
                                             _tl2362924808_
                                             _e2363024811_
                                             _hd2363124814_
                                             _tl2363224816_
                                             _e2363324819_
                                             _hd2363424822_
                                             _tl2363524824_
                                             _e2363624827_
                                             _hd2363724830_
                                             _tl2363824832_
                                             _e2363924835_
                                             _hd2364024838_
                                             _tl2364124840_
                                             _e2364224843_
                                             _hd2364324846_
                                             _tl2364424848_
                                             _e2364524851_
                                             _hd2364624854_
                                             _tl2364724856_
                                             _e2364824859_
                                             _hd2364924862_
                                             _tl2365024864_
                                             _e2365124867_
                                             _hd2365224870_
                                             _tl2365324872_
                                             _e2365424875_
                                             _hd2365524878_
                                             _tl2365624880_
                                             _e2365724883_
                                             _hd2365824886_
                                             _tl2365924888_
                                             _e2366024891_
                                             _hd2366124894_
                                             _tl2366224896_
                                             _e2366324899_
                                             _hd2366424902_
                                             _tl2366524904_
                                             _e2366624907_
                                             _hd2366724910_
                                             _tl2366824912_)
                                            (if (gx#stx-pair/null?
                                                 _hd2362524798_)
                                                (let ((___splice2628626287_
                                                       (gx#syntax-split-splice
                                                        _hd2362524798_
                                                        '0)))
                                                  (let ((_tl2368124575_
                                                         (##vector-ref
                                                          ___splice2628626287_
                                                          '1))
                                                        (_target2367924573_
                                                         (##vector-ref
                                                          ___splice2628626287_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2368124575_)
                                                        (___match2644726448_
                                                         _e2362124787_
                                                         _hd2362224790_
                                                         _tl2362324792_
                                                         _e2362424795_
                                                         _hd2362524798_
                                                         _tl2362624800_
                                                         ___splice2628626287_
                                                         _target2367924573_
                                                         _tl2368124575_)
                                                        (___match2645326454_
                                                         _e2362124787_
                                                         _hd2362224790_
                                                         _tl2362324792_))))
                                                (___match2645326454_
                                                 _e2362124787_
                                                 _hd2362224790_
                                                 _tl2362324792_)))
                                        (if (gx#stx-pair/null? _hd2362524798_)
                                            (let ((___splice2628626287_
                                                   (gx#syntax-split-splice
                                                    _hd2362524798_
                                                    '0)))
                                              (let ((_tl2368124575_
                                                     (##vector-ref
                                                      ___splice2628626287_
                                                      '1))
                                                    (_target2367924573_
                                                     (##vector-ref
                                                      ___splice2628626287_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2368124575_)
                                                    (___match2644726448_
                                                     _e2362124787_
                                                     _hd2362224790_
                                                     _tl2362324792_
                                                     _e2362424795_
                                                     _hd2362524798_
                                                     _tl2362624800_
                                                     ___splice2628626287_
                                                     _target2367924573_
                                                     _tl2368124575_)
                                                    (___match2645326454_
                                                     _e2362124787_
                                                     _hd2362224790_
                                                     _tl2362324792_))))
                                            (___match2645326454_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_)))
                                    (if (gx#stx-pair/null? _hd2362524798_)
                                        (let ((___splice2628626287_
                                               (gx#syntax-split-splice
                                                _hd2362524798_
                                                '0)))
                                          (let ((_tl2368124575_
                                                 (##vector-ref
                                                  ___splice2628626287_
                                                  '1))
                                                (_target2367924573_
                                                 (##vector-ref
                                                  ___splice2628626287_
                                                  '0)))
                                            (if (gx#stx-null? _tl2368124575_)
                                                (___match2644726448_
                                                 _e2362124787_
                                                 _hd2362224790_
                                                 _tl2362324792_
                                                 _e2362424795_
                                                 _hd2362524798_
                                                 _tl2362624800_
                                                 ___splice2628626287_
                                                 _target2367924573_
                                                 _tl2368124575_)
                                                (___match2645326454_
                                                 _e2362124787_
                                                 _hd2362224790_
                                                 _tl2362324792_))))
                                        (___match2645326454_
                                         _e2362124787_
                                         _hd2362224790_
                                         _tl2362324792_)))))
                            (if (gx#stx-pair/null? _hd2362524798_)
                                (let ((___splice2628626287_
                                       (gx#syntax-split-splice
                                        _hd2362524798_
                                        '0)))
                                  (let ((_tl2368124575_
                                         (##vector-ref
                                          ___splice2628626287_
                                          '1))
                                        (_target2367924573_
                                         (##vector-ref
                                          ___splice2628626287_
                                          '0)))
                                    (if (gx#stx-null? _tl2368124575_)
                                        (___match2644726448_
                                         _e2362124787_
                                         _hd2362224790_
                                         _tl2362324792_
                                         _e2362424795_
                                         _hd2362524798_
                                         _tl2362624800_
                                         ___splice2628626287_
                                         _target2367924573_
                                         _tl2368124575_)
                                        (___match2645326454_
                                         _e2362124787_
                                         _hd2362224790_
                                         _tl2362324792_))))
                                (___match2645326454_
                                 _e2362124787_
                                 _hd2362224790_
                                 _tl2362324792_)))
                        (if (gx#stx-pair/null? _hd2362524798_)
                            (let ((___splice2628626287_
                                   (gx#syntax-split-splice _hd2362524798_ '0)))
                              (let ((_tl2368124575_
                                     (##vector-ref ___splice2628626287_ '1))
                                    (_target2367924573_
                                     (##vector-ref ___splice2628626287_ '0)))
                                (if (gx#stx-null? _tl2368124575_)
                                    (___match2644726448_
                                     _e2362124787_
                                     _hd2362224790_
                                     _tl2362324792_
                                     _e2362424795_
                                     _hd2362524798_
                                     _tl2362624800_
                                     ___splice2628626287_
                                     _target2367924573_
                                     _tl2368124575_)
                                    (___match2645326454_
                                     _e2362124787_
                                     _hd2362224790_
                                     _tl2362324792_))))
                            (___match2645326454_
                             _e2362124787_
                             _hd2362224790_
                             _tl2362324792_)))
                    (if (gx#stx-pair/null? _hd2362524798_)
                        (let ((___splice2628626287_
                               (gx#syntax-split-splice _hd2362524798_ '0)))
                          (let ((_tl2368124575_
                                 (##vector-ref ___splice2628626287_ '1))
                                (_target2367924573_
                                 (##vector-ref ___splice2628626287_ '0)))
                            (if (gx#stx-null? _tl2368124575_)
                                (___match2644726448_
                                 _e2362124787_
                                 _hd2362224790_
                                 _tl2362324792_
                                 _e2362424795_
                                 _hd2362524798_
                                 _tl2362624800_
                                 ___splice2628626287_
                                 _target2367924573_
                                 _tl2368124575_)
                                (___match2645326454_
                                 _e2362124787_
                                 _hd2362224790_
                                 _tl2362324792_))))
                        (___match2645326454_
                         _e2362124787_
                         _hd2362224790_
                         _tl2362324792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2362524798_)
                                                        (let ((___splice2628626287_
                                                               (gx#syntax-split-splice
                                                                _hd2362524798_
                                                                '0)))
                                                          (let ((_tl2368124575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2628626287_ '1))
                        (_target2367924573_
                         (##vector-ref ___splice2628626287_ '0)))
                    (if (gx#stx-null? _tl2368124575_)
                        (___match2644726448_
                         _e2362124787_
                         _hd2362224790_
                         _tl2362324792_
                         _e2362424795_
                         _hd2362524798_
                         _tl2362624800_
                         ___splice2628626287_
                         _target2367924573_
                         _tl2368124575_)
                        (___match2645326454_
                         _e2362124787_
                         _hd2362224790_
                         _tl2362324792_))))
                (___match2645326454_
                 _e2362124787_
                 _hd2362224790_
                 _tl2362324792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd2362524798_)
                                                (let ((___splice2628626287_
                                                       (gx#syntax-split-splice
                                                        _hd2362524798_
                                                        '0)))
                                                  (let ((_tl2368124575_
                                                         (##vector-ref
                                                          ___splice2628626287_
                                                          '1))
                                                        (_target2367924573_
                                                         (##vector-ref
                                                          ___splice2628626287_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2368124575_)
                                                        (___match2644726448_
                                                         _e2362124787_
                                                         _hd2362224790_
                                                         _tl2362324792_
                                                         _e2362424795_
                                                         _hd2362524798_
                                                         _tl2362624800_
                                                         ___splice2628626287_
                                                         _target2367924573_
                                                         _tl2368124575_)
                                                        (___match2645326454_
                                                         _e2362124787_
                                                         _hd2362224790_
                                                         _tl2362324792_))))
                                                (___match2645326454_
                                                 _e2362124787_
                                                 _hd2362224790_
                                                 _tl2362324792_)))
                                        (if (gx#stx-pair/null? _hd2362524798_)
                                            (let ((___splice2628626287_
                                                   (gx#syntax-split-splice
                                                    _hd2362524798_
                                                    '0)))
                                              (let ((_tl2368124575_
                                                     (##vector-ref
                                                      ___splice2628626287_
                                                      '1))
                                                    (_target2367924573_
                                                     (##vector-ref
                                                      ___splice2628626287_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2368124575_)
                                                    (___match2644726448_
                                                     _e2362124787_
                                                     _hd2362224790_
                                                     _tl2362324792_
                                                     _e2362424795_
                                                     _hd2362524798_
                                                     _tl2362624800_
                                                     ___splice2628626287_
                                                     _target2367924573_
                                                     _tl2368124575_)
                                                    (___match2645326454_
                                                     _e2362124787_
                                                     _hd2362224790_
                                                     _tl2362324792_))))
                                            (___match2645326454_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_)))))
                                (if (gx#stx-pair/null? _hd2362524798_)
                                    (let ((___splice2628626287_
                                           (gx#syntax-split-splice
                                            _hd2362524798_
                                            '0)))
                                      (let ((_tl2368124575_
                                             (##vector-ref
                                              ___splice2628626287_
                                              '1))
                                            (_target2367924573_
                                             (##vector-ref
                                              ___splice2628626287_
                                              '0)))
                                        (if (gx#stx-null? _tl2368124575_)
                                            (___match2644726448_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_
                                             _e2362424795_
                                             _hd2362524798_
                                             _tl2362624800_
                                             ___splice2628626287_
                                             _target2367924573_
                                             _tl2368124575_)
                                            (___match2645326454_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_))))
                                    (___match2645326454_
                                     _e2362124787_
                                     _hd2362224790_
                                     _tl2362324792_)))
                            (if (gx#stx-pair/null? _hd2362524798_)
                                (let ((___splice2628626287_
                                       (gx#syntax-split-splice
                                        _hd2362524798_
                                        '0)))
                                  (let ((_tl2368124575_
                                         (##vector-ref
                                          ___splice2628626287_
                                          '1))
                                        (_target2367924573_
                                         (##vector-ref
                                          ___splice2628626287_
                                          '0)))
                                    (if (gx#stx-null? _tl2368124575_)
                                        (___match2644726448_
                                         _e2362124787_
                                         _hd2362224790_
                                         _tl2362324792_
                                         _e2362424795_
                                         _hd2362524798_
                                         _tl2362624800_
                                         ___splice2628626287_
                                         _target2367924573_
                                         _tl2368124575_)
                                        (___match2645326454_
                                         _e2362124787_
                                         _hd2362224790_
                                         _tl2362324792_))))
                                (___match2645326454_
                                 _e2362124787_
                                 _hd2362224790_
                                 _tl2362324792_)))
                        (if (gx#stx-pair/null? _hd2362524798_)
                            (let ((___splice2628626287_
                                   (gx#syntax-split-splice _hd2362524798_ '0)))
                              (let ((_tl2368124575_
                                     (##vector-ref ___splice2628626287_ '1))
                                    (_target2367924573_
                                     (##vector-ref ___splice2628626287_ '0)))
                                (if (gx#stx-null? _tl2368124575_)
                                    (___match2644726448_
                                     _e2362124787_
                                     _hd2362224790_
                                     _tl2362324792_
                                     _e2362424795_
                                     _hd2362524798_
                                     _tl2362624800_
                                     ___splice2628626287_
                                     _target2367924573_
                                     _tl2368124575_)
                                    (___match2645326454_
                                     _e2362124787_
                                     _hd2362224790_
                                     _tl2362324792_))))
                            (___match2645326454_
                             _e2362124787_
                             _hd2362224790_
                             _tl2362324792_)))))
                (if (gx#stx-pair/null? _hd2362524798_)
                    (let ((___splice2628626287_
                           (gx#syntax-split-splice _hd2362524798_ '0)))
                      (let ((_tl2368124575_
                             (##vector-ref ___splice2628626287_ '1))
                            (_target2367924573_
                             (##vector-ref ___splice2628626287_ '0)))
                        (if (gx#stx-null? _tl2368124575_)
                            (___match2644726448_
                             _e2362124787_
                             _hd2362224790_
                             _tl2362324792_
                             _e2362424795_
                             _hd2362524798_
                             _tl2362624800_
                             ___splice2628626287_
                             _target2367924573_
                             _tl2368124575_)
                            (___match2645326454_
                             _e2362124787_
                             _hd2362224790_
                             _tl2362324792_))))
                    (___match2645326454_
                     _e2362124787_
                     _hd2362224790_
                     _tl2362324792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2362524798_)
                                                    (let ((___splice2628626287_
                                                           (gx#syntax-split-splice
                                                            _hd2362524798_
                                                            '0)))
                                                      (let ((_tl2368124575_
                                                             (##vector-ref
                                                              ___splice2628626287_
                                                              '1))
                                                            (_target2367924573_
                                                             (##vector-ref
                                                              ___splice2628626287_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2368124575_)
                                                            (___match2644726448_
                                                             _e2362124787_
                                                             _hd2362224790_
                                                             _tl2362324792_
                                                             _e2362424795_
                                                             _hd2362524798_
                                                             _tl2362624800_
                                                             ___splice2628626287_
                                                             _target2367924573_
                                                             _tl2368124575_)
                                                            (___match2645326454_
                                                             _e2362124787_
                                                             _hd2362224790_
                                                             _tl2362324792_))))
                                                    (___match2645326454_
                                                     _e2362124787_
                                                     _hd2362224790_
                                                     _tl2362324792_)))
                                            (if (gx#stx-pair/null?
                                                 _hd2362524798_)
                                                (let ((___splice2628626287_
                                                       (gx#syntax-split-splice
                                                        _hd2362524798_
                                                        '0)))
                                                  (let ((_tl2368124575_
                                                         (##vector-ref
                                                          ___splice2628626287_
                                                          '1))
                                                        (_target2367924573_
                                                         (##vector-ref
                                                          ___splice2628626287_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2368124575_)
                                                        (___match2644726448_
                                                         _e2362124787_
                                                         _hd2362224790_
                                                         _tl2362324792_
                                                         _e2362424795_
                                                         _hd2362524798_
                                                         _tl2362624800_
                                                         ___splice2628626287_
                                                         _target2367924573_
                                                         _tl2368124575_)
                                                        (___match2645326454_
                                                         _e2362124787_
                                                         _hd2362224790_
                                                         _tl2362324792_))))
                                                (___match2645326454_
                                                 _e2362124787_
                                                 _hd2362224790_
                                                 _tl2362324792_)))))
                                    (if (gx#stx-pair/null? _hd2362524798_)
                                        (let ((___splice2628626287_
                                               (gx#syntax-split-splice
                                                _hd2362524798_
                                                '0)))
                                          (let ((_tl2368124575_
                                                 (##vector-ref
                                                  ___splice2628626287_
                                                  '1))
                                                (_target2367924573_
                                                 (##vector-ref
                                                  ___splice2628626287_
                                                  '0)))
                                            (if (gx#stx-null? _tl2368124575_)
                                                (___match2644726448_
                                                 _e2362124787_
                                                 _hd2362224790_
                                                 _tl2362324792_
                                                 _e2362424795_
                                                 _hd2362524798_
                                                 _tl2362624800_
                                                 ___splice2628626287_
                                                 _target2367924573_
                                                 _tl2368124575_)
                                                (___match2645326454_
                                                 _e2362124787_
                                                 _hd2362224790_
                                                 _tl2362324792_))))
                                        (___match2645326454_
                                         _e2362124787_
                                         _hd2362224790_
                                         _tl2362324792_)))
                                (if (gx#stx-pair/null? _hd2362524798_)
                                    (let ((___splice2628626287_
                                           (gx#syntax-split-splice
                                            _hd2362524798_
                                            '0)))
                                      (let ((_tl2368124575_
                                             (##vector-ref
                                              ___splice2628626287_
                                              '1))
                                            (_target2367924573_
                                             (##vector-ref
                                              ___splice2628626287_
                                              '0)))
                                        (if (gx#stx-null? _tl2368124575_)
                                            (___match2644726448_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_
                                             _e2362424795_
                                             _hd2362524798_
                                             _tl2362624800_
                                             ___splice2628626287_
                                             _target2367924573_
                                             _tl2368124575_)
                                            (___match2645326454_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_))))
                                    (___match2645326454_
                                     _e2362124787_
                                     _hd2362224790_
                                     _tl2362324792_)))
                            (if (gx#stx-pair/null? _hd2362524798_)
                                (let ((___splice2628626287_
                                       (gx#syntax-split-splice
                                        _hd2362524798_
                                        '0)))
                                  (let ((_tl2368124575_
                                         (##vector-ref
                                          ___splice2628626287_
                                          '1))
                                        (_target2367924573_
                                         (##vector-ref
                                          ___splice2628626287_
                                          '0)))
                                    (if (gx#stx-null? _tl2368124575_)
                                        (___match2644726448_
                                         _e2362124787_
                                         _hd2362224790_
                                         _tl2362324792_
                                         _e2362424795_
                                         _hd2362524798_
                                         _tl2362624800_
                                         ___splice2628626287_
                                         _target2367924573_
                                         _tl2368124575_)
                                        (___match2645326454_
                                         _e2362124787_
                                         _hd2362224790_
                                         _tl2362324792_))))
                                (___match2645326454_
                                 _e2362124787_
                                 _hd2362224790_
                                 _tl2362324792_)))))
                    (if (gx#stx-pair/null? _hd2362524798_)
                        (let ((___splice2628626287_
                               (gx#syntax-split-splice _hd2362524798_ '0)))
                          (let ((_tl2368124575_
                                 (##vector-ref ___splice2628626287_ '1))
                                (_target2367924573_
                                 (##vector-ref ___splice2628626287_ '0)))
                            (if (gx#stx-null? _tl2368124575_)
                                (___match2644726448_
                                 _e2362124787_
                                 _hd2362224790_
                                 _tl2362324792_
                                 _e2362424795_
                                 _hd2362524798_
                                 _tl2362624800_
                                 ___splice2628626287_
                                 _target2367924573_
                                 _tl2368124575_)
                                (___match2645326454_
                                 _e2362124787_
                                 _hd2362224790_
                                 _tl2362324792_))))
                        (___match2645326454_
                         _e2362124787_
                         _hd2362224790_
                         _tl2362324792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2362524798_)
                                                        (let ((___splice2628626287_
                                                               (gx#syntax-split-splice
                                                                _hd2362524798_
                                                                '0)))
                                                          (let ((_tl2368124575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2628626287_ '1))
                        (_target2367924573_
                         (##vector-ref ___splice2628626287_ '0)))
                    (if (gx#stx-null? _tl2368124575_)
                        (___match2644726448_
                         _e2362124787_
                         _hd2362224790_
                         _tl2362324792_
                         _e2362424795_
                         _hd2362524798_
                         _tl2362624800_
                         ___splice2628626287_
                         _target2367924573_
                         _tl2368124575_)
                        (___match2645326454_
                         _e2362124787_
                         _hd2362224790_
                         _tl2362324792_))))
                (___match2645326454_
                 _e2362124787_
                 _hd2362224790_
                 _tl2362324792_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2362524798_)
                                                    (let ((___splice2628626287_
                                                           (gx#syntax-split-splice
                                                            _hd2362524798_
                                                            '0)))
                                                      (let ((_tl2368124575_
                                                             (##vector-ref
                                                              ___splice2628626287_
                                                              '1))
                                                            (_target2367924573_
                                                             (##vector-ref
                                                              ___splice2628626287_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2368124575_)
                                                            (___match2644726448_
                                                             _e2362124787_
                                                             _hd2362224790_
                                                             _tl2362324792_
                                                             _e2362424795_
                                                             _hd2362524798_
                                                             _tl2362624800_
                                                             ___splice2628626287_
                                                             _target2367924573_
                                                             _tl2368124575_)
                                                            (___match2645326454_
                                                             _e2362124787_
                                                             _hd2362224790_
                                                             _tl2362324792_))))
                                                    (___match2645326454_
                                                     _e2362124787_
                                                     _hd2362224790_
                                                     _tl2362324792_)))))
                                        (if (gx#stx-pair/null? _hd2362524798_)
                                            (let ((___splice2628626287_
                                                   (gx#syntax-split-splice
                                                    _hd2362524798_
                                                    '0)))
                                              (let ((_tl2368124575_
                                                     (##vector-ref
                                                      ___splice2628626287_
                                                      '1))
                                                    (_target2367924573_
                                                     (##vector-ref
                                                      ___splice2628626287_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2368124575_)
                                                    (___match2644726448_
                                                     _e2362124787_
                                                     _hd2362224790_
                                                     _tl2362324792_
                                                     _e2362424795_
                                                     _hd2362524798_
                                                     _tl2362624800_
                                                     ___splice2628626287_
                                                     _target2367924573_
                                                     _tl2368124575_)
                                                    (___match2645326454_
                                                     _e2362124787_
                                                     _hd2362224790_
                                                     _tl2362324792_))))
                                            (___match2645326454_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_)))
                                    (if (gx#stx-pair/null? _hd2362524798_)
                                        (let ((___splice2628626287_
                                               (gx#syntax-split-splice
                                                _hd2362524798_
                                                '0)))
                                          (let ((_tl2368124575_
                                                 (##vector-ref
                                                  ___splice2628626287_
                                                  '1))
                                                (_target2367924573_
                                                 (##vector-ref
                                                  ___splice2628626287_
                                                  '0)))
                                            (if (gx#stx-null? _tl2368124575_)
                                                (___match2644726448_
                                                 _e2362124787_
                                                 _hd2362224790_
                                                 _tl2362324792_
                                                 _e2362424795_
                                                 _hd2362524798_
                                                 _tl2362624800_
                                                 ___splice2628626287_
                                                 _target2367924573_
                                                 _tl2368124575_)
                                                (___match2645326454_
                                                 _e2362124787_
                                                 _hd2362224790_
                                                 _tl2362324792_))))
                                        (___match2645326454_
                                         _e2362124787_
                                         _hd2362224790_
                                         _tl2362324792_)))
                                (if (gx#stx-pair/null? _hd2362524798_)
                                    (let ((___splice2628626287_
                                           (gx#syntax-split-splice
                                            _hd2362524798_
                                            '0)))
                                      (let ((_tl2368124575_
                                             (##vector-ref
                                              ___splice2628626287_
                                              '1))
                                            (_target2367924573_
                                             (##vector-ref
                                              ___splice2628626287_
                                              '0)))
                                        (if (gx#stx-null? _tl2368124575_)
                                            (___match2644726448_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_
                                             _e2362424795_
                                             _hd2362524798_
                                             _tl2362624800_
                                             ___splice2628626287_
                                             _target2367924573_
                                             _tl2368124575_)
                                            (___match2645326454_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_))))
                                    (___match2645326454_
                                     _e2362124787_
                                     _hd2362224790_
                                     _tl2362324792_)))))
                        (if (gx#stx-pair/null? _hd2362524798_)
                            (let ((___splice2628626287_
                                   (gx#syntax-split-splice _hd2362524798_ '0)))
                              (let ((_tl2368124575_
                                     (##vector-ref ___splice2628626287_ '1))
                                    (_target2367924573_
                                     (##vector-ref ___splice2628626287_ '0)))
                                (if (gx#stx-null? _tl2368124575_)
                                    (___match2644726448_
                                     _e2362124787_
                                     _hd2362224790_
                                     _tl2362324792_
                                     _e2362424795_
                                     _hd2362524798_
                                     _tl2362624800_
                                     ___splice2628626287_
                                     _target2367924573_
                                     _tl2368124575_)
                                    (___match2645326454_
                                     _e2362124787_
                                     _hd2362224790_
                                     _tl2362324792_))))
                            (___match2645326454_
                             _e2362124787_
                             _hd2362224790_
                             _tl2362324792_)))))
                (if (gx#stx-pair/null? _hd2362524798_)
                    (let ((___splice2628626287_
                           (gx#syntax-split-splice _hd2362524798_ '0)))
                      (let ((_tl2368124575_
                             (##vector-ref ___splice2628626287_ '1))
                            (_target2367924573_
                             (##vector-ref ___splice2628626287_ '0)))
                        (if (gx#stx-null? _tl2368124575_)
                            (___match2644726448_
                             _e2362124787_
                             _hd2362224790_
                             _tl2362324792_
                             _e2362424795_
                             _hd2362524798_
                             _tl2362624800_
                             ___splice2628626287_
                             _target2367924573_
                             _tl2368124575_)
                            (___match2645326454_
                             _e2362124787_
                             _hd2362224790_
                             _tl2362324792_))))
                    (___match2645326454_
                     _e2362124787_
                     _hd2362224790_
                     _tl2362324792_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2362524798_)
                                                        (let ((___splice2628626287_
                                                               (gx#syntax-split-splice
                                                                _hd2362524798_
                                                                '0)))
                                                          (let ((_tl2368124575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2628626287_ '1))
                        (_target2367924573_
                         (##vector-ref ___splice2628626287_ '0)))
                    (if (gx#stx-null? _tl2368124575_)
                        (___match2644726448_
                         _e2362124787_
                         _hd2362224790_
                         _tl2362324792_
                         _e2362424795_
                         _hd2362524798_
                         _tl2362624800_
                         ___splice2628626287_
                         _target2367924573_
                         _tl2368124575_)
                        (___match2645326454_
                         _e2362124787_
                         _hd2362224790_
                         _tl2362324792_))))
                (___match2645326454_
                 _e2362124787_
                 _hd2362224790_
                 _tl2362324792_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2362524798_)
                                                    (let ((___splice2628626287_
                                                           (gx#syntax-split-splice
                                                            _hd2362524798_
                                                            '0)))
                                                      (let ((_tl2368124575_
                                                             (##vector-ref
                                                              ___splice2628626287_
                                                              '1))
                                                            (_target2367924573_
                                                             (##vector-ref
                                                              ___splice2628626287_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2368124575_)
                                                            (___match2644726448_
                                                             _e2362124787_
                                                             _hd2362224790_
                                                             _tl2362324792_
                                                             _e2362424795_
                                                             _hd2362524798_
                                                             _tl2362624800_
                                                             ___splice2628626287_
                                                             _target2367924573_
                                                             _tl2368124575_)
                                                            (___match2645326454_
                                                             _e2362124787_
                                                             _hd2362224790_
                                                             _tl2362324792_))))
                                                    (___match2645326454_
                                                     _e2362124787_
                                                     _hd2362224790_
                                                     _tl2362324792_)))))
                                        (if (gx#stx-pair/null? _hd2362524798_)
                                            (let ((___splice2628626287_
                                                   (gx#syntax-split-splice
                                                    _hd2362524798_
                                                    '0)))
                                              (let ((_tl2368124575_
                                                     (##vector-ref
                                                      ___splice2628626287_
                                                      '1))
                                                    (_target2367924573_
                                                     (##vector-ref
                                                      ___splice2628626287_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2368124575_)
                                                    (___match2644726448_
                                                     _e2362124787_
                                                     _hd2362224790_
                                                     _tl2362324792_
                                                     _e2362424795_
                                                     _hd2362524798_
                                                     _tl2362624800_
                                                     ___splice2628626287_
                                                     _target2367924573_
                                                     _tl2368124575_)
                                                    (___match2645326454_
                                                     _e2362124787_
                                                     _hd2362224790_
                                                     _tl2362324792_))))
                                            (___match2645326454_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_)))))
                                (if (gx#stx-pair/null? _hd2362524798_)
                                    (let ((___splice2628626287_
                                           (gx#syntax-split-splice
                                            _hd2362524798_
                                            '0)))
                                      (let ((_tl2368124575_
                                             (##vector-ref
                                              ___splice2628626287_
                                              '1))
                                            (_target2367924573_
                                             (##vector-ref
                                              ___splice2628626287_
                                              '0)))
                                        (if (gx#stx-null? _tl2368124575_)
                                            (___match2644726448_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_
                                             _e2362424795_
                                             _hd2362524798_
                                             _tl2362624800_
                                             ___splice2628626287_
                                             _target2367924573_
                                             _tl2368124575_)
                                            (___match2645326454_
                                             _e2362124787_
                                             _hd2362224790_
                                             _tl2362324792_))))
                                    (___match2645326454_
                                     _e2362124787_
                                     _hd2362224790_
                                     _tl2362324792_)))))
                        (___match2645326454_
                         _e2362124787_
                         _hd2362224790_
                         _tl2362324792_))))
                (___kont2629826299_)))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx23553_)
      (letrec ((_clause-e23555_
                (lambda (_form23605_)
                  (let ((__obj28522 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj28522
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form23605_)
                       (gxc#dispatch-lambda-form-delegate _form23605_))
                      __obj28522)))))
        (let* ((___stx2674826749_ _stx23553_)
               (_g2355823568_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2674826749_))))
          (let ((___kont2675026751_
                 (lambda (_L23588_)
                   (let ((_clauses23600_ (map _clause-e23555_ _L23588_)))
                     (##structure
                      gxc#!case-lambda::t
                      'case-lambda
                      _clauses23600_))))
                (___kont2675226753_ (lambda () '#f)))
            (let ((___match2675926760_
                   (lambda (_e2356123580_ _hd2356223583_ _tl2356323585_)
                     (let ((_L23588_ _tl2356323585_))
                       (if (andmap1 gxc#dispatch-lambda-form? _L23588_)
                           (___kont2675026751_ _L23588_)
                           (___kont2675226753_))))))
              (if (gx#stx-pair? ___stx2674826749_)
                  (let ((_e2356123580_ (gx#stx-e ___stx2674826749_)))
                    (let ((_tl2356323585_ (##cdr _e2356123580_))
                          (_hd2356223583_ (##car _e2356123580_)))
                      (___match2675926760_
                       _e2356123580_
                       _hd2356223583_
                       _tl2356323585_)))
                  (___kont2675226753_))))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx23458_)
      (let* ((___stx2676226763_ _stx23458_)
             (_g2346123481_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2676226763_))))
        (let ((___kont2676426765_
               (lambda (_L23525_ _L23526_)
                 (let ((_type-e2354323545_
                        (table-ref
                         gxc#basic-expression-type-builtin
                         (gxc#identifier-symbol _L23526_)
                         '#f)))
                   (if _type-e2354323545_
                       (let ((_type-e23548_ _type-e2354323545_))
                         (_type-e23548_ _stx23458_ _L23525_))
                       '#f))))
              (___kont2676626767_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2676226763_)
              (let ((_e2346523493_ (gx#stx-e ___stx2676226763_)))
                (let ((_tl2346723498_ (##cdr _e2346523493_))
                      (_hd2346623496_ (##car _e2346523493_)))
                  (if (gx#stx-pair? _tl2346723498_)
                      (let ((_e2346823501_ (gx#stx-e _tl2346723498_)))
                        (let ((_tl2347023506_ (##cdr _e2346823501_))
                              (_hd2346923504_ (##car _e2346823501_)))
                          (if (gx#stx-pair? _hd2346923504_)
                              (let ((_e2347123509_ (gx#stx-e _hd2346923504_)))
                                (let ((_tl2347323514_ (##cdr _e2347123509_))
                                      (_hd2347223512_ (##car _e2347123509_)))
                                  (if (gx#identifier? _hd2347223512_)
                                      (if (gx#stx-eq? '%#ref _hd2347223512_)
                                          (if (gx#stx-pair? _tl2347323514_)
                                              (let ((_e2347423517_
                                                     (gx#stx-e
                                                      _tl2347323514_)))
                                                (let ((_tl2347623522_
                                                       (##cdr _e2347423517_))
                                                      (_hd2347523520_
                                                       (##car _e2347423517_)))
                                                  (if (gx#stx-null?
                                                       _tl2347623522_)
                                                      (___kont2676426765_
                                                       _tl2347023506_
                                                       _hd2347523520_)
                                                      (___kont2676626767_))))
                                              (___kont2676626767_))
                                          (___kont2676626767_))
                                      (___kont2676626767_))))
                              (___kont2676626767_))))
                      (___kont2676626767_))))
              (___kont2676626767_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx22938_ _args22939_)
      (let* ((___stx2680026801_ _args22939_)
             (_g2294323057_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2680026801_))))
        (let ((___kont2680226803_
               (lambda (_L23407_ _L23408_ _L23409_ _L23410_ _L23411_)
                 (let ((__obj28523 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj28523
                      (gx#stx-e _L23411_)
                      '#f
                      (gx#stx-e _L23410_)
                      '0
                      (gx#stx-e _L23407_)
                      (gx#stx-e _L23408_))
                     __obj28523))))
              (___kont2680426805_
               (lambda (_L23197_ _L23198_ _L23199_ _L23200_ _L23201_ _L23202_)
                 (let* ((_super-t23248_
                         (if (gx#stx-e _L23201_)
                             (gxc#identifier-symbol _L23201_)
                             '#f))
                        (_super-type23250_
                         (if _super-t23248_
                             (gxc#optimizer-resolve-type _super-t23248_)
                             '#f)))
                   (begin
                     (if (if _super-type23250_
                             (not (##structure-instance-of?
                                   _super-type23250_
                                   'gxc#!struct-type::t))
                             '#f)
                         (gxc#raise-compile-error
                          '"Illegal struct-type construction; invalid super type"
                          _stx22938_
                          _L23201_)
                         '#!void)
                     (let ((_fields23266_ (gx#stx-e _L23200_))
                           (_xfields23267_
                            (if _super-type23250_
                                (let ((_super-fields2325223255_
                                       (##structure-ref
                                        _super-type23250_
                                        '3
                                        gxc#!struct-type::t
                                        '#f))
                                      (_super-xfields2325323257_
                                       (##structure-ref
                                        _super-type23250_
                                        '4
                                        gxc#!struct-type::t
                                        '#f)))
                                  (if _super-fields2325223255_
                                      (if _super-xfields2325323257_
                                          (let ((_super-fields23260_
                                                 _super-fields2325223255_)
                                                (_super-xfields23261_
                                                 _super-xfields2325323257_))
                                            (fx+ _super-fields23260_
                                                 _super-xfields23261_))
                                          '#f)
                                      '#f))
                                '#f))
                           (_plist23268_ (gx#stx-e _L23198_))
                           (_ctor23269_
                            (let ((_$e23263_ (gx#stx-e _L23197_)))
                              (if _$e23263_
                                  (values _$e23263_)
                                  (if _super-type23250_
                                      (##structure-ref
                                       _super-type23250_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)
                                      (if _super-t23248_ '#!void '#f))))))
                       (let ((__obj28524 (make-object gxc#!struct-type::t '7)))
                         (begin
                           (gxc#!struct-type:::init!
                            __obj28524
                            (gx#stx-e _L23202_)
                            _super-t23248_
                            _fields23266_
                            _xfields23267_
                            _ctor23269_
                            _plist23268_)
                           __obj28524)))))))
              (___kont2680626807_
               (lambda ()
                 (begin
                   (gxc#verbose
                    '"make-struct-type: can't infer type "
                    (gx#syntax->datum _stx22938_))
                   '#f))))
          (if (gx#stx-pair? ___stx2680026801_)
              (let ((_e2295023276_ (gx#stx-e ___stx2680026801_)))
                (let ((_tl2295223281_ (##cdr _e2295023276_))
                      (_hd2295123279_ (##car _e2295023276_)))
                  (if (gx#stx-pair? _hd2295123279_)
                      (let ((_e2295323284_ (gx#stx-e _hd2295123279_)))
                        (let ((_tl2295523289_ (##cdr _e2295323284_))
                              (_hd2295423287_ (##car _e2295323284_)))
                          (if (gx#identifier? _hd2295423287_)
                              (if (gx#stx-eq? '%#quote _hd2295423287_)
                                  (if (gx#stx-pair? _tl2295523289_)
                                      (let ((_e2295623292_
                                             (gx#stx-e _tl2295523289_)))
                                        (let ((_tl2295823297_
                                               (##cdr _e2295623292_))
                                              (_hd2295723295_
                                               (##car _e2295623292_)))
                                          (if (gx#stx-null? _tl2295823297_)
                                              (if (gx#stx-pair? _tl2295223281_)
                                                  (let ((_e2295923300_
                                                         (gx#stx-e
                                                          _tl2295223281_)))
                                                    (let ((_tl2296123305_
                                                           (##cdr _e2295923300_))
                                                          (_hd2296023303_
                                                           (##car _e2295923300_)))
                                                      (if (gx#stx-pair?
                                                           _hd2296023303_)
                                                          (let ((_e2296223308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2296023303_)))
                    (let ((_tl2296423313_ (##cdr _e2296223308_))
                          (_hd2296323311_ (##car _e2296223308_)))
                      (if (gx#identifier? _hd2296323311_)
                          (if (gx#stx-eq? '%#quote _hd2296323311_)
                              (if (gx#stx-pair? _tl2296423313_)
                                  (let ((_e2296523316_
                                         (gx#stx-e _tl2296423313_)))
                                    (let ((_tl2296723321_
                                           (##cdr _e2296523316_))
                                          (_hd2296623319_
                                           (##car _e2296523316_)))
                                      (if (gx#stx-datum? _hd2296623319_)
                                          (let ((_e2296823324_
                                                 (gx#stx-e _hd2296623319_)))
                                            (if (equal? _e2296823324_ '#f)
                                                (if (gx#stx-null?
                                                     _tl2296723321_)
                                                    (if (gx#stx-pair?
                                                         _tl2296123305_)
                                                        (let ((_e2296923327_
                                                               (gx#stx-e
                                                                _tl2296123305_)))
                                                          (let ((_tl2297123332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2296923327_))
                        (_hd2297023330_ (##car _e2296923327_)))
                    (if (gx#stx-pair? _hd2297023330_)
                        (let ((_e2297223335_ (gx#stx-e _hd2297023330_)))
                          (let ((_tl2297423340_ (##cdr _e2297223335_))
                                (_hd2297323338_ (##car _e2297223335_)))
                            (if (gx#identifier? _hd2297323338_)
                                (if (gx#stx-eq? '%#quote _hd2297323338_)
                                    (if (gx#stx-pair? _tl2297423340_)
                                        (let ((_e2297523343_
                                               (gx#stx-e _tl2297423340_)))
                                          (let ((_tl2297723348_
                                                 (##cdr _e2297523343_))
                                                (_hd2297623346_
                                                 (##car _e2297523343_)))
                                            (if (gx#stx-null? _tl2297723348_)
                                                (if (gx#stx-pair?
                                                     _tl2297123332_)
                                                    (let ((_e2297823351_
                                                           (gx#stx-e
                                                            _tl2297123332_)))
                                                      (let ((_tl2298023356_
                                                             (##cdr _e2297823351_))
                                                            (_hd2297923354_
                                                             (##car _e2297823351_)))
                                                        (if (gx#stx-pair?
                                                             _tl2298023356_)
                                                            (let ((_e2298123359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2298023356_)))
                      (let ((_tl2298323364_ (##cdr _e2298123359_))
                            (_hd2298223362_ (##car _e2298123359_)))
                        (if (gx#stx-pair? _hd2298223362_)
                            (let ((_e2298423367_ (gx#stx-e _hd2298223362_)))
                              (let ((_tl2298623372_ (##cdr _e2298423367_))
                                    (_hd2298523370_ (##car _e2298423367_)))
                                (if (gx#identifier? _hd2298523370_)
                                    (if (gx#stx-eq? '%#quote _hd2298523370_)
                                        (if (gx#stx-pair? _tl2298623372_)
                                            (let ((_e2298723375_
                                                   (gx#stx-e _tl2298623372_)))
                                              (let ((_tl2298923380_
                                                     (##cdr _e2298723375_))
                                                    (_hd2298823378_
                                                     (##car _e2298723375_)))
                                                (if (gx#stx-null?
                                                     _tl2298923380_)
                                                    (if (gx#stx-pair?
                                                         _tl2298323364_)
                                                        (let ((_e2299023383_
                                                               (gx#stx-e
                                                                _tl2298323364_)))
                                                          (let ((_tl2299223388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2299023383_))
                        (_hd2299123386_ (##car _e2299023383_)))
                    (if (gx#stx-pair? _hd2299123386_)
                        (let ((_e2299323391_ (gx#stx-e _hd2299123386_)))
                          (let ((_tl2299523396_ (##cdr _e2299323391_))
                                (_hd2299423394_ (##car _e2299323391_)))
                            (if (gx#identifier? _hd2299423394_)
                                (if (gx#stx-eq? '%#quote _hd2299423394_)
                                    (if (gx#stx-pair? _tl2299523396_)
                                        (let ((_e2299623399_
                                               (gx#stx-e _tl2299523396_)))
                                          (let ((_tl2299823404_
                                                 (##cdr _e2299623399_))
                                                (_hd2299723402_
                                                 (##car _e2299623399_)))
                                            (if (gx#stx-null? _tl2299823404_)
                                                (___kont2680226803_
                                                 _hd2299723402_
                                                 _hd2298823378_
                                                 _hd2297923354_
                                                 _hd2297623346_
                                                 _hd2295723295_)
                                                (___kont2680626807_))))
                                        (___kont2680626807_))
                                    (___kont2680626807_))
                                (___kont2680626807_))))
                        (___kont2680626807_))))
                (___kont2680626807_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2680626807_))))
                                            (___kont2680626807_))
                                        (___kont2680626807_))
                                    (___kont2680626807_))))
                            (___kont2680626807_))))
                    (___kont2680626807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2680626807_))
                                                (___kont2680626807_))))
                                        (___kont2680626807_))
                                    (___kont2680626807_))
                                (___kont2680626807_))))
                        (___kont2680626807_))))
                (___kont2680626807_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2680626807_))
                                                (___kont2680626807_)))
                                          (___kont2680626807_))))
                                  (___kont2680626807_))
                              (if (gx#stx-eq? '%#ref _hd2296323311_)
                                  (if (gx#stx-pair? _tl2296423313_)
                                      (let ((_e2302023109_
                                             (gx#stx-e _tl2296423313_)))
                                        (let ((_tl2302223114_
                                               (##cdr _e2302023109_))
                                              (_hd2302123112_
                                               (##car _e2302023109_)))
                                          (if (gx#stx-null? _tl2302223114_)
                                              (if (gx#stx-pair? _tl2296123305_)
                                                  (let ((_e2302323117_
                                                         (gx#stx-e
                                                          _tl2296123305_)))
                                                    (let ((_tl2302523122_
                                                           (##cdr _e2302323117_))
                                                          (_hd2302423120_
                                                           (##car _e2302323117_)))
                                                      (if (gx#stx-pair?
                                                           _hd2302423120_)
                                                          (let ((_e2302623125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2302423120_)))
                    (let ((_tl2302823130_ (##cdr _e2302623125_))
                          (_hd2302723128_ (##car _e2302623125_)))
                      (if (gx#identifier? _hd2302723128_)
                          (if (gx#stx-eq? '%#quote _hd2302723128_)
                              (if (gx#stx-pair? _tl2302823130_)
                                  (let ((_e2302923133_
                                         (gx#stx-e _tl2302823130_)))
                                    (let ((_tl2303123138_
                                           (##cdr _e2302923133_))
                                          (_hd2303023136_
                                           (##car _e2302923133_)))
                                      (if (gx#stx-null? _tl2303123138_)
                                          (if (gx#stx-pair? _tl2302523122_)
                                              (let ((_e2303223141_
                                                     (gx#stx-e
                                                      _tl2302523122_)))
                                                (let ((_tl2303423146_
                                                       (##cdr _e2303223141_))
                                                      (_hd2303323144_
                                                       (##car _e2303223141_)))
                                                  (if (gx#stx-pair?
                                                       _tl2303423146_)
                                                      (let ((_e2303523149_
                                                             (gx#stx-e
                                                              _tl2303423146_)))
                                                        (let ((_tl2303723154_
                                                               (##cdr _e2303523149_))
                                                              (_hd2303623152_
                                                               (##car _e2303523149_)))
                                                          (if (gx#stx-pair?
                                                               _hd2303623152_)
                                                              (let ((_e2303823157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2303623152_)))
                        (let ((_tl2304023162_ (##cdr _e2303823157_))
                              (_hd2303923160_ (##car _e2303823157_)))
                          (if (gx#identifier? _hd2303923160_)
                              (if (gx#stx-eq? '%#quote _hd2303923160_)
                                  (if (gx#stx-pair? _tl2304023162_)
                                      (let ((_e2304123165_
                                             (gx#stx-e _tl2304023162_)))
                                        (let ((_tl2304323170_
                                               (##cdr _e2304123165_))
                                              (_hd2304223168_
                                               (##car _e2304123165_)))
                                          (if (gx#stx-null? _tl2304323170_)
                                              (if (gx#stx-pair? _tl2303723154_)
                                                  (let ((_e2304423173_
                                                         (gx#stx-e
                                                          _tl2303723154_)))
                                                    (let ((_tl2304623178_
                                                           (##cdr _e2304423173_))
                                                          (_hd2304523176_
                                                           (##car _e2304423173_)))
                                                      (if (gx#stx-pair?
                                                           _hd2304523176_)
                                                          (let ((_e2304723181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2304523176_)))
                    (let ((_tl2304923186_ (##cdr _e2304723181_))
                          (_hd2304823184_ (##car _e2304723181_)))
                      (if (gx#identifier? _hd2304823184_)
                          (if (gx#stx-eq? '%#quote _hd2304823184_)
                              (if (gx#stx-pair? _tl2304923186_)
                                  (let ((_e2305023189_
                                         (gx#stx-e _tl2304923186_)))
                                    (let ((_tl2305223194_
                                           (##cdr _e2305023189_))
                                          (_hd2305123192_
                                           (##car _e2305023189_)))
                                      (if (gx#stx-null? _tl2305223194_)
                                          (___kont2680426805_
                                           _hd2305123192_
                                           _hd2304223168_
                                           _hd2303323144_
                                           _hd2303023136_
                                           _hd2302123112_
                                           _hd2295723295_)
                                          (___kont2680626807_))))
                                  (___kont2680626807_))
                              (___kont2680626807_))
                          (___kont2680626807_))))
                  (___kont2680626807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2680626807_))
                                              (___kont2680626807_))))
                                      (___kont2680626807_))
                                  (___kont2680626807_))
                              (___kont2680626807_))))
                      (___kont2680626807_))))
              (___kont2680626807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2680626807_))
                                          (___kont2680626807_))))
                                  (___kont2680626807_))
                              (___kont2680626807_))
                          (___kont2680626807_))))
                  (___kont2680626807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2680626807_))
                                              (___kont2680626807_))))
                                      (___kont2680626807_))
                                  (___kont2680626807_)))
                          (___kont2680626807_))))
                  (___kont2680626807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2680626807_))
                                              (___kont2680626807_))))
                                      (___kont2680626807_))
                                  (___kont2680626807_))
                              (___kont2680626807_))))
                      (___kont2680626807_))))
              (___kont2680626807_))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx22864_ _args22865_)
      (let* ((___stx2706827069_ _args22865_)
             (_g2286822884_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2706827069_))))
        (let ((___kont2707027071_
               (lambda (_L22920_)
                 (##structure
                  gxc#!struct-pred::t
                  (gxc#identifier-symbol _L22920_))))
              (___kont2707227073_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2706827069_)
              (let ((_e2287122896_ (gx#stx-e ___stx2706827069_)))
                (let ((_tl2287322901_ (##cdr _e2287122896_))
                      (_hd2287222899_ (##car _e2287122896_)))
                  (if (gx#stx-pair? _hd2287222899_)
                      (let ((_e2287422904_ (gx#stx-e _hd2287222899_)))
                        (let ((_tl2287622909_ (##cdr _e2287422904_))
                              (_hd2287522907_ (##car _e2287422904_)))
                          (if (gx#identifier? _hd2287522907_)
                              (if (gx#stx-eq? '%#ref _hd2287522907_)
                                  (if (gx#stx-pair? _tl2287622909_)
                                      (let ((_e2287722912_
                                             (gx#stx-e _tl2287622909_)))
                                        (let ((_tl2287922917_
                                               (##cdr _e2287722912_))
                                              (_hd2287822915_
                                               (##car _e2287722912_)))
                                          (if (gx#stx-null? _tl2287922917_)
                                              (if (gx#stx-null? _tl2287322901_)
                                                  (___kont2707027071_
                                                   _hd2287822915_)
                                                  (___kont2707227073_))
                                              (___kont2707227073_))))
                                      (___kont2707227073_))
                                  (___kont2707227073_))
                              (___kont2707227073_))))
                      (___kont2707227073_))))
              (___kont2707227073_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx22735_ _args22736_ _unchecked?22737_)
        (let* ((___stx2710227103_ _args22736_)
               (_g2274022766_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2710227103_))))
          (let ((___kont2710427105_
                 (lambda (_L22826_ _L22827_)
                   (##structure
                    gxc#!struct-getf::t
                    (gxc#identifier-symbol _L22827_)
                    (gx#stx-e _L22826_)
                    _unchecked?22737_)))
                (___kont2710627107_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2710227103_)
                (let ((_e2274422778_ (gx#stx-e ___stx2710227103_)))
                  (let ((_tl2274622783_ (##cdr _e2274422778_))
                        (_hd2274522781_ (##car _e2274422778_)))
                    (if (gx#stx-pair? _hd2274522781_)
                        (let ((_e2274722786_ (gx#stx-e _hd2274522781_)))
                          (let ((_tl2274922791_ (##cdr _e2274722786_))
                                (_hd2274822789_ (##car _e2274722786_)))
                            (if (gx#identifier? _hd2274822789_)
                                (if (gx#stx-eq? '%#ref _hd2274822789_)
                                    (if (gx#stx-pair? _tl2274922791_)
                                        (let ((_e2275022794_
                                               (gx#stx-e _tl2274922791_)))
                                          (let ((_tl2275222799_
                                                 (##cdr _e2275022794_))
                                                (_hd2275122797_
                                                 (##car _e2275022794_)))
                                            (if (gx#stx-null? _tl2275222799_)
                                                (if (gx#stx-pair?
                                                     _tl2274622783_)
                                                    (let ((_e2275322802_
                                                           (gx#stx-e
                                                            _tl2274622783_)))
                                                      (let ((_tl2275522807_
                                                             (##cdr _e2275322802_))
                                                            (_hd2275422805_
                                                             (##car _e2275322802_)))
                                                        (if (gx#stx-pair?
                                                             _hd2275422805_)
                                                            (let ((_e2275622810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2275422805_)))
                      (let ((_tl2275822815_ (##cdr _e2275622810_))
                            (_hd2275722813_ (##car _e2275622810_)))
                        (if (gx#identifier? _hd2275722813_)
                            (if (gx#stx-eq? '%#quote _hd2275722813_)
                                (if (gx#stx-pair? _tl2275822815_)
                                    (let ((_e2275922818_
                                           (gx#stx-e _tl2275822815_)))
                                      (let ((_tl2276122823_
                                             (##cdr _e2275922818_))
                                            (_hd2276022821_
                                             (##car _e2275922818_)))
                                        (if (gx#stx-null? _tl2276122823_)
                                            (if (gx#stx-null? _tl2275522807_)
                                                (___kont2710427105_
                                                 _hd2276022821_
                                                 _hd2275122797_)
                                                (___kont2710627107_))
                                            (___kont2710627107_))))
                                    (___kont2710627107_))
                                (___kont2710627107_))
                            (___kont2710627107_))))
                    (___kont2710627107_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2710627107_))
                                                (___kont2710627107_))))
                                        (___kont2710627107_))
                                    (___kont2710627107_))
                                (___kont2710627107_))))
                        (___kont2710627107_))))
                (___kont2710627107_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx22855_ _args22856_)
          (let ((_unchecked?22858_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx22855_
             _args22856_
             _unchecked?22858_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g28530_
          (let ((_g28529_ (length _g28530_)))
            (cond ((##fx= _g28529_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g28530_))
                  ((##fx= _g28529_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g28530_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g28530_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx22605_ _args22606_ _unchecked?22607_)
        (let* ((___stx2716027161_ _args22606_)
               (_g2261022636_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2716027161_))))
          (let ((___kont2716227163_
                 (lambda (_L22696_ _L22697_)
                   (##structure
                    gxc#!struct-setf::t
                    (gxc#identifier-symbol _L22697_)
                    (gx#stx-e _L22696_)
                    _unchecked?22607_)))
                (___kont2716427165_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2716027161_)
                (let ((_e2261422648_ (gx#stx-e ___stx2716027161_)))
                  (let ((_tl2261622653_ (##cdr _e2261422648_))
                        (_hd2261522651_ (##car _e2261422648_)))
                    (if (gx#stx-pair? _hd2261522651_)
                        (let ((_e2261722656_ (gx#stx-e _hd2261522651_)))
                          (let ((_tl2261922661_ (##cdr _e2261722656_))
                                (_hd2261822659_ (##car _e2261722656_)))
                            (if (gx#identifier? _hd2261822659_)
                                (if (gx#stx-eq? '%#ref _hd2261822659_)
                                    (if (gx#stx-pair? _tl2261922661_)
                                        (let ((_e2262022664_
                                               (gx#stx-e _tl2261922661_)))
                                          (let ((_tl2262222669_
                                                 (##cdr _e2262022664_))
                                                (_hd2262122667_
                                                 (##car _e2262022664_)))
                                            (if (gx#stx-null? _tl2262222669_)
                                                (if (gx#stx-pair?
                                                     _tl2261622653_)
                                                    (let ((_e2262322672_
                                                           (gx#stx-e
                                                            _tl2261622653_)))
                                                      (let ((_tl2262522677_
                                                             (##cdr _e2262322672_))
                                                            (_hd2262422675_
                                                             (##car _e2262322672_)))
                                                        (if (gx#stx-pair?
                                                             _hd2262422675_)
                                                            (let ((_e2262622680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2262422675_)))
                      (let ((_tl2262822685_ (##cdr _e2262622680_))
                            (_hd2262722683_ (##car _e2262622680_)))
                        (if (gx#identifier? _hd2262722683_)
                            (if (gx#stx-eq? '%#quote _hd2262722683_)
                                (if (gx#stx-pair? _tl2262822685_)
                                    (let ((_e2262922688_
                                           (gx#stx-e _tl2262822685_)))
                                      (let ((_tl2263122693_
                                             (##cdr _e2262922688_))
                                            (_hd2263022691_
                                             (##car _e2262922688_)))
                                        (if (gx#stx-null? _tl2263122693_)
                                            (if (gx#stx-null? _tl2262522677_)
                                                (___kont2716227163_
                                                 _hd2263022691_
                                                 _hd2262122667_)
                                                (___kont2716427165_))
                                            (___kont2716427165_))))
                                    (___kont2716427165_))
                                (___kont2716427165_))
                            (___kont2716427165_))))
                    (___kont2716427165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2716427165_))
                                                (___kont2716427165_))))
                                        (___kont2716427165_))
                                    (___kont2716427165_))
                                (___kont2716427165_))))
                        (___kont2716427165_))))
                (___kont2716427165_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx22725_ _args22726_)
          (let ((_unchecked?22728_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx22725_
             _args22726_
             _unchecked?22728_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g28532_
          (let ((_g28531_ (length _g28532_)))
            (cond ((##fx= _g28531_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g28532_))
                  ((##fx= _g28531_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g28532_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g28532_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx22601_ _args22602_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx22601_
       _args22602_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx22598_ _args22599_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx22598_
       _args22599_
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
    (lambda (_stx22547_)
      (let* ((_g2254922562_
              (lambda (_g2255022559_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2255022559_)))
             (_g2254822595_
              (lambda (_g2255022565_)
                (if (gx#stx-pair? _g2255022565_)
                    (let ((_e2255222567_ (gx#stx-e _g2255022565_)))
                      (let ((_hd2255322570_ (##car _e2255222567_))
                            (_tl2255422572_ (##cdr _e2255222567_)))
                        (if (gx#stx-pair? _tl2255422572_)
                            (let ((_e2255522575_ (gx#stx-e _tl2255422572_)))
                              (let ((_hd2255622578_ (##car _e2255522575_))
                                    (_tl2255722580_ (##cdr _e2255522575_)))
                                (if (gx#stx-null? _tl2255722580_)
                                    ((lambda (_L22583_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L22583_)))
                                     _hd2255622578_)
                                    (_g2254922562_ _g2255022565_))))
                            (_g2254922562_ _g2255022565_))))
                    (_g2254922562_ _g2255022565_)))))
        (_g2254822595_ _stx22547_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21781_)
      (let* ((___stx2721827219_ _form21781_)
             (_g2178621943_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2721827219_))))
        (let ((___kont2722027221_ (lambda (_L22467_ _L22468_ _L22469_) '#t))
              (___kont2722627227_
               (lambda (_L22255_ _L22256_ _L22257_ _L22258_ _L22259_ _L22260_)
                 '#t))
              (___kont2723227233_
               (lambda (_L22051_ _L22052_ _L22053_ _L22054_) '#t))
              (___kont2723427235_ (lambda () '#f)))
          (let* ((___match2735927360_
                  (lambda (_e2190321955_
                           _hd2190421958_
                           _tl2190521960_
                           _e2190621963_
                           _hd2190721966_
                           _tl2190821968_
                           _e2190921971_
                           _hd2191021974_
                           _tl2191121976_
                           _e2191221979_
                           _hd2191321982_
                           _tl2191421984_
                           _e2191521987_
                           _hd2191621990_
                           _tl2191721992_
                           _e2191821995_
                           _hd2191921998_
                           _tl2192022000_
                           _e2192122003_
                           _hd2192222006_
                           _tl2192322008_
                           _e2192422011_
                           _hd2192522014_
                           _tl2192622016_
                           _e2192722019_
                           _hd2192822022_
                           _tl2192922024_
                           _e2193022027_
                           _hd2193122030_
                           _tl2193222032_
                           _e2193322035_
                           _hd2193422038_
                           _tl2193522040_
                           _e2193622043_
                           _hd2193722046_
                           _tl2193822048_)
                    (let ((_L22051_ _hd2193722046_)
                          (_L22052_ _hd2192822022_)
                          (_L22053_ _hd2191921998_)
                          (_L22054_ _hd2190421958_))
                      (if (if (gx#identifier? _L22054_)
                              (if (gxc#runtime-identifier=? _L22053_ 'apply)
                                  (if (gx#free-identifier=? _L22054_ _L22051_)
                                      (not (gx#free-identifier=?
                                            _L22052_
                                            _L22054_))
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2723227233_
                           _L22051_
                           _L22052_
                           _L22053_
                           _L22054_)
                          (___kont2723427235_)))))
                 (___match2733127332_
                  (lambda (_e2190321955_
                           _hd2190421958_
                           _tl2190521960_
                           _e2190621963_
                           _hd2190721966_
                           _tl2190821968_
                           _e2190921971_
                           _hd2191021974_
                           _tl2191121976_
                           _e2191221979_
                           _hd2191321982_
                           _tl2191421984_
                           _e2191521987_
                           _hd2191621990_
                           _tl2191721992_
                           _e2191821995_
                           _hd2191921998_
                           _tl2192022000_
                           _e2192122003_
                           _hd2192222006_
                           _tl2192322008_
                           _e2192422011_
                           _hd2192522014_
                           _tl2192622016_
                           _e2192722019_
                           _hd2192822022_
                           _tl2192922024_)
                    (if (gx#stx-pair? _tl2192322008_)
                        (let ((_e2193022027_ (gx#stx-e _tl2192322008_)))
                          (let ((_tl2193222032_ (##cdr _e2193022027_))
                                (_hd2193122030_ (##car _e2193022027_)))
                            (if (gx#stx-pair? _hd2193122030_)
                                (let ((_e2193322035_
                                       (gx#stx-e _hd2193122030_)))
                                  (let ((_tl2193522040_ (##cdr _e2193322035_))
                                        (_hd2193422038_ (##car _e2193322035_)))
                                    (if (gx#identifier? _hd2193422038_)
                                        (if (gx#stx-eq? '%#ref _hd2193422038_)
                                            (if (gx#stx-pair? _tl2193522040_)
                                                (let ((_e2193622043_
                                                       (gx#stx-e
                                                        _tl2193522040_)))
                                                  (let ((_tl2193822048_
                                                         (##cdr _e2193622043_))
                                                        (_hd2193722046_
                                                         (##car _e2193622043_)))
                                                    (if (gx#stx-null?
                                                         _tl2193822048_)
                                                        (if (gx#stx-null?
                                                             _tl2193222032_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2190821968_)
                        (___match2735927360_
                         _e2190321955_
                         _hd2190421958_
                         _tl2190521960_
                         _e2190621963_
                         _hd2190721966_
                         _tl2190821968_
                         _e2190921971_
                         _hd2191021974_
                         _tl2191121976_
                         _e2191221979_
                         _hd2191321982_
                         _tl2191421984_
                         _e2191521987_
                         _hd2191621990_
                         _tl2191721992_
                         _e2191821995_
                         _hd2191921998_
                         _tl2192022000_
                         _e2192122003_
                         _hd2192222006_
                         _tl2192322008_
                         _e2192422011_
                         _hd2192522014_
                         _tl2192622016_
                         _e2192722019_
                         _hd2192822022_
                         _tl2192922024_
                         _e2193022027_
                         _hd2193122030_
                         _tl2193222032_
                         _e2193322035_
                         _hd2193422038_
                         _tl2193522040_
                         _e2193622043_
                         _hd2193722046_
                         _tl2193822048_)
                        (___kont2723427235_))
                    (___kont2723427235_))
                (___kont2723427235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2723427235_))
                                            (___kont2723427235_))
                                        (___kont2723427235_))))
                                (___kont2723427235_))))
                        (___kont2723427235_))))
                 (___match2726127262_
                  (lambda (_e2183922095_
                           _hd2184022098_
                           _tl2184122100_
                           ___splice2722827229_
                           _target2184222103_
                           _tl2184422105_)
                    (letrec ((_loop2184522108_
                              (lambda (_hd2184322111_ _arg2184922113_)
                                (if (gx#stx-pair? _hd2184322111_)
                                    (let ((_e2184622116_
                                           (gx#stx-e _hd2184322111_)))
                                      (let ((_lp-tl2184822121_
                                             (##cdr _e2184622116_))
                                            (_lp-hd2184722119_
                                             (##car _e2184622116_)))
                                        (_loop2184522108_
                                         _lp-tl2184822121_
                                         (cons _lp-hd2184722119_
                                               _arg2184922113_))))
                                    (let ((_arg2185022124_
                                           (reverse _arg2184922113_)))
                                      (if (gx#stx-pair? _tl2184122100_)
                                          (let ((_e2185122127_
                                                 (gx#stx-e _tl2184122100_)))
                                            (let ((_tl2185322132_
                                                   (##cdr _e2185122127_))
                                                  (_hd2185222130_
                                                   (##car _e2185122127_)))
                                              (if (gx#stx-pair? _hd2185222130_)
                                                  (let ((_e2185422135_
                                                         (gx#stx-e
                                                          _hd2185222130_)))
                                                    (let ((_tl2185622140_
                                                           (##cdr _e2185422135_))
                                                          (_hd2185522138_
                                                           (##car _e2185422135_)))
                                                      (if (gx#identifier?
                                                           _hd2185522138_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2185522138_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2185622140_)
                          (let ((_e2185722143_ (gx#stx-e _tl2185622140_)))
                            (let ((_tl2185922148_ (##cdr _e2185722143_))
                                  (_hd2185822146_ (##car _e2185722143_)))
                              (if (gx#stx-pair? _hd2185822146_)
                                  (let ((_e2186022151_
                                         (gx#stx-e _hd2185822146_)))
                                    (let ((_tl2186222156_
                                           (##cdr _e2186022151_))
                                          (_hd2186122154_
                                           (##car _e2186022151_)))
                                      (if (gx#identifier? _hd2186122154_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2186122154_)
                                              (if (gx#stx-pair? _tl2186222156_)
                                                  (let ((_e2186322159_
                                                         (gx#stx-e
                                                          _tl2186222156_)))
                                                    (let ((_tl2186522164_
                                                           (##cdr _e2186322159_))
                                                          (_hd2186422162_
                                                           (##car _e2186322159_)))
                                                      (if (gx#stx-null?
                                                           _tl2186522164_)
                                                          (if (gx#stx-pair?
                                                               _tl2185922148_)
                                                              (let ((_e2186622167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2185922148_)))
                        (let ((_tl2186822172_ (##cdr _e2186622167_))
                              (_hd2186722170_ (##car _e2186622167_)))
                          (if (gx#stx-pair? _hd2186722170_)
                              (let ((_e2186922175_ (gx#stx-e _hd2186722170_)))
                                (let ((_tl2187122180_ (##cdr _e2186922175_))
                                      (_hd2187022178_ (##car _e2186922175_)))
                                  (if (gx#identifier? _hd2187022178_)
                                      (if (gx#stx-eq? '%#ref _hd2187022178_)
                                          (if (gx#stx-pair? _tl2187122180_)
                                              (let ((_e2187222183_
                                                     (gx#stx-e
                                                      _tl2187122180_)))
                                                (let ((_tl2187422188_
                                                       (##cdr _e2187222183_))
                                                      (_hd2187322186_
                                                       (##car _e2187222183_)))
                                                  (if (gx#stx-null?
                                                       _tl2187422188_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2186822172_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2186822172_)
                            '1)
                      (let ((___splice2723027231_
                             (gx#syntax-split-splice _tl2186822172_ '1)))
                        (let ((_tl2187722193_
                               (##vector-ref ___splice2723027231_ '1))
                              (_target2187522191_
                               (##vector-ref ___splice2723027231_ '0)))
                          (if (gx#stx-pair? _tl2187722193_)
                              (let ((_e2188422196_ (gx#stx-e _tl2187722193_)))
                                (let ((_tl2188622201_ (##cdr _e2188422196_))
                                      (_hd2188522199_ (##car _e2188422196_)))
                                  (if (gx#stx-pair? _hd2188522199_)
                                      (let ((_e2188722204_
                                             (gx#stx-e _hd2188522199_)))
                                        (let ((_tl2188922209_
                                               (##cdr _e2188722204_))
                                              (_hd2188822207_
                                               (##car _e2188722204_)))
                                          (if (gx#identifier? _hd2188822207_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2188822207_)
                                                  (if (gx#stx-pair?
                                                       _tl2188922209_)
                                                      (let ((_e2189022212_
                                                             (gx#stx-e
                                                              _tl2188922209_)))
                                                        (let ((_tl2189222217_
                                                               (##cdr _e2189022212_))
                                                              (_hd2189122215_
                                                               (##car _e2189022212_)))
                                                          (if (gx#stx-null?
                                                               _tl2189222217_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2188622201_)
                          (letrec ((_loop2187822220_
                                    (lambda (_hd2187622223_ _xarg2188222225_)
                                      (if (gx#stx-pair? _hd2187622223_)
                                          (let ((_e2187922228_
                                                 (gx#stx-e _hd2187622223_)))
                                            (let ((_lp-tl2188122233_
                                                   (##cdr _e2187922228_))
                                                  (_lp-hd2188022231_
                                                   (##car _e2187922228_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2188022231_)
                                                  (let ((_e2189322236_
                                                         (gx#stx-e
                                                          _lp-hd2188022231_)))
                                                    (let ((_tl2189522241_
                                                           (##cdr _e2189322236_))
                                                          (_hd2189422239_
                                                           (##car _e2189322236_)))
                                                      (if (gx#identifier?
                                                           _hd2189422239_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2189422239_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2189522241_)
                          (let ((_e2189622244_ (gx#stx-e _tl2189522241_)))
                            (let ((_tl2189822249_ (##cdr _e2189622244_))
                                  (_hd2189722247_ (##car _e2189622244_)))
                              (if (gx#stx-null? _tl2189822249_)
                                  (_loop2187822220_
                                   _lp-tl2188122233_
                                   (cons _hd2189722247_ _xarg2188222225_))
                                  (___match2733127332_
                                   _e2183922095_
                                   _hd2184022098_
                                   _tl2184122100_
                                   _e2185122127_
                                   _hd2185222130_
                                   _tl2185322132_
                                   _e2185422135_
                                   _hd2185522138_
                                   _tl2185622140_
                                   _e2185722143_
                                   _hd2185822146_
                                   _tl2185922148_
                                   _e2186022151_
                                   _hd2186122154_
                                   _tl2186222156_
                                   _e2186322159_
                                   _hd2186422162_
                                   _tl2186522164_
                                   _e2186622167_
                                   _hd2186722170_
                                   _tl2186822172_
                                   _e2186922175_
                                   _hd2187022178_
                                   _tl2187122180_
                                   _e2187222183_
                                   _hd2187322186_
                                   _tl2187422188_))))
                          (___match2733127332_
                           _e2183922095_
                           _hd2184022098_
                           _tl2184122100_
                           _e2185122127_
                           _hd2185222130_
                           _tl2185322132_
                           _e2185422135_
                           _hd2185522138_
                           _tl2185622140_
                           _e2185722143_
                           _hd2185822146_
                           _tl2185922148_
                           _e2186022151_
                           _hd2186122154_
                           _tl2186222156_
                           _e2186322159_
                           _hd2186422162_
                           _tl2186522164_
                           _e2186622167_
                           _hd2186722170_
                           _tl2186822172_
                           _e2186922175_
                           _hd2187022178_
                           _tl2187122180_
                           _e2187222183_
                           _hd2187322186_
                           _tl2187422188_))
                      (___match2733127332_
                       _e2183922095_
                       _hd2184022098_
                       _tl2184122100_
                       _e2185122127_
                       _hd2185222130_
                       _tl2185322132_
                       _e2185422135_
                       _hd2185522138_
                       _tl2185622140_
                       _e2185722143_
                       _hd2185822146_
                       _tl2185922148_
                       _e2186022151_
                       _hd2186122154_
                       _tl2186222156_
                       _e2186322159_
                       _hd2186422162_
                       _tl2186522164_
                       _e2186622167_
                       _hd2186722170_
                       _tl2186822172_
                       _e2186922175_
                       _hd2187022178_
                       _tl2187122180_
                       _e2187222183_
                       _hd2187322186_
                       _tl2187422188_))
                  (___match2733127332_
                   _e2183922095_
                   _hd2184022098_
                   _tl2184122100_
                   _e2185122127_
                   _hd2185222130_
                   _tl2185322132_
                   _e2185422135_
                   _hd2185522138_
                   _tl2185622140_
                   _e2185722143_
                   _hd2185822146_
                   _tl2185922148_
                   _e2186022151_
                   _hd2186122154_
                   _tl2186222156_
                   _e2186322159_
                   _hd2186422162_
                   _tl2186522164_
                   _e2186622167_
                   _hd2186722170_
                   _tl2186822172_
                   _e2186922175_
                   _hd2187022178_
                   _tl2187122180_
                   _e2187222183_
                   _hd2187322186_
                   _tl2187422188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2733127332_
                                                   _e2183922095_
                                                   _hd2184022098_
                                                   _tl2184122100_
                                                   _e2185122127_
                                                   _hd2185222130_
                                                   _tl2185322132_
                                                   _e2185422135_
                                                   _hd2185522138_
                                                   _tl2185622140_
                                                   _e2185722143_
                                                   _hd2185822146_
                                                   _tl2185922148_
                                                   _e2186022151_
                                                   _hd2186122154_
                                                   _tl2186222156_
                                                   _e2186322159_
                                                   _hd2186422162_
                                                   _tl2186522164_
                                                   _e2186622167_
                                                   _hd2186722170_
                                                   _tl2186822172_
                                                   _e2186922175_
                                                   _hd2187022178_
                                                   _tl2187122180_
                                                   _e2187222183_
                                                   _hd2187322186_
                                                   _tl2187422188_))))
                                          (let ((_xarg2188322252_
                                                 (reverse _xarg2188222225_)))
                                            (if (gx#stx-null? _tl2185322132_)
                                                (let ((_L22255_ _hd2189122215_)
                                                      (_L22256_
                                                       _xarg2188322252_)
                                                      (_L22257_ _hd2187322186_)
                                                      (_L22258_ _hd2186422162_)
                                                      (_L22259_ _tl2184422105_)
                                                      (_L22260_
                                                       _arg2185022124_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2230322306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2230422308_)
                               (cons _g2230322306_ _g2230422308_))
                             '()
                             _L22260_)))
                  (if (gx#identifier? _L22259_)
                      (if (gxc#runtime-identifier=? _L22258_ 'apply)
                          (if (fx= (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2231022313_
                                                              _g2231122315_)
                                                       (cons _g2231022313_
                                                             _g2231122315_))
                                                     '()
                                                     _L22260_)))
                                   (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2231722320_
                                                              _g2231822322_)
                                                       (cons _g2231722320_
                                                             _g2231822322_))
                                                     '()
                                                     _L22256_))))
                              (if (andmap2 gx#free-identifier=?
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2232422327_
                                                              _g2232522329_)
                                                       (cons _g2232422327_
                                                             _g2232522329_))
                                                     '()
                                                     _L22260_))
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2233122334_
                                                              _g2233222336_)
                                                       (cons _g2233122334_
                                                             _g2233222336_))
                                                     '()
                                                     _L22256_)))
                                  (if (gx#free-identifier=? _L22259_ _L22255_)
                                      (not (find (lambda (_g2233822340_)
                                                   (gx#free-identifier=?
                                                    _g2233822340_
                                                    _L22257_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2234222345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2234322347_)
                     (cons _g2234222345_ _g2234322347_))
                   (cons _L22259_ '())
                   _L22260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '#f)
                                  '#f)
                              '#f)
                          '#f)
                      '#f)
                  '#f)
              (___kont2722627227_
               _L22255_
               _L22256_
               _L22257_
               _L22258_
               _L22259_
               _L22260_)
              (___match2733127332_
               _e2183922095_
               _hd2184022098_
               _tl2184122100_
               _e2185122127_
               _hd2185222130_
               _tl2185322132_
               _e2185422135_
               _hd2185522138_
               _tl2185622140_
               _e2185722143_
               _hd2185822146_
               _tl2185922148_
               _e2186022151_
               _hd2186122154_
               _tl2186222156_
               _e2186322159_
               _hd2186422162_
               _tl2186522164_
               _e2186622167_
               _hd2186722170_
               _tl2186822172_
               _e2186922175_
               _hd2187022178_
               _tl2187122180_
               _e2187222183_
               _hd2187322186_
               _tl2187422188_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2733127332_
                                                 _e2183922095_
                                                 _hd2184022098_
                                                 _tl2184122100_
                                                 _e2185122127_
                                                 _hd2185222130_
                                                 _tl2185322132_
                                                 _e2185422135_
                                                 _hd2185522138_
                                                 _tl2185622140_
                                                 _e2185722143_
                                                 _hd2185822146_
                                                 _tl2185922148_
                                                 _e2186022151_
                                                 _hd2186122154_
                                                 _tl2186222156_
                                                 _e2186322159_
                                                 _hd2186422162_
                                                 _tl2186522164_
                                                 _e2186622167_
                                                 _hd2186722170_
                                                 _tl2186822172_
                                                 _e2186922175_
                                                 _hd2187022178_
                                                 _tl2187122180_
                                                 _e2187222183_
                                                 _hd2187322186_
                                                 _tl2187422188_)))))))
                            (_loop2187822220_ _target2187522191_ '()))
                          (___match2733127332_
                           _e2183922095_
                           _hd2184022098_
                           _tl2184122100_
                           _e2185122127_
                           _hd2185222130_
                           _tl2185322132_
                           _e2185422135_
                           _hd2185522138_
                           _tl2185622140_
                           _e2185722143_
                           _hd2185822146_
                           _tl2185922148_
                           _e2186022151_
                           _hd2186122154_
                           _tl2186222156_
                           _e2186322159_
                           _hd2186422162_
                           _tl2186522164_
                           _e2186622167_
                           _hd2186722170_
                           _tl2186822172_
                           _e2186922175_
                           _hd2187022178_
                           _tl2187122180_
                           _e2187222183_
                           _hd2187322186_
                           _tl2187422188_))
                      (___match2733127332_
                       _e2183922095_
                       _hd2184022098_
                       _tl2184122100_
                       _e2185122127_
                       _hd2185222130_
                       _tl2185322132_
                       _e2185422135_
                       _hd2185522138_
                       _tl2185622140_
                       _e2185722143_
                       _hd2185822146_
                       _tl2185922148_
                       _e2186022151_
                       _hd2186122154_
                       _tl2186222156_
                       _e2186322159_
                       _hd2186422162_
                       _tl2186522164_
                       _e2186622167_
                       _hd2186722170_
                       _tl2186822172_
                       _e2186922175_
                       _hd2187022178_
                       _tl2187122180_
                       _e2187222183_
                       _hd2187322186_
                       _tl2187422188_))))
              (___match2733127332_
               _e2183922095_
               _hd2184022098_
               _tl2184122100_
               _e2185122127_
               _hd2185222130_
               _tl2185322132_
               _e2185422135_
               _hd2185522138_
               _tl2185622140_
               _e2185722143_
               _hd2185822146_
               _tl2185922148_
               _e2186022151_
               _hd2186122154_
               _tl2186222156_
               _e2186322159_
               _hd2186422162_
               _tl2186522164_
               _e2186622167_
               _hd2186722170_
               _tl2186822172_
               _e2186922175_
               _hd2187022178_
               _tl2187122180_
               _e2187222183_
               _hd2187322186_
               _tl2187422188_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2733127332_
                                                   _e2183922095_
                                                   _hd2184022098_
                                                   _tl2184122100_
                                                   _e2185122127_
                                                   _hd2185222130_
                                                   _tl2185322132_
                                                   _e2185422135_
                                                   _hd2185522138_
                                                   _tl2185622140_
                                                   _e2185722143_
                                                   _hd2185822146_
                                                   _tl2185922148_
                                                   _e2186022151_
                                                   _hd2186122154_
                                                   _tl2186222156_
                                                   _e2186322159_
                                                   _hd2186422162_
                                                   _tl2186522164_
                                                   _e2186622167_
                                                   _hd2186722170_
                                                   _tl2186822172_
                                                   _e2186922175_
                                                   _hd2187022178_
                                                   _tl2187122180_
                                                   _e2187222183_
                                                   _hd2187322186_
                                                   _tl2187422188_))
                                              (___match2733127332_
                                               _e2183922095_
                                               _hd2184022098_
                                               _tl2184122100_
                                               _e2185122127_
                                               _hd2185222130_
                                               _tl2185322132_
                                               _e2185422135_
                                               _hd2185522138_
                                               _tl2185622140_
                                               _e2185722143_
                                               _hd2185822146_
                                               _tl2185922148_
                                               _e2186022151_
                                               _hd2186122154_
                                               _tl2186222156_
                                               _e2186322159_
                                               _hd2186422162_
                                               _tl2186522164_
                                               _e2186622167_
                                               _hd2186722170_
                                               _tl2186822172_
                                               _e2186922175_
                                               _hd2187022178_
                                               _tl2187122180_
                                               _e2187222183_
                                               _hd2187322186_
                                               _tl2187422188_))))
                                      (___match2733127332_
                                       _e2183922095_
                                       _hd2184022098_
                                       _tl2184122100_
                                       _e2185122127_
                                       _hd2185222130_
                                       _tl2185322132_
                                       _e2185422135_
                                       _hd2185522138_
                                       _tl2185622140_
                                       _e2185722143_
                                       _hd2185822146_
                                       _tl2185922148_
                                       _e2186022151_
                                       _hd2186122154_
                                       _tl2186222156_
                                       _e2186322159_
                                       _hd2186422162_
                                       _tl2186522164_
                                       _e2186622167_
                                       _hd2186722170_
                                       _tl2186822172_
                                       _e2186922175_
                                       _hd2187022178_
                                       _tl2187122180_
                                       _e2187222183_
                                       _hd2187322186_
                                       _tl2187422188_))))
                              (___match2733127332_
                               _e2183922095_
                               _hd2184022098_
                               _tl2184122100_
                               _e2185122127_
                               _hd2185222130_
                               _tl2185322132_
                               _e2185422135_
                               _hd2185522138_
                               _tl2185622140_
                               _e2185722143_
                               _hd2185822146_
                               _tl2185922148_
                               _e2186022151_
                               _hd2186122154_
                               _tl2186222156_
                               _e2186322159_
                               _hd2186422162_
                               _tl2186522164_
                               _e2186622167_
                               _hd2186722170_
                               _tl2186822172_
                               _e2186922175_
                               _hd2187022178_
                               _tl2187122180_
                               _e2187222183_
                               _hd2187322186_
                               _tl2187422188_))))
                      (___match2733127332_
                       _e2183922095_
                       _hd2184022098_
                       _tl2184122100_
                       _e2185122127_
                       _hd2185222130_
                       _tl2185322132_
                       _e2185422135_
                       _hd2185522138_
                       _tl2185622140_
                       _e2185722143_
                       _hd2185822146_
                       _tl2185922148_
                       _e2186022151_
                       _hd2186122154_
                       _tl2186222156_
                       _e2186322159_
                       _hd2186422162_
                       _tl2186522164_
                       _e2186622167_
                       _hd2186722170_
                       _tl2186822172_
                       _e2186922175_
                       _hd2187022178_
                       _tl2187122180_
                       _e2187222183_
                       _hd2187322186_
                       _tl2187422188_))
                  (___match2733127332_
                   _e2183922095_
                   _hd2184022098_
                   _tl2184122100_
                   _e2185122127_
                   _hd2185222130_
                   _tl2185322132_
                   _e2185422135_
                   _hd2185522138_
                   _tl2185622140_
                   _e2185722143_
                   _hd2185822146_
                   _tl2185922148_
                   _e2186022151_
                   _hd2186122154_
                   _tl2186222156_
                   _e2186322159_
                   _hd2186422162_
                   _tl2186522164_
                   _e2186622167_
                   _hd2186722170_
                   _tl2186822172_
                   _e2186922175_
                   _hd2187022178_
                   _tl2187122180_
                   _e2187222183_
                   _hd2187322186_
                   _tl2187422188_))
              (___kont2723427235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2723427235_))
                                          (___kont2723427235_))
                                      (___kont2723427235_))))
                              (___kont2723427235_))))
                      (___kont2723427235_))
                  (___kont2723427235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2723427235_))
                                              (___kont2723427235_))
                                          (___kont2723427235_))))
                                  (___kont2723427235_))))
                          (___kont2723427235_))
                      (___kont2723427235_))
                  (___kont2723427235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2723427235_))))
                                          (___kont2723427235_)))))))
                      (_loop2184522108_ _target2184222103_ '()))))
                 (___match2724927250_
                  (lambda (_e2179122355_
                           _hd2179222358_
                           _tl2179322360_
                           ___splice2722227223_
                           _target2179422363_
                           _tl2179622365_)
                    (letrec ((_loop2179722368_
                              (lambda (_hd2179522371_ _arg2180122373_)
                                (if (gx#stx-pair? _hd2179522371_)
                                    (let ((_e2179822376_
                                           (gx#stx-e _hd2179522371_)))
                                      (let ((_lp-tl2180022381_
                                             (##cdr _e2179822376_))
                                            (_lp-hd2179922379_
                                             (##car _e2179822376_)))
                                        (_loop2179722368_
                                         _lp-tl2180022381_
                                         (cons _lp-hd2179922379_
                                               _arg2180122373_))))
                                    (let ((_arg2180222384_
                                           (reverse _arg2180122373_)))
                                      (if (gx#stx-pair? _tl2179322360_)
                                          (let ((_e2180322387_
                                                 (gx#stx-e _tl2179322360_)))
                                            (let ((_tl2180522392_
                                                   (##cdr _e2180322387_))
                                                  (_hd2180422390_
                                                   (##car _e2180322387_)))
                                              (if (gx#stx-pair? _hd2180422390_)
                                                  (let ((_e2180622395_
                                                         (gx#stx-e
                                                          _hd2180422390_)))
                                                    (let ((_tl2180822400_
                                                           (##cdr _e2180622395_))
                                                          (_hd2180722398_
                                                           (##car _e2180622395_)))
                                                      (if (gx#identifier?
                                                           _hd2180722398_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2180722398_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2180822400_)
                          (let ((_e2180922403_ (gx#stx-e _tl2180822400_)))
                            (let ((_tl2181122408_ (##cdr _e2180922403_))
                                  (_hd2181022406_ (##car _e2180922403_)))
                              (if (gx#stx-pair? _hd2181022406_)
                                  (let ((_e2181222411_
                                         (gx#stx-e _hd2181022406_)))
                                    (let ((_tl2181422416_
                                           (##cdr _e2181222411_))
                                          (_hd2181322414_
                                           (##car _e2181222411_)))
                                      (if (gx#identifier? _hd2181322414_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2181322414_)
                                              (if (gx#stx-pair? _tl2181422416_)
                                                  (let ((_e2181522419_
                                                         (gx#stx-e
                                                          _tl2181422416_)))
                                                    (let ((_tl2181722424_
                                                           (##cdr _e2181522419_))
                                                          (_hd2181622422_
                                                           (##car _e2181522419_)))
                                                      (if (gx#stx-null?
                                                           _tl2181722424_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2181122408_)
                                                              (let ((___splice2722427225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2181122408_ '0)))
                        (let ((_tl2182022429_
                               (##vector-ref ___splice2722427225_ '1))
                              (_target2181822427_
                               (##vector-ref ___splice2722427225_ '0)))
                          (if (gx#stx-null? _tl2182022429_)
                              (letrec ((_loop2182122432_
                                        (lambda (_hd2181922435_
                                                 _xarg2182522437_)
                                          (if (gx#stx-pair? _hd2181922435_)
                                              (let ((_e2182222440_
                                                     (gx#stx-e
                                                      _hd2181922435_)))
                                                (let ((_lp-tl2182422445_
                                                       (##cdr _e2182222440_))
                                                      (_lp-hd2182322443_
                                                       (##car _e2182222440_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2182322443_)
                                                      (let ((_e2182722448_
                                                             (gx#stx-e
                                                              _lp-hd2182322443_)))
                                                        (let ((_tl2182922453_
                                                               (##cdr _e2182722448_))
                                                              (_hd2182822451_
                                                               (##car _e2182722448_)))
                                                          (if (gx#identifier?
                                                               _hd2182822451_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2182822451_)
                          (if (gx#stx-pair? _tl2182922453_)
                              (let ((_e2183022456_ (gx#stx-e _tl2182922453_)))
                                (let ((_tl2183222461_ (##cdr _e2183022456_))
                                      (_hd2183122459_ (##car _e2183022456_)))
                                  (if (gx#stx-null? _tl2183222461_)
                                      (_loop2182122432_
                                       _lp-tl2182422445_
                                       (cons _hd2183122459_ _xarg2182522437_))
                                      (___match2726127262_
                                       _e2179122355_
                                       _hd2179222358_
                                       _tl2179322360_
                                       ___splice2722227223_
                                       _target2179422363_
                                       _tl2179622365_))))
                              (___match2726127262_
                               _e2179122355_
                               _hd2179222358_
                               _tl2179322360_
                               ___splice2722227223_
                               _target2179422363_
                               _tl2179622365_))
                          (___match2726127262_
                           _e2179122355_
                           _hd2179222358_
                           _tl2179322360_
                           ___splice2722227223_
                           _target2179422363_
                           _tl2179622365_))
                      (___match2726127262_
                       _e2179122355_
                       _hd2179222358_
                       _tl2179322360_
                       ___splice2722227223_
                       _target2179422363_
                       _tl2179622365_))))
              (___match2726127262_
               _e2179122355_
               _hd2179222358_
               _tl2179322360_
               ___splice2722227223_
               _target2179422363_
               _tl2179622365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2182622464_
                                                     (reverse _xarg2182522437_)))
                                                (if (gx#stx-null?
                                                     _tl2180522392_)
                                                    (let ((_L22467_
                                                           _xarg2182622464_)
                                                          (_L22468_
                                                           _hd2181622422_)
                                                          (_L22469_
                                                           _arg2180222384_))
                                                      (if (if (gx#identifier-list?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2249722500_ _g2249822502_)
                                   (cons _g2249722500_ _g2249822502_))
                                 '()
                                 _L22469_)))
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2250422507_
                                                          _g2250522509_)
                                                   (cons _g2250422507_
                                                         _g2250522509_))
                                                 '()
                                                 _L22469_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2251122514_
                                                          _g2251222516_)
                                                   (cons _g2251122514_
                                                         _g2251222516_))
                                                 '()
                                                 _L22467_))))
                          (if (andmap2 gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2251822521_
                                                          _g2251922523_)
                                                   (cons _g2251822521_
                                                         _g2251922523_))
                                                 '()
                                                 _L22469_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2252522528_
                                                          _g2252622530_)
                                                   (cons _g2252522528_
                                                         _g2252622530_))
                                                 '()
                                                 _L22467_)))
                              (not (find (lambda (_g2253222534_)
                                           (gx#free-identifier=?
                                            _g2253222534_
                                            _L22468_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2253622539_
                                                            _g2253722541_)
                                                     (cons _g2253622539_
                                                           _g2253722541_))
                                                   '()
                                                   _L22469_))))
                              '#f)
                          '#f)
                      '#f)
                  (___kont2722027221_ _L22467_ _L22468_ _L22469_)
                  (___match2726127262_
                   _e2179122355_
                   _hd2179222358_
                   _tl2179322360_
                   ___splice2722227223_
                   _target2179422363_
                   _tl2179622365_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2726127262_
                                                     _e2179122355_
                                                     _hd2179222358_
                                                     _tl2179322360_
                                                     ___splice2722227223_
                                                     _target2179422363_
                                                     _tl2179622365_)))))))
                                (_loop2182122432_ _target2181822427_ '()))
                              (___match2726127262_
                               _e2179122355_
                               _hd2179222358_
                               _tl2179322360_
                               ___splice2722227223_
                               _target2179422363_
                               _tl2179622365_))))
                      (___match2726127262_
                       _e2179122355_
                       _hd2179222358_
                       _tl2179322360_
                       ___splice2722227223_
                       _target2179422363_
                       _tl2179622365_))
                  (___match2726127262_
                   _e2179122355_
                   _hd2179222358_
                   _tl2179322360_
                   ___splice2722227223_
                   _target2179422363_
                   _tl2179622365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2726127262_
                                                   _e2179122355_
                                                   _hd2179222358_
                                                   _tl2179322360_
                                                   ___splice2722227223_
                                                   _target2179422363_
                                                   _tl2179622365_))
                                              (___match2726127262_
                                               _e2179122355_
                                               _hd2179222358_
                                               _tl2179322360_
                                               ___splice2722227223_
                                               _target2179422363_
                                               _tl2179622365_))
                                          (___match2726127262_
                                           _e2179122355_
                                           _hd2179222358_
                                           _tl2179322360_
                                           ___splice2722227223_
                                           _target2179422363_
                                           _tl2179622365_))))
                                  (___match2726127262_
                                   _e2179122355_
                                   _hd2179222358_
                                   _tl2179322360_
                                   ___splice2722227223_
                                   _target2179422363_
                                   _tl2179622365_))))
                          (___match2726127262_
                           _e2179122355_
                           _hd2179222358_
                           _tl2179322360_
                           ___splice2722227223_
                           _target2179422363_
                           _tl2179622365_))
                      (___match2726127262_
                       _e2179122355_
                       _hd2179222358_
                       _tl2179322360_
                       ___splice2722227223_
                       _target2179422363_
                       _tl2179622365_))
                  (___match2726127262_
                   _e2179122355_
                   _hd2179222358_
                   _tl2179322360_
                   ___splice2722227223_
                   _target2179422363_
                   _tl2179622365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2726127262_
                                                   _e2179122355_
                                                   _hd2179222358_
                                                   _tl2179322360_
                                                   ___splice2722227223_
                                                   _target2179422363_
                                                   _tl2179622365_))))
                                          (___match2726127262_
                                           _e2179122355_
                                           _hd2179222358_
                                           _tl2179322360_
                                           ___splice2722227223_
                                           _target2179422363_
                                           _tl2179622365_)))))))
                      (_loop2179722368_ _target2179422363_ '())))))
            (if (gx#stx-pair? ___stx2721827219_)
                (let ((_e2179122355_ (gx#stx-e ___stx2721827219_)))
                  (let ((_tl2179322360_ (##cdr _e2179122355_))
                        (_hd2179222358_ (##car _e2179122355_)))
                    (if (gx#stx-pair/null? _hd2179222358_)
                        (let ((___splice2722227223_
                               (gx#syntax-split-splice _hd2179222358_ '0)))
                          (let ((_tl2179622365_
                                 (##vector-ref ___splice2722227223_ '1))
                                (_target2179422363_
                                 (##vector-ref ___splice2722227223_ '0)))
                            (if (gx#stx-null? _tl2179622365_)
                                (___match2724927250_
                                 _e2179122355_
                                 _hd2179222358_
                                 _tl2179322360_
                                 ___splice2722227223_
                                 _target2179422363_
                                 _tl2179622365_)
                                (___match2726127262_
                                 _e2179122355_
                                 _hd2179222358_
                                 _tl2179322360_
                                 ___splice2722227223_
                                 _target2179422363_
                                 _tl2179622365_))))
                        (if (gx#stx-pair? _tl2179322360_)
                            (let ((_e2190621963_ (gx#stx-e _tl2179322360_)))
                              (let ((_tl2190821968_ (##cdr _e2190621963_))
                                    (_hd2190721966_ (##car _e2190621963_)))
                                (if (gx#stx-pair? _hd2190721966_)
                                    (let ((_e2190921971_
                                           (gx#stx-e _hd2190721966_)))
                                      (let ((_tl2191121976_
                                             (##cdr _e2190921971_))
                                            (_hd2191021974_
                                             (##car _e2190921971_)))
                                        (if (gx#identifier? _hd2191021974_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2191021974_)
                                                (if (gx#stx-pair?
                                                     _tl2191121976_)
                                                    (let ((_e2191221979_
                                                           (gx#stx-e
                                                            _tl2191121976_)))
                                                      (let ((_tl2191421984_
                                                             (##cdr _e2191221979_))
                                                            (_hd2191321982_
                                                             (##car _e2191221979_)))
                                                        (if (gx#stx-pair?
                                                             _hd2191321982_)
                                                            (let ((_e2191521987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2191321982_)))
                      (let ((_tl2191721992_ (##cdr _e2191521987_))
                            (_hd2191621990_ (##car _e2191521987_)))
                        (if (gx#identifier? _hd2191621990_)
                            (if (gx#stx-eq? '%#ref _hd2191621990_)
                                (if (gx#stx-pair? _tl2191721992_)
                                    (let ((_e2191821995_
                                           (gx#stx-e _tl2191721992_)))
                                      (let ((_tl2192022000_
                                             (##cdr _e2191821995_))
                                            (_hd2191921998_
                                             (##car _e2191821995_)))
                                        (if (gx#stx-null? _tl2192022000_)
                                            (if (gx#stx-pair? _tl2191421984_)
                                                (let ((_e2192122003_
                                                       (gx#stx-e
                                                        _tl2191421984_)))
                                                  (let ((_tl2192322008_
                                                         (##cdr _e2192122003_))
                                                        (_hd2192222006_
                                                         (##car _e2192122003_)))
                                                    (if (gx#stx-pair?
                                                         _hd2192222006_)
                                                        (let ((_e2192422011_
                                                               (gx#stx-e
                                                                _hd2192222006_)))
                                                          (let ((_tl2192622016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2192422011_))
                        (_hd2192522014_ (##car _e2192422011_)))
                    (if (gx#identifier? _hd2192522014_)
                        (if (gx#stx-eq? '%#ref _hd2192522014_)
                            (if (gx#stx-pair? _tl2192622016_)
                                (let ((_e2192722019_
                                       (gx#stx-e _tl2192622016_)))
                                  (let ((_tl2192922024_ (##cdr _e2192722019_))
                                        (_hd2192822022_ (##car _e2192722019_)))
                                    (if (gx#stx-null? _tl2192922024_)
                                        (if (gx#stx-pair? _tl2192322008_)
                                            (let ((_e2193022027_
                                                   (gx#stx-e _tl2192322008_)))
                                              (let ((_tl2193222032_
                                                     (##cdr _e2193022027_))
                                                    (_hd2193122030_
                                                     (##car _e2193022027_)))
                                                (if (gx#stx-pair?
                                                     _hd2193122030_)
                                                    (let ((_e2193322035_
                                                           (gx#stx-e
                                                            _hd2193122030_)))
                                                      (let ((_tl2193522040_
                                                             (##cdr _e2193322035_))
                                                            (_hd2193422038_
                                                             (##car _e2193322035_)))
                                                        (if (gx#identifier?
                                                             _hd2193422038_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2193422038_)
                        (if (gx#stx-pair? _tl2193522040_)
                            (let ((_e2193622043_ (gx#stx-e _tl2193522040_)))
                              (let ((_tl2193822048_ (##cdr _e2193622043_))
                                    (_hd2193722046_ (##car _e2193622043_)))
                                (if (gx#stx-null? _tl2193822048_)
                                    (if (gx#stx-null? _tl2193222032_)
                                        (if (gx#stx-null? _tl2190821968_)
                                            (___match2735927360_
                                             _e2179122355_
                                             _hd2179222358_
                                             _tl2179322360_
                                             _e2190621963_
                                             _hd2190721966_
                                             _tl2190821968_
                                             _e2190921971_
                                             _hd2191021974_
                                             _tl2191121976_
                                             _e2191221979_
                                             _hd2191321982_
                                             _tl2191421984_
                                             _e2191521987_
                                             _hd2191621990_
                                             _tl2191721992_
                                             _e2191821995_
                                             _hd2191921998_
                                             _tl2192022000_
                                             _e2192122003_
                                             _hd2192222006_
                                             _tl2192322008_
                                             _e2192422011_
                                             _hd2192522014_
                                             _tl2192622016_
                                             _e2192722019_
                                             _hd2192822022_
                                             _tl2192922024_
                                             _e2193022027_
                                             _hd2193122030_
                                             _tl2193222032_
                                             _e2193322035_
                                             _hd2193422038_
                                             _tl2193522040_
                                             _e2193622043_
                                             _hd2193722046_
                                             _tl2193822048_)
                                            (___kont2723427235_))
                                        (___kont2723427235_))
                                    (___kont2723427235_))))
                            (___kont2723427235_))
                        (___kont2723427235_))
                    (___kont2723427235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2723427235_))))
                                            (___kont2723427235_))
                                        (___kont2723427235_))))
                                (___kont2723427235_))
                            (___kont2723427235_))
                        (___kont2723427235_))))
                (___kont2723427235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2723427235_))
                                            (___kont2723427235_))))
                                    (___kont2723427235_))
                                (___kont2723427235_))
                            (___kont2723427235_))))
                    (___kont2723427235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2723427235_))
                                                (___kont2723427235_))
                                            (___kont2723427235_))))
                                    (___kont2723427235_))))
                            (___kont2723427235_)))))
                (___kont2723427235_)))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form21249_)
      (let* ((___stx2736227363_ _form21249_)
             (_g2125321377_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2736227363_))))
        (let ((___kont2736427365_
               (lambda (_L21747_ _L21748_ _L21749_)
                 (gxc#identifier-symbol _L21748_)))
              (___kont2737027371_
               (lambda (_L21595_ _L21596_ _L21597_ _L21598_)
                 (gxc#identifier-symbol _L21595_)))
              (___kont2737427375_
               (lambda (_L21462_ _L21463_ _L21464_)
                 (gxc#identifier-symbol _L21462_))))
          (let* ((___match2747127472_
                  (lambda (_e2134321382_
                           _hd2134421385_
                           _tl2134521387_
                           _e2134621390_
                           _hd2134721393_
                           _tl2134821395_
                           _e2134921398_
                           _hd2135021401_
                           _tl2135121403_
                           _e2135221406_
                           _hd2135321409_
                           _tl2135421411_
                           _e2135521414_
                           _hd2135621417_
                           _tl2135721419_
                           _e2135821422_
                           _hd2135921425_
                           _tl2136021427_
                           _e2136121430_
                           _hd2136221433_
                           _tl2136321435_
                           _e2136421438_
                           _hd2136521441_
                           _tl2136621443_
                           _e2136721446_
                           _hd2136821449_
                           _tl2136921451_)
                    (if (gx#stx-pair? _tl2136321435_)
                        (let ((_e2137021454_ (gx#stx-e _tl2136321435_)))
                          (let ((_tl2137221459_ (##cdr _e2137021454_))
                                (_hd2137121457_ (##car _e2137021454_)))
                            (if (gx#stx-null? _tl2137221459_)
                                (if (gx#stx-null? _tl2134821395_)
                                    (___kont2737427375_
                                     _hd2136821449_
                                     _hd2135921425_
                                     _hd2134421385_)
                                    (_g2125321377_))
                                (_g2125321377_))))
                        (_g2125321377_))))
                 (___match2740127402_
                  (lambda (_e2130421499_
                           _hd2130521502_
                           _tl2130621504_
                           ___splice2737227373_
                           _target2130721507_
                           _tl2130921509_)
                    (letrec ((_loop2131021512_
                              (lambda (_hd2130821515_ _arg2131421517_)
                                (if (gx#stx-pair? _hd2130821515_)
                                    (let ((_e2131121520_
                                           (gx#stx-e _hd2130821515_)))
                                      (let ((_lp-tl2131321525_
                                             (##cdr _e2131121520_))
                                            (_lp-hd2131221523_
                                             (##car _e2131121520_)))
                                        (_loop2131021512_
                                         _lp-tl2131321525_
                                         (cons _lp-hd2131221523_
                                               _arg2131421517_))))
                                    (let ((_arg2131521528_
                                           (reverse _arg2131421517_)))
                                      (if (gx#stx-pair? _tl2130621504_)
                                          (let ((_e2131621531_
                                                 (gx#stx-e _tl2130621504_)))
                                            (let ((_tl2131821536_
                                                   (##cdr _e2131621531_))
                                                  (_hd2131721534_
                                                   (##car _e2131621531_)))
                                              (if (gx#stx-pair? _hd2131721534_)
                                                  (let ((_e2131921539_
                                                         (gx#stx-e
                                                          _hd2131721534_)))
                                                    (let ((_tl2132121544_
                                                           (##cdr _e2131921539_))
                                                          (_hd2132021542_
                                                           (##car _e2131921539_)))
                                                      (if (gx#identifier?
                                                           _hd2132021542_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2132021542_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2132121544_)
                          (let ((_e2132221547_ (gx#stx-e _tl2132121544_)))
                            (let ((_tl2132421552_ (##cdr _e2132221547_))
                                  (_hd2132321550_ (##car _e2132221547_)))
                              (if (gx#stx-pair? _hd2132321550_)
                                  (let ((_e2132521555_
                                         (gx#stx-e _hd2132321550_)))
                                    (let ((_tl2132721560_
                                           (##cdr _e2132521555_))
                                          (_hd2132621558_
                                           (##car _e2132521555_)))
                                      (if (gx#identifier? _hd2132621558_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2132621558_)
                                              (if (gx#stx-pair? _tl2132721560_)
                                                  (let ((_e2132821563_
                                                         (gx#stx-e
                                                          _tl2132721560_)))
                                                    (let ((_tl2133021568_
                                                           (##cdr _e2132821563_))
                                                          (_hd2132921566_
                                                           (##car _e2132821563_)))
                                                      (if (gx#stx-null?
                                                           _tl2133021568_)
                                                          (if (gx#stx-pair?
                                                               _tl2132421552_)
                                                              (let ((_e2133121571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2132421552_)))
                        (let ((_tl2133321576_ (##cdr _e2133121571_))
                              (_hd2133221574_ (##car _e2133121571_)))
                          (if (gx#stx-pair? _hd2133221574_)
                              (let ((_e2133421579_ (gx#stx-e _hd2133221574_)))
                                (let ((_tl2133621584_ (##cdr _e2133421579_))
                                      (_hd2133521582_ (##car _e2133421579_)))
                                  (if (gx#identifier? _hd2133521582_)
                                      (if (gx#stx-eq? '%#ref _hd2133521582_)
                                          (if (gx#stx-pair? _tl2133621584_)
                                              (let ((_e2133721587_
                                                     (gx#stx-e
                                                      _tl2133621584_)))
                                                (let ((_tl2133921592_
                                                       (##cdr _e2133721587_))
                                                      (_hd2133821590_
                                                       (##car _e2133721587_)))
                                                  (if (gx#stx-null?
                                                       _tl2133921592_)
                                                      (if (gx#stx-null?
                                                           _tl2131821536_)
                                                          (___kont2737027371_
                                                           _hd2133821590_
                                                           _hd2132921566_
                                                           _tl2130921509_
                                                           _arg2131521528_)
                                                          (___match2747127472_
                                                           _e2130421499_
                                                           _hd2130521502_
                                                           _tl2130621504_
                                                           _e2131621531_
                                                           _hd2131721534_
                                                           _tl2131821536_
                                                           _e2131921539_
                                                           _hd2132021542_
                                                           _tl2132121544_
                                                           _e2132221547_
                                                           _hd2132321550_
                                                           _tl2132421552_
                                                           _e2132521555_
                                                           _hd2132621558_
                                                           _tl2132721560_
                                                           _e2132821563_
                                                           _hd2132921566_
                                                           _tl2133021568_
                                                           _e2133121571_
                                                           _hd2133221574_
                                                           _tl2133321576_
                                                           _e2133421579_
                                                           _hd2133521582_
                                                           _tl2133621584_
                                                           _e2133721587_
                                                           _hd2133821590_
                                                           _tl2133921592_))
                                                      (_g2125321377_))))
                                              (_g2125321377_))
                                          (_g2125321377_))
                                      (_g2125321377_))))
                              (_g2125321377_))))
                      (_g2125321377_))
                  (_g2125321377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2125321377_))
                                              (_g2125321377_))
                                          (_g2125321377_))))
                                  (_g2125321377_))))
                          (_g2125321377_))
                      (_g2125321377_))
                  (_g2125321377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2125321377_))))
                                          (_g2125321377_)))))))
                      (_loop2131021512_ _target2130721507_ '()))))
                 (___match2738927390_
                  (lambda (_e2125821635_
                           _hd2125921638_
                           _tl2126021640_
                           ___splice2736627367_
                           _target2126121643_
                           _tl2126321645_)
                    (letrec ((_loop2126421648_
                              (lambda (_hd2126221651_ _arg2126821653_)
                                (if (gx#stx-pair? _hd2126221651_)
                                    (let ((_e2126521656_
                                           (gx#stx-e _hd2126221651_)))
                                      (let ((_lp-tl2126721661_
                                             (##cdr _e2126521656_))
                                            (_lp-hd2126621659_
                                             (##car _e2126521656_)))
                                        (_loop2126421648_
                                         _lp-tl2126721661_
                                         (cons _lp-hd2126621659_
                                               _arg2126821653_))))
                                    (let ((_arg2126921664_
                                           (reverse _arg2126821653_)))
                                      (if (gx#stx-pair? _tl2126021640_)
                                          (let ((_e2127021667_
                                                 (gx#stx-e _tl2126021640_)))
                                            (let ((_tl2127221672_
                                                   (##cdr _e2127021667_))
                                                  (_hd2127121670_
                                                   (##car _e2127021667_)))
                                              (if (gx#stx-pair? _hd2127121670_)
                                                  (let ((_e2127321675_
                                                         (gx#stx-e
                                                          _hd2127121670_)))
                                                    (let ((_tl2127521680_
                                                           (##cdr _e2127321675_))
                                                          (_hd2127421678_
                                                           (##car _e2127321675_)))
                                                      (if (gx#identifier?
                                                           _hd2127421678_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2127421678_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2127521680_)
                          (let ((_e2127621683_ (gx#stx-e _tl2127521680_)))
                            (let ((_tl2127821688_ (##cdr _e2127621683_))
                                  (_hd2127721686_ (##car _e2127621683_)))
                              (if (gx#stx-pair? _hd2127721686_)
                                  (let ((_e2127921691_
                                         (gx#stx-e _hd2127721686_)))
                                    (let ((_tl2128121696_
                                           (##cdr _e2127921691_))
                                          (_hd2128021694_
                                           (##car _e2127921691_)))
                                      (if (gx#identifier? _hd2128021694_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2128021694_)
                                              (if (gx#stx-pair? _tl2128121696_)
                                                  (let ((_e2128221699_
                                                         (gx#stx-e
                                                          _tl2128121696_)))
                                                    (let ((_tl2128421704_
                                                           (##cdr _e2128221699_))
                                                          (_hd2128321702_
                                                           (##car _e2128221699_)))
                                                      (if (gx#stx-null?
                                                           _tl2128421704_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2127821688_)
                                                              (let ((___splice2736827369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2127821688_ '0)))
                        (let ((_tl2128721709_
                               (##vector-ref ___splice2736827369_ '1))
                              (_target2128521707_
                               (##vector-ref ___splice2736827369_ '0)))
                          (if (gx#stx-null? _tl2128721709_)
                              (letrec ((_loop2128821712_
                                        (lambda (_hd2128621715_
                                                 _xarg2129221717_)
                                          (if (gx#stx-pair? _hd2128621715_)
                                              (let ((_e2128921720_
                                                     (gx#stx-e
                                                      _hd2128621715_)))
                                                (let ((_lp-tl2129121725_
                                                       (##cdr _e2128921720_))
                                                      (_lp-hd2129021723_
                                                       (##car _e2128921720_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2129021723_)
                                                      (let ((_e2129421728_
                                                             (gx#stx-e
                                                              _lp-hd2129021723_)))
                                                        (let ((_tl2129621733_
                                                               (##cdr _e2129421728_))
                                                              (_hd2129521731_
                                                               (##car _e2129421728_)))
                                                          (if (gx#identifier?
                                                               _hd2129521731_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2129521731_)
                          (if (gx#stx-pair? _tl2129621733_)
                              (let ((_e2129721736_ (gx#stx-e _tl2129621733_)))
                                (let ((_tl2129921741_ (##cdr _e2129721736_))
                                      (_hd2129821739_ (##car _e2129721736_)))
                                  (if (gx#stx-null? _tl2129921741_)
                                      (_loop2128821712_
                                       _lp-tl2129121725_
                                       (cons _hd2129821739_ _xarg2129221717_))
                                      (___match2740127402_
                                       _e2125821635_
                                       _hd2125921638_
                                       _tl2126021640_
                                       ___splice2736627367_
                                       _target2126121643_
                                       _tl2126321645_))))
                              (___match2740127402_
                               _e2125821635_
                               _hd2125921638_
                               _tl2126021640_
                               ___splice2736627367_
                               _target2126121643_
                               _tl2126321645_))
                          (___match2740127402_
                           _e2125821635_
                           _hd2125921638_
                           _tl2126021640_
                           ___splice2736627367_
                           _target2126121643_
                           _tl2126321645_))
                      (___match2740127402_
                       _e2125821635_
                       _hd2125921638_
                       _tl2126021640_
                       ___splice2736627367_
                       _target2126121643_
                       _tl2126321645_))))
              (___match2740127402_
               _e2125821635_
               _hd2125921638_
               _tl2126021640_
               ___splice2736627367_
               _target2126121643_
               _tl2126321645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2129321744_
                                                     (reverse _xarg2129221717_)))
                                                (if (gx#stx-null?
                                                     _tl2127221672_)
                                                    (___kont2736427365_
                                                     _xarg2129321744_
                                                     _hd2128321702_
                                                     _arg2126921664_)
                                                    (___match2740127402_
                                                     _e2125821635_
                                                     _hd2125921638_
                                                     _tl2126021640_
                                                     ___splice2736627367_
                                                     _target2126121643_
                                                     _tl2126321645_)))))))
                                (_loop2128821712_ _target2128521707_ '()))
                              (___match2740127402_
                               _e2125821635_
                               _hd2125921638_
                               _tl2126021640_
                               ___splice2736627367_
                               _target2126121643_
                               _tl2126321645_))))
                      (___match2740127402_
                       _e2125821635_
                       _hd2125921638_
                       _tl2126021640_
                       ___splice2736627367_
                       _target2126121643_
                       _tl2126321645_))
                  (___match2740127402_
                   _e2125821635_
                   _hd2125921638_
                   _tl2126021640_
                   ___splice2736627367_
                   _target2126121643_
                   _tl2126321645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2740127402_
                                                   _e2125821635_
                                                   _hd2125921638_
                                                   _tl2126021640_
                                                   ___splice2736627367_
                                                   _target2126121643_
                                                   _tl2126321645_))
                                              (___match2740127402_
                                               _e2125821635_
                                               _hd2125921638_
                                               _tl2126021640_
                                               ___splice2736627367_
                                               _target2126121643_
                                               _tl2126321645_))
                                          (___match2740127402_
                                           _e2125821635_
                                           _hd2125921638_
                                           _tl2126021640_
                                           ___splice2736627367_
                                           _target2126121643_
                                           _tl2126321645_))))
                                  (___match2740127402_
                                   _e2125821635_
                                   _hd2125921638_
                                   _tl2126021640_
                                   ___splice2736627367_
                                   _target2126121643_
                                   _tl2126321645_))))
                          (___match2740127402_
                           _e2125821635_
                           _hd2125921638_
                           _tl2126021640_
                           ___splice2736627367_
                           _target2126121643_
                           _tl2126321645_))
                      (___match2740127402_
                       _e2125821635_
                       _hd2125921638_
                       _tl2126021640_
                       ___splice2736627367_
                       _target2126121643_
                       _tl2126321645_))
                  (___match2740127402_
                   _e2125821635_
                   _hd2125921638_
                   _tl2126021640_
                   ___splice2736627367_
                   _target2126121643_
                   _tl2126321645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2740127402_
                                                   _e2125821635_
                                                   _hd2125921638_
                                                   _tl2126021640_
                                                   ___splice2736627367_
                                                   _target2126121643_
                                                   _tl2126321645_))))
                                          (___match2740127402_
                                           _e2125821635_
                                           _hd2125921638_
                                           _tl2126021640_
                                           ___splice2736627367_
                                           _target2126121643_
                                           _tl2126321645_)))))))
                      (_loop2126421648_ _target2126121643_ '())))))
            (if (gx#stx-pair? ___stx2736227363_)
                (let ((_e2125821635_ (gx#stx-e ___stx2736227363_)))
                  (let ((_tl2126021640_ (##cdr _e2125821635_))
                        (_hd2125921638_ (##car _e2125821635_)))
                    (if (gx#stx-pair/null? _hd2125921638_)
                        (let ((___splice2736627367_
                               (gx#syntax-split-splice _hd2125921638_ '0)))
                          (let ((_tl2126321645_
                                 (##vector-ref ___splice2736627367_ '1))
                                (_target2126121643_
                                 (##vector-ref ___splice2736627367_ '0)))
                            (if (gx#stx-null? _tl2126321645_)
                                (___match2738927390_
                                 _e2125821635_
                                 _hd2125921638_
                                 _tl2126021640_
                                 ___splice2736627367_
                                 _target2126121643_
                                 _tl2126321645_)
                                (___match2740127402_
                                 _e2125821635_
                                 _hd2125921638_
                                 _tl2126021640_
                                 ___splice2736627367_
                                 _target2126121643_
                                 _tl2126321645_))))
                        (if (gx#stx-pair? _tl2126021640_)
                            (let ((_e2134621390_ (gx#stx-e _tl2126021640_)))
                              (let ((_tl2134821395_ (##cdr _e2134621390_))
                                    (_hd2134721393_ (##car _e2134621390_)))
                                (if (gx#stx-pair? _hd2134721393_)
                                    (let ((_e2134921398_
                                           (gx#stx-e _hd2134721393_)))
                                      (let ((_tl2135121403_
                                             (##cdr _e2134921398_))
                                            (_hd2135021401_
                                             (##car _e2134921398_)))
                                        (if (gx#identifier? _hd2135021401_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2135021401_)
                                                (if (gx#stx-pair?
                                                     _tl2135121403_)
                                                    (let ((_e2135221406_
                                                           (gx#stx-e
                                                            _tl2135121403_)))
                                                      (let ((_tl2135421411_
                                                             (##cdr _e2135221406_))
                                                            (_hd2135321409_
                                                             (##car _e2135221406_)))
                                                        (if (gx#stx-pair?
                                                             _hd2135321409_)
                                                            (let ((_e2135521414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2135321409_)))
                      (let ((_tl2135721419_ (##cdr _e2135521414_))
                            (_hd2135621417_ (##car _e2135521414_)))
                        (if (gx#identifier? _hd2135621417_)
                            (if (gx#stx-eq? '%#ref _hd2135621417_)
                                (if (gx#stx-pair? _tl2135721419_)
                                    (let ((_e2135821422_
                                           (gx#stx-e _tl2135721419_)))
                                      (let ((_tl2136021427_
                                             (##cdr _e2135821422_))
                                            (_hd2135921425_
                                             (##car _e2135821422_)))
                                        (if (gx#stx-null? _tl2136021427_)
                                            (if (gx#stx-pair? _tl2135421411_)
                                                (let ((_e2136121430_
                                                       (gx#stx-e
                                                        _tl2135421411_)))
                                                  (let ((_tl2136321435_
                                                         (##cdr _e2136121430_))
                                                        (_hd2136221433_
                                                         (##car _e2136121430_)))
                                                    (if (gx#stx-pair?
                                                         _hd2136221433_)
                                                        (let ((_e2136421438_
                                                               (gx#stx-e
                                                                _hd2136221433_)))
                                                          (let ((_tl2136621443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2136421438_))
                        (_hd2136521441_ (##car _e2136421438_)))
                    (if (gx#identifier? _hd2136521441_)
                        (if (gx#stx-eq? '%#ref _hd2136521441_)
                            (if (gx#stx-pair? _tl2136621443_)
                                (let ((_e2136721446_
                                       (gx#stx-e _tl2136621443_)))
                                  (let ((_tl2136921451_ (##cdr _e2136721446_))
                                        (_hd2136821449_ (##car _e2136721446_)))
                                    (if (gx#stx-null? _tl2136921451_)
                                        (if (gx#stx-pair? _tl2136321435_)
                                            (let ((_e2137021454_
                                                   (gx#stx-e _tl2136321435_)))
                                              (let ((_tl2137221459_
                                                     (##cdr _e2137021454_))
                                                    (_hd2137121457_
                                                     (##car _e2137021454_)))
                                                (if (gx#stx-null?
                                                     _tl2137221459_)
                                                    (if (gx#stx-null?
                                                         _tl2134821395_)
                                                        (___kont2737427375_
                                                         _hd2136821449_
                                                         _hd2135921425_
                                                         _hd2125921638_)
                                                        (_g2125321377_))
                                                    (_g2125321377_))))
                                            (_g2125321377_))
                                        (_g2125321377_))))
                                (_g2125321377_))
                            (_g2125321377_))
                        (_g2125321377_))))
                (_g2125321377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2125321377_))
                                            (_g2125321377_))))
                                    (_g2125321377_))
                                (_g2125321377_))
                            (_g2125321377_))))
                    (_g2125321377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2125321377_))
                                                (_g2125321377_))
                                            (_g2125321377_))))
                                    (_g2125321377_))))
                            (_g2125321377_)))))
                (_g2125321377_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form21053_)
      (let* ((_g2105521069_
              (lambda (_g2105621066_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2105621066_)))
             (_g2105421246_
              (lambda (_g2105621072_)
                (if (gx#stx-pair? _g2105621072_)
                    (let ((_e2105921074_ (gx#stx-e _g2105621072_)))
                      (let ((_hd2106021077_ (##car _e2105921074_))
                            (_tl2106121079_ (##cdr _e2105921074_)))
                        (if (gx#stx-pair? _tl2106121079_)
                            (let ((_e2106221082_ (gx#stx-e _tl2106121079_)))
                              (let ((_hd2106321085_ (##car _e2106221082_))
                                    (_tl2106421087_ (##cdr _e2106221082_)))
                                (if (gx#stx-null? _tl2106421087_)
                                    ((lambda (_L21090_ _L21091_)
                                       (let* ((___stx2748427485_ _L21091_)
                                              (_g2110621134_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx2748427485_))))
                                         (let ((___kont2748627487_
                                                (lambda (_L21225_)
                                                  (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2123521238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2123621240_)
                              (cons _g2123521238_ _g2123621240_))
                            '()
                            _L21225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2749027491_
                                                (lambda (_L21176_ _L21177_)
                                                  (cons (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2118821191_ _g2118921193_)
                                    (cons _g2118821191_ _g2118921193_))
                                  '()
                                  _L21177_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2749427495_
                                                (lambda (_L21139_)
                                                  (cons '0 '()))))
                                           (let* ((___match2750927510_
                                                   (lambda (___splice2749227493_
                                                            _target2112021152_
                                                            _tl2112221154_)
                                                     (letrec ((_loop2112321157_
                                                               (lambda (_hd2112121160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2112721162_)
                         (if (gx#stx-pair? _hd2112121160_)
                             (let ((_e2112421165_ (gx#stx-e _hd2112121160_)))
                               (let ((_lp-tl2112621170_ (##cdr _e2112421165_))
                                     (_lp-hd2112521168_ (##car _e2112421165_)))
                                 (_loop2112321157_
                                  _lp-tl2112621170_
                                  (cons _lp-hd2112521168_ _arg2112721162_))))
                             (let ((_arg2112821173_ (reverse _arg2112721162_)))
                               (___kont2749027491_
                                _tl2112221154_
                                _arg2112821173_))))))
               (_loop2112321157_ _target2112021152_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2750327504_
                                                   (lambda (___splice2748827489_
                                                            _target2110921201_
                                                            _tl2111121203_)
                                                     (letrec ((_loop2111221206_
                                                               (lambda (_hd2111021209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2111621211_)
                         (if (gx#stx-pair? _hd2111021209_)
                             (let ((_e2111321214_ (gx#stx-e _hd2111021209_)))
                               (let ((_lp-tl2111521219_ (##cdr _e2111321214_))
                                     (_lp-hd2111421217_ (##car _e2111321214_)))
                                 (_loop2111221206_
                                  _lp-tl2111521219_
                                  (cons _lp-hd2111421217_ _arg2111621211_))))
                             (let ((_arg2111721222_ (reverse _arg2111621211_)))
                               (___kont2748627487_ _arg2111721222_))))))
               (_loop2111221206_ _target2110921201_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  ___stx2748427485_)
                                                 (let ((___splice2748827489_
                                                        (gx#syntax-split-splice
                                                         ___stx2748427485_
                                                         '0)))
                                                   (let ((_tl2111121203_
                                                          (##vector-ref
                                                           ___splice2748827489_
                                                           '1))
                                                         (_target2110921201_
                                                          (##vector-ref
                                                           ___splice2748827489_
                                                           '0)))
                                                     (if (gx#stx-null?
                                                          _tl2111121203_)
                                                         (___match2750327504_
                                                          ___splice2748827489_
                                                          _target2110921201_
                                                          _tl2111121203_)
                                                         (___match2750927510_
                                                          ___splice2748827489_
                                                          _target2110921201_
                                                          _tl2111121203_))))
                                                 (___kont2749427495_
                                                  ___stx2748427485_))))))
                                     _hd2106321085_
                                     _hd2106021077_)
                                    (_g2105521069_ _g2105621072_))))
                            (_g2105521069_ _g2105621072_))))
                    (_g2105521069_ _g2105621072_)))))
        (_g2105421246_ _form21053_))))
  (define gxc#lambda-expr?
    (lambda (_expr21006_)
      (let* ((___stx2751227513_ _expr21006_)
             (_g2100921019_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2751227513_))))
        (let ((___kont2751427515_ (lambda (_L21039_) '#t))
              (___kont2751627517_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2751227513_)
              (let ((_e2101221031_ (gx#stx-e ___stx2751227513_)))
                (let ((_tl2101421036_ (##cdr _e2101221031_))
                      (_hd2101321034_ (##car _e2101221031_)))
                  (if (gx#identifier? _hd2101321034_)
                      (if (gx#stx-eq? '%#lambda _hd2101321034_)
                          (___kont2751427515_ _tl2101421036_)
                          (___kont2751627517_))
                      (___kont2751627517_))))
              (___kont2751627517_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20959_)
      (let* ((___stx2753027531_ _expr20959_)
             (_g2096220972_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2753027531_))))
        (let ((___kont2753227533_ (lambda (_L20992_) '#t))
              (___kont2753427535_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2753027531_)
              (let ((_e2096520984_ (gx#stx-e ___stx2753027531_)))
                (let ((_tl2096720989_ (##cdr _e2096520984_))
                      (_hd2096620987_ (##car _e2096520984_)))
                  (if (gx#identifier? _hd2096620987_)
                      (if (gx#stx-eq? '%#case-lambda _hd2096620987_)
                          (___kont2753227533_ _tl2096720989_)
                          (___kont2753427535_))
                      (___kont2753427535_))))
              (___kont2753427535_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20828_)
      (let* ((___stx2754827549_ _expr20828_)
             (_g2083120861_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2754827549_))))
        (let ((___kont2755027551_
               (lambda (_L20929_ _L20930_ _L20931_)
                 (if (gx#identifier? _L20931_)
                     (if (gxc#lambda-expr? _L20930_)
                         (gxc#case-lambda-expr? _L20929_)
                         '#f)
                     '#f)))
              (___kont2755227553_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2754827549_)
              (let ((_e2083620873_ (gx#stx-e ___stx2754827549_)))
                (let ((_tl2083820878_ (##cdr _e2083620873_))
                      (_hd2083720876_ (##car _e2083620873_)))
                  (if (gx#identifier? _hd2083720876_)
                      (if (gx#stx-eq? '%#let-values _hd2083720876_)
                          (if (gx#stx-pair? _tl2083820878_)
                              (let ((_e2083920881_ (gx#stx-e _tl2083820878_)))
                                (let ((_tl2084120886_ (##cdr _e2083920881_))
                                      (_hd2084020884_ (##car _e2083920881_)))
                                  (if (gx#stx-pair? _hd2084020884_)
                                      (let ((_e2084220889_
                                             (gx#stx-e _hd2084020884_)))
                                        (let ((_tl2084420894_
                                               (##cdr _e2084220889_))
                                              (_hd2084320892_
                                               (##car _e2084220889_)))
                                          (if (gx#stx-pair? _hd2084320892_)
                                              (let ((_e2084520897_
                                                     (gx#stx-e
                                                      _hd2084320892_)))
                                                (let ((_tl2084720902_
                                                       (##cdr _e2084520897_))
                                                      (_hd2084620900_
                                                       (##car _e2084520897_)))
                                                  (if (gx#stx-pair?
                                                       _hd2084620900_)
                                                      (let ((_e2084820905_
                                                             (gx#stx-e
                                                              _hd2084620900_)))
                                                        (let ((_tl2085020910_
                                                               (##cdr _e2084820905_))
                                                              (_hd2084920908_
                                                               (##car _e2084820905_)))
                                                          (if (gx#stx-null?
                                                               _tl2085020910_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2084720902_)
                          (let ((_e2085120913_ (gx#stx-e _tl2084720902_)))
                            (let ((_tl2085320918_ (##cdr _e2085120913_))
                                  (_hd2085220916_ (##car _e2085120913_)))
                              (if (gx#stx-null? _tl2085320918_)
                                  (if (gx#stx-null? _tl2084420894_)
                                      (if (gx#stx-pair? _tl2084120886_)
                                          (let ((_e2085420921_
                                                 (gx#stx-e _tl2084120886_)))
                                            (let ((_tl2085620926_
                                                   (##cdr _e2085420921_))
                                                  (_hd2085520924_
                                                   (##car _e2085420921_)))
                                              (if (gx#stx-null? _tl2085620926_)
                                                  (___kont2755027551_
                                                   _hd2085520924_
                                                   _hd2085220916_
                                                   _hd2084920908_)
                                                  (___kont2755227553_))))
                                          (___kont2755227553_))
                                      (___kont2755227553_))
                                  (___kont2755227553_))))
                          (___kont2755227553_))
                      (___kont2755227553_))))
              (___kont2755227553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2755227553_))))
                                      (___kont2755227553_))))
                              (___kont2755227553_))
                          (___kont2755227553_))
                      (___kont2755227553_))))
              (___kont2755227553_))))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr20153_)
      (let* ((___stx2761027611_ _expr20153_)
             (_g2015620314_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2761027611_))))
        (let ((___kont2761227613_
               (lambda (_L20702_
                        _L20703_
                        _L20704_
                        _L20705_
                        _L20706_
                        _L20707_
                        _L20708_
                        _L20709_
                        _L20710_
                        _L20711_
                        _L20712_)
                 (if (gxc#runtime-identifier=? _L20709_ 'apply)
                     (if (gxc#runtime-identifier=? _L20705_ 'apply)
                         (if (gxc#runtime-identifier=?
                              _L20704_
                              'keyword-dispatch)
                             (if (gx#free-identifier=? _L20712_ _L20703_)
                                 (if (gx#free-identifier=? _L20711_ _L20708_)
                                     (if (gx#free-identifier=?
                                          _L20706_
                                          _L20702_)
                                         (gx#free-identifier=?
                                          _L20710_
                                          _L20707_)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)))
              (___kont2761427615_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2761027611_)
              (let ((_e2016920326_ (gx#stx-e ___stx2761027611_)))
                (let ((_tl2017120331_ (##cdr _e2016920326_))
                      (_hd2017020329_ (##car _e2016920326_)))
                  (if (gx#identifier? _hd2017020329_)
                      (if (gx#stx-eq? '%#let-values _hd2017020329_)
                          (if (gx#stx-pair? _tl2017120331_)
                              (let ((_e2017220334_ (gx#stx-e _tl2017120331_)))
                                (let ((_tl2017420339_ (##cdr _e2017220334_))
                                      (_hd2017320337_ (##car _e2017220334_)))
                                  (if (gx#stx-pair? _hd2017320337_)
                                      (let ((_e2017520342_
                                             (gx#stx-e _hd2017320337_)))
                                        (let ((_tl2017720347_
                                               (##cdr _e2017520342_))
                                              (_hd2017620345_
                                               (##car _e2017520342_)))
                                          (if (gx#stx-pair? _hd2017620345_)
                                              (let ((_e2017820350_
                                                     (gx#stx-e
                                                      _hd2017620345_)))
                                                (let ((_tl2018020355_
                                                       (##cdr _e2017820350_))
                                                      (_hd2017920353_
                                                       (##car _e2017820350_)))
                                                  (if (gx#stx-pair?
                                                       _hd2017920353_)
                                                      (let ((_e2018120358_
                                                             (gx#stx-e
                                                              _hd2017920353_)))
                                                        (let ((_tl2018320363_
                                                               (##cdr _e2018120358_))
                                                              (_hd2018220361_
                                                               (##car _e2018120358_)))
                                                          (if (gx#stx-null?
                                                               _tl2018320363_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2018020355_)
                          (let ((_e2018420366_ (gx#stx-e _tl2018020355_)))
                            (let ((_tl2018620371_ (##cdr _e2018420366_))
                                  (_hd2018520369_ (##car _e2018420366_)))
                              (if (gx#stx-pair? _hd2018520369_)
                                  (let ((_e2018720374_
                                         (gx#stx-e _hd2018520369_)))
                                    (let ((_tl2018920379_
                                           (##cdr _e2018720374_))
                                          (_hd2018820377_
                                           (##car _e2018720374_)))
                                      (if (gx#identifier? _hd2018820377_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd2018820377_)
                                              (if (gx#stx-pair? _tl2018920379_)
                                                  (let ((_e2019020382_
                                                         (gx#stx-e
                                                          _tl2018920379_)))
                                                    (let ((_tl2019220387_
                                                           (##cdr _e2019020382_))
                                                          (_hd2019120385_
                                                           (##car _e2019020382_)))
                                                      (if (gx#stx-pair?
                                                           _hd2019120385_)
                                                          (let ((_e2019320390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2019120385_)))
                    (let ((_tl2019520395_ (##cdr _e2019320390_))
                          (_hd2019420393_ (##car _e2019320390_)))
                      (if (gx#stx-pair? _hd2019420393_)
                          (let ((_e2019620398_ (gx#stx-e _hd2019420393_)))
                            (let ((_tl2019820403_ (##cdr _e2019620398_))
                                  (_hd2019720401_ (##car _e2019620398_)))
                              (if (gx#stx-pair? _hd2019720401_)
                                  (let ((_e2019920406_
                                         (gx#stx-e _hd2019720401_)))
                                    (let ((_tl2020120411_
                                           (##cdr _e2019920406_))
                                          (_hd2020020409_
                                           (##car _e2019920406_)))
                                      (if (gx#stx-null? _tl2020120411_)
                                          (if (gx#stx-pair? _tl2019820403_)
                                              (let ((_e2020220414_
                                                     (gx#stx-e
                                                      _tl2019820403_)))
                                                (let ((_tl2020420419_
                                                       (##cdr _e2020220414_))
                                                      (_hd2020320417_
                                                       (##car _e2020220414_)))
                                                  (if (gx#stx-null?
                                                       _tl2020420419_)
                                                      (if (gx#stx-null?
                                                           _tl2019520395_)
                                                          (if (gx#stx-pair?
                                                               _tl2019220387_)
                                                              (let ((_e2020520422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2019220387_)))
                        (let ((_tl2020720427_ (##cdr _e2020520422_))
                              (_hd2020620425_ (##car _e2020520422_)))
                          (if (gx#stx-pair? _hd2020620425_)
                              (let ((_e2020820430_ (gx#stx-e _hd2020620425_)))
                                (let ((_tl2021020435_ (##cdr _e2020820430_))
                                      (_hd2020920433_ (##car _e2020820430_)))
                                  (if (gx#identifier? _hd2020920433_)
                                      (if (gx#stx-eq? '%#lambda _hd2020920433_)
                                          (if (gx#stx-pair? _tl2021020435_)
                                              (let ((_e2021120438_
                                                     (gx#stx-e
                                                      _tl2021020435_)))
                                                (let ((_tl2021320443_
                                                       (##cdr _e2021120438_))
                                                      (_hd2021220441_
                                                       (##car _e2021120438_)))
                                                  (if (gx#stx-pair?
                                                       _hd2021220441_)
                                                      (let ((_e2021420446_
                                                             (gx#stx-e
                                                              _hd2021220441_)))
                                                        (let ((_tl2021620451_
                                                               (##cdr _e2021420446_))
                                                              (_hd2021520449_
                                                               (##car _e2021420446_)))
                                                          (if (gx#stx-pair?
                                                               _tl2021320443_)
                                                              (let ((_e2021720454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2021320443_)))
                        (let ((_tl2021920459_ (##cdr _e2021720454_))
                              (_hd2021820457_ (##car _e2021720454_)))
                          (if (gx#stx-pair? _hd2021820457_)
                              (let ((_e2022020462_ (gx#stx-e _hd2021820457_)))
                                (let ((_tl2022220467_ (##cdr _e2022020462_))
                                      (_hd2022120465_ (##car _e2022020462_)))
                                  (if (gx#identifier? _hd2022120465_)
                                      (if (gx#stx-eq? '%#call _hd2022120465_)
                                          (if (gx#stx-pair? _tl2022220467_)
                                              (let ((_e2022320470_
                                                     (gx#stx-e
                                                      _tl2022220467_)))
                                                (let ((_tl2022520475_
                                                       (##cdr _e2022320470_))
                                                      (_hd2022420473_
                                                       (##car _e2022320470_)))
                                                  (if (gx#stx-pair?
                                                       _hd2022420473_)
                                                      (let ((_e2022620478_
                                                             (gx#stx-e
                                                              _hd2022420473_)))
                                                        (let ((_tl2022820483_
                                                               (##cdr _e2022620478_))
                                                              (_hd2022720481_
                                                               (##car _e2022620478_)))
                                                          (if (gx#identifier?
                                                               _hd2022720481_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2022720481_)
                          (if (gx#stx-pair? _tl2022820483_)
                              (let ((_e2022920486_ (gx#stx-e _tl2022820483_)))
                                (let ((_tl2023120491_ (##cdr _e2022920486_))
                                      (_hd2023020489_ (##car _e2022920486_)))
                                  (if (gx#stx-null? _tl2023120491_)
                                      (if (gx#stx-pair? _tl2022520475_)
                                          (let ((_e2023220494_
                                                 (gx#stx-e _tl2022520475_)))
                                            (let ((_tl2023420499_
                                                   (##cdr _e2023220494_))
                                                  (_hd2023320497_
                                                   (##car _e2023220494_)))
                                              (if (gx#stx-pair? _hd2023320497_)
                                                  (let ((_e2023520502_
                                                         (gx#stx-e
                                                          _hd2023320497_)))
                                                    (let ((_tl2023720507_
                                                           (##cdr _e2023520502_))
                                                          (_hd2023620505_
                                                           (##car _e2023520502_)))
                                                      (if (gx#identifier?
                                                           _hd2023620505_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2023620505_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2023720507_)
                          (let ((_e2023820510_ (gx#stx-e _tl2023720507_)))
                            (let ((_tl2024020515_ (##cdr _e2023820510_))
                                  (_hd2023920513_ (##car _e2023820510_)))
                              (if (gx#stx-null? _tl2024020515_)
                                  (if (gx#stx-pair? _tl2023420499_)
                                      (let ((_e2024120518_
                                             (gx#stx-e _tl2023420499_)))
                                        (let ((_tl2024320523_
                                               (##cdr _e2024120518_))
                                              (_hd2024220521_
                                               (##car _e2024120518_)))
                                          (if (gx#stx-pair? _hd2024220521_)
                                              (let ((_e2024420526_
                                                     (gx#stx-e
                                                      _hd2024220521_)))
                                                (let ((_tl2024620531_
                                                       (##cdr _e2024420526_))
                                                      (_hd2024520529_
                                                       (##car _e2024420526_)))
                                                  (if (gx#identifier?
                                                       _hd2024520529_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2024520529_)
                                                          (if (gx#stx-pair?
                                                               _tl2024620531_)
                                                              (let ((_e2024720534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2024620531_)))
                        (let ((_tl2024920539_ (##cdr _e2024720534_))
                              (_hd2024820537_ (##car _e2024720534_)))
                          (if (gx#stx-null? _tl2024920539_)
                              (if (gx#stx-null? _tl2021920459_)
                                  (if (gx#stx-null? _tl2020720427_)
                                      (if (gx#stx-null? _tl2018620371_)
                                          (if (gx#stx-null? _tl2017720347_)
                                              (if (gx#stx-pair? _tl2017420339_)
                                                  (let ((_e2025020542_
                                                         (gx#stx-e
                                                          _tl2017420339_)))
                                                    (let ((_tl2025220547_
                                                           (##cdr _e2025020542_))
                                                          (_hd2025120545_
                                                           (##car _e2025020542_)))
                                                      (if (gx#stx-pair?
                                                           _hd2025120545_)
                                                          (let ((_e2025320550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2025120545_)))
                    (let ((_tl2025520555_ (##cdr _e2025320550_))
                          (_hd2025420553_ (##car _e2025320550_)))
                      (if (gx#identifier? _hd2025420553_)
                          (if (gx#stx-eq? '%#lambda _hd2025420553_)
                              (if (gx#stx-pair? _tl2025520555_)
                                  (let ((_e2025620558_
                                         (gx#stx-e _tl2025520555_)))
                                    (let ((_tl2025820563_
                                           (##cdr _e2025620558_))
                                          (_hd2025720561_
                                           (##car _e2025620558_)))
                                      (if (gx#stx-pair? _tl2025820563_)
                                          (let ((_e2025920566_
                                                 (gx#stx-e _tl2025820563_)))
                                            (let ((_tl2026120571_
                                                   (##cdr _e2025920566_))
                                                  (_hd2026020569_
                                                   (##car _e2025920566_)))
                                              (if (gx#stx-pair? _hd2026020569_)
                                                  (let ((_e2026220574_
                                                         (gx#stx-e
                                                          _hd2026020569_)))
                                                    (let ((_tl2026420579_
                                                           (##cdr _e2026220574_))
                                                          (_hd2026320577_
                                                           (##car _e2026220574_)))
                                                      (if (gx#identifier?
                                                           _hd2026320577_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2026320577_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2026420579_)
                          (let ((_e2026520582_ (gx#stx-e _tl2026420579_)))
                            (let ((_tl2026720587_ (##cdr _e2026520582_))
                                  (_hd2026620585_ (##car _e2026520582_)))
                              (if (gx#stx-pair? _hd2026620585_)
                                  (let ((_e2026820590_
                                         (gx#stx-e _hd2026620585_)))
                                    (let ((_tl2027020595_
                                           (##cdr _e2026820590_))
                                          (_hd2026920593_
                                           (##car _e2026820590_)))
                                      (if (gx#identifier? _hd2026920593_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2026920593_)
                                              (if (gx#stx-pair? _tl2027020595_)
                                                  (let ((_e2027120598_
                                                         (gx#stx-e
                                                          _tl2027020595_)))
                                                    (let ((_tl2027320603_
                                                           (##cdr _e2027120598_))
                                                          (_hd2027220601_
                                                           (##car _e2027120598_)))
                                                      (if (gx#stx-null?
                                                           _tl2027320603_)
                                                          (if (gx#stx-pair?
                                                               _tl2026720587_)
                                                              (let ((_e2027420606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2026720587_)))
                        (let ((_tl2027620611_ (##cdr _e2027420606_))
                              (_hd2027520609_ (##car _e2027420606_)))
                          (if (gx#stx-pair? _hd2027520609_)
                              (let ((_e2027720614_ (gx#stx-e _hd2027520609_)))
                                (let ((_tl2027920619_ (##cdr _e2027720614_))
                                      (_hd2027820617_ (##car _e2027720614_)))
                                  (if (gx#identifier? _hd2027820617_)
                                      (if (gx#stx-eq? '%#ref _hd2027820617_)
                                          (if (gx#stx-pair? _tl2027920619_)
                                              (let ((_e2028020622_
                                                     (gx#stx-e
                                                      _tl2027920619_)))
                                                (let ((_tl2028220627_
                                                       (##cdr _e2028020622_))
                                                      (_hd2028120625_
                                                       (##car _e2028020622_)))
                                                  (if (gx#stx-null?
                                                       _tl2028220627_)
                                                      (if (gx#stx-pair?
                                                           _tl2027620611_)
                                                          (let ((_e2028320630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2027620611_)))
                    (let ((_tl2028520635_ (##cdr _e2028320630_))
                          (_hd2028420633_ (##car _e2028320630_)))
                      (if (gx#stx-pair? _hd2028420633_)
                          (let ((_e2028620638_ (gx#stx-e _hd2028420633_)))
                            (let ((_tl2028820643_ (##cdr _e2028620638_))
                                  (_hd2028720641_ (##car _e2028620638_)))
                              (if (gx#identifier? _hd2028720641_)
                                  (if (gx#stx-eq? '%#quote _hd2028720641_)
                                      (if (gx#stx-pair? _tl2028820643_)
                                          (let ((_e2028920646_
                                                 (gx#stx-e _tl2028820643_)))
                                            (let ((_tl2029120651_
                                                   (##cdr _e2028920646_))
                                                  (_hd2029020649_
                                                   (##car _e2028920646_)))
                                              (if (gx#stx-null? _tl2029120651_)
                                                  (if (gx#stx-pair?
                                                       _tl2028520635_)
                                                      (let ((_e2029220654_
                                                             (gx#stx-e
                                                              _tl2028520635_)))
                                                        (let ((_tl2029420659_
                                                               (##cdr _e2029220654_))
                                                              (_hd2029320657_
                                                               (##car _e2029220654_)))
                                                          (if (gx#stx-pair?
                                                               _hd2029320657_)
                                                              (let ((_e2029520662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2029320657_)))
                        (let ((_tl2029720667_ (##cdr _e2029520662_))
                              (_hd2029620665_ (##car _e2029520662_)))
                          (if (gx#identifier? _hd2029620665_)
                              (if (gx#stx-eq? '%#ref _hd2029620665_)
                                  (if (gx#stx-pair? _tl2029720667_)
                                      (let ((_e2029820670_
                                             (gx#stx-e _tl2029720667_)))
                                        (let ((_tl2030020675_
                                               (##cdr _e2029820670_))
                                              (_hd2029920673_
                                               (##car _e2029820670_)))
                                          (if (gx#stx-null? _tl2030020675_)
                                              (if (gx#stx-pair? _tl2029420659_)
                                                  (let ((_e2030120678_
                                                         (gx#stx-e
                                                          _tl2029420659_)))
                                                    (let ((_tl2030320683_
                                                           (##cdr _e2030120678_))
                                                          (_hd2030220681_
                                                           (##car _e2030120678_)))
                                                      (if (gx#stx-pair?
                                                           _hd2030220681_)
                                                          (let ((_e2030420686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2030220681_)))
                    (let ((_tl2030620691_ (##cdr _e2030420686_))
                          (_hd2030520689_ (##car _e2030420686_)))
                      (if (gx#identifier? _hd2030520689_)
                          (if (gx#stx-eq? '%#ref _hd2030520689_)
                              (if (gx#stx-pair? _tl2030620691_)
                                  (let ((_e2030720694_
                                         (gx#stx-e _tl2030620691_)))
                                    (let ((_tl2030920699_
                                           (##cdr _e2030720694_))
                                          (_hd2030820697_
                                           (##car _e2030720694_)))
                                      (if (gx#stx-null? _tl2030920699_)
                                          (if (gx#stx-null? _tl2030320683_)
                                              (if (gx#stx-null? _tl2026120571_)
                                                  (if (gx#stx-null?
                                                       _tl2025220547_)
                                                      (___kont2761227613_
                                                       _hd2030820697_
                                                       _hd2029920673_
                                                       _hd2028120625_
                                                       _hd2027220601_
                                                       _hd2025720561_
                                                       _hd2024820537_
                                                       _hd2023920513_
                                                       _hd2023020489_
                                                       _hd2021520449_
                                                       _hd2020020409_
                                                       _hd2018220361_)
                                                      (___kont2761427615_))
                                                  (___kont2761427615_))
                                              (___kont2761427615_))
                                          (___kont2761427615_))))
                                  (___kont2761427615_))
                              (___kont2761427615_))
                          (___kont2761427615_))))
                  (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2761427615_))
                                              (___kont2761427615_))))
                                      (___kont2761427615_))
                                  (___kont2761427615_))
                              (___kont2761427615_))))
                      (___kont2761427615_))))
              (___kont2761427615_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2761427615_))))
                                          (___kont2761427615_))
                                      (___kont2761427615_))
                                  (___kont2761427615_))))
                          (___kont2761427615_))))
                  (___kont2761427615_))
              (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2761427615_))
                                          (___kont2761427615_))
                                      (___kont2761427615_))))
                              (___kont2761427615_))))
                      (___kont2761427615_))
                  (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2761427615_))
                                              (___kont2761427615_))
                                          (___kont2761427615_))))
                                  (___kont2761427615_))))
                          (___kont2761427615_))
                      (___kont2761427615_))
                  (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2761427615_))))
                                          (___kont2761427615_))))
                                  (___kont2761427615_))
                              (___kont2761427615_))
                          (___kont2761427615_))))
                  (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2761427615_))
                                              (___kont2761427615_))
                                          (___kont2761427615_))
                                      (___kont2761427615_))
                                  (___kont2761427615_))
                              (___kont2761427615_))))
                      (___kont2761427615_))
                  (___kont2761427615_))
              (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2761427615_))))
                                      (___kont2761427615_))
                                  (___kont2761427615_))))
                          (___kont2761427615_))
                      (___kont2761427615_))
                  (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2761427615_))))
                                          (___kont2761427615_))
                                      (___kont2761427615_))))
                              (___kont2761427615_))
                          (___kont2761427615_))
                      (___kont2761427615_))))
              (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2761427615_))
                                          (___kont2761427615_))
                                      (___kont2761427615_))))
                              (___kont2761427615_))))
                      (___kont2761427615_))))
              (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2761427615_))
                                          (___kont2761427615_))
                                      (___kont2761427615_))))
                              (___kont2761427615_))))
                      (___kont2761427615_))
                  (___kont2761427615_))
              (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2761427615_))
                                          (___kont2761427615_))))
                                  (___kont2761427615_))))
                          (___kont2761427615_))))
                  (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2761427615_))
                                              (___kont2761427615_))
                                          (___kont2761427615_))))
                                  (___kont2761427615_))))
                          (___kont2761427615_))
                      (___kont2761427615_))))
              (___kont2761427615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2761427615_))))
                                      (___kont2761427615_))))
                              (___kont2761427615_))
                          (___kont2761427615_))
                      (___kont2761427615_))))
              (___kont2761427615_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx19895_ _id19896_ _clauses19897_ _gensym?19898_)
        (let _lp19900_ ((_rest19902_ _clauses19897_)
                        (_ids19903_ '())
                        (_impls19904_ '())
                        (_clauses19905_ '()))
          (let* ((_rest1990619914_ _rest19902_)
                 (_else1990819922_
                  (lambda ()
                    (values (reverse _ids19903_)
                            (reverse _impls19904_)
                            (reverse _clauses19905_))))
                 (_K1991020127_
                  (lambda (_rest19925_ _clause19926_)
                    (if (gxc#dispatch-lambda-form? _clause19926_)
                        (_lp19900_
                         _rest19925_
                         _ids19903_
                         _impls19904_
                         (cons _clause19926_ _clauses19905_))
                        (let* ((_g1992819939_
                                (lambda (_g1992919936_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1992919936_)))
                               (_g1992720124_
                                (lambda (_g1992919942_)
                                  (if (gx#stx-pair? _g1992919942_)
                                      (let ((_e1993219944_
                                             (gx#stx-e _g1992919942_)))
                                        (let ((_hd1993319947_
                                               (##car _e1993219944_))
                                              (_tl1993419949_
                                               (##cdr _e1993219944_)))
                                          ((lambda (_L19952_ _L19953_)
                                             (let* ((_id19970_
                                                     (make-symbol
                                                      (gx#stx-e _id19896_)
                                                      '"__"
                                                      (length _clauses19905_)
                                                      (if _gensym?19898_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id19972_
                                                     (gx#core-quote-syntax__1
                                                      _id19970_
                                                      (gx#stx-source
                                                       _stx19895_)))
                                                    (_impl19974_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L19953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19952_))
              _stx19895_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20121_
                                                     (let* ((___stx2799427995_
                                                             _L19953_)
                                                            (_g1997820006_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx2799427995_))))
                                                       (let ((___kont2799627997_
                                                              (lambda (_L20100_)
                                                                (cons _L19953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons _id19972_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2011020113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2011120115_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g2011020113_ '()))
                           _g2011120115_))
                   '()
                   _L20100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19895_)
                                    '()))))
                     (___kont2800028001_
                      (lambda (_L20051_ _L20052_)
                        (cons _L19953_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id19972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (foldr1 cons
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _L20051_ '()))
                             '())
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2006320066_ _g2006420068_)
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _g2006320066_ '()))
                                         _g2006420068_))
                                 '()
                                 _L20052_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19895_)
                                    '()))))
                     (___kont2800428005_
                      (lambda (_L20011_)
                        (cons _L19953_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id19972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                           (cons _L20011_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19895_)
                                    '())))))
                 (let* ((___match2801928020_
                         (lambda (___splice2800228003_
                                  _target1999220027_
                                  _tl1999420029_)
                           (letrec ((_loop1999520032_
                                     (lambda (_hd1999320035_ _arg1999920037_)
                                       (if (gx#stx-pair? _hd1999320035_)
                                           (let ((_e1999620040_
                                                  (gx#stx-e _hd1999320035_)))
                                             (let ((_lp-tl1999820045_
                                                    (##cdr _e1999620040_))
                                                   (_lp-hd1999720043_
                                                    (##car _e1999620040_)))
                                               (_loop1999520032_
                                                _lp-tl1999820045_
                                                (cons _lp-hd1999720043_
                                                      _arg1999920037_))))
                                           (let ((_arg2000020048_
                                                  (reverse _arg1999920037_)))
                                             (___kont2800028001_
                                              _tl1999420029_
                                              _arg2000020048_))))))
                             (_loop1999520032_ _target1999220027_ '()))))
                        (___match2801328014_
                         (lambda (___splice2799827999_
                                  _target1998120076_
                                  _tl1998320078_)
                           (letrec ((_loop1998420081_
                                     (lambda (_hd1998220084_ _arg1998820086_)
                                       (if (gx#stx-pair? _hd1998220084_)
                                           (let ((_e1998520089_
                                                  (gx#stx-e _hd1998220084_)))
                                             (let ((_lp-tl1998720094_
                                                    (##cdr _e1998520089_))
                                                   (_lp-hd1998620092_
                                                    (##car _e1998520089_)))
                                               (_loop1998420081_
                                                _lp-tl1998720094_
                                                (cons _lp-hd1998620092_
                                                      _arg1998820086_))))
                                           (let ((_arg1998920097_
                                                  (reverse _arg1998820086_)))
                                             (___kont2799627997_
                                              _arg1998920097_))))))
                             (_loop1998420081_ _target1998120076_ '())))))
                   (if (gx#stx-pair/null? ___stx2799427995_)
                       (let ((___splice2799827999_
                              (gx#syntax-split-splice ___stx2799427995_ '0)))
                         (let ((_tl1998320078_
                                (##vector-ref ___splice2799827999_ '1))
                               (_target1998120076_
                                (##vector-ref ___splice2799827999_ '0)))
                           (if (gx#stx-null? _tl1998320078_)
                               (___match2801328014_
                                ___splice2799827999_
                                _target1998120076_
                                _tl1998320078_)
                               (___match2801928020_
                                ___splice2799827999_
                                _target1998120076_
                                _tl1998320078_))))
                       (___kont2800428005_ ___stx2799427995_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp19900_
                                                _rest19925_
                                                (cons _id19972_ _ids19903_)
                                                (cons _impl19974_ _impls19904_)
                                                (cons _clause20121_
                                                      _clauses19905_))))
                                           _tl1993419949_
                                           _hd1993319947_)))
                                      (_g1992819939_ _g1992919942_)))))
                          (_g1992720124_ _clause19926_))))))
            (if (##pair? _rest1990619914_)
                (let ((_hd1991120130_ (##car _rest1990619914_))
                      (_tl1991220132_ (##cdr _rest1990619914_)))
                  (let* ((_clause20135_ _hd1991120130_)
                         (_rest20137_ _tl1991220132_))
                    (_K1991020127_ _rest20137_ _clause20135_)))
                (_else1990819922_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20142_ _id20143_ _clauses20144_)
          (let ((_gensym?20146_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx20142_
             _id20143_
             _clauses20144_
             _gensym?20146_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g28534_
          (let ((_g28533_ (length _g28534_)))
            (cond ((##fx= _g28533_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g28534_))
                  ((##fx= _g28533_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g28534_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g28534_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19172_)
      (letrec ((_case-lambda-clause-def19174_
                (lambda (_id19891_ _impl19892_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id19891_ '())
                               (cons (gxc#compile-e _impl19892_) '())))
                   _stx19172_)))
               (_opt-lambda-dispatch-name19175_
                (lambda (_id19887_)
                  (if (uninterned-symbol? _id19887_)
                      (let ((_str19889_ (symbol->string _id19887_)))
                        (if (string-prefix? _str19889_ '"opt-lambda")
                            '"%"
                            _id19887_))
                      _id19887_)))
               (_kw-lambda-dispatch-name19176_
                (lambda (_id19882_ _name19883_)
                  (if (uninterned-symbol? _id19882_)
                      (let ((_str19885_ (symbol->string _id19882_)))
                        (if (string-prefix? _str19885_ '"kw-lambda")
                            _name19883_
                            _id19882_))
                      _id19882_))))
        (let* ((___stx2804228043_ _stx19172_)
               (_g1918119240_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2804228043_))))
          (let ((___kont2804428045_
                 (lambda (_L19791_ _L19792_)
                   (let* ((___stx2802228023_ _L19791_)
                          (_g1980919823_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2802228023_))))
                     (let ((___kont2802428025_ (lambda (_L19867_) _stx19172_))
                           (___kont2802628027_
                            (lambda (_L19836_)
                              (let ((_g28535_
                                     (gxc#lift-case-lambda-clauses__0
                                      _stx19172_
                                      _L19792_
                                      _L19836_)))
                                (begin
                                  (let ((_g28536_
                                         (if (##values? _g28535_)
                                             (##vector-length _g28535_)
                                             1)))
                                    (if (not (##fx= _g28536_ 3))
                                        (error "Context expects 3 values"
                                               _g28536_)))
                                  (let ((_ids19846_ (##vector-ref _g28535_ 0))
                                        (_impls19847_
                                         (##vector-ref _g28535_ 1))
                                        (_clauses19848_
                                         (##vector-ref _g28535_ 2)))
                                    (let* ((_g28537_
                                            (for-each
                                             gx#core-bind-runtime!
                                             _ids19846_))
                                           (_defs19851_
                                            (map _case-lambda-clause-def19174_
                                                 _ids19846_
                                                 _impls19847_)))
                                      (begin
                                        (gxc#verbose
                                         '"lift case-lambda clauses "
                                         (gxc#identifier-symbol _L19792_)
                                         '" => "
                                         (map gxc#identifier-symbol
                                              _ids19846_))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin
                                               (foldr1 cons
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L19792_ '())
                                  (cons (gxc#xform-wrap-source
                                         (cons '%#case-lambda _clauses19848_)
                                         (gx#datum->syntax__0
                                          '#f
                                          'case-lambda-expr))
                                        '())))
                      _stx19172_)
                     '())
               _defs19851_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx19172_)))))))))
                       (let ((___match2803328034_
                              (lambda (_e1981219859_
                                       _hd1981319862_
                                       _tl1981419864_)
                                (let ((_L19867_ _tl1981419864_))
                                  (if (andmap1 gxc#dispatch-lambda-form?
                                               _L19867_)
                                      (___kont2802428025_ _L19867_)
                                      (___kont2802628027_ _tl1981419864_))))))
                         (if (gx#stx-pair? ___stx2802228023_)
                             (let ((_e1981219859_
                                    (gx#stx-e ___stx2802228023_)))
                               (let ((_tl1981419864_ (##cdr _e1981219859_))
                                     (_hd1981319862_ (##car _e1981219859_)))
                                 (___match2803328034_
                                  _e1981219859_
                                  _hd1981319862_
                                  _tl1981419864_)))
                             (_g1980919823_)))))))
                (___kont2804628047_
                 (lambda (_L19609_ _L19610_)
                   (let* ((_g1962619656_
                           (lambda (_g1962719653_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1962719653_)))
                          (_g1962519751_
                           (lambda (_g1962719659_)
                             (if (gx#stx-pair? _g1962719659_)
                                 (let ((_e1963119661_
                                        (gx#stx-e _g1962719659_)))
                                   (let ((_hd1963219664_ (##car _e1963119661_))
                                         (_tl1963319666_
                                          (##cdr _e1963119661_)))
                                     (if (gx#stx-pair? _tl1963319666_)
                                         (let ((_e1963419669_
                                                (gx#stx-e _tl1963319666_)))
                                           (let ((_hd1963519672_
                                                  (##car _e1963419669_))
                                                 (_tl1963619674_
                                                  (##cdr _e1963419669_)))
                                             (if (gx#stx-pair? _hd1963519672_)
                                                 (let ((_e1963719677_
                                                        (gx#stx-e
                                                         _hd1963519672_)))
                                                   (let ((_hd1963819680_
                                                          (##car _e1963719677_))
                                                         (_tl1963919682_
                                                          (##cdr _e1963719677_)))
                                                     (if (gx#stx-pair?
                                                          _hd1963819680_)
                                                         (let ((_e1964019685_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1963819680_)))
                   (let ((_hd1964119688_ (##car _e1964019685_))
                         (_tl1964219690_ (##cdr _e1964019685_)))
                     (if (gx#stx-pair? _hd1964119688_)
                         (let ((_e1964319693_ (gx#stx-e _hd1964119688_)))
                           (let ((_hd1964419696_ (##car _e1964319693_))
                                 (_tl1964519698_ (##cdr _e1964319693_)))
                             (if (gx#stx-null? _tl1964519698_)
                                 (if (gx#stx-pair? _tl1964219690_)
                                     (let ((_e1964619701_
                                            (gx#stx-e _tl1964219690_)))
                                       (let ((_hd1964719704_
                                              (##car _e1964619701_))
                                             (_tl1964819706_
                                              (##cdr _e1964619701_)))
                                         (if (gx#stx-null? _tl1964819706_)
                                             (if (gx#stx-null? _tl1963919682_)
                                                 (if (gx#stx-pair?
                                                      _tl1963619674_)
                                                     (let ((_e1964919709_
                                                            (gx#stx-e
                                                             _tl1963619674_)))
                                                       (let ((_hd1965019712_
                                                              (##car _e1964919709_))
                                                             (_tl1965119714_
                                                              (##cdr _e1964919709_)))
                                                         (if (gx#stx-null?
                                                              _tl1965119714_)
                                                             ((lambda (_L19717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19718_
                               _L19719_)
                        (let* ((_lambda-id19743_
                                (make-symbol
                                 (gx#stx-e _L19610_)
                                 '"__"
                                 (_opt-lambda-dispatch-name19175_
                                  (gx#stx-e _L19719_))))
                               (_lambda-id19745_
                                (gx#core-quote-syntax__1
                                 _lambda-id19743_
                                 (gx#stx-source _stx19172_)))
                               (_g28538_
                                (gx#core-bind-runtime!__0 _lambda-id19745_))
                               (_new-case-lambda-expr19748_
                                (gxc#apply-expression-subst
                                 _L19717_
                                 _L19719_
                                 _lambda-id19745_)))
                          (begin
                            (gxc#verbose
                             '"lift opt-lambda dispatch "
                             (gxc#identifier-symbol _L19610_)
                             '" => "
                             (gxc#identifier-symbol _lambda-id19745_))
                            (gxc#xform-wrap-source
                             (cons '%#begin
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#define-values
                                                (cons (cons _lambda-id19745_
                                                            '())
                                                      (cons (gxc#compile-e
                                                             _L19718_)
                                                            '())))
                                          _stx19172_)
                                         (cons (gxc#lift-top-lambda-define-values%
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons (cons _L19610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _new-case-lambda-expr19748_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx19172_))
                                               '())))
                             _stx19172_))))
                      _hd1965019712_
                      _hd1964719704_
                      _hd1964419696_)
                     (_g1962619656_ _g1962719659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1962619656_
                                                      _g1962719659_))
                                                 (_g1962619656_ _g1962719659_))
                                             (_g1962619656_ _g1962719659_))))
                                     (_g1962619656_ _g1962719659_))
                                 (_g1962619656_ _g1962719659_))))
                         (_g1962619656_ _g1962719659_))))
                 (_g1962619656_ _g1962719659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1962619656_
                                                  _g1962719659_))))
                                         (_g1962619656_ _g1962719659_))))
                                 (_g1962619656_ _g1962719659_)))))
                     (_g1962519751_ _L19609_))))
                (___kont2804828049_
                 (lambda (_L19323_ _L19324_)
                   (let* ((_g1934019393_
                           (lambda (_g1934119390_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1934119390_)))
                          (_g1933919569_
                           (lambda (_g1934119396_)
                             (if (gx#stx-pair? _g1934119396_)
                                 (let ((_e1934719398_
                                        (gx#stx-e _g1934119396_)))
                                   (let ((_hd1934819401_ (##car _e1934719398_))
                                         (_tl1934919403_
                                          (##cdr _e1934719398_)))
                                     (if (gx#stx-pair? _tl1934919403_)
                                         (let ((_e1935019406_
                                                (gx#stx-e _tl1934919403_)))
                                           (let ((_hd1935119409_
                                                  (##car _e1935019406_))
                                                 (_tl1935219411_
                                                  (##cdr _e1935019406_)))
                                             (if (gx#stx-pair? _hd1935119409_)
                                                 (let ((_e1935319414_
                                                        (gx#stx-e
                                                         _hd1935119409_)))
                                                   (let ((_hd1935419417_
                                                          (##car _e1935319414_))
                                                         (_tl1935519419_
                                                          (##cdr _e1935319414_)))
                                                     (if (gx#stx-pair?
                                                          _hd1935419417_)
                                                         (let ((_e1935619422_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1935419417_)))
                   (let ((_hd1935719425_ (##car _e1935619422_))
                         (_tl1935819427_ (##cdr _e1935619422_)))
                     (if (gx#stx-pair? _hd1935719425_)
                         (let ((_e1935919430_ (gx#stx-e _hd1935719425_)))
                           (let ((_hd1936019433_ (##car _e1935919430_))
                                 (_tl1936119435_ (##cdr _e1935919430_)))
                             (if (gx#stx-null? _tl1936119435_)
                                 (if (gx#stx-pair? _tl1935819427_)
                                     (let ((_e1936219438_
                                            (gx#stx-e _tl1935819427_)))
                                       (let ((_hd1936319441_
                                              (##car _e1936219438_))
                                             (_tl1936419443_
                                              (##cdr _e1936219438_)))
                                         (if (gx#stx-pair? _hd1936319441_)
                                             (let ((_e1936519446_
                                                    (gx#stx-e _hd1936319441_)))
                                               (let ((_hd1936619449_
                                                      (##car _e1936519446_))
                                                     (_tl1936719451_
                                                      (##cdr _e1936519446_)))
                                                 (if (gx#stx-pair?
                                                      _tl1936719451_)
                                                     (let ((_e1936819454_
                                                            (gx#stx-e
                                                             _tl1936719451_)))
                                                       (let ((_hd1936919457_
                                                              (##car _e1936819454_))
                                                             (_tl1937019459_
                                                              (##cdr _e1936819454_)))
                                                         (if (gx#stx-pair?
                                                              _hd1936919457_)
                                                             (let ((_e1937119462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1936919457_)))
                       (let ((_hd1937219465_ (##car _e1937119462_))
                             (_tl1937319467_ (##cdr _e1937119462_)))
                         (if (gx#stx-pair? _hd1937219465_)
                             (let ((_e1937419470_ (gx#stx-e _hd1937219465_)))
                               (let ((_hd1937519473_ (##car _e1937419470_))
                                     (_tl1937619475_ (##cdr _e1937419470_)))
                                 (if (gx#stx-pair? _hd1937519473_)
                                     (let ((_e1937719478_
                                            (gx#stx-e _hd1937519473_)))
                                       (let ((_hd1937819481_
                                              (##car _e1937719478_))
                                             (_tl1937919483_
                                              (##cdr _e1937719478_)))
                                         (if (gx#stx-null? _tl1937919483_)
                                             (if (gx#stx-pair? _tl1937619475_)
                                                 (let ((_e1938019486_
                                                        (gx#stx-e
                                                         _tl1937619475_)))
                                                   (let ((_hd1938119489_
                                                          (##car _e1938019486_))
                                                         (_tl1938219491_
                                                          (##cdr _e1938019486_)))
                                                     (if (gx#stx-null?
                                                          _tl1938219491_)
                                                         (if (gx#stx-null?
                                                              _tl1937319467_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1937019459_)
                         (let ((_e1938319494_ (gx#stx-e _tl1937019459_)))
                           (let ((_hd1938419497_ (##car _e1938319494_))
                                 (_tl1938519499_ (##cdr _e1938319494_)))
                             (if (gx#stx-null? _tl1938519499_)
                                 (if (gx#stx-null? _tl1936419443_)
                                     (if (gx#stx-null? _tl1935519419_)
                                         (if (gx#stx-pair? _tl1935219411_)
                                             (let ((_e1938619502_
                                                    (gx#stx-e _tl1935219411_)))
                                               (let ((_hd1938719505_
                                                      (##car _e1938619502_))
                                                     (_tl1938819507_
                                                      (##cdr _e1938619502_)))
                                                 (if (gx#stx-null?
                                                      _tl1938819507_)
                                                     ((lambda (_L19510_
                                                               _L19511_
                                                               _L19512_
                                                               _L19513_
                                                               _L19514_)
                                                        (let* ((_get-kws-id19554_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L19324_)
                         '"__"
                         (_kw-lambda-dispatch-name19176_
                          (gx#stx-e _L19514_)
                          '"@")))
                       (_get-kws-id19556_
                        (gx#core-quote-syntax__1
                         _get-kws-id19554_
                         (gx#stx-source _stx19172_)))
                       (_main-id19558_
                        (make-symbol
                         (gx#stx-e _L19324_)
                         '"__"
                         (_kw-lambda-dispatch-name19176_
                          (gx#stx-e _L19513_)
                          '"%")))
                       (_main-id19560_
                        (gx#core-quote-syntax__1
                         _main-id19558_
                         (gx#stx-source _stx19172_)))
                       (_g28539_ (gx#core-bind-runtime!__0 _get-kws-id19556_))
                       (_g28540_ (gx#core-bind-runtime!__0 _main-id19560_))
                       (_new-kw-dispatch19564_
                        (gxc#apply-expression-subst
                         _L19510_
                         _L19514_
                         _get-kws-id19556_))
                       (_new-get-kws19566_
                        (gxc#apply-expression-subst
                         _L19511_
                         _L19513_
                         _main-id19560_)))
                  (begin
                    (gxc#verbose
                     '"lift kw-lambda dispatch "
                     (gxc#identifier-symbol _L19324_)
                     '" => "
                     (gxc#identifier-symbol _get-kws-id19556_)
                     '" => "
                     (gxc#identifier-symbol _main-id19560_))
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons (gxc#lift-top-lambda-define-values%
                                  (gxc#xform-wrap-source
                                   (cons '%#define-values
                                         (cons (cons _main-id19560_ '())
                                               (cons _L19512_ '())))
                                   _stx19172_))
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _get-kws-id19556_
                                                          '())
                                                    (cons _new-get-kws19566_
                                                          '())))
                                        _stx19172_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _L19324_ '())
                                                          (cons _new-kw-dispatch19564_
                                                                '())))
                                              _stx19172_)
                                             '()))))
                     _stx19172_))))
              _hd1938719505_
              _hd1938419497_
              _hd1938119489_
              _hd1937819481_
              _hd1936019433_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1934019393_
                                                      _g1934119396_))))
                                             (_g1934019393_ _g1934119396_))
                                         (_g1934019393_ _g1934119396_))
                                     (_g1934019393_ _g1934119396_))
                                 (_g1934019393_ _g1934119396_))))
                         (_g1934019393_ _g1934119396_))
                     (_g1934019393_ _g1934119396_))
                 (_g1934019393_ _g1934119396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1934019393_ _g1934119396_))
                                             (_g1934019393_ _g1934119396_))))
                                     (_g1934019393_ _g1934119396_))))
                             (_g1934019393_ _g1934119396_))))
                     (_g1934019393_ _g1934119396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1934019393_
                                                      _g1934119396_))))
                                             (_g1934019393_ _g1934119396_))))
                                     (_g1934019393_ _g1934119396_))
                                 (_g1934019393_ _g1934119396_))))
                         (_g1934019393_ _g1934119396_))))
                 (_g1934019393_ _g1934119396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1934019393_
                                                  _g1934119396_))))
                                         (_g1934019393_ _g1934119396_))))
                                 (_g1934019393_ _g1934119396_)))))
                     (_g1933919569_ _L19323_))))
                (___kont2805028051_
                 (lambda (_L19269_ _L19270_)
                   (gxc#xform-wrap-source
                    (cons '%#define-values
                          (cons _L19270_ (cons (gxc#compile-e _L19269_) '())))
                    _stx19172_))))
            (let* ((___match2813528136_
                    (lambda (_e1921319291_
                             _hd1921419294_
                             _tl1921519296_
                             _e1921619299_
                             _hd1921719302_
                             _tl1921819304_
                             _e1921919307_
                             _hd1922019310_
                             _tl1922119312_
                             _e1922219315_
                             _hd1922319318_
                             _tl1922419320_)
                      (let ((_L19323_ _hd1922319318_)
                            (_L19324_ _hd1922019310_))
                        (if (if (gx#identifier? _L19324_)
                                (gxc#kw-lambda-expr? _L19323_)
                                '#f)
                            (___kont2804828049_ _L19323_ _L19324_)
                            (___kont2805028051_
                             _hd1922319318_
                             _hd1921719302_)))))
                   (___match2810728108_
                    (lambda (_e1919919577_
                             _hd1920019580_
                             _tl1920119582_
                             _e1920219585_
                             _hd1920319588_
                             _tl1920419590_
                             _e1920519593_
                             _hd1920619596_
                             _tl1920719598_
                             _e1920819601_
                             _hd1920919604_
                             _tl1921019606_)
                      (let ((_L19609_ _hd1920919604_)
                            (_L19610_ _hd1920619596_))
                        (if (if (gx#identifier? _L19610_)
                                (gxc#opt-lambda-expr? _L19609_)
                                '#f)
                            (___kont2804628047_ _L19609_ _L19610_)
                            (___match2813528136_
                             _e1919919577_
                             _hd1920019580_
                             _tl1920119582_
                             _e1920219585_
                             _hd1920319588_
                             _tl1920419590_
                             _e1920519593_
                             _hd1920619596_
                             _tl1920719598_
                             _e1920819601_
                             _hd1920919604_
                             _tl1921019606_)))))
                   (___match2807928080_
                    (lambda (_e1918519759_
                             _hd1918619762_
                             _tl1918719764_
                             _e1918819767_
                             _hd1918919770_
                             _tl1919019772_
                             _e1919119775_
                             _hd1919219778_
                             _tl1919319780_
                             _e1919419783_
                             _hd1919519786_
                             _tl1919619788_)
                      (let ((_L19791_ _hd1919519786_)
                            (_L19792_ _hd1919219778_))
                        (if (if (gx#identifier? _L19792_)
                                (gxc#case-lambda-expr? _L19791_)
                                '#f)
                            (___kont2804428045_ _L19791_ _L19792_)
                            (___match2810728108_
                             _e1918519759_
                             _hd1918619762_
                             _tl1918719764_
                             _e1918819767_
                             _hd1918919770_
                             _tl1919019772_
                             _e1919119775_
                             _hd1919219778_
                             _tl1919319780_
                             _e1919419783_
                             _hd1919519786_
                             _tl1919619788_))))))
              (if (gx#stx-pair? ___stx2804228043_)
                  (let ((_e1918519759_ (gx#stx-e ___stx2804228043_)))
                    (let ((_tl1918719764_ (##cdr _e1918519759_))
                          (_hd1918619762_ (##car _e1918519759_)))
                      (if (gx#stx-pair? _tl1918719764_)
                          (let ((_e1918819767_ (gx#stx-e _tl1918719764_)))
                            (let ((_tl1919019772_ (##cdr _e1918819767_))
                                  (_hd1918919770_ (##car _e1918819767_)))
                              (if (gx#stx-pair? _hd1918919770_)
                                  (let ((_e1919119775_
                                         (gx#stx-e _hd1918919770_)))
                                    (let ((_tl1919319780_
                                           (##cdr _e1919119775_))
                                          (_hd1919219778_
                                           (##car _e1919119775_)))
                                      (if (gx#stx-null? _tl1919319780_)
                                          (if (gx#stx-pair? _tl1919019772_)
                                              (let ((_e1919419783_
                                                     (gx#stx-e
                                                      _tl1919019772_)))
                                                (let ((_tl1919619788_
                                                       (##cdr _e1919419783_))
                                                      (_hd1919519786_
                                                       (##car _e1919419783_)))
                                                  (if (gx#stx-null?
                                                       _tl1919619788_)
                                                      (___match2807928080_
                                                       _e1918519759_
                                                       _hd1918619762_
                                                       _tl1918719764_
                                                       _e1918819767_
                                                       _hd1918919770_
                                                       _tl1919019772_
                                                       _e1919119775_
                                                       _hd1919219778_
                                                       _tl1919319780_
                                                       _e1919419783_
                                                       _hd1919519786_
                                                       _tl1919619788_)
                                                      (_g1918119240_))))
                                              (_g1918119240_))
                                          (if (gx#stx-pair? _tl1919019772_)
                                              (let ((_e1923319261_
                                                     (gx#stx-e
                                                      _tl1919019772_)))
                                                (let ((_tl1923519266_
                                                       (##cdr _e1923319261_))
                                                      (_hd1923419264_
                                                       (##car _e1923319261_)))
                                                  (if (gx#stx-null?
                                                       _tl1923519266_)
                                                      (___kont2805028051_
                                                       _hd1923419264_
                                                       _hd1918919770_)
                                                      (_g1918119240_))))
                                              (_g1918119240_)))))
                                  (if (gx#stx-pair? _tl1919019772_)
                                      (let ((_e1923319261_
                                             (gx#stx-e _tl1919019772_)))
                                        (let ((_tl1923519266_
                                               (##cdr _e1923319261_))
                                              (_hd1923419264_
                                               (##car _e1923319261_)))
                                          (if (gx#stx-null? _tl1923519266_)
                                              (___kont2805028051_
                                               _hd1923419264_
                                               _hd1918919770_)
                                              (_g1918119240_))))
                                      (_g1918119240_)))))
                          (_g1918119240_))))
                  (_g1918119240_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx18104_)
      (letrec* ((_bind-e__2593225933_
                 (lambda (_id19156_ _expr19157_ _compile?19158_)
                   (cons (cons _id19156_ '())
                         (cons (if _compile?19158_
                                   (gxc#compile-e _expr19157_)
                                   _expr19157_)
                               '()))))
                (_bind-e__0__2593425935_
                 (lambda (_id19163_ _expr19164_)
                   (let ((_compile?19166_ '#t))
                     (_bind-e__2593225933_
                      _id19163_
                      _expr19164_
                      _compile?19166_))))
                (_bind-e18106_
                 (lambda _g28542_
                   (let ((_g28541_ (length _g28542_)))
                     (cond ((##fx= _g28541_ 2)
                            (apply _bind-e__0__2593425935_ _g28542_))
                           ((##fx= _g28541_ 3)
                            (apply _bind-e__2593225933_ _g28542_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28542_))))))
                (_compile-bindings18107_
                 (lambda (_bindings18740_)
                   (let _lp18742_ ((_rest18744_ _bindings18740_)
                                   (_lift118745_ '())
                                   (_lift218746_ '())
                                   (_bind18747_ '()))
                     (let* ((_rest1874818756_ _rest18744_)
                            (_else1875018764_
                             (lambda ()
                               (values (reverse _lift118745_)
                                       (reverse _lift218746_)
                                       (reverse _bind18747_))))
                            (_K1875219143_
                             (lambda (_rest18767_ _hd18768_)
                               (let* ((___stx2817828179_ _hd18768_)
                                      (_g1877218808_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2817828179_))))
                                 (let ((___kont2818028181_
                                        (lambda (_L19050_ _L19051_)
                                          (let* ((___stx2815828159_ _L19050_)
                                                 (_g1906619080_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2815828159_))))
                                            (let ((___kont2816028161_
                                                   (lambda (_L19128_)
                                                     (_lp18742_
                                                      _rest18767_
                                                      _lift118745_
                                                      _lift218746_
                                                      (cons (_bind-e__2593225933_
                                                             _L19051_
                                                             _L19050_
                                                             '#f)
                                                            _bind18747_))))
                                                  (___kont2816228163_
                                                   (lambda (_L19093_)
                                                     (let ((_g28543_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx18104_
                                                             _L19051_
                                                             _L19093_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28544_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28543_)
                            (##vector-length _g28543_)
                            1)))
                   (if (not (##fx= _g28544_ 3))
                       (error "Context expects 3 values" _g28544_)))
                 (let ((_ids19103_ (##vector-ref _g28543_ 0))
                       (_impls19104_ (##vector-ref _g28543_ 1))
                       (_clauses19105_ (##vector-ref _g28543_ 2)))
                   (let* ((_g28545_
                           (for-each gx#core-bind-runtime! _ids19103_))
                          (_xbind19108_
                           (map _bind-e18106_ _ids19103_ _impls19104_))
                          (_expr*19110_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses19105_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*19112_
                           (_bind-e__2593225933_ _L19051_ _expr*19110_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L19051_)
                        '" => "
                        (map gxc#identifier-symbol _ids19103_))
                       (_lp18742_
                        _rest18767_
                        _lift118745_
                        (foldl1 cons _lift218746_ _xbind19108_)
                        (cons _bind*19112_ _bind18747_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2816928170_
                                                     (lambda (_e1906919120_
                                                              _hd1907019123_
                                                              _tl1907119125_)
                                                       (let ((_L19128_
                                                              _tl1907119125_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L19128_)
                     (___kont2816028161_ _L19128_)
                     (___kont2816228163_ _tl1907119125_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2815828159_)
                                                    (let ((_e1906919120_
                                                           (gx#stx-e
                                                            ___stx2815828159_)))
                                                      (let ((_tl1907119125_
                                                             (##cdr _e1906919120_))
                                                            (_hd1907019123_
                                                             (##car _e1906919120_)))
                                                        (___match2816928170_
                                                         _e1906919120_
                                                         _hd1907019123_
                                                         _tl1907119125_)))
                                                    (_g1906619080_)))))))
                                       (___kont2818228183_
                                        (lambda (_L18878_ _L18879_)
                                          (let* ((_g1889318923_
                                                  (lambda (_g1889418920_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1889418920_)))
                                                 (_g1889219018_
                                                  (lambda (_g1889418926_)
                                                    (if (gx#stx-pair?
                                                         _g1889418926_)
                                                        (let ((_e1889818928_
                                                               (gx#stx-e
                                                                _g1889418926_)))
                                                          (let ((_hd1889918931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1889818928_))
                        (_tl1890018933_ (##cdr _e1889818928_)))
                    (if (gx#stx-pair? _tl1890018933_)
                        (let ((_e1890118936_ (gx#stx-e _tl1890018933_)))
                          (let ((_hd1890218939_ (##car _e1890118936_))
                                (_tl1890318941_ (##cdr _e1890118936_)))
                            (if (gx#stx-pair? _hd1890218939_)
                                (let ((_e1890418944_
                                       (gx#stx-e _hd1890218939_)))
                                  (let ((_hd1890518947_ (##car _e1890418944_))
                                        (_tl1890618949_ (##cdr _e1890418944_)))
                                    (if (gx#stx-pair? _hd1890518947_)
                                        (let ((_e1890718952_
                                               (gx#stx-e _hd1890518947_)))
                                          (let ((_hd1890818955_
                                                 (##car _e1890718952_))
                                                (_tl1890918957_
                                                 (##cdr _e1890718952_)))
                                            (if (gx#stx-pair? _hd1890818955_)
                                                (let ((_e1891018960_
                                                       (gx#stx-e
                                                        _hd1890818955_)))
                                                  (let ((_hd1891118963_
                                                         (##car _e1891018960_))
                                                        (_tl1891218965_
                                                         (##cdr _e1891018960_)))
                                                    (if (gx#stx-null?
                                                         _tl1891218965_)
                                                        (if (gx#stx-pair?
                                                             _tl1890918957_)
                                                            (let ((_e1891318968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1890918957_)))
                      (let ((_hd1891418971_ (##car _e1891318968_))
                            (_tl1891518973_ (##cdr _e1891318968_)))
                        (if (gx#stx-null? _tl1891518973_)
                            (if (gx#stx-null? _tl1890618949_)
                                (if (gx#stx-pair? _tl1890318941_)
                                    (let ((_e1891618976_
                                           (gx#stx-e _tl1890318941_)))
                                      (let ((_hd1891718979_
                                             (##car _e1891618976_))
                                            (_tl1891818981_
                                             (##cdr _e1891618976_)))
                                        (if (gx#stx-null? _tl1891818981_)
                                            ((lambda (_L18984_
                                                      _L18985_
                                                      _L18986_)
                                               (let* ((_lambda-id19010_
                                                       (make-symbol
                                                        (gx#stx-e _L18879_)
                                                        (gensym '__)))
                                                      (_lambda-id19012_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id19010_
                                                        (gx#stx-source
                                                         _stx18104_)))
                                                      (_g28546_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id19012_))
                                                      (_new-case-lambda-expr19015_
                                                       (gxc#apply-expression-subst
                                                        _L18984_
                                                        _L18986_
                                                        _lambda-id19012_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L18879_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id19012_))
                                                   (_lp18742_
                                                    (cons (_bind-e__2593225933_
                                                           _L18879_
                                                           _new-case-lambda-expr19015_
                                                           '#f)
                                                          _rest18767_)
                                                    (cons (_bind-e__0__2593425935_
                                                           _lambda-id19012_
                                                           _L18985_)
                                                          _lift118745_)
                                                    _lift218746_
                                                    _bind18747_))))
                                             _hd1891718979_
                                             _hd1891418971_
                                             _hd1891118963_)
                                            (_g1889318923_ _g1889418926_))))
                                    (_g1889318923_ _g1889418926_))
                                (_g1889318923_ _g1889418926_))
                            (_g1889318923_ _g1889418926_))))
                    (_g1889318923_ _g1889418926_))
                (_g1889318923_ _g1889418926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1889318923_
                                                 _g1889418926_))))
                                        (_g1889318923_ _g1889418926_))))
                                (_g1889318923_ _g1889418926_))))
                        (_g1889318923_ _g1889418926_))))
                (_g1889318923_ _g1889418926_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1889219018_ _L18878_))))
                                       (___kont2818428185_
                                        (lambda (_L18829_ _L18830_)
                                          (_lp18742_
                                           _rest18767_
                                           _lift118745_
                                           _lift218746_
                                           (cons (cons _L18830_
                                                       (cons (gxc#compile-e
                                                              _L18829_)
                                                             '()))
                                                 _bind18747_)))))
                                   (let* ((___match2822928230_
                                           (lambda (_e1878718854_
                                                    _hd1878818857_
                                                    _tl1878918859_
                                                    _e1879018862_
                                                    _hd1879118865_
                                                    _tl1879218867_
                                                    _e1879318870_
                                                    _hd1879418873_
                                                    _tl1879518875_)
                                             (let ((_L18878_ _hd1879418873_)
                                                   (_L18879_ _hd1879118865_))
                                               (if (if (gx#identifier?
                                                        _L18879_)
                                                       (gxc#opt-lambda-expr?
                                                        _L18878_)
                                                       '#f)
                                                   (___kont2818228183_
                                                    _L18878_
                                                    _L18879_)
                                                   (___kont2818428185_
                                                    _hd1879418873_
                                                    _hd1878818857_)))))
                                          (___match2820728208_
                                           (lambda (_e1877619026_
                                                    _hd1877719029_
                                                    _tl1877819031_
                                                    _e1877919034_
                                                    _hd1878019037_
                                                    _tl1878119039_
                                                    _e1878219042_
                                                    _hd1878319045_
                                                    _tl1878419047_)
                                             (let ((_L19050_ _hd1878319045_)
                                                   (_L19051_ _hd1878019037_))
                                               (if (if (gx#identifier?
                                                        _L19051_)
                                                       (gxc#case-lambda-expr?
                                                        _L19050_)
                                                       '#f)
                                                   (___kont2818028181_
                                                    _L19050_
                                                    _L19051_)
                                                   (___match2822928230_
                                                    _e1877619026_
                                                    _hd1877719029_
                                                    _tl1877819031_
                                                    _e1877919034_
                                                    _hd1878019037_
                                                    _tl1878119039_
                                                    _e1878219042_
                                                    _hd1878319045_
                                                    _tl1878419047_))))))
                                     (if (gx#stx-pair? ___stx2817828179_)
                                         (let ((_e1877619026_
                                                (gx#stx-e ___stx2817828179_)))
                                           (let ((_tl1877819031_
                                                  (##cdr _e1877619026_))
                                                 (_hd1877719029_
                                                  (##car _e1877619026_)))
                                             (if (gx#stx-pair? _hd1877719029_)
                                                 (let ((_e1877919034_
                                                        (gx#stx-e
                                                         _hd1877719029_)))
                                                   (let ((_tl1878119039_
                                                          (##cdr _e1877919034_))
                                                         (_hd1878019037_
                                                          (##car _e1877919034_)))
                                                     (if (gx#stx-null?
                                                          _tl1878119039_)
                                                         (if (gx#stx-pair?
                                                              _tl1877819031_)
                                                             (let ((_e1878219042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1877819031_)))
                       (let ((_tl1878419047_ (##cdr _e1878219042_))
                             (_hd1878319045_ (##car _e1878219042_)))
                         (if (gx#stx-null? _tl1878419047_)
                             (___match2820728208_
                              _e1877619026_
                              _hd1877719029_
                              _tl1877819031_
                              _e1877919034_
                              _hd1878019037_
                              _tl1878119039_
                              _e1878219042_
                              _hd1878319045_
                              _tl1878419047_)
                             (_g1877218808_))))
                     (_g1877218808_))
                 (if (gx#stx-pair? _tl1877819031_)
                     (let ((_e1880118821_ (gx#stx-e _tl1877819031_)))
                       (let ((_tl1880318826_ (##cdr _e1880118821_))
                             (_hd1880218824_ (##car _e1880118821_)))
                         (if (gx#stx-null? _tl1880318826_)
                             (___kont2818428185_ _hd1880218824_ _hd1877719029_)
                             (_g1877218808_))))
                     (_g1877218808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1877819031_)
                                                     (let ((_e1880118821_
                                                            (gx#stx-e
                                                             _tl1877819031_)))
                                                       (let ((_tl1880318826_
                                                              (##cdr _e1880118821_))
                                                             (_hd1880218824_
                                                              (##car _e1880118821_)))
                                                         (if (gx#stx-null?
                                                              _tl1880318826_)
                                                             (___kont2818428185_
                                                              _hd1880218824_
                                                              _hd1877719029_)
                                                             (_g1877218808_))))
                                                     (_g1877218808_)))))
                                         (_g1877218808_))))))))
                       (if (##pair? _rest1874818756_)
                           (let ((_hd1875319146_ (##car _rest1874818756_))
                                 (_tl1875419148_ (##cdr _rest1874818756_)))
                             (let* ((_hd19151_ _hd1875319146_)
                                    (_rest19153_ _tl1875419148_))
                               (_K1875219143_ _rest19153_ _hd19151_)))
                           (_else1875018764_))))))
                (_lift-kw-lambda?18108_
                 (lambda (_bind18664_)
                   (let* ((___stx2824628247_ _bind18664_)
                          (_g1866718684_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2824628247_))))
                     (let ((___kont2824828249_
                            (lambda (_L18720_ _L18721_)
                              (if (gx#identifier? _L18721_)
                                  (gxc#kw-lambda-expr? _L18720_)
                                  '#f)))
                           (___kont2825028251_ (lambda () '#f)))
                       (if (gx#stx-pair? ___stx2824628247_)
                           (let ((_e1867118696_ (gx#stx-e ___stx2824628247_)))
                             (let ((_tl1867318701_ (##cdr _e1867118696_))
                                   (_hd1867218699_ (##car _e1867118696_)))
                               (if (gx#stx-pair? _hd1867218699_)
                                   (let ((_e1867418704_
                                          (gx#stx-e _hd1867218699_)))
                                     (let ((_tl1867618709_
                                            (##cdr _e1867418704_))
                                           (_hd1867518707_
                                            (##car _e1867418704_)))
                                       (if (gx#stx-null? _tl1867618709_)
                                           (if (gx#stx-pair? _tl1867318701_)
                                               (let ((_e1867718712_
                                                      (gx#stx-e
                                                       _tl1867318701_)))
                                                 (let ((_tl1867918717_
                                                        (##cdr _e1867718712_))
                                                       (_hd1867818715_
                                                        (##car _e1867718712_)))
                                                   (if (gx#stx-null?
                                                        _tl1867918717_)
                                                       (___kont2824828249_
                                                        _hd1867818715_
                                                        _hd1867518707_)
                                                       (___kont2825028251_))))
                                               (___kont2825028251_))
                                           (___kont2825028251_))))
                                   (___kont2825028251_))))
                           (___kont2825028251_))))))
                (_lift-kw-lambda-bindings18109_
                 (lambda (_bindings18276_)
                   (let _lp18278_ ((_rest18280_ _bindings18276_)
                                   (_lift118281_ '())
                                   (_lift218282_ '())
                                   (_bind18283_ '()))
                     (let* ((_rest1828418292_ _rest18280_)
                            (_else1828618300_
                             (lambda ()
                               (values (reverse _lift118281_)
                                       (reverse _lift218282_)
                                       (reverse _bind18283_))))
                            (_K1828818652_
                             (lambda (_rest18303_ _hd18304_)
                               (let* ((___stx2827628277_ _hd18304_)
                                      (_g1830718332_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2827628277_))))
                                 (let ((___kont2827828279_
                                        (lambda (_L18402_ _L18403_)
                                          (let* ((_g1841718470_
                                                  (lambda (_g1841818467_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1841818467_)))
                                                 (_g1841618646_
                                                  (lambda (_g1841818473_)
                                                    (if (gx#stx-pair?
                                                         _g1841818473_)
                                                        (let ((_e1842418475_
                                                               (gx#stx-e
                                                                _g1841818473_)))
                                                          (let ((_hd1842518478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1842418475_))
                        (_tl1842618480_ (##cdr _e1842418475_)))
                    (if (gx#stx-pair? _tl1842618480_)
                        (let ((_e1842718483_ (gx#stx-e _tl1842618480_)))
                          (let ((_hd1842818486_ (##car _e1842718483_))
                                (_tl1842918488_ (##cdr _e1842718483_)))
                            (if (gx#stx-pair? _hd1842818486_)
                                (let ((_e1843018491_
                                       (gx#stx-e _hd1842818486_)))
                                  (let ((_hd1843118494_ (##car _e1843018491_))
                                        (_tl1843218496_ (##cdr _e1843018491_)))
                                    (if (gx#stx-pair? _hd1843118494_)
                                        (let ((_e1843318499_
                                               (gx#stx-e _hd1843118494_)))
                                          (let ((_hd1843418502_
                                                 (##car _e1843318499_))
                                                (_tl1843518504_
                                                 (##cdr _e1843318499_)))
                                            (if (gx#stx-pair? _hd1843418502_)
                                                (let ((_e1843618507_
                                                       (gx#stx-e
                                                        _hd1843418502_)))
                                                  (let ((_hd1843718510_
                                                         (##car _e1843618507_))
                                                        (_tl1843818512_
                                                         (##cdr _e1843618507_)))
                                                    (if (gx#stx-null?
                                                         _tl1843818512_)
                                                        (if (gx#stx-pair?
                                                             _tl1843518504_)
                                                            (let ((_e1843918515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1843518504_)))
                      (let ((_hd1844018518_ (##car _e1843918515_))
                            (_tl1844118520_ (##cdr _e1843918515_)))
                        (if (gx#stx-pair? _hd1844018518_)
                            (let ((_e1844218523_ (gx#stx-e _hd1844018518_)))
                              (let ((_hd1844318526_ (##car _e1844218523_))
                                    (_tl1844418528_ (##cdr _e1844218523_)))
                                (if (gx#stx-pair? _tl1844418528_)
                                    (let ((_e1844518531_
                                           (gx#stx-e _tl1844418528_)))
                                      (let ((_hd1844618534_
                                             (##car _e1844518531_))
                                            (_tl1844718536_
                                             (##cdr _e1844518531_)))
                                        (if (gx#stx-pair? _hd1844618534_)
                                            (let ((_e1844818539_
                                                   (gx#stx-e _hd1844618534_)))
                                              (let ((_hd1844918542_
                                                     (##car _e1844818539_))
                                                    (_tl1845018544_
                                                     (##cdr _e1844818539_)))
                                                (if (gx#stx-pair?
                                                     _hd1844918542_)
                                                    (let ((_e1845118547_
                                                           (gx#stx-e
                                                            _hd1844918542_)))
                                                      (let ((_hd1845218550_
                                                             (##car _e1845118547_))
                                                            (_tl1845318552_
                                                             (##cdr _e1845118547_)))
                                                        (if (gx#stx-pair?
                                                             _hd1845218550_)
                                                            (let ((_e1845418555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1845218550_)))
                      (let ((_hd1845518558_ (##car _e1845418555_))
                            (_tl1845618560_ (##cdr _e1845418555_)))
                        (if (gx#stx-null? _tl1845618560_)
                            (if (gx#stx-pair? _tl1845318552_)
                                (let ((_e1845718563_
                                       (gx#stx-e _tl1845318552_)))
                                  (let ((_hd1845818566_ (##car _e1845718563_))
                                        (_tl1845918568_ (##cdr _e1845718563_)))
                                    (if (gx#stx-null? _tl1845918568_)
                                        (if (gx#stx-null? _tl1845018544_)
                                            (if (gx#stx-pair? _tl1844718536_)
                                                (let ((_e1846018571_
                                                       (gx#stx-e
                                                        _tl1844718536_)))
                                                  (let ((_hd1846118574_
                                                         (##car _e1846018571_))
                                                        (_tl1846218576_
                                                         (##cdr _e1846018571_)))
                                                    (if (gx#stx-null?
                                                         _tl1846218576_)
                                                        (if (gx#stx-null?
                                                             _tl1844118520_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1843218496_)
                        (if (gx#stx-pair? _tl1842918488_)
                            (let ((_e1846318579_ (gx#stx-e _tl1842918488_)))
                              (let ((_hd1846418582_ (##car _e1846318579_))
                                    (_tl1846518584_ (##cdr _e1846318579_)))
                                (if (gx#stx-null? _tl1846518584_)
                                    ((lambda (_L18587_
                                              _L18588_
                                              _L18589_
                                              _L18590_
                                              _L18591_)
                                       (let* ((_get-kws-id18631_
                                               (make-symbol
                                                (gx#stx-e _L18403_)
                                                (gensym '__)))
                                              (_get-kws-id18633_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id18631_
                                                (gx#stx-source _stx18104_)))
                                              (_main-id18635_
                                               (make-symbol
                                                (gx#stx-e _L18403_)
                                                (gensym '__)))
                                              (_main-id18637_
                                               (gx#core-quote-syntax__1
                                                _main-id18635_
                                                (gx#stx-source _stx18104_)))
                                              (_g28547_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id18633_))
                                              (_g28548_
                                               (gx#core-bind-runtime!__0
                                                _main-id18637_))
                                              (_new-kw-dispatch18641_
                                               (gxc#apply-expression-subst
                                                _L18587_
                                                _L18591_
                                                _get-kws-id18633_))
                                              (_new-get-kws18643_
                                               (gxc#apply-expression-subst
                                                _L18588_
                                                _L18590_
                                                _main-id18637_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L18403_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id18633_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id18637_))
                                           (_lp18278_
                                            _rest18303_
                                            (cons (_bind-e__2593225933_
                                                   _main-id18637_
                                                   _L18589_
                                                   '#f)
                                                  _lift118281_)
                                            (cons (_bind-e__2593225933_
                                                   _get-kws-id18633_
                                                   _new-get-kws18643_
                                                   '#f)
                                                  _lift218282_)
                                            (cons (_bind-e__2593225933_
                                                   _L18403_
                                                   _new-kw-dispatch18641_
                                                   '#f)
                                                  _bind18283_)))))
                                     _hd1846418582_
                                     _hd1846118574_
                                     _hd1845818566_
                                     _hd1845518558_
                                     _hd1843718510_)
                                    (_g1841718470_ _g1841818473_))))
                            (_g1841718470_ _g1841818473_))
                        (_g1841718470_ _g1841818473_))
                    (_g1841718470_ _g1841818473_))
                (_g1841718470_ _g1841818473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1841718470_ _g1841818473_))
                                            (_g1841718470_ _g1841818473_))
                                        (_g1841718470_ _g1841818473_))))
                                (_g1841718470_ _g1841818473_))
                            (_g1841718470_ _g1841818473_))))
                    (_g1841718470_ _g1841818473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1841718470_
                                                     _g1841818473_))))
                                            (_g1841718470_ _g1841818473_))))
                                    (_g1841718470_ _g1841818473_))))
                            (_g1841718470_ _g1841818473_))))
                    (_g1841718470_ _g1841818473_))
                (_g1841718470_ _g1841818473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1841718470_
                                                 _g1841818473_))))
                                        (_g1841718470_ _g1841818473_))))
                                (_g1841718470_ _g1841818473_))))
                        (_g1841718470_ _g1841818473_))))
                (_g1841718470_ _g1841818473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1841618646_ _L18402_))))
                                       (___kont2828028281_
                                        (lambda (_L18353_ _L18354_)
                                          (_lp18278_
                                           _rest18303_
                                           _lift118281_
                                           _lift218282_
                                           (cons (cons _L18354_
                                                       (cons _L18353_ '()))
                                                 _bind18283_)))))
                                   (let ((___match2830328304_
                                          (lambda (_e1831118378_
                                                   _hd1831218381_
                                                   _tl1831318383_
                                                   _e1831418386_
                                                   _hd1831518389_
                                                   _tl1831618391_
                                                   _e1831718394_
                                                   _hd1831818397_
                                                   _tl1831918399_)
                                            (let ((_L18402_ _hd1831818397_)
                                                  (_L18403_ _hd1831518389_))
                                              (if (if (gx#identifier? _L18403_)
                                                      (gxc#kw-lambda-expr?
                                                       _L18402_)
                                                      '#f)
                                                  (___kont2827828279_
                                                   _L18402_
                                                   _L18403_)
                                                  (___kont2828028281_
                                                   _hd1831818397_
                                                   _hd1831218381_))))))
                                     (if (gx#stx-pair? ___stx2827628277_)
                                         (let ((_e1831118378_
                                                (gx#stx-e ___stx2827628277_)))
                                           (let ((_tl1831318383_
                                                  (##cdr _e1831118378_))
                                                 (_hd1831218381_
                                                  (##car _e1831118378_)))
                                             (if (gx#stx-pair? _hd1831218381_)
                                                 (let ((_e1831418386_
                                                        (gx#stx-e
                                                         _hd1831218381_)))
                                                   (let ((_tl1831618391_
                                                          (##cdr _e1831418386_))
                                                         (_hd1831518389_
                                                          (##car _e1831418386_)))
                                                     (if (gx#stx-null?
                                                          _tl1831618391_)
                                                         (if (gx#stx-pair?
                                                              _tl1831318383_)
                                                             (let ((_e1831718394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1831318383_)))
                       (let ((_tl1831918399_ (##cdr _e1831718394_))
                             (_hd1831818397_ (##car _e1831718394_)))
                         (if (gx#stx-null? _tl1831918399_)
                             (___match2830328304_
                              _e1831118378_
                              _hd1831218381_
                              _tl1831318383_
                              _e1831418386_
                              _hd1831518389_
                              _tl1831618391_
                              _e1831718394_
                              _hd1831818397_
                              _tl1831918399_)
                             (_g1830718332_))))
                     (_g1830718332_))
                 (if (gx#stx-pair? _tl1831318383_)
                     (let ((_e1832518345_ (gx#stx-e _tl1831318383_)))
                       (let ((_tl1832718350_ (##cdr _e1832518345_))
                             (_hd1832618348_ (##car _e1832518345_)))
                         (if (gx#stx-null? _tl1832718350_)
                             (___kont2828028281_ _hd1832618348_ _hd1831218381_)
                             (_g1830718332_))))
                     (_g1830718332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1831318383_)
                                                     (let ((_e1832518345_
                                                            (gx#stx-e
                                                             _tl1831318383_)))
                                                       (let ((_tl1832718350_
                                                              (##cdr _e1832518345_))
                                                             (_hd1832618348_
                                                              (##car _e1832518345_)))
                                                         (if (gx#stx-null?
                                                              _tl1832718350_)
                                                             (___kont2828028281_
                                                              _hd1832618348_
                                                              _hd1831218381_)
                                                             (_g1830718332_))))
                                                     (_g1830718332_)))))
                                         (_g1830718332_))))))))
                       (if (##pair? _rest1828418292_)
                           (let ((_hd1828918655_ (##car _rest1828418292_))
                                 (_tl1829018657_ (##cdr _rest1828418292_)))
                             (let* ((_hd18660_ _hd1828918655_)
                                    (_rest18662_ _tl1829018657_))
                               (_K1828818652_ _rest18662_ _hd18660_)))
                           (_else1828618300_)))))))
        (let* ((___stx2832028321_ _stx18104_)
               (_g1811218138_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2832028321_))))
          (let ((___kont2832228323_
                 (lambda (_L18198_ _L18199_)
                   (call-with-parameters
                    (lambda ()
                      (if (ormap1 _lift-kw-lambda?18108_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1822718230_
                                                     _g1822818232_)
                                              (cons _g1822718230_
                                                    _g1822818232_))
                                            '()
                                            _L18199_)))
                          (let ((_g28549_
                                 (_lift-kw-lambda-bindings18109_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1823418237_
                                                     _g1823518239_)
                                              (cons _g1823418237_
                                                    _g1823518239_))
                                            '()
                                            _L18199_)))))
                            (begin
                              (let ((_g28550_
                                     (if (##values? _g28549_)
                                         (##vector-length _g28549_)
                                         1)))
                                (if (not (##fx= _g28550_ 3))
                                    (error "Context expects 3 values"
                                           _g28550_)))
                              (let ((_lift118242_ (##vector-ref _g28549_ 0))
                                    (_lift218243_ (##vector-ref _g28549_ 1))
                                    (_hd18244_ (##vector-ref _g28549_ 2)))
                                (let* ((_expr18246_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18244_
                                                     (cons _L18198_ '())))
                                         _stx18104_))
                                       (_expr18248_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift218243_
                                                     (cons _expr18246_ '())))
                                         _stx18104_))
                                       (_expr18250_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift118242_
                                                     (cons _expr18248_ '())))
                                         _stx18104_)))
                                  (gxc#lift-top-lambda-let-values%
                                   _expr18250_)))))
                          (let ((_g28551_
                                 (_compile-bindings18107_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1825218255_
                                                     _g1825318257_)
                                              (cons _g1825218255_
                                                    _g1825318257_))
                                            '()
                                            _L18199_)))))
                            (begin
                              (let ((_g28552_
                                     (if (##values? _g28551_)
                                         (##vector-length _g28551_)
                                         1)))
                                (if (not (##fx= _g28552_ 3))
                                    (error "Context expects 3 values"
                                           _g28552_)))
                              (let ((_lift118260_ (##vector-ref _g28551_ 0))
                                    (_lift218261_ (##vector-ref _g28551_ 1))
                                    (_hd18262_ (##vector-ref _g28551_ 2)))
                                (let* ((_body18264_ (gxc#compile-e _L18198_))
                                       (_expr18266_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18262_
                                                     (cons _body18264_ '())))
                                         _stx18104_))
                                       (_expr18268_
                                        (if (null? _lift218261_)
                                            _expr18266_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift218261_
                                                         (cons _expr18266_
                                                               '())))
                                             _stx18104_)))
                                       (_expr18270_
                                        (if (null? _lift118260_)
                                            _expr18268_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift118260_
                                                         (cons _expr18268_
                                                               '())))
                                             _stx18104_))))
                                  _expr18270_))))))
                    gx#current-expander-context
                    (let ((__obj28525 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28525)
                        __obj28525)))))
                (___kont2832628327_
                 (lambda () (gxc#xform-let-values% _stx18104_))))
            (let ((___match2834728348_
                   (lambda (_e1811618150_
                            _hd1811718153_
                            _tl1811818155_
                            _e1811918158_
                            _hd1812018161_
                            _tl1812118163_
                            ___splice2832428325_
                            _target1812218166_
                            _tl1812418168_)
                     (letrec ((_loop1812518171_
                               (lambda (_hd1812318174_ _bind1812918176_)
                                 (if (gx#stx-pair? _hd1812318174_)
                                     (let ((_e1812618179_
                                            (gx#stx-e _hd1812318174_)))
                                       (let ((_lp-tl1812818184_
                                              (##cdr _e1812618179_))
                                             (_lp-hd1812718182_
                                              (##car _e1812618179_)))
                                         (_loop1812518171_
                                          _lp-tl1812818184_
                                          (cons _lp-hd1812718182_
                                                _bind1812918176_))))
                                     (let ((_bind1813018187_
                                            (reverse _bind1812918176_)))
                                       (if (gx#stx-pair? _tl1812118163_)
                                           (let ((_e1813118190_
                                                  (gx#stx-e _tl1812118163_)))
                                             (let ((_tl1813318195_
                                                    (##cdr _e1813118190_))
                                                   (_hd1813218193_
                                                    (##car _e1813118190_)))
                                               (if (gx#stx-null?
                                                    _tl1813318195_)
                                                   (let ((_L18198_
                                                          _hd1813218193_)
                                                         (_L18199_
                                                          _bind1813018187_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1821918222_ _g1822018224_)
                                     (cons _g1821918222_ _g1822018224_))
                                   '()
                                   _L18199_)))
                 (___kont2832228323_ _L18198_ _L18199_)
                 (___kont2832628327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2832628327_))))
                                           (___kont2832628327_)))))))
                       (_loop1812518171_ _target1812218166_ '())))))
              (if (gx#stx-pair? ___stx2832028321_)
                  (let ((_e1811618150_ (gx#stx-e ___stx2832028321_)))
                    (let ((_tl1811818155_ (##cdr _e1811618150_))
                          (_hd1811718153_ (##car _e1811618150_)))
                      (if (gx#stx-pair? _tl1811818155_)
                          (let ((_e1811918158_ (gx#stx-e _tl1811818155_)))
                            (let ((_tl1812118163_ (##cdr _e1811918158_))
                                  (_hd1812018161_ (##car _e1811918158_)))
                              (if (gx#stx-pair/null? _hd1812018161_)
                                  (let ((___splice2832428325_
                                         (gx#syntax-split-splice
                                          _hd1812018161_
                                          '0)))
                                    (let ((_tl1812418168_
                                           (##vector-ref
                                            ___splice2832428325_
                                            '1))
                                          (_target1812218166_
                                           (##vector-ref
                                            ___splice2832428325_
                                            '0)))
                                      (if (gx#stx-null? _tl1812418168_)
                                          (___match2834728348_
                                           _e1811618150_
                                           _hd1811718153_
                                           _tl1811818155_
                                           _e1811918158_
                                           _hd1812018161_
                                           _tl1812118163_
                                           ___splice2832428325_
                                           _target1812218166_
                                           _tl1812418168_)
                                          (___kont2832628327_))))
                                  (___kont2832628327_))))
                          (___kont2832628327_))))
                  (___kont2832628327_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx17248_)
      (letrec* ((_bind-e__2593725938_
                 (lambda (_id18088_ _expr18089_ _compile?18090_)
                   (cons (cons _id18088_ '())
                         (cons (if _compile?18090_
                                   (gxc#compile-e _expr18089_)
                                   _expr18089_)
                               '()))))
                (_bind-e__0__2593925940_
                 (lambda (_id18095_ _expr18096_)
                   (let ((_compile?18098_ '#t))
                     (_bind-e__2593725938_
                      _id18095_
                      _expr18096_
                      _compile?18098_))))
                (_bind-e17250_
                 (lambda _g28554_
                   (let ((_g28553_ (length _g28554_)))
                     (cond ((##fx= _g28553_ 2)
                            (apply _bind-e__0__2593925940_ _g28554_))
                           ((##fx= _g28553_ 3)
                            (apply _bind-e__2593725938_ _g28554_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28554_))))))
                (_compile-bindings17251_
                 (lambda (_rest17386_)
                   (let _lp17388_ ((_rest17390_ _rest17386_) (_bind17391_ '()))
                     (let* ((_rest1739217400_ _rest17390_)
                            (_else1739417408_
                             (lambda () (reverse _bind17391_)))
                            (_K1739618075_
                             (lambda (_rest17411_ _hd17412_)
                               (let* ((___stx2837028371_ _hd17412_)
                                      (_g1741717464_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2837028371_))))
                                 (let ((___kont2837228373_
                                        (lambda (_L17982_ _L17983_)
                                          (let* ((___stx2835028351_ _L17982_)
                                                 (_g1799818012_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2835028351_))))
                                            (let ((___kont2835228353_
                                                   (lambda (_L18060_)
                                                     (_lp17388_
                                                      _rest17411_
                                                      (cons (_bind-e__2593725938_
                                                             _L17983_
                                                             _L17982_
                                                             '#f)
                                                            _bind17391_))))
                                                  (___kont2835428355_
                                                   (lambda (_L18025_)
                                                     (let ((_g28555_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx17248_
                                                             _L17983_
                                                             _L18025_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28556_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28555_)
                            (##vector-length _g28555_)
                            1)))
                   (if (not (##fx= _g28556_ 3))
                       (error "Context expects 3 values" _g28556_)))
                 (let ((_ids18035_ (##vector-ref _g28555_ 0))
                       (_impls18036_ (##vector-ref _g28555_ 1))
                       (_clauses18037_ (##vector-ref _g28555_ 2)))
                   (let* ((_g28557_
                           (for-each gx#core-bind-runtime! _ids18035_))
                          (_xbind18040_
                           (map _bind-e17250_ _ids18035_ _impls18036_))
                          (_expr*18042_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses18037_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*18044_
                           (_bind-e__2593725938_ _L17983_ _expr*18042_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L17983_)
                        '" => "
                        (map gxc#identifier-symbol _ids18035_))
                       (_lp17388_
                        _rest17411_
                        (cons _bind*18044_
                              (foldl1 cons _bind17391_ _xbind18040_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2836128362_
                                                     (lambda (_e1800118052_
                                                              _hd1800218055_
                                                              _tl1800318057_)
                                                       (let ((_L18060_
                                                              _tl1800318057_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18060_)
                     (___kont2835228353_ _L18060_)
                     (___kont2835428355_ _tl1800318057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2835028351_)
                                                    (let ((_e1800118052_
                                                           (gx#stx-e
                                                            ___stx2835028351_)))
                                                      (let ((_tl1800318057_
                                                             (##cdr _e1800118052_))
                                                            (_hd1800218055_
                                                             (##car _e1800118052_)))
                                                        (___match2836128362_
                                                         _e1800118052_
                                                         _hd1800218055_
                                                         _tl1800318057_)))
                                                    (_g1799818012_)))))))
                                       (___kont2837428375_
                                        (lambda (_L17810_ _L17811_)
                                          (let* ((_g1782517855_
                                                  (lambda (_g1782617852_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1782617852_)))
                                                 (_g1782417950_
                                                  (lambda (_g1782617858_)
                                                    (if (gx#stx-pair?
                                                         _g1782617858_)
                                                        (let ((_e1783017860_
                                                               (gx#stx-e
                                                                _g1782617858_)))
                                                          (let ((_hd1783117863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1783017860_))
                        (_tl1783217865_ (##cdr _e1783017860_)))
                    (if (gx#stx-pair? _tl1783217865_)
                        (let ((_e1783317868_ (gx#stx-e _tl1783217865_)))
                          (let ((_hd1783417871_ (##car _e1783317868_))
                                (_tl1783517873_ (##cdr _e1783317868_)))
                            (if (gx#stx-pair? _hd1783417871_)
                                (let ((_e1783617876_
                                       (gx#stx-e _hd1783417871_)))
                                  (let ((_hd1783717879_ (##car _e1783617876_))
                                        (_tl1783817881_ (##cdr _e1783617876_)))
                                    (if (gx#stx-pair? _hd1783717879_)
                                        (let ((_e1783917884_
                                               (gx#stx-e _hd1783717879_)))
                                          (let ((_hd1784017887_
                                                 (##car _e1783917884_))
                                                (_tl1784117889_
                                                 (##cdr _e1783917884_)))
                                            (if (gx#stx-pair? _hd1784017887_)
                                                (let ((_e1784217892_
                                                       (gx#stx-e
                                                        _hd1784017887_)))
                                                  (let ((_hd1784317895_
                                                         (##car _e1784217892_))
                                                        (_tl1784417897_
                                                         (##cdr _e1784217892_)))
                                                    (if (gx#stx-null?
                                                         _tl1784417897_)
                                                        (if (gx#stx-pair?
                                                             _tl1784117889_)
                                                            (let ((_e1784517900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1784117889_)))
                      (let ((_hd1784617903_ (##car _e1784517900_))
                            (_tl1784717905_ (##cdr _e1784517900_)))
                        (if (gx#stx-null? _tl1784717905_)
                            (if (gx#stx-null? _tl1783817881_)
                                (if (gx#stx-pair? _tl1783517873_)
                                    (let ((_e1784817908_
                                           (gx#stx-e _tl1783517873_)))
                                      (let ((_hd1784917911_
                                             (##car _e1784817908_))
                                            (_tl1785017913_
                                             (##cdr _e1784817908_)))
                                        (if (gx#stx-null? _tl1785017913_)
                                            ((lambda (_L17916_
                                                      _L17917_
                                                      _L17918_)
                                               (let* ((_lambda-id17942_
                                                       (make-symbol
                                                        (gx#stx-e _L17811_)
                                                        (gensym '__)))
                                                      (_lambda-id17944_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id17942_
                                                        (gx#stx-source
                                                         _stx17248_)))
                                                      (_g28558_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id17944_))
                                                      (_new-case-lambda-expr17947_
                                                       (gxc#apply-expression-subst
                                                        _L17916_
                                                        _L17918_
                                                        _lambda-id17944_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L17811_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id17944_))
                                                   (_lp17388_
                                                    (cons (_bind-e__2593725938_
                                                           _L17811_
                                                           _new-case-lambda-expr17947_
                                                           '#f)
                                                          _rest17411_)
                                                    (cons (_bind-e__0__2593925940_
                                                           _lambda-id17944_
                                                           _L17917_)
                                                          _bind17391_)))))
                                             _hd1784917911_
                                             _hd1784617903_
                                             _hd1784317895_)
                                            (_g1782517855_ _g1782617858_))))
                                    (_g1782517855_ _g1782617858_))
                                (_g1782517855_ _g1782617858_))
                            (_g1782517855_ _g1782617858_))))
                    (_g1782517855_ _g1782617858_))
                (_g1782517855_ _g1782617858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1782517855_
                                                 _g1782617858_))))
                                        (_g1782517855_ _g1782617858_))))
                                (_g1782517855_ _g1782617858_))))
                        (_g1782517855_ _g1782617858_))))
                (_g1782517855_ _g1782617858_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1782417950_ _L17810_))))
                                       (___kont2837628377_
                                        (lambda (_L17534_ _L17535_)
                                          (let* ((_g1754917602_
                                                  (lambda (_g1755017599_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1755017599_)))
                                                 (_g1754817778_
                                                  (lambda (_g1755017605_)
                                                    (if (gx#stx-pair?
                                                         _g1755017605_)
                                                        (let ((_e1755617607_
                                                               (gx#stx-e
                                                                _g1755017605_)))
                                                          (let ((_hd1755717610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1755617607_))
                        (_tl1755817612_ (##cdr _e1755617607_)))
                    (if (gx#stx-pair? _tl1755817612_)
                        (let ((_e1755917615_ (gx#stx-e _tl1755817612_)))
                          (let ((_hd1756017618_ (##car _e1755917615_))
                                (_tl1756117620_ (##cdr _e1755917615_)))
                            (if (gx#stx-pair? _hd1756017618_)
                                (let ((_e1756217623_
                                       (gx#stx-e _hd1756017618_)))
                                  (let ((_hd1756317626_ (##car _e1756217623_))
                                        (_tl1756417628_ (##cdr _e1756217623_)))
                                    (if (gx#stx-pair? _hd1756317626_)
                                        (let ((_e1756517631_
                                               (gx#stx-e _hd1756317626_)))
                                          (let ((_hd1756617634_
                                                 (##car _e1756517631_))
                                                (_tl1756717636_
                                                 (##cdr _e1756517631_)))
                                            (if (gx#stx-pair? _hd1756617634_)
                                                (let ((_e1756817639_
                                                       (gx#stx-e
                                                        _hd1756617634_)))
                                                  (let ((_hd1756917642_
                                                         (##car _e1756817639_))
                                                        (_tl1757017644_
                                                         (##cdr _e1756817639_)))
                                                    (if (gx#stx-null?
                                                         _tl1757017644_)
                                                        (if (gx#stx-pair?
                                                             _tl1756717636_)
                                                            (let ((_e1757117647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1756717636_)))
                      (let ((_hd1757217650_ (##car _e1757117647_))
                            (_tl1757317652_ (##cdr _e1757117647_)))
                        (if (gx#stx-pair? _hd1757217650_)
                            (let ((_e1757417655_ (gx#stx-e _hd1757217650_)))
                              (let ((_hd1757517658_ (##car _e1757417655_))
                                    (_tl1757617660_ (##cdr _e1757417655_)))
                                (if (gx#stx-pair? _tl1757617660_)
                                    (let ((_e1757717663_
                                           (gx#stx-e _tl1757617660_)))
                                      (let ((_hd1757817666_
                                             (##car _e1757717663_))
                                            (_tl1757917668_
                                             (##cdr _e1757717663_)))
                                        (if (gx#stx-pair? _hd1757817666_)
                                            (let ((_e1758017671_
                                                   (gx#stx-e _hd1757817666_)))
                                              (let ((_hd1758117674_
                                                     (##car _e1758017671_))
                                                    (_tl1758217676_
                                                     (##cdr _e1758017671_)))
                                                (if (gx#stx-pair?
                                                     _hd1758117674_)
                                                    (let ((_e1758317679_
                                                           (gx#stx-e
                                                            _hd1758117674_)))
                                                      (let ((_hd1758417682_
                                                             (##car _e1758317679_))
                                                            (_tl1758517684_
                                                             (##cdr _e1758317679_)))
                                                        (if (gx#stx-pair?
                                                             _hd1758417682_)
                                                            (let ((_e1758617687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1758417682_)))
                      (let ((_hd1758717690_ (##car _e1758617687_))
                            (_tl1758817692_ (##cdr _e1758617687_)))
                        (if (gx#stx-null? _tl1758817692_)
                            (if (gx#stx-pair? _tl1758517684_)
                                (let ((_e1758917695_
                                       (gx#stx-e _tl1758517684_)))
                                  (let ((_hd1759017698_ (##car _e1758917695_))
                                        (_tl1759117700_ (##cdr _e1758917695_)))
                                    (if (gx#stx-null? _tl1759117700_)
                                        (if (gx#stx-null? _tl1758217676_)
                                            (if (gx#stx-pair? _tl1757917668_)
                                                (let ((_e1759217703_
                                                       (gx#stx-e
                                                        _tl1757917668_)))
                                                  (let ((_hd1759317706_
                                                         (##car _e1759217703_))
                                                        (_tl1759417708_
                                                         (##cdr _e1759217703_)))
                                                    (if (gx#stx-null?
                                                         _tl1759417708_)
                                                        (if (gx#stx-null?
                                                             _tl1757317652_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1756417628_)
                        (if (gx#stx-pair? _tl1756117620_)
                            (let ((_e1759517711_ (gx#stx-e _tl1756117620_)))
                              (let ((_hd1759617714_ (##car _e1759517711_))
                                    (_tl1759717716_ (##cdr _e1759517711_)))
                                (if (gx#stx-null? _tl1759717716_)
                                    ((lambda (_L17719_
                                              _L17720_
                                              _L17721_
                                              _L17722_
                                              _L17723_)
                                       (let* ((_get-kws-id17763_
                                               (make-symbol
                                                (gx#stx-e _L17535_)
                                                (gensym '__)))
                                              (_get-kws-id17765_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id17763_
                                                (gx#stx-source _stx17248_)))
                                              (_main-id17767_
                                               (make-symbol
                                                (gx#stx-e _L17535_)
                                                (gensym '__)))
                                              (_main-id17769_
                                               (gx#core-quote-syntax__1
                                                _main-id17767_
                                                (gx#stx-source _stx17248_)))
                                              (_g28559_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id17765_))
                                              (_g28560_
                                               (gx#core-bind-runtime!__0
                                                _main-id17769_))
                                              (_new-kw-dispatch17773_
                                               (gxc#apply-expression-subst
                                                _L17719_
                                                _L17723_
                                                _get-kws-id17765_))
                                              (_new-get-kws17775_
                                               (gxc#apply-expression-subst
                                                _L17720_
                                                _L17722_
                                                _main-id17769_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L17535_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id17765_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id17769_))
                                           (_lp17388_
                                            (cons (_bind-e__2593725938_
                                                   _main-id17769_
                                                   _L17721_
                                                   '#f)
                                                  (cons (_bind-e__2593725938_
                                                         _get-kws-id17765_
                                                         _new-get-kws17775_
                                                         '#f)
                                                        (cons (_bind-e__2593725938_
                                                               _L17535_
                                                               _new-kw-dispatch17773_
                                                               '#f)
                                                              _rest17411_)))
                                            _bind17391_))))
                                     _hd1759617714_
                                     _hd1759317706_
                                     _hd1759017698_
                                     _hd1758717690_
                                     _hd1756917642_)
                                    (_g1754917602_ _g1755017605_))))
                            (_g1754917602_ _g1755017605_))
                        (_g1754917602_ _g1755017605_))
                    (_g1754917602_ _g1755017605_))
                (_g1754917602_ _g1755017605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1754917602_ _g1755017605_))
                                            (_g1754917602_ _g1755017605_))
                                        (_g1754917602_ _g1755017605_))))
                                (_g1754917602_ _g1755017605_))
                            (_g1754917602_ _g1755017605_))))
                    (_g1754917602_ _g1755017605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1754917602_
                                                     _g1755017605_))))
                                            (_g1754917602_ _g1755017605_))))
                                    (_g1754917602_ _g1755017605_))))
                            (_g1754917602_ _g1755017605_))))
                    (_g1754917602_ _g1755017605_))
                (_g1754917602_ _g1755017605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1754917602_
                                                 _g1755017605_))))
                                        (_g1754917602_ _g1755017605_))))
                                (_g1754917602_ _g1755017605_))))
                        (_g1754917602_ _g1755017605_))))
                (_g1754917602_ _g1755017605_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1754817778_ _L17534_))))
                                       (___kont2837828379_
                                        (lambda (_L17485_ _L17486_)
                                          (_lp17388_
                                           _rest17411_
                                           (cons (cons _L17486_
                                                       (cons (gxc#compile-e
                                                              _L17485_)
                                                             '()))
                                                 _bind17391_)))))
                                   (let* ((___match2844528446_
                                           (lambda (_e1744317510_
                                                    _hd1744417513_
                                                    _tl1744517515_
                                                    _e1744617518_
                                                    _hd1744717521_
                                                    _tl1744817523_
                                                    _e1744917526_
                                                    _hd1745017529_
                                                    _tl1745117531_)
                                             (let ((_L17534_ _hd1745017529_)
                                                   (_L17535_ _hd1744717521_))
                                               (if (if (gx#identifier?
                                                        _L17535_)
                                                       (gxc#kw-lambda-expr?
                                                        _L17534_)
                                                       '#f)
                                                   (___kont2837628377_
                                                    _L17534_
                                                    _L17535_)
                                                   (___kont2837828379_
                                                    _hd1745017529_
                                                    _hd1744417513_)))))
                                          (___match2842328424_
                                           (lambda (_e1743217786_
                                                    _hd1743317789_
                                                    _tl1743417791_
                                                    _e1743517794_
                                                    _hd1743617797_
                                                    _tl1743717799_
                                                    _e1743817802_
                                                    _hd1743917805_
                                                    _tl1744017807_)
                                             (let ((_L17810_ _hd1743917805_)
                                                   (_L17811_ _hd1743617797_))
                                               (if (if (gx#identifier?
                                                        _L17811_)
                                                       (gxc#opt-lambda-expr?
                                                        _L17810_)
                                                       '#f)
                                                   (___kont2837428375_
                                                    _L17810_
                                                    _L17811_)
                                                   (___match2844528446_
                                                    _e1743217786_
                                                    _hd1743317789_
                                                    _tl1743417791_
                                                    _e1743517794_
                                                    _hd1743617797_
                                                    _tl1743717799_
                                                    _e1743817802_
                                                    _hd1743917805_
                                                    _tl1744017807_)))))
                                          (___match2840128402_
                                           (lambda (_e1742117958_
                                                    _hd1742217961_
                                                    _tl1742317963_
                                                    _e1742417966_
                                                    _hd1742517969_
                                                    _tl1742617971_
                                                    _e1742717974_
                                                    _hd1742817977_
                                                    _tl1742917979_)
                                             (let ((_L17982_ _hd1742817977_)
                                                   (_L17983_ _hd1742517969_))
                                               (if (if (gx#identifier?
                                                        _L17983_)
                                                       (gxc#case-lambda-expr?
                                                        _L17982_)
                                                       '#f)
                                                   (___kont2837228373_
                                                    _L17982_
                                                    _L17983_)
                                                   (___match2842328424_
                                                    _e1742117958_
                                                    _hd1742217961_
                                                    _tl1742317963_
                                                    _e1742417966_
                                                    _hd1742517969_
                                                    _tl1742617971_
                                                    _e1742717974_
                                                    _hd1742817977_
                                                    _tl1742917979_))))))
                                     (if (gx#stx-pair? ___stx2837028371_)
                                         (let ((_e1742117958_
                                                (gx#stx-e ___stx2837028371_)))
                                           (let ((_tl1742317963_
                                                  (##cdr _e1742117958_))
                                                 (_hd1742217961_
                                                  (##car _e1742117958_)))
                                             (if (gx#stx-pair? _hd1742217961_)
                                                 (let ((_e1742417966_
                                                        (gx#stx-e
                                                         _hd1742217961_)))
                                                   (let ((_tl1742617971_
                                                          (##cdr _e1742417966_))
                                                         (_hd1742517969_
                                                          (##car _e1742417966_)))
                                                     (if (gx#stx-null?
                                                          _tl1742617971_)
                                                         (if (gx#stx-pair?
                                                              _tl1742317963_)
                                                             (let ((_e1742717974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1742317963_)))
                       (let ((_tl1742917979_ (##cdr _e1742717974_))
                             (_hd1742817977_ (##car _e1742717974_)))
                         (if (gx#stx-null? _tl1742917979_)
                             (___match2840128402_
                              _e1742117958_
                              _hd1742217961_
                              _tl1742317963_
                              _e1742417966_
                              _hd1742517969_
                              _tl1742617971_
                              _e1742717974_
                              _hd1742817977_
                              _tl1742917979_)
                             (_g1741717464_))))
                     (_g1741717464_))
                 (if (gx#stx-pair? _tl1742317963_)
                     (let ((_e1745717477_ (gx#stx-e _tl1742317963_)))
                       (let ((_tl1745917482_ (##cdr _e1745717477_))
                             (_hd1745817480_ (##car _e1745717477_)))
                         (if (gx#stx-null? _tl1745917482_)
                             (___kont2837828379_ _hd1745817480_ _hd1742217961_)
                             (_g1741717464_))))
                     (_g1741717464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1742317963_)
                                                     (let ((_e1745717477_
                                                            (gx#stx-e
                                                             _tl1742317963_)))
                                                       (let ((_tl1745917482_
                                                              (##cdr _e1745717477_))
                                                             (_hd1745817480_
                                                              (##car _e1745717477_)))
                                                         (if (gx#stx-null?
                                                              _tl1745917482_)
                                                             (___kont2837828379_
                                                              _hd1745817480_
                                                              _hd1742217961_)
                                                             (_g1741717464_))))
                                                     (_g1741717464_)))))
                                         (_g1741717464_))))))))
                       (if (##pair? _rest1739217400_)
                           (let ((_hd1739718078_ (##car _rest1739217400_))
                                 (_tl1739818080_ (##cdr _rest1739217400_)))
                             (let* ((_hd18083_ _hd1739718078_)
                                    (_rest18085_ _tl1739818080_))
                               (_K1739618075_ _rest18085_ _hd18083_)))
                           (_else1739417408_)))))))
        (let* ((___stx2846228463_ _stx17248_)
               (_g1725417281_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2846228463_))))
          (let ((___kont2846428465_
                 (lambda (_L17341_ _L17342_ _L17343_)
                   (call-with-parameters
                    (lambda ()
                      (let ((_hd17380_
                             (_compile-bindings17251_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1737217375_ _g1737317377_)
                                          (cons _g1737217375_ _g1737317377_))
                                        '()
                                        _L17342_))))
                            (_body17381_ (gxc#compile-e _L17341_)))
                        (gxc#xform-wrap-source
                         (cons _L17343_
                               (cons _hd17380_ (cons _body17381_ '())))
                         _stx17248_)))
                    gx#current-expander-context
                    (let ((__obj28526 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28526)
                        __obj28526)))))
                (___kont2846828469_
                 (lambda () (gxc#xform-let-values% _stx17248_))))
            (let ((___match2848928490_
                   (lambda (_e1725917293_
                            _hd1726017296_
                            _tl1726117298_
                            _e1726217301_
                            _hd1726317304_
                            _tl1726417306_
                            ___splice2846628467_
                            _target1726517309_
                            _tl1726717311_)
                     (letrec ((_loop1726817314_
                               (lambda (_hd1726617317_ _bind1727217319_)
                                 (if (gx#stx-pair? _hd1726617317_)
                                     (let ((_e1726917322_
                                            (gx#stx-e _hd1726617317_)))
                                       (let ((_lp-tl1727117327_
                                              (##cdr _e1726917322_))
                                             (_lp-hd1727017325_
                                              (##car _e1726917322_)))
                                         (_loop1726817314_
                                          _lp-tl1727117327_
                                          (cons _lp-hd1727017325_
                                                _bind1727217319_))))
                                     (let ((_bind1727317330_
                                            (reverse _bind1727217319_)))
                                       (if (gx#stx-pair? _tl1726417306_)
                                           (let ((_e1727417333_
                                                  (gx#stx-e _tl1726417306_)))
                                             (let ((_tl1727617338_
                                                    (##cdr _e1727417333_))
                                                   (_hd1727517336_
                                                    (##car _e1727417333_)))
                                               (if (gx#stx-null?
                                                    _tl1727617338_)
                                                   (let ((_L17341_
                                                          _hd1727517336_)
                                                         (_L17342_
                                                          _bind1727317330_)
                                                         (_L17343_
                                                          _hd1726017296_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1736417367_ _g1736517369_)
                                     (cons _g1736417367_ _g1736517369_))
                                   '()
                                   _L17342_)))
                 (___kont2846428465_ _L17341_ _L17342_ _L17343_)
                 (___kont2846828469_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2846828469_))))
                                           (___kont2846828469_)))))))
                       (_loop1726817314_ _target1726517309_ '())))))
              (if (gx#stx-pair? ___stx2846228463_)
                  (let ((_e1725917293_ (gx#stx-e ___stx2846228463_)))
                    (let ((_tl1726117298_ (##cdr _e1725917293_))
                          (_hd1726017296_ (##car _e1725917293_)))
                      (if (gx#stx-pair? _tl1726117298_)
                          (let ((_e1726217301_ (gx#stx-e _tl1726117298_)))
                            (let ((_tl1726417306_ (##cdr _e1726217301_))
                                  (_hd1726317304_ (##car _e1726217301_)))
                              (if (gx#stx-pair/null? _hd1726317304_)
                                  (let ((___splice2846628467_
                                         (gx#syntax-split-splice
                                          _hd1726317304_
                                          '0)))
                                    (let ((_tl1726717311_
                                           (##vector-ref
                                            ___splice2846628467_
                                            '1))
                                          (_target1726517309_
                                           (##vector-ref
                                            ___splice2846628467_
                                            '0)))
                                      (if (gx#stx-null? _tl1726717311_)
                                          (___match2848928490_
                                           _e1725917293_
                                           _hd1726017296_
                                           _tl1726117298_
                                           _e1726217301_
                                           _hd1726317304_
                                           _tl1726417306_
                                           ___splice2846628467_
                                           _target1726517309_
                                           _tl1726717311_)
                                          (___kont2846828469_))))
                                  (___kont2846828469_))))
                          (___kont2846828469_))))
                  (___kont2846828469_))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind17166_)
      (let* ((___stx2849228493_ _bind17166_)
             (_g1716917186_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2849228493_))))
        (let ((___kont2849428495_
               (lambda (_L17222_ _L17223_)
                 (if (gx#identifier? _L17223_)
                     (let ((_$e17239_ (gxc#case-lambda-expr? _L17222_)))
                       (if _$e17239_
                           _$e17239_
                           (let ((_$e17242_ (gxc#opt-lambda-expr? _L17222_)))
                             (if _$e17242_
                                 _$e17242_
                                 (gxc#kw-lambda-expr? _L17222_)))))
                     '#f)))
              (___kont2849628497_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2849228493_)
              (let ((_e1717317198_ (gx#stx-e ___stx2849228493_)))
                (let ((_tl1717517203_ (##cdr _e1717317198_))
                      (_hd1717417201_ (##car _e1717317198_)))
                  (if (gx#stx-pair? _hd1717417201_)
                      (let ((_e1717617206_ (gx#stx-e _hd1717417201_)))
                        (let ((_tl1717817211_ (##cdr _e1717617206_))
                              (_hd1717717209_ (##car _e1717617206_)))
                          (if (gx#stx-null? _tl1717817211_)
                              (if (gx#stx-pair? _tl1717517203_)
                                  (let ((_e1717917214_
                                         (gx#stx-e _tl1717517203_)))
                                    (let ((_tl1718117219_
                                           (##cdr _e1717917214_))
                                          (_hd1718017217_
                                           (##car _e1717917214_)))
                                      (if (gx#stx-null? _tl1718117219_)
                                          (___kont2849428495_
                                           _hd1718017217_
                                           _hd1717717209_)
                                          (___kont2849628497_))))
                                  (___kont2849628497_))
                              (___kont2849628497_))))
                      (___kont2849628497_))))
              (___kont2849628497_)))))))
