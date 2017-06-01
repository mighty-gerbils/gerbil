(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29443_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29444_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29445_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29462_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29471_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29472_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29479_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29480_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29483_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29484_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29485_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29486_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29489_|
    (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29490_|
    (gx#core-quote-syntax '<>))
  (begin
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#lambda|
      (lambda (_stx4862_)
        (let ((_simple-lambda?4865_
               (lambda (_hd8015_) (gx#stx-andmap gx#identifier? _hd8015_))))
          (let ((_opt-lambda?4867_
                 (lambda (_hd7867_)
                   ((letrec ((_lp7870_
                              (lambda (_rest7873_ _opt?7875_)
                                (let ((_g78787890_
                                       (lambda (_g78797886_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g78797886_))))
                                  (let ((_g78777905_
                                         (lambda (_g78797894_)
                                           ((lambda ()
                                              (if _opt?7875_
                                                  (let ((_$e7901_
                                                         (gx#stx-null?
                                                          _rest7873_)))
                                                    (if _$e7901_
                                                        _$e7901_
                                                        (gx#identifier?
                                                         _rest7873_)))
                                                  '#f))))))
                                    (let ((_g78768011_
                                           (lambda (_g78797909_)
                                             (if (gx#stx-pair? _g78797909_)
                                                 (let ((_e78827912_
                                                        (gx#syntax-e
                                                         _g78797909_)))
                                                   (let ((_hd78837916_
                                                          (##car _e78827912_))
                                                         (_tl78847919_
                                                          (##cdr _e78827912_)))
                                                     ((lambda (_L7922_ _L7924_)
                                                        (let ((_g79407954_
                                                               (lambda (_g79417950_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g79417950_))))
                  (let ((_g79397965_
                         (lambda (_g79417958_)
                           ((lambda ()
                              (if (gx#identifier? _L7924_)
                                  (if (not _opt?7875_)
                                      (_lp7870_ _L7922_ '#f)
                                      '#f)
                                  '#f))))))
                    (let ((_g79388007_
                           (lambda (_g79417969_)
                             (if (gx#stx-pair? _g79417969_)
                                 (let ((_e79437972_ (gx#syntax-e _g79417969_)))
                                   (let ((_hd79447976_ (##car _e79437972_))
                                         (_tl79457979_ (##cdr _e79437972_)))
                                     (if (gx#stx-pair? _tl79457979_)
                                         (let ((_e79467982_
                                                (gx#syntax-e _tl79457979_)))
                                           (let ((_hd79477986_
                                                  (##car _e79467982_))
                                                 (_tl79487989_
                                                  (##cdr _e79467982_)))
                                             (if (gx#stx-null? _tl79487989_)
                                                 ((lambda (_L7992_)
                                                    (if (gx#identifier?
                                                         _L7992_)
                                                        (_lp7870_ _L7922_ '#t)
                                                        (_g79397965_
                                                         _g79417969_)))
                                                  _hd79447976_)
                                                 (_g79397965_ _g79417969_))))
                                         (_g79397965_ _g79417969_))))
                                 (_g79397965_ _g79417969_)))))
                      (_g79388007_ _L7924_)))))
              _tl78847919_
              _hd78837916_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g78777905_ _g78797909_)))))
                                      (_g78768011_ _rest7873_)))))))
                      _lp7870_)
                    _hd7867_
                    '#f))))
            (let ((_kw-lambda?4869_
                   (lambda (_hd7393_)
                     ((letrec ((_lp7396_
                                (lambda (_rest7399_ _opt?7401_ _key?7402_)
                                  (let ((_g74077436_
                                         (lambda (_g74087432_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g74087432_))))
                                    (let ((_g74067451_
                                           (lambda (_g74087440_)
                                             ((lambda ()
                                                (if _key?7402_
                                                    (let ((_$e7447_
                                                           (gx#stx-null?
                                                            _rest7399_)))
                                                      (if _$e7447_
                                                          _$e7447_
                                                          (gx#identifier?
                                                           _rest7399_)))
                                                    '#f))))))
                                      (let ((_g74057557_
                                             (lambda (_g74087455_)
                                               (if (gx#stx-pair? _g74087455_)
                                                   (let ((_e74287458_
                                                          (gx#syntax-e
                                                           _g74087455_)))
                                                     (let ((_hd74297462_
                                                            (##car _e74287458_))
                                                           (_tl74307465_
                                                            (##cdr _e74287458_)))
                                                       ((lambda (_L7468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7470_)
                  (let ((_g74867500_
                         (lambda (_g74877496_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g74877496_))))
                    (let ((_g74857511_
                           (lambda (_g74877504_)
                             ((lambda ()
                                (if (gx#identifier? _L7470_)
                                    (if (not _opt?7401_)
                                        (_lp7396_ _L7468_ '#f _key?7402_)
                                        '#f)
                                    '#f))))))
                      (let ((_g74847553_
                             (lambda (_g74877515_)
                               (if (gx#stx-pair? _g74877515_)
                                   (let ((_e74897518_
                                          (gx#syntax-e _g74877515_)))
                                     (let ((_hd74907522_ (##car _e74897518_))
                                           (_tl74917525_ (##cdr _e74897518_)))
                                       (if (gx#stx-pair? _tl74917525_)
                                           (let ((_e74927528_
                                                  (gx#syntax-e _tl74917525_)))
                                             (let ((_hd74937532_
                                                    (##car _e74927528_))
                                                   (_tl74947535_
                                                    (##cdr _e74927528_)))
                                               (if (gx#stx-null? _tl74947535_)
                                                   ((lambda (_L7538_)
                                                      (if (gx#identifier?
                                                           _L7538_)
                                                          (_lp7396_
                                                           _L7468_
                                                           '#t
                                                           _key?7402_)
                                                          '#f))
                                                    _hd74907522_)
                                                   (_g74857511_ _g74877515_))))
                                           (_g74857511_ _g74877515_))))
                                   (_g74857511_ _g74877515_)))))
                        (_g74847553_ _L7470_)))))
                _tl74307465_
                _hd74297462_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g74067451_
                                                    _g74087455_)))))
                                        (let ((_g74047599_
                                               (lambda (_g74087561_)
                                                 (if (gx#stx-pair? _g74087561_)
                                                     (let ((_e74207564_
                                                            (gx#syntax-e
                                                             _g74087561_)))
                                                       (let ((_hd74217568_
                                                              (##car _e74207564_))
                                                             (_tl74227571_
                                                              (##cdr _e74207564_)))
                                                         (if (gx#stx-datum?
                                                              _hd74217568_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd74217568_)
                                 '#!key)
                         (if (gx#stx-pair? _tl74227571_)
                             (let ((_e74237574_ (gx#syntax-e _tl74227571_)))
                               (let ((_hd74247578_ (##car _e74237574_))
                                     (_tl74257581_ (##cdr _e74237574_)))
                                 ((lambda (_L7584_ _L7586_)
                                    (if (gx#identifier? _L7586_)
                                        (_lp7396_ _L7584_ _opt?7401_ '#t)
                                        '#f))
                                  _tl74257581_
                                  _hd74247578_)))
                             (_g74057557_ _g74087561_))
                         (_g74057557_ _g74087561_))
                     (_g74057557_ _g74087561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g74057557_
                                                      _g74087561_)))))
                                          (let ((_g74037715_
                                                 (lambda (_g74087603_)
                                                   (if (gx#stx-pair?
                                                        _g74087603_)
                                                       (let ((_e74127606_
                                                              (gx#syntax-e
                                                               _g74087603_)))
                                                         (let ((_hd74137610_
                                                                (##car _e74127606_))
                                                               (_tl74147613_
                                                                (##cdr _e74127606_)))
                                                           (if (gx#stx-pair?
                                                                _tl74147613_)
                                                               (let ((_e74157616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl74147613_)))
                         (let ((_hd74167620_ (##car _e74157616_))
                               (_tl74177623_ (##cdr _e74157616_)))
                           ((lambda (_L7626_ _L7628_ _L7629_)
                              (if (gx#stx-keyword? _L7629_)
                                  (let ((_g76447658_
                                         (lambda (_g76457654_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g76457654_))))
                                    (let ((_g76437669_
                                           (lambda (_g76457662_)
                                             ((lambda ()
                                                (if (gx#identifier? _L7628_)
                                                    (_lp7396_
                                                     _L7626_
                                                     _opt?7401_
                                                     '#t)
                                                    '#f))))))
                                      (let ((_g76427711_
                                             (lambda (_g76457673_)
                                               (if (gx#stx-pair? _g76457673_)
                                                   (let ((_e76477676_
                                                          (gx#syntax-e
                                                           _g76457673_)))
                                                     (let ((_hd76487680_
                                                            (##car _e76477676_))
                                                           (_tl76497683_
                                                            (##cdr _e76477676_)))
                                                       (if (gx#stx-pair?
                                                            _tl76497683_)
                                                           (let ((_e76507686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl76497683_)))
                     (let ((_hd76517690_ (##car _e76507686_))
                           (_tl76527693_ (##cdr _e76507686_)))
                       (if (gx#stx-null? _tl76527693_)
                           ((lambda (_L7696_)
                              (if (gx#identifier? _L7696_)
                                  (_lp7396_ _L7626_ _opt?7401_ '#t)
                                  '#f))
                            _hd76487680_)
                           (_g76437669_ _g76457673_))))
                   (_g76437669_ _g76457673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76437669_
                                                    _g76457673_)))))
                                        (_g76427711_ _L7628_))))
                                  (_g74047599_ _g74087603_)))
                            _tl74177623_
                            _hd74167620_
                            _hd74137610_)))
                       (_g74047599_ _g74087603_))))
               (_g74047599_ _g74087603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g74037715_ _rest7399_)))))))))
                        _lp7396_)
                      _hd7393_
                      '#f
                      '#f))))
              (let ((_generate-bind4871_
                     (lambda (_e7129_)
                       (if (gx#underscore? _e7129_)
                           (gx#genident _e7129_)
                           _e7129_))))
                (let ((_check-duplicate-bindings4872_
                       (lambda (_hd6826_)
                         (let ((_cons-id6829_
                                (lambda (_id7125_ _ids7127_)
                                  (if (gx#underscore? _id7125_)
                                      _ids7127_
                                      (cons _id7125_ _ids7127_)))))
                           ((letrec ((_lp6832_
                                      (lambda (_rest6835_ _ids6837_)
                                        (let ((_g68406852_
                                               (lambda (_g68416848_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g68416848_))))
                                          (let ((_g68396863_
                                                 (lambda (_g68416856_)
                                                   ((lambda ()
                                                      (gx#check-duplicate-identifiers
                                                       (if (gx#stx-null?
                                                            _rest6835_)
                                                           _ids6837_
                                                           (_cons-id6829_
                                                            _rest6835_
                                                            _ids6837_))
                                                       _stx4862_))))))
                                            (let ((_g68387121_
                                                   (lambda (_g68416867_)
                                                     (if (gx#stx-pair?
                                                          _g68416867_)
                                                         (let ((_e68446870_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g68416867_)))
                   (let ((_hd68456874_ (##car _e68446870_))
                         (_tl68466877_ (##cdr _e68446870_)))
                     ((lambda (_L6880_ _L6882_)
                        (if (gx#identifier? _L6882_)
                            (_lp6832_
                             _L6880_
                             (_cons-id6829_ _L6882_ _ids6837_))
                            (if (gx#stx-pair? _L6882_)
                                (let ((_g68986912_
                                       (lambda (_g68996908_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g68996908_))))
                                  (let ((_g68976953_
                                         (lambda (_g68996916_)
                                           (if (gx#stx-pair? _g68996916_)
                                               (let ((_e69016919_
                                                      (gx#syntax-e
                                                       _g68996916_)))
                                                 (let ((_hd69026923_
                                                        (##car _e69016919_))
                                                       (_tl69036926_
                                                        (##cdr _e69016919_)))
                                                   (if (gx#stx-pair?
                                                        _tl69036926_)
                                                       (let ((_e69046929_
                                                              (gx#syntax-e
                                                               _tl69036926_)))
                                                         (let ((_hd69056933_
                                                                (##car _e69046929_))
                                                               (_tl69066936_
                                                                (##cdr _e69046929_)))
                                                           (if (gx#stx-null?
                                                                _tl69066936_)
                                                               ((lambda (_L6939_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_lp6832_ _L6880_ (_cons-id6829_ _L6939_ _ids6837_)))
                        _hd69026923_)
                       (_g68986912_ _g68996916_))))
               (_g68986912_ _g68996916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68986912_ _g68996916_)))))
                                    (_g68976953_ _L6882_)))
                                (if (gx#stx-keyword? _L6882_)
                                    (let ((_g69576969_
                                           (lambda (_g69586965_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69586965_))))
                                      (let ((_g69567071_
                                             (lambda (_g69586973_)
                                               (if (gx#stx-pair? _g69586973_)
                                                   (let ((_e69616976_
                                                          (gx#syntax-e
                                                           _g69586973_)))
                                                     (let ((_hd69626980_
                                                            (##car _e69616976_))
                                                           (_tl69636983_
                                                            (##cdr _e69616976_)))
                                                       ((lambda (_L6986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6988_)
                  (let ((_g70007014_
                         (lambda (_g70017010_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g70017010_))))
                    (let ((_g69997025_
                           (lambda (_g70017018_)
                             ((lambda ()
                                (_lp6832_
                                 _L6986_
                                 (_cons-id6829_ _L6988_ _ids6837_)))))))
                      (let ((_g69987067_
                             (lambda (_g70017029_)
                               (if (gx#stx-pair? _g70017029_)
                                   (let ((_e70037032_
                                          (gx#syntax-e _g70017029_)))
                                     (let ((_hd70047036_ (##car _e70037032_))
                                           (_tl70057039_ (##cdr _e70037032_)))
                                       (if (gx#stx-pair? _tl70057039_)
                                           (let ((_e70067042_
                                                  (gx#syntax-e _tl70057039_)))
                                             (let ((_hd70077046_
                                                    (##car _e70067042_))
                                                   (_tl70087049_
                                                    (##cdr _e70067042_)))
                                               (if (gx#stx-null? _tl70087049_)
                                                   ((lambda (_L7052_)
                                                      (_lp6832_
                                                       _L6986_
                                                       (_cons-id6829_
                                                        _L7052_
                                                        _ids6837_)))
                                                    _hd70047036_)
                                                   (_g69997025_ _g70017029_))))
                                           (_g69997025_ _g70017029_))))
                                   (_g69997025_ _g70017029_)))))
                        (_g69987067_ _L6988_)))))
                _tl69636983_
                _hd69626980_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g69576969_
                                                    _g69586973_)))))
                                        (_g69567071_ _L6880_)))
                                    (if (eq? (gx#stx-e _L6882_) '#!key)
                                        (let ((_g70757087_
                                               (lambda (_g70767083_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g70767083_))))
                                          (let ((_g70747117_
                                                 (lambda (_g70767091_)
                                                   (if (gx#stx-pair?
                                                        _g70767091_)
                                                       (let ((_e70797094_
                                                              (gx#syntax-e
                                                               _g70767091_)))
                                                         (let ((_hd70807098_
                                                                (##car _e70797094_))
                                                               (_tl70817101_
                                                                (##cdr _e70797094_)))
                                                           ((lambda (_L7104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L7106_)
                      (_lp6832_ _L7104_ (_cons-id6829_ _L7106_ _ids6837_)))
                    _tl70817101_
                    _hd70807098_)))
               (_g70757087_ _g70767091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g70747117_ _L6880_)))
                                        (error '"BUG: check-duplicate-bindings"
                                               _stx4862_
                                               _rest6835_))))))
                      _tl68466877_
                      _hd68456874_)))
                 (_g68396863_ _g68416867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g68387121_ _rest6835_)))))))
                              _lp6832_)
                            _hd6826_
                            '())))))
                  (let ((_generate-opt-primary4873_
                         (lambda (_pre6618_ _opt6620_ _tail6621_ _body6622_)
                           (let ((_g66246665_
                                  (lambda (_g66256661_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g66256661_))))
                             (let ((_g66236822_
                                    (lambda (_g66256669_)
                                      (if (gx#stx-pair? _g66256669_)
                                          (let ((_e66306672_
                                                 (gx#syntax-e _g66256669_)))
                                            (let ((_hd66316676_
                                                   (##car _e66306672_))
                                                  (_tl66326679_
                                                   (##cdr _e66306672_)))
                                              (if (gx#stx-pair/null?
                                                   _hd66316676_)
                                                  (if (fx>= (gx#stx-length
                                                             _hd66316676_)
                                                            '0)
                                                      (let ((_g29431_
                                                             (gx#syntax-split-splice
                                                              _hd66316676_
                                                              '0)))
                                                        (begin
                                                          (let ((_g29432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g29431_)))
                    (if (not (fx= _g29432_ 2))
                        (error "Context expects 2 values" _g29432_)))
                  (let ((_target66336682_ (values-ref _g29431_ 0))
                        (_tl66356685_ (values-ref _g29431_ 1)))
                    (if (gx#stx-null? _tl66356685_)
                        (letrec ((_loop66366688_
                                  (lambda (_hd66346692_ _pre66406695_)
                                    (if (gx#stx-pair? _hd66346692_)
                                        (let ((_e66376698_
                                               (gx#syntax-e _hd66346692_)))
                                          (let ((_lp-hd66386702_
                                                 (##car _e66376698_))
                                                (_lp-tl66396705_
                                                 (##cdr _e66376698_)))
                                            (_loop66366688_
                                             _lp-tl66396705_
                                             (cons _lp-hd66386702_
                                                   _pre66406695_))))
                                        (let ((_pre66416708_
                                               (reverse _pre66406695_)))
                                          (if (gx#stx-pair? _tl66326679_)
                                              (let ((_e66426712_
                                                     (gx#syntax-e
                                                      _tl66326679_)))
                                                (let ((_hd66436716_
                                                       (##car _e66426712_))
                                                      (_tl66446719_
                                                       (##cdr _e66426712_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd66436716_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd66436716_)
                        '0)
                  (let ((_g29433_ (gx#syntax-split-splice _hd66436716_ '0)))
                    (begin
                      (let ((_g29434_ (values-count _g29433_)))
                        (if (not (fx= _g29434_ 2))
                            (error "Context expects 2 values" _g29434_)))
                      (let ((_target66456722_ (values-ref _g29433_ 0))
                            (_tl66476725_ (values-ref _g29433_ 1)))
                        (if (gx#stx-null? _tl66476725_)
                            (letrec ((_loop66486728_
                                      (lambda (_hd66466732_ _opt66526735_)
                                        (if (gx#stx-pair? _hd66466732_)
                                            (let ((_e66496738_
                                                   (gx#syntax-e _hd66466732_)))
                                              (let ((_lp-hd66506742_
                                                     (##car _e66496738_))
                                                    (_lp-tl66516745_
                                                     (##cdr _e66496738_)))
                                                (_loop66486728_
                                                 _lp-tl66516745_
                                                 (cons _lp-hd66506742_
                                                       _opt66526735_))))
                                            (let ((_opt66536748_
                                                   (reverse _opt66526735_)))
                                              (if (gx#stx-pair? _tl66446719_)
                                                  (let ((_e66546752_
                                                         (gx#syntax-e
                                                          _tl66446719_)))
                                                    (let ((_hd66556756_
                                                           (##car _e66546752_))
                                                          (_tl66566759_
                                                           (##cdr _e66546752_)))
                                                      (if (gx#stx-pair?
                                                           _tl66566759_)
                                                          (let ((_e66576762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl66566759_)))
                    (let ((_hd66586766_ (##car _e66576762_))
                          (_tl66596769_ (##cdr _e66576762_)))
                      (if (gx#stx-null? _tl66596769_)
                          ((lambda (_L6772_ _L6774_ _L6775_ _L6776_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g68056810_
                                                             _g68066813_)
                                                      (cons _g68056810_
                                                            _g68066813_))
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g68076816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g68086819_)
                       (cons _g68076816_ _g68086819_))
                     _L6774_
                     _L6775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L6776_))
                                           _L6772_))))
                           _hd66586766_
                           _hd66556756_
                           _opt66536748_
                           _pre66416708_)
                          (_g66246665_ _g66256669_))))
                  (_g66246665_ _g66256669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66246665_
                                                   _g66256669_)))))))
                              (_loop66486728_ _target66456722_ '()))
                            (_g66246665_ _g66256669_)))))
                  (_g66246665_ _g66256669_))
              (_g66246665_ _g66256669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66246665_ _g66256669_)))))))
                          (_loop66366688_ _target66336682_ '()))
                        (_g66246665_ _g66256669_)))))
              (_g66246665_ _g66256669_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66246665_ _g66256669_))))
                                          (_g66246665_ _g66256669_)))))
                               (_g66236822_
                                (list _pre6618_
                                      (map car _opt6620_)
                                      _tail6621_
                                      _body6622_)))))))
                    (let ((_generate-opt-clause4876_
                           (lambda (_primary5867_ _pre5869_ _opt5870_)
                             ((letrec ((_recur5872_
                                        (lambda (_opt-rest5875_ _right5877_)
                                          (if (pair? _opt-rest5875_)
                                              (let ((_hd5879_
                                                     (car _opt-rest5875_)))
                                                (let ((_rest5882_
                                                       (cdr _opt-rest5875_)))
                                                  (let ((_g58855893_
                                                         (lambda (_g58865889_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g58865889_))))
                                                    (let ((_g58845982_
                                                           (lambda (_g58865897_)
                                                             ((lambda (_L5900_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g59165924_
                                 (lambda (_g59175920_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g59175920_))))
                            (let ((_g59155978_
                                   (lambda (_g59175928_)
                                     ((lambda (_L5931_)
                                        (let ()
                                          (let ((_g59445952_
                                                 (lambda (_g59455948_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g59455948_))))
                                            (let ((_g59435974_
                                                   (lambda (_g59455956_)
                                                     ((lambda (_L5959_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5900_ '())
                                            (cons _L5931_ '()))
                                      '())
                                (cons _L5959_ '()))))))
              _g59455956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g59435974_
                                               (_recur5872_
                                                _rest5882_
                                                (cons _L5900_
                                                      _right5877_)))))))
                                      _g59175928_))))
                              (_g59155978_ (cdr _hd5879_))))))
                      _g58865897_))))
              (_g58845982_ (car _hd5879_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g59866023_
                                                     (lambda (_g59876019_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g59876019_))))
                                                (let ((_g59856165_
                                                       (lambda (_g59876027_)
                                                         (if (gx#stx-pair?
                                                              _g59876027_)
                                                             (let ((_e59916030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g59876027_)))
                       (let ((_hd59926034_ (##car _e59916030_))
                             (_tl59936037_ (##cdr _e59916030_)))
                         (if (gx#stx-pair/null? _hd59926034_)
                             (if (fx>= (gx#stx-length _hd59926034_) '0)
                                 (let ((_g29427_
                                        (gx#syntax-split-splice
                                         _hd59926034_
                                         '0)))
                                   (begin
                                     (let ((_g29428_ (values-count _g29427_)))
                                       (if (not (fx= _g29428_ 2))
                                           (error "Context expects 2 values"
                                                  _g29428_)))
                                     (let ((_target59946040_
                                            (values-ref _g29427_ 0))
                                           (_tl59966043_
                                            (values-ref _g29427_ 1)))
                                       (if (gx#stx-null? _tl59966043_)
                                           (letrec ((_loop59976046_
                                                     (lambda (_hd59956050_
                                                              _pre60016053_)
                                                       (if (gx#stx-pair?
                                                            _hd59956050_)
                                                           (let ((_e59986056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd59956050_)))
                     (let ((_lp-hd59996060_ (##car _e59986056_))
                           (_lp-tl60006063_ (##cdr _e59986056_)))
                       (_loop59976046_
                        _lp-tl60006063_
                        (cons _lp-hd59996060_ _pre60016053_))))
                   (let ((_pre60026066_ (reverse _pre60016053_)))
                     (if (gx#stx-pair? _tl59936037_)
                         (let ((_e60036070_ (gx#syntax-e _tl59936037_)))
                           (let ((_hd60046074_ (##car _e60036070_))
                                 (_tl60056077_ (##cdr _e60036070_)))
                             (if (gx#stx-pair/null? _hd60046074_)
                                 (if (fx>= (gx#stx-length _hd60046074_) '0)
                                     (let ((_g29429_
                                            (gx#syntax-split-splice
                                             _hd60046074_
                                             '0)))
                                       (begin
                                         (let ((_g29430_
                                                (values-count _g29429_)))
                                           (if (not (fx= _g29430_ 2))
                                               (error "Context expects 2 values"
                                                      _g29430_)))
                                         (let ((_target60066080_
                                                (values-ref _g29429_ 0))
                                               (_tl60086083_
                                                (values-ref _g29429_ 1)))
                                           (if (gx#stx-null? _tl60086083_)
                                               (letrec ((_loop60096086_
                                                         (lambda (_hd60076090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opt60136093_)
                   (if (gx#stx-pair? _hd60076090_)
                       (let ((_e60106096_ (gx#syntax-e _hd60076090_)))
                         (let ((_lp-hd60116100_ (##car _e60106096_))
                               (_lp-tl60126103_ (##cdr _e60106096_)))
                           (_loop60096086_
                            _lp-tl60126103_
                            (cons _lp-hd60116100_ _opt60136093_))))
                       (let ((_opt60146106_ (reverse _opt60136093_)))
                         (if (gx#stx-pair? _tl60056077_)
                             (let ((_e60156110_ (gx#syntax-e _tl60056077_)))
                               (let ((_hd60166114_ (##car _e60156110_))
                                     (_tl60176117_ (##cdr _e60156110_)))
                                 (if (gx#stx-null? _tl60176117_)
                                     ((lambda (_L6120_ _L6122_ _L6123_)
                                        (let ()
                                          (gx#stx-wrap-source
                                           (cons _L6120_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g61486153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g61496156_)
                    (cons _g61486153_ _g61496156_))
                  (begin
                    '#!void
                    (foldr (lambda (_g61506159_ _g61516162_)
                             (cons _g61506159_ _g61516162_))
                           '()
                           _L6122_))
                  _L6123_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _stx4862_))))
                                      _hd60166114_
                                      _opt60146106_
                                      _pre60026066_)
                                     (_g59866023_ _g59876027_))))
                             (_g59866023_ _g59876027_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop60096086_
                                                  _target60066080_
                                                  '()))
                                               (_g59866023_ _g59876027_)))))
                                     (_g59866023_ _g59876027_))
                                 (_g59866023_ _g59876027_))))
                         (_g59866023_ _g59876027_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop59976046_
                                              _target59946040_
                                              '()))
                                           (_g59866023_ _g59876027_)))))
                                 (_g59866023_ _g59876027_))
                             (_g59866023_ _g59876027_))))
                     (_g59866023_ _g59876027_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g59856165_
                                                   (list _pre5869_
                                                         (reverse _right5877_)
                                                         _primary5867_))))))))
                                _recur5872_)
                              _opt5870_
                              '()))))
                      (let ((_generate-kw-primary4877_
                             (lambda (_kwvar5514_
                                      _kwargs5516_
                                      _args5517_
                                      _body5518_)
                               (let ((_absent5520_ (gx#genident 'absent)))
                                 (letrec ((_make-body5522_
                                           (lambda (_kwargs5686_ _body5688_)
                                             (if (pair? _kwargs5686_)
                                                 (let ((_next5690_
                                                        (car _kwargs5686_)))
                                                   (let ((_rest5693_
                                                          (cdr _kwargs5686_)))
                                                     (let ((_key5696_
                                                            (car _next5690_)))
                                                       (let ((_var5699_
                                                              (cadr _next5690_)))
                                                         (let ((_default5702_
                                                                (caddr _next5690_)))
                                                           (let ()
                                                             (let ((_g57075742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g57085738_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g57085738_))))
                       (let ((_g57065863_
                              (lambda (_g57085746_)
                                (if (gx#stx-pair? _g57085746_)
                                    (let ((_e57165749_
                                           (gx#syntax-e _g57085746_)))
                                      (let ((_hd57175753_ (##car _e57165749_))
                                            (_tl57185756_ (##cdr _e57165749_)))
                                        (if (gx#stx-pair? _tl57185756_)
                                            (let ((_e57195759_
                                                   (gx#syntax-e _tl57185756_)))
                                              (let ((_hd57205763_
                                                     (##car _e57195759_))
                                                    (_tl57215766_
                                                     (##cdr _e57195759_)))
                                                (if (gx#stx-pair? _tl57215766_)
                                                    (let ((_e57225769_
                                                           (gx#syntax-e
                                                            _tl57215766_)))
                                                      (let ((_hd57235773_
                                                             (##car _e57225769_))
                                                            (_tl57245776_
                                                             (##cdr _e57225769_)))
                                                        (if (gx#stx-pair?
                                                             _tl57245776_)
                                                            (let ((_e57255779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl57245776_)))
                      (let ((_hd57265783_ (##car _e57255779_))
                            (_tl57275786_ (##cdr _e57255779_)))
                        (if (gx#stx-pair? _tl57275786_)
                            (let ((_e57285789_ (gx#syntax-e _tl57275786_)))
                              (let ((_hd57295793_ (##car _e57285789_))
                                    (_tl57305796_ (##cdr _e57285789_)))
                                (if (gx#stx-pair? _tl57305796_)
                                    (let ((_e57315799_
                                           (gx#syntax-e _tl57305796_)))
                                      (let ((_hd57325803_ (##car _e57315799_))
                                            (_tl57335806_ (##cdr _e57315799_)))
                                        (if (gx#stx-pair? _tl57335806_)
                                            (let ((_e57345809_
                                                   (gx#syntax-e _tl57335806_)))
                                              (let ((_hd57355813_
                                                     (##car _e57345809_))
                                                    (_tl57365816_
                                                     (##cdr _e57345809_)))
                                                (if (gx#stx-null? _tl57365816_)
                                                    ((lambda (_L5819_
                                                              _L5821_
                                                              _L5822_
                                                              _L5823_
                                                              _L5824_
                                                              _L5825_
                                                              _L5826_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _L5823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'hash-ref)
                                                     (cons _L5826_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L5825_ '()))
                         (cons _L5819_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'let-values)
                                         (cons (cons (cons (cons _L5824_ '())
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'if)
                               (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons _L5823_ (cons _L5819_ '())))
                                     (cons _L5822_ (cons _L5823_ '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L5821_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd57355813_
                                                     _hd57325803_
                                                     _hd57295793_
                                                     _hd57265783_
                                                     _hd57235773_
                                                     _hd57205763_
                                                     _hd57175753_)
                                                    (_g57075742_
                                                     _g57085746_))))
                                            (_g57075742_ _g57085746_))))
                                    (_g57075742_ _g57085746_))))
                            (_g57075742_ _g57085746_))))
                    (_g57075742_ _g57085746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g57075742_
                                                     _g57085746_))))
                                            (_g57075742_ _g57085746_))))
                                    (_g57075742_ _g57085746_)))))
                         (_g57065863_
                          (list _kwvar5514_
                                _key5696_
                                _var5699_
                                (gx#genident _var5699_)
                                _default5702_
                                (_make-body5522_ _rest5693_ _body5688_)
                                _absent5520_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons 'begin _body5688_)))))
                                   (let ((_g55245532_
                                          (lambda (_g55255528_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g55255528_))))
                                     (let ((_g55235682_
                                            (lambda (_g55255536_)
                                              ((lambda (_L5539_)
                                                 (let ()
                                                   (let ((_g55525560_
                                                          (lambda (_g55535556_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g55535556_))))
                                                     (let ((_g55515678_
                                                            (lambda (_g55535564_)
                                                              ((lambda (_L5567_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g55805588_
                                  (lambda (_g55815584_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g55815584_))))
                             (let ((_g55795674_
                                    (lambda (_g55815592_)
                                      ((lambda (_L5595_)
                                         (let ()
                                           (let ((_g56085616_
                                                  (lambda (_g56095612_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g56095612_))))
                                             (let ((_g56075670_
                                                    (lambda (_g56095620_)
                                                      ((lambda (_L5623_)
                                                         (let ()
                                                           (let ((_g56365644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g56375640_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g56375640_))))
                     (let ((_g56355666_
                            (lambda (_g56375648_)
                              ((lambda (_L5651_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons (cons _L5651_ '())
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-vector)
                                 (cons '0 '()))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L5623_ '()))))))
                               _g56375648_))))
                       (_g56355666_ _absent5520_)))))
               _g56095620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g56075670_
                                                (gx#stx-wrap-source
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons _L5539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5567_)
                     (cons _L5595_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source
                                                  _stx4862_)))))))
                                       _g55815592_))))
                               (_g55795674_
                                (_make-body5522_ _kwargs5516_ _body5518_))))))
                       _g55535564_))))
               (_g55515678_ _args5517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g55255536_))))
                                       (_g55235682_ _kwvar5514_))))))))
                        (let ((_generate-kw-table4879_
                               (lambda (_kws5401_)
                                 ((letrec ((_rehash5404_
                                            (lambda (_pht5407_)
                                              ((letrec ((_lp5410_
                                                         (lambda (_rest5413_)
                                                           (if (pair? _rest5413_)
                                                               (let ((_key5416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _rest5413_)))
                         (let ((_rest5419_ (cdr _rest5413_)))
                           (let ((_pos5422_
                                  (fxmodulo
                                   (keyword-hash _key5416_)
                                   (vector-length _pht5407_))))
                             (let ()
                               (if (vector-ref _pht5407_ _pos5422_)
                                   (if (fx< (vector-length _pht5407_) '8192)
                                       (_rehash5404_
                                        (make-vector
                                         (fx1+ (* '2
                                                  (vector-length _pht5407_)))
                                         '#f))
                                       (error '"Unresolvable keyword collision"
                                              _kws5401_))
                                   (begin
                                     (vector-set!
                                      _pht5407_
                                      _pos5422_
                                      _key5416_)
                                     (_lp5410_ _rest5419_)))))))
                       _pht5407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _lp5410_)
                                               _kws5401_))))
                                    _rehash5404_)
                                  (make-vector (length _kws5401_) '#f)))))
                          (let ((_opt-lambda-split4868_
                                 (lambda (_hd7719_)
                                   ((letrec ((_lp7722_
                                              (lambda (_rest7725_
                                                       _pre7727_
                                                       _opt7728_)
                                                (let ((_g77317743_
                                                       (lambda (_g77327739_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g77327739_))))
                                                  (let ((_g77307754_
                                                         (lambda (_g77327747_)
                                                           ((lambda ()
                                                              (values (reverse _pre7727_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _opt7728_)
                              (if (gx#identifier? _rest7725_)
                                  (_generate-bind4871_ _rest7725_)
                                  _rest7725_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g77297863_
                                                           (lambda (_g77327758_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g77327758_)
                         (let ((_e77357761_ (gx#syntax-e _g77327758_)))
                           (let ((_hd77367765_ (##car _e77357761_))
                                 (_tl77377768_ (##cdr _e77357761_)))
                             ((lambda (_L7771_ _L7773_)
                                (let ((_g77897804_
                                       (lambda (_g77907800_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g77907800_))))
                                  (let ((_g77887815_
                                         (lambda (_g77907808_)
                                           ((lambda ()
                                              (_lp7722_
                                               _L7771_
                                               (cons (_generate-bind4871_
                                                      _L7773_)
                                                     _pre7727_)
                                               _opt7728_))))))
                                    (let ((_g77877859_
                                           (lambda (_g77907819_)
                                             (if (gx#stx-pair? _g77907819_)
                                                 (let ((_e77937822_
                                                        (gx#syntax-e
                                                         _g77907819_)))
                                                   (let ((_hd77947826_
                                                          (##car _e77937822_))
                                                         (_tl77957829_
                                                          (##cdr _e77937822_)))
                                                     (if (gx#stx-pair?
                                                          _tl77957829_)
                                                         (let ((_e77967832_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77957829_)))
                   (let ((_hd77977836_ (##car _e77967832_))
                         (_tl77987839_ (##cdr _e77967832_)))
                     (if (gx#stx-null? _tl77987839_)
                         ((lambda (_L7842_ _L7844_)
                            (_lp7722_
                             _L7771_
                             _pre7727_
                             (cons (cons (_generate-bind4871_ _L7844_) _L7842_)
                                   _opt7728_)))
                          _hd77977836_
                          _hd77947826_)
                         (_g77887815_ _g77907819_))))
                 (_g77887815_ _g77907819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g77887815_ _g77907819_)))))
                                      (_g77877859_ _L7773_)))))
                              _tl77377768_
                              _hd77367765_)))
                         (_g77307754_ _g77327758_)))))
              (_g77297863_ _rest7725_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp7722_)
                                    _hd7719_
                                    '()
                                    '()))))
                            (let ((_kw-lambda-split4870_
                                   (lambda (_hd7132_)
                                     ((letrec ((_lp7135_
                                                (lambda (_rest7138_
                                                         _kwvar7140_
                                                         _kwargs7141_
                                                         _args7142_)
                                                  (let ((_g71477176_
                                                         (lambda (_g71487172_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g71487172_))))
                                                    (let ((_g71467187_
                                                           (lambda (_g71487180_)
                                                             ((lambda ()
                                                                (values _kwvar7140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse _kwargs7141_)
                                (foldl cons _rest7138_ _args7142_)))))))
              (let ((_g71457221_
                     (lambda (_g71487191_)
                       (if (gx#stx-pair? _g71487191_)
                           (let ((_e71687194_ (gx#syntax-e _g71487191_)))
                             (let ((_hd71697198_ (##car _e71687194_))
                                   (_tl71707201_ (##cdr _e71687194_)))
                               ((lambda (_L7204_ _L7206_)
                                  (_lp7135_
                                   _L7204_
                                   _kwvar7140_
                                   _kwargs7141_
                                   (cons _L7206_ _args7142_)))
                                _tl71707201_
                                _hd71697198_)))
                           (_g71467187_ _g71487191_)))))
                (let ((_g71447263_
                       (lambda (_g71487225_)
                         (if (gx#stx-pair? _g71487225_)
                             (let ((_e71607228_ (gx#syntax-e _g71487225_)))
                               (let ((_hd71617232_ (##car _e71607228_))
                                     (_tl71627235_ (##cdr _e71607228_)))
                                 (if (gx#stx-datum? _hd71617232_)
                                     (if (equal? (gx#stx-e _hd71617232_)
                                                 '#!key)
                                         (if (gx#stx-pair? _tl71627235_)
                                             (let ((_e71637238_
                                                    (gx#syntax-e
                                                     _tl71627235_)))
                                               (let ((_hd71647242_
                                                      (##car _e71637238_))
                                                     (_tl71657245_
                                                      (##cdr _e71637238_)))
                                                 ((lambda (_L7248_ _L7250_)
                                                    (if _kwvar7140_
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; duplicate #!key argument"
                                                         _stx4862_
                                                         _hd7132_
                                                         _L7250_)
                                                        (_lp7135_
                                                         _L7248_
                                                         (_generate-bind4871_
                                                          _L7250_)
                                                         _kwargs7141_
                                                         _args7142_)))
                                                  _tl71657245_
                                                  _hd71647242_)))
                                             (_g71457221_ _g71487225_))
                                         (_g71457221_ _g71487225_))
                                     (_g71457221_ _g71487225_))))
                             (_g71457221_ _g71487225_)))))
                  (let ((_g71437389_
                         (lambda (_g71487267_)
                           (if (gx#stx-pair? _g71487267_)
                               (let ((_e71527270_ (gx#syntax-e _g71487267_)))
                                 (let ((_hd71537274_ (##car _e71527270_))
                                       (_tl71547277_ (##cdr _e71527270_)))
                                   (if (gx#stx-pair? _tl71547277_)
                                       (let ((_e71557280_
                                              (gx#syntax-e _tl71547277_)))
                                         (let ((_hd71567284_
                                                (##car _e71557280_))
                                               (_tl71577287_
                                                (##cdr _e71557280_)))
                                           ((lambda (_L7290_ _L7292_ _L7293_)
                                              (if (gx#stx-keyword? _L7293_)
                                                  (let ((_key7307_
                                                         (gx#stx-e _L7293_)))
                                                    (if (find (lambda (_kwarg7310_)
                                                                (eq? _key7307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _kwarg7310_)))
                      _kwargs7141_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; duplicate keyword argument"
                 _stx4862_
                 _hd7132_
                 _key7307_)
                (let ((_g73147329_
                       (lambda (_g73157325_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g73157325_))))
                  (let ((_g73137340_
                         (lambda (_g73157333_)
                           ((lambda ()
                              (_lp7135_
                               _L7290_
                               _kwvar7140_
                               (cons (list _key7307_
                                           (_generate-bind4871_ _L7292_)
                                           (cons (gx#datum->syntax '#f 'error)
                                                 (cons '"Missing required keyword argument"
                                                       (cons _L7293_ '()))))
                                     _kwargs7141_)
                               _args7142_))))))
                    (let ((_g73127385_
                           (lambda (_g73157344_)
                             (if (gx#stx-pair? _g73157344_)
                                 (let ((_e73187347_ (gx#syntax-e _g73157344_)))
                                   (let ((_hd73197351_ (##car _e73187347_))
                                         (_tl73207354_ (##cdr _e73187347_)))
                                     (if (gx#stx-pair? _tl73207354_)
                                         (let ((_e73217357_
                                                (gx#syntax-e _tl73207354_)))
                                           (let ((_hd73227361_
                                                  (##car _e73217357_))
                                                 (_tl73237364_
                                                  (##cdr _e73217357_)))
                                             (if (gx#stx-null? _tl73237364_)
                                                 ((lambda (_L7367_ _L7369_)
                                                    (_lp7135_
                                                     _L7290_
                                                     _kwvar7140_
                                                     (cons (list _key7307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_generate-bind4871_ _L7369_)
                         _L7367_)
                   _kwargs7141_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _args7142_))
                                                  _hd73227361_
                                                  _hd73197351_)
                                                 (_g73137340_ _g73157344_))))
                                         (_g73137340_ _g73157344_))))
                                 (_g73137340_ _g73157344_)))))
                      (_g73127385_ _L7292_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g71447263_ _g71487267_)))
                                            _tl71577287_
                                            _hd71567284_
                                            _hd71537274_)))
                                       (_g71447263_ _g71487267_))))
                               (_g71447263_ _g71487267_)))))
                    (_g71437389_ _rest7138_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp7135_)
                                      _hd7132_
                                      '#f
                                      '()
                                      '()))))
                              (let ((_generate-opt-dispatch*4875_
                                     (lambda (_primary6169_
                                              _pre6171_
                                              _opt6172_
                                              _tail6173_)
                                       ((letrec ((_recur6175_
                                                  (lambda (_opt-rest6178_
                                                           _right6180_)
                                                    (if (pair? _opt-rest6178_)
                                                        (let ((_hd6182_
                                                               (caar _opt-rest6178_)))
                                                          (let ((_rest6185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cdr _opt-rest6178_)))
                    (let ((_right*6188_ (cons _hd6182_ _right6180_)))
                      (let ((_g61916208_
                             (lambda (_g61926204_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g61926204_))))
                        (let ((_g61906391_
                               (lambda (_g61926212_)
                                 (if (gx#stx-pair/null? _g61926212_)
                                     (if (fx>= (gx#stx-length _g61926212_) '0)
                                         (let ((_g29419_
                                                (gx#syntax-split-splice
                                                 _g61926212_
                                                 '0)))
                                           (begin
                                             (let ((_g29420_
                                                    (values-count _g29419_)))
                                               (if (not (fx= _g29420_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29420_)))
                                             (let ((_target61946215_
                                                    (values-ref _g29419_ 0))
                                                   (_tl61966218_
                                                    (values-ref _g29419_ 1)))
                                               (if (gx#stx-null? _tl61966218_)
                                                   (letrec ((_loop61976221_
                                                             (lambda (_hd61956225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pre-bind62016228_)
                       (if (gx#stx-pair? _hd61956225_)
                           (let ((_e61986231_ (gx#syntax-e _hd61956225_)))
                             (let ((_lp-hd61996235_ (##car _e61986231_))
                                   (_lp-tl62006238_ (##cdr _e61986231_)))
                               (_loop61976221_
                                _lp-tl62006238_
                                (cons _lp-hd61996235_ _pre-bind62016228_))))
                           (let ((_pre-bind62026241_
                                  (reverse _pre-bind62016228_)))
                             ((lambda (_L6245_)
                                (let ()
                                  (let ((_g62666283_
                                         (lambda (_g62676279_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g62676279_))))
                                    (let ((_g62656387_
                                           (lambda (_g62676287_)
                                             (if (gx#stx-pair/null?
                                                  _g62676287_)
                                                 (if (fx>= (gx#stx-length
                                                            _g62676287_)
                                                           '0)
                                                     (let ((_g29421_
                                                            (gx#syntax-split-splice
                                                             _g62676287_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29422_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29421_)))
                   (if (not (fx= _g29422_ 2))
                       (error "Context expects 2 values" _g29422_)))
                 (let ((_target62696290_ (values-ref _g29421_ 0))
                       (_tl62716293_ (values-ref _g29421_ 1)))
                   (if (gx#stx-null? _tl62716293_)
                       (letrec ((_loop62726296_
                                 (lambda (_hd62706300_ _opt-bind62766303_)
                                   (if (gx#stx-pair? _hd62706300_)
                                       (let ((_e62736306_
                                              (gx#syntax-e _hd62706300_)))
                                         (let ((_lp-hd62746310_
                                                (##car _e62736306_))
                                               (_lp-tl62756313_
                                                (##cdr _e62736306_)))
                                           (_loop62726296_
                                            _lp-tl62756313_
                                            (cons _lp-hd62746310_
                                                  _opt-bind62766303_))))
                                       (let ((_opt-bind62776316_
                                              (reverse _opt-bind62766303_)))
                                         ((lambda (_L6320_)
                                            (let ()
                                              (let ((_g63376345_
                                                     (lambda (_g63386341_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g63386341_))))
                                                (let ((_g63366383_
                                                       (lambda (_g63386349_)
                                                         ((lambda (_L6352_)
                                                            (let ()
                                                              (let ()
                                                                (cons (list (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr (lambda (_g63666371_ _g63676374_)
                                               (cons _g63666371_ _g63676374_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g63686377_
                                                               _g63696380_)
                                                        (cons _g63686377_
                                                              _g63696380_))
                                                      (cons _L6352_ '())
                                                      _L6320_))
                                             _L6245_))
                                    (_generate-opt-clause4876_
                                     _primary6169_
                                     (foldr cons
                                            (reverse _right*6188_)
                                            _pre6171_)
                                     _rest6185_))
                              (_recur6175_ _rest6185_ _right*6188_)))))
                  _g63386349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63366383_ _hd6182_)))))
                                          _opt-bind62776316_))))))
                         (_loop62726296_ _target62696290_ '()))
                       (_g62666283_ _g62676287_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g62666283_ _g62676287_))
                                                 (_g62666283_ _g62676287_)))))
                                      (_g62656387_ (reverse _right6180_))))))
                              _pre-bind62026241_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop61976221_
                                                      _target61946215_
                                                      '()))
                                                   (_g61916208_
                                                    _g61926212_)))))
                                         (_g61916208_ _g61926212_))
                                     (_g61916208_ _g61926212_)))))
                          (_g61906391_ _pre6171_))))))
                (if (gx#stx-null? _tail6173_)
                    '()
                    (let ((_g63956436_
                           (lambda (_g63966432_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g63966432_))))
                      (let ((_g63946608_
                             (lambda (_g63966440_)
                               (if (gx#stx-pair? _g63966440_)
                                   (let ((_e64016443_
                                          (gx#syntax-e _g63966440_)))
                                     (let ((_hd64026447_ (##car _e64016443_))
                                           (_tl64036450_ (##cdr _e64016443_)))
                                       (if (gx#stx-pair/null? _hd64026447_)
                                           (if (fx>= (gx#stx-length
                                                      _hd64026447_)
                                                     '0)
                                               (let ((_g29423_
                                                      (gx#syntax-split-splice
                                                       _hd64026447_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29424_
                                                          (values-count
                                                           _g29423_)))
                                                     (if (not (fx= _g29424_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29424_)))
                                                   (let ((_target64046453_
                                                          (values-ref
                                                           _g29423_
                                                           0))
                                                         (_tl64066456_
                                                          (values-ref
                                                           _g29423_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl64066456_)
                                                         (letrec ((_loop64076459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd64056463_ _pre64116466_)
                             (if (gx#stx-pair? _hd64056463_)
                                 (let ((_e64086469_
                                        (gx#syntax-e _hd64056463_)))
                                   (let ((_lp-hd64096473_ (##car _e64086469_))
                                         (_lp-tl64106476_ (##cdr _e64086469_)))
                                     (_loop64076459_
                                      _lp-tl64106476_
                                      (cons _lp-hd64096473_ _pre64116466_))))
                                 (let ((_pre64126479_ (reverse _pre64116466_)))
                                   (if (gx#stx-pair? _tl64036450_)
                                       (let ((_e64136483_
                                              (gx#syntax-e _tl64036450_)))
                                         (let ((_hd64146487_
                                                (##car _e64136483_))
                                               (_tl64156490_
                                                (##cdr _e64136483_)))
                                           (if (gx#stx-pair/null? _hd64146487_)
                                               (if (fx>= (gx#stx-length
                                                          _hd64146487_)
                                                         '0)
                                                   (let ((_g29425_
                                                          (gx#syntax-split-splice
                                                           _hd64146487_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29426_
                                                              (values-count
                                                               _g29425_)))
                                                         (if (not (fx= _g29426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29426_)))
               (let ((_target64166493_ (values-ref _g29425_ 0))
                     (_tl64186496_ (values-ref _g29425_ 1)))
                 (if (gx#stx-null? _tl64186496_)
                     (letrec ((_loop64196499_
                               (lambda (_hd64176503_ _opt64236506_)
                                 (if (gx#stx-pair? _hd64176503_)
                                     (let ((_e64206509_
                                            (gx#syntax-e _hd64176503_)))
                                       (let ((_lp-hd64216513_
                                              (##car _e64206509_))
                                             (_lp-tl64226516_
                                              (##cdr _e64206509_)))
                                         (_loop64196499_
                                          _lp-tl64226516_
                                          (cons _lp-hd64216513_
                                                _opt64236506_))))
                                     (let ((_opt64246519_
                                            (reverse _opt64236506_)))
                                       (if (gx#stx-pair? _tl64156490_)
                                           (let ((_e64256523_
                                                  (gx#syntax-e _tl64156490_)))
                                             (let ((_hd64266527_
                                                    (##car _e64256523_))
                                                   (_tl64276530_
                                                    (##cdr _e64256523_)))
                                               (if (gx#stx-pair? _tl64276530_)
                                                   (let ((_e64286533_
                                                          (gx#syntax-e
                                                           _tl64276530_)))
                                                     (let ((_hd64296537_
                                                            (##car _e64286533_))
                                                           (_tl64306540_
                                                            (##cdr _e64286533_)))
                                                       (if (gx#stx-null?
                                                            _tl64306540_)
                                                           ((lambda (_L6543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6545_
                             _L6546_
                             _L6547_)
                      (let ()
                        (list (list (begin
                                      '#!void
                                      (foldr (lambda (_g65756580_ _g65766583_)
                                               (cons _g65756580_ _g65766583_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g65776586_
                                                               _g65786589_)
                                                        (cons _g65776586_
                                                              _g65786589_))
                                                      _L6545_
                                                      _L6546_))
                                             _L6547_))
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'apply)
                                           (cons _L6543_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g65916596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g65926599_)
                    (cons _g65916596_ _g65926599_))
                  (begin
                    '#!void
                    (foldr (lambda (_g65936602_ _g65946605_)
                             (cons _g65936602_ _g65946605_))
                           (cons _L6545_ '())
                           _L6546_))
                  _L6547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _stx4862_))))))
                    _hd64296537_
                    _hd64266527_
                    _opt64246519_
                    _pre64126479_)
                   (_g63956436_ _g63966440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63956436_ _g63966440_))))
                                           (_g63956436_ _g63966440_)))))))
                       (_loop64196499_ _target64166493_ '()))
                     (_g63956436_ _g63966440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63956436_ _g63966440_))
                                               (_g63956436_ _g63966440_))))
                                       (_g63956436_ _g63966440_)))))))
                   (_loop64076459_ _target64046453_ '()))
                 (_g63956436_ _g63966440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g63956436_ _g63966440_))
                                           (_g63956436_ _g63966440_))))
                                   (_g63956436_ _g63966440_)))))
                        (_g63946608_
                         (list _pre6171_
                               (reverse _right6180_)
                               _tail6173_
                               _primary6169_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _recur6175_)
                                        _opt6172_
                                        '()))))
                                (let ((_generate-kw-dispatch4878_
                                       (lambda (_primary5427_
                                                _kwargs5429_
                                                _strict?5430_)
                                         (let ((_g54325451_
                                                (lambda (_g54335447_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g54335447_))))
                                           (let ((_g54315510_
                                                  (lambda (_g54335455_)
                                                    (if (gx#stx-pair?
                                                         _g54335455_)
                                                        (let ((_e54375458_
                                                               (gx#syntax-e
                                                                _g54335455_)))
                                                          (let ((_hd54385462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e54375458_))
                        (_tl54395465_ (##cdr _e54375458_)))
                    (if (gx#stx-pair? _tl54395465_)
                        (let ((_e54405468_ (gx#syntax-e _tl54395465_)))
                          (let ((_hd54415472_ (##car _e54405468_))
                                (_tl54425475_ (##cdr _e54405468_)))
                            (if (gx#stx-pair? _tl54425475_)
                                (let ((_e54435478_ (gx#syntax-e _tl54425475_)))
                                  (let ((_hd54445482_ (##car _e54435478_))
                                        (_tl54455485_ (##cdr _e54435478_)))
                                    (if (gx#stx-null? _tl54455485_)
                                        ((lambda (_L5488_ _L5490_ _L5491_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda%)
                                                   (cons _L5488_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'apply)
                             (cons (gx#datum->syntax '#f 'keyword-dispatch)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L5491_ '()))
                                         (cons _L5490_ (cons _L5488_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd54445482_
                                         _hd54415472_
                                         _hd54385462_)
                                        (_g54325451_ _g54335455_))))
                                (_g54325451_ _g54335455_))))
                        (_g54325451_ _g54335455_))))
                (_g54325451_ _g54335455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g54315510_
                                              (list (if _strict?5430_
                                                        (_generate-kw-table4879_
                                                         (map car
                                                              _kwargs5429_))
                                                        '#f)
                                                    _primary5427_
                                                    (gx#genident 'args))))))))
                                  (let ((_generate-opt-dispatch4874_
                                         (lambda (_primary6612_
                                                  _pre6614_
                                                  _opt6615_
                                                  _tail6616_)
                                           (cons (list _pre6614_
                                                       (_generate-opt-clause4876_
                                                        _primary6612_
                                                        _pre6614_
                                                        _opt6615_))
                                                 (_generate-opt-dispatch*4875_
                                                  _primary6612_
                                                  _pre6614_
                                                  _opt6615_
                                                  _tail6616_)))))
                                    (let ((_g48834914_
                                           (lambda (_g48844910_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g48844910_))))
                                      (let ((_g48825127_
                                             (lambda (_g48844918_)
                                               (if (gx#stx-pair? _g48844918_)
                                                   (let ((_e49034921_
                                                          (gx#syntax-e
                                                           _g48844918_)))
                                                     (let ((_hd49044925_
                                                            (##car _e49034921_))
                                                           (_tl49054928_
                                                            (##cdr _e49034921_)))
                                                       (if (gx#stx-pair?
                                                            _tl49054928_)
                                                           (let ((_e49064931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl49054928_)))
                     (let ((_hd49074935_ (##car _e49064931_))
                           (_tl49084938_ (##cdr _e49064931_)))
                       ((lambda (_L4941_ _L4943_)
                          (if (_kw-lambda?4869_ _L4943_)
                              (let ((_g49594966_
                                     (lambda (_g49604962_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g49604962_))))
                                (let ((_g49585123_
                                       (lambda (_g49604970_)
                                         ((lambda ()
                                            (let ()
                                              (let ((_g29413_
                                                     (_kw-lambda-split4870_
                                                      _L4943_)))
                                                (begin
                                                  (let ((_g29414_
                                                         (values-count
                                                          _g29413_)))
                                                    (if (not (fx= _g29414_ 3))
                                                        (error "Context expects 3 values"
                                                               _g29414_)))
                                                  (let ((_key4979_
                                                         (values-ref
                                                          _g29413_
                                                          0))
                                                        (_kwargs4981_
                                                         (values-ref
                                                          _g29413_
                                                          1))
                                                        (_args4982_
                                                         (values-ref
                                                          _g29413_
                                                          2)))
                                                    (let ((_g49844992_
                                                           (lambda (_g49854988_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g49854988_))))
                                                      (let ((_g49835115_
                                                             (lambda (_g49854996_)
                                                               ((lambda (_L4999_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g50175025_
                                   (lambda (_g50185021_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g50185021_))))
                              (let ((_g50165111_
                                     (lambda (_g50185029_)
                                       ((lambda (_L5032_)
                                          (let ()
                                            (let ((_g50455053_
                                                   (lambda (_g50465049_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g50465049_))))
                                              (let ((_g50445107_
                                                     (lambda (_g50465057_)
                                                       ((lambda (_L5060_)
                                                          (let ()
                                                            (let ((_g50735081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g50745077_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g50745077_))))
                      (let ((_g50725103_
                             (lambda (_g50745085_)
                               ((lambda (_L5088_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (cons _L5032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _L5060_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L5088_ '()))))))
                                _g50745085_))))
                        (_g50725103_
                         (gx#stx-wrap-source
                          (_generate-kw-dispatch4878_
                           _L5032_
                           _kwargs4981_
                           (not _key4979_))
                          (gx#stx-source _stx4862_)))))))
                _g50465057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g50445107_
                                                 (gx#stx-wrap-source
                                                  (_generate-kw-primary4877_
                                                   _L4999_
                                                   _kwargs4981_
                                                   _args4982_
                                                   _L4941_)
                                                  (gx#stx-source
                                                   _stx4862_)))))))
                                        _g50185029_))))
                                (_g50165111_ (gx#genident 'kw-lambda))))))
                        _g49854996_))))
                (_g49835115_
                 (let ((_$e5119_ _key4979_))
                   (if _$e5119_ _$e5119_ (gx#genident 'key)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g49585123_
                                   (_check-duplicate-bindings4872_ _L4943_))))
                              (_g48834914_ _g48844918_)))
                        _tl49084938_
                        _hd49074935_)))
                   (_g48834914_ _g48844918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g48834914_
                                                    _g48844918_)))))
                                        (let ((_g48815355_
                                               (lambda (_g48845131_)
                                                 (if (gx#stx-pair? _g48845131_)
                                                     (let ((_e48955134_
                                                            (gx#syntax-e
                                                             _g48845131_)))
                                                       (let ((_hd48965138_
                                                              (##car _e48955134_))
                                                             (_tl48975141_
                                                              (##cdr _e48955134_)))
                                                         (if (gx#stx-pair?
                                                              _tl48975141_)
                                                             (let ((_e48985144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl48975141_)))
                       (let ((_hd48995148_ (##car _e48985144_))
                             (_tl49005151_ (##cdr _e48985144_)))
                         ((lambda (_L5154_ _L5156_)
                            (if (_opt-lambda?4867_ _L5156_)
                                (let ((_g29415_
                                       (_opt-lambda-split4868_ _L5156_)))
                                  (begin
                                    (let ((_g29416_ (values-count _g29415_)))
                                      (if (not (fx= _g29416_ 3))
                                          (error "Context expects 3 values"
                                                 _g29416_)))
                                    (let ((_pre5169_ (values-ref _g29415_ 0))
                                          (_opt5171_ (values-ref _g29415_ 1))
                                          (_tail5172_ (values-ref _g29415_ 2)))
                                      (let ((_g51745182_
                                             (lambda (_g51755178_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g51755178_))))
                                        (let ((_g51735351_
                                               (lambda (_g51755186_)
                                                 ((lambda (_L5189_)
                                                    (let ()
                                                      (let ((_g52025210_
                                                             (lambda (_g52035206_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g52035206_))))
                                                        (let ((_g52015347_
                                                               (lambda (_g52035214_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L5217_)
                            (let ()
                              (let ((_g52305247_
                                     (lambda (_g52315243_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g52315243_))))
                                (let ((_g52295343_
                                       (lambda (_g52315251_)
                                         (if (gx#stx-pair/null? _g52315251_)
                                             (if (fx>= (gx#stx-length
                                                        _g52315251_)
                                                       '0)
                                                 (let ((_g29417_
                                                        (gx#syntax-split-splice
                                                         _g52315251_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29418_
                                                            (values-count
                                                             _g29417_)))
                                                       (if (not (fx= _g29418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29418_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target52335254_
                                                            (values-ref
                                                             _g29417_
                                                             0))
                                                           (_tl52355257_
                                                            (values-ref
                                                             _g29417_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl52355257_)
                                                           (letrec ((_loop52365260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd52345264_ _clause52405267_)
                               (if (gx#stx-pair? _hd52345264_)
                                   (let ((_e52375270_
                                          (gx#syntax-e _hd52345264_)))
                                     (let ((_lp-hd52385274_
                                            (##car _e52375270_))
                                           (_lp-tl52395277_
                                            (##cdr _e52375270_)))
                                       (_loop52365260_
                                        _lp-tl52395277_
                                        (cons _lp-hd52385274_
                                              _clause52405267_))))
                                   (let ((_clause52415280_
                                          (reverse _clause52405267_)))
                                     ((lambda (_L5284_)
                                        (let ()
                                          (let ((_g53015309_
                                                 (lambda (_g53025305_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g53025305_))))
                                            (let ((_g53005331_
                                                   (lambda (_g53025313_)
                                                     ((lambda (_L5316_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5189_ '())
                                            (cons _L5217_ '()))
                                      '())
                                (cons _L5316_ '()))))))
              _g53025313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g53005331_
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g53345337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g53355340_)
                         (cons _g53345337_ _g53355340_))
                       '()
                       _L5284_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx4862_)))))))
                                      _clause52415280_))))))
                     (_loop52365260_ _target52335254_ '()))
                   (_g52305247_ _g52315251_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g52305247_ _g52315251_))
                                             (_g52305247_ _g52315251_)))))
                                  (_g52295343_
                                   (_generate-opt-dispatch4874_
                                    _L5189_
                                    _pre5169_
                                    _opt5171_
                                    _tail5172_))))))
                          _g52035214_))))
                  (_g52015347_
                   (gx#stx-wrap-source
                    (_generate-opt-primary4873_
                     _pre5169_
                     _opt5171_
                     _tail5172_
                     _L5154_)
                    (gx#stx-source _stx4862_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g51755186_))))
                                          (_g51735351_
                                           (gx#genident 'opt-lambda)))))))
                                (_g48825127_ _g48845131_)))
                          _tl49005151_
                          _hd48995148_)))
                     (_g48825127_ _g48845131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48825127_
                                                      _g48845131_)))))
                                          (let ((_g48805397_
                                                 (lambda (_g48845359_)
                                                   (if (gx#stx-pair?
                                                        _g48845359_)
                                                       (let ((_e48875362_
                                                              (gx#syntax-e
                                                               _g48845359_)))
                                                         (let ((_hd48885366_
                                                                (##car _e48875362_))
                                                               (_tl48895369_
                                                                (##cdr _e48875362_)))
                                                           (if (gx#stx-pair?
                                                                _tl48895369_)
                                                               (let ((_e48905372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl48895369_)))
                         (let ((_hd48915376_ (##car _e48905372_))
                               (_tl48925379_ (##cdr _e48905372_)))
                           ((lambda (_L5382_ _L5384_)
                              (if (_simple-lambda?4865_ _L5384_)
                                  (cons (gx#datum->syntax '#f 'lambda%)
                                        (cons _L5384_ _L5382_))
                                  (_g48815355_ _g48845359_)))
                            _tl48925379_
                            _hd48915376_)))
                       (_g48815355_ _g48845359_))))
               (_g48815355_ _g48845359_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g48805397_
                                             _stx4862_)))))))))))))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def|
      (lambda (_$stx8029_)
        (let ((_g80348073_
               (lambda (_g80358069_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g80358069_))))
          (let ((_g80338128_
                 (lambda (_g80358077_)
                   (if (gx#stx-pair? _g80358077_)
                       (let ((_e80598080_ (gx#syntax-e _g80358077_)))
                         (let ((_hd80608084_ (##car _e80598080_))
                               (_tl80618087_ (##cdr _e80598080_)))
                           (if (gx#stx-pair? _tl80618087_)
                               (let ((_e80628090_ (gx#syntax-e _tl80618087_)))
                                 (let ((_hd80638094_ (##car _e80628090_))
                                       (_tl80648097_ (##cdr _e80628090_)))
                                   (if (gx#stx-pair? _tl80648097_)
                                       (let ((_e80658100_
                                              (gx#syntax-e _tl80648097_)))
                                         (let ((_hd80668104_
                                                (##car _e80658100_))
                                               (_tl80678107_
                                                (##cdr _e80658100_)))
                                           (if (gx#stx-null? _tl80678107_)
                                               ((lambda (_L8110_ _L8112_)
                                                  (if (gx#identifier? _L8112_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L8112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L8110_ '())))
              (_g80348073_ _g80358077_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd80668104_
                                                _hd80638094_)
                                               (_g80348073_ _g80358077_))))
                                       (_g80348073_ _g80358077_))))
                               (_g80348073_ _g80358077_))))
                       (_g80348073_ _g80358077_)))))
            (let ((_g80328226_
                   (lambda (_g80358132_)
                     (if (gx#stx-pair? _g80358132_)
                         (let ((_e80398135_ (gx#syntax-e _g80358132_)))
                           (let ((_hd80408139_ (##car _e80398135_))
                                 (_tl80418142_ (##cdr _e80398135_)))
                             (if (gx#stx-pair? _tl80418142_)
                                 (let ((_e80428145_
                                        (gx#syntax-e _tl80418142_)))
                                   (let ((_hd80438149_ (##car _e80428145_))
                                         (_tl80448152_ (##cdr _e80428145_)))
                                     (if (gx#stx-pair? _hd80438149_)
                                         (let ((_e80458155_
                                                (gx#syntax-e _hd80438149_)))
                                           (let ((_hd80468159_
                                                  (##car _e80458155_))
                                                 (_tl80478162_
                                                  (##cdr _e80458155_)))
                                             (if (gx#stx-pair/null?
                                                  _tl80448152_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl80448152_)
                                                           '0)
                                                     (let ((_g29435_
                                                            (gx#syntax-split-splice
                                                             _tl80448152_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29436_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29435_)))
                   (if (not (fx= _g29436_ 2))
                       (error "Context expects 2 values" _g29436_)))
                 (let ((_target80488165_ (values-ref _g29435_ 0))
                       (_tl80508168_ (values-ref _g29435_ 1)))
                   (if (gx#stx-null? _tl80508168_)
                       (letrec ((_loop80518171_
                                 (lambda (_hd80498175_ _body80558178_)
                                   (if (gx#stx-pair? _hd80498175_)
                                       (let ((_e80528181_
                                              (gx#syntax-e _hd80498175_)))
                                         (let ((_lp-hd80538185_
                                                (##car _e80528181_))
                                               (_lp-tl80548188_
                                                (##cdr _e80528181_)))
                                           (_loop80518171_
                                            _lp-tl80548188_
                                            (cons _lp-hd80538185_
                                                  _body80558178_))))
                                       (let ((_body80568191_
                                              (reverse _body80558178_)))
                                         ((lambda (_L8195_ _L8197_ _L8198_)
                                            (if (gx#identifier? _L8198_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L8198_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons _L8197_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g82178220_
                                                        _g82188223_)
                                                 (cons _g82178220_
                                                       _g82188223_))
                                               '()
                                               _L8195_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g80338128_ _g80358132_)))
                                          _body80568191_
                                          _tl80478162_
                                          _hd80468159_))))))
                         (_loop80518171_ _target80488165_ '()))
                       (_g80338128_ _g80358132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80338128_ _g80358132_))
                                                 (_g80338128_ _g80358132_))))
                                         (_g80338128_ _g80358132_))))
                                 (_g80338128_ _g80358132_))))
                         (_g80338128_ _g80358132_)))))
              (_g80328226_ _$stx8029_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def*|
      (lambda (_$stx8231_)
        (let ((_g82358259_
               (lambda (_g82368255_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g82368255_))))
          (let ((_g82348344_
                 (lambda (_g82368263_)
                   (if (gx#stx-pair? _g82368263_)
                       (let ((_e82398266_ (gx#syntax-e _g82368263_)))
                         (let ((_hd82408270_ (##car _e82398266_))
                               (_tl82418273_ (##cdr _e82398266_)))
                           (if (gx#stx-pair? _tl82418273_)
                               (let ((_e82428276_ (gx#syntax-e _tl82418273_)))
                                 (let ((_hd82438280_ (##car _e82428276_))
                                       (_tl82448283_ (##cdr _e82428276_)))
                                   (if (gx#stx-pair/null? _tl82448283_)
                                       (if (fx>= (gx#stx-length _tl82448283_)
                                                 '0)
                                           (let ((_g29437_
                                                  (gx#syntax-split-splice
                                                   _tl82448283_
                                                   '0)))
                                             (begin
                                               (let ((_g29438_
                                                      (values-count _g29437_)))
                                                 (if (not (fx= _g29438_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29438_)))
                                               (let ((_target82458286_
                                                      (values-ref _g29437_ 0))
                                                     (_tl82478289_
                                                      (values-ref _g29437_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl82478289_)
                                                     (letrec ((_loop82488292_
                                                               (lambda (_hd82468296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses82528299_)
                         (if (gx#stx-pair? _hd82468296_)
                             (let ((_e82498302_ (gx#syntax-e _hd82468296_)))
                               (let ((_lp-hd82508306_ (##car _e82498302_))
                                     (_lp-tl82518309_ (##cdr _e82498302_)))
                                 (_loop82488292_
                                  _lp-tl82518309_
                                  (cons _lp-hd82508306_ _clauses82528299_))))
                             (let ((_clauses82538312_
                                    (reverse _clauses82528299_)))
                               ((lambda (_L8316_ _L8318_)
                                  (if (gx#identifier? _L8318_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'define-values)
                                            (cons (cons _L8318_ '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'case-lambda)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g83358338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g83368341_)
                                 (cons _g83358338_ _g83368341_))
                               '()
                               _L8316_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g82358259_ _g82368263_)))
                                _clauses82538312_
                                _hd82438280_))))))
               (_loop82488292_ _target82458286_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g82358259_
                                                      _g82368263_)))))
                                           (_g82358259_ _g82368263_))
                                       (_g82358259_ _g82368263_))))
                               (_g82358259_ _g82368263_))))
                       (_g82358259_ _g82368263_)))))
            (_g82348344_ _$stx8231_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8349_)
        (let ((_g83538371_
               (lambda (_g83548367_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g83548367_))))
          (let ((_g83528426_
                 (lambda (_g83548375_)
                   (if (gx#stx-pair? _g83548375_)
                       (let ((_e83578378_ (gx#syntax-e _g83548375_)))
                         (let ((_hd83588382_ (##car _e83578378_))
                               (_tl83598385_ (##cdr _e83578378_)))
                           (if (gx#stx-pair? _tl83598385_)
                               (let ((_e83608388_ (gx#syntax-e _tl83598385_)))
                                 (let ((_hd83618392_ (##car _e83608388_))
                                       (_tl83628395_ (##cdr _e83608388_)))
                                   (if (gx#stx-pair? _tl83628395_)
                                       (let ((_e83638398_
                                              (gx#syntax-e _tl83628395_)))
                                         (let ((_hd83648402_
                                                (##car _e83638398_))
                                               (_tl83658405_
                                                (##cdr _e83638398_)))
                                           (if (gx#stx-null? _tl83658405_)
                                               ((lambda (_L8408_ _L8410_)
                                                  (if (gx#identifier-list?
                                                       _L8410_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons _L8410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L8408_ '())))
              (_g83538371_ _g83548375_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd83648402_
                                                _hd83618392_)
                                               (_g83538371_ _g83548375_))))
                                       (_g83538371_ _g83548375_))))
                               (_g83538371_ _g83548375_))))
                       (_g83538371_ _g83548375_)))))
            (_g83528426_ _$stx8349_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#case|
      (lambda (_$stx8430_)
        (let ((_g84348458_
               (lambda (_g84358454_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g84358454_))))
          (let ((_g84338543_
                 (lambda (_g84358462_)
                   (if (gx#stx-pair? _g84358462_)
                       (let ((_e84388465_ (gx#syntax-e _g84358462_)))
                         (let ((_hd84398469_ (##car _e84388465_))
                               (_tl84408472_ (##cdr _e84388465_)))
                           (if (gx#stx-pair? _tl84408472_)
                               (let ((_e84418475_ (gx#syntax-e _tl84408472_)))
                                 (let ((_hd84428479_ (##car _e84418475_))
                                       (_tl84438482_ (##cdr _e84418475_)))
                                   (if (gx#stx-pair/null? _tl84438482_)
                                       (if (fx>= (gx#stx-length _tl84438482_)
                                                 '0)
                                           (let ((_g29439_
                                                  (gx#syntax-split-splice
                                                   _tl84438482_
                                                   '0)))
                                             (begin
                                               (let ((_g29440_
                                                      (values-count _g29439_)))
                                                 (if (not (fx= _g29440_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29440_)))
                                               (let ((_target84448485_
                                                      (values-ref _g29439_ 0))
                                                     (_tl84468488_
                                                      (values-ref _g29439_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl84468488_)
                                                     (letrec ((_loop84478491_
                                                               (lambda (_hd84458495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause84518498_)
                         (if (gx#stx-pair? _hd84458495_)
                             (let ((_e84488501_ (gx#syntax-e _hd84458495_)))
                               (let ((_lp-hd84498505_ (##car _e84488501_))
                                     (_lp-tl84508508_ (##cdr _e84488501_)))
                                 (_loop84478491_
                                  _lp-tl84508508_
                                  (cons _lp-hd84498505_ _clause84518498_))))
                             (let ((_clause84528511_
                                    (reverse _clause84518498_)))
                               ((lambda (_L8515_ _L8517_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$e)
                                                    (cons _L8517_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '~case)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e)
                        (begin
                          '#!void
                          (foldr (lambda (_g85348537_ _g85358540_)
                                   (cons _g85348537_ _g85358540_))
                                 '()
                                 _L8515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _clause84528511_
                                _hd84428479_))))))
               (_loop84478491_ _target84448485_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g84348458_
                                                      _g84358462_)))))
                                           (_g84348458_ _g84358462_))
                                       (_g84348458_ _g84358462_))))
                               (_g84348458_ _g84358462_))))
                       (_g84348458_ _g84358462_)))))
            (_g84338543_ _$stx8430_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case|
      (lambda (_$stx8548_)
        (let ((_g85568654_
               (lambda (_g85578650_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g85578650_))))
          (let ((_g85558769_
                 (lambda (_g85578658_)
                   (if (gx#stx-pair? _g85578658_)
                       (let ((_e86288661_ (gx#syntax-e _g85578658_)))
                         (let ((_hd86298665_ (##car _e86288661_))
                               (_tl86308668_ (##cdr _e86288661_)))
                           (if (gx#stx-pair? _tl86308668_)
                               (let ((_e86318671_ (gx#syntax-e _tl86308668_)))
                                 (let ((_hd86328675_ (##car _e86318671_))
                                       (_tl86338678_ (##cdr _e86318671_)))
                                   (if (gx#stx-pair? _tl86338678_)
                                       (let ((_e86348681_
                                              (gx#syntax-e _tl86338678_)))
                                         (let ((_hd86358685_
                                                (##car _e86348681_))
                                               (_tl86368688_
                                                (##cdr _e86348681_)))
                                           (if (gx#stx-pair? _hd86358685_)
                                               (let ((_e86378691_
                                                      (gx#syntax-e
                                                       _hd86358685_)))
                                                 (let ((_hd86388695_
                                                        (##car _e86378691_))
                                                       (_tl86398698_
                                                        (##cdr _e86378691_)))
                                                   (if (gx#stx-pair/null?
                                                        _tl86398698_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl86398698_)
                         '0)
                   (let ((_g29441_ (gx#syntax-split-splice _tl86398698_ '0)))
                     (begin
                       (let ((_g29442_ (values-count _g29441_)))
                         (if (not (fx= _g29442_ 2))
                             (error "Context expects 2 values" _g29442_)))
                       (let ((_target86408701_ (values-ref _g29441_ 0))
                             (_tl86428704_ (values-ref _g29441_ 1)))
                         (if (gx#stx-null? _tl86428704_)
                             (letrec ((_loop86438707_
                                       (lambda (_hd86418711_ _body86478714_)
                                         (if (gx#stx-pair? _hd86418711_)
                                             (let ((_e86448717_
                                                    (gx#syntax-e
                                                     _hd86418711_)))
                                               (let ((_lp-hd86458721_
                                                      (##car _e86448717_))
                                                     (_lp-tl86468724_
                                                      (##cdr _e86448717_)))
                                                 (_loop86438707_
                                                  _lp-tl86468724_
                                                  (cons _lp-hd86458721_
                                                        _body86478714_))))
                                             (let ((_body86488727_
                                                    (reverse _body86478714_)))
                                               ((lambda (_L8731_
                                                         _L8733_
                                                         _L8734_
                                                         _L8735_
                                                         _L8736_)
                                                  (if (gx#stx-list? _L8734_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '~case-test)
                                (cons _L8735_ (cons _L8734_ '())))
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g87608763_
                                                        _g87618766_)
                                                 (cons _g87608763_
                                                       _g87618766_))
                                               '()
                                               _L8733_)))
                                (cons (cons _L8736_ (cons _L8735_ _L8731_))
                                      '()))))
              (_g85568654_ _g85578658_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl86368688_
                                                _body86488727_
                                                _hd86388695_
                                                _hd86328675_
                                                _hd86298665_))))))
                               (_loop86438707_ _target86408701_ '()))
                             (_g85568654_ _g85578658_)))))
                   (_g85568654_ _g85578658_))
               (_g85568654_ _g85578658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g85568654_ _g85578658_))))
                                       (_g85568654_ _g85578658_))))
                               (_g85568654_ _g85578658_))))
                       (_g85568654_ _g85578658_)))))
            (let ((_g85548865_
                   (lambda (_g85578773_)
                     (if (gx#stx-pair? _g85578773_)
                         (let ((_e86058776_ (gx#syntax-e _g85578773_)))
                           (let ((_hd86068780_ (##car _e86058776_))
                                 (_tl86078783_ (##cdr _e86058776_)))
                             (if (gx#stx-pair? _tl86078783_)
                                 (let ((_e86088786_
                                        (gx#syntax-e _tl86078783_)))
                                   (let ((_hd86098790_ (##car _e86088786_))
                                         (_tl86108793_ (##cdr _e86088786_)))
                                     (if (gx#stx-pair? _tl86108793_)
                                         (let ((_e86118796_
                                                (gx#syntax-e _tl86108793_)))
                                           (let ((_hd86128800_
                                                  (##car _e86118796_))
                                                 (_tl86138803_
                                                  (##cdr _e86118796_)))
                                             (if (gx#stx-pair? _hd86128800_)
                                                 (let ((_e86148806_
                                                        (gx#syntax-e
                                                         _hd86128800_)))
                                                   (let ((_hd86158810_
                                                          (##car _e86148806_))
                                                         (_tl86168813_
                                                          (##cdr _e86148806_)))
                                                     (if (gx#stx-pair?
                                                          _tl86168813_)
                                                         (let ((_e86178816_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl86168813_)))
                   (let ((_hd86188820_ (##car _e86178816_))
                         (_tl86198823_ (##cdr _e86178816_)))
                     (if (gx#identifier? _hd86188820_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<sugar>::<sugar:2>[1]#_g29443_|
                              _hd86188820_)
                             (if (gx#stx-pair? _tl86198823_)
                                 (let ((_e86208826_
                                        (gx#syntax-e _tl86198823_)))
                                   (let ((_hd86218830_ (##car _e86208826_))
                                         (_tl86228833_ (##cdr _e86208826_)))
                                     (if (gx#stx-null? _tl86228833_)
                                         ((lambda (_L8836_
                                                   _L8838_
                                                   _L8839_
                                                   _L8840_
                                                   _L8841_)
                                            (if (gx#stx-list? _L8839_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '~case-test)
                          (cons _L8840_ (cons _L8839_ '())))
                    (cons (cons _L8838_ (cons _L8840_ '()))
                          (cons (cons _L8841_ (cons _L8840_ _L8836_)) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g85558769_ _g85578773_)))
                                          _tl86138803_
                                          _hd86218830_
                                          _hd86158810_
                                          _hd86098790_
                                          _hd86068780_)
                                         (_g85558769_ _g85578773_))))
                                 (_g85558769_ _g85578773_))
                             (_g85558769_ _g85578773_))
                         (_g85558769_ _g85578773_))))
                 (_g85558769_ _g85578773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g85558769_ _g85578773_))))
                                         (_g85558769_ _g85578773_))))
                                 (_g85558769_ _g85578773_))))
                         (_g85558769_ _g85578773_)))))
              (let ((_g85538929_
                     (lambda (_g85578869_)
                       (if (gx#stx-pair? _g85578869_)
                           (let ((_e85888872_ (gx#syntax-e _g85578869_)))
                             (let ((_hd85898876_ (##car _e85888872_))
                                   (_tl85908879_ (##cdr _e85888872_)))
                               (if (gx#stx-pair? _tl85908879_)
                                   (let ((_e85918882_
                                          (gx#syntax-e _tl85908879_)))
                                     (let ((_hd85928886_ (##car _e85918882_))
                                           (_tl85938889_ (##cdr _e85918882_)))
                                       (if (gx#stx-pair? _tl85938889_)
                                           (let ((_e85948892_
                                                  (gx#syntax-e _tl85938889_)))
                                             (let ((_hd85958896_
                                                    (##car _e85948892_))
                                                   (_tl85968899_
                                                    (##cdr _e85948892_)))
                                               (if (gx#stx-pair? _hd85958896_)
                                                   (let ((_e85978902_
                                                          (gx#syntax-e
                                                           _hd85958896_)))
                                                     (let ((_hd85988906_
                                                            (##car _e85978902_))
                                                           (_tl85998909_
                                                            (##cdr _e85978902_)))
                                                       (if (gx#identifier?
                                                            _hd85988906_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g29444_|
                                                                _hd85988906_)
                                                               ((lambda (_L8912_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'syntax-error)
                                (cons '"Bad syntax; misplaced else" '())))
                        _hd85928886_)
                       (_g85548865_ _g85578869_))
                   (_g85548865_ _g85578869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g85548865_ _g85578869_))))
                                           (_g85548865_ _g85578869_))))
                                   (_g85548865_ _g85578869_))))
                           (_g85548865_ _g85578869_)))))
                (let ((_g85529037_
                       (lambda (_g85578933_)
                         (if (gx#stx-pair? _g85578933_)
                             (let ((_e85668936_ (gx#syntax-e _g85578933_)))
                               (let ((_hd85678940_ (##car _e85668936_))
                                     (_tl85688943_ (##cdr _e85668936_)))
                                 (if (gx#stx-pair? _tl85688943_)
                                     (let ((_e85698946_
                                            (gx#syntax-e _tl85688943_)))
                                       (let ((_hd85708950_ (##car _e85698946_))
                                             (_tl85718953_
                                              (##cdr _e85698946_)))
                                         (if (gx#stx-pair? _tl85718953_)
                                             (let ((_e85728956_
                                                    (gx#syntax-e
                                                     _tl85718953_)))
                                               (let ((_hd85738960_
                                                      (##car _e85728956_))
                                                     (_tl85748963_
                                                      (##cdr _e85728956_)))
                                                 (if (gx#stx-pair?
                                                      _hd85738960_)
                                                     (let ((_e85758966_
                                                            (gx#syntax-e
                                                             _hd85738960_)))
                                                       (let ((_hd85768970_
                                                              (##car _e85758966_))
                                                             (_tl85778973_
                                                              (##cdr _e85758966_)))
                                                         (if (gx#identifier?
                                                              _hd85768970_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29445_|
                          _hd85768970_)
                         (if (gx#stx-pair/null? _tl85778973_)
                             (if (fx>= (gx#stx-length _tl85778973_) '0)
                                 (let ((_g29446_
                                        (gx#syntax-split-splice
                                         _tl85778973_
                                         '0)))
                                   (begin
                                     (let ((_g29447_ (values-count _g29446_)))
                                       (if (not (fx= _g29447_ 2))
                                           (error "Context expects 2 values"
                                                  _g29447_)))
                                     (let ((_target85788976_
                                            (values-ref _g29446_ 0))
                                           (_tl85808979_
                                            (values-ref _g29446_ 1)))
                                       (if (gx#stx-null? _tl85808979_)
                                           (letrec ((_loop85818982_
                                                     (lambda (_hd85798986_
                                                              _body85858989_)
                                                       (if (gx#stx-pair?
                                                            _hd85798986_)
                                                           (let ((_e85828992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd85798986_)))
                     (let ((_lp-hd85838996_ (##car _e85828992_))
                           (_lp-tl85848999_ (##cdr _e85828992_)))
                       (_loop85818982_
                        _lp-tl85848999_
                        (cons _lp-hd85838996_ _body85858989_))))
                   (let ((_body85869002_ (reverse _body85858989_)))
                     (if (gx#stx-null? _tl85748963_)
                         ((lambda (_L9006_ _L9008_)
                            (cons (gx#datum->syntax '#f 'begin)
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g90289031_ _g90299034_)
                                             (cons _g90289031_ _g90299034_))
                                           '()
                                           _L9006_))))
                          _body85869002_
                          _hd85708950_)
                         (_g85538929_ _g85578933_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop85818982_
                                              _target85788976_
                                              '()))
                                           (_g85538929_ _g85578933_)))))
                                 (_g85538929_ _g85578933_))
                             (_g85538929_ _g85578933_))
                         (_g85538929_ _g85578933_))
                     (_g85538929_ _g85578933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g85538929_
                                                      _g85578933_))))
                                             (_g85538929_ _g85578933_))))
                                     (_g85538929_ _g85578933_))))
                             (_g85538929_ _g85578933_)))))
                  (let ((_g85519068_
                         (lambda (_g85579041_)
                           (if (gx#stx-pair? _g85579041_)
                               (let ((_e85589044_ (gx#syntax-e _g85579041_)))
                                 (let ((_hd85599048_ (##car _e85589044_))
                                       (_tl85609051_ (##cdr _e85589044_)))
                                   (if (gx#stx-pair? _tl85609051_)
                                       (let ((_e85619054_
                                              (gx#syntax-e _tl85609051_)))
                                         (let ((_hd85629058_
                                                (##car _e85619054_))
                                               (_tl85639061_
                                                (##cdr _e85619054_)))
                                           (if (gx#stx-null? _tl85639061_)
                                               ((lambda () '#!void))
                                               (_g85529037_ _g85579041_))))
                                       (_g85529037_ _g85579041_))))
                               (_g85529037_ _g85579041_)))))
                    (_g85519068_ _$stx8548_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case-test|
      (lambda (_stx9074_)
        (let ((_memq-datum?9077_
               (lambda (_x9439_)
                 (let ((_e9442_ (gx#stx-e _x9439_)))
                   (let ((_$e9445_ (symbol? _e9442_)))
                     (if _$e9445_
                         _$e9445_
                         (let ((_$e9449_ (keyword? _e9442_)))
                           (if _$e9449_ _$e9449_ (immediate? _e9442_)))))))))
          (let ((_memv-datum?9079_
                 (lambda (_x9432_)
                   (let ((_$e9435_ (_memq-datum?9077_ _x9432_)))
                     (if _$e9435_ _$e9435_ (gx#stx-number? _x9432_))))))
            (let ((_g90839134_
                   (lambda (_g90849130_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g90849130_))))
              (let ((_g90829279_
                     (lambda (_g90849138_)
                       (if (gx#stx-pair? _g90849138_)
                           (let ((_e91119141_ (gx#syntax-e _g90849138_)))
                             (let ((_hd91129145_ (##car _e91119141_))
                                   (_tl91139148_ (##cdr _e91119141_)))
                               (if (gx#stx-pair? _tl91139148_)
                                   (let ((_e91149151_
                                          (gx#syntax-e _tl91139148_)))
                                     (let ((_hd91159155_ (##car _e91149151_))
                                           (_tl91169158_ (##cdr _e91149151_)))
                                       (if (gx#stx-pair? _tl91169158_)
                                           (let ((_e91179161_
                                                  (gx#syntax-e _tl91169158_)))
                                             (let ((_hd91189165_
                                                    (##car _e91179161_))
                                                   (_tl91199168_
                                                    (##cdr _e91179161_)))
                                               (if (gx#stx-pair/null?
                                                    _hd91189165_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd91189165_)
                                                             '0)
                                                       (let ((_g29448_
                                                              (gx#syntax-split-splice
                                                               _hd91189165_
                                                               '0)))
                                                         (begin
                                                           (let ((_g29449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g29448_)))
                     (if (not (fx= _g29449_ 2))
                         (error "Context expects 2 values" _g29449_)))
                   (let ((_target91209171_ (values-ref _g29448_ 0))
                         (_tl91229174_ (values-ref _g29448_ 1)))
                     (if (gx#stx-null? _tl91229174_)
                         (letrec ((_loop91239177_
                                   (lambda (_hd91219181_ _datum91279184_)
                                     (if (gx#stx-pair? _hd91219181_)
                                         (let ((_e91249187_
                                                (gx#syntax-e _hd91219181_)))
                                           (let ((_lp-hd91259191_
                                                  (##car _e91249187_))
                                                 (_lp-tl91269194_
                                                  (##cdr _e91249187_)))
                                             (_loop91239177_
                                              _lp-tl91269194_
                                              (cons _lp-hd91259191_
                                                    _datum91279184_))))
                                         (let ((_datum91289197_
                                                (reverse _datum91279184_)))
                                           (if (gx#stx-null? _tl91199168_)
                                               ((lambda (_L9201_ _L9203_)
                                                  (let ((_g92249232_
                                                         (lambda (_g92259228_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g92259228_))))
                                                    (let ((_g92239259_
                                                           (lambda (_g92259236_)
                                                             ((lambda (_L9239_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9239_
                                (cons _L9203_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons (begin
                                                          '#!void
                                                          (foldr (lambda (_g92509253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g92519256_)
                           (cons _g92509253_ _g92519256_))
                         '()
                         _L9201_))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _g92259236_))))
              (_g92239259_
               (if (gx#stx-andmap
                    _memq-datum?9077_
                    (begin
                      '#!void
                      (foldr (lambda (_g92629265_ _g92639268_)
                               (cons _g92629265_ _g92639268_))
                             '()
                             _L9201_)))
                   (gx#datum->syntax '#f 'memq)
                   (if (gx#stx-andmap
                        _memv-datum?9079_
                        (begin
                          '#!void
                          (foldr (lambda (_g92709273_ _g92719276_)
                                   (cons _g92709273_ _g92719276_))
                                 '()
                                 _L9201_)))
                       (gx#datum->syntax '#f 'memv)
                       (gx#datum->syntax '#f 'member)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _datum91289197_
                                                _hd91159155_)
                                               (_g90839134_ _g90849138_)))))))
                           (_loop91239177_ _target91209171_ '()))
                         (_g90839134_ _g90849138_)))))
               (_g90839134_ _g90849138_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90839134_ _g90849138_))))
                                           (_g90839134_ _g90849138_))))
                                   (_g90839134_ _g90849138_))))
                           (_g90839134_ _g90849138_)))))
                (let ((_g90819376_
                       (lambda (_g90849283_)
                         (if (gx#stx-pair? _g90849283_)
                             (let ((_e90979286_ (gx#syntax-e _g90849283_)))
                               (let ((_hd90989290_ (##car _e90979286_))
                                     (_tl90999293_ (##cdr _e90979286_)))
                                 (if (gx#stx-pair? _tl90999293_)
                                     (let ((_e91009296_
                                            (gx#syntax-e _tl90999293_)))
                                       (let ((_hd91019300_ (##car _e91009296_))
                                             (_tl91029303_
                                              (##cdr _e91009296_)))
                                         (if (gx#stx-pair? _tl91029303_)
                                             (let ((_e91039306_
                                                    (gx#syntax-e
                                                     _tl91029303_)))
                                               (let ((_hd91049310_
                                                      (##car _e91039306_))
                                                     (_tl91059313_
                                                      (##cdr _e91039306_)))
                                                 (if (gx#stx-pair?
                                                      _hd91049310_)
                                                     (let ((_e91069316_
                                                            (gx#syntax-e
                                                             _hd91049310_)))
                                                       (let ((_hd91079320_
                                                              (##car _e91069316_))
                                                             (_tl91089323_
                                                              (##cdr _e91069316_)))
                                                         (if (gx#stx-null?
                                                              _tl91089323_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl91059313_)
                         ((lambda (_L9326_ _L9328_)
                            (let ((_g93459353_
                                   (lambda (_g93469349_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g93469349_))))
                              (let ((_g93449372_
                                     (lambda (_g93469357_)
                                       ((lambda (_L9360_)
                                          (let ()
                                            (cons _L9360_
                                                  (cons _L9328_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L9326_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g93469357_))))
                                (_g93449372_
                                 (if (_memq-datum?9077_ _L9326_)
                                     (gx#datum->syntax '#f 'eq?)
                                     (if (_memv-datum?9079_ _L9326_)
                                         (gx#datum->syntax '#f 'eqv?)
                                         (gx#datum->syntax '#f 'equal?)))))))
                          _hd91079320_
                          _hd91019300_)
                         (_g90829279_ _g90849283_))
                     (_g90829279_ _g90849283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90829279_
                                                      _g90849283_))))
                                             (_g90829279_ _g90849283_))))
                                     (_g90829279_ _g90849283_))))
                             (_g90829279_ _g90849283_)))))
                  (let ((_g90809428_
                         (lambda (_g90849380_)
                           (if (gx#stx-pair? _g90849380_)
                               (let ((_e90869383_ (gx#syntax-e _g90849380_)))
                                 (let ((_hd90879387_ (##car _e90869383_))
                                       (_tl90889390_ (##cdr _e90869383_)))
                                   (if (gx#stx-pair? _tl90889390_)
                                       (let ((_e90899393_
                                              (gx#syntax-e _tl90889390_)))
                                         (let ((_hd90909397_
                                                (##car _e90899393_))
                                               (_tl90919400_
                                                (##cdr _e90899393_)))
                                           (if (gx#stx-pair? _tl90919400_)
                                               (let ((_e90929403_
                                                      (gx#syntax-e
                                                       _tl90919400_)))
                                                 (let ((_hd90939407_
                                                        (##car _e90929403_))
                                                       (_tl90949410_
                                                        (##cdr _e90929403_)))
                                                   (if (gx#stx-null?
                                                        _hd90939407_)
                                                       (if (gx#stx-null?
                                                            _tl90949410_)
                                                           ((lambda (_L9413_)
                                                              '#f)
                                                            _hd90909397_)
                                                           (_g90819376_
                                                            _g90849380_))
                                                       (_g90819376_
                                                        _g90849380_))))
                                               (_g90819376_ _g90849380_))))
                                       (_g90819376_ _g90849380_))))
                               (_g90819376_ _g90849380_)))))
                    (_g90809428_ _stx9074_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do|
      (lambda (_$stx9454_)
        (let ((_g94589529_
               (lambda (_g94599525_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g94599525_))))
          (let ((_g94579818_
                 (lambda (_g94599533_)
                   (if (gx#stx-pair? _g94599533_)
                       (let ((_e94669536_ (gx#syntax-e _g94599533_)))
                         (let ((_hd94679540_ (##car _e94669536_))
                               (_tl94689543_ (##cdr _e94669536_)))
                           (if (gx#stx-pair? _tl94689543_)
                               (let ((_e94699546_ (gx#syntax-e _tl94689543_)))
                                 (let ((_hd94709550_ (##car _e94699546_))
                                       (_tl94719553_ (##cdr _e94699546_)))
                                   (if (gx#stx-pair/null? _hd94709550_)
                                       (if (fx>= (gx#stx-length _hd94709550_)
                                                 '0)
                                           (let ((_g29450_
                                                  (gx#syntax-split-splice
                                                   _hd94709550_
                                                   '0)))
                                             (begin
                                               (let ((_g29451_
                                                      (values-count _g29450_)))
                                                 (if (not (fx= _g29451_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29451_)))
                                               (let ((_target94729556_
                                                      (values-ref _g29450_ 0))
                                                     (_tl94749559_
                                                      (values-ref _g29450_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl94749559_)
                                                     (letrec ((_loop94759562_
                                                               (lambda (_hd94739566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _step94799569_
                                _init94809571_
                                _var94819573_)
                         (if (gx#stx-pair? _hd94739566_)
                             (let ((_e94769576_ (gx#syntax-e _hd94739566_)))
                               (let ((_lp-hd94779580_ (##car _e94769576_))
                                     (_lp-tl94789583_ (##cdr _e94769576_)))
                                 (if (gx#stx-pair? _lp-hd94779580_)
                                     (let ((_e94859586_
                                            (gx#syntax-e _lp-hd94779580_)))
                                       (let ((_hd94869590_ (##car _e94859586_))
                                             (_tl94879593_
                                              (##cdr _e94859586_)))
                                         (if (gx#stx-pair? _tl94879593_)
                                             (let ((_e94889596_
                                                    (gx#syntax-e
                                                     _tl94879593_)))
                                               (let ((_hd94899600_
                                                      (##car _e94889596_))
                                                     (_tl94909603_
                                                      (##cdr _e94889596_)))
                                                 (if (gx#stx-pair/null?
                                                      _tl94909603_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl94909603_)
                                                               '0)
                                                         (let ((_g29452_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94909603_
                         '0)))
                   (begin
                     (let ((_g29453_ (values-count _g29452_)))
                       (if (not (fx= _g29453_ 2))
                           (error "Context expects 2 values" _g29453_)))
                     (let ((_target94919606_ (values-ref _g29452_ 0))
                           (_tl94939609_ (values-ref _g29452_ 1)))
                       (if (gx#stx-null? _tl94939609_)
                           (letrec ((_loop94949612_
                                     (lambda (_hd94929616_ _step94989619_)
                                       (if (gx#stx-pair? _hd94929616_)
                                           (let ((_e94959622_
                                                  (gx#syntax-e _hd94929616_)))
                                             (let ((_lp-hd94969626_
                                                    (##car _e94959622_))
                                                   (_lp-tl94979629_
                                                    (##cdr _e94959622_)))
                                               (_loop94949612_
                                                _lp-tl94979629_
                                                (cons _lp-hd94969626_
                                                      _step94989619_))))
                                           (let ((_step94999632_
                                                  (reverse _step94989619_)))
                                             (_loop94759562_
                                              _lp-tl94789583_
                                              (cons _step94999632_
                                                    _step94799569_)
                                              (cons _hd94899600_
                                                    _init94809571_)
                                              (cons _hd94869590_
                                                    _var94819573_)))))))
                             (_loop94949612_ _target94919606_ '()))
                           (_g94589529_ _g94599533_)))))
                 (_g94589529_ _g94599533_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94589529_
                                                      _g94599533_))))
                                             (_g94589529_ _g94599533_))))
                                     (_g94589529_ _g94599533_))))
                             (let ((_step94829636_ (reverse _step94799569_))
                                   (_init94839639_ (reverse _init94809571_))
                                   (_var94849641_ (reverse _var94819573_)))
                               (if (gx#stx-pair? _tl94719553_)
                                   (let ((_e95009644_
                                          (gx#syntax-e _tl94719553_)))
                                     (let ((_hd95019648_ (##car _e95009644_))
                                           (_tl95029651_ (##cdr _e95009644_)))
                                       (if (gx#stx-pair? _hd95019648_)
                                           (let ((_e95039654_
                                                  (gx#syntax-e _hd95019648_)))
                                             (let ((_hd95049658_
                                                    (##car _e95039654_))
                                                   (_tl95059661_
                                                    (##cdr _e95039654_)))
                                               (if (gx#stx-pair/null?
                                                    _tl95059661_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl95059661_)
                                                             '0)
                                                       (let ((_g29454_
                                                              (gx#syntax-split-splice
                                                               _tl95059661_
                                                               '0)))
                                                         (begin
                                                           (let ((_g29455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g29454_)))
                     (if (not (fx= _g29455_ 2))
                         (error "Context expects 2 values" _g29455_)))
                   (let ((_target95069664_ (values-ref _g29454_ 0))
                         (_tl95089667_ (values-ref _g29454_ 1)))
                     (if (gx#stx-null? _tl95089667_)
                         (letrec ((_loop95099670_
                                   (lambda (_hd95079674_ _fini95139677_)
                                     (if (gx#stx-pair? _hd95079674_)
                                         (let ((_e95109680_
                                                (gx#syntax-e _hd95079674_)))
                                           (let ((_lp-hd95119684_
                                                  (##car _e95109680_))
                                                 (_lp-tl95129687_
                                                  (##cdr _e95109680_)))
                                             (_loop95099670_
                                              _lp-tl95129687_
                                              (cons _lp-hd95119684_
                                                    _fini95139677_))))
                                         (let ((_fini95149690_
                                                (reverse _fini95139677_)))
                                           (if (gx#stx-pair/null? _tl95029651_)
                                               (if (fx>= (gx#stx-length
                                                          _tl95029651_)
                                                         '0)
                                                   (let ((_g29456_
                                                          (gx#syntax-split-splice
                                                           _tl95029651_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29457_
                                                              (values-count
                                                               _g29456_)))
                                                         (if (not (fx= _g29457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29457_)))
               (let ((_target95159694_ (values-ref _g29456_ 0))
                     (_tl95179697_ (values-ref _g29456_ 1)))
                 (if (gx#stx-null? _tl95179697_)
                     (letrec ((_loop95189700_
                               (lambda (_hd95169704_ _body95229707_)
                                 (if (gx#stx-pair? _hd95169704_)
                                     (let ((_e95199710_
                                            (gx#syntax-e _hd95169704_)))
                                       (let ((_lp-hd95209714_
                                              (##car _e95199710_))
                                             (_lp-tl95219717_
                                              (##cdr _e95199710_)))
                                         (_loop95189700_
                                          _lp-tl95219717_
                                          (cons _lp-hd95209714_
                                                _body95229707_))))
                                     (let ((_body95239720_
                                            (reverse _body95229707_)))
                                       ((lambda (_L9724_
                                                 _L9726_
                                                 _L9727_
                                                 _L9728_
                                                 _L9729_
                                                 _L9730_)
                                          (if (gx#stx-andmap
                                               gx#identifier?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g97639766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97649769_)
                  (cons _g97639766_ _g97649769_))
                '()
                _L9730_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$loop)
                                                          (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-check-splice-targets _L9729_ _L9730_)
                          (foldr (lambda (_g97719784_ _g97729787_ _g97739789_)
                                   (cons (cons _g97729787_
                                               (cons _g97719784_ '()))
                                         _g97739789_))
                                 '()
                                 _L9729_
                                 _L9730_))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'not)
                                                (cons _L9727_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g97749792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g97759795_)
                         (cons _g97749792_ _g97759795_))
                       (cons (cons (gx#datum->syntax '#f '$loop)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _L9728_
                                      _L9730_)
                                     (foldr (lambda (_g97769798_
                                                     _g97779801_
                                                     _g97789803_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons _g97779801_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g97799806_ _g97809809_)
                                   (cons _g97799806_ _g97809809_))
                                 '()
                                 _g97769798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g97789803_))
                                            '()
                                            _L9728_
                                            _L9730_)))
                             '())
                       _L9724_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g97819812_ _g97829815_)
                                     (cons _g97819812_ _g97829815_))
                                   '()
                                   _L9726_))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g94589529_ _g94599533_)))
                                        _body95239720_
                                        _fini95149690_
                                        _hd95049658_
                                        _step94829636_
                                        _init94839639_
                                        _var94849641_))))))
                       (_loop95189700_ _target95159694_ '()))
                     (_g94589529_ _g94599533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94589529_ _g94599533_))
                                               (_g94589529_ _g94599533_)))))))
                           (_loop95099670_ _target95069664_ '()))
                         (_g94589529_ _g94599533_)))))
               (_g94589529_ _g94599533_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94589529_ _g94599533_))))
                                           (_g94589529_ _g94599533_))))
                                   (_g94589529_ _g94599533_)))))))
               (_loop94759562_ _target94729556_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94589529_
                                                      _g94599533_)))))
                                           (_g94589529_ _g94599533_))
                                       (_g94589529_ _g94599533_))))
                               (_g94589529_ _g94599533_))))
                       (_g94589529_ _g94599533_)))))
            (_g94579818_ _$stx9454_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do-while|
      (lambda (_$stx9826_)
        (let ((_g98309853_
               (lambda (_g98319849_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g98319849_))))
          (let ((_g98299924_
                 (lambda (_g98319857_)
                   (if (gx#stx-pair? _g98319857_)
                       (let ((_e98369860_ (gx#syntax-e _g98319857_)))
                         (let ((_hd98379864_ (##car _e98369860_))
                               (_tl98389867_ (##cdr _e98369860_)))
                           (if (gx#stx-pair? _tl98389867_)
                               (let ((_e98399870_ (gx#syntax-e _tl98389867_)))
                                 (let ((_hd98409874_ (##car _e98399870_))
                                       (_tl98419877_ (##cdr _e98399870_)))
                                   (if (gx#stx-pair? _tl98419877_)
                                       (let ((_e98429880_
                                              (gx#syntax-e _tl98419877_)))
                                         (let ((_hd98439884_
                                                (##car _e98429880_))
                                               (_tl98449887_
                                                (##cdr _e98429880_)))
                                           (if (gx#stx-pair? _hd98439884_)
                                               (let ((_e98459890_
                                                      (gx#syntax-e
                                                       _hd98439884_)))
                                                 (let ((_hd98469894_
                                                        (##car _e98459890_))
                                                       (_tl98479897_
                                                        (##cdr _e98459890_)))
                                                   ((lambda (_L9900_
                                                             _L9902_
                                                             _L9903_
                                                             _L9904_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'do)
                                                            (cons _L9904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (gx#datum->syntax '#f 'not)
                                            (cons _L9903_ '()))
                                      _L9902_)
                                _L9900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl98449887_
                                                    _tl98479897_
                                                    _hd98469894_
                                                    _hd98409874_)))
                                               (_g98309853_ _g98319857_))))
                                       (_g98309853_ _g98319857_))))
                               (_g98309853_ _g98319857_))))
                       (_g98309853_ _g98319857_)))))
            (_g98299924_ _$stx9826_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#begin0|
      (lambda (_$stx9928_)
        (let ((_g99339964_
               (lambda (_g99349960_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g99349960_))))
          (let ((_g993210049_
                 (lambda (_g99349968_)
                   (if (gx#stx-pair? _g99349968_)
                       (let ((_e99449971_ (gx#syntax-e _g99349968_)))
                         (let ((_hd99459975_ (##car _e99449971_))
                               (_tl99469978_ (##cdr _e99449971_)))
                           (if (gx#stx-pair? _tl99469978_)
                               (let ((_e99479981_ (gx#syntax-e _tl99469978_)))
                                 (let ((_hd99489985_ (##car _e99479981_))
                                       (_tl99499988_ (##cdr _e99479981_)))
                                   (if (gx#stx-pair/null? _tl99499988_)
                                       (if (fx>= (gx#stx-length _tl99499988_)
                                                 '0)
                                           (let ((_g29458_
                                                  (gx#syntax-split-splice
                                                   _tl99499988_
                                                   '0)))
                                             (begin
                                               (let ((_g29459_
                                                      (values-count _g29458_)))
                                                 (if (not (fx= _g29459_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29459_)))
                                               (let ((_target99509991_
                                                      (values-ref _g29458_ 0))
                                                     (_tl99529994_
                                                      (values-ref _g29458_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl99529994_)
                                                     (letrec ((_loop99539997_
                                                               (lambda (_hd995110001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _rest995710004_)
                         (if (gx#stx-pair? _hd995110001_)
                             (let ((_e995410007_ (gx#syntax-e _hd995110001_)))
                               (let ((_lp-hd995510011_ (##car _e995410007_))
                                     (_lp-tl995610014_ (##cdr _e995410007_)))
                                 (_loop99539997_
                                  _lp-tl995610014_
                                  (cons _lp-hd995510011_ _rest995710004_))))
                             (let ((_rest995810017_ (reverse _rest995710004_)))
                               ((lambda (_L10021_ _L10023_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$r)
                                                    (cons _L10023_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '%#expression)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              (begin
                                '#!void
                                (foldr (lambda (_g1004010043_ _g1004110046_)
                                         (cons _g1004010043_ _g1004110046_))
                                       '()
                                       _L10021_)))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$r)
                                                          '())))))
                                _rest995810017_
                                _hd99489985_))))))
               (_loop99539997_ _target99509991_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g99339964_
                                                      _g99349968_)))))
                                           (_g99339964_ _g99349968_))
                                       (_g99339964_ _g99349968_))))
                               (_g99339964_ _g99349968_))))
                       (_g99339964_ _g99349968_)))))
            (let ((_g993110089_
                   (lambda (_g993410053_)
                     (if (gx#stx-pair? _g993410053_)
                         (let ((_e993610056_ (gx#syntax-e _g993410053_)))
                           (let ((_hd993710060_ (##car _e993610056_))
                                 (_tl993810063_ (##cdr _e993610056_)))
                             (if (gx#stx-pair? _tl993810063_)
                                 (let ((_e993910066_
                                        (gx#syntax-e _tl993810063_)))
                                   (let ((_hd994010070_ (##car _e993910066_))
                                         (_tl994110073_ (##cdr _e993910066_)))
                                     (if (gx#stx-null? _tl994110073_)
                                         ((lambda (_L10076_) _L10076_)
                                          _hd994010070_)
                                         (_g993210049_ _g993410053_))))
                                 (_g993210049_ _g993410053_))))
                         (_g993210049_ _g993410053_)))))
              (_g993110089_ _$stx9928_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#rec|
      (lambda (_$stx10094_)
        (let ((_g1010010153_
               (lambda (_g1010110149_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1010110149_))))
          (let ((_g1009910252_
                 (lambda (_g1010110157_)
                   (if (gx#stx-pair? _g1010110157_)
                       (let ((_e1013010160_ (gx#syntax-e _g1010110157_)))
                         (let ((_hd1013110164_ (##car _e1013010160_))
                               (_tl1013210167_ (##cdr _e1013010160_)))
                           (if (gx#stx-pair? _tl1013210167_)
                               (let ((_e1013310170_
                                      (gx#syntax-e _tl1013210167_)))
                                 (let ((_hd1013410174_ (##car _e1013310170_))
                                       (_tl1013510177_ (##cdr _e1013310170_)))
                                   (if (gx#stx-pair? _hd1013410174_)
                                       (let ((_e1013610180_
                                              (gx#syntax-e _hd1013410174_)))
                                         (let ((_hd1013710184_
                                                (##car _e1013610180_))
                                               (_tl1013810187_
                                                (##cdr _e1013610180_)))
                                           (if (gx#stx-pair/null?
                                                _tl1013510177_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1013510177_)
                                                         '0)
                                                   (let ((_g29460_
                                                          (gx#syntax-split-splice
                                                           _tl1013510177_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29461_
                                                              (values-count
                                                               _g29460_)))
                                                         (if (not (fx= _g29461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29461_)))
               (let ((_target1013910190_ (values-ref _g29460_ 0))
                     (_tl1014110193_ (values-ref _g29460_ 1)))
                 (if (gx#stx-null? _tl1014110193_)
                     (letrec ((_loop1014210196_
                               (lambda (_hd1014010200_ _body1014610203_)
                                 (if (gx#stx-pair? _hd1014010200_)
                                     (let ((_e1014310206_
                                            (gx#syntax-e _hd1014010200_)))
                                       (let ((_lp-hd1014410210_
                                              (##car _e1014310206_))
                                             (_lp-tl1014510213_
                                              (##cdr _e1014310206_)))
                                         (_loop1014210196_
                                          _lp-tl1014510213_
                                          (cons _lp-hd1014410210_
                                                _body1014610203_))))
                                     (let ((_body1014710216_
                                            (reverse _body1014610203_)))
                                       ((lambda (_L10220_ _L10222_ _L10223_)
                                          (if (gx#identifier? _L10223_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec)
                                                    (cons (cons (cons _L10223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons _L10222_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1024310246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1024410249_)
                   (cons _g1024310246_ _g1024410249_))
                 '()
                 _L10220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L10223_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1010010153_ _g1010110157_)))
                                        _body1014710216_
                                        _tl1013810187_
                                        _hd1013710184_))))))
                       (_loop1014210196_ _target1013910190_ '()))
                     (_g1010010153_ _g1010110157_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1010010153_
                                                    _g1010110157_))
                                               (_g1010010153_ _g1010110157_))))
                                       (_g1010010153_ _g1010110157_))))
                               (_g1010010153_ _g1010110157_))))
                       (_g1010010153_ _g1010110157_)))))
            (let ((_g1009810318_
                   (lambda (_g1010110256_)
                     (if (gx#stx-pair? _g1010110256_)
                         (let ((_e1011510259_ (gx#syntax-e _g1010110256_)))
                           (let ((_hd1011610263_ (##car _e1011510259_))
                                 (_tl1011710266_ (##cdr _e1011510259_)))
                             (if (gx#stx-pair? _tl1011710266_)
                                 (let ((_e1011810269_
                                        (gx#syntax-e _tl1011710266_)))
                                   (let ((_hd1011910273_ (##car _e1011810269_))
                                         (_tl1012010276_
                                          (##cdr _e1011810269_)))
                                     (if (gx#stx-pair? _hd1011910273_)
                                         (let ((_e1012110279_
                                                (gx#syntax-e _hd1011910273_)))
                                           (let ((_hd1012210283_
                                                  (##car _e1012110279_))
                                                 (_tl1012310286_
                                                  (##cdr _e1012110279_)))
                                             (if (gx#identifier?
                                                  _hd1012210283_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g29462_|
                                                      _hd1012210283_)
                                                     (if (gx#stx-pair?
                                                          _tl1012010276_)
                                                         (let ((_e1012410289_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1012010276_)))
                   (let ((_hd1012510293_ (##car _e1012410289_))
                         (_tl1012610296_ (##cdr _e1012410289_)))
                     (if (gx#stx-null? _tl1012610296_)
                         ((lambda (_L10299_ _L10301_)
                            (if (gx#identifier-list? _L10301_)
                                (cons (gx#datum->syntax '#f 'letrec-values)
                                      (cons (cons (cons _L10301_
                                                        (cons _L10299_ '()))
                                                  '())
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'values)
                                                        _L10301_)
                                                  '())))
                                (_g1009910252_ _g1010110256_)))
                          _hd1012510293_
                          _tl1012310286_)
                         (_g1009910252_ _g1010110256_))))
                 (_g1009910252_ _g1010110256_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1009910252_
                                                      _g1010110256_))
                                                 (_g1009910252_
                                                  _g1010110256_))))
                                         (_g1009910252_ _g1010110256_))))
                                 (_g1009910252_ _g1010110256_))))
                         (_g1009910252_ _g1010110256_)))))
              (let ((_g1009710372_
                     (lambda (_g1010110322_)
                       (if (gx#stx-pair? _g1010110322_)
                           (let ((_e1010410325_ (gx#syntax-e _g1010110322_)))
                             (let ((_hd1010510329_ (##car _e1010410325_))
                                   (_tl1010610332_ (##cdr _e1010410325_)))
                               (if (gx#stx-pair? _tl1010610332_)
                                   (let ((_e1010710335_
                                          (gx#syntax-e _tl1010610332_)))
                                     (let ((_hd1010810339_
                                            (##car _e1010710335_))
                                           (_tl1010910342_
                                            (##cdr _e1010710335_)))
                                       (if (gx#stx-pair? _tl1010910342_)
                                           (let ((_e1011010345_
                                                  (gx#syntax-e
                                                   _tl1010910342_)))
                                             (let ((_hd1011110349_
                                                    (##car _e1011010345_))
                                                   (_tl1011210352_
                                                    (##cdr _e1011010345_)))
                                               (if (gx#stx-null?
                                                    _tl1011210352_)
                                                   ((lambda (_L10355_ _L10357_)
                                                      (if (gx#identifier?
                                                           _L10357_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L10357_ (cons _L10355_ '())) '())
                              (cons _L10357_ '())))
                  (_g1009810318_ _g1010110322_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1011110349_
                                                    _hd1010810339_)
                                                   (_g1009810318_
                                                    _g1010110322_))))
                                           (_g1009810318_ _g1010110322_))))
                                   (_g1009810318_ _g1010110322_))))
                           (_g1009810318_ _g1010110322_)))))
                (_g1009710372_ _$stx10094_)))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet|
      (lambda (_stx10377_)
        (let ((_let-head?10380_
               (lambda (_x10927_)
                 (let ((_g1093110942_
                        (lambda (_g1093210938_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1093210938_))))
                   (let ((_g1093010953_
                          (lambda (_g1093210946_)
                            ((lambda () (gx#identifier? _x10927_))))))
                     (let ((_g1092910983_
                            (lambda (_g1093210957_)
                              (if (gx#stx-pair? _g1093210957_)
                                  (let ((_e1093410960_
                                         (gx#syntax-e _g1093210957_)))
                                    (let ((_hd1093510964_
                                           (##car _e1093410960_))
                                          (_tl1093610967_
                                           (##cdr _e1093410960_)))
                                      (if (gx#identifier? _hd1093510964_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:2>[1]#_g29472_|
                                               _hd1093510964_)
                                              ((lambda (_L10970_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L10970_))
                                               _tl1093610967_)
                                              (_g1093010953_ _g1093210957_))
                                          (_g1093010953_ _g1093210957_))))
                                  (_g1093010953_ _g1093210957_)))))
                       (_g1092910983_ _x10927_)))))))
          (let ((_let-head10382_
                 (lambda (_x10867_)
                   (let ((_g1087110882_
                          (lambda (_g1087210878_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1087210878_))))
                     (let ((_g1087010893_
                            (lambda (_g1087210886_)
                              ((lambda () (list _x10867_))))))
                       (let ((_g1086910923_
                              (lambda (_g1087210897_)
                                (if (gx#stx-pair? _g1087210897_)
                                    (let ((_e1087410900_
                                           (gx#syntax-e _g1087210897_)))
                                      (let ((_hd1087510904_
                                             (##car _e1087410900_))
                                            (_tl1087610907_
                                             (##cdr _e1087410900_)))
                                        (if (gx#identifier? _hd1087510904_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:2>[1]#_g29471_|
                                                 _hd1087510904_)
                                                ((lambda (_L10910_) _L10910_)
                                                 _tl1087610907_)
                                                (_g1087010893_ _g1087210897_))
                                            (_g1087010893_ _g1087210897_))))
                                    (_g1087010893_ _g1087210897_)))))
                         (_g1086910923_ _x10867_)))))))
            (let ((_g1038510443_
                   (lambda (_g1038610439_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1038610439_))))
              (let ((_g1038410793_
                     (lambda (_g1038610447_)
                       (if (gx#stx-pair? _g1038610447_)
                           (let ((_e1040610450_ (gx#syntax-e _g1038610447_)))
                             (let ((_hd1040710454_ (##car _e1040610450_))
                                   (_tl1040810457_ (##cdr _e1040610450_)))
                               (if (gx#stx-pair? _tl1040810457_)
                                   (let ((_e1040910460_
                                          (gx#syntax-e _tl1040810457_)))
                                     (let ((_hd1041010464_
                                            (##car _e1040910460_))
                                           (_tl1041110467_
                                            (##cdr _e1040910460_)))
                                       (if (gx#stx-pair/null? _hd1041010464_)
                                           (if (fx>= (gx#stx-length
                                                      _hd1041010464_)
                                                     '0)
                                               (let ((_g29463_
                                                      (gx#syntax-split-splice
                                                       _hd1041010464_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29464_
                                                          (values-count
                                                           _g29463_)))
                                                     (if (not (fx= _g29464_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29464_)))
                                                   (let ((_target1041210470_
                                                          (values-ref
                                                           _g29463_
                                                           0))
                                                         (_tl1041410473_
                                                          (values-ref
                                                           _g29463_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl1041410473_)
                                                         (letrec ((_loop1041510476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1041310480_
                                    _e1041910483_
                                    _hd1042010485_)
                             (if (gx#stx-pair? _hd1041310480_)
                                 (let ((_e1041610488_
                                        (gx#syntax-e _hd1041310480_)))
                                   (let ((_lp-hd1041710492_
                                          (##car _e1041610488_))
                                         (_lp-tl1041810495_
                                          (##cdr _e1041610488_)))
                                     (if (gx#stx-pair? _lp-hd1041710492_)
                                         (let ((_e1042310498_
                                                (gx#syntax-e
                                                 _lp-hd1041710492_)))
                                           (let ((_hd1042410502_
                                                  (##car _e1042310498_))
                                                 (_tl1042510505_
                                                  (##cdr _e1042310498_)))
                                             (if (gx#stx-pair? _tl1042510505_)
                                                 (let ((_e1042610508_
                                                        (gx#syntax-e
                                                         _tl1042510505_)))
                                                   (let ((_hd1042710512_
                                                          (##car _e1042610508_))
                                                         (_tl1042810515_
                                                          (##cdr _e1042610508_)))
                                                     (if (gx#stx-null?
                                                          _tl1042810515_)
                                                         (_loop1041510476_
                                                          _lp-tl1041810495_
                                                          (cons _hd1042710512_
                                                                _e1041910483_)
                                                          (cons _hd1042410502_
                                                                _hd1042010485_))
                                                         (_g1038510443_
                                                          _g1038610447_))))
                                                 (_g1038510443_
                                                  _g1038610447_))))
                                         (_g1038510443_ _g1038610447_))))
                                 (let ((_e1042110518_ (reverse _e1041910483_))
                                       (_hd1042210521_
                                        (reverse _hd1042010485_)))
                                   (if (gx#stx-pair/null? _tl1041110467_)
                                       (if (fx>= (gx#stx-length _tl1041110467_)
                                                 '0)
                                           (let ((_g29465_
                                                  (gx#syntax-split-splice
                                                   _tl1041110467_
                                                   '0)))
                                             (begin
                                               (let ((_g29466_
                                                      (values-count _g29465_)))
                                                 (if (not (fx= _g29466_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29466_)))
                                               (let ((_target1042910524_
                                                      (values-ref _g29465_ 0))
                                                     (_tl1043110527_
                                                      (values-ref _g29465_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1043110527_)
                                                     (letrec ((_loop1043210530_
                                                               (lambda (_hd1043010534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body1043610537_)
                         (if (gx#stx-pair? _hd1043010534_)
                             (let ((_e1043310540_
                                    (gx#syntax-e _hd1043010534_)))
                               (let ((_lp-hd1043410544_ (##car _e1043310540_))
                                     (_lp-tl1043510547_ (##cdr _e1043310540_)))
                                 (_loop1043210530_
                                  _lp-tl1043510547_
                                  (cons _lp-hd1043410544_ _body1043610537_))))
                             (let ((_body1043710550_
                                    (reverse _body1043610537_)))
                               ((lambda (_L10554_ _L10556_ _L10557_)
                                  (if (gx#stx-andmap
                                       _let-head?10380_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1058010583_
                                                         _g1058110586_)
                                                  (cons _g1058010583_
                                                        _g1058110586_))
                                                '()
                                                _L10557_)))
                                      (let ((_g1058910622_
                                             (lambda (_g1059010618_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1059010618_))))
                                        (let ((_g1058810773_
                                               (lambda (_g1059010626_)
                                                 (if (gx#stx-pair?
                                                      _g1059010626_)
                                                     (let ((_e1059310629_
                                                            (gx#syntax-e
                                                             _g1059010626_)))
                                                       (let ((_hd1059410633_
                                                              (##car _e1059310629_))
                                                             (_tl1059510636_
                                                              (##cdr _e1059310629_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1059410633_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1059410633_)
                               '0)
                         (let ((_g29467_
                                (gx#syntax-split-splice _hd1059410633_ '0)))
                           (begin
                             (let ((_g29468_ (values-count _g29467_)))
                               (if (not (fx= _g29468_ 2))
                                   (error "Context expects 2 values"
                                          _g29468_)))
                             (let ((_target1059610639_ (values-ref _g29467_ 0))
                                   (_tl1059810642_ (values-ref _g29467_ 1)))
                               (if (gx#stx-null? _tl1059810642_)
                                   (letrec ((_loop1059910645_
                                             (lambda (_hd1059710649_
                                                      _$e1060310652_)
                                               (if (gx#stx-pair?
                                                    _hd1059710649_)
                                                   (let ((_e1060010655_
                                                          (gx#syntax-e
                                                           _hd1059710649_)))
                                                     (let ((_lp-hd1060110659_
                                                            (##car _e1060010655_))
                                                           (_lp-tl1060210662_
                                                            (##cdr _e1060010655_)))
                                                       (_loop1059910645_
                                                        _lp-tl1060210662_
                                                        (cons _lp-hd1060110659_
                                                              _$e1060310652_))))
                                                   (let ((_$e1060410665_
                                                          (reverse _$e1060310652_)))
                                                     (if (gx#stx-pair?
                                                          _tl1059510636_)
                                                         (let ((_e1060510669_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1059510636_)))
                   (let ((_hd1060610673_ (##car _e1060510669_))
                         (_tl1060710676_ (##cdr _e1060510669_)))
                     (if (gx#stx-pair/null? _hd1060610673_)
                         (if (fx>= (gx#stx-length _hd1060610673_) '0)
                             (let ((_g29469_
                                    (gx#syntax-split-splice
                                     _hd1060610673_
                                     '0)))
                               (begin
                                 (let ((_g29470_ (values-count _g29469_)))
                                   (if (not (fx= _g29470_ 2))
                                       (error "Context expects 2 values"
                                              _g29470_)))
                                 (let ((_target1060810679_
                                        (values-ref _g29469_ 0))
                                       (_tl1061010682_
                                        (values-ref _g29469_ 1)))
                                   (if (gx#stx-null? _tl1061010682_)
                                       (letrec ((_loop1061110685_
                                                 (lambda (_hd1060910689_
                                                          _hd-bind1061510692_)
                                                   (if (gx#stx-pair?
                                                        _hd1060910689_)
                                                       (let ((_e1061210695_
                                                              (gx#syntax-e
                                                               _hd1060910689_)))
                                                         (let ((_lp-hd1061310699_
                                                                (##car _e1061210695_))
                                                               (_lp-tl1061410702_
                                                                (##cdr _e1061210695_)))
                                                           (_loop1061110685_
                                                            _lp-tl1061410702_
                                                            (cons _lp-hd1061310699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd-bind1061510692_))))
               (let ((_hd-bind1061610705_ (reverse _hd-bind1061510692_)))
                 (if (gx#stx-null? _tl1060710676_)
                     ((lambda (_L10709_ _L10711_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let-values)
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _L10556_
                                         _L10711_)
                                        (foldr (lambda (_g1073410745_
                                                        _g1073510748_
                                                        _g1073610750_)
                                                 (cons (cons (cons _g1073510748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _g1073410745_ '()))
               _g1073610750_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _L10556_
                                               _L10711_))
                                      (cons (cons (gx#datum->syntax '#f 'and)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1073710753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1073810756_)
                     (cons _g1073710753_ _g1073810756_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L10711_
                                        _L10709_)
                                       (foldr (lambda (_g1073910759_
                                                       _g1074010762_
                                                       _g1074110764_)
                                                (cons (cons _g1074010762_
                                                            (cons _g1073910759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g1074110764_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L10711_
                                              _L10709_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1074210767_
                                                       _g1074310770_)
                                                (cons _g1074210767_
                                                      _g1074310770_))
                                              '()
                                              _L10554_))))
                         '())
                   _L10711_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _hd-bind1061610705_
                      _$e1060410665_)
                     (_g1058910622_ _g1059010626_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1061110685_
                                          _target1060810679_
                                          '()))
                                       (_g1058910622_ _g1059010626_)))))
                             (_g1058910622_ _g1059010626_))
                         (_g1058910622_ _g1059010626_))))
                 (_g1058910622_ _g1059010626_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1059910645_ _target1059610639_ '()))
                                   (_g1058910622_ _g1059010626_)))))
                         (_g1058910622_ _g1059010626_))
                     (_g1058910622_ _g1059010626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1058910622_
                                                      _g1059010626_)))))
                                          (_g1058810773_
                                           (list (gx#gentemps
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1077610779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1077710782_)
                     (cons _g1077610779_ _g1077710782_))
                   '()
                   _L10557_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-map
                                                  _let-head10382_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1078410787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1078510790_)
                     (cons _g1078410787_ _g1078510790_))
                   '()
                   _L10557_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g1038510443_ _g1038610447_)))
                                _body1043710550_
                                _e1042110518_
                                _hd1042210521_))))))
               (_loop1043210530_ _target1042910524_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1038510443_
                                                      _g1038610447_)))))
                                           (_g1038510443_ _g1038610447_))
                                       (_g1038510443_ _g1038610447_)))))))
                   (_loop1041510476_ _target1041210470_ '() '()))
                 (_g1038510443_ _g1038610447_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1038510443_ _g1038610447_))
                                           (_g1038510443_ _g1038610447_))))
                                   (_g1038510443_ _g1038610447_))))
                           (_g1038510443_ _g1038610447_)))))
                (let ((_g1038310863_
                       (lambda (_g1038610797_)
                         (if (gx#stx-pair? _g1038610797_)
                             (let ((_e1039110800_ (gx#syntax-e _g1038610797_)))
                               (let ((_hd1039210804_ (##car _e1039110800_))
                                     (_tl1039310807_ (##cdr _e1039110800_)))
                                 (if (gx#stx-pair? _tl1039310807_)
                                     (let ((_e1039410810_
                                            (gx#syntax-e _tl1039310807_)))
                                       (let ((_hd1039510814_
                                              (##car _e1039410810_))
                                             (_tl1039610817_
                                              (##cdr _e1039410810_)))
                                         (if (gx#stx-pair? _hd1039510814_)
                                             (let ((_e1039710820_
                                                    (gx#syntax-e
                                                     _hd1039510814_)))
                                               (let ((_hd1039810824_
                                                      (##car _e1039710820_))
                                                     (_tl1039910827_
                                                      (##cdr _e1039710820_)))
                                                 (if (gx#stx-pair?
                                                      _tl1039910827_)
                                                     (let ((_e1040010830_
                                                            (gx#syntax-e
                                                             _tl1039910827_)))
                                                       (let ((_hd1040110834_
                                                              (##car _e1040010830_))
                                                             (_tl1040210837_
                                                              (##cdr _e1040010830_)))
                                                         (if (gx#stx-null?
                                                              _tl1040210837_)
                                                             ((lambda (_L10840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10842_
                               _L10843_
                               _L10844_)
                        (if (_let-head?10380_ _L10843_)
                            (cons _L10844_
                                  (cons (cons (cons _L10843_
                                                    (cons _L10842_ '()))
                                              '())
                                        _L10840_))
                            (_g1038410793_ _g1038610797_)))
                      _tl1039610817_
                      _hd1040110834_
                      _hd1039810824_
                      _hd1039210804_)
                     (_g1038410793_ _g1038610797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1038410793_
                                                      _g1038610797_))))
                                             (_g1038410793_ _g1038610797_))))
                                     (_g1038410793_ _g1038610797_))))
                             (_g1038410793_ _g1038610797_)))))
                  (_g1038310863_ _stx10377_))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet*|
      (lambda (_$stx10991_)
        (let ((_g1099611041_
               (lambda (_g1099711037_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1099711037_))))
          (let ((_g1099511142_
                 (lambda (_g1099711045_)
                   (if (gx#stx-pair? _g1099711045_)
                       (let ((_e1101811048_ (gx#syntax-e _g1099711045_)))
                         (let ((_hd1101911052_ (##car _e1101811048_))
                               (_tl1102011055_ (##cdr _e1101811048_)))
                           (if (gx#stx-pair? _tl1102011055_)
                               (let ((_e1102111058_
                                      (gx#syntax-e _tl1102011055_)))
                                 (let ((_hd1102211062_ (##car _e1102111058_))
                                       (_tl1102311065_ (##cdr _e1102111058_)))
                                   (if (gx#stx-pair? _hd1102211062_)
                                       (let ((_e1102411068_
                                              (gx#syntax-e _hd1102211062_)))
                                         (let ((_hd1102511072_
                                                (##car _e1102411068_))
                                               (_tl1102611075_
                                                (##cdr _e1102411068_)))
                                           (if (gx#stx-pair/null?
                                                _tl1102311065_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1102311065_)
                                                         '0)
                                                   (let ((_g29473_
                                                          (gx#syntax-split-splice
                                                           _tl1102311065_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29474_
                                                              (values-count
                                                               _g29473_)))
                                                         (if (not (fx= _g29474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29474_)))
               (let ((_target1102711078_ (values-ref _g29473_ 0))
                     (_tl1102911081_ (values-ref _g29473_ 1)))
                 (if (gx#stx-null? _tl1102911081_)
                     (letrec ((_loop1103011084_
                               (lambda (_hd1102811088_ _body1103411091_)
                                 (if (gx#stx-pair? _hd1102811088_)
                                     (let ((_e1103111094_
                                            (gx#syntax-e _hd1102811088_)))
                                       (let ((_lp-hd1103211098_
                                              (##car _e1103111094_))
                                             (_lp-tl1103311101_
                                              (##cdr _e1103111094_)))
                                         (_loop1103011084_
                                          _lp-tl1103311101_
                                          (cons _lp-hd1103211098_
                                                _body1103411091_))))
                                     (let ((_body1103511104_
                                            (reverse _body1103411091_)))
                                       ((lambda (_L11108_
                                                 _L11110_
                                                 _L11111_
                                                 _L11112_)
                                          (cons (gx#datum->syntax '#f 'alet)
                                                (cons (cons _L11111_ '())
                                                      (cons (cons _L11112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L11110_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1113311136_ _g1113411139_)
                                           (cons _g1113311136_ _g1113411139_))
                                         '()
                                         _L11108_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body1103511104_
                                        _tl1102611075_
                                        _hd1102511072_
                                        _hd1101911052_))))))
                       (_loop1103011084_ _target1102711078_ '()))
                     (_g1099611041_ _g1099711045_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1099611041_
                                                    _g1099711045_))
                                               (_g1099611041_ _g1099711045_))))
                                       (_g1099611041_ _g1099711045_))))
                               (_g1099611041_ _g1099711045_))))
                       (_g1099611041_ _g1099711045_)))))
            (let ((_g1099411224_
                   (lambda (_g1099711146_)
                     (if (gx#stx-pair? _g1099711146_)
                         (let ((_e1099911149_ (gx#syntax-e _g1099711146_)))
                           (let ((_hd1100011153_ (##car _e1099911149_))
                                 (_tl1100111156_ (##cdr _e1099911149_)))
                             (if (gx#stx-pair? _tl1100111156_)
                                 (let ((_e1100211159_
                                        (gx#syntax-e _tl1100111156_)))
                                   (let ((_hd1100311163_ (##car _e1100211159_))
                                         (_tl1100411166_
                                          (##cdr _e1100211159_)))
                                     (if (gx#stx-null? _hd1100311163_)
                                         (if (gx#stx-pair/null? _tl1100411166_)
                                             (if (fx>= (gx#stx-length
                                                        _tl1100411166_)
                                                       '0)
                                                 (let ((_g29475_
                                                        (gx#syntax-split-splice
                                                         _tl1100411166_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29476_
                                                            (values-count
                                                             _g29475_)))
                                                       (if (not (fx= _g29476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29476_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1100511169_
                                                            (values-ref
                                                             _g29475_
                                                             0))
                                                           (_tl1100711172_
                                                            (values-ref
                                                             _g29475_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1100711172_)
                                                           (letrec ((_loop1100811175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1100611179_ _body1101211182_)
                               (if (gx#stx-pair? _hd1100611179_)
                                   (let ((_e1100911185_
                                          (gx#syntax-e _hd1100611179_)))
                                     (let ((_lp-hd1101011189_
                                            (##car _e1100911185_))
                                           (_lp-tl1101111192_
                                            (##cdr _e1100911185_)))
                                       (_loop1100811175_
                                        _lp-tl1101111192_
                                        (cons _lp-hd1101011189_
                                              _body1101211182_))))
                                   (let ((_body1101311195_
                                          (reverse _body1101211182_)))
                                     ((lambda (_L11199_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1121511218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1121611221_)
                       (cons _g1121511218_ _g1121611221_))
                     '()
                     _L11199_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body1101311195_))))))
                     (_loop1100811175_ _target1100511169_ '()))
                   (_g1099511142_ _g1099711146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1099511142_ _g1099711146_))
                                             (_g1099511142_ _g1099711146_))
                                         (_g1099511142_ _g1099711146_))))
                                 (_g1099511142_ _g1099711146_))))
                         (_g1099511142_ _g1099711146_)))))
              (_g1099411224_ _$stx10991_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#@list|
      (lambda (_$stx11230_)
        (let ((_g1123911296_
               (lambda (_g1124011292_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1124011292_))))
          (let ((_g1123811325_
                 (lambda (_g1124011300_)
                   (if (gx#stx-pair? _g1124011300_)
                       (let ((_e1128811303_ (gx#syntax-e _g1124011300_)))
                         (let ((_hd1128911307_ (##car _e1128811303_))
                               (_tl1129011310_ (##cdr _e1128811303_)))
                           ((lambda (_L11313_) _L11313_) _tl1129011310_)))
                       (_g1123911296_ _g1124011300_)))))
            (let ((_g1123711369_
                   (lambda (_g1124011329_)
                     (if (gx#stx-pair? _g1124011329_)
                         (let ((_e1128111332_ (gx#syntax-e _g1124011329_)))
                           (let ((_hd1128211336_ (##car _e1128111332_))
                                 (_tl1128311339_ (##cdr _e1128111332_)))
                             (if (gx#stx-pair? _tl1128311339_)
                                 (let ((_e1128411342_
                                        (gx#syntax-e _tl1128311339_)))
                                   (let ((_hd1128511346_ (##car _e1128411342_))
                                         (_tl1128611349_
                                          (##cdr _e1128411342_)))
                                     ((lambda (_L11352_ _L11354_ _L11355_)
                                        (cons (gx#datum->syntax '#f 'cons)
                                              (cons _L11354_
                                                    (cons (cons _L11355_
                                                                _L11352_)
                                                          '()))))
                                      _tl1128611349_
                                      _hd1128511346_
                                      _hd1128211336_)))
                                 (_g1123811325_ _g1124011329_))))
                         (_g1123811325_ _g1124011329_)))))
              (let ((_g1123611427_
                     (lambda (_g1124011373_)
                       (if (gx#stx-pair? _g1124011373_)
                           (let ((_e1126911376_ (gx#syntax-e _g1124011373_)))
                             (let ((_hd1127011380_ (##car _e1126911376_))
                                   (_tl1127111383_ (##cdr _e1126911376_)))
                               (if (gx#stx-pair? _tl1127111383_)
                                   (let ((_e1127211386_
                                          (gx#syntax-e _tl1127111383_)))
                                     (let ((_hd1127311390_
                                            (##car _e1127211386_))
                                           (_tl1127411393_
                                            (##cdr _e1127211386_)))
                                       (if (gx#stx-pair? _tl1127411393_)
                                           (let ((_e1127511396_
                                                  (gx#syntax-e
                                                   _tl1127411393_)))
                                             (let ((_hd1127611400_
                                                    (##car _e1127511396_))
                                                   (_tl1127711403_
                                                    (##cdr _e1127511396_)))
                                               ((lambda (_L11406_
                                                         _L11408_
                                                         _L11409_
                                                         _L11410_)
                                                  (if (gx#ellipsis? _L11408_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'foldr)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons)
                          (cons (cons _L11410_ _L11406_) (cons _L11409_ '()))))
              (_g1123711369_ _g1124011373_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1127711403_
                                                _hd1127611400_
                                                _hd1127311390_
                                                _hd1127011380_)))
                                           (_g1123711369_ _g1124011373_))))
                                   (_g1123711369_ _g1124011373_))))
                           (_g1123711369_ _g1124011373_)))))
                (let ((_g1123511481_
                       (lambda (_g1124011431_)
                         (if (gx#stx-pair? _g1124011431_)
                             (let ((_e1125611434_ (gx#syntax-e _g1124011431_)))
                               (let ((_hd1125711438_ (##car _e1125611434_))
                                     (_tl1125811441_ (##cdr _e1125611434_)))
                                 (if (gx#stx-pair? _tl1125811441_)
                                     (let ((_e1125911444_
                                            (gx#syntax-e _tl1125811441_)))
                                       (let ((_hd1126011448_
                                              (##car _e1125911444_))
                                             (_tl1126111451_
                                              (##cdr _e1125911444_)))
                                         (if (gx#stx-pair? _tl1126111451_)
                                             (let ((_e1126211454_
                                                    (gx#syntax-e
                                                     _tl1126111451_)))
                                               (let ((_hd1126311458_
                                                      (##car _e1126211454_))
                                                     (_tl1126411461_
                                                      (##cdr _e1126211454_)))
                                                 (if (gx#stx-null?
                                                      _tl1126411461_)
                                                     ((lambda (_L11464_
                                                               _L11466_)
                                                        (if (gx#ellipsis?
                                                             _L11464_)
                                                            _L11466_
                                                            (_g1123611427_
                                                             _g1124011431_)))
                                                      _hd1126311458_
                                                      _hd1126011448_)
                                                     (_g1123611427_
                                                      _g1124011431_))))
                                             (_g1123611427_ _g1124011431_))))
                                     (_g1123611427_ _g1124011431_))))
                             (_g1123611427_ _g1124011431_)))))
                  (let ((_g1123411533_
                         (lambda (_g1124011485_)
                           (if (gx#stx-pair? _g1124011485_)
                               (let ((_e1124511488_
                                      (gx#syntax-e _g1124011485_)))
                                 (let ((_hd1124611492_ (##car _e1124511488_))
                                       (_tl1124711495_ (##cdr _e1124511488_)))
                                   (if (gx#stx-pair? _tl1124711495_)
                                       (let ((_e1124811498_
                                              (gx#syntax-e _tl1124711495_)))
                                         (let ((_hd1124911502_
                                                (##car _e1124811498_))
                                               (_tl1125011505_
                                                (##cdr _e1124811498_)))
                                           (if (gx#stx-datum? _hd1124911502_)
                                               (if (equal? (gx#stx-e
                                                            _hd1124911502_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl1125011505_)
                                                       (let ((_e1125111508_
                                                              (gx#syntax-e
                                                               _tl1125011505_)))
                                                         (let ((_hd1125211512_
                                                                (##car _e1125111508_))
                                                               (_tl1125311515_
                                                                (##cdr _e1125111508_)))
                                                           (if (gx#stx-null?
                                                                _tl1125311515_)
                                                               ((lambda (_L11518_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11518_)
                        _hd1125211512_)
                       (_g1123511481_ _g1124011485_))))
               (_g1123511481_ _g1124011485_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1123511481_
                                                    _g1124011485_))
                                               (_g1123511481_ _g1124011485_))))
                                       (_g1123511481_ _g1124011485_))))
                               (_g1123511481_ _g1124011485_)))))
                    (let ((_g1123311554_
                           (lambda (_g1124011537_)
                             (if (gx#stx-pair? _g1124011537_)
                                 (let ((_e1124111540_
                                        (gx#syntax-e _g1124011537_)))
                                   (let ((_hd1124211544_ (##car _e1124111540_))
                                         (_tl1124311547_
                                          (##cdr _e1124111540_)))
                                     (if (gx#stx-null? _tl1124311547_)
                                         ((lambda ()
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons '() '()))))
                                         (_g1123411533_ _g1124011537_))))
                                 (_g1123411533_ _g1124011537_)))))
                      (_g1123311554_ _$stx11230_))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#quasiquote|
      (lambda (_stx11558_)
        (letrec ((_simple-quote?11561_
                  (lambda (_e12253_)
                    (let ((_g1226112298_
                           (lambda (_g1226212294_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1226212294_))))
                      (let ((_g1226012309_
                             (lambda (_g1226212302_) ((lambda () '#t)))))
                        (let ((_g1225912332_
                               (lambda (_g1226212313_)
                                 (if (gx#stx-box? _g1226212313_)
                                     (let ((_e1229212316_
                                            (unbox (gx#syntax-e
                                                    _g1226212313_))))
                                       ((lambda (_L12320_)
                                          (_simple-quote?11561_ _L12320_))
                                        _e1229212316_))
                                     (_g1226012309_ _g1226212313_)))))
                          (let ((_g1225812395_
                                 (lambda (_g1226212336_)
                                   (if (gx#stx-vector? _g1226212336_)
                                       (let ((_e1228112339_
                                              (vector->list
                                               (gx#syntax-e _g1226212336_))))
                                         (if (gx#stx-pair/null? _e1228112339_)
                                             (if (fx>= (gx#stx-length
                                                        _e1228112339_)
                                                       '0)
                                                 (let ((_g29477_
                                                        (gx#syntax-split-splice
                                                         _e1228112339_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29478_
                                                            (values-count
                                                             _g29477_)))
                                                       (if (not (fx= _g29478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29478_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1228212343_
                                                            (values-ref
                                                             _g29477_
                                                             0))
                                                           (_tl1228412346_
                                                            (values-ref
                                                             _g29477_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1228412346_)
                                                           (letrec ((_loop1228512349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1228312353_ _e1228912356_)
                               (if (gx#stx-pair? _hd1228312353_)
                                   (let ((_e1228612359_
                                          (gx#syntax-e _hd1228312353_)))
                                     (let ((_lp-hd1228712363_
                                            (##car _e1228612359_))
                                           (_lp-tl1228812366_
                                            (##cdr _e1228612359_)))
                                       (_loop1228512349_
                                        _lp-tl1228812366_
                                        (cons _lp-hd1228712363_
                                              _e1228912356_))))
                                   (let ((_e1229012369_
                                          (reverse _e1228912356_)))
                                     ((lambda (_L12373_)
                                        (_simple-quote?11561_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1238612389_
                                                           _g1238712392_)
                                                    (cons _g1238612389_
                                                          _g1238712392_))
                                                  '()
                                                  _L12373_))))
                                      _e1229012369_))))))
                     (_loop1228512349_ _target1228212343_ '()))
                   (_g1225912332_ _g1226212336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1225912332_ _g1226212336_))
                                             (_g1225912332_ _g1226212336_)))
                                       (_g1225912332_ _g1226212336_)))))
                            (let ((_g1225712425_
                                   (lambda (_g1226212399_)
                                     (if (gx#stx-pair? _g1226212399_)
                                         (let ((_e1227712402_
                                                (gx#syntax-e _g1226212399_)))
                                           (let ((_hd1227812406_
                                                  (##car _e1227712402_))
                                                 (_tl1227912409_
                                                  (##cdr _e1227712402_)))
                                             ((lambda (_L12412_ _L12414_)
                                                (if (_simple-quote?11561_
                                                     _L12414_)
                                                    (_simple-quote?11561_
                                                     _L12412_)
                                                    '#f))
                                              _tl1227912409_
                                              _hd1227812406_)))
                                         (_g1225812395_ _g1226212399_)))))
                              (let ((_g1225612456_
                                     (lambda (_g1226212429_)
                                       (if (gx#stx-pair? _g1226212429_)
                                           (let ((_e1226912432_
                                                  (gx#syntax-e _g1226212429_)))
                                             (let ((_hd1227012436_
                                                    (##car _e1226912432_))
                                                   (_tl1227112439_
                                                    (##cdr _e1226912432_)))
                                               (if (gx#identifier?
                                                    _hd1227012436_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<sugar>::<sugar:2>[1]#_g29479_|
                                                        _hd1227012436_)
                                                       (if (gx#stx-pair?
                                                            _tl1227112439_)
                                                           (let ((_e1227212442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1227112439_)))
                     (let ((_hd1227312446_ (##car _e1227212442_))
                           (_tl1227412449_ (##cdr _e1227212442_)))
                       (if (gx#stx-null? _tl1227412449_)
                           ((lambda () '#f))
                           (_g1225712425_ _g1226212429_))))
                   (_g1225712425_ _g1226212429_))
               (_g1225712425_ _g1226212429_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1225712425_
                                                    _g1226212429_))))
                                           (_g1225712425_ _g1226212429_)))))
                                (let ((_g1225512487_
                                       (lambda (_g1226212460_)
                                         (if (gx#stx-pair? _g1226212460_)
                                             (let ((_e1226312463_
                                                    (gx#syntax-e
                                                     _g1226212460_)))
                                               (let ((_hd1226412467_
                                                      (##car _e1226312463_))
                                                     (_tl1226512470_
                                                      (##cdr _e1226312463_)))
                                                 (if (gx#identifier?
                                                      _hd1226412467_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29480_|
                                                          _hd1226412467_)
                                                         (if (gx#stx-pair?
                                                              _tl1226512470_)
                                                             (let ((_e1226612473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1226512470_)))
                       (let ((_hd1226712477_ (##car _e1226612473_))
                             (_tl1226812480_ (##cdr _e1226612473_)))
                         (if (gx#stx-null? _tl1226812480_)
                             ((lambda () '#f))
                             (_g1225612456_ _g1226212460_))))
                     (_g1225612456_ _g1226212460_))
                 (_g1225612456_ _g1226212460_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1225612456_
                                                      _g1226212460_))))
                                             (_g1225612456_ _g1226212460_)))))
                                  (_g1225512487_ _e12253_))))))))))
                 (_generate11563_
                  (lambda (_e11625_ _d11627_)
                    (let ((_g1163611694_
                           (lambda (_g1163711690_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1163711690_))))
                      (let ((_g1163511711_
                             (lambda (_g1163711698_)
                               ((lambda (_L11701_)
                                  (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L11701_ '())))
                                _g1163711698_))))
                        (let ((_g1163411763_
                               (lambda (_g1163711715_)
                                 (if (gx#stx-box? _g1163711715_)
                                     (let ((_e1168711718_
                                            (unbox (gx#syntax-e
                                                    _g1163711715_))))
                                       ((lambda (_L11722_)
                                          (let ((_g1173211740_
                                                 (lambda (_g1173311736_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1173311736_))))
                                            (let ((_g1173111759_
                                                   (lambda (_g1173311744_)
                                                     ((lambda (_L11747_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'box)
                        (cons _L11747_ '()))))
              _g1173311744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1173111759_
                                               (_generate11563_
                                                _L11722_
                                                _d11627_)))))
                                        _e1168711718_))
                                     (_g1163511711_ _g1163711715_)))))
                          (let ((_g1163311857_
                                 (lambda (_g1163711767_)
                                   (if (gx#stx-vector? _g1163711767_)
                                       (let ((_e1167611770_
                                              (vector->list
                                               (gx#syntax-e _g1163711767_))))
                                         (if (gx#stx-pair/null? _e1167611770_)
                                             (if (fx>= (gx#stx-length
                                                        _e1167611770_)
                                                       '0)
                                                 (let ((_g29481_
                                                        (gx#syntax-split-splice
                                                         _e1167611770_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29482_
                                                            (values-count
                                                             _g29481_)))
                                                       (if (not (fx= _g29482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29482_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1167711774_
                                                            (values-ref
                                                             _g29481_
                                                             0))
                                                           (_tl1167911777_
                                                            (values-ref
                                                             _g29481_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1167911777_)
                                                           (letrec ((_loop1168011780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1167811784_ _e1168411787_)
                               (if (gx#stx-pair? _hd1167811784_)
                                   (let ((_e1168111790_
                                          (gx#syntax-e _hd1167811784_)))
                                     (let ((_lp-hd1168211794_
                                            (##car _e1168111790_))
                                           (_lp-tl1168311797_
                                            (##cdr _e1168111790_)))
                                       (_loop1168011780_
                                        _lp-tl1168311797_
                                        (cons _lp-hd1168211794_
                                              _e1168411787_))))
                                   (let ((_e1168511800_
                                          (reverse _e1168411787_)))
                                     ((lambda (_L11804_)
                                        (let ((_g1181811826_
                                               (lambda (_g1181911822_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1181911822_))))
                                          (let ((_g1181711845_
                                                 (lambda (_g1181911830_)
                                                   ((lambda (_L11833_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'list->vector)
                                                              (cons _L11833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1181911830_))))
                                            (_g1181711845_
                                             (_generate11563_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1184811851_
                                                                _g1184911854_)
                                                         (cons _g1184811851_
                                                               _g1184911854_))
                                                       '()
                                                       _L11804_))
                                              _d11627_)))))
                                      _e1168511800_))))))
                     (_loop1168011780_ _target1167711774_ '()))
                   (_g1163411763_ _g1163711767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1163411763_ _g1163711767_))
                                             (_g1163411763_ _g1163711767_)))
                                       (_g1163411763_ _g1163711767_)))))
                            (let ((_g1163211951_
                                   (lambda (_g1163711861_)
                                     (if (gx#stx-pair? _g1163711861_)
                                         (let ((_e1167211864_
                                                (gx#syntax-e _g1163711861_)))
                                           (let ((_hd1167311868_
                                                  (##car _e1167211864_))
                                                 (_tl1167411871_
                                                  (##cdr _e1167211864_)))
                                             ((lambda (_L11874_ _L11876_)
                                                (let ((_g1188711902_
                                                       (lambda (_g1188811898_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1188811898_))))
                                                  (let ((_g1188611947_
                                                         (lambda (_g1188811906_)
                                                           (if (gx#stx-pair?
                                                                _g1188811906_)
                                                               (let ((_e1189111909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1188811906_)))
                         (let ((_hd1189211913_ (##car _e1189111909_))
                               (_tl1189311916_ (##cdr _e1189111909_)))
                           (if (gx#stx-pair? _tl1189311916_)
                               (let ((_e1189411919_
                                      (gx#syntax-e _tl1189311916_)))
                                 (let ((_hd1189511923_ (##car _e1189411919_))
                                       (_tl1189611926_ (##cdr _e1189411919_)))
                                   (if (gx#stx-null? _tl1189611926_)
                                       ((lambda (_L11929_ _L11931_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'cons)
                                                  (cons _L11931_
                                                        (cons _L11929_ '())))))
                                        _hd1189511923_
                                        _hd1189211913_)
                                       (_g1188711902_ _g1188811906_))))
                               (_g1188711902_ _g1188811906_))))
                       (_g1188711902_ _g1188811906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1188611947_
                                                     (list (_generate11563_
                                                            _L11876_
                                                            _d11627_)
                                                           (_generate11563_
                                                            _L11874_
                                                            _d11627_))))))
                                              _tl1167411871_
                                              _hd1167311868_)))
                                         (_g1163311857_ _g1163711861_)))))
                              (let ((_g1163112036_
                                     (lambda (_g1163711955_)
                                       (if (gx#stx-pair? _g1163711955_)
                                           (let ((_e1166111958_
                                                  (gx#syntax-e _g1163711955_)))
                                             (let ((_hd1166211962_
                                                    (##car _e1166111958_))
                                                   (_tl1166311965_
                                                    (##cdr _e1166111958_)))
                                               (if (gx#stx-pair?
                                                    _hd1166211962_)
                                                   (let ((_e1166411968_
                                                          (gx#syntax-e
                                                           _hd1166211962_)))
                                                     (let ((_hd1166511972_
                                                            (##car _e1166411968_))
                                                           (_tl1166611975_
                                                            (##cdr _e1166411968_)))
                                                       (if (gx#identifier?
                                                            _hd1166511972_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g29483_|
                                                                _hd1166511972_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1166611975_)
                           (let ((_e1166711978_ (gx#syntax-e _tl1166611975_)))
                             (let ((_hd1166811982_ (##car _e1166711978_))
                                   (_tl1166911985_ (##cdr _e1166711978_)))
                               (if (gx#stx-null? _tl1166911985_)
                                   ((lambda (_L11988_ _L11990_)
                                      (if (fxzero? _d11627_)
                                          (let ((_g1200512013_
                                                 (lambda (_g1200612009_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1200612009_))))
                                            (let ((_g1200412032_
                                                   (lambda (_g1200612017_)
                                                     ((lambda (_L12020_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'foldr)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _L12020_ (cons _L11990_ '()))))))
              _g1200612017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1200412032_
                                               (_generate11563_
                                                _L11988_
                                                _d11627_))))
                                          (_g1163211951_ _g1163711955_)))
                                    _tl1166311965_
                                    _hd1166811982_)
                                   (_g1163211951_ _g1163711955_))))
                           (_g1163211951_ _g1163711955_))
                       (_g1163211951_ _g1163711955_))
                   (_g1163211951_ _g1163711955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1163211951_
                                                    _g1163711955_))))
                                           (_g1163211951_ _g1163711955_)))))
                                (let ((_g1163012107_
                                       (lambda (_g1163712040_)
                                         (if (gx#stx-pair? _g1163712040_)
                                             (let ((_e1165312043_
                                                    (gx#syntax-e
                                                     _g1163712040_)))
                                               (let ((_hd1165412047_
                                                      (##car _e1165312043_))
                                                     (_tl1165512050_
                                                      (##cdr _e1165312043_)))
                                                 (if (gx#identifier?
                                                      _hd1165412047_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29484_|
                                                          _hd1165412047_)
                                                         (if (gx#stx-pair?
                                                              _tl1165512050_)
                                                             (let ((_e1165612053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1165512050_)))
                       (let ((_hd1165712057_ (##car _e1165612053_))
                             (_tl1165812060_ (##cdr _e1165612053_)))
                         (if (gx#stx-null? _tl1165812060_)
                             ((lambda (_L12063_)
                                (if (fxzero? _d11627_)
                                    (cons (gx#datum->syntax '#f 'foldr)
                                          (cons (gx#datum->syntax '#f 'cons)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons '() '()))
                                                      (cons _L12063_ '()))))
                                    (let ((_g1207612084_
                                           (lambda (_g1207712080_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1207712080_))))
                                      (let ((_g1207512103_
                                             (lambda (_g1207712088_)
                                               ((lambda (_L12091_)
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
                        (cons _L12091_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1207712088_))))
                                        (_g1207512103_
                                         (_generate11563_
                                          _L12063_
                                          (fx1- _d11627_)))))))
                              _hd1165712057_)
                             (_g1163112036_ _g1163712040_))))
                     (_g1163112036_ _g1163712040_))
                 (_g1163112036_ _g1163712040_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1163112036_
                                                      _g1163712040_))))
                                             (_g1163112036_ _g1163712040_)))))
                                  (let ((_g1162912178_
                                         (lambda (_g1163712111_)
                                           (if (gx#stx-pair? _g1163712111_)
                                               (let ((_e1164612114_
                                                      (gx#syntax-e
                                                       _g1163712111_)))
                                                 (let ((_hd1164712118_
                                                        (##car _e1164612114_))
                                                       (_tl1164812121_
                                                        (##cdr _e1164612114_)))
                                                   (if (gx#identifier?
                                                        _hd1164712118_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:2>[1]#_g29485_|
                                                            _hd1164712118_)
                                                           (if (gx#stx-pair?
                                                                _tl1164812121_)
                                                               (let ((_e1164912124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1164812121_)))
                         (let ((_hd1165012128_ (##car _e1164912124_))
                               (_tl1165112131_ (##cdr _e1164912124_)))
                           (if (gx#stx-null? _tl1165112131_)
                               ((lambda (_L12134_)
                                  (if (fxzero? _d11627_)
                                      _L12134_
                                      (let ((_g1214712155_
                                             (lambda (_g1214812151_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1214812151_))))
                                        (let ((_g1214612174_
                                               (lambda (_g1214812159_)
                                                 ((lambda (_L12162_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons (gx#datum->syntax '#f 'unquote) '()))
                          (cons _L12162_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1214812159_))))
                                          (_g1214612174_
                                           (_generate11563_
                                            _L12134_
                                            (fx1- _d11627_)))))))
                                _hd1165012128_)
                               (_g1163012107_ _g1163712111_))))
                       (_g1163012107_ _g1163712111_))
                   (_g1163012107_ _g1163712111_))
               (_g1163012107_ _g1163712111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1163012107_
                                                _g1163712111_)))))
                                    (let ((_g1162812249_
                                           (lambda (_g1163712182_)
                                             (if (gx#stx-pair? _g1163712182_)
                                                 (let ((_e1163912185_
                                                        (gx#syntax-e
                                                         _g1163712182_)))
                                                   (let ((_hd1164012189_
                                                          (##car _e1163912185_))
                                                         (_tl1164112192_
                                                          (##cdr _e1163912185_)))
                                                     (if (gx#identifier?
                                                          _hd1164012189_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<sugar>::<sugar:2>[1]#_g29486_|
                                                              _hd1164012189_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1164112192_)
                         (let ((_e1164212195_ (gx#syntax-e _tl1164112192_)))
                           (let ((_hd1164312199_ (##car _e1164212195_))
                                 (_tl1164412202_ (##cdr _e1164212195_)))
                             (if (gx#stx-null? _tl1164412202_)
                                 ((lambda (_L12205_)
                                    (let ((_g1221812226_
                                           (lambda (_g1221912222_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1221912222_))))
                                      (let ((_g1221712245_
                                             (lambda (_g1221912230_)
                                               ((lambda (_L12233_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'quasiquote) '()))
                        (cons _L12233_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1221912230_))))
                                        (_g1221712245_
                                         (_generate11563_
                                          _L12205_
                                          (fx1+ _d11627_))))))
                                  _hd1164312199_)
                                 (_g1162912178_ _g1163712182_))))
                         (_g1162912178_ _g1163712182_))
                     (_g1162912178_ _g1163712182_))
                 (_g1162912178_ _g1163712182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1162912178_
                                                  _g1163712182_)))))
                                      (_g1162812249_ _e11625_)))))))))))))
          (let ((_g1156511579_
                 (lambda (_g1156611575_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1156611575_))))
            (let ((_g1156411621_
                   (lambda (_g1156611583_)
                     (if (gx#stx-pair? _g1156611583_)
                         (let ((_e1156811586_ (gx#syntax-e _g1156611583_)))
                           (let ((_hd1156911590_ (##car _e1156811586_))
                                 (_tl1157011593_ (##cdr _e1156811586_)))
                             (if (gx#stx-pair? _tl1157011593_)
                                 (let ((_e1157111596_
                                        (gx#syntax-e _tl1157011593_)))
                                   (let ((_hd1157211600_ (##car _e1157111596_))
                                         (_tl1157311603_
                                          (##cdr _e1157111596_)))
                                     (if (gx#stx-null? _tl1157311603_)
                                         ((lambda (_L11606_)
                                            (if (_simple-quote?11561_ _L11606_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L11606_ '()))
                                                (_generate11563_ _L11606_ '0)))
                                          _hd1157211600_)
                                         (_g1156511579_ _g1156611583_))))
                                 (_g1156511579_ _g1156611583_))))
                         (_g1156511579_ _g1156611583_)))))
              (_g1156411621_ _stx11558_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#delay|
      (lambda (_$stx12493_)
        (let ((_g1249812519_
               (lambda (_g1249912515_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1249912515_))))
          (let ((_g1249712560_
                 (lambda (_g1249912523_)
                   (if (gx#stx-pair? _g1249912523_)
                       (let ((_e1250812526_ (gx#syntax-e _g1249912523_)))
                         (let ((_hd1250912530_ (##car _e1250812526_))
                               (_tl1251012533_ (##cdr _e1250812526_)))
                           (if (gx#stx-pair? _tl1251012533_)
                               (let ((_e1251112536_
                                      (gx#syntax-e _tl1251012533_)))
                                 (let ((_hd1251212540_ (##car _e1251112536_))
                                       (_tl1251312543_ (##cdr _e1251112536_)))
                                   (if (gx#stx-null? _tl1251312543_)
                                       ((lambda (_L12546_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-promise)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda%)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12546_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _hd1251212540_)
                                       (_g1249812519_ _g1249912523_))))
                               (_g1249812519_ _g1249912523_))))
                       (_g1249812519_ _g1249912523_)))))
            (let ((_g1249612600_
                   (lambda (_g1249912564_)
                     (if (gx#stx-pair? _g1249912564_)
                         (let ((_e1250112567_ (gx#syntax-e _g1249912564_)))
                           (let ((_hd1250212571_ (##car _e1250112567_))
                                 (_tl1250312574_ (##cdr _e1250112567_)))
                             (if (gx#stx-pair? _tl1250312574_)
                                 (let ((_e1250412577_
                                        (gx#syntax-e _tl1250312574_)))
                                   (let ((_hd1250512581_ (##car _e1250412577_))
                                         (_tl1250612584_
                                          (##cdr _e1250412577_)))
                                     (if (gx#stx-null? _tl1250612584_)
                                         ((lambda (_L12587_)
                                            (if (gx#stx-datum? _L12587_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L12587_ '()))
                                                (_g1249712560_ _g1249912564_)))
                                          _hd1250512581_)
                                         (_g1249712560_ _g1249912564_))))
                                 (_g1249712560_ _g1249912564_))))
                         (_g1249712560_ _g1249912564_)))))
              (_g1249612600_ _$stx12493_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#cut|
      (lambda (_stx12604_)
        (let ((_generate12607_
               (lambda (_rest12726_)
                 ((letrec ((_lp12729_
                            (lambda (_rest12732_ _hd12734_ _body12735_)
                              (let ((_g1273812750_
                                     (lambda (_g1273912746_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1273912746_))))
                                (let ((_g1273712761_
                                       (lambda (_g1273912754_)
                                         ((lambda ()
                                            (values (reverse _hd12734_)
                                                    (reverse _body12735_)
                                                    '#f))))))
                                  (let ((_g1273612847_
                                         (lambda (_g1273912765_)
                                           (if (gx#stx-pair? _g1273912765_)
                                               (let ((_e1274212768_
                                                      (gx#syntax-e
                                                       _g1273912765_)))
                                                 (let ((_hd1274312772_
                                                        (##car _e1274212768_))
                                                       (_tl1274412775_
                                                        (##cdr _e1274212768_)))
                                                   ((lambda (_L12778_ _L12780_)
                                                      (let ((_g1279712804_
                                                             (lambda (_g1279812800_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1279812800_))))
                                                        (let ((_g1279612815_
                                                               (lambda (_g1279812808_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (_lp12729_
                             _L12778_
                             _hd12734_
                             (cons _L12780_ _body12735_)))))))
                  (let ((_g1279512829_
                         (lambda (_g1279812819_)
                           (if (gx#identifier? _g1279812819_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<sugar>::<sugar:2>[1]#_g29489_|
                                    _g1279812819_)
                                   ((lambda ()
                                      (if (gx#stx-null? _L12778_)
                                          (let ((_tail12826_ (gx#genident)))
                                            (values (foldl cons
                                                           _tail12826_
                                                           _hd12734_)
                                                    (foldl cons
                                                           (list _tail12826_)
                                                           _body12735_)
                                                    '#t))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx12604_
                                           _L12780_))))
                                   (_g1279612815_ _g1279812819_))
                               (_g1279612815_ _g1279812819_)))))
                    (let ((_g1279412843_
                           (lambda (_g1279812833_)
                             (if (gx#identifier? _g1279812833_)
                                 (if (gx#free-identifier=?
                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g29490_|
                                      _g1279812833_)
                                     ((lambda ()
                                        (let ((_arg12840_ (gx#genident)))
                                          (_lp12729_
                                           _L12778_
                                           (cons _arg12840_ _hd12734_)
                                           (cons _arg12840_ _body12735_)))))
                                     (_g1279512829_ _g1279812833_))
                                 (_g1279512829_ _g1279812833_)))))
                      (_g1279412843_ _L12780_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1274412775_
                                                    _hd1274312772_)))
                                               (_g1273712761_
                                                _g1273912765_)))))
                                    (_g1273612847_ _rest12732_)))))))
                    _lp12729_)
                  _rest12726_
                  '()
                  '()))))
          (let ((_g1261012621_
                 (lambda (_g1261112617_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1261112617_))))
            (let ((_g1260912722_
                   (lambda (_g1261112625_)
                     (if (gx#stx-pair? _g1261112625_)
                         (let ((_e1261312628_ (gx#syntax-e _g1261112625_)))
                           (let ((_hd1261412632_ (##car _e1261312628_))
                                 (_tl1261512635_ (##cdr _e1261312628_)))
                             ((lambda (_L12638_)
                                (if (if (gx#stx-list? _L12638_)
                                        (not (gx#stx-null? _L12638_))
                                        '#f)
                                    (let ((_g29487_
                                           (_generate12607_ _L12638_)))
                                      (begin
                                        (let ((_g29488_
                                               (values-count _g29487_)))
                                          (if (not (fx= _g29488_ 3))
                                              (error "Context expects 3 values"
                                                     _g29488_)))
                                        (let ((_hd12651_
                                               (values-ref _g29487_ 0))
                                              (_body12653_
                                               (values-ref _g29487_ 1))
                                              (_tail?12654_
                                               (values-ref _g29487_ 2)))
                                          (let ((_g1265612664_
                                                 (lambda (_g1265712660_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1265712660_))))
                                            (let ((_g1265512718_
                                                   (lambda (_g1265712668_)
                                                     ((lambda (_L12671_)
                                                        (let ()
                                                          (let ((_g1268412692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1268512688_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1268512688_))))
                    (let ((_g1268312714_
                           (lambda (_g1268512696_)
                             ((lambda (_L12699_)
                                (let ()
                                  (let ()
                                    (if _tail?12654_
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12671_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'apply)
                        _L12699_)
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12671_
                                                    (cons _L12699_ '())))))))
                              _g1268512696_))))
                      (_g1268312714_ _body12653_)))))
              _g1265712668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1265512718_ _hd12651_))))))
                                    (_g1261012621_ _g1261112625_)))
                              _tl1261512635_)))
                         (_g1261012621_ _g1261112625_)))))
              (_g1260912722_ _stx12604_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<>|
      (lambda (_$stx12852_)
        (let ((_g1285512862_
               (lambda (_g1285612858_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1285612858_))))
          (_g1285512862_ _$stx12852_))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<...>|
      (lambda (_$stx12866_)
        (let ((_g1286912876_
               (lambda (_g1287012872_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1287012872_))))
          (_g1286912876_ _$stx12866_))))))
