(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46947_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46948_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46949_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46966_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46975_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46976_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46983_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46984_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46987_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46988_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46989_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46990_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46993_|
    (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g46994_|
    (gx#core-quote-syntax '<>))
  (begin
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#lambda|
      (lambda (_stx23168_)
        (let ((_simple-lambda?23171_
               (lambda (_hd26321_) (gx#stx-andmap gx#identifier? _hd26321_))))
          (let ((_opt-lambda?23173_
                 (lambda (_hd26173_)
                   ((letrec ((_lp26176_
                              (lambda (_rest26179_ _opt?26181_)
                                (let ((_g2618426196_
                                       (lambda (_g2618526192_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2618526192_))))
                                  (let ((_g2618326211_
                                         (lambda (_g2618526200_)
                                           ((lambda ()
                                              (if _opt?26181_
                                                  (let ((_$e26207_
                                                         (gx#stx-null?
                                                          _rest26179_)))
                                                    (if _$e26207_
                                                        _$e26207_
                                                        (gx#identifier?
                                                         _rest26179_)))
                                                  '#f))))))
                                    (let ((_g2618226317_
                                           (lambda (_g2618526215_)
                                             (if (gx#stx-pair? _g2618526215_)
                                                 (let ((_e2618826218_
                                                        (gx#syntax-e
                                                         _g2618526215_)))
                                                   (let ((_hd2618926222_
                                                          (##car _e2618826218_))
                                                         (_tl2619026225_
                                                          (##cdr _e2618826218_)))
                                                     ((lambda (_L26228_
                                                               _L26230_)
                                                        (let ((_g2624626260_
                                                               (lambda (_g2624726256_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2624726256_))))
                  (let ((_g2624526271_
                         (lambda (_g2624726264_)
                           ((lambda ()
                              (if (gx#identifier? _L26230_)
                                  (if (not _opt?26181_)
                                      (_lp26176_ _L26228_ '#f)
                                      '#f)
                                  '#f))))))
                    (let ((_g2624426313_
                           (lambda (_g2624726275_)
                             (if (gx#stx-pair? _g2624726275_)
                                 (let ((_e2624926278_
                                        (gx#syntax-e _g2624726275_)))
                                   (let ((_hd2625026282_ (##car _e2624926278_))
                                         (_tl2625126285_
                                          (##cdr _e2624926278_)))
                                     (if (gx#stx-pair? _tl2625126285_)
                                         (let ((_e2625226288_
                                                (gx#syntax-e _tl2625126285_)))
                                           (let ((_hd2625326292_
                                                  (##car _e2625226288_))
                                                 (_tl2625426295_
                                                  (##cdr _e2625226288_)))
                                             (if (gx#stx-null? _tl2625426295_)
                                                 ((lambda (_L26298_)
                                                    (if (gx#identifier?
                                                         _L26298_)
                                                        (_lp26176_
                                                         _L26228_
                                                         '#t)
                                                        (_g2624526271_
                                                         _g2624726275_)))
                                                  _hd2625026282_)
                                                 (_g2624526271_
                                                  _g2624726275_))))
                                         (_g2624526271_ _g2624726275_))))
                                 (_g2624526271_ _g2624726275_)))))
                      (_g2624426313_ _L26230_)))))
              _tl2619026225_
              _hd2618926222_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2618326211_
                                                  _g2618526215_)))))
                                      (_g2618226317_ _rest26179_)))))))
                      _lp26176_)
                    _hd26173_
                    '#f))))
            (let ((_kw-lambda?23175_
                   (lambda (_hd25699_)
                     ((letrec ((_lp25702_
                                (lambda (_rest25705_ _opt?25707_ _key?25708_)
                                  (let ((_g2571325742_
                                         (lambda (_g2571425738_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2571425738_))))
                                    (let ((_g2571225757_
                                           (lambda (_g2571425746_)
                                             ((lambda ()
                                                (if _key?25708_
                                                    (let ((_$e25753_
                                                           (gx#stx-null?
                                                            _rest25705_)))
                                                      (if _$e25753_
                                                          _$e25753_
                                                          (gx#identifier?
                                                           _rest25705_)))
                                                    '#f))))))
                                      (let ((_g2571125863_
                                             (lambda (_g2571425761_)
                                               (if (gx#stx-pair? _g2571425761_)
                                                   (let ((_e2573425764_
                                                          (gx#syntax-e
                                                           _g2571425761_)))
                                                     (let ((_hd2573525768_
                                                            (##car _e2573425764_))
                                                           (_tl2573625771_
                                                            (##cdr _e2573425764_)))
                                                       ((lambda (_L25774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25776_)
                  (let ((_g2579225806_
                         (lambda (_g2579325802_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2579325802_))))
                    (let ((_g2579125817_
                           (lambda (_g2579325810_)
                             ((lambda ()
                                (if (gx#identifier? _L25776_)
                                    (if (not _opt?25707_)
                                        (_lp25702_ _L25774_ '#f _key?25708_)
                                        '#f)
                                    '#f))))))
                      (let ((_g2579025859_
                             (lambda (_g2579325821_)
                               (if (gx#stx-pair? _g2579325821_)
                                   (let ((_e2579525824_
                                          (gx#syntax-e _g2579325821_)))
                                     (let ((_hd2579625828_
                                            (##car _e2579525824_))
                                           (_tl2579725831_
                                            (##cdr _e2579525824_)))
                                       (if (gx#stx-pair? _tl2579725831_)
                                           (let ((_e2579825834_
                                                  (gx#syntax-e
                                                   _tl2579725831_)))
                                             (let ((_hd2579925838_
                                                    (##car _e2579825834_))
                                                   (_tl2580025841_
                                                    (##cdr _e2579825834_)))
                                               (if (gx#stx-null?
                                                    _tl2580025841_)
                                                   ((lambda (_L25844_)
                                                      (if (gx#identifier?
                                                           _L25844_)
                                                          (_lp25702_
                                                           _L25774_
                                                           '#t
                                                           _key?25708_)
                                                          '#f))
                                                    _hd2579625828_)
                                                   (_g2579125817_
                                                    _g2579325821_))))
                                           (_g2579125817_ _g2579325821_))))
                                   (_g2579125817_ _g2579325821_)))))
                        (_g2579025859_ _L25776_)))))
                _tl2573625771_
                _hd2573525768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2571225757_
                                                    _g2571425761_)))))
                                        (let ((_g2571025905_
                                               (lambda (_g2571425867_)
                                                 (if (gx#stx-pair?
                                                      _g2571425867_)
                                                     (let ((_e2572625870_
                                                            (gx#syntax-e
                                                             _g2571425867_)))
                                                       (let ((_hd2572725874_
                                                              (##car _e2572625870_))
                                                             (_tl2572825877_
                                                              (##cdr _e2572625870_)))
                                                         (if (gx#stx-datum?
                                                              _hd2572725874_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd2572725874_)
                                 '#!key)
                         (if (gx#stx-pair? _tl2572825877_)
                             (let ((_e2572925880_
                                    (gx#syntax-e _tl2572825877_)))
                               (let ((_hd2573025884_ (##car _e2572925880_))
                                     (_tl2573125887_ (##cdr _e2572925880_)))
                                 ((lambda (_L25890_ _L25892_)
                                    (if (gx#identifier? _L25892_)
                                        (_lp25702_ _L25890_ _opt?25707_ '#t)
                                        '#f))
                                  _tl2573125887_
                                  _hd2573025884_)))
                             (_g2571125863_ _g2571425867_))
                         (_g2571125863_ _g2571425867_))
                     (_g2571125863_ _g2571425867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2571125863_
                                                      _g2571425867_)))))
                                          (let ((_g2570926021_
                                                 (lambda (_g2571425909_)
                                                   (if (gx#stx-pair?
                                                        _g2571425909_)
                                                       (let ((_e2571825912_
                                                              (gx#syntax-e
                                                               _g2571425909_)))
                                                         (let ((_hd2571925916_
                                                                (##car _e2571825912_))
                                                               (_tl2572025919_
                                                                (##cdr _e2571825912_)))
                                                           (if (gx#stx-pair?
                                                                _tl2572025919_)
                                                               (let ((_e2572125922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2572025919_)))
                         (let ((_hd2572225926_ (##car _e2572125922_))
                               (_tl2572325929_ (##cdr _e2572125922_)))
                           ((lambda (_L25932_ _L25934_ _L25935_)
                              (if (gx#stx-keyword? _L25935_)
                                  (let ((_g2595025964_
                                         (lambda (_g2595125960_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2595125960_))))
                                    (let ((_g2594925975_
                                           (lambda (_g2595125968_)
                                             ((lambda ()
                                                (if (gx#identifier? _L25934_)
                                                    (_lp25702_
                                                     _L25932_
                                                     _opt?25707_
                                                     '#t)
                                                    '#f))))))
                                      (let ((_g2594826017_
                                             (lambda (_g2595125979_)
                                               (if (gx#stx-pair? _g2595125979_)
                                                   (let ((_e2595325982_
                                                          (gx#syntax-e
                                                           _g2595125979_)))
                                                     (let ((_hd2595425986_
                                                            (##car _e2595325982_))
                                                           (_tl2595525989_
                                                            (##cdr _e2595325982_)))
                                                       (if (gx#stx-pair?
                                                            _tl2595525989_)
                                                           (let ((_e2595625992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2595525989_)))
                     (let ((_hd2595725996_ (##car _e2595625992_))
                           (_tl2595825999_ (##cdr _e2595625992_)))
                       (if (gx#stx-null? _tl2595825999_)
                           ((lambda (_L26002_)
                              (if (gx#identifier? _L26002_)
                                  (_lp25702_ _L25932_ _opt?25707_ '#t)
                                  '#f))
                            _hd2595425986_)
                           (_g2594925975_ _g2595125979_))))
                   (_g2594925975_ _g2595125979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2594925975_
                                                    _g2595125979_)))))
                                        (_g2594826017_ _L25934_))))
                                  (_g2571025905_ _g2571425909_)))
                            _tl2572325929_
                            _hd2572225926_
                            _hd2571925916_)))
                       (_g2571025905_ _g2571425909_))))
               (_g2571025905_ _g2571425909_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2570926021_ _rest25705_)))))))))
                        _lp25702_)
                      _hd25699_
                      '#f
                      '#f))))
              (let ((_generate-bind23177_
                     (lambda (_e25435_)
                       (if (gx#underscore? _e25435_)
                           (gx#genident _e25435_)
                           _e25435_))))
                (let ((_check-duplicate-bindings23178_
                       (lambda (_hd25132_)
                         (let ((_cons-id25135_
                                (lambda (_id25431_ _ids25433_)
                                  (if (gx#underscore? _id25431_)
                                      _ids25433_
                                      (cons _id25431_ _ids25433_)))))
                           ((letrec ((_lp25138_
                                      (lambda (_rest25141_ _ids25143_)
                                        (let ((_g2514625158_
                                               (lambda (_g2514725154_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2514725154_))))
                                          (let ((_g2514525169_
                                                 (lambda (_g2514725162_)
                                                   ((lambda ()
                                                      (gx#check-duplicate-identifiers
                                                       (if (gx#stx-null?
                                                            _rest25141_)
                                                           _ids25143_
                                                           (_cons-id25135_
                                                            _rest25141_
                                                            _ids25143_))
                                                       _stx23168_))))))
                                            (let ((_g2514425427_
                                                   (lambda (_g2514725173_)
                                                     (if (gx#stx-pair?
                                                          _g2514725173_)
                                                         (let ((_e2515025176_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2514725173_)))
                   (let ((_hd2515125180_ (##car _e2515025176_))
                         (_tl2515225183_ (##cdr _e2515025176_)))
                     ((lambda (_L25186_ _L25188_)
                        (if (gx#identifier? _L25188_)
                            (_lp25138_
                             _L25186_
                             (_cons-id25135_ _L25188_ _ids25143_))
                            (if (gx#stx-pair? _L25188_)
                                (let ((_g2520425218_
                                       (lambda (_g2520525214_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2520525214_))))
                                  (let ((_g2520325259_
                                         (lambda (_g2520525222_)
                                           (if (gx#stx-pair? _g2520525222_)
                                               (let ((_e2520725225_
                                                      (gx#syntax-e
                                                       _g2520525222_)))
                                                 (let ((_hd2520825229_
                                                        (##car _e2520725225_))
                                                       (_tl2520925232_
                                                        (##cdr _e2520725225_)))
                                                   (if (gx#stx-pair?
                                                        _tl2520925232_)
                                                       (let ((_e2521025235_
                                                              (gx#syntax-e
                                                               _tl2520925232_)))
                                                         (let ((_hd2521125239_
                                                                (##car _e2521025235_))
                                                               (_tl2521225242_
                                                                (##cdr _e2521025235_)))
                                                           (if (gx#stx-null?
                                                                _tl2521225242_)
                                                               ((lambda (_L25245_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_lp25138_
                           _L25186_
                           (_cons-id25135_ _L25245_ _ids25143_)))
                        _hd2520825229_)
                       (_g2520425218_ _g2520525222_))))
               (_g2520425218_ _g2520525222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2520425218_
                                                _g2520525222_)))))
                                    (_g2520325259_ _L25188_)))
                                (if (gx#stx-keyword? _L25188_)
                                    (let ((_g2526325275_
                                           (lambda (_g2526425271_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2526425271_))))
                                      (let ((_g2526225377_
                                             (lambda (_g2526425279_)
                                               (if (gx#stx-pair? _g2526425279_)
                                                   (let ((_e2526725282_
                                                          (gx#syntax-e
                                                           _g2526425279_)))
                                                     (let ((_hd2526825286_
                                                            (##car _e2526725282_))
                                                           (_tl2526925289_
                                                            (##cdr _e2526725282_)))
                                                       ((lambda (_L25292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25294_)
                  (let ((_g2530625320_
                         (lambda (_g2530725316_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2530725316_))))
                    (let ((_g2530525331_
                           (lambda (_g2530725324_)
                             ((lambda ()
                                (_lp25138_
                                 _L25292_
                                 (_cons-id25135_ _L25294_ _ids25143_)))))))
                      (let ((_g2530425373_
                             (lambda (_g2530725335_)
                               (if (gx#stx-pair? _g2530725335_)
                                   (let ((_e2530925338_
                                          (gx#syntax-e _g2530725335_)))
                                     (let ((_hd2531025342_
                                            (##car _e2530925338_))
                                           (_tl2531125345_
                                            (##cdr _e2530925338_)))
                                       (if (gx#stx-pair? _tl2531125345_)
                                           (let ((_e2531225348_
                                                  (gx#syntax-e
                                                   _tl2531125345_)))
                                             (let ((_hd2531325352_
                                                    (##car _e2531225348_))
                                                   (_tl2531425355_
                                                    (##cdr _e2531225348_)))
                                               (if (gx#stx-null?
                                                    _tl2531425355_)
                                                   ((lambda (_L25358_)
                                                      (_lp25138_
                                                       _L25292_
                                                       (_cons-id25135_
                                                        _L25358_
                                                        _ids25143_)))
                                                    _hd2531025342_)
                                                   (_g2530525331_
                                                    _g2530725335_))))
                                           (_g2530525331_ _g2530725335_))))
                                   (_g2530525331_ _g2530725335_)))))
                        (_g2530425373_ _L25294_)))))
                _tl2526925289_
                _hd2526825286_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2526325275_
                                                    _g2526425279_)))))
                                        (_g2526225377_ _L25186_)))
                                    (if (eq? (gx#stx-e _L25188_) '#!key)
                                        (let ((_g2538125393_
                                               (lambda (_g2538225389_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2538225389_))))
                                          (let ((_g2538025423_
                                                 (lambda (_g2538225397_)
                                                   (if (gx#stx-pair?
                                                        _g2538225397_)
                                                       (let ((_e2538525400_
                                                              (gx#syntax-e
                                                               _g2538225397_)))
                                                         (let ((_hd2538625404_
                                                                (##car _e2538525400_))
                                                               (_tl2538725407_
                                                                (##cdr _e2538525400_)))
                                                           ((lambda (_L25410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L25412_)
                      (_lp25138_
                       _L25410_
                       (_cons-id25135_ _L25412_ _ids25143_)))
                    _tl2538725407_
                    _hd2538625404_)))
               (_g2538125393_ _g2538225397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2538025423_ _L25186_)))
                                        (error '"BUG: check-duplicate-bindings"
                                               _stx23168_
                                               _rest25141_))))))
                      _tl2515225183_
                      _hd2515125180_)))
                 (_g2514525169_ _g2514725173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2514425427_ _rest25141_)))))))
                              _lp25138_)
                            _hd25132_
                            '())))))
                  (let ((_generate-opt-primary23179_
                         (lambda (_pre24924_
                                  _opt24926_
                                  _tail24927_
                                  _body24928_)
                           (let ((_g2493024971_
                                  (lambda (_g2493124967_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2493124967_))))
                             (let ((_g2492925128_
                                    (lambda (_g2493124975_)
                                      (if (gx#stx-pair? _g2493124975_)
                                          (let ((_e2493624978_
                                                 (gx#syntax-e _g2493124975_)))
                                            (let ((_hd2493724982_
                                                   (##car _e2493624978_))
                                                  (_tl2493824985_
                                                   (##cdr _e2493624978_)))
                                              (if (gx#stx-pair/null?
                                                   _hd2493724982_)
                                                  (if (fx>= (gx#stx-length
                                                             _hd2493724982_)
                                                            '0)
                                                      (let ((_g46935_
                                                             (gx#syntax-split-splice
                                                              _hd2493724982_
                                                              '0)))
                                                        (begin
                                                          (let ((_g46936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g46935_)))
                    (if (not (fx= _g46936_ 2))
                        (error "Context expects 2 values" _g46936_)))
                  (let ((_target2493924988_ (values-ref _g46935_ 0))
                        (_tl2494124991_ (values-ref _g46935_ 1)))
                    (if (gx#stx-null? _tl2494124991_)
                        (letrec ((_loop2494224994_
                                  (lambda (_hd2494024998_ _pre2494625001_)
                                    (if (gx#stx-pair? _hd2494024998_)
                                        (let ((_e2494325004_
                                               (gx#syntax-e _hd2494024998_)))
                                          (let ((_lp-hd2494425008_
                                                 (##car _e2494325004_))
                                                (_lp-tl2494525011_
                                                 (##cdr _e2494325004_)))
                                            (_loop2494224994_
                                             _lp-tl2494525011_
                                             (cons _lp-hd2494425008_
                                                   _pre2494625001_))))
                                        (let ((_pre2494725014_
                                               (reverse _pre2494625001_)))
                                          (if (gx#stx-pair? _tl2493824985_)
                                              (let ((_e2494825018_
                                                     (gx#syntax-e
                                                      _tl2493824985_)))
                                                (let ((_hd2494925022_
                                                       (##car _e2494825018_))
                                                      (_tl2495025025_
                                                       (##cdr _e2494825018_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd2494925022_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2494925022_)
                        '0)
                  (let ((_g46937_ (gx#syntax-split-splice _hd2494925022_ '0)))
                    (begin
                      (let ((_g46938_ (values-count _g46937_)))
                        (if (not (fx= _g46938_ 2))
                            (error "Context expects 2 values" _g46938_)))
                      (let ((_target2495125028_ (values-ref _g46937_ 0))
                            (_tl2495325031_ (values-ref _g46937_ 1)))
                        (if (gx#stx-null? _tl2495325031_)
                            (letrec ((_loop2495425034_
                                      (lambda (_hd2495225038_ _opt2495825041_)
                                        (if (gx#stx-pair? _hd2495225038_)
                                            (let ((_e2495525044_
                                                   (gx#syntax-e
                                                    _hd2495225038_)))
                                              (let ((_lp-hd2495625048_
                                                     (##car _e2495525044_))
                                                    (_lp-tl2495725051_
                                                     (##cdr _e2495525044_)))
                                                (_loop2495425034_
                                                 _lp-tl2495725051_
                                                 (cons _lp-hd2495625048_
                                                       _opt2495825041_))))
                                            (let ((_opt2495925054_
                                                   (reverse _opt2495825041_)))
                                              (if (gx#stx-pair? _tl2495025025_)
                                                  (let ((_e2496025058_
                                                         (gx#syntax-e
                                                          _tl2495025025_)))
                                                    (let ((_hd2496125062_
                                                           (##car _e2496025058_))
                                                          (_tl2496225065_
                                                           (##cdr _e2496025058_)))
                                                      (if (gx#stx-pair?
                                                           _tl2496225065_)
                                                          (let ((_e2496325068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2496225065_)))
                    (let ((_hd2496425072_ (##car _e2496325068_))
                          (_tl2496525075_ (##cdr _e2496325068_)))
                      (if (gx#stx-null? _tl2496525075_)
                          ((lambda (_L25078_ _L25080_ _L25081_ _L25082_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g2511125116_
                                                             _g2511225119_)
                                                      (cons _g2511125116_
                                                            _g2511225119_))
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2511325122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2511425125_)
                       (cons _g2511325122_ _g2511425125_))
                     _L25080_
                     _L25081_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L25082_))
                                           _L25078_))))
                           _hd2496425072_
                           _hd2496125062_
                           _opt2495925054_
                           _pre2494725014_)
                          (_g2493024971_ _g2493124975_))))
                  (_g2493024971_ _g2493124975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2493024971_
                                                   _g2493124975_)))))))
                              (_loop2495425034_ _target2495125028_ '()))
                            (_g2493024971_ _g2493124975_)))))
                  (_g2493024971_ _g2493124975_))
              (_g2493024971_ _g2493124975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2493024971_
                                               _g2493124975_)))))))
                          (_loop2494224994_ _target2493924988_ '()))
                        (_g2493024971_ _g2493124975_)))))
              (_g2493024971_ _g2493124975_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2493024971_
                                                   _g2493124975_))))
                                          (_g2493024971_ _g2493124975_)))))
                               (_g2492925128_
                                (list _pre24924_
                                      (map car _opt24926_)
                                      _tail24927_
                                      _body24928_)))))))
                    (let ((_generate-opt-clause23182_
                           (lambda (_primary24173_ _pre24175_ _opt24176_)
                             ((letrec ((_recur24178_
                                        (lambda (_opt-rest24181_ _right24183_)
                                          (if (pair? _opt-rest24181_)
                                              (let ((_hd24185_
                                                     (car _opt-rest24181_)))
                                                (let ((_rest24188_
                                                       (cdr _opt-rest24181_)))
                                                  (let ((_g2419124199_
                                                         (lambda (_g2419224195_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2419224195_))))
                                                    (let ((_g2419024288_
                                                           (lambda (_g2419224203_)
                                                             ((lambda (_L24206_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g2422224230_
                                 (lambda (_g2422324226_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2422324226_))))
                            (let ((_g2422124284_
                                   (lambda (_g2422324234_)
                                     ((lambda (_L24237_)
                                        (let ()
                                          (let ((_g2425024258_
                                                 (lambda (_g2425124254_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2425124254_))))
                                            (let ((_g2424924280_
                                                   (lambda (_g2425124262_)
                                                     ((lambda (_L24265_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L24206_ '())
                                            (cons _L24237_ '()))
                                      '())
                                (cons _L24265_ '()))))))
              _g2425124262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2424924280_
                                               (_recur24178_
                                                _rest24188_
                                                (cons _L24206_
                                                      _right24183_)))))))
                                      _g2422324234_))))
                              (_g2422124284_ (cdr _hd24185_))))))
                      _g2419224203_))))
              (_g2419024288_ (car _hd24185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2429224329_
                                                     (lambda (_g2429324325_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2429324325_))))
                                                (let ((_g2429124471_
                                                       (lambda (_g2429324333_)
                                                         (if (gx#stx-pair?
                                                              _g2429324333_)
                                                             (let ((_e2429724336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2429324333_)))
                       (let ((_hd2429824340_ (##car _e2429724336_))
                             (_tl2429924343_ (##cdr _e2429724336_)))
                         (if (gx#stx-pair/null? _hd2429824340_)
                             (if (fx>= (gx#stx-length _hd2429824340_) '0)
                                 (let ((_g46931_
                                        (gx#syntax-split-splice
                                         _hd2429824340_
                                         '0)))
                                   (begin
                                     (let ((_g46932_ (values-count _g46931_)))
                                       (if (not (fx= _g46932_ 2))
                                           (error "Context expects 2 values"
                                                  _g46932_)))
                                     (let ((_target2430024346_
                                            (values-ref _g46931_ 0))
                                           (_tl2430224349_
                                            (values-ref _g46931_ 1)))
                                       (if (gx#stx-null? _tl2430224349_)
                                           (letrec ((_loop2430324352_
                                                     (lambda (_hd2430124356_
                                                              _pre2430724359_)
                                                       (if (gx#stx-pair?
                                                            _hd2430124356_)
                                                           (let ((_e2430424362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2430124356_)))
                     (let ((_lp-hd2430524366_ (##car _e2430424362_))
                           (_lp-tl2430624369_ (##cdr _e2430424362_)))
                       (_loop2430324352_
                        _lp-tl2430624369_
                        (cons _lp-hd2430524366_ _pre2430724359_))))
                   (let ((_pre2430824372_ (reverse _pre2430724359_)))
                     (if (gx#stx-pair? _tl2429924343_)
                         (let ((_e2430924376_ (gx#syntax-e _tl2429924343_)))
                           (let ((_hd2431024380_ (##car _e2430924376_))
                                 (_tl2431124383_ (##cdr _e2430924376_)))
                             (if (gx#stx-pair/null? _hd2431024380_)
                                 (if (fx>= (gx#stx-length _hd2431024380_) '0)
                                     (let ((_g46933_
                                            (gx#syntax-split-splice
                                             _hd2431024380_
                                             '0)))
                                       (begin
                                         (let ((_g46934_
                                                (values-count _g46933_)))
                                           (if (not (fx= _g46934_ 2))
                                               (error "Context expects 2 values"
                                                      _g46934_)))
                                         (let ((_target2431224386_
                                                (values-ref _g46933_ 0))
                                               (_tl2431424389_
                                                (values-ref _g46933_ 1)))
                                           (if (gx#stx-null? _tl2431424389_)
                                               (letrec ((_loop2431524392_
                                                         (lambda (_hd2431324396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opt2431924399_)
                   (if (gx#stx-pair? _hd2431324396_)
                       (let ((_e2431624402_ (gx#syntax-e _hd2431324396_)))
                         (let ((_lp-hd2431724406_ (##car _e2431624402_))
                               (_lp-tl2431824409_ (##cdr _e2431624402_)))
                           (_loop2431524392_
                            _lp-tl2431824409_
                            (cons _lp-hd2431724406_ _opt2431924399_))))
                       (let ((_opt2432024412_ (reverse _opt2431924399_)))
                         (if (gx#stx-pair? _tl2431124383_)
                             (let ((_e2432124416_
                                    (gx#syntax-e _tl2431124383_)))
                               (let ((_hd2432224420_ (##car _e2432124416_))
                                     (_tl2432324423_ (##cdr _e2432124416_)))
                                 (if (gx#stx-null? _tl2432324423_)
                                     ((lambda (_L24426_ _L24428_ _L24429_)
                                        (let ()
                                          (gx#stx-wrap-source
                                           (cons _L24426_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2445424459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2445524462_)
                    (cons _g2445424459_ _g2445524462_))
                  (begin
                    '#!void
                    (foldr (lambda (_g2445624465_ _g2445724468_)
                             (cons _g2445624465_ _g2445724468_))
                           '()
                           _L24428_))
                  _L24429_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _stx23168_))))
                                      _hd2432224420_
                                      _opt2432024412_
                                      _pre2430824372_)
                                     (_g2429224329_ _g2429324333_))))
                             (_g2429224329_ _g2429324333_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2431524392_
                                                  _target2431224386_
                                                  '()))
                                               (_g2429224329_
                                                _g2429324333_)))))
                                     (_g2429224329_ _g2429324333_))
                                 (_g2429224329_ _g2429324333_))))
                         (_g2429224329_ _g2429324333_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2430324352_
                                              _target2430024346_
                                              '()))
                                           (_g2429224329_ _g2429324333_)))))
                                 (_g2429224329_ _g2429324333_))
                             (_g2429224329_ _g2429324333_))))
                     (_g2429224329_ _g2429324333_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2429124471_
                                                   (list _pre24175_
                                                         (reverse _right24183_)
                                                         _primary24173_))))))))
                                _recur24178_)
                              _opt24176_
                              '()))))
                      (let ((_generate-kw-primary23183_
                             (lambda (_kwvar23820_
                                      _kwargs23822_
                                      _args23823_
                                      _body23824_)
                               (let ((_absent23826_ (gx#genident 'absent)))
                                 (letrec ((_make-body23828_
                                           (lambda (_kwargs23992_ _body23994_)
                                             (if (pair? _kwargs23992_)
                                                 (let ((_next23996_
                                                        (car _kwargs23992_)))
                                                   (let ((_rest23999_
                                                          (cdr _kwargs23992_)))
                                                     (let ((_key24002_
                                                            (car _next23996_)))
                                                       (let ((_var24005_
                                                              (cadr _next23996_)))
                                                         (let ((_default24008_
                                                                (caddr _next23996_)))
                                                           (let ()
                                                             (let ((_g2401324048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2401424044_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2401424044_))))
                       (let ((_g2401224169_
                              (lambda (_g2401424052_)
                                (if (gx#stx-pair? _g2401424052_)
                                    (let ((_e2402224055_
                                           (gx#syntax-e _g2401424052_)))
                                      (let ((_hd2402324059_
                                             (##car _e2402224055_))
                                            (_tl2402424062_
                                             (##cdr _e2402224055_)))
                                        (if (gx#stx-pair? _tl2402424062_)
                                            (let ((_e2402524065_
                                                   (gx#syntax-e
                                                    _tl2402424062_)))
                                              (let ((_hd2402624069_
                                                     (##car _e2402524065_))
                                                    (_tl2402724072_
                                                     (##cdr _e2402524065_)))
                                                (if (gx#stx-pair?
                                                     _tl2402724072_)
                                                    (let ((_e2402824075_
                                                           (gx#syntax-e
                                                            _tl2402724072_)))
                                                      (let ((_hd2402924079_
                                                             (##car _e2402824075_))
                                                            (_tl2403024082_
                                                             (##cdr _e2402824075_)))
                                                        (if (gx#stx-pair?
                                                             _tl2403024082_)
                                                            (let ((_e2403124085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2403024082_)))
                      (let ((_hd2403224089_ (##car _e2403124085_))
                            (_tl2403324092_ (##cdr _e2403124085_)))
                        (if (gx#stx-pair? _tl2403324092_)
                            (let ((_e2403424095_ (gx#syntax-e _tl2403324092_)))
                              (let ((_hd2403524099_ (##car _e2403424095_))
                                    (_tl2403624102_ (##cdr _e2403424095_)))
                                (if (gx#stx-pair? _tl2403624102_)
                                    (let ((_e2403724105_
                                           (gx#syntax-e _tl2403624102_)))
                                      (let ((_hd2403824109_
                                             (##car _e2403724105_))
                                            (_tl2403924112_
                                             (##cdr _e2403724105_)))
                                        (if (gx#stx-pair? _tl2403924112_)
                                            (let ((_e2404024115_
                                                   (gx#syntax-e
                                                    _tl2403924112_)))
                                              (let ((_hd2404124119_
                                                     (##car _e2404024115_))
                                                    (_tl2404224122_
                                                     (##cdr _e2404024115_)))
                                                (if (gx#stx-null?
                                                     _tl2404224122_)
                                                    ((lambda (_L24125_
                                                              _L24127_
                                                              _L24128_
                                                              _L24129_
                                                              _L24130_
                                                              _L24131_
                                                              _L24132_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _L24129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'hash-ref)
                                                     (cons _L24132_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L24131_ '()))
                         (cons _L24125_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'let-values)
                                         (cons (cons (cons (cons _L24130_ '())
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'if)
                               (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons _L24129_ (cons _L24125_ '())))
                                     (cons _L24128_ (cons _L24129_ '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L24127_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd2404124119_
                                                     _hd2403824109_
                                                     _hd2403524099_
                                                     _hd2403224089_
                                                     _hd2402924079_
                                                     _hd2402624069_
                                                     _hd2402324059_)
                                                    (_g2401324048_
                                                     _g2401424052_))))
                                            (_g2401324048_ _g2401424052_))))
                                    (_g2401324048_ _g2401424052_))))
                            (_g2401324048_ _g2401424052_))))
                    (_g2401324048_ _g2401424052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2401324048_
                                                     _g2401424052_))))
                                            (_g2401324048_ _g2401424052_))))
                                    (_g2401324048_ _g2401424052_)))))
                         (_g2401224169_
                          (list _kwvar23820_
                                _key24002_
                                _var24005_
                                (gx#genident _var24005_)
                                _default24008_
                                (_make-body23828_ _rest23999_ _body23994_)
                                _absent23826_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons 'begin _body23994_)))))
                                   (let ((_g2383023838_
                                          (lambda (_g2383123834_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2383123834_))))
                                     (let ((_g2382923988_
                                            (lambda (_g2383123842_)
                                              ((lambda (_L23845_)
                                                 (let ()
                                                   (let ((_g2385823866_
                                                          (lambda (_g2385923862_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2385923862_))))
                                                     (let ((_g2385723984_
                                                            (lambda (_g2385923870_)
                                                              ((lambda (_L23873_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g2388623894_
                                  (lambda (_g2388723890_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2388723890_))))
                             (let ((_g2388523980_
                                    (lambda (_g2388723898_)
                                      ((lambda (_L23901_)
                                         (let ()
                                           (let ((_g2391423922_
                                                  (lambda (_g2391523918_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2391523918_))))
                                             (let ((_g2391323976_
                                                    (lambda (_g2391523926_)
                                                      ((lambda (_L23929_)
                                                         (let ()
                                                           (let ((_g2394223950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2394323946_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2394323946_))))
                     (let ((_g2394123972_
                            (lambda (_g2394323954_)
                              ((lambda (_L23957_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons (cons _L23957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (cons (gx#datum->syntax '#f 'make-vector)
                                 (cons '0 '()))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L23929_ '()))))))
                               _g2394323954_))))
                       (_g2394123972_ _absent23826_)))))
               _g2391523926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2391323976_
                                                (gx#stx-wrap-source
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons _L23845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L23873_)
                     (cons _L23901_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source
                                                  _stx23168_)))))))
                                       _g2388723898_))))
                               (_g2388523980_
                                (_make-body23828_
                                 _kwargs23822_
                                 _body23824_))))))
                       _g2385923870_))))
               (_g2385723984_ _args23823_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2383123842_))))
                                       (_g2382923988_ _kwvar23820_))))))))
                        (let ((_generate-kw-table23185_
                               (lambda (_kws23707_)
                                 ((letrec ((_rehash23710_
                                            (lambda (_pht23713_)
                                              ((letrec ((_lp23716_
                                                         (lambda (_rest23719_)
                                                           (if (pair? _rest23719_)
                                                               (let ((_key23722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _rest23719_)))
                         (let ((_rest23725_ (cdr _rest23719_)))
                           (let ((_pos23728_
                                  (fxmodulo
                                   (keyword-hash _key23722_)
                                   (vector-length _pht23713_))))
                             (let ()
                               (if (vector-ref _pht23713_ _pos23728_)
                                   (if (fx< (vector-length _pht23713_) '8192)
                                       (_rehash23710_
                                        (make-vector
                                         (fx1+ (* '2
                                                  (vector-length _pht23713_)))
                                         '#f))
                                       (error '"Unresolvable keyword collision"
                                              _kws23707_))
                                   (begin
                                     (vector-set!
                                      _pht23713_
                                      _pos23728_
                                      _key23722_)
                                     (_lp23716_ _rest23725_)))))))
                       _pht23713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _lp23716_)
                                               _kws23707_))))
                                    _rehash23710_)
                                  (make-vector (length _kws23707_) '#f)))))
                          (let ((_opt-lambda-split23174_
                                 (lambda (_hd26025_)
                                   ((letrec ((_lp26028_
                                              (lambda (_rest26031_
                                                       _pre26033_
                                                       _opt26034_)
                                                (let ((_g2603726049_
                                                       (lambda (_g2603826045_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2603826045_))))
                                                  (let ((_g2603626060_
                                                         (lambda (_g2603826053_)
                                                           ((lambda ()
                                                              (values (reverse _pre26033_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _opt26034_)
                              (if (gx#identifier? _rest26031_)
                                  (_generate-bind23177_ _rest26031_)
                                  _rest26031_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g2603526169_
                                                           (lambda (_g2603826064_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2603826064_)
                         (let ((_e2604126067_ (gx#syntax-e _g2603826064_)))
                           (let ((_hd2604226071_ (##car _e2604126067_))
                                 (_tl2604326074_ (##cdr _e2604126067_)))
                             ((lambda (_L26077_ _L26079_)
                                (let ((_g2609526110_
                                       (lambda (_g2609626106_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2609626106_))))
                                  (let ((_g2609426121_
                                         (lambda (_g2609626114_)
                                           ((lambda ()
                                              (_lp26028_
                                               _L26077_
                                               (cons (_generate-bind23177_
                                                      _L26079_)
                                                     _pre26033_)
                                               _opt26034_))))))
                                    (let ((_g2609326165_
                                           (lambda (_g2609626125_)
                                             (if (gx#stx-pair? _g2609626125_)
                                                 (let ((_e2609926128_
                                                        (gx#syntax-e
                                                         _g2609626125_)))
                                                   (let ((_hd2610026132_
                                                          (##car _e2609926128_))
                                                         (_tl2610126135_
                                                          (##cdr _e2609926128_)))
                                                     (if (gx#stx-pair?
                                                          _tl2610126135_)
                                                         (let ((_e2610226138_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2610126135_)))
                   (let ((_hd2610326142_ (##car _e2610226138_))
                         (_tl2610426145_ (##cdr _e2610226138_)))
                     (if (gx#stx-null? _tl2610426145_)
                         ((lambda (_L26148_ _L26150_)
                            (_lp26028_
                             _L26077_
                             _pre26033_
                             (cons (cons (_generate-bind23177_ _L26150_)
                                         _L26148_)
                                   _opt26034_)))
                          _hd2610326142_
                          _hd2610026132_)
                         (_g2609426121_ _g2609626125_))))
                 (_g2609426121_ _g2609626125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2609426121_
                                                  _g2609626125_)))))
                                      (_g2609326165_ _L26079_)))))
                              _tl2604326074_
                              _hd2604226071_)))
                         (_g2603626060_ _g2603826064_)))))
              (_g2603526169_ _rest26031_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp26028_)
                                    _hd26025_
                                    '()
                                    '()))))
                            (let ((_kw-lambda-split23176_
                                   (lambda (_hd25438_)
                                     ((letrec ((_lp25441_
                                                (lambda (_rest25444_
                                                         _kwvar25446_
                                                         _kwargs25447_
                                                         _args25448_)
                                                  (let ((_g2545325482_
                                                         (lambda (_g2545425478_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2545425478_))))
                                                    (let ((_g2545225493_
                                                           (lambda (_g2545425486_)
                                                             ((lambda ()
                                                                (values _kwvar25446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse _kwargs25447_)
                                (foldl cons _rest25444_ _args25448_)))))))
              (let ((_g2545125527_
                     (lambda (_g2545425497_)
                       (if (gx#stx-pair? _g2545425497_)
                           (let ((_e2547425500_ (gx#syntax-e _g2545425497_)))
                             (let ((_hd2547525504_ (##car _e2547425500_))
                                   (_tl2547625507_ (##cdr _e2547425500_)))
                               ((lambda (_L25510_ _L25512_)
                                  (_lp25441_
                                   _L25510_
                                   _kwvar25446_
                                   _kwargs25447_
                                   (cons _L25512_ _args25448_)))
                                _tl2547625507_
                                _hd2547525504_)))
                           (_g2545225493_ _g2545425497_)))))
                (let ((_g2545025569_
                       (lambda (_g2545425531_)
                         (if (gx#stx-pair? _g2545425531_)
                             (let ((_e2546625534_ (gx#syntax-e _g2545425531_)))
                               (let ((_hd2546725538_ (##car _e2546625534_))
                                     (_tl2546825541_ (##cdr _e2546625534_)))
                                 (if (gx#stx-datum? _hd2546725538_)
                                     (if (equal? (gx#stx-e _hd2546725538_)
                                                 '#!key)
                                         (if (gx#stx-pair? _tl2546825541_)
                                             (let ((_e2546925544_
                                                    (gx#syntax-e
                                                     _tl2546825541_)))
                                               (let ((_hd2547025548_
                                                      (##car _e2546925544_))
                                                     (_tl2547125551_
                                                      (##cdr _e2546925544_)))
                                                 ((lambda (_L25554_ _L25556_)
                                                    (if _kwvar25446_
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; duplicate #!key argument"
                                                         _stx23168_
                                                         _hd25438_
                                                         _L25556_)
                                                        (_lp25441_
                                                         _L25554_
                                                         (_generate-bind23177_
                                                          _L25556_)
                                                         _kwargs25447_
                                                         _args25448_)))
                                                  _tl2547125551_
                                                  _hd2547025548_)))
                                             (_g2545125527_ _g2545425531_))
                                         (_g2545125527_ _g2545425531_))
                                     (_g2545125527_ _g2545425531_))))
                             (_g2545125527_ _g2545425531_)))))
                  (let ((_g2544925695_
                         (lambda (_g2545425573_)
                           (if (gx#stx-pair? _g2545425573_)
                               (let ((_e2545825576_
                                      (gx#syntax-e _g2545425573_)))
                                 (let ((_hd2545925580_ (##car _e2545825576_))
                                       (_tl2546025583_ (##cdr _e2545825576_)))
                                   (if (gx#stx-pair? _tl2546025583_)
                                       (let ((_e2546125586_
                                              (gx#syntax-e _tl2546025583_)))
                                         (let ((_hd2546225590_
                                                (##car _e2546125586_))
                                               (_tl2546325593_
                                                (##cdr _e2546125586_)))
                                           ((lambda (_L25596_
                                                     _L25598_
                                                     _L25599_)
                                              (if (gx#stx-keyword? _L25599_)
                                                  (let ((_key25613_
                                                         (gx#stx-e _L25599_)))
                                                    (if (find (lambda (_kwarg25616_)
                                                                (eq? _key25613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _kwarg25616_)))
                      _kwargs25447_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; duplicate keyword argument"
                 _stx23168_
                 _hd25438_
                 _key25613_)
                (let ((_g2562025635_
                       (lambda (_g2562125631_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2562125631_))))
                  (let ((_g2561925646_
                         (lambda (_g2562125639_)
                           ((lambda ()
                              (_lp25441_
                               _L25596_
                               _kwvar25446_
                               (cons (list _key25613_
                                           (_generate-bind23177_ _L25598_)
                                           (cons (gx#datum->syntax '#f 'error)
                                                 (cons '"Missing required keyword argument"
                                                       (cons _L25599_ '()))))
                                     _kwargs25447_)
                               _args25448_))))))
                    (let ((_g2561825691_
                           (lambda (_g2562125650_)
                             (if (gx#stx-pair? _g2562125650_)
                                 (let ((_e2562425653_
                                        (gx#syntax-e _g2562125650_)))
                                   (let ((_hd2562525657_ (##car _e2562425653_))
                                         (_tl2562625660_
                                          (##cdr _e2562425653_)))
                                     (if (gx#stx-pair? _tl2562625660_)
                                         (let ((_e2562725663_
                                                (gx#syntax-e _tl2562625660_)))
                                           (let ((_hd2562825667_
                                                  (##car _e2562725663_))
                                                 (_tl2562925670_
                                                  (##cdr _e2562725663_)))
                                             (if (gx#stx-null? _tl2562925670_)
                                                 ((lambda (_L25673_ _L25675_)
                                                    (_lp25441_
                                                     _L25596_
                                                     _kwvar25446_
                                                     (cons (list _key25613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_generate-bind23177_ _L25675_)
                         _L25673_)
                   _kwargs25447_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _args25448_))
                                                  _hd2562825667_
                                                  _hd2562525657_)
                                                 (_g2561925646_
                                                  _g2562125650_))))
                                         (_g2561925646_ _g2562125650_))))
                                 (_g2561925646_ _g2562125650_)))))
                      (_g2561825691_ _L25598_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2545025569_
                                                   _g2545425573_)))
                                            _tl2546325593_
                                            _hd2546225590_
                                            _hd2545925580_)))
                                       (_g2545025569_ _g2545425573_))))
                               (_g2545025569_ _g2545425573_)))))
                    (_g2544925695_ _rest25444_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp25441_)
                                      _hd25438_
                                      '#f
                                      '()
                                      '()))))
                              (let ((_generate-opt-dispatch*23181_
                                     (lambda (_primary24475_
                                              _pre24477_
                                              _opt24478_
                                              _tail24479_)
                                       ((letrec ((_recur24481_
                                                  (lambda (_opt-rest24484_
                                                           _right24486_)
                                                    (if (pair? _opt-rest24484_)
                                                        (let ((_hd24488_
                                                               (caar _opt-rest24484_)))
                                                          (let ((_rest24491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cdr _opt-rest24484_)))
                    (let ((_right*24494_ (cons _hd24488_ _right24486_)))
                      (let ((_g2449724514_
                             (lambda (_g2449824510_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2449824510_))))
                        (let ((_g2449624697_
                               (lambda (_g2449824518_)
                                 (if (gx#stx-pair/null? _g2449824518_)
                                     (if (fx>= (gx#stx-length _g2449824518_)
                                               '0)
                                         (let ((_g46923_
                                                (gx#syntax-split-splice
                                                 _g2449824518_
                                                 '0)))
                                           (begin
                                             (let ((_g46924_
                                                    (values-count _g46923_)))
                                               (if (not (fx= _g46924_ 2))
                                                   (error "Context expects 2 values"
                                                          _g46924_)))
                                             (let ((_target2450024521_
                                                    (values-ref _g46923_ 0))
                                                   (_tl2450224524_
                                                    (values-ref _g46923_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2450224524_)
                                                   (letrec ((_loop2450324527_
                                                             (lambda (_hd2450124531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pre-bind2450724534_)
                       (if (gx#stx-pair? _hd2450124531_)
                           (let ((_e2450424537_ (gx#syntax-e _hd2450124531_)))
                             (let ((_lp-hd2450524541_ (##car _e2450424537_))
                                   (_lp-tl2450624544_ (##cdr _e2450424537_)))
                               (_loop2450324527_
                                _lp-tl2450624544_
                                (cons _lp-hd2450524541_
                                      _pre-bind2450724534_))))
                           (let ((_pre-bind2450824547_
                                  (reverse _pre-bind2450724534_)))
                             ((lambda (_L24551_)
                                (let ()
                                  (let ((_g2457224589_
                                         (lambda (_g2457324585_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2457324585_))))
                                    (let ((_g2457124693_
                                           (lambda (_g2457324593_)
                                             (if (gx#stx-pair/null?
                                                  _g2457324593_)
                                                 (if (fx>= (gx#stx-length
                                                            _g2457324593_)
                                                           '0)
                                                     (let ((_g46925_
                                                            (gx#syntax-split-splice
                                                             _g2457324593_
                                                             '0)))
                                                       (begin
                                                         (let ((_g46926_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g46925_)))
                   (if (not (fx= _g46926_ 2))
                       (error "Context expects 2 values" _g46926_)))
                 (let ((_target2457524596_ (values-ref _g46925_ 0))
                       (_tl2457724599_ (values-ref _g46925_ 1)))
                   (if (gx#stx-null? _tl2457724599_)
                       (letrec ((_loop2457824602_
                                 (lambda (_hd2457624606_ _opt-bind2458224609_)
                                   (if (gx#stx-pair? _hd2457624606_)
                                       (let ((_e2457924612_
                                              (gx#syntax-e _hd2457624606_)))
                                         (let ((_lp-hd2458024616_
                                                (##car _e2457924612_))
                                               (_lp-tl2458124619_
                                                (##cdr _e2457924612_)))
                                           (_loop2457824602_
                                            _lp-tl2458124619_
                                            (cons _lp-hd2458024616_
                                                  _opt-bind2458224609_))))
                                       (let ((_opt-bind2458324622_
                                              (reverse _opt-bind2458224609_)))
                                         ((lambda (_L24626_)
                                            (let ()
                                              (let ((_g2464324651_
                                                     (lambda (_g2464424647_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2464424647_))))
                                                (let ((_g2464224689_
                                                       (lambda (_g2464424655_)
                                                         ((lambda (_L24658_)
                                                            (let ()
                                                              (let ()
                                                                (cons (list (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr (lambda (_g2467224677_
                                                      _g2467324680_)
                                               (cons _g2467224677_
                                                     _g2467324680_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2467424683_
                                                               _g2467524686_)
                                                        (cons _g2467424683_
                                                              _g2467524686_))
                                                      (cons _L24658_ '())
                                                      _L24626_))
                                             _L24551_))
                                    (_generate-opt-clause23182_
                                     _primary24475_
                                     (foldr cons
                                            (reverse _right*24494_)
                                            _pre24477_)
                                     _rest24491_))
                              (_recur24481_ _rest24491_ _right*24494_)))))
                  _g2464424655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2464224689_ _hd24488_)))))
                                          _opt-bind2458324622_))))))
                         (_loop2457824602_ _target2457524596_ '()))
                       (_g2457224589_ _g2457324593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2457224589_
                                                      _g2457324593_))
                                                 (_g2457224589_
                                                  _g2457324593_)))))
                                      (_g2457124693_
                                       (reverse _right24486_))))))
                              _pre-bind2450824547_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2450324527_
                                                      _target2450024521_
                                                      '()))
                                                   (_g2449724514_
                                                    _g2449824518_)))))
                                         (_g2449724514_ _g2449824518_))
                                     (_g2449724514_ _g2449824518_)))))
                          (_g2449624697_ _pre24477_))))))
                (if (gx#stx-null? _tail24479_)
                    '()
                    (let ((_g2470124742_
                           (lambda (_g2470224738_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2470224738_))))
                      (let ((_g2470024914_
                             (lambda (_g2470224746_)
                               (if (gx#stx-pair? _g2470224746_)
                                   (let ((_e2470724749_
                                          (gx#syntax-e _g2470224746_)))
                                     (let ((_hd2470824753_
                                            (##car _e2470724749_))
                                           (_tl2470924756_
                                            (##cdr _e2470724749_)))
                                       (if (gx#stx-pair/null? _hd2470824753_)
                                           (if (fx>= (gx#stx-length
                                                      _hd2470824753_)
                                                     '0)
                                               (let ((_g46927_
                                                      (gx#syntax-split-splice
                                                       _hd2470824753_
                                                       '0)))
                                                 (begin
                                                   (let ((_g46928_
                                                          (values-count
                                                           _g46927_)))
                                                     (if (not (fx= _g46928_ 2))
                                                         (error "Context expects 2 values"
                                                                _g46928_)))
                                                   (let ((_target2471024759_
                                                          (values-ref
                                                           _g46927_
                                                           0))
                                                         (_tl2471224762_
                                                          (values-ref
                                                           _g46927_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2471224762_)
                                                         (letrec ((_loop2471324765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2471124769_ _pre2471724772_)
                             (if (gx#stx-pair? _hd2471124769_)
                                 (let ((_e2471424775_
                                        (gx#syntax-e _hd2471124769_)))
                                   (let ((_lp-hd2471524779_
                                          (##car _e2471424775_))
                                         (_lp-tl2471624782_
                                          (##cdr _e2471424775_)))
                                     (_loop2471324765_
                                      _lp-tl2471624782_
                                      (cons _lp-hd2471524779_
                                            _pre2471724772_))))
                                 (let ((_pre2471824785_
                                        (reverse _pre2471724772_)))
                                   (if (gx#stx-pair? _tl2470924756_)
                                       (let ((_e2471924789_
                                              (gx#syntax-e _tl2470924756_)))
                                         (let ((_hd2472024793_
                                                (##car _e2471924789_))
                                               (_tl2472124796_
                                                (##cdr _e2471924789_)))
                                           (if (gx#stx-pair/null?
                                                _hd2472024793_)
                                               (if (fx>= (gx#stx-length
                                                          _hd2472024793_)
                                                         '0)
                                                   (let ((_g46929_
                                                          (gx#syntax-split-splice
                                                           _hd2472024793_
                                                           '0)))
                                                     (begin
                                                       (let ((_g46930_
                                                              (values-count
                                                               _g46929_)))
                                                         (if (not (fx= _g46930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g46930_)))
               (let ((_target2472224799_ (values-ref _g46929_ 0))
                     (_tl2472424802_ (values-ref _g46929_ 1)))
                 (if (gx#stx-null? _tl2472424802_)
                     (letrec ((_loop2472524805_
                               (lambda (_hd2472324809_ _opt2472924812_)
                                 (if (gx#stx-pair? _hd2472324809_)
                                     (let ((_e2472624815_
                                            (gx#syntax-e _hd2472324809_)))
                                       (let ((_lp-hd2472724819_
                                              (##car _e2472624815_))
                                             (_lp-tl2472824822_
                                              (##cdr _e2472624815_)))
                                         (_loop2472524805_
                                          _lp-tl2472824822_
                                          (cons _lp-hd2472724819_
                                                _opt2472924812_))))
                                     (let ((_opt2473024825_
                                            (reverse _opt2472924812_)))
                                       (if (gx#stx-pair? _tl2472124796_)
                                           (let ((_e2473124829_
                                                  (gx#syntax-e
                                                   _tl2472124796_)))
                                             (let ((_hd2473224833_
                                                    (##car _e2473124829_))
                                                   (_tl2473324836_
                                                    (##cdr _e2473124829_)))
                                               (if (gx#stx-pair?
                                                    _tl2473324836_)
                                                   (let ((_e2473424839_
                                                          (gx#syntax-e
                                                           _tl2473324836_)))
                                                     (let ((_hd2473524843_
                                                            (##car _e2473424839_))
                                                           (_tl2473624846_
                                                            (##cdr _e2473424839_)))
                                                       (if (gx#stx-null?
                                                            _tl2473624846_)
                                                           ((lambda (_L24849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24851_
                             _L24852_
                             _L24853_)
                      (let ()
                        (list (list (begin
                                      '#!void
                                      (foldr (lambda (_g2488124886_
                                                      _g2488224889_)
                                               (cons _g2488124886_
                                                     _g2488224889_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2488324892_
                                                               _g2488424895_)
                                                        (cons _g2488324892_
                                                              _g2488424895_))
                                                      _L24851_
                                                      _L24852_))
                                             _L24853_))
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'apply)
                                           (cons _L24849_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2489724902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2489824905_)
                    (cons _g2489724902_ _g2489824905_))
                  (begin
                    '#!void
                    (foldr (lambda (_g2489924908_ _g2490024911_)
                             (cons _g2489924908_ _g2490024911_))
                           (cons _L24851_ '())
                           _L24852_))
                  _L24853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _stx23168_))))))
                    _hd2473524843_
                    _hd2473224833_
                    _opt2473024825_
                    _pre2471824785_)
                   (_g2470124742_ _g2470224746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2470124742_
                                                    _g2470224746_))))
                                           (_g2470124742_ _g2470224746_)))))))
                       (_loop2472524805_ _target2472224799_ '()))
                     (_g2470124742_ _g2470224746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2470124742_
                                                    _g2470224746_))
                                               (_g2470124742_ _g2470224746_))))
                                       (_g2470124742_ _g2470224746_)))))))
                   (_loop2471324765_ _target2471024759_ '()))
                 (_g2470124742_ _g2470224746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2470124742_ _g2470224746_))
                                           (_g2470124742_ _g2470224746_))))
                                   (_g2470124742_ _g2470224746_)))))
                        (_g2470024914_
                         (list _pre24477_
                               (reverse _right24486_)
                               _tail24479_
                               _primary24475_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _recur24481_)
                                        _opt24478_
                                        '()))))
                                (let ((_generate-kw-dispatch23184_
                                       (lambda (_primary23733_
                                                _kwargs23735_
                                                _strict?23736_)
                                         (let ((_g2373823757_
                                                (lambda (_g2373923753_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2373923753_))))
                                           (let ((_g2373723816_
                                                  (lambda (_g2373923761_)
                                                    (if (gx#stx-pair?
                                                         _g2373923761_)
                                                        (let ((_e2374323764_
                                                               (gx#syntax-e
                                                                _g2373923761_)))
                                                          (let ((_hd2374423768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2374323764_))
                        (_tl2374523771_ (##cdr _e2374323764_)))
                    (if (gx#stx-pair? _tl2374523771_)
                        (let ((_e2374623774_ (gx#syntax-e _tl2374523771_)))
                          (let ((_hd2374723778_ (##car _e2374623774_))
                                (_tl2374823781_ (##cdr _e2374623774_)))
                            (if (gx#stx-pair? _tl2374823781_)
                                (let ((_e2374923784_
                                       (gx#syntax-e _tl2374823781_)))
                                  (let ((_hd2375023788_ (##car _e2374923784_))
                                        (_tl2375123791_ (##cdr _e2374923784_)))
                                    (if (gx#stx-null? _tl2375123791_)
                                        ((lambda (_L23794_ _L23796_ _L23797_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda%)
                                                   (cons _L23794_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'apply)
                             (cons (gx#datum->syntax '#f 'keyword-dispatch)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L23797_ '()))
                                         (cons _L23796_ (cons _L23794_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd2375023788_
                                         _hd2374723778_
                                         _hd2374423768_)
                                        (_g2373823757_ _g2373923761_))))
                                (_g2373823757_ _g2373923761_))))
                        (_g2373823757_ _g2373923761_))))
                (_g2373823757_ _g2373923761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2373723816_
                                              (list (if _strict?23736_
                                                        (_generate-kw-table23185_
                                                         (map car
                                                              _kwargs23735_))
                                                        '#f)
                                                    _primary23733_
                                                    (gx#genident 'args))))))))
                                  (let ((_generate-opt-dispatch23180_
                                         (lambda (_primary24918_
                                                  _pre24920_
                                                  _opt24921_
                                                  _tail24922_)
                                           (cons (list _pre24920_
                                                       (_generate-opt-clause23182_
                                                        _primary24918_
                                                        _pre24920_
                                                        _opt24921_))
                                                 (_generate-opt-dispatch*23181_
                                                  _primary24918_
                                                  _pre24920_
                                                  _opt24921_
                                                  _tail24922_)))))
                                    (let ((_g2318923220_
                                           (lambda (_g2319023216_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2319023216_))))
                                      (let ((_g2318823433_
                                             (lambda (_g2319023224_)
                                               (if (gx#stx-pair? _g2319023224_)
                                                   (let ((_e2320923227_
                                                          (gx#syntax-e
                                                           _g2319023224_)))
                                                     (let ((_hd2321023231_
                                                            (##car _e2320923227_))
                                                           (_tl2321123234_
                                                            (##cdr _e2320923227_)))
                                                       (if (gx#stx-pair?
                                                            _tl2321123234_)
                                                           (let ((_e2321223237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2321123234_)))
                     (let ((_hd2321323241_ (##car _e2321223237_))
                           (_tl2321423244_ (##cdr _e2321223237_)))
                       ((lambda (_L23247_ _L23249_)
                          (if (_kw-lambda?23175_ _L23249_)
                              (let ((_g2326523272_
                                     (lambda (_g2326623268_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2326623268_))))
                                (let ((_g2326423429_
                                       (lambda (_g2326623276_)
                                         ((lambda ()
                                            (let ()
                                              (let ((_g46917_
                                                     (_kw-lambda-split23176_
                                                      _L23249_)))
                                                (begin
                                                  (let ((_g46918_
                                                         (values-count
                                                          _g46917_)))
                                                    (if (not (fx= _g46918_ 3))
                                                        (error "Context expects 3 values"
                                                               _g46918_)))
                                                  (let ((_key23285_
                                                         (values-ref
                                                          _g46917_
                                                          0))
                                                        (_kwargs23287_
                                                         (values-ref
                                                          _g46917_
                                                          1))
                                                        (_args23288_
                                                         (values-ref
                                                          _g46917_
                                                          2)))
                                                    (let ((_g2329023298_
                                                           (lambda (_g2329123294_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2329123294_))))
                                                      (let ((_g2328923421_
                                                             (lambda (_g2329123302_)
                                                               ((lambda (_L23305_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2332323331_
                                   (lambda (_g2332423327_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2332423327_))))
                              (let ((_g2332223417_
                                     (lambda (_g2332423335_)
                                       ((lambda (_L23338_)
                                          (let ()
                                            (let ((_g2335123359_
                                                   (lambda (_g2335223355_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2335223355_))))
                                              (let ((_g2335023413_
                                                     (lambda (_g2335223363_)
                                                       ((lambda (_L23366_)
                                                          (let ()
                                                            (let ((_g2337923387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2338023383_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2338023383_))))
                      (let ((_g2337823409_
                             (lambda (_g2338023391_)
                               ((lambda (_L23394_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (cons _L23338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _L23366_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L23394_ '()))))))
                                _g2338023391_))))
                        (_g2337823409_
                         (gx#stx-wrap-source
                          (_generate-kw-dispatch23184_
                           _L23338_
                           _kwargs23287_
                           (not _key23285_))
                          (gx#stx-source _stx23168_)))))))
                _g2335223363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2335023413_
                                                 (gx#stx-wrap-source
                                                  (_generate-kw-primary23183_
                                                   _L23305_
                                                   _kwargs23287_
                                                   _args23288_
                                                   _L23247_)
                                                  (gx#stx-source
                                                   _stx23168_)))))))
                                        _g2332423335_))))
                                (_g2332223417_ (gx#genident 'kw-lambda))))))
                        _g2329123302_))))
                (_g2328923421_
                 (let ((_$e23425_ _key23285_))
                   (if _$e23425_ _$e23425_ (gx#genident 'key)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g2326423429_
                                   (_check-duplicate-bindings23178_
                                    _L23249_))))
                              (_g2318923220_ _g2319023224_)))
                        _tl2321423244_
                        _hd2321323241_)))
                   (_g2318923220_ _g2319023224_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2318923220_
                                                    _g2319023224_)))))
                                        (let ((_g2318723661_
                                               (lambda (_g2319023437_)
                                                 (if (gx#stx-pair?
                                                      _g2319023437_)
                                                     (let ((_e2320123440_
                                                            (gx#syntax-e
                                                             _g2319023437_)))
                                                       (let ((_hd2320223444_
                                                              (##car _e2320123440_))
                                                             (_tl2320323447_
                                                              (##cdr _e2320123440_)))
                                                         (if (gx#stx-pair?
                                                              _tl2320323447_)
                                                             (let ((_e2320423450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2320323447_)))
                       (let ((_hd2320523454_ (##car _e2320423450_))
                             (_tl2320623457_ (##cdr _e2320423450_)))
                         ((lambda (_L23460_ _L23462_)
                            (if (_opt-lambda?23173_ _L23462_)
                                (let ((_g46919_
                                       (_opt-lambda-split23174_ _L23462_)))
                                  (begin
                                    (let ((_g46920_ (values-count _g46919_)))
                                      (if (not (fx= _g46920_ 3))
                                          (error "Context expects 3 values"
                                                 _g46920_)))
                                    (let ((_pre23475_ (values-ref _g46919_ 0))
                                          (_opt23477_ (values-ref _g46919_ 1))
                                          (_tail23478_
                                           (values-ref _g46919_ 2)))
                                      (let ((_g2348023488_
                                             (lambda (_g2348123484_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2348123484_))))
                                        (let ((_g2347923657_
                                               (lambda (_g2348123492_)
                                                 ((lambda (_L23495_)
                                                    (let ()
                                                      (let ((_g2350823516_
                                                             (lambda (_g2350923512_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2350923512_))))
                                                        (let ((_g2350723653_
                                                               (lambda (_g2350923520_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L23523_)
                            (let ()
                              (let ((_g2353623553_
                                     (lambda (_g2353723549_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2353723549_))))
                                (let ((_g2353523649_
                                       (lambda (_g2353723557_)
                                         (if (gx#stx-pair/null? _g2353723557_)
                                             (if (fx>= (gx#stx-length
                                                        _g2353723557_)
                                                       '0)
                                                 (let ((_g46921_
                                                        (gx#syntax-split-splice
                                                         _g2353723557_
                                                         '0)))
                                                   (begin
                                                     (let ((_g46922_
                                                            (values-count
                                                             _g46921_)))
                                                       (if (not (fx= _g46922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g46922_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2353923560_
                                                            (values-ref
                                                             _g46921_
                                                             0))
                                                           (_tl2354123563_
                                                            (values-ref
                                                             _g46921_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2354123563_)
                                                           (letrec ((_loop2354223566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2354023570_ _clause2354623573_)
                               (if (gx#stx-pair? _hd2354023570_)
                                   (let ((_e2354323576_
                                          (gx#syntax-e _hd2354023570_)))
                                     (let ((_lp-hd2354423580_
                                            (##car _e2354323576_))
                                           (_lp-tl2354523583_
                                            (##cdr _e2354323576_)))
                                       (_loop2354223566_
                                        _lp-tl2354523583_
                                        (cons _lp-hd2354423580_
                                              _clause2354623573_))))
                                   (let ((_clause2354723586_
                                          (reverse _clause2354623573_)))
                                     ((lambda (_L23590_)
                                        (let ()
                                          (let ((_g2360723615_
                                                 (lambda (_g2360823611_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2360823611_))))
                                            (let ((_g2360623637_
                                                   (lambda (_g2360823619_)
                                                     ((lambda (_L23622_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L23495_ '())
                                            (cons _L23523_ '()))
                                      '())
                                (cons _L23622_ '()))))))
              _g2360823619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2360623637_
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2364023643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2364123646_)
                         (cons _g2364023643_ _g2364123646_))
                       '()
                       _L23590_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source
                                                 _stx23168_)))))))
                                      _clause2354723586_))))))
                     (_loop2354223566_ _target2353923560_ '()))
                   (_g2353623553_ _g2353723557_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2353623553_ _g2353723557_))
                                             (_g2353623553_ _g2353723557_)))))
                                  (_g2353523649_
                                   (_generate-opt-dispatch23180_
                                    _L23495_
                                    _pre23475_
                                    _opt23477_
                                    _tail23478_))))))
                          _g2350923520_))))
                  (_g2350723653_
                   (gx#stx-wrap-source
                    (_generate-opt-primary23179_
                     _pre23475_
                     _opt23477_
                     _tail23478_
                     _L23460_)
                    (gx#stx-source _stx23168_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2348123492_))))
                                          (_g2347923657_
                                           (gx#genident 'opt-lambda)))))))
                                (_g2318823433_ _g2319023437_)))
                          _tl2320623457_
                          _hd2320523454_)))
                     (_g2318823433_ _g2319023437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2318823433_
                                                      _g2319023437_)))))
                                          (let ((_g2318623703_
                                                 (lambda (_g2319023665_)
                                                   (if (gx#stx-pair?
                                                        _g2319023665_)
                                                       (let ((_e2319323668_
                                                              (gx#syntax-e
                                                               _g2319023665_)))
                                                         (let ((_hd2319423672_
                                                                (##car _e2319323668_))
                                                               (_tl2319523675_
                                                                (##cdr _e2319323668_)))
                                                           (if (gx#stx-pair?
                                                                _tl2319523675_)
                                                               (let ((_e2319623678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2319523675_)))
                         (let ((_hd2319723682_ (##car _e2319623678_))
                               (_tl2319823685_ (##cdr _e2319623678_)))
                           ((lambda (_L23688_ _L23690_)
                              (if (_simple-lambda?23171_ _L23690_)
                                  (cons (gx#datum->syntax '#f 'lambda%)
                                        (cons _L23690_ _L23688_))
                                  (_g2318723661_ _g2319023665_)))
                            _tl2319823685_
                            _hd2319723682_)))
                       (_g2318723661_ _g2319023665_))))
               (_g2318723661_ _g2319023665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2318623703_
                                             _stx23168_)))))))))))))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def|
      (lambda (_$stx26335_)
        (let ((_g2634026379_
               (lambda (_g2634126375_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2634126375_))))
          (let ((_g2633926434_
                 (lambda (_g2634126383_)
                   (if (gx#stx-pair? _g2634126383_)
                       (let ((_e2636526386_ (gx#syntax-e _g2634126383_)))
                         (let ((_hd2636626390_ (##car _e2636526386_))
                               (_tl2636726393_ (##cdr _e2636526386_)))
                           (if (gx#stx-pair? _tl2636726393_)
                               (let ((_e2636826396_
                                      (gx#syntax-e _tl2636726393_)))
                                 (let ((_hd2636926400_ (##car _e2636826396_))
                                       (_tl2637026403_ (##cdr _e2636826396_)))
                                   (if (gx#stx-pair? _tl2637026403_)
                                       (let ((_e2637126406_
                                              (gx#syntax-e _tl2637026403_)))
                                         (let ((_hd2637226410_
                                                (##car _e2637126406_))
                                               (_tl2637326413_
                                                (##cdr _e2637126406_)))
                                           (if (gx#stx-null? _tl2637326413_)
                                               ((lambda (_L26416_ _L26418_)
                                                  (if (gx#identifier? _L26418_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L26418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L26416_ '())))
              (_g2634026379_ _g2634126383_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2637226410_
                                                _hd2636926400_)
                                               (_g2634026379_ _g2634126383_))))
                                       (_g2634026379_ _g2634126383_))))
                               (_g2634026379_ _g2634126383_))))
                       (_g2634026379_ _g2634126383_)))))
            (let ((_g2633826532_
                   (lambda (_g2634126438_)
                     (if (gx#stx-pair? _g2634126438_)
                         (let ((_e2634526441_ (gx#syntax-e _g2634126438_)))
                           (let ((_hd2634626445_ (##car _e2634526441_))
                                 (_tl2634726448_ (##cdr _e2634526441_)))
                             (if (gx#stx-pair? _tl2634726448_)
                                 (let ((_e2634826451_
                                        (gx#syntax-e _tl2634726448_)))
                                   (let ((_hd2634926455_ (##car _e2634826451_))
                                         (_tl2635026458_
                                          (##cdr _e2634826451_)))
                                     (if (gx#stx-pair? _hd2634926455_)
                                         (let ((_e2635126461_
                                                (gx#syntax-e _hd2634926455_)))
                                           (let ((_hd2635226465_
                                                  (##car _e2635126461_))
                                                 (_tl2635326468_
                                                  (##cdr _e2635126461_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2635026458_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2635026458_)
                                                           '0)
                                                     (let ((_g46939_
                                                            (gx#syntax-split-splice
                                                             _tl2635026458_
                                                             '0)))
                                                       (begin
                                                         (let ((_g46940_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g46939_)))
                   (if (not (fx= _g46940_ 2))
                       (error "Context expects 2 values" _g46940_)))
                 (let ((_target2635426471_ (values-ref _g46939_ 0))
                       (_tl2635626474_ (values-ref _g46939_ 1)))
                   (if (gx#stx-null? _tl2635626474_)
                       (letrec ((_loop2635726477_
                                 (lambda (_hd2635526481_ _body2636126484_)
                                   (if (gx#stx-pair? _hd2635526481_)
                                       (let ((_e2635826487_
                                              (gx#syntax-e _hd2635526481_)))
                                         (let ((_lp-hd2635926491_
                                                (##car _e2635826487_))
                                               (_lp-tl2636026494_
                                                (##cdr _e2635826487_)))
                                           (_loop2635726477_
                                            _lp-tl2636026494_
                                            (cons _lp-hd2635926491_
                                                  _body2636126484_))))
                                       (let ((_body2636226497_
                                              (reverse _body2636126484_)))
                                         ((lambda (_L26501_ _L26503_ _L26504_)
                                            (if (gx#identifier? _L26504_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L26504_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons _L26503_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2652326526_
                                                        _g2652426529_)
                                                 (cons _g2652326526_
                                                       _g2652426529_))
                                               '()
                                               _L26501_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2633926434_ _g2634126438_)))
                                          _body2636226497_
                                          _tl2635326468_
                                          _hd2635226465_))))))
                         (_loop2635726477_ _target2635426471_ '()))
                       (_g2633926434_ _g2634126438_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2633926434_
                                                      _g2634126438_))
                                                 (_g2633926434_
                                                  _g2634126438_))))
                                         (_g2633926434_ _g2634126438_))))
                                 (_g2633926434_ _g2634126438_))))
                         (_g2633926434_ _g2634126438_)))))
              (_g2633826532_ _$stx26335_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def*|
      (lambda (_$stx26537_)
        (let ((_g2654126565_
               (lambda (_g2654226561_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2654226561_))))
          (let ((_g2654026650_
                 (lambda (_g2654226569_)
                   (if (gx#stx-pair? _g2654226569_)
                       (let ((_e2654526572_ (gx#syntax-e _g2654226569_)))
                         (let ((_hd2654626576_ (##car _e2654526572_))
                               (_tl2654726579_ (##cdr _e2654526572_)))
                           (if (gx#stx-pair? _tl2654726579_)
                               (let ((_e2654826582_
                                      (gx#syntax-e _tl2654726579_)))
                                 (let ((_hd2654926586_ (##car _e2654826582_))
                                       (_tl2655026589_ (##cdr _e2654826582_)))
                                   (if (gx#stx-pair/null? _tl2655026589_)
                                       (if (fx>= (gx#stx-length _tl2655026589_)
                                                 '0)
                                           (let ((_g46941_
                                                  (gx#syntax-split-splice
                                                   _tl2655026589_
                                                   '0)))
                                             (begin
                                               (let ((_g46942_
                                                      (values-count _g46941_)))
                                                 (if (not (fx= _g46942_ 2))
                                                     (error "Context expects 2 values"
                                                            _g46942_)))
                                               (let ((_target2655126592_
                                                      (values-ref _g46941_ 0))
                                                     (_tl2655326595_
                                                      (values-ref _g46941_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2655326595_)
                                                     (letrec ((_loop2655426598_
                                                               (lambda (_hd2655226602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses2655826605_)
                         (if (gx#stx-pair? _hd2655226602_)
                             (let ((_e2655526608_
                                    (gx#syntax-e _hd2655226602_)))
                               (let ((_lp-hd2655626612_ (##car _e2655526608_))
                                     (_lp-tl2655726615_ (##cdr _e2655526608_)))
                                 (_loop2655426598_
                                  _lp-tl2655726615_
                                  (cons _lp-hd2655626612_
                                        _clauses2655826605_))))
                             (let ((_clauses2655926618_
                                    (reverse _clauses2655826605_)))
                               ((lambda (_L26622_ _L26624_)
                                  (if (gx#identifier? _L26624_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'define-values)
                                            (cons (cons _L26624_ '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'case-lambda)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g2664126644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g2664226647_)
                                 (cons _g2664126644_ _g2664226647_))
                               '()
                               _L26622_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g2654126565_ _g2654226569_)))
                                _clauses2655926618_
                                _hd2654926586_))))))
               (_loop2655426598_ _target2655126592_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2654126565_
                                                      _g2654226569_)))))
                                           (_g2654126565_ _g2654226569_))
                                       (_g2654126565_ _g2654226569_))))
                               (_g2654126565_ _g2654226569_))))
                       (_g2654126565_ _g2654226569_)))))
            (_g2654026650_ _$stx26537_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#defvalues|
      (lambda (_$stx26655_)
        (let ((_g2665926677_
               (lambda (_g2666026673_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2666026673_))))
          (let ((_g2665826732_
                 (lambda (_g2666026681_)
                   (if (gx#stx-pair? _g2666026681_)
                       (let ((_e2666326684_ (gx#syntax-e _g2666026681_)))
                         (let ((_hd2666426688_ (##car _e2666326684_))
                               (_tl2666526691_ (##cdr _e2666326684_)))
                           (if (gx#stx-pair? _tl2666526691_)
                               (let ((_e2666626694_
                                      (gx#syntax-e _tl2666526691_)))
                                 (let ((_hd2666726698_ (##car _e2666626694_))
                                       (_tl2666826701_ (##cdr _e2666626694_)))
                                   (if (gx#stx-pair? _tl2666826701_)
                                       (let ((_e2666926704_
                                              (gx#syntax-e _tl2666826701_)))
                                         (let ((_hd2667026708_
                                                (##car _e2666926704_))
                                               (_tl2667126711_
                                                (##cdr _e2666926704_)))
                                           (if (gx#stx-null? _tl2667126711_)
                                               ((lambda (_L26714_ _L26716_)
                                                  (if (gx#identifier-list?
                                                       _L26716_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons _L26716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L26714_ '())))
              (_g2665926677_ _g2666026681_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2667026708_
                                                _hd2666726698_)
                                               (_g2665926677_ _g2666026681_))))
                                       (_g2665926677_ _g2666026681_))))
                               (_g2665926677_ _g2666026681_))))
                       (_g2665926677_ _g2666026681_)))))
            (_g2665826732_ _$stx26655_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#case|
      (lambda (_$stx26736_)
        (let ((_g2674026764_
               (lambda (_g2674126760_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2674126760_))))
          (let ((_g2673926849_
                 (lambda (_g2674126768_)
                   (if (gx#stx-pair? _g2674126768_)
                       (let ((_e2674426771_ (gx#syntax-e _g2674126768_)))
                         (let ((_hd2674526775_ (##car _e2674426771_))
                               (_tl2674626778_ (##cdr _e2674426771_)))
                           (if (gx#stx-pair? _tl2674626778_)
                               (let ((_e2674726781_
                                      (gx#syntax-e _tl2674626778_)))
                                 (let ((_hd2674826785_ (##car _e2674726781_))
                                       (_tl2674926788_ (##cdr _e2674726781_)))
                                   (if (gx#stx-pair/null? _tl2674926788_)
                                       (if (fx>= (gx#stx-length _tl2674926788_)
                                                 '0)
                                           (let ((_g46943_
                                                  (gx#syntax-split-splice
                                                   _tl2674926788_
                                                   '0)))
                                             (begin
                                               (let ((_g46944_
                                                      (values-count _g46943_)))
                                                 (if (not (fx= _g46944_ 2))
                                                     (error "Context expects 2 values"
                                                            _g46944_)))
                                               (let ((_target2675026791_
                                                      (values-ref _g46943_ 0))
                                                     (_tl2675226794_
                                                      (values-ref _g46943_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2675226794_)
                                                     (letrec ((_loop2675326797_
                                                               (lambda (_hd2675126801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause2675726804_)
                         (if (gx#stx-pair? _hd2675126801_)
                             (let ((_e2675426807_
                                    (gx#syntax-e _hd2675126801_)))
                               (let ((_lp-hd2675526811_ (##car _e2675426807_))
                                     (_lp-tl2675626814_ (##cdr _e2675426807_)))
                                 (_loop2675326797_
                                  _lp-tl2675626814_
                                  (cons _lp-hd2675526811_
                                        _clause2675726804_))))
                             (let ((_clause2675826817_
                                    (reverse _clause2675726804_)))
                               ((lambda (_L26821_ _L26823_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$e)
                                                    (cons _L26823_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '~case)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e)
                        (begin
                          '#!void
                          (foldr (lambda (_g2684026843_ _g2684126846_)
                                   (cons _g2684026843_ _g2684126846_))
                                 '()
                                 _L26821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _clause2675826817_
                                _hd2674826785_))))))
               (_loop2675326797_ _target2675026791_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2674026764_
                                                      _g2674126768_)))))
                                           (_g2674026764_ _g2674126768_))
                                       (_g2674026764_ _g2674126768_))))
                               (_g2674026764_ _g2674126768_))))
                       (_g2674026764_ _g2674126768_)))))
            (_g2673926849_ _$stx26736_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case|
      (lambda (_$stx26854_)
        (let ((_g2686226960_
               (lambda (_g2686326956_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2686326956_))))
          (let ((_g2686127075_
                 (lambda (_g2686326964_)
                   (if (gx#stx-pair? _g2686326964_)
                       (let ((_e2693426967_ (gx#syntax-e _g2686326964_)))
                         (let ((_hd2693526971_ (##car _e2693426967_))
                               (_tl2693626974_ (##cdr _e2693426967_)))
                           (if (gx#stx-pair? _tl2693626974_)
                               (let ((_e2693726977_
                                      (gx#syntax-e _tl2693626974_)))
                                 (let ((_hd2693826981_ (##car _e2693726977_))
                                       (_tl2693926984_ (##cdr _e2693726977_)))
                                   (if (gx#stx-pair? _tl2693926984_)
                                       (let ((_e2694026987_
                                              (gx#syntax-e _tl2693926984_)))
                                         (let ((_hd2694126991_
                                                (##car _e2694026987_))
                                               (_tl2694226994_
                                                (##cdr _e2694026987_)))
                                           (if (gx#stx-pair? _hd2694126991_)
                                               (let ((_e2694326997_
                                                      (gx#syntax-e
                                                       _hd2694126991_)))
                                                 (let ((_hd2694427001_
                                                        (##car _e2694326997_))
                                                       (_tl2694527004_
                                                        (##cdr _e2694326997_)))
                                                   (if (gx#stx-pair/null?
                                                        _tl2694527004_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2694527004_)
                         '0)
                   (let ((_g46945_ (gx#syntax-split-splice _tl2694527004_ '0)))
                     (begin
                       (let ((_g46946_ (values-count _g46945_)))
                         (if (not (fx= _g46946_ 2))
                             (error "Context expects 2 values" _g46946_)))
                       (let ((_target2694627007_ (values-ref _g46945_ 0))
                             (_tl2694827010_ (values-ref _g46945_ 1)))
                         (if (gx#stx-null? _tl2694827010_)
                             (letrec ((_loop2694927013_
                                       (lambda (_hd2694727017_
                                                _body2695327020_)
                                         (if (gx#stx-pair? _hd2694727017_)
                                             (let ((_e2695027023_
                                                    (gx#syntax-e
                                                     _hd2694727017_)))
                                               (let ((_lp-hd2695127027_
                                                      (##car _e2695027023_))
                                                     (_lp-tl2695227030_
                                                      (##cdr _e2695027023_)))
                                                 (_loop2694927013_
                                                  _lp-tl2695227030_
                                                  (cons _lp-hd2695127027_
                                                        _body2695327020_))))
                                             (let ((_body2695427033_
                                                    (reverse _body2695327020_)))
                                               ((lambda (_L27037_
                                                         _L27039_
                                                         _L27040_
                                                         _L27041_
                                                         _L27042_)
                                                  (if (gx#stx-list? _L27040_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '~case-test)
                                (cons _L27041_ (cons _L27040_ '())))
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2706627069_
                                                        _g2706727072_)
                                                 (cons _g2706627069_
                                                       _g2706727072_))
                                               '()
                                               _L27039_)))
                                (cons (cons _L27042_ (cons _L27041_ _L27037_))
                                      '()))))
              (_g2686226960_ _g2686326964_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2694226994_
                                                _body2695427033_
                                                _hd2694427001_
                                                _hd2693826981_
                                                _hd2693526971_))))))
                               (_loop2694927013_ _target2694627007_ '()))
                             (_g2686226960_ _g2686326964_)))))
                   (_g2686226960_ _g2686326964_))
               (_g2686226960_ _g2686326964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2686226960_ _g2686326964_))))
                                       (_g2686226960_ _g2686326964_))))
                               (_g2686226960_ _g2686326964_))))
                       (_g2686226960_ _g2686326964_)))))
            (let ((_g2686027171_
                   (lambda (_g2686327079_)
                     (if (gx#stx-pair? _g2686327079_)
                         (let ((_e2691127082_ (gx#syntax-e _g2686327079_)))
                           (let ((_hd2691227086_ (##car _e2691127082_))
                                 (_tl2691327089_ (##cdr _e2691127082_)))
                             (if (gx#stx-pair? _tl2691327089_)
                                 (let ((_e2691427092_
                                        (gx#syntax-e _tl2691327089_)))
                                   (let ((_hd2691527096_ (##car _e2691427092_))
                                         (_tl2691627099_
                                          (##cdr _e2691427092_)))
                                     (if (gx#stx-pair? _tl2691627099_)
                                         (let ((_e2691727102_
                                                (gx#syntax-e _tl2691627099_)))
                                           (let ((_hd2691827106_
                                                  (##car _e2691727102_))
                                                 (_tl2691927109_
                                                  (##cdr _e2691727102_)))
                                             (if (gx#stx-pair? _hd2691827106_)
                                                 (let ((_e2692027112_
                                                        (gx#syntax-e
                                                         _hd2691827106_)))
                                                   (let ((_hd2692127116_
                                                          (##car _e2692027112_))
                                                         (_tl2692227119_
                                                          (##cdr _e2692027112_)))
                                                     (if (gx#stx-pair?
                                                          _tl2692227119_)
                                                         (let ((_e2692327122_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2692227119_)))
                   (let ((_hd2692427126_ (##car _e2692327122_))
                         (_tl2692527129_ (##cdr _e2692327122_)))
                     (if (gx#identifier? _hd2692427126_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<sugar>::<sugar:2>[1]#_g46947_|
                              _hd2692427126_)
                             (if (gx#stx-pair? _tl2692527129_)
                                 (let ((_e2692627132_
                                        (gx#syntax-e _tl2692527129_)))
                                   (let ((_hd2692727136_ (##car _e2692627132_))
                                         (_tl2692827139_
                                          (##cdr _e2692627132_)))
                                     (if (gx#stx-null? _tl2692827139_)
                                         ((lambda (_L27142_
                                                   _L27144_
                                                   _L27145_
                                                   _L27146_
                                                   _L27147_)
                                            (if (gx#stx-list? _L27145_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '~case-test)
                          (cons _L27146_ (cons _L27145_ '())))
                    (cons (cons _L27144_ (cons _L27146_ '()))
                          (cons (cons _L27147_ (cons _L27146_ _L27142_))
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2686127075_ _g2686327079_)))
                                          _tl2691927109_
                                          _hd2692727136_
                                          _hd2692127116_
                                          _hd2691527096_
                                          _hd2691227086_)
                                         (_g2686127075_ _g2686327079_))))
                                 (_g2686127075_ _g2686327079_))
                             (_g2686127075_ _g2686327079_))
                         (_g2686127075_ _g2686327079_))))
                 (_g2686127075_ _g2686327079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2686127075_
                                                  _g2686327079_))))
                                         (_g2686127075_ _g2686327079_))))
                                 (_g2686127075_ _g2686327079_))))
                         (_g2686127075_ _g2686327079_)))))
              (let ((_g2685927235_
                     (lambda (_g2686327175_)
                       (if (gx#stx-pair? _g2686327175_)
                           (let ((_e2689427178_ (gx#syntax-e _g2686327175_)))
                             (let ((_hd2689527182_ (##car _e2689427178_))
                                   (_tl2689627185_ (##cdr _e2689427178_)))
                               (if (gx#stx-pair? _tl2689627185_)
                                   (let ((_e2689727188_
                                          (gx#syntax-e _tl2689627185_)))
                                     (let ((_hd2689827192_
                                            (##car _e2689727188_))
                                           (_tl2689927195_
                                            (##cdr _e2689727188_)))
                                       (if (gx#stx-pair? _tl2689927195_)
                                           (let ((_e2690027198_
                                                  (gx#syntax-e
                                                   _tl2689927195_)))
                                             (let ((_hd2690127202_
                                                    (##car _e2690027198_))
                                                   (_tl2690227205_
                                                    (##cdr _e2690027198_)))
                                               (if (gx#stx-pair?
                                                    _hd2690127202_)
                                                   (let ((_e2690327208_
                                                          (gx#syntax-e
                                                           _hd2690127202_)))
                                                     (let ((_hd2690427212_
                                                            (##car _e2690327208_))
                                                           (_tl2690527215_
                                                            (##cdr _e2690327208_)))
                                                       (if (gx#identifier?
                                                            _hd2690427212_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g46948_|
                                                                _hd2690427212_)
                                                               ((lambda (_L27218_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'syntax-error)
                                (cons '"Bad syntax; misplaced else" '())))
                        _hd2689827192_)
                       (_g2686027171_ _g2686327175_))
                   (_g2686027171_ _g2686327175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2686027171_
                                                    _g2686327175_))))
                                           (_g2686027171_ _g2686327175_))))
                                   (_g2686027171_ _g2686327175_))))
                           (_g2686027171_ _g2686327175_)))))
                (let ((_g2685827343_
                       (lambda (_g2686327239_)
                         (if (gx#stx-pair? _g2686327239_)
                             (let ((_e2687227242_ (gx#syntax-e _g2686327239_)))
                               (let ((_hd2687327246_ (##car _e2687227242_))
                                     (_tl2687427249_ (##cdr _e2687227242_)))
                                 (if (gx#stx-pair? _tl2687427249_)
                                     (let ((_e2687527252_
                                            (gx#syntax-e _tl2687427249_)))
                                       (let ((_hd2687627256_
                                              (##car _e2687527252_))
                                             (_tl2687727259_
                                              (##cdr _e2687527252_)))
                                         (if (gx#stx-pair? _tl2687727259_)
                                             (let ((_e2687827262_
                                                    (gx#syntax-e
                                                     _tl2687727259_)))
                                               (let ((_hd2687927266_
                                                      (##car _e2687827262_))
                                                     (_tl2688027269_
                                                      (##cdr _e2687827262_)))
                                                 (if (gx#stx-pair?
                                                      _hd2687927266_)
                                                     (let ((_e2688127272_
                                                            (gx#syntax-e
                                                             _hd2687927266_)))
                                                       (let ((_hd2688227276_
                                                              (##car _e2688127272_))
                                                             (_tl2688327279_
                                                              (##cdr _e2688127272_)))
                                                         (if (gx#identifier?
                                                              _hd2688227276_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<sugar>::<sugar:2>[1]#_g46949_|
                          _hd2688227276_)
                         (if (gx#stx-pair/null? _tl2688327279_)
                             (if (fx>= (gx#stx-length _tl2688327279_) '0)
                                 (let ((_g46950_
                                        (gx#syntax-split-splice
                                         _tl2688327279_
                                         '0)))
                                   (begin
                                     (let ((_g46951_ (values-count _g46950_)))
                                       (if (not (fx= _g46951_ 2))
                                           (error "Context expects 2 values"
                                                  _g46951_)))
                                     (let ((_target2688427282_
                                            (values-ref _g46950_ 0))
                                           (_tl2688627285_
                                            (values-ref _g46950_ 1)))
                                       (if (gx#stx-null? _tl2688627285_)
                                           (letrec ((_loop2688727288_
                                                     (lambda (_hd2688527292_
                                                              _body2689127295_)
                                                       (if (gx#stx-pair?
                                                            _hd2688527292_)
                                                           (let ((_e2688827298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2688527292_)))
                     (let ((_lp-hd2688927302_ (##car _e2688827298_))
                           (_lp-tl2689027305_ (##cdr _e2688827298_)))
                       (_loop2688727288_
                        _lp-tl2689027305_
                        (cons _lp-hd2688927302_ _body2689127295_))))
                   (let ((_body2689227308_ (reverse _body2689127295_)))
                     (if (gx#stx-null? _tl2688027269_)
                         ((lambda (_L27312_ _L27314_)
                            (cons (gx#datum->syntax '#f 'begin)
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2733427337_
                                                    _g2733527340_)
                                             (cons _g2733427337_
                                                   _g2733527340_))
                                           '()
                                           _L27312_))))
                          _body2689227308_
                          _hd2687627256_)
                         (_g2685927235_ _g2686327239_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2688727288_
                                              _target2688427282_
                                              '()))
                                           (_g2685927235_ _g2686327239_)))))
                                 (_g2685927235_ _g2686327239_))
                             (_g2685927235_ _g2686327239_))
                         (_g2685927235_ _g2686327239_))
                     (_g2685927235_ _g2686327239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2685927235_
                                                      _g2686327239_))))
                                             (_g2685927235_ _g2686327239_))))
                                     (_g2685927235_ _g2686327239_))))
                             (_g2685927235_ _g2686327239_)))))
                  (let ((_g2685727374_
                         (lambda (_g2686327347_)
                           (if (gx#stx-pair? _g2686327347_)
                               (let ((_e2686427350_
                                      (gx#syntax-e _g2686327347_)))
                                 (let ((_hd2686527354_ (##car _e2686427350_))
                                       (_tl2686627357_ (##cdr _e2686427350_)))
                                   (if (gx#stx-pair? _tl2686627357_)
                                       (let ((_e2686727360_
                                              (gx#syntax-e _tl2686627357_)))
                                         (let ((_hd2686827364_
                                                (##car _e2686727360_))
                                               (_tl2686927367_
                                                (##cdr _e2686727360_)))
                                           (if (gx#stx-null? _tl2686927367_)
                                               ((lambda () '#!void))
                                               (_g2685827343_ _g2686327347_))))
                                       (_g2685827343_ _g2686327347_))))
                               (_g2685827343_ _g2686327347_)))))
                    (_g2685727374_ _$stx26854_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case-test|
      (lambda (_stx27380_)
        (let ((_memq-datum?27383_
               (lambda (_x27745_)
                 (let ((_e27748_ (gx#stx-e _x27745_)))
                   (let ((_$e27751_ (symbol? _e27748_)))
                     (if _$e27751_
                         _$e27751_
                         (let ((_$e27755_ (keyword? _e27748_)))
                           (if _$e27755_
                               _$e27755_
                               (immediate? _e27748_)))))))))
          (let ((_memv-datum?27385_
                 (lambda (_x27738_)
                   (let ((_$e27741_ (_memq-datum?27383_ _x27738_)))
                     (if _$e27741_ _$e27741_ (gx#stx-number? _x27738_))))))
            (let ((_g2738927440_
                   (lambda (_g2739027436_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g2739027436_))))
              (let ((_g2738827585_
                     (lambda (_g2739027444_)
                       (if (gx#stx-pair? _g2739027444_)
                           (let ((_e2741727447_ (gx#syntax-e _g2739027444_)))
                             (let ((_hd2741827451_ (##car _e2741727447_))
                                   (_tl2741927454_ (##cdr _e2741727447_)))
                               (if (gx#stx-pair? _tl2741927454_)
                                   (let ((_e2742027457_
                                          (gx#syntax-e _tl2741927454_)))
                                     (let ((_hd2742127461_
                                            (##car _e2742027457_))
                                           (_tl2742227464_
                                            (##cdr _e2742027457_)))
                                       (if (gx#stx-pair? _tl2742227464_)
                                           (let ((_e2742327467_
                                                  (gx#syntax-e
                                                   _tl2742227464_)))
                                             (let ((_hd2742427471_
                                                    (##car _e2742327467_))
                                                   (_tl2742527474_
                                                    (##cdr _e2742327467_)))
                                               (if (gx#stx-pair/null?
                                                    _hd2742427471_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd2742427471_)
                                                             '0)
                                                       (let ((_g46952_
                                                              (gx#syntax-split-splice
                                                               _hd2742427471_
                                                               '0)))
                                                         (begin
                                                           (let ((_g46953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g46952_)))
                     (if (not (fx= _g46953_ 2))
                         (error "Context expects 2 values" _g46953_)))
                   (let ((_target2742627477_ (values-ref _g46952_ 0))
                         (_tl2742827480_ (values-ref _g46952_ 1)))
                     (if (gx#stx-null? _tl2742827480_)
                         (letrec ((_loop2742927483_
                                   (lambda (_hd2742727487_ _datum2743327490_)
                                     (if (gx#stx-pair? _hd2742727487_)
                                         (let ((_e2743027493_
                                                (gx#syntax-e _hd2742727487_)))
                                           (let ((_lp-hd2743127497_
                                                  (##car _e2743027493_))
                                                 (_lp-tl2743227500_
                                                  (##cdr _e2743027493_)))
                                             (_loop2742927483_
                                              _lp-tl2743227500_
                                              (cons _lp-hd2743127497_
                                                    _datum2743327490_))))
                                         (let ((_datum2743427503_
                                                (reverse _datum2743327490_)))
                                           (if (gx#stx-null? _tl2742527474_)
                                               ((lambda (_L27507_ _L27509_)
                                                  (let ((_g2753027538_
                                                         (lambda (_g2753127534_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2753127534_))))
                                                    (let ((_g2752927565_
                                                           (lambda (_g2753127542_)
                                                             ((lambda (_L27545_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L27545_
                                (cons _L27509_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons (begin
                                                          '#!void
                                                          (foldr (lambda (_g2755627559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2755727562_)
                           (cons _g2755627559_ _g2755727562_))
                         '()
                         _L27507_))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _g2753127542_))))
              (_g2752927565_
               (if (gx#stx-andmap
                    _memq-datum?27383_
                    (begin
                      '#!void
                      (foldr (lambda (_g2756827571_ _g2756927574_)
                               (cons _g2756827571_ _g2756927574_))
                             '()
                             _L27507_)))
                   (gx#datum->syntax '#f 'memq)
                   (if (gx#stx-andmap
                        _memv-datum?27385_
                        (begin
                          '#!void
                          (foldr (lambda (_g2757627579_ _g2757727582_)
                                   (cons _g2757627579_ _g2757727582_))
                                 '()
                                 _L27507_)))
                       (gx#datum->syntax '#f 'memv)
                       (gx#datum->syntax '#f 'member)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _datum2743427503_
                                                _hd2742127461_)
                                               (_g2738927440_
                                                _g2739027444_)))))))
                           (_loop2742927483_ _target2742627477_ '()))
                         (_g2738927440_ _g2739027444_)))))
               (_g2738927440_ _g2739027444_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2738927440_
                                                    _g2739027444_))))
                                           (_g2738927440_ _g2739027444_))))
                                   (_g2738927440_ _g2739027444_))))
                           (_g2738927440_ _g2739027444_)))))
                (let ((_g2738727682_
                       (lambda (_g2739027589_)
                         (if (gx#stx-pair? _g2739027589_)
                             (let ((_e2740327592_ (gx#syntax-e _g2739027589_)))
                               (let ((_hd2740427596_ (##car _e2740327592_))
                                     (_tl2740527599_ (##cdr _e2740327592_)))
                                 (if (gx#stx-pair? _tl2740527599_)
                                     (let ((_e2740627602_
                                            (gx#syntax-e _tl2740527599_)))
                                       (let ((_hd2740727606_
                                              (##car _e2740627602_))
                                             (_tl2740827609_
                                              (##cdr _e2740627602_)))
                                         (if (gx#stx-pair? _tl2740827609_)
                                             (let ((_e2740927612_
                                                    (gx#syntax-e
                                                     _tl2740827609_)))
                                               (let ((_hd2741027616_
                                                      (##car _e2740927612_))
                                                     (_tl2741127619_
                                                      (##cdr _e2740927612_)))
                                                 (if (gx#stx-pair?
                                                      _hd2741027616_)
                                                     (let ((_e2741227622_
                                                            (gx#syntax-e
                                                             _hd2741027616_)))
                                                       (let ((_hd2741327626_
                                                              (##car _e2741227622_))
                                                             (_tl2741427629_
                                                              (##cdr _e2741227622_)))
                                                         (if (gx#stx-null?
                                                              _tl2741427629_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2741127619_)
                         ((lambda (_L27632_ _L27634_)
                            (let ((_g2765127659_
                                   (lambda (_g2765227655_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2765227655_))))
                              (let ((_g2765027678_
                                     (lambda (_g2765227663_)
                                       ((lambda (_L27666_)
                                          (let ()
                                            (cons _L27666_
                                                  (cons _L27634_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L27632_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2765227663_))))
                                (_g2765027678_
                                 (if (_memq-datum?27383_ _L27632_)
                                     (gx#datum->syntax '#f 'eq?)
                                     (if (_memv-datum?27385_ _L27632_)
                                         (gx#datum->syntax '#f 'eqv?)
                                         (gx#datum->syntax '#f 'equal?)))))))
                          _hd2741327626_
                          _hd2740727606_)
                         (_g2738827585_ _g2739027589_))
                     (_g2738827585_ _g2739027589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2738827585_
                                                      _g2739027589_))))
                                             (_g2738827585_ _g2739027589_))))
                                     (_g2738827585_ _g2739027589_))))
                             (_g2738827585_ _g2739027589_)))))
                  (let ((_g2738627734_
                         (lambda (_g2739027686_)
                           (if (gx#stx-pair? _g2739027686_)
                               (let ((_e2739227689_
                                      (gx#syntax-e _g2739027686_)))
                                 (let ((_hd2739327693_ (##car _e2739227689_))
                                       (_tl2739427696_ (##cdr _e2739227689_)))
                                   (if (gx#stx-pair? _tl2739427696_)
                                       (let ((_e2739527699_
                                              (gx#syntax-e _tl2739427696_)))
                                         (let ((_hd2739627703_
                                                (##car _e2739527699_))
                                               (_tl2739727706_
                                                (##cdr _e2739527699_)))
                                           (if (gx#stx-pair? _tl2739727706_)
                                               (let ((_e2739827709_
                                                      (gx#syntax-e
                                                       _tl2739727706_)))
                                                 (let ((_hd2739927713_
                                                        (##car _e2739827709_))
                                                       (_tl2740027716_
                                                        (##cdr _e2739827709_)))
                                                   (if (gx#stx-null?
                                                        _hd2739927713_)
                                                       (if (gx#stx-null?
                                                            _tl2740027716_)
                                                           ((lambda (_L27719_)
                                                              '#f)
                                                            _hd2739627703_)
                                                           (_g2738727682_
                                                            _g2739027686_))
                                                       (_g2738727682_
                                                        _g2739027686_))))
                                               (_g2738727682_ _g2739027686_))))
                                       (_g2738727682_ _g2739027686_))))
                               (_g2738727682_ _g2739027686_)))))
                    (_g2738627734_ _stx27380_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do|
      (lambda (_$stx27760_)
        (let ((_g2776427835_
               (lambda (_g2776527831_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2776527831_))))
          (let ((_g2776328124_
                 (lambda (_g2776527839_)
                   (if (gx#stx-pair? _g2776527839_)
                       (let ((_e2777227842_ (gx#syntax-e _g2776527839_)))
                         (let ((_hd2777327846_ (##car _e2777227842_))
                               (_tl2777427849_ (##cdr _e2777227842_)))
                           (if (gx#stx-pair? _tl2777427849_)
                               (let ((_e2777527852_
                                      (gx#syntax-e _tl2777427849_)))
                                 (let ((_hd2777627856_ (##car _e2777527852_))
                                       (_tl2777727859_ (##cdr _e2777527852_)))
                                   (if (gx#stx-pair/null? _hd2777627856_)
                                       (if (fx>= (gx#stx-length _hd2777627856_)
                                                 '0)
                                           (let ((_g46954_
                                                  (gx#syntax-split-splice
                                                   _hd2777627856_
                                                   '0)))
                                             (begin
                                               (let ((_g46955_
                                                      (values-count _g46954_)))
                                                 (if (not (fx= _g46955_ 2))
                                                     (error "Context expects 2 values"
                                                            _g46955_)))
                                               (let ((_target2777827862_
                                                      (values-ref _g46954_ 0))
                                                     (_tl2778027865_
                                                      (values-ref _g46954_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2778027865_)
                                                     (letrec ((_loop2778127868_
                                                               (lambda (_hd2777927872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _step2778527875_
                                _init2778627877_
                                _var2778727879_)
                         (if (gx#stx-pair? _hd2777927872_)
                             (let ((_e2778227882_
                                    (gx#syntax-e _hd2777927872_)))
                               (let ((_lp-hd2778327886_ (##car _e2778227882_))
                                     (_lp-tl2778427889_ (##cdr _e2778227882_)))
                                 (if (gx#stx-pair? _lp-hd2778327886_)
                                     (let ((_e2779127892_
                                            (gx#syntax-e _lp-hd2778327886_)))
                                       (let ((_hd2779227896_
                                              (##car _e2779127892_))
                                             (_tl2779327899_
                                              (##cdr _e2779127892_)))
                                         (if (gx#stx-pair? _tl2779327899_)
                                             (let ((_e2779427902_
                                                    (gx#syntax-e
                                                     _tl2779327899_)))
                                               (let ((_hd2779527906_
                                                      (##car _e2779427902_))
                                                     (_tl2779627909_
                                                      (##cdr _e2779427902_)))
                                                 (if (gx#stx-pair/null?
                                                      _tl2779627909_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl2779627909_)
                                                               '0)
                                                         (let ((_g46956_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2779627909_
                         '0)))
                   (begin
                     (let ((_g46957_ (values-count _g46956_)))
                       (if (not (fx= _g46957_ 2))
                           (error "Context expects 2 values" _g46957_)))
                     (let ((_target2779727912_ (values-ref _g46956_ 0))
                           (_tl2779927915_ (values-ref _g46956_ 1)))
                       (if (gx#stx-null? _tl2779927915_)
                           (letrec ((_loop2780027918_
                                     (lambda (_hd2779827922_ _step2780427925_)
                                       (if (gx#stx-pair? _hd2779827922_)
                                           (let ((_e2780127928_
                                                  (gx#syntax-e
                                                   _hd2779827922_)))
                                             (let ((_lp-hd2780227932_
                                                    (##car _e2780127928_))
                                                   (_lp-tl2780327935_
                                                    (##cdr _e2780127928_)))
                                               (_loop2780027918_
                                                _lp-tl2780327935_
                                                (cons _lp-hd2780227932_
                                                      _step2780427925_))))
                                           (let ((_step2780527938_
                                                  (reverse _step2780427925_)))
                                             (_loop2778127868_
                                              _lp-tl2778427889_
                                              (cons _step2780527938_
                                                    _step2778527875_)
                                              (cons _hd2779527906_
                                                    _init2778627877_)
                                              (cons _hd2779227896_
                                                    _var2778727879_)))))))
                             (_loop2780027918_ _target2779727912_ '()))
                           (_g2776427835_ _g2776527839_)))))
                 (_g2776427835_ _g2776527839_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2776427835_
                                                      _g2776527839_))))
                                             (_g2776427835_ _g2776527839_))))
                                     (_g2776427835_ _g2776527839_))))
                             (let ((_step2778827942_
                                    (reverse _step2778527875_))
                                   (_init2778927945_
                                    (reverse _init2778627877_))
                                   (_var2779027947_ (reverse _var2778727879_)))
                               (if (gx#stx-pair? _tl2777727859_)
                                   (let ((_e2780627950_
                                          (gx#syntax-e _tl2777727859_)))
                                     (let ((_hd2780727954_
                                            (##car _e2780627950_))
                                           (_tl2780827957_
                                            (##cdr _e2780627950_)))
                                       (if (gx#stx-pair? _hd2780727954_)
                                           (let ((_e2780927960_
                                                  (gx#syntax-e
                                                   _hd2780727954_)))
                                             (let ((_hd2781027964_
                                                    (##car _e2780927960_))
                                                   (_tl2781127967_
                                                    (##cdr _e2780927960_)))
                                               (if (gx#stx-pair/null?
                                                    _tl2781127967_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl2781127967_)
                                                             '0)
                                                       (let ((_g46958_
                                                              (gx#syntax-split-splice
                                                               _tl2781127967_
                                                               '0)))
                                                         (begin
                                                           (let ((_g46959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g46958_)))
                     (if (not (fx= _g46959_ 2))
                         (error "Context expects 2 values" _g46959_)))
                   (let ((_target2781227970_ (values-ref _g46958_ 0))
                         (_tl2781427973_ (values-ref _g46958_ 1)))
                     (if (gx#stx-null? _tl2781427973_)
                         (letrec ((_loop2781527976_
                                   (lambda (_hd2781327980_ _fini2781927983_)
                                     (if (gx#stx-pair? _hd2781327980_)
                                         (let ((_e2781627986_
                                                (gx#syntax-e _hd2781327980_)))
                                           (let ((_lp-hd2781727990_
                                                  (##car _e2781627986_))
                                                 (_lp-tl2781827993_
                                                  (##cdr _e2781627986_)))
                                             (_loop2781527976_
                                              _lp-tl2781827993_
                                              (cons _lp-hd2781727990_
                                                    _fini2781927983_))))
                                         (let ((_fini2782027996_
                                                (reverse _fini2781927983_)))
                                           (if (gx#stx-pair/null?
                                                _tl2780827957_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2780827957_)
                                                         '0)
                                                   (let ((_g46960_
                                                          (gx#syntax-split-splice
                                                           _tl2780827957_
                                                           '0)))
                                                     (begin
                                                       (let ((_g46961_
                                                              (values-count
                                                               _g46960_)))
                                                         (if (not (fx= _g46961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g46961_)))
               (let ((_target2782128000_ (values-ref _g46960_ 0))
                     (_tl2782328003_ (values-ref _g46960_ 1)))
                 (if (gx#stx-null? _tl2782328003_)
                     (letrec ((_loop2782428006_
                               (lambda (_hd2782228010_ _body2782828013_)
                                 (if (gx#stx-pair? _hd2782228010_)
                                     (let ((_e2782528016_
                                            (gx#syntax-e _hd2782228010_)))
                                       (let ((_lp-hd2782628020_
                                              (##car _e2782528016_))
                                             (_lp-tl2782728023_
                                              (##cdr _e2782528016_)))
                                         (_loop2782428006_
                                          _lp-tl2782728023_
                                          (cons _lp-hd2782628020_
                                                _body2782828013_))))
                                     (let ((_body2782928026_
                                            (reverse _body2782828013_)))
                                       ((lambda (_L28030_
                                                 _L28032_
                                                 _L28033_
                                                 _L28034_
                                                 _L28035_
                                                 _L28036_)
                                          (if (gx#stx-andmap
                                               gx#identifier?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2806928072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2807028075_)
                  (cons _g2806928072_ _g2807028075_))
                '()
                _L28036_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$loop)
                                                          (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-check-splice-targets _L28035_ _L28036_)
                          (foldr (lambda (_g2807728090_
                                          _g2807828093_
                                          _g2807928095_)
                                   (cons (cons _g2807828093_
                                               (cons _g2807728090_ '()))
                                         _g2807928095_))
                                 '()
                                 _L28035_
                                 _L28036_))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'not)
                                                (cons _L28033_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2808028098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2808128101_)
                         (cons _g2808028098_ _g2808128101_))
                       (cons (cons (gx#datum->syntax '#f '$loop)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _L28034_
                                      _L28036_)
                                     (foldr (lambda (_g2808228104_
                                                     _g2808328107_
                                                     _g2808428109_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons _g2808328107_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g2808528112_ _g2808628115_)
                                   (cons _g2808528112_ _g2808628115_))
                                 '()
                                 _g2808228104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2808428109_))
                                            '()
                                            _L28034_
                                            _L28036_)))
                             '())
                       _L28030_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g2808728118_ _g2808828121_)
                                     (cons _g2808728118_ _g2808828121_))
                                   '()
                                   _L28032_))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2776427835_ _g2776527839_)))
                                        _body2782928026_
                                        _fini2782027996_
                                        _hd2781027964_
                                        _step2778827942_
                                        _init2778927945_
                                        _var2779027947_))))))
                       (_loop2782428006_ _target2782128000_ '()))
                     (_g2776427835_ _g2776527839_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2776427835_
                                                    _g2776527839_))
                                               (_g2776427835_
                                                _g2776527839_)))))))
                           (_loop2781527976_ _target2781227970_ '()))
                         (_g2776427835_ _g2776527839_)))))
               (_g2776427835_ _g2776527839_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2776427835_
                                                    _g2776527839_))))
                                           (_g2776427835_ _g2776527839_))))
                                   (_g2776427835_ _g2776527839_)))))))
               (_loop2778127868_ _target2777827862_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2776427835_
                                                      _g2776527839_)))))
                                           (_g2776427835_ _g2776527839_))
                                       (_g2776427835_ _g2776527839_))))
                               (_g2776427835_ _g2776527839_))))
                       (_g2776427835_ _g2776527839_)))))
            (_g2776328124_ _$stx27760_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do-while|
      (lambda (_$stx28132_)
        (let ((_g2813628159_
               (lambda (_g2813728155_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2813728155_))))
          (let ((_g2813528230_
                 (lambda (_g2813728163_)
                   (if (gx#stx-pair? _g2813728163_)
                       (let ((_e2814228166_ (gx#syntax-e _g2813728163_)))
                         (let ((_hd2814328170_ (##car _e2814228166_))
                               (_tl2814428173_ (##cdr _e2814228166_)))
                           (if (gx#stx-pair? _tl2814428173_)
                               (let ((_e2814528176_
                                      (gx#syntax-e _tl2814428173_)))
                                 (let ((_hd2814628180_ (##car _e2814528176_))
                                       (_tl2814728183_ (##cdr _e2814528176_)))
                                   (if (gx#stx-pair? _tl2814728183_)
                                       (let ((_e2814828186_
                                              (gx#syntax-e _tl2814728183_)))
                                         (let ((_hd2814928190_
                                                (##car _e2814828186_))
                                               (_tl2815028193_
                                                (##cdr _e2814828186_)))
                                           (if (gx#stx-pair? _hd2814928190_)
                                               (let ((_e2815128196_
                                                      (gx#syntax-e
                                                       _hd2814928190_)))
                                                 (let ((_hd2815228200_
                                                        (##car _e2815128196_))
                                                       (_tl2815328203_
                                                        (##cdr _e2815128196_)))
                                                   ((lambda (_L28206_
                                                             _L28208_
                                                             _L28209_
                                                             _L28210_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'do)
                                                            (cons _L28210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (gx#datum->syntax '#f 'not)
                                            (cons _L28209_ '()))
                                      _L28208_)
                                _L28206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl2815028193_
                                                    _tl2815328203_
                                                    _hd2815228200_
                                                    _hd2814628180_)))
                                               (_g2813628159_ _g2813728163_))))
                                       (_g2813628159_ _g2813728163_))))
                               (_g2813628159_ _g2813728163_))))
                       (_g2813628159_ _g2813728163_)))))
            (_g2813528230_ _$stx28132_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#begin0|
      (lambda (_$stx28234_)
        (let ((_g2823928270_
               (lambda (_g2824028266_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2824028266_))))
          (let ((_g2823828355_
                 (lambda (_g2824028274_)
                   (if (gx#stx-pair? _g2824028274_)
                       (let ((_e2825028277_ (gx#syntax-e _g2824028274_)))
                         (let ((_hd2825128281_ (##car _e2825028277_))
                               (_tl2825228284_ (##cdr _e2825028277_)))
                           (if (gx#stx-pair? _tl2825228284_)
                               (let ((_e2825328287_
                                      (gx#syntax-e _tl2825228284_)))
                                 (let ((_hd2825428291_ (##car _e2825328287_))
                                       (_tl2825528294_ (##cdr _e2825328287_)))
                                   (if (gx#stx-pair/null? _tl2825528294_)
                                       (if (fx>= (gx#stx-length _tl2825528294_)
                                                 '0)
                                           (let ((_g46962_
                                                  (gx#syntax-split-splice
                                                   _tl2825528294_
                                                   '0)))
                                             (begin
                                               (let ((_g46963_
                                                      (values-count _g46962_)))
                                                 (if (not (fx= _g46963_ 2))
                                                     (error "Context expects 2 values"
                                                            _g46963_)))
                                               (let ((_target2825628297_
                                                      (values-ref _g46962_ 0))
                                                     (_tl2825828300_
                                                      (values-ref _g46962_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2825828300_)
                                                     (letrec ((_loop2825928303_
                                                               (lambda (_hd2825728307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _rest2826328310_)
                         (if (gx#stx-pair? _hd2825728307_)
                             (let ((_e2826028313_
                                    (gx#syntax-e _hd2825728307_)))
                               (let ((_lp-hd2826128317_ (##car _e2826028313_))
                                     (_lp-tl2826228320_ (##cdr _e2826028313_)))
                                 (_loop2825928303_
                                  _lp-tl2826228320_
                                  (cons _lp-hd2826128317_ _rest2826328310_))))
                             (let ((_rest2826428323_
                                    (reverse _rest2826328310_)))
                               ((lambda (_L28327_ _L28329_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$r)
                                                    (cons _L28329_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '%#expression)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              (begin
                                '#!void
                                (foldr (lambda (_g2834628349_ _g2834728352_)
                                         (cons _g2834628349_ _g2834728352_))
                                       '()
                                       _L28327_)))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$r)
                                                          '())))))
                                _rest2826428323_
                                _hd2825428291_))))))
               (_loop2825928303_ _target2825628297_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2823928270_
                                                      _g2824028274_)))))
                                           (_g2823928270_ _g2824028274_))
                                       (_g2823928270_ _g2824028274_))))
                               (_g2823928270_ _g2824028274_))))
                       (_g2823928270_ _g2824028274_)))))
            (let ((_g2823728395_
                   (lambda (_g2824028359_)
                     (if (gx#stx-pair? _g2824028359_)
                         (let ((_e2824228362_ (gx#syntax-e _g2824028359_)))
                           (let ((_hd2824328366_ (##car _e2824228362_))
                                 (_tl2824428369_ (##cdr _e2824228362_)))
                             (if (gx#stx-pair? _tl2824428369_)
                                 (let ((_e2824528372_
                                        (gx#syntax-e _tl2824428369_)))
                                   (let ((_hd2824628376_ (##car _e2824528372_))
                                         (_tl2824728379_
                                          (##cdr _e2824528372_)))
                                     (if (gx#stx-null? _tl2824728379_)
                                         ((lambda (_L28382_) _L28382_)
                                          _hd2824628376_)
                                         (_g2823828355_ _g2824028359_))))
                                 (_g2823828355_ _g2824028359_))))
                         (_g2823828355_ _g2824028359_)))))
              (_g2823728395_ _$stx28234_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#rec|
      (lambda (_$stx28400_)
        (let ((_g2840628459_
               (lambda (_g2840728455_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2840728455_))))
          (let ((_g2840528558_
                 (lambda (_g2840728463_)
                   (if (gx#stx-pair? _g2840728463_)
                       (let ((_e2843628466_ (gx#syntax-e _g2840728463_)))
                         (let ((_hd2843728470_ (##car _e2843628466_))
                               (_tl2843828473_ (##cdr _e2843628466_)))
                           (if (gx#stx-pair? _tl2843828473_)
                               (let ((_e2843928476_
                                      (gx#syntax-e _tl2843828473_)))
                                 (let ((_hd2844028480_ (##car _e2843928476_))
                                       (_tl2844128483_ (##cdr _e2843928476_)))
                                   (if (gx#stx-pair? _hd2844028480_)
                                       (let ((_e2844228486_
                                              (gx#syntax-e _hd2844028480_)))
                                         (let ((_hd2844328490_
                                                (##car _e2844228486_))
                                               (_tl2844428493_
                                                (##cdr _e2844228486_)))
                                           (if (gx#stx-pair/null?
                                                _tl2844128483_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2844128483_)
                                                         '0)
                                                   (let ((_g46964_
                                                          (gx#syntax-split-splice
                                                           _tl2844128483_
                                                           '0)))
                                                     (begin
                                                       (let ((_g46965_
                                                              (values-count
                                                               _g46964_)))
                                                         (if (not (fx= _g46965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g46965_)))
               (let ((_target2844528496_ (values-ref _g46964_ 0))
                     (_tl2844728499_ (values-ref _g46964_ 1)))
                 (if (gx#stx-null? _tl2844728499_)
                     (letrec ((_loop2844828502_
                               (lambda (_hd2844628506_ _body2845228509_)
                                 (if (gx#stx-pair? _hd2844628506_)
                                     (let ((_e2844928512_
                                            (gx#syntax-e _hd2844628506_)))
                                       (let ((_lp-hd2845028516_
                                              (##car _e2844928512_))
                                             (_lp-tl2845128519_
                                              (##cdr _e2844928512_)))
                                         (_loop2844828502_
                                          _lp-tl2845128519_
                                          (cons _lp-hd2845028516_
                                                _body2845228509_))))
                                     (let ((_body2845328522_
                                            (reverse _body2845228509_)))
                                       ((lambda (_L28526_ _L28528_ _L28529_)
                                          (if (gx#identifier? _L28529_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec)
                                                    (cons (cons (cons _L28529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons _L28528_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g2854928552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2855028555_)
                   (cons _g2854928552_ _g2855028555_))
                 '()
                 _L28526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L28529_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2840628459_ _g2840728463_)))
                                        _body2845328522_
                                        _tl2844428493_
                                        _hd2844328490_))))))
                       (_loop2844828502_ _target2844528496_ '()))
                     (_g2840628459_ _g2840728463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2840628459_
                                                    _g2840728463_))
                                               (_g2840628459_ _g2840728463_))))
                                       (_g2840628459_ _g2840728463_))))
                               (_g2840628459_ _g2840728463_))))
                       (_g2840628459_ _g2840728463_)))))
            (let ((_g2840428624_
                   (lambda (_g2840728562_)
                     (if (gx#stx-pair? _g2840728562_)
                         (let ((_e2842128565_ (gx#syntax-e _g2840728562_)))
                           (let ((_hd2842228569_ (##car _e2842128565_))
                                 (_tl2842328572_ (##cdr _e2842128565_)))
                             (if (gx#stx-pair? _tl2842328572_)
                                 (let ((_e2842428575_
                                        (gx#syntax-e _tl2842328572_)))
                                   (let ((_hd2842528579_ (##car _e2842428575_))
                                         (_tl2842628582_
                                          (##cdr _e2842428575_)))
                                     (if (gx#stx-pair? _hd2842528579_)
                                         (let ((_e2842728585_
                                                (gx#syntax-e _hd2842528579_)))
                                           (let ((_hd2842828589_
                                                  (##car _e2842728585_))
                                                 (_tl2842928592_
                                                  (##cdr _e2842728585_)))
                                             (if (gx#identifier?
                                                  _hd2842828589_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g46966_|
                                                      _hd2842828589_)
                                                     (if (gx#stx-pair?
                                                          _tl2842628582_)
                                                         (let ((_e2843028595_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2842628582_)))
                   (let ((_hd2843128599_ (##car _e2843028595_))
                         (_tl2843228602_ (##cdr _e2843028595_)))
                     (if (gx#stx-null? _tl2843228602_)
                         ((lambda (_L28605_ _L28607_)
                            (if (gx#identifier-list? _L28607_)
                                (cons (gx#datum->syntax '#f 'letrec-values)
                                      (cons (cons (cons _L28607_
                                                        (cons _L28605_ '()))
                                                  '())
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'values)
                                                        _L28607_)
                                                  '())))
                                (_g2840528558_ _g2840728562_)))
                          _hd2843128599_
                          _tl2842928592_)
                         (_g2840528558_ _g2840728562_))))
                 (_g2840528558_ _g2840728562_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2840528558_
                                                      _g2840728562_))
                                                 (_g2840528558_
                                                  _g2840728562_))))
                                         (_g2840528558_ _g2840728562_))))
                                 (_g2840528558_ _g2840728562_))))
                         (_g2840528558_ _g2840728562_)))))
              (let ((_g2840328678_
                     (lambda (_g2840728628_)
                       (if (gx#stx-pair? _g2840728628_)
                           (let ((_e2841028631_ (gx#syntax-e _g2840728628_)))
                             (let ((_hd2841128635_ (##car _e2841028631_))
                                   (_tl2841228638_ (##cdr _e2841028631_)))
                               (if (gx#stx-pair? _tl2841228638_)
                                   (let ((_e2841328641_
                                          (gx#syntax-e _tl2841228638_)))
                                     (let ((_hd2841428645_
                                            (##car _e2841328641_))
                                           (_tl2841528648_
                                            (##cdr _e2841328641_)))
                                       (if (gx#stx-pair? _tl2841528648_)
                                           (let ((_e2841628651_
                                                  (gx#syntax-e
                                                   _tl2841528648_)))
                                             (let ((_hd2841728655_
                                                    (##car _e2841628651_))
                                                   (_tl2841828658_
                                                    (##cdr _e2841628651_)))
                                               (if (gx#stx-null?
                                                    _tl2841828658_)
                                                   ((lambda (_L28661_ _L28663_)
                                                      (if (gx#identifier?
                                                           _L28663_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L28663_ (cons _L28661_ '())) '())
                              (cons _L28663_ '())))
                  (_g2840428624_ _g2840728628_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2841728655_
                                                    _hd2841428645_)
                                                   (_g2840428624_
                                                    _g2840728628_))))
                                           (_g2840428624_ _g2840728628_))))
                                   (_g2840428624_ _g2840728628_))))
                           (_g2840428624_ _g2840728628_)))))
                (_g2840328678_ _$stx28400_)))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet|
      (lambda (_stx28683_)
        (let ((_let-head?28686_
               (lambda (_x29233_)
                 (let ((_g2923729248_
                        (lambda (_g2923829244_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2923829244_))))
                   (let ((_g2923629259_
                          (lambda (_g2923829252_)
                            ((lambda () (gx#identifier? _x29233_))))))
                     (let ((_g2923529289_
                            (lambda (_g2923829263_)
                              (if (gx#stx-pair? _g2923829263_)
                                  (let ((_e2924029266_
                                         (gx#syntax-e _g2923829263_)))
                                    (let ((_hd2924129270_
                                           (##car _e2924029266_))
                                          (_tl2924229273_
                                           (##cdr _e2924029266_)))
                                      (if (gx#identifier? _hd2924129270_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:2>[1]#_g46976_|
                                               _hd2924129270_)
                                              ((lambda (_L29276_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L29276_))
                                               _tl2924229273_)
                                              (_g2923629259_ _g2923829263_))
                                          (_g2923629259_ _g2923829263_))))
                                  (_g2923629259_ _g2923829263_)))))
                       (_g2923529289_ _x29233_)))))))
          (let ((_let-head28688_
                 (lambda (_x29173_)
                   (let ((_g2917729188_
                          (lambda (_g2917829184_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2917829184_))))
                     (let ((_g2917629199_
                            (lambda (_g2917829192_)
                              ((lambda () (list _x29173_))))))
                       (let ((_g2917529229_
                              (lambda (_g2917829203_)
                                (if (gx#stx-pair? _g2917829203_)
                                    (let ((_e2918029206_
                                           (gx#syntax-e _g2917829203_)))
                                      (let ((_hd2918129210_
                                             (##car _e2918029206_))
                                            (_tl2918229213_
                                             (##cdr _e2918029206_)))
                                        (if (gx#identifier? _hd2918129210_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:2>[1]#_g46975_|
                                                 _hd2918129210_)
                                                ((lambda (_L29216_) _L29216_)
                                                 _tl2918229213_)
                                                (_g2917629199_ _g2917829203_))
                                            (_g2917629199_ _g2917829203_))))
                                    (_g2917629199_ _g2917829203_)))))
                         (_g2917529229_ _x29173_)))))))
            (let ((_g2869128749_
                   (lambda (_g2869228745_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g2869228745_))))
              (let ((_g2869029099_
                     (lambda (_g2869228753_)
                       (if (gx#stx-pair? _g2869228753_)
                           (let ((_e2871228756_ (gx#syntax-e _g2869228753_)))
                             (let ((_hd2871328760_ (##car _e2871228756_))
                                   (_tl2871428763_ (##cdr _e2871228756_)))
                               (if (gx#stx-pair? _tl2871428763_)
                                   (let ((_e2871528766_
                                          (gx#syntax-e _tl2871428763_)))
                                     (let ((_hd2871628770_
                                            (##car _e2871528766_))
                                           (_tl2871728773_
                                            (##cdr _e2871528766_)))
                                       (if (gx#stx-pair/null? _hd2871628770_)
                                           (if (fx>= (gx#stx-length
                                                      _hd2871628770_)
                                                     '0)
                                               (let ((_g46967_
                                                      (gx#syntax-split-splice
                                                       _hd2871628770_
                                                       '0)))
                                                 (begin
                                                   (let ((_g46968_
                                                          (values-count
                                                           _g46967_)))
                                                     (if (not (fx= _g46968_ 2))
                                                         (error "Context expects 2 values"
                                                                _g46968_)))
                                                   (let ((_target2871828776_
                                                          (values-ref
                                                           _g46967_
                                                           0))
                                                         (_tl2872028779_
                                                          (values-ref
                                                           _g46967_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2872028779_)
                                                         (letrec ((_loop2872128782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2871928786_
                                    _e2872528789_
                                    _hd2872628791_)
                             (if (gx#stx-pair? _hd2871928786_)
                                 (let ((_e2872228794_
                                        (gx#syntax-e _hd2871928786_)))
                                   (let ((_lp-hd2872328798_
                                          (##car _e2872228794_))
                                         (_lp-tl2872428801_
                                          (##cdr _e2872228794_)))
                                     (if (gx#stx-pair? _lp-hd2872328798_)
                                         (let ((_e2872928804_
                                                (gx#syntax-e
                                                 _lp-hd2872328798_)))
                                           (let ((_hd2873028808_
                                                  (##car _e2872928804_))
                                                 (_tl2873128811_
                                                  (##cdr _e2872928804_)))
                                             (if (gx#stx-pair? _tl2873128811_)
                                                 (let ((_e2873228814_
                                                        (gx#syntax-e
                                                         _tl2873128811_)))
                                                   (let ((_hd2873328818_
                                                          (##car _e2873228814_))
                                                         (_tl2873428821_
                                                          (##cdr _e2873228814_)))
                                                     (if (gx#stx-null?
                                                          _tl2873428821_)
                                                         (_loop2872128782_
                                                          _lp-tl2872428801_
                                                          (cons _hd2873328818_
                                                                _e2872528789_)
                                                          (cons _hd2873028808_
                                                                _hd2872628791_))
                                                         (_g2869128749_
                                                          _g2869228753_))))
                                                 (_g2869128749_
                                                  _g2869228753_))))
                                         (_g2869128749_ _g2869228753_))))
                                 (let ((_e2872728824_ (reverse _e2872528789_))
                                       (_hd2872828827_
                                        (reverse _hd2872628791_)))
                                   (if (gx#stx-pair/null? _tl2871728773_)
                                       (if (fx>= (gx#stx-length _tl2871728773_)
                                                 '0)
                                           (let ((_g46969_
                                                  (gx#syntax-split-splice
                                                   _tl2871728773_
                                                   '0)))
                                             (begin
                                               (let ((_g46970_
                                                      (values-count _g46969_)))
                                                 (if (not (fx= _g46970_ 2))
                                                     (error "Context expects 2 values"
                                                            _g46970_)))
                                               (let ((_target2873528830_
                                                      (values-ref _g46969_ 0))
                                                     (_tl2873728833_
                                                      (values-ref _g46969_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2873728833_)
                                                     (letrec ((_loop2873828836_
                                                               (lambda (_hd2873628840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body2874228843_)
                         (if (gx#stx-pair? _hd2873628840_)
                             (let ((_e2873928846_
                                    (gx#syntax-e _hd2873628840_)))
                               (let ((_lp-hd2874028850_ (##car _e2873928846_))
                                     (_lp-tl2874128853_ (##cdr _e2873928846_)))
                                 (_loop2873828836_
                                  _lp-tl2874128853_
                                  (cons _lp-hd2874028850_ _body2874228843_))))
                             (let ((_body2874328856_
                                    (reverse _body2874228843_)))
                               ((lambda (_L28860_ _L28862_ _L28863_)
                                  (if (gx#stx-andmap
                                       _let-head?28686_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g2888628889_
                                                         _g2888728892_)
                                                  (cons _g2888628889_
                                                        _g2888728892_))
                                                '()
                                                _L28863_)))
                                      (let ((_g2889528928_
                                             (lambda (_g2889628924_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2889628924_))))
                                        (let ((_g2889429079_
                                               (lambda (_g2889628932_)
                                                 (if (gx#stx-pair?
                                                      _g2889628932_)
                                                     (let ((_e2889928935_
                                                            (gx#syntax-e
                                                             _g2889628932_)))
                                                       (let ((_hd2890028939_
                                                              (##car _e2889928935_))
                                                             (_tl2890128942_
                                                              (##cdr _e2889928935_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd2890028939_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2890028939_)
                               '0)
                         (let ((_g46971_
                                (gx#syntax-split-splice _hd2890028939_ '0)))
                           (begin
                             (let ((_g46972_ (values-count _g46971_)))
                               (if (not (fx= _g46972_ 2))
                                   (error "Context expects 2 values"
                                          _g46972_)))
                             (let ((_target2890228945_ (values-ref _g46971_ 0))
                                   (_tl2890428948_ (values-ref _g46971_ 1)))
                               (if (gx#stx-null? _tl2890428948_)
                                   (letrec ((_loop2890528951_
                                             (lambda (_hd2890328955_
                                                      _$e2890928958_)
                                               (if (gx#stx-pair?
                                                    _hd2890328955_)
                                                   (let ((_e2890628961_
                                                          (gx#syntax-e
                                                           _hd2890328955_)))
                                                     (let ((_lp-hd2890728965_
                                                            (##car _e2890628961_))
                                                           (_lp-tl2890828968_
                                                            (##cdr _e2890628961_)))
                                                       (_loop2890528951_
                                                        _lp-tl2890828968_
                                                        (cons _lp-hd2890728965_
                                                              _$e2890928958_))))
                                                   (let ((_$e2891028971_
                                                          (reverse _$e2890928958_)))
                                                     (if (gx#stx-pair?
                                                          _tl2890128942_)
                                                         (let ((_e2891128975_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2890128942_)))
                   (let ((_hd2891228979_ (##car _e2891128975_))
                         (_tl2891328982_ (##cdr _e2891128975_)))
                     (if (gx#stx-pair/null? _hd2891228979_)
                         (if (fx>= (gx#stx-length _hd2891228979_) '0)
                             (let ((_g46973_
                                    (gx#syntax-split-splice
                                     _hd2891228979_
                                     '0)))
                               (begin
                                 (let ((_g46974_ (values-count _g46973_)))
                                   (if (not (fx= _g46974_ 2))
                                       (error "Context expects 2 values"
                                              _g46974_)))
                                 (let ((_target2891428985_
                                        (values-ref _g46973_ 0))
                                       (_tl2891628988_
                                        (values-ref _g46973_ 1)))
                                   (if (gx#stx-null? _tl2891628988_)
                                       (letrec ((_loop2891728991_
                                                 (lambda (_hd2891528995_
                                                          _hd-bind2892128998_)
                                                   (if (gx#stx-pair?
                                                        _hd2891528995_)
                                                       (let ((_e2891829001_
                                                              (gx#syntax-e
                                                               _hd2891528995_)))
                                                         (let ((_lp-hd2891929005_
                                                                (##car _e2891829001_))
                                                               (_lp-tl2892029008_
                                                                (##cdr _e2891829001_)))
                                                           (_loop2891728991_
                                                            _lp-tl2892029008_
                                                            (cons _lp-hd2891929005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd-bind2892128998_))))
               (let ((_hd-bind2892229011_ (reverse _hd-bind2892128998_)))
                 (if (gx#stx-null? _tl2891328982_)
                     ((lambda (_L29015_ _L29017_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let-values)
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _L28862_
                                         _L29017_)
                                        (foldr (lambda (_g2904029051_
                                                        _g2904129054_
                                                        _g2904229056_)
                                                 (cons (cons (cons _g2904129054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _g2904029051_ '()))
               _g2904229056_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _L28862_
                                               _L29017_))
                                      (cons (cons (gx#datum->syntax '#f 'and)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2904329059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2904429062_)
                     (cons _g2904329059_ _g2904429062_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L29017_
                                        _L29015_)
                                       (foldr (lambda (_g2904529065_
                                                       _g2904629068_
                                                       _g2904729070_)
                                                (cons (cons _g2904629068_
                                                            (cons _g2904529065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2904729070_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L29017_
                                              _L29015_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2904829073_
                                                       _g2904929076_)
                                                (cons _g2904829073_
                                                      _g2904929076_))
                                              '()
                                              _L28860_))))
                         '())
                   _L29017_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _hd-bind2892229011_
                      _$e2891028971_)
                     (_g2889528928_ _g2889628932_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop2891728991_
                                          _target2891428985_
                                          '()))
                                       (_g2889528928_ _g2889628932_)))))
                             (_g2889528928_ _g2889628932_))
                         (_g2889528928_ _g2889628932_))))
                 (_g2889528928_ _g2889628932_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2890528951_ _target2890228945_ '()))
                                   (_g2889528928_ _g2889628932_)))))
                         (_g2889528928_ _g2889628932_))
                     (_g2889528928_ _g2889628932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2889528928_
                                                      _g2889628932_)))))
                                          (_g2889429079_
                                           (list (gx#gentemps
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2908229085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2908329088_)
                     (cons _g2908229085_ _g2908329088_))
                   '()
                   _L28863_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-map
                                                  _let-head28688_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2909029093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2909129096_)
                     (cons _g2909029093_ _g2909129096_))
                   '()
                   _L28863_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g2869128749_ _g2869228753_)))
                                _body2874328856_
                                _e2872728824_
                                _hd2872828827_))))))
               (_loop2873828836_ _target2873528830_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2869128749_
                                                      _g2869228753_)))))
                                           (_g2869128749_ _g2869228753_))
                                       (_g2869128749_ _g2869228753_)))))))
                   (_loop2872128782_ _target2871828776_ '() '()))
                 (_g2869128749_ _g2869228753_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2869128749_ _g2869228753_))
                                           (_g2869128749_ _g2869228753_))))
                                   (_g2869128749_ _g2869228753_))))
                           (_g2869128749_ _g2869228753_)))))
                (let ((_g2868929169_
                       (lambda (_g2869229103_)
                         (if (gx#stx-pair? _g2869229103_)
                             (let ((_e2869729106_ (gx#syntax-e _g2869229103_)))
                               (let ((_hd2869829110_ (##car _e2869729106_))
                                     (_tl2869929113_ (##cdr _e2869729106_)))
                                 (if (gx#stx-pair? _tl2869929113_)
                                     (let ((_e2870029116_
                                            (gx#syntax-e _tl2869929113_)))
                                       (let ((_hd2870129120_
                                              (##car _e2870029116_))
                                             (_tl2870229123_
                                              (##cdr _e2870029116_)))
                                         (if (gx#stx-pair? _hd2870129120_)
                                             (let ((_e2870329126_
                                                    (gx#syntax-e
                                                     _hd2870129120_)))
                                               (let ((_hd2870429130_
                                                      (##car _e2870329126_))
                                                     (_tl2870529133_
                                                      (##cdr _e2870329126_)))
                                                 (if (gx#stx-pair?
                                                      _tl2870529133_)
                                                     (let ((_e2870629136_
                                                            (gx#syntax-e
                                                             _tl2870529133_)))
                                                       (let ((_hd2870729140_
                                                              (##car _e2870629136_))
                                                             (_tl2870829143_
                                                              (##cdr _e2870629136_)))
                                                         (if (gx#stx-null?
                                                              _tl2870829143_)
                                                             ((lambda (_L29146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L29148_
                               _L29149_
                               _L29150_)
                        (if (_let-head?28686_ _L29149_)
                            (cons _L29150_
                                  (cons (cons (cons _L29149_
                                                    (cons _L29148_ '()))
                                              '())
                                        _L29146_))
                            (_g2869029099_ _g2869229103_)))
                      _tl2870229123_
                      _hd2870729140_
                      _hd2870429130_
                      _hd2869829110_)
                     (_g2869029099_ _g2869229103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2869029099_
                                                      _g2869229103_))))
                                             (_g2869029099_ _g2869229103_))))
                                     (_g2869029099_ _g2869229103_))))
                             (_g2869029099_ _g2869229103_)))))
                  (_g2868929169_ _stx28683_))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet*|
      (lambda (_$stx29297_)
        (let ((_g2930229347_
               (lambda (_g2930329343_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2930329343_))))
          (let ((_g2930129448_
                 (lambda (_g2930329351_)
                   (if (gx#stx-pair? _g2930329351_)
                       (let ((_e2932429354_ (gx#syntax-e _g2930329351_)))
                         (let ((_hd2932529358_ (##car _e2932429354_))
                               (_tl2932629361_ (##cdr _e2932429354_)))
                           (if (gx#stx-pair? _tl2932629361_)
                               (let ((_e2932729364_
                                      (gx#syntax-e _tl2932629361_)))
                                 (let ((_hd2932829368_ (##car _e2932729364_))
                                       (_tl2932929371_ (##cdr _e2932729364_)))
                                   (if (gx#stx-pair? _hd2932829368_)
                                       (let ((_e2933029374_
                                              (gx#syntax-e _hd2932829368_)))
                                         (let ((_hd2933129378_
                                                (##car _e2933029374_))
                                               (_tl2933229381_
                                                (##cdr _e2933029374_)))
                                           (if (gx#stx-pair/null?
                                                _tl2932929371_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2932929371_)
                                                         '0)
                                                   (let ((_g46977_
                                                          (gx#syntax-split-splice
                                                           _tl2932929371_
                                                           '0)))
                                                     (begin
                                                       (let ((_g46978_
                                                              (values-count
                                                               _g46977_)))
                                                         (if (not (fx= _g46978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g46978_)))
               (let ((_target2933329384_ (values-ref _g46977_ 0))
                     (_tl2933529387_ (values-ref _g46977_ 1)))
                 (if (gx#stx-null? _tl2933529387_)
                     (letrec ((_loop2933629390_
                               (lambda (_hd2933429394_ _body2934029397_)
                                 (if (gx#stx-pair? _hd2933429394_)
                                     (let ((_e2933729400_
                                            (gx#syntax-e _hd2933429394_)))
                                       (let ((_lp-hd2933829404_
                                              (##car _e2933729400_))
                                             (_lp-tl2933929407_
                                              (##cdr _e2933729400_)))
                                         (_loop2933629390_
                                          _lp-tl2933929407_
                                          (cons _lp-hd2933829404_
                                                _body2934029397_))))
                                     (let ((_body2934129410_
                                            (reverse _body2934029397_)))
                                       ((lambda (_L29414_
                                                 _L29416_
                                                 _L29417_
                                                 _L29418_)
                                          (cons (gx#datum->syntax '#f 'alet)
                                                (cons (cons _L29417_ '())
                                                      (cons (cons _L29418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L29416_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2943929442_ _g2944029445_)
                                           (cons _g2943929442_ _g2944029445_))
                                         '()
                                         _L29414_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2934129410_
                                        _tl2933229381_
                                        _hd2933129378_
                                        _hd2932529358_))))))
                       (_loop2933629390_ _target2933329384_ '()))
                     (_g2930229347_ _g2930329351_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2930229347_
                                                    _g2930329351_))
                                               (_g2930229347_ _g2930329351_))))
                                       (_g2930229347_ _g2930329351_))))
                               (_g2930229347_ _g2930329351_))))
                       (_g2930229347_ _g2930329351_)))))
            (let ((_g2930029530_
                   (lambda (_g2930329452_)
                     (if (gx#stx-pair? _g2930329452_)
                         (let ((_e2930529455_ (gx#syntax-e _g2930329452_)))
                           (let ((_hd2930629459_ (##car _e2930529455_))
                                 (_tl2930729462_ (##cdr _e2930529455_)))
                             (if (gx#stx-pair? _tl2930729462_)
                                 (let ((_e2930829465_
                                        (gx#syntax-e _tl2930729462_)))
                                   (let ((_hd2930929469_ (##car _e2930829465_))
                                         (_tl2931029472_
                                          (##cdr _e2930829465_)))
                                     (if (gx#stx-null? _hd2930929469_)
                                         (if (gx#stx-pair/null? _tl2931029472_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2931029472_)
                                                       '0)
                                                 (let ((_g46979_
                                                        (gx#syntax-split-splice
                                                         _tl2931029472_
                                                         '0)))
                                                   (begin
                                                     (let ((_g46980_
                                                            (values-count
                                                             _g46979_)))
                                                       (if (not (fx= _g46980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g46980_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2931129475_
                                                            (values-ref
                                                             _g46979_
                                                             0))
                                                           (_tl2931329478_
                                                            (values-ref
                                                             _g46979_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2931329478_)
                                                           (letrec ((_loop2931429481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2931229485_ _body2931829488_)
                               (if (gx#stx-pair? _hd2931229485_)
                                   (let ((_e2931529491_
                                          (gx#syntax-e _hd2931229485_)))
                                     (let ((_lp-hd2931629495_
                                            (##car _e2931529491_))
                                           (_lp-tl2931729498_
                                            (##cdr _e2931529491_)))
                                       (_loop2931429481_
                                        _lp-tl2931729498_
                                        (cons _lp-hd2931629495_
                                              _body2931829488_))))
                                   (let ((_body2931929501_
                                          (reverse _body2931829488_)))
                                     ((lambda (_L29505_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2952129524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2952229527_)
                       (cons _g2952129524_ _g2952229527_))
                     '()
                     _L29505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body2931929501_))))))
                     (_loop2931429481_ _target2931129475_ '()))
                   (_g2930129448_ _g2930329452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2930129448_ _g2930329452_))
                                             (_g2930129448_ _g2930329452_))
                                         (_g2930129448_ _g2930329452_))))
                                 (_g2930129448_ _g2930329452_))))
                         (_g2930129448_ _g2930329452_)))))
              (_g2930029530_ _$stx29297_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#@list|
      (lambda (_$stx29536_)
        (let ((_g2954529602_
               (lambda (_g2954629598_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2954629598_))))
          (let ((_g2954429631_
                 (lambda (_g2954629606_)
                   (if (gx#stx-pair? _g2954629606_)
                       (let ((_e2959429609_ (gx#syntax-e _g2954629606_)))
                         (let ((_hd2959529613_ (##car _e2959429609_))
                               (_tl2959629616_ (##cdr _e2959429609_)))
                           ((lambda (_L29619_) _L29619_) _tl2959629616_)))
                       (_g2954529602_ _g2954629606_)))))
            (let ((_g2954329675_
                   (lambda (_g2954629635_)
                     (if (gx#stx-pair? _g2954629635_)
                         (let ((_e2958729638_ (gx#syntax-e _g2954629635_)))
                           (let ((_hd2958829642_ (##car _e2958729638_))
                                 (_tl2958929645_ (##cdr _e2958729638_)))
                             (if (gx#stx-pair? _tl2958929645_)
                                 (let ((_e2959029648_
                                        (gx#syntax-e _tl2958929645_)))
                                   (let ((_hd2959129652_ (##car _e2959029648_))
                                         (_tl2959229655_
                                          (##cdr _e2959029648_)))
                                     ((lambda (_L29658_ _L29660_ _L29661_)
                                        (cons (gx#datum->syntax '#f 'cons)
                                              (cons _L29660_
                                                    (cons (cons _L29661_
                                                                _L29658_)
                                                          '()))))
                                      _tl2959229655_
                                      _hd2959129652_
                                      _hd2958829642_)))
                                 (_g2954429631_ _g2954629635_))))
                         (_g2954429631_ _g2954629635_)))))
              (let ((_g2954229733_
                     (lambda (_g2954629679_)
                       (if (gx#stx-pair? _g2954629679_)
                           (let ((_e2957529682_ (gx#syntax-e _g2954629679_)))
                             (let ((_hd2957629686_ (##car _e2957529682_))
                                   (_tl2957729689_ (##cdr _e2957529682_)))
                               (if (gx#stx-pair? _tl2957729689_)
                                   (let ((_e2957829692_
                                          (gx#syntax-e _tl2957729689_)))
                                     (let ((_hd2957929696_
                                            (##car _e2957829692_))
                                           (_tl2958029699_
                                            (##cdr _e2957829692_)))
                                       (if (gx#stx-pair? _tl2958029699_)
                                           (let ((_e2958129702_
                                                  (gx#syntax-e
                                                   _tl2958029699_)))
                                             (let ((_hd2958229706_
                                                    (##car _e2958129702_))
                                                   (_tl2958329709_
                                                    (##cdr _e2958129702_)))
                                               ((lambda (_L29712_
                                                         _L29714_
                                                         _L29715_
                                                         _L29716_)
                                                  (if (gx#ellipsis? _L29714_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'foldr)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons)
                          (cons (cons _L29716_ _L29712_) (cons _L29715_ '()))))
              (_g2954329675_ _g2954629679_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2958329709_
                                                _hd2958229706_
                                                _hd2957929696_
                                                _hd2957629686_)))
                                           (_g2954329675_ _g2954629679_))))
                                   (_g2954329675_ _g2954629679_))))
                           (_g2954329675_ _g2954629679_)))))
                (let ((_g2954129787_
                       (lambda (_g2954629737_)
                         (if (gx#stx-pair? _g2954629737_)
                             (let ((_e2956229740_ (gx#syntax-e _g2954629737_)))
                               (let ((_hd2956329744_ (##car _e2956229740_))
                                     (_tl2956429747_ (##cdr _e2956229740_)))
                                 (if (gx#stx-pair? _tl2956429747_)
                                     (let ((_e2956529750_
                                            (gx#syntax-e _tl2956429747_)))
                                       (let ((_hd2956629754_
                                              (##car _e2956529750_))
                                             (_tl2956729757_
                                              (##cdr _e2956529750_)))
                                         (if (gx#stx-pair? _tl2956729757_)
                                             (let ((_e2956829760_
                                                    (gx#syntax-e
                                                     _tl2956729757_)))
                                               (let ((_hd2956929764_
                                                      (##car _e2956829760_))
                                                     (_tl2957029767_
                                                      (##cdr _e2956829760_)))
                                                 (if (gx#stx-null?
                                                      _tl2957029767_)
                                                     ((lambda (_L29770_
                                                               _L29772_)
                                                        (if (gx#ellipsis?
                                                             _L29770_)
                                                            _L29772_
                                                            (_g2954229733_
                                                             _g2954629737_)))
                                                      _hd2956929764_
                                                      _hd2956629754_)
                                                     (_g2954229733_
                                                      _g2954629737_))))
                                             (_g2954229733_ _g2954629737_))))
                                     (_g2954229733_ _g2954629737_))))
                             (_g2954229733_ _g2954629737_)))))
                  (let ((_g2954029839_
                         (lambda (_g2954629791_)
                           (if (gx#stx-pair? _g2954629791_)
                               (let ((_e2955129794_
                                      (gx#syntax-e _g2954629791_)))
                                 (let ((_hd2955229798_ (##car _e2955129794_))
                                       (_tl2955329801_ (##cdr _e2955129794_)))
                                   (if (gx#stx-pair? _tl2955329801_)
                                       (let ((_e2955429804_
                                              (gx#syntax-e _tl2955329801_)))
                                         (let ((_hd2955529808_
                                                (##car _e2955429804_))
                                               (_tl2955629811_
                                                (##cdr _e2955429804_)))
                                           (if (gx#stx-datum? _hd2955529808_)
                                               (if (equal? (gx#stx-e
                                                            _hd2955529808_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2955629811_)
                                                       (let ((_e2955729814_
                                                              (gx#syntax-e
                                                               _tl2955629811_)))
                                                         (let ((_hd2955829818_
                                                                (##car _e2955729814_))
                                                               (_tl2955929821_
                                                                (##cdr _e2955729814_)))
                                                           (if (gx#stx-null?
                                                                _tl2955929821_)
                                                               ((lambda (_L29824_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L29824_)
                        _hd2955829818_)
                       (_g2954129787_ _g2954629791_))))
               (_g2954129787_ _g2954629791_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2954129787_
                                                    _g2954629791_))
                                               (_g2954129787_ _g2954629791_))))
                                       (_g2954129787_ _g2954629791_))))
                               (_g2954129787_ _g2954629791_)))))
                    (let ((_g2953929860_
                           (lambda (_g2954629843_)
                             (if (gx#stx-pair? _g2954629843_)
                                 (let ((_e2954729846_
                                        (gx#syntax-e _g2954629843_)))
                                   (let ((_hd2954829850_ (##car _e2954729846_))
                                         (_tl2954929853_
                                          (##cdr _e2954729846_)))
                                     (if (gx#stx-null? _tl2954929853_)
                                         ((lambda ()
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons '() '()))))
                                         (_g2954029839_ _g2954629843_))))
                                 (_g2954029839_ _g2954629843_)))))
                      (_g2953929860_ _$stx29536_))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#quasiquote|
      (lambda (_stx29864_)
        (letrec ((_simple-quote?29867_
                  (lambda (_e30559_)
                    (let ((_g3056730604_
                           (lambda (_g3056830600_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3056830600_))))
                      (let ((_g3056630615_
                             (lambda (_g3056830608_) ((lambda () '#t)))))
                        (let ((_g3056530638_
                               (lambda (_g3056830619_)
                                 (if (gx#stx-box? _g3056830619_)
                                     (let ((_e3059830622_
                                            (unbox (gx#syntax-e
                                                    _g3056830619_))))
                                       ((lambda (_L30626_)
                                          (_simple-quote?29867_ _L30626_))
                                        _e3059830622_))
                                     (_g3056630615_ _g3056830619_)))))
                          (let ((_g3056430701_
                                 (lambda (_g3056830642_)
                                   (if (gx#stx-vector? _g3056830642_)
                                       (let ((_e3058730645_
                                              (vector->list
                                               (gx#syntax-e _g3056830642_))))
                                         (if (gx#stx-pair/null? _e3058730645_)
                                             (if (fx>= (gx#stx-length
                                                        _e3058730645_)
                                                       '0)
                                                 (let ((_g46981_
                                                        (gx#syntax-split-splice
                                                         _e3058730645_
                                                         '0)))
                                                   (begin
                                                     (let ((_g46982_
                                                            (values-count
                                                             _g46981_)))
                                                       (if (not (fx= _g46982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g46982_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3058830649_
                                                            (values-ref
                                                             _g46981_
                                                             0))
                                                           (_tl3059030652_
                                                            (values-ref
                                                             _g46981_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl3059030652_)
                                                           (letrec ((_loop3059130655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3058930659_ _e3059530662_)
                               (if (gx#stx-pair? _hd3058930659_)
                                   (let ((_e3059230665_
                                          (gx#syntax-e _hd3058930659_)))
                                     (let ((_lp-hd3059330669_
                                            (##car _e3059230665_))
                                           (_lp-tl3059430672_
                                            (##cdr _e3059230665_)))
                                       (_loop3059130655_
                                        _lp-tl3059430672_
                                        (cons _lp-hd3059330669_
                                              _e3059530662_))))
                                   (let ((_e3059630675_
                                          (reverse _e3059530662_)))
                                     ((lambda (_L30679_)
                                        (_simple-quote?29867_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3069230695_
                                                           _g3069330698_)
                                                    (cons _g3069230695_
                                                          _g3069330698_))
                                                  '()
                                                  _L30679_))))
                                      _e3059630675_))))))
                     (_loop3059130655_ _target3058830649_ '()))
                   (_g3056530638_ _g3056830642_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3056530638_ _g3056830642_))
                                             (_g3056530638_ _g3056830642_)))
                                       (_g3056530638_ _g3056830642_)))))
                            (let ((_g3056330731_
                                   (lambda (_g3056830705_)
                                     (if (gx#stx-pair? _g3056830705_)
                                         (let ((_e3058330708_
                                                (gx#syntax-e _g3056830705_)))
                                           (let ((_hd3058430712_
                                                  (##car _e3058330708_))
                                                 (_tl3058530715_
                                                  (##cdr _e3058330708_)))
                                             ((lambda (_L30718_ _L30720_)
                                                (if (_simple-quote?29867_
                                                     _L30720_)
                                                    (_simple-quote?29867_
                                                     _L30718_)
                                                    '#f))
                                              _tl3058530715_
                                              _hd3058430712_)))
                                         (_g3056430701_ _g3056830705_)))))
                              (let ((_g3056230762_
                                     (lambda (_g3056830735_)
                                       (if (gx#stx-pair? _g3056830735_)
                                           (let ((_e3057530738_
                                                  (gx#syntax-e _g3056830735_)))
                                             (let ((_hd3057630742_
                                                    (##car _e3057530738_))
                                                   (_tl3057730745_
                                                    (##cdr _e3057530738_)))
                                               (if (gx#identifier?
                                                    _hd3057630742_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<sugar>::<sugar:2>[1]#_g46983_|
                                                        _hd3057630742_)
                                                       (if (gx#stx-pair?
                                                            _tl3057730745_)
                                                           (let ((_e3057830748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl3057730745_)))
                     (let ((_hd3057930752_ (##car _e3057830748_))
                           (_tl3058030755_ (##cdr _e3057830748_)))
                       (if (gx#stx-null? _tl3058030755_)
                           ((lambda () '#f))
                           (_g3056330731_ _g3056830735_))))
                   (_g3056330731_ _g3056830735_))
               (_g3056330731_ _g3056830735_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3056330731_
                                                    _g3056830735_))))
                                           (_g3056330731_ _g3056830735_)))))
                                (let ((_g3056130793_
                                       (lambda (_g3056830766_)
                                         (if (gx#stx-pair? _g3056830766_)
                                             (let ((_e3056930769_
                                                    (gx#syntax-e
                                                     _g3056830766_)))
                                               (let ((_hd3057030773_
                                                      (##car _e3056930769_))
                                                     (_tl3057130776_
                                                      (##cdr _e3056930769_)))
                                                 (if (gx#identifier?
                                                      _hd3057030773_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g46984_|
                                                          _hd3057030773_)
                                                         (if (gx#stx-pair?
                                                              _tl3057130776_)
                                                             (let ((_e3057230779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl3057130776_)))
                       (let ((_hd3057330783_ (##car _e3057230779_))
                             (_tl3057430786_ (##cdr _e3057230779_)))
                         (if (gx#stx-null? _tl3057430786_)
                             ((lambda () '#f))
                             (_g3056230762_ _g3056830766_))))
                     (_g3056230762_ _g3056830766_))
                 (_g3056230762_ _g3056830766_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3056230762_
                                                      _g3056830766_))))
                                             (_g3056230762_ _g3056830766_)))))
                                  (_g3056130793_ _e30559_))))))))))
                 (_generate29869_
                  (lambda (_e29931_ _d29933_)
                    (let ((_g2994230000_
                           (lambda (_g2994329996_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2994329996_))))
                      (let ((_g2994130017_
                             (lambda (_g2994330004_)
                               ((lambda (_L30007_)
                                  (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L30007_ '())))
                                _g2994330004_))))
                        (let ((_g2994030069_
                               (lambda (_g2994330021_)
                                 (if (gx#stx-box? _g2994330021_)
                                     (let ((_e2999330024_
                                            (unbox (gx#syntax-e
                                                    _g2994330021_))))
                                       ((lambda (_L30028_)
                                          (let ((_g3003830046_
                                                 (lambda (_g3003930042_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g3003930042_))))
                                            (let ((_g3003730065_
                                                   (lambda (_g3003930050_)
                                                     ((lambda (_L30053_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'box)
                        (cons _L30053_ '()))))
              _g3003930050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3003730065_
                                               (_generate29869_
                                                _L30028_
                                                _d29933_)))))
                                        _e2999330024_))
                                     (_g2994130017_ _g2994330021_)))))
                          (let ((_g2993930163_
                                 (lambda (_g2994330073_)
                                   (if (gx#stx-vector? _g2994330073_)
                                       (let ((_e2998230076_
                                              (vector->list
                                               (gx#syntax-e _g2994330073_))))
                                         (if (gx#stx-pair/null? _e2998230076_)
                                             (if (fx>= (gx#stx-length
                                                        _e2998230076_)
                                                       '0)
                                                 (let ((_g46985_
                                                        (gx#syntax-split-splice
                                                         _e2998230076_
                                                         '0)))
                                                   (begin
                                                     (let ((_g46986_
                                                            (values-count
                                                             _g46985_)))
                                                       (if (not (fx= _g46986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g46986_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2998330080_
                                                            (values-ref
                                                             _g46985_
                                                             0))
                                                           (_tl2998530083_
                                                            (values-ref
                                                             _g46985_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2998530083_)
                                                           (letrec ((_loop2998630086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2998430090_ _e2999030093_)
                               (if (gx#stx-pair? _hd2998430090_)
                                   (let ((_e2998730096_
                                          (gx#syntax-e _hd2998430090_)))
                                     (let ((_lp-hd2998830100_
                                            (##car _e2998730096_))
                                           (_lp-tl2998930103_
                                            (##cdr _e2998730096_)))
                                       (_loop2998630086_
                                        _lp-tl2998930103_
                                        (cons _lp-hd2998830100_
                                              _e2999030093_))))
                                   (let ((_e2999130106_
                                          (reverse _e2999030093_)))
                                     ((lambda (_L30110_)
                                        (let ((_g3012430132_
                                               (lambda (_g3012530128_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g3012530128_))))
                                          (let ((_g3012330151_
                                                 (lambda (_g3012530136_)
                                                   ((lambda (_L30139_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'list->vector)
                                                              (cons _L30139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3012530136_))))
                                            (_g3012330151_
                                             (_generate29869_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g3015430157_
                                                                _g3015530160_)
                                                         (cons _g3015430157_
                                                               _g3015530160_))
                                                       '()
                                                       _L30110_))
                                              _d29933_)))))
                                      _e2999130106_))))))
                     (_loop2998630086_ _target2998330080_ '()))
                   (_g2994030069_ _g2994330073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2994030069_ _g2994330073_))
                                             (_g2994030069_ _g2994330073_)))
                                       (_g2994030069_ _g2994330073_)))))
                            (let ((_g2993830257_
                                   (lambda (_g2994330167_)
                                     (if (gx#stx-pair? _g2994330167_)
                                         (let ((_e2997830170_
                                                (gx#syntax-e _g2994330167_)))
                                           (let ((_hd2997930174_
                                                  (##car _e2997830170_))
                                                 (_tl2998030177_
                                                  (##cdr _e2997830170_)))
                                             ((lambda (_L30180_ _L30182_)
                                                (let ((_g3019330208_
                                                       (lambda (_g3019430204_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g3019430204_))))
                                                  (let ((_g3019230253_
                                                         (lambda (_g3019430212_)
                                                           (if (gx#stx-pair?
                                                                _g3019430212_)
                                                               (let ((_e3019730215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g3019430212_)))
                         (let ((_hd3019830219_ (##car _e3019730215_))
                               (_tl3019930222_ (##cdr _e3019730215_)))
                           (if (gx#stx-pair? _tl3019930222_)
                               (let ((_e3020030225_
                                      (gx#syntax-e _tl3019930222_)))
                                 (let ((_hd3020130229_ (##car _e3020030225_))
                                       (_tl3020230232_ (##cdr _e3020030225_)))
                                   (if (gx#stx-null? _tl3020230232_)
                                       ((lambda (_L30235_ _L30237_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'cons)
                                                  (cons _L30237_
                                                        (cons _L30235_ '())))))
                                        _hd3020130229_
                                        _hd3019830219_)
                                       (_g3019330208_ _g3019430212_))))
                               (_g3019330208_ _g3019430212_))))
                       (_g3019330208_ _g3019430212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3019230253_
                                                     (list (_generate29869_
                                                            _L30182_
                                                            _d29933_)
                                                           (_generate29869_
                                                            _L30180_
                                                            _d29933_))))))
                                              _tl2998030177_
                                              _hd2997930174_)))
                                         (_g2993930163_ _g2994330167_)))))
                              (let ((_g2993730342_
                                     (lambda (_g2994330261_)
                                       (if (gx#stx-pair? _g2994330261_)
                                           (let ((_e2996730264_
                                                  (gx#syntax-e _g2994330261_)))
                                             (let ((_hd2996830268_
                                                    (##car _e2996730264_))
                                                   (_tl2996930271_
                                                    (##cdr _e2996730264_)))
                                               (if (gx#stx-pair?
                                                    _hd2996830268_)
                                                   (let ((_e2997030274_
                                                          (gx#syntax-e
                                                           _hd2996830268_)))
                                                     (let ((_hd2997130278_
                                                            (##car _e2997030274_))
                                                           (_tl2997230281_
                                                            (##cdr _e2997030274_)))
                                                       (if (gx#identifier?
                                                            _hd2997130278_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g46987_|
                                                                _hd2997130278_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2997230281_)
                           (let ((_e2997330284_ (gx#syntax-e _tl2997230281_)))
                             (let ((_hd2997430288_ (##car _e2997330284_))
                                   (_tl2997530291_ (##cdr _e2997330284_)))
                               (if (gx#stx-null? _tl2997530291_)
                                   ((lambda (_L30294_ _L30296_)
                                      (if (fxzero? _d29933_)
                                          (let ((_g3031130319_
                                                 (lambda (_g3031230315_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g3031230315_))))
                                            (let ((_g3031030338_
                                                   (lambda (_g3031230323_)
                                                     ((lambda (_L30326_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'foldr)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _L30326_ (cons _L30296_ '()))))))
              _g3031230323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3031030338_
                                               (_generate29869_
                                                _L30294_
                                                _d29933_))))
                                          (_g2993830257_ _g2994330261_)))
                                    _tl2996930271_
                                    _hd2997430288_)
                                   (_g2993830257_ _g2994330261_))))
                           (_g2993830257_ _g2994330261_))
                       (_g2993830257_ _g2994330261_))
                   (_g2993830257_ _g2994330261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2993830257_
                                                    _g2994330261_))))
                                           (_g2993830257_ _g2994330261_)))))
                                (let ((_g2993630413_
                                       (lambda (_g2994330346_)
                                         (if (gx#stx-pair? _g2994330346_)
                                             (let ((_e2995930349_
                                                    (gx#syntax-e
                                                     _g2994330346_)))
                                               (let ((_hd2996030353_
                                                      (##car _e2995930349_))
                                                     (_tl2996130356_
                                                      (##cdr _e2995930349_)))
                                                 (if (gx#identifier?
                                                      _hd2996030353_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g46988_|
                                                          _hd2996030353_)
                                                         (if (gx#stx-pair?
                                                              _tl2996130356_)
                                                             (let ((_e2996230359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2996130356_)))
                       (let ((_hd2996330363_ (##car _e2996230359_))
                             (_tl2996430366_ (##cdr _e2996230359_)))
                         (if (gx#stx-null? _tl2996430366_)
                             ((lambda (_L30369_)
                                (if (fxzero? _d29933_)
                                    (cons (gx#datum->syntax '#f 'foldr)
                                          (cons (gx#datum->syntax '#f 'cons)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons '() '()))
                                                      (cons _L30369_ '()))))
                                    (let ((_g3038230390_
                                           (lambda (_g3038330386_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g3038330386_))))
                                      (let ((_g3038130409_
                                             (lambda (_g3038330394_)
                                               ((lambda (_L30397_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'unquote-splicing)
                                    '()))
                        (cons _L30397_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3038330394_))))
                                        (_g3038130409_
                                         (_generate29869_
                                          _L30369_
                                          (fx1- _d29933_)))))))
                              _hd2996330363_)
                             (_g2993730342_ _g2994330346_))))
                     (_g2993730342_ _g2994330346_))
                 (_g2993730342_ _g2994330346_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2993730342_
                                                      _g2994330346_))))
                                             (_g2993730342_ _g2994330346_)))))
                                  (let ((_g2993530484_
                                         (lambda (_g2994330417_)
                                           (if (gx#stx-pair? _g2994330417_)
                                               (let ((_e2995230420_
                                                      (gx#syntax-e
                                                       _g2994330417_)))
                                                 (let ((_hd2995330424_
                                                        (##car _e2995230420_))
                                                       (_tl2995430427_
                                                        (##cdr _e2995230420_)))
                                                   (if (gx#identifier?
                                                        _hd2995330424_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:2>[1]#_g46989_|
                                                            _hd2995330424_)
                                                           (if (gx#stx-pair?
                                                                _tl2995430427_)
                                                               (let ((_e2995530430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2995430427_)))
                         (let ((_hd2995630434_ (##car _e2995530430_))
                               (_tl2995730437_ (##cdr _e2995530430_)))
                           (if (gx#stx-null? _tl2995730437_)
                               ((lambda (_L30440_)
                                  (if (fxzero? _d29933_)
                                      _L30440_
                                      (let ((_g3045330461_
                                             (lambda (_g3045430457_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g3045430457_))))
                                        (let ((_g3045230480_
                                               (lambda (_g3045430465_)
                                                 ((lambda (_L30468_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons (gx#datum->syntax '#f 'unquote) '()))
                          (cons _L30468_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g3045430465_))))
                                          (_g3045230480_
                                           (_generate29869_
                                            _L30440_
                                            (fx1- _d29933_)))))))
                                _hd2995630434_)
                               (_g2993630413_ _g2994330417_))))
                       (_g2993630413_ _g2994330417_))
                   (_g2993630413_ _g2994330417_))
               (_g2993630413_ _g2994330417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2993630413_
                                                _g2994330417_)))))
                                    (let ((_g2993430555_
                                           (lambda (_g2994330488_)
                                             (if (gx#stx-pair? _g2994330488_)
                                                 (let ((_e2994530491_
                                                        (gx#syntax-e
                                                         _g2994330488_)))
                                                   (let ((_hd2994630495_
                                                          (##car _e2994530491_))
                                                         (_tl2994730498_
                                                          (##cdr _e2994530491_)))
                                                     (if (gx#identifier?
                                                          _hd2994630495_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<sugar>::<sugar:2>[1]#_g46990_|
                                                              _hd2994630495_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2994730498_)
                         (let ((_e2994830501_ (gx#syntax-e _tl2994730498_)))
                           (let ((_hd2994930505_ (##car _e2994830501_))
                                 (_tl2995030508_ (##cdr _e2994830501_)))
                             (if (gx#stx-null? _tl2995030508_)
                                 ((lambda (_L30511_)
                                    (let ((_g3052430532_
                                           (lambda (_g3052530528_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g3052530528_))))
                                      (let ((_g3052330551_
                                             (lambda (_g3052530536_)
                                               ((lambda (_L30539_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'quasiquote) '()))
                        (cons _L30539_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3052530536_))))
                                        (_g3052330551_
                                         (_generate29869_
                                          _L30511_
                                          (fx1+ _d29933_))))))
                                  _hd2994930505_)
                                 (_g2993530484_ _g2994330488_))))
                         (_g2993530484_ _g2994330488_))
                     (_g2993530484_ _g2994330488_))
                 (_g2993530484_ _g2994330488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2993530484_
                                                  _g2994330488_)))))
                                      (_g2993430555_ _e29931_)))))))))))))
          (let ((_g2987129885_
                 (lambda (_g2987229881_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g2987229881_))))
            (let ((_g2987029927_
                   (lambda (_g2987229889_)
                     (if (gx#stx-pair? _g2987229889_)
                         (let ((_e2987429892_ (gx#syntax-e _g2987229889_)))
                           (let ((_hd2987529896_ (##car _e2987429892_))
                                 (_tl2987629899_ (##cdr _e2987429892_)))
                             (if (gx#stx-pair? _tl2987629899_)
                                 (let ((_e2987729902_
                                        (gx#syntax-e _tl2987629899_)))
                                   (let ((_hd2987829906_ (##car _e2987729902_))
                                         (_tl2987929909_
                                          (##cdr _e2987729902_)))
                                     (if (gx#stx-null? _tl2987929909_)
                                         ((lambda (_L29912_)
                                            (if (_simple-quote?29867_ _L29912_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L29912_ '()))
                                                (_generate29869_ _L29912_ '0)))
                                          _hd2987829906_)
                                         (_g2987129885_ _g2987229889_))))
                                 (_g2987129885_ _g2987229889_))))
                         (_g2987129885_ _g2987229889_)))))
              (_g2987029927_ _stx29864_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#delay|
      (lambda (_$stx30799_)
        (let ((_g3080430825_
               (lambda (_g3080530821_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3080530821_))))
          (let ((_g3080330866_
                 (lambda (_g3080530829_)
                   (if (gx#stx-pair? _g3080530829_)
                       (let ((_e3081430832_ (gx#syntax-e _g3080530829_)))
                         (let ((_hd3081530836_ (##car _e3081430832_))
                               (_tl3081630839_ (##cdr _e3081430832_)))
                           (if (gx#stx-pair? _tl3081630839_)
                               (let ((_e3081730842_
                                      (gx#syntax-e _tl3081630839_)))
                                 (let ((_hd3081830846_ (##car _e3081730842_))
                                       (_tl3081930849_ (##cdr _e3081730842_)))
                                   (if (gx#stx-null? _tl3081930849_)
                                       ((lambda (_L30852_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-promise)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda%)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L30852_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _hd3081830846_)
                                       (_g3080430825_ _g3080530829_))))
                               (_g3080430825_ _g3080530829_))))
                       (_g3080430825_ _g3080530829_)))))
            (let ((_g3080230906_
                   (lambda (_g3080530870_)
                     (if (gx#stx-pair? _g3080530870_)
                         (let ((_e3080730873_ (gx#syntax-e _g3080530870_)))
                           (let ((_hd3080830877_ (##car _e3080730873_))
                                 (_tl3080930880_ (##cdr _e3080730873_)))
                             (if (gx#stx-pair? _tl3080930880_)
                                 (let ((_e3081030883_
                                        (gx#syntax-e _tl3080930880_)))
                                   (let ((_hd3081130887_ (##car _e3081030883_))
                                         (_tl3081230890_
                                          (##cdr _e3081030883_)))
                                     (if (gx#stx-null? _tl3081230890_)
                                         ((lambda (_L30893_)
                                            (if (gx#stx-datum? _L30893_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L30893_ '()))
                                                (_g3080330866_ _g3080530870_)))
                                          _hd3081130887_)
                                         (_g3080330866_ _g3080530870_))))
                                 (_g3080330866_ _g3080530870_))))
                         (_g3080330866_ _g3080530870_)))))
              (_g3080230906_ _$stx30799_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#cut|
      (lambda (_stx30910_)
        (let ((_generate30913_
               (lambda (_rest31032_)
                 ((letrec ((_lp31035_
                            (lambda (_rest31038_ _hd31040_ _body31041_)
                              (let ((_g3104431056_
                                     (lambda (_g3104531052_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3104531052_))))
                                (let ((_g3104331067_
                                       (lambda (_g3104531060_)
                                         ((lambda ()
                                            (values (reverse _hd31040_)
                                                    (reverse _body31041_)
                                                    '#f))))))
                                  (let ((_g3104231153_
                                         (lambda (_g3104531071_)
                                           (if (gx#stx-pair? _g3104531071_)
                                               (let ((_e3104831074_
                                                      (gx#syntax-e
                                                       _g3104531071_)))
                                                 (let ((_hd3104931078_
                                                        (##car _e3104831074_))
                                                       (_tl3105031081_
                                                        (##cdr _e3104831074_)))
                                                   ((lambda (_L31084_ _L31086_)
                                                      (let ((_g3110331110_
                                                             (lambda (_g3110431106_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g3110431106_))))
                                                        (let ((_g3110231121_
                                                               (lambda (_g3110431114_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (_lp31035_
                             _L31084_
                             _hd31040_
                             (cons _L31086_ _body31041_)))))))
                  (let ((_g3110131135_
                         (lambda (_g3110431125_)
                           (if (gx#identifier? _g3110431125_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<sugar>::<sugar:2>[1]#_g46993_|
                                    _g3110431125_)
                                   ((lambda ()
                                      (if (gx#stx-null? _L31084_)
                                          (let ((_tail31132_ (gx#genident)))
                                            (values (foldl cons
                                                           _tail31132_
                                                           _hd31040_)
                                                    (foldl cons
                                                           (list _tail31132_)
                                                           _body31041_)
                                                    '#t))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx30910_
                                           _L31086_))))
                                   (_g3110231121_ _g3110431125_))
                               (_g3110231121_ _g3110431125_)))))
                    (let ((_g3110031149_
                           (lambda (_g3110431139_)
                             (if (gx#identifier? _g3110431139_)
                                 (if (gx#free-identifier=?
                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g46994_|
                                      _g3110431139_)
                                     ((lambda ()
                                        (let ((_arg31146_ (gx#genident)))
                                          (_lp31035_
                                           _L31084_
                                           (cons _arg31146_ _hd31040_)
                                           (cons _arg31146_ _body31041_)))))
                                     (_g3110131135_ _g3110431139_))
                                 (_g3110131135_ _g3110431139_)))))
                      (_g3110031149_ _L31086_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl3105031081_
                                                    _hd3104931078_)))
                                               (_g3104331067_
                                                _g3104531071_)))))
                                    (_g3104231153_ _rest31038_)))))))
                    _lp31035_)
                  _rest31032_
                  '()
                  '()))))
          (let ((_g3091630927_
                 (lambda (_g3091730923_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g3091730923_))))
            (let ((_g3091531028_
                   (lambda (_g3091730931_)
                     (if (gx#stx-pair? _g3091730931_)
                         (let ((_e3091930934_ (gx#syntax-e _g3091730931_)))
                           (let ((_hd3092030938_ (##car _e3091930934_))
                                 (_tl3092130941_ (##cdr _e3091930934_)))
                             ((lambda (_L30944_)
                                (if (if (gx#stx-list? _L30944_)
                                        (not (gx#stx-null? _L30944_))
                                        '#f)
                                    (let ((_g46991_
                                           (_generate30913_ _L30944_)))
                                      (begin
                                        (let ((_g46992_
                                               (values-count _g46991_)))
                                          (if (not (fx= _g46992_ 3))
                                              (error "Context expects 3 values"
                                                     _g46992_)))
                                        (let ((_hd30957_
                                               (values-ref _g46991_ 0))
                                              (_body30959_
                                               (values-ref _g46991_ 1))
                                              (_tail?30960_
                                               (values-ref _g46991_ 2)))
                                          (let ((_g3096230970_
                                                 (lambda (_g3096330966_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g3096330966_))))
                                            (let ((_g3096131024_
                                                   (lambda (_g3096330974_)
                                                     ((lambda (_L30977_)
                                                        (let ()
                                                          (let ((_g3099030998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3099130994_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3099130994_))))
                    (let ((_g3098931020_
                           (lambda (_g3099131002_)
                             ((lambda (_L31005_)
                                (let ()
                                  (let ()
                                    (if _tail?30960_
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L30977_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'apply)
                        _L31005_)
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L30977_
                                                    (cons _L31005_ '())))))))
                              _g3099131002_))))
                      (_g3098931020_ _body30959_)))))
              _g3096330974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3096131024_ _hd30957_))))))
                                    (_g3091630927_ _g3091730931_)))
                              _tl3092130941_)))
                         (_g3091630927_ _g3091730931_)))))
              (_g3091531028_ _stx30910_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<>|
      (lambda (_$stx31158_)
        (let ((_g3116131168_
               (lambda (_g3116231164_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3116231164_))))
          (_g3116131168_ _$stx31158_))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<...>|
      (lambda (_$stx31172_)
        (let ((_g3117531182_
               (lambda (_g3117631178_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3117631178_))))
          (_g3117531182_ _$stx31172_))))))
