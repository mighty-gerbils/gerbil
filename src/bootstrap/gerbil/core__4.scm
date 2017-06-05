(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29447_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29448_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29449_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29466_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29475_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29476_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29483_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29484_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29487_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29488_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29489_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29490_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29493_|
    (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29494_|
    (gx#core-quote-syntax '<>))
  (begin
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#lambda|
      (lambda (_stx4866_)
        (let ((_simple-lambda?4869_
               (lambda (_hd8019_) (gx#stx-andmap gx#identifier? _hd8019_))))
          (let ((_opt-lambda?4871_
                 (lambda (_hd7871_)
                   ((letrec ((_lp7874_
                              (lambda (_rest7877_ _opt?7879_)
                                (let ((_g78827894_
                                       (lambda (_g78837890_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g78837890_))))
                                  (let ((_g78817909_
                                         (lambda (_g78837898_)
                                           ((lambda ()
                                              (if _opt?7879_
                                                  (let ((_$e7905_
                                                         (gx#stx-null?
                                                          _rest7877_)))
                                                    (if _$e7905_
                                                        _$e7905_
                                                        (gx#identifier?
                                                         _rest7877_)))
                                                  '#f))))))
                                    (let ((_g78808015_
                                           (lambda (_g78837913_)
                                             (if (gx#stx-pair? _g78837913_)
                                                 (let ((_e78867916_
                                                        (gx#syntax-e
                                                         _g78837913_)))
                                                   (let ((_hd78877920_
                                                          (##car _e78867916_))
                                                         (_tl78887923_
                                                          (##cdr _e78867916_)))
                                                     ((lambda (_L7926_ _L7928_)
                                                        (let ((_g79447958_
                                                               (lambda (_g79457954_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g79457954_))))
                  (let ((_g79437969_
                         (lambda (_g79457962_)
                           ((lambda ()
                              (if (gx#identifier? _L7928_)
                                  (if (not _opt?7879_)
                                      (_lp7874_ _L7926_ '#f)
                                      '#f)
                                  '#f))))))
                    (let ((_g79428011_
                           (lambda (_g79457973_)
                             (if (gx#stx-pair? _g79457973_)
                                 (let ((_e79477976_ (gx#syntax-e _g79457973_)))
                                   (let ((_hd79487980_ (##car _e79477976_))
                                         (_tl79497983_ (##cdr _e79477976_)))
                                     (if (gx#stx-pair? _tl79497983_)
                                         (let ((_e79507986_
                                                (gx#syntax-e _tl79497983_)))
                                           (let ((_hd79517990_
                                                  (##car _e79507986_))
                                                 (_tl79527993_
                                                  (##cdr _e79507986_)))
                                             (if (gx#stx-null? _tl79527993_)
                                                 ((lambda (_L7996_)
                                                    (if (gx#identifier?
                                                         _L7996_)
                                                        (_lp7874_ _L7926_ '#t)
                                                        (_g79437969_
                                                         _g79457973_)))
                                                  _hd79487980_)
                                                 (_g79437969_ _g79457973_))))
                                         (_g79437969_ _g79457973_))))
                                 (_g79437969_ _g79457973_)))))
                      (_g79428011_ _L7928_)))))
              _tl78887923_
              _hd78877920_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g78817909_ _g78837913_)))))
                                      (_g78808015_ _rest7877_)))))))
                      _lp7874_)
                    _hd7871_
                    '#f))))
            (let ((_kw-lambda?4873_
                   (lambda (_hd7397_)
                     ((letrec ((_lp7400_
                                (lambda (_rest7403_ _opt?7405_ _key?7406_)
                                  (let ((_g74117440_
                                         (lambda (_g74127436_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g74127436_))))
                                    (let ((_g74107455_
                                           (lambda (_g74127444_)
                                             ((lambda ()
                                                (if _key?7406_
                                                    (let ((_$e7451_
                                                           (gx#stx-null?
                                                            _rest7403_)))
                                                      (if _$e7451_
                                                          _$e7451_
                                                          (gx#identifier?
                                                           _rest7403_)))
                                                    '#f))))))
                                      (let ((_g74097561_
                                             (lambda (_g74127459_)
                                               (if (gx#stx-pair? _g74127459_)
                                                   (let ((_e74327462_
                                                          (gx#syntax-e
                                                           _g74127459_)))
                                                     (let ((_hd74337466_
                                                            (##car _e74327462_))
                                                           (_tl74347469_
                                                            (##cdr _e74327462_)))
                                                       ((lambda (_L7472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7474_)
                  (let ((_g74907504_
                         (lambda (_g74917500_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g74917500_))))
                    (let ((_g74897515_
                           (lambda (_g74917508_)
                             ((lambda ()
                                (if (gx#identifier? _L7474_)
                                    (if (not _opt?7405_)
                                        (_lp7400_ _L7472_ '#f _key?7406_)
                                        '#f)
                                    '#f))))))
                      (let ((_g74887557_
                             (lambda (_g74917519_)
                               (if (gx#stx-pair? _g74917519_)
                                   (let ((_e74937522_
                                          (gx#syntax-e _g74917519_)))
                                     (let ((_hd74947526_ (##car _e74937522_))
                                           (_tl74957529_ (##cdr _e74937522_)))
                                       (if (gx#stx-pair? _tl74957529_)
                                           (let ((_e74967532_
                                                  (gx#syntax-e _tl74957529_)))
                                             (let ((_hd74977536_
                                                    (##car _e74967532_))
                                                   (_tl74987539_
                                                    (##cdr _e74967532_)))
                                               (if (gx#stx-null? _tl74987539_)
                                                   ((lambda (_L7542_)
                                                      (if (gx#identifier?
                                                           _L7542_)
                                                          (_lp7400_
                                                           _L7472_
                                                           '#t
                                                           _key?7406_)
                                                          '#f))
                                                    _hd74947526_)
                                                   (_g74897515_ _g74917519_))))
                                           (_g74897515_ _g74917519_))))
                                   (_g74897515_ _g74917519_)))))
                        (_g74887557_ _L7474_)))))
                _tl74347469_
                _hd74337466_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g74107455_
                                                    _g74127459_)))))
                                        (let ((_g74087603_
                                               (lambda (_g74127565_)
                                                 (if (gx#stx-pair? _g74127565_)
                                                     (let ((_e74247568_
                                                            (gx#syntax-e
                                                             _g74127565_)))
                                                       (let ((_hd74257572_
                                                              (##car _e74247568_))
                                                             (_tl74267575_
                                                              (##cdr _e74247568_)))
                                                         (if (gx#stx-datum?
                                                              _hd74257572_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd74257572_)
                                 '#!key)
                         (if (gx#stx-pair? _tl74267575_)
                             (let ((_e74277578_ (gx#syntax-e _tl74267575_)))
                               (let ((_hd74287582_ (##car _e74277578_))
                                     (_tl74297585_ (##cdr _e74277578_)))
                                 ((lambda (_L7588_ _L7590_)
                                    (if (gx#identifier? _L7590_)
                                        (_lp7400_ _L7588_ _opt?7405_ '#t)
                                        '#f))
                                  _tl74297585_
                                  _hd74287582_)))
                             (_g74097561_ _g74127565_))
                         (_g74097561_ _g74127565_))
                     (_g74097561_ _g74127565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g74097561_
                                                      _g74127565_)))))
                                          (let ((_g74077719_
                                                 (lambda (_g74127607_)
                                                   (if (gx#stx-pair?
                                                        _g74127607_)
                                                       (let ((_e74167610_
                                                              (gx#syntax-e
                                                               _g74127607_)))
                                                         (let ((_hd74177614_
                                                                (##car _e74167610_))
                                                               (_tl74187617_
                                                                (##cdr _e74167610_)))
                                                           (if (gx#stx-pair?
                                                                _tl74187617_)
                                                               (let ((_e74197620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl74187617_)))
                         (let ((_hd74207624_ (##car _e74197620_))
                               (_tl74217627_ (##cdr _e74197620_)))
                           ((lambda (_L7630_ _L7632_ _L7633_)
                              (if (gx#stx-keyword? _L7633_)
                                  (let ((_g76487662_
                                         (lambda (_g76497658_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g76497658_))))
                                    (let ((_g76477673_
                                           (lambda (_g76497666_)
                                             ((lambda ()
                                                (if (gx#identifier? _L7632_)
                                                    (_lp7400_
                                                     _L7630_
                                                     _opt?7405_
                                                     '#t)
                                                    '#f))))))
                                      (let ((_g76467715_
                                             (lambda (_g76497677_)
                                               (if (gx#stx-pair? _g76497677_)
                                                   (let ((_e76517680_
                                                          (gx#syntax-e
                                                           _g76497677_)))
                                                     (let ((_hd76527684_
                                                            (##car _e76517680_))
                                                           (_tl76537687_
                                                            (##cdr _e76517680_)))
                                                       (if (gx#stx-pair?
                                                            _tl76537687_)
                                                           (let ((_e76547690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl76537687_)))
                     (let ((_hd76557694_ (##car _e76547690_))
                           (_tl76567697_ (##cdr _e76547690_)))
                       (if (gx#stx-null? _tl76567697_)
                           ((lambda (_L7700_)
                              (if (gx#identifier? _L7700_)
                                  (_lp7400_ _L7630_ _opt?7405_ '#t)
                                  '#f))
                            _hd76527684_)
                           (_g76477673_ _g76497677_))))
                   (_g76477673_ _g76497677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76477673_
                                                    _g76497677_)))))
                                        (_g76467715_ _L7632_))))
                                  (_g74087603_ _g74127607_)))
                            _tl74217627_
                            _hd74207624_
                            _hd74177614_)))
                       (_g74087603_ _g74127607_))))
               (_g74087603_ _g74127607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g74077719_ _rest7403_)))))))))
                        _lp7400_)
                      _hd7397_
                      '#f
                      '#f))))
              (let ((_generate-bind4875_
                     (lambda (_e7133_)
                       (if (gx#underscore? _e7133_)
                           (gx#genident _e7133_)
                           _e7133_))))
                (let ((_check-duplicate-bindings4876_
                       (lambda (_hd6830_)
                         (let ((_cons-id6833_
                                (lambda (_id7129_ _ids7131_)
                                  (if (gx#underscore? _id7129_)
                                      _ids7131_
                                      (cons _id7129_ _ids7131_)))))
                           ((letrec ((_lp6836_
                                      (lambda (_rest6839_ _ids6841_)
                                        (let ((_g68446856_
                                               (lambda (_g68456852_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g68456852_))))
                                          (let ((_g68436867_
                                                 (lambda (_g68456860_)
                                                   ((lambda ()
                                                      (gx#check-duplicate-identifiers
                                                       (if (gx#stx-null?
                                                            _rest6839_)
                                                           _ids6841_
                                                           (_cons-id6833_
                                                            _rest6839_
                                                            _ids6841_))
                                                       _stx4866_))))))
                                            (let ((_g68427125_
                                                   (lambda (_g68456871_)
                                                     (if (gx#stx-pair?
                                                          _g68456871_)
                                                         (let ((_e68486874_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g68456871_)))
                   (let ((_hd68496878_ (##car _e68486874_))
                         (_tl68506881_ (##cdr _e68486874_)))
                     ((lambda (_L6884_ _L6886_)
                        (if (gx#identifier? _L6886_)
                            (_lp6836_
                             _L6884_
                             (_cons-id6833_ _L6886_ _ids6841_))
                            (if (gx#stx-pair? _L6886_)
                                (let ((_g69026916_
                                       (lambda (_g69036912_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g69036912_))))
                                  (let ((_g69016957_
                                         (lambda (_g69036920_)
                                           (if (gx#stx-pair? _g69036920_)
                                               (let ((_e69056923_
                                                      (gx#syntax-e
                                                       _g69036920_)))
                                                 (let ((_hd69066927_
                                                        (##car _e69056923_))
                                                       (_tl69076930_
                                                        (##cdr _e69056923_)))
                                                   (if (gx#stx-pair?
                                                        _tl69076930_)
                                                       (let ((_e69086933_
                                                              (gx#syntax-e
                                                               _tl69076930_)))
                                                         (let ((_hd69096937_
                                                                (##car _e69086933_))
                                                               (_tl69106940_
                                                                (##cdr _e69086933_)))
                                                           (if (gx#stx-null?
                                                                _tl69106940_)
                                                               ((lambda (_L6943_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_lp6836_ _L6884_ (_cons-id6833_ _L6943_ _ids6841_)))
                        _hd69066927_)
                       (_g69026916_ _g69036920_))))
               (_g69026916_ _g69036920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g69026916_ _g69036920_)))))
                                    (_g69016957_ _L6886_)))
                                (if (gx#stx-keyword? _L6886_)
                                    (let ((_g69616973_
                                           (lambda (_g69626969_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69626969_))))
                                      (let ((_g69607075_
                                             (lambda (_g69626977_)
                                               (if (gx#stx-pair? _g69626977_)
                                                   (let ((_e69656980_
                                                          (gx#syntax-e
                                                           _g69626977_)))
                                                     (let ((_hd69666984_
                                                            (##car _e69656980_))
                                                           (_tl69676987_
                                                            (##cdr _e69656980_)))
                                                       ((lambda (_L6990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6992_)
                  (let ((_g70047018_
                         (lambda (_g70057014_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g70057014_))))
                    (let ((_g70037029_
                           (lambda (_g70057022_)
                             ((lambda ()
                                (_lp6836_
                                 _L6990_
                                 (_cons-id6833_ _L6992_ _ids6841_)))))))
                      (let ((_g70027071_
                             (lambda (_g70057033_)
                               (if (gx#stx-pair? _g70057033_)
                                   (let ((_e70077036_
                                          (gx#syntax-e _g70057033_)))
                                     (let ((_hd70087040_ (##car _e70077036_))
                                           (_tl70097043_ (##cdr _e70077036_)))
                                       (if (gx#stx-pair? _tl70097043_)
                                           (let ((_e70107046_
                                                  (gx#syntax-e _tl70097043_)))
                                             (let ((_hd70117050_
                                                    (##car _e70107046_))
                                                   (_tl70127053_
                                                    (##cdr _e70107046_)))
                                               (if (gx#stx-null? _tl70127053_)
                                                   ((lambda (_L7056_)
                                                      (_lp6836_
                                                       _L6990_
                                                       (_cons-id6833_
                                                        _L7056_
                                                        _ids6841_)))
                                                    _hd70087040_)
                                                   (_g70037029_ _g70057033_))))
                                           (_g70037029_ _g70057033_))))
                                   (_g70037029_ _g70057033_)))))
                        (_g70027071_ _L6992_)))))
                _tl69676987_
                _hd69666984_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g69616973_
                                                    _g69626977_)))))
                                        (_g69607075_ _L6884_)))
                                    (if (eq? (gx#stx-e _L6886_) '#!key)
                                        (let ((_g70797091_
                                               (lambda (_g70807087_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g70807087_))))
                                          (let ((_g70787121_
                                                 (lambda (_g70807095_)
                                                   (if (gx#stx-pair?
                                                        _g70807095_)
                                                       (let ((_e70837098_
                                                              (gx#syntax-e
                                                               _g70807095_)))
                                                         (let ((_hd70847102_
                                                                (##car _e70837098_))
                                                               (_tl70857105_
                                                                (##cdr _e70837098_)))
                                                           ((lambda (_L7108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L7110_)
                      (_lp6836_ _L7108_ (_cons-id6833_ _L7110_ _ids6841_)))
                    _tl70857105_
                    _hd70847102_)))
               (_g70797091_ _g70807095_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g70787121_ _L6884_)))
                                        (error '"BUG: check-duplicate-bindings"
                                               _stx4866_
                                               _rest6839_))))))
                      _tl68506881_
                      _hd68496878_)))
                 (_g68436867_ _g68456871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g68427125_ _rest6839_)))))))
                              _lp6836_)
                            _hd6830_
                            '())))))
                  (let ((_generate-opt-primary4877_
                         (lambda (_pre6622_ _opt6624_ _tail6625_ _body6626_)
                           (let ((_g66286669_
                                  (lambda (_g66296665_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g66296665_))))
                             (let ((_g66276826_
                                    (lambda (_g66296673_)
                                      (if (gx#stx-pair? _g66296673_)
                                          (let ((_e66346676_
                                                 (gx#syntax-e _g66296673_)))
                                            (let ((_hd66356680_
                                                   (##car _e66346676_))
                                                  (_tl66366683_
                                                   (##cdr _e66346676_)))
                                              (if (gx#stx-pair/null?
                                                   _hd66356680_)
                                                  (if (fx>= (gx#stx-length
                                                             _hd66356680_)
                                                            '0)
                                                      (let ((_g29435_
                                                             (gx#syntax-split-splice
                                                              _hd66356680_
                                                              '0)))
                                                        (begin
                                                          (let ((_g29436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g29435_)))
                    (if (not (fx= _g29436_ 2))
                        (error "Context expects 2 values" _g29436_)))
                  (let ((_target66376686_ (values-ref _g29435_ 0))
                        (_tl66396689_ (values-ref _g29435_ 1)))
                    (if (gx#stx-null? _tl66396689_)
                        (letrec ((_loop66406692_
                                  (lambda (_hd66386696_ _pre66446699_)
                                    (if (gx#stx-pair? _hd66386696_)
                                        (let ((_e66416702_
                                               (gx#syntax-e _hd66386696_)))
                                          (let ((_lp-hd66426706_
                                                 (##car _e66416702_))
                                                (_lp-tl66436709_
                                                 (##cdr _e66416702_)))
                                            (_loop66406692_
                                             _lp-tl66436709_
                                             (cons _lp-hd66426706_
                                                   _pre66446699_))))
                                        (let ((_pre66456712_
                                               (reverse _pre66446699_)))
                                          (if (gx#stx-pair? _tl66366683_)
                                              (let ((_e66466716_
                                                     (gx#syntax-e
                                                      _tl66366683_)))
                                                (let ((_hd66476720_
                                                       (##car _e66466716_))
                                                      (_tl66486723_
                                                       (##cdr _e66466716_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd66476720_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd66476720_)
                        '0)
                  (let ((_g29437_ (gx#syntax-split-splice _hd66476720_ '0)))
                    (begin
                      (let ((_g29438_ (values-count _g29437_)))
                        (if (not (fx= _g29438_ 2))
                            (error "Context expects 2 values" _g29438_)))
                      (let ((_target66496726_ (values-ref _g29437_ 0))
                            (_tl66516729_ (values-ref _g29437_ 1)))
                        (if (gx#stx-null? _tl66516729_)
                            (letrec ((_loop66526732_
                                      (lambda (_hd66506736_ _opt66566739_)
                                        (if (gx#stx-pair? _hd66506736_)
                                            (let ((_e66536742_
                                                   (gx#syntax-e _hd66506736_)))
                                              (let ((_lp-hd66546746_
                                                     (##car _e66536742_))
                                                    (_lp-tl66556749_
                                                     (##cdr _e66536742_)))
                                                (_loop66526732_
                                                 _lp-tl66556749_
                                                 (cons _lp-hd66546746_
                                                       _opt66566739_))))
                                            (let ((_opt66576752_
                                                   (reverse _opt66566739_)))
                                              (if (gx#stx-pair? _tl66486723_)
                                                  (let ((_e66586756_
                                                         (gx#syntax-e
                                                          _tl66486723_)))
                                                    (let ((_hd66596760_
                                                           (##car _e66586756_))
                                                          (_tl66606763_
                                                           (##cdr _e66586756_)))
                                                      (if (gx#stx-pair?
                                                           _tl66606763_)
                                                          (let ((_e66616766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl66606763_)))
                    (let ((_hd66626770_ (##car _e66616766_))
                          (_tl66636773_ (##cdr _e66616766_)))
                      (if (gx#stx-null? _tl66636773_)
                          ((lambda (_L6776_ _L6778_ _L6779_ _L6780_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g68096814_
                                                             _g68106817_)
                                                      (cons _g68096814_
                                                            _g68106817_))
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g68116820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g68126823_)
                       (cons _g68116820_ _g68126823_))
                     _L6778_
                     _L6779_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L6780_))
                                           _L6776_))))
                           _hd66626770_
                           _hd66596760_
                           _opt66576752_
                           _pre66456712_)
                          (_g66286669_ _g66296673_))))
                  (_g66286669_ _g66296673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66286669_
                                                   _g66296673_)))))))
                              (_loop66526732_ _target66496726_ '()))
                            (_g66286669_ _g66296673_)))))
                  (_g66286669_ _g66296673_))
              (_g66286669_ _g66296673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66286669_ _g66296673_)))))))
                          (_loop66406692_ _target66376686_ '()))
                        (_g66286669_ _g66296673_)))))
              (_g66286669_ _g66296673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66286669_ _g66296673_))))
                                          (_g66286669_ _g66296673_)))))
                               (_g66276826_
                                (list _pre6622_
                                      (map car _opt6624_)
                                      _tail6625_
                                      _body6626_)))))))
                    (let ((_generate-opt-clause4880_
                           (lambda (_primary5871_ _pre5873_ _opt5874_)
                             ((letrec ((_recur5876_
                                        (lambda (_opt-rest5879_ _right5881_)
                                          (if (pair? _opt-rest5879_)
                                              (let ((_hd5883_
                                                     (car _opt-rest5879_)))
                                                (let ((_rest5886_
                                                       (cdr _opt-rest5879_)))
                                                  (let ((_g58895897_
                                                         (lambda (_g58905893_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g58905893_))))
                                                    (let ((_g58885986_
                                                           (lambda (_g58905901_)
                                                             ((lambda (_L5904_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g59205928_
                                 (lambda (_g59215924_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g59215924_))))
                            (let ((_g59195982_
                                   (lambda (_g59215932_)
                                     ((lambda (_L5935_)
                                        (let ()
                                          (let ((_g59485956_
                                                 (lambda (_g59495952_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g59495952_))))
                                            (let ((_g59475978_
                                                   (lambda (_g59495960_)
                                                     ((lambda (_L5963_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5904_ '())
                                            (cons _L5935_ '()))
                                      '())
                                (cons _L5963_ '()))))))
              _g59495960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g59475978_
                                               (_recur5876_
                                                _rest5886_
                                                (cons _L5904_
                                                      _right5881_)))))))
                                      _g59215932_))))
                              (_g59195982_ (cdr _hd5883_))))))
                      _g58905901_))))
              (_g58885986_ (car _hd5883_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g59906027_
                                                     (lambda (_g59916023_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g59916023_))))
                                                (let ((_g59896169_
                                                       (lambda (_g59916031_)
                                                         (if (gx#stx-pair?
                                                              _g59916031_)
                                                             (let ((_e59956034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g59916031_)))
                       (let ((_hd59966038_ (##car _e59956034_))
                             (_tl59976041_ (##cdr _e59956034_)))
                         (if (gx#stx-pair/null? _hd59966038_)
                             (if (fx>= (gx#stx-length _hd59966038_) '0)
                                 (let ((_g29431_
                                        (gx#syntax-split-splice
                                         _hd59966038_
                                         '0)))
                                   (begin
                                     (let ((_g29432_ (values-count _g29431_)))
                                       (if (not (fx= _g29432_ 2))
                                           (error "Context expects 2 values"
                                                  _g29432_)))
                                     (let ((_target59986044_
                                            (values-ref _g29431_ 0))
                                           (_tl60006047_
                                            (values-ref _g29431_ 1)))
                                       (if (gx#stx-null? _tl60006047_)
                                           (letrec ((_loop60016050_
                                                     (lambda (_hd59996054_
                                                              _pre60056057_)
                                                       (if (gx#stx-pair?
                                                            _hd59996054_)
                                                           (let ((_e60026060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd59996054_)))
                     (let ((_lp-hd60036064_ (##car _e60026060_))
                           (_lp-tl60046067_ (##cdr _e60026060_)))
                       (_loop60016050_
                        _lp-tl60046067_
                        (cons _lp-hd60036064_ _pre60056057_))))
                   (let ((_pre60066070_ (reverse _pre60056057_)))
                     (if (gx#stx-pair? _tl59976041_)
                         (let ((_e60076074_ (gx#syntax-e _tl59976041_)))
                           (let ((_hd60086078_ (##car _e60076074_))
                                 (_tl60096081_ (##cdr _e60076074_)))
                             (if (gx#stx-pair/null? _hd60086078_)
                                 (if (fx>= (gx#stx-length _hd60086078_) '0)
                                     (let ((_g29433_
                                            (gx#syntax-split-splice
                                             _hd60086078_
                                             '0)))
                                       (begin
                                         (let ((_g29434_
                                                (values-count _g29433_)))
                                           (if (not (fx= _g29434_ 2))
                                               (error "Context expects 2 values"
                                                      _g29434_)))
                                         (let ((_target60106084_
                                                (values-ref _g29433_ 0))
                                               (_tl60126087_
                                                (values-ref _g29433_ 1)))
                                           (if (gx#stx-null? _tl60126087_)
                                               (letrec ((_loop60136090_
                                                         (lambda (_hd60116094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opt60176097_)
                   (if (gx#stx-pair? _hd60116094_)
                       (let ((_e60146100_ (gx#syntax-e _hd60116094_)))
                         (let ((_lp-hd60156104_ (##car _e60146100_))
                               (_lp-tl60166107_ (##cdr _e60146100_)))
                           (_loop60136090_
                            _lp-tl60166107_
                            (cons _lp-hd60156104_ _opt60176097_))))
                       (let ((_opt60186110_ (reverse _opt60176097_)))
                         (if (gx#stx-pair? _tl60096081_)
                             (let ((_e60196114_ (gx#syntax-e _tl60096081_)))
                               (let ((_hd60206118_ (##car _e60196114_))
                                     (_tl60216121_ (##cdr _e60196114_)))
                                 (if (gx#stx-null? _tl60216121_)
                                     ((lambda (_L6124_ _L6126_ _L6127_)
                                        (let ()
                                          (gx#stx-wrap-source
                                           (cons _L6124_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g61526157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g61536160_)
                    (cons _g61526157_ _g61536160_))
                  (begin
                    '#!void
                    (foldr (lambda (_g61546163_ _g61556166_)
                             (cons _g61546163_ _g61556166_))
                           '()
                           _L6126_))
                  _L6127_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _stx4866_))))
                                      _hd60206118_
                                      _opt60186110_
                                      _pre60066070_)
                                     (_g59906027_ _g59916031_))))
                             (_g59906027_ _g59916031_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop60136090_
                                                  _target60106084_
                                                  '()))
                                               (_g59906027_ _g59916031_)))))
                                     (_g59906027_ _g59916031_))
                                 (_g59906027_ _g59916031_))))
                         (_g59906027_ _g59916031_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop60016050_
                                              _target59986044_
                                              '()))
                                           (_g59906027_ _g59916031_)))))
                                 (_g59906027_ _g59916031_))
                             (_g59906027_ _g59916031_))))
                     (_g59906027_ _g59916031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g59896169_
                                                   (list _pre5873_
                                                         (reverse _right5881_)
                                                         _primary5871_))))))))
                                _recur5876_)
                              _opt5874_
                              '()))))
                      (let ((_generate-kw-primary4881_
                             (lambda (_kwvar5518_
                                      _kwargs5520_
                                      _args5521_
                                      _body5522_)
                               (let ((_absent5524_ (gx#genident 'absent)))
                                 (letrec ((_make-body5526_
                                           (lambda (_kwargs5690_ _body5692_)
                                             (if (pair? _kwargs5690_)
                                                 (let ((_next5694_
                                                        (car _kwargs5690_)))
                                                   (let ((_rest5697_
                                                          (cdr _kwargs5690_)))
                                                     (let ((_key5700_
                                                            (car _next5694_)))
                                                       (let ((_var5703_
                                                              (cadr _next5694_)))
                                                         (let ((_default5706_
                                                                (caddr _next5694_)))
                                                           (let ()
                                                             (let ((_g57115746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g57125742_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g57125742_))))
                       (let ((_g57105867_
                              (lambda (_g57125750_)
                                (if (gx#stx-pair? _g57125750_)
                                    (let ((_e57205753_
                                           (gx#syntax-e _g57125750_)))
                                      (let ((_hd57215757_ (##car _e57205753_))
                                            (_tl57225760_ (##cdr _e57205753_)))
                                        (if (gx#stx-pair? _tl57225760_)
                                            (let ((_e57235763_
                                                   (gx#syntax-e _tl57225760_)))
                                              (let ((_hd57245767_
                                                     (##car _e57235763_))
                                                    (_tl57255770_
                                                     (##cdr _e57235763_)))
                                                (if (gx#stx-pair? _tl57255770_)
                                                    (let ((_e57265773_
                                                           (gx#syntax-e
                                                            _tl57255770_)))
                                                      (let ((_hd57275777_
                                                             (##car _e57265773_))
                                                            (_tl57285780_
                                                             (##cdr _e57265773_)))
                                                        (if (gx#stx-pair?
                                                             _tl57285780_)
                                                            (let ((_e57295783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl57285780_)))
                      (let ((_hd57305787_ (##car _e57295783_))
                            (_tl57315790_ (##cdr _e57295783_)))
                        (if (gx#stx-pair? _tl57315790_)
                            (let ((_e57325793_ (gx#syntax-e _tl57315790_)))
                              (let ((_hd57335797_ (##car _e57325793_))
                                    (_tl57345800_ (##cdr _e57325793_)))
                                (if (gx#stx-pair? _tl57345800_)
                                    (let ((_e57355803_
                                           (gx#syntax-e _tl57345800_)))
                                      (let ((_hd57365807_ (##car _e57355803_))
                                            (_tl57375810_ (##cdr _e57355803_)))
                                        (if (gx#stx-pair? _tl57375810_)
                                            (let ((_e57385813_
                                                   (gx#syntax-e _tl57375810_)))
                                              (let ((_hd57395817_
                                                     (##car _e57385813_))
                                                    (_tl57405820_
                                                     (##cdr _e57385813_)))
                                                (if (gx#stx-null? _tl57405820_)
                                                    ((lambda (_L5823_
                                                              _L5825_
                                                              _L5826_
                                                              _L5827_
                                                              _L5828_
                                                              _L5829_
                                                              _L5830_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _L5827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'hash-ref)
                                                     (cons _L5830_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L5829_ '()))
                         (cons _L5823_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'let-values)
                                         (cons (cons (cons (cons _L5828_ '())
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'if)
                               (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons _L5827_ (cons _L5823_ '())))
                                     (cons _L5826_ (cons _L5827_ '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L5825_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd57395817_
                                                     _hd57365807_
                                                     _hd57335797_
                                                     _hd57305787_
                                                     _hd57275777_
                                                     _hd57245767_
                                                     _hd57215757_)
                                                    (_g57115746_
                                                     _g57125750_))))
                                            (_g57115746_ _g57125750_))))
                                    (_g57115746_ _g57125750_))))
                            (_g57115746_ _g57125750_))))
                    (_g57115746_ _g57125750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g57115746_
                                                     _g57125750_))))
                                            (_g57115746_ _g57125750_))))
                                    (_g57115746_ _g57125750_)))))
                         (_g57105867_
                          (list _kwvar5518_
                                _key5700_
                                _var5703_
                                (gx#genident _var5703_)
                                _default5706_
                                (_make-body5526_ _rest5697_ _body5692_)
                                _absent5524_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons 'begin _body5692_)))))
                                   (let ((_g55285536_
                                          (lambda (_g55295532_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g55295532_))))
                                     (let ((_g55275686_
                                            (lambda (_g55295540_)
                                              ((lambda (_L5543_)
                                                 (let ()
                                                   (let ((_g55565564_
                                                          (lambda (_g55575560_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g55575560_))))
                                                     (let ((_g55555682_
                                                            (lambda (_g55575568_)
                                                              ((lambda (_L5571_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g55845592_
                                  (lambda (_g55855588_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g55855588_))))
                             (let ((_g55835678_
                                    (lambda (_g55855596_)
                                      ((lambda (_L5599_)
                                         (let ()
                                           (let ((_g56125620_
                                                  (lambda (_g56135616_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g56135616_))))
                                             (let ((_g56115674_
                                                    (lambda (_g56135624_)
                                                      ((lambda (_L5627_)
                                                         (let ()
                                                           (let ((_g56405648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g56415644_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g56415644_))))
                     (let ((_g56395670_
                            (lambda (_g56415652_)
                              ((lambda (_L5655_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons (cons _L5655_ '())
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-vector)
                                 (cons '0 '()))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L5627_ '()))))))
                               _g56415652_))))
                       (_g56395670_ _absent5524_)))))
               _g56135624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g56115674_
                                                (gx#stx-wrap-source
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons _L5543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5571_)
                     (cons _L5599_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source
                                                  _stx4866_)))))))
                                       _g55855596_))))
                               (_g55835678_
                                (_make-body5526_ _kwargs5520_ _body5522_))))))
                       _g55575568_))))
               (_g55555682_ _args5521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g55295540_))))
                                       (_g55275686_ _kwvar5518_))))))))
                        (let ((_generate-kw-table4883_
                               (lambda (_kws5405_)
                                 ((letrec ((_rehash5408_
                                            (lambda (_pht5411_)
                                              ((letrec ((_lp5414_
                                                         (lambda (_rest5417_)
                                                           (if (pair? _rest5417_)
                                                               (let ((_key5420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _rest5417_)))
                         (let ((_rest5423_ (cdr _rest5417_)))
                           (let ((_pos5426_
                                  (fxmodulo
                                   (keyword-hash _key5420_)
                                   (vector-length _pht5411_))))
                             (let ()
                               (if (vector-ref _pht5411_ _pos5426_)
                                   (if (fx< (vector-length _pht5411_) '8192)
                                       (_rehash5408_
                                        (make-vector
                                         (fx1+ (* '2
                                                  (vector-length _pht5411_)))
                                         '#f))
                                       (error '"Unresolvable keyword collision"
                                              _kws5405_))
                                   (begin
                                     (vector-set!
                                      _pht5411_
                                      _pos5426_
                                      _key5420_)
                                     (_lp5414_ _rest5423_)))))))
                       _pht5411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _lp5414_)
                                               _kws5405_))))
                                    _rehash5408_)
                                  (make-vector (length _kws5405_) '#f)))))
                          (let ((_opt-lambda-split4872_
                                 (lambda (_hd7723_)
                                   ((letrec ((_lp7726_
                                              (lambda (_rest7729_
                                                       _pre7731_
                                                       _opt7732_)
                                                (let ((_g77357747_
                                                       (lambda (_g77367743_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g77367743_))))
                                                  (let ((_g77347758_
                                                         (lambda (_g77367751_)
                                                           ((lambda ()
                                                              (values (reverse _pre7731_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _opt7732_)
                              (if (gx#identifier? _rest7729_)
                                  (_generate-bind4875_ _rest7729_)
                                  _rest7729_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g77337867_
                                                           (lambda (_g77367762_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g77367762_)
                         (let ((_e77397765_ (gx#syntax-e _g77367762_)))
                           (let ((_hd77407769_ (##car _e77397765_))
                                 (_tl77417772_ (##cdr _e77397765_)))
                             ((lambda (_L7775_ _L7777_)
                                (let ((_g77937808_
                                       (lambda (_g77947804_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g77947804_))))
                                  (let ((_g77927819_
                                         (lambda (_g77947812_)
                                           ((lambda ()
                                              (_lp7726_
                                               _L7775_
                                               (cons (_generate-bind4875_
                                                      _L7777_)
                                                     _pre7731_)
                                               _opt7732_))))))
                                    (let ((_g77917863_
                                           (lambda (_g77947823_)
                                             (if (gx#stx-pair? _g77947823_)
                                                 (let ((_e77977826_
                                                        (gx#syntax-e
                                                         _g77947823_)))
                                                   (let ((_hd77987830_
                                                          (##car _e77977826_))
                                                         (_tl77997833_
                                                          (##cdr _e77977826_)))
                                                     (if (gx#stx-pair?
                                                          _tl77997833_)
                                                         (let ((_e78007836_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77997833_)))
                   (let ((_hd78017840_ (##car _e78007836_))
                         (_tl78027843_ (##cdr _e78007836_)))
                     (if (gx#stx-null? _tl78027843_)
                         ((lambda (_L7846_ _L7848_)
                            (_lp7726_
                             _L7775_
                             _pre7731_
                             (cons (cons (_generate-bind4875_ _L7848_) _L7846_)
                                   _opt7732_)))
                          _hd78017840_
                          _hd77987830_)
                         (_g77927819_ _g77947823_))))
                 (_g77927819_ _g77947823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g77927819_ _g77947823_)))))
                                      (_g77917863_ _L7777_)))))
                              _tl77417772_
                              _hd77407769_)))
                         (_g77347758_ _g77367762_)))))
              (_g77337867_ _rest7729_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp7726_)
                                    _hd7723_
                                    '()
                                    '()))))
                            (let ((_kw-lambda-split4874_
                                   (lambda (_hd7136_)
                                     ((letrec ((_lp7139_
                                                (lambda (_rest7142_
                                                         _kwvar7144_
                                                         _kwargs7145_
                                                         _args7146_)
                                                  (let ((_g71517180_
                                                         (lambda (_g71527176_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g71527176_))))
                                                    (let ((_g71507191_
                                                           (lambda (_g71527184_)
                                                             ((lambda ()
                                                                (values _kwvar7144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse _kwargs7145_)
                                (foldl cons _rest7142_ _args7146_)))))))
              (let ((_g71497225_
                     (lambda (_g71527195_)
                       (if (gx#stx-pair? _g71527195_)
                           (let ((_e71727198_ (gx#syntax-e _g71527195_)))
                             (let ((_hd71737202_ (##car _e71727198_))
                                   (_tl71747205_ (##cdr _e71727198_)))
                               ((lambda (_L7208_ _L7210_)
                                  (_lp7139_
                                   _L7208_
                                   _kwvar7144_
                                   _kwargs7145_
                                   (cons _L7210_ _args7146_)))
                                _tl71747205_
                                _hd71737202_)))
                           (_g71507191_ _g71527195_)))))
                (let ((_g71487267_
                       (lambda (_g71527229_)
                         (if (gx#stx-pair? _g71527229_)
                             (let ((_e71647232_ (gx#syntax-e _g71527229_)))
                               (let ((_hd71657236_ (##car _e71647232_))
                                     (_tl71667239_ (##cdr _e71647232_)))
                                 (if (gx#stx-datum? _hd71657236_)
                                     (if (equal? (gx#stx-e _hd71657236_)
                                                 '#!key)
                                         (if (gx#stx-pair? _tl71667239_)
                                             (let ((_e71677242_
                                                    (gx#syntax-e
                                                     _tl71667239_)))
                                               (let ((_hd71687246_
                                                      (##car _e71677242_))
                                                     (_tl71697249_
                                                      (##cdr _e71677242_)))
                                                 ((lambda (_L7252_ _L7254_)
                                                    (if _kwvar7144_
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; duplicate #!key argument"
                                                         _stx4866_
                                                         _hd7136_
                                                         _L7254_)
                                                        (_lp7139_
                                                         _L7252_
                                                         (_generate-bind4875_
                                                          _L7254_)
                                                         _kwargs7145_
                                                         _args7146_)))
                                                  _tl71697249_
                                                  _hd71687246_)))
                                             (_g71497225_ _g71527229_))
                                         (_g71497225_ _g71527229_))
                                     (_g71497225_ _g71527229_))))
                             (_g71497225_ _g71527229_)))))
                  (let ((_g71477393_
                         (lambda (_g71527271_)
                           (if (gx#stx-pair? _g71527271_)
                               (let ((_e71567274_ (gx#syntax-e _g71527271_)))
                                 (let ((_hd71577278_ (##car _e71567274_))
                                       (_tl71587281_ (##cdr _e71567274_)))
                                   (if (gx#stx-pair? _tl71587281_)
                                       (let ((_e71597284_
                                              (gx#syntax-e _tl71587281_)))
                                         (let ((_hd71607288_
                                                (##car _e71597284_))
                                               (_tl71617291_
                                                (##cdr _e71597284_)))
                                           ((lambda (_L7294_ _L7296_ _L7297_)
                                              (if (gx#stx-keyword? _L7297_)
                                                  (let ((_key7311_
                                                         (gx#stx-e _L7297_)))
                                                    (if (find (lambda (_kwarg7314_)
                                                                (eq? _key7311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _kwarg7314_)))
                      _kwargs7145_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; duplicate keyword argument"
                 _stx4866_
                 _hd7136_
                 _key7311_)
                (let ((_g73187333_
                       (lambda (_g73197329_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g73197329_))))
                  (let ((_g73177344_
                         (lambda (_g73197337_)
                           ((lambda ()
                              (_lp7139_
                               _L7294_
                               _kwvar7144_
                               (cons (list _key7311_
                                           (_generate-bind4875_ _L7296_)
                                           (cons (gx#datum->syntax '#f 'error)
                                                 (cons '"Missing required keyword argument"
                                                       (cons _L7297_ '()))))
                                     _kwargs7145_)
                               _args7146_))))))
                    (let ((_g73167389_
                           (lambda (_g73197348_)
                             (if (gx#stx-pair? _g73197348_)
                                 (let ((_e73227351_ (gx#syntax-e _g73197348_)))
                                   (let ((_hd73237355_ (##car _e73227351_))
                                         (_tl73247358_ (##cdr _e73227351_)))
                                     (if (gx#stx-pair? _tl73247358_)
                                         (let ((_e73257361_
                                                (gx#syntax-e _tl73247358_)))
                                           (let ((_hd73267365_
                                                  (##car _e73257361_))
                                                 (_tl73277368_
                                                  (##cdr _e73257361_)))
                                             (if (gx#stx-null? _tl73277368_)
                                                 ((lambda (_L7371_ _L7373_)
                                                    (_lp7139_
                                                     _L7294_
                                                     _kwvar7144_
                                                     (cons (list _key7311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_generate-bind4875_ _L7373_)
                         _L7371_)
                   _kwargs7145_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _args7146_))
                                                  _hd73267365_
                                                  _hd73237355_)
                                                 (_g73177344_ _g73197348_))))
                                         (_g73177344_ _g73197348_))))
                                 (_g73177344_ _g73197348_)))))
                      (_g73167389_ _L7296_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g71487267_ _g71527271_)))
                                            _tl71617291_
                                            _hd71607288_
                                            _hd71577278_)))
                                       (_g71487267_ _g71527271_))))
                               (_g71487267_ _g71527271_)))))
                    (_g71477393_ _rest7142_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp7139_)
                                      _hd7136_
                                      '#f
                                      '()
                                      '()))))
                              (let ((_generate-opt-dispatch*4879_
                                     (lambda (_primary6173_
                                              _pre6175_
                                              _opt6176_
                                              _tail6177_)
                                       ((letrec ((_recur6179_
                                                  (lambda (_opt-rest6182_
                                                           _right6184_)
                                                    (if (pair? _opt-rest6182_)
                                                        (let ((_hd6186_
                                                               (caar _opt-rest6182_)))
                                                          (let ((_rest6189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cdr _opt-rest6182_)))
                    (let ((_right*6192_ (cons _hd6186_ _right6184_)))
                      (let ((_g61956212_
                             (lambda (_g61966208_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g61966208_))))
                        (let ((_g61946395_
                               (lambda (_g61966216_)
                                 (if (gx#stx-pair/null? _g61966216_)
                                     (if (fx>= (gx#stx-length _g61966216_) '0)
                                         (let ((_g29423_
                                                (gx#syntax-split-splice
                                                 _g61966216_
                                                 '0)))
                                           (begin
                                             (let ((_g29424_
                                                    (values-count _g29423_)))
                                               (if (not (fx= _g29424_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29424_)))
                                             (let ((_target61986219_
                                                    (values-ref _g29423_ 0))
                                                   (_tl62006222_
                                                    (values-ref _g29423_ 1)))
                                               (if (gx#stx-null? _tl62006222_)
                                                   (letrec ((_loop62016225_
                                                             (lambda (_hd61996229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pre-bind62056232_)
                       (if (gx#stx-pair? _hd61996229_)
                           (let ((_e62026235_ (gx#syntax-e _hd61996229_)))
                             (let ((_lp-hd62036239_ (##car _e62026235_))
                                   (_lp-tl62046242_ (##cdr _e62026235_)))
                               (_loop62016225_
                                _lp-tl62046242_
                                (cons _lp-hd62036239_ _pre-bind62056232_))))
                           (let ((_pre-bind62066245_
                                  (reverse _pre-bind62056232_)))
                             ((lambda (_L6249_)
                                (let ()
                                  (let ((_g62706287_
                                         (lambda (_g62716283_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g62716283_))))
                                    (let ((_g62696391_
                                           (lambda (_g62716291_)
                                             (if (gx#stx-pair/null?
                                                  _g62716291_)
                                                 (if (fx>= (gx#stx-length
                                                            _g62716291_)
                                                           '0)
                                                     (let ((_g29425_
                                                            (gx#syntax-split-splice
                                                             _g62716291_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29426_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29425_)))
                   (if (not (fx= _g29426_ 2))
                       (error "Context expects 2 values" _g29426_)))
                 (let ((_target62736294_ (values-ref _g29425_ 0))
                       (_tl62756297_ (values-ref _g29425_ 1)))
                   (if (gx#stx-null? _tl62756297_)
                       (letrec ((_loop62766300_
                                 (lambda (_hd62746304_ _opt-bind62806307_)
                                   (if (gx#stx-pair? _hd62746304_)
                                       (let ((_e62776310_
                                              (gx#syntax-e _hd62746304_)))
                                         (let ((_lp-hd62786314_
                                                (##car _e62776310_))
                                               (_lp-tl62796317_
                                                (##cdr _e62776310_)))
                                           (_loop62766300_
                                            _lp-tl62796317_
                                            (cons _lp-hd62786314_
                                                  _opt-bind62806307_))))
                                       (let ((_opt-bind62816320_
                                              (reverse _opt-bind62806307_)))
                                         ((lambda (_L6324_)
                                            (let ()
                                              (let ((_g63416349_
                                                     (lambda (_g63426345_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g63426345_))))
                                                (let ((_g63406387_
                                                       (lambda (_g63426353_)
                                                         ((lambda (_L6356_)
                                                            (let ()
                                                              (let ()
                                                                (cons (list (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr (lambda (_g63706375_ _g63716378_)
                                               (cons _g63706375_ _g63716378_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g63726381_
                                                               _g63736384_)
                                                        (cons _g63726381_
                                                              _g63736384_))
                                                      (cons _L6356_ '())
                                                      _L6324_))
                                             _L6249_))
                                    (_generate-opt-clause4880_
                                     _primary6173_
                                     (foldr cons
                                            (reverse _right*6192_)
                                            _pre6175_)
                                     _rest6189_))
                              (_recur6179_ _rest6189_ _right*6192_)))))
                  _g63426353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63406387_ _hd6186_)))))
                                          _opt-bind62816320_))))))
                         (_loop62766300_ _target62736294_ '()))
                       (_g62706287_ _g62716291_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g62706287_ _g62716291_))
                                                 (_g62706287_ _g62716291_)))))
                                      (_g62696391_ (reverse _right6184_))))))
                              _pre-bind62066245_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop62016225_
                                                      _target61986219_
                                                      '()))
                                                   (_g61956212_
                                                    _g61966216_)))))
                                         (_g61956212_ _g61966216_))
                                     (_g61956212_ _g61966216_)))))
                          (_g61946395_ _pre6175_))))))
                (if (gx#stx-null? _tail6177_)
                    '()
                    (let ((_g63996440_
                           (lambda (_g64006436_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g64006436_))))
                      (let ((_g63986612_
                             (lambda (_g64006444_)
                               (if (gx#stx-pair? _g64006444_)
                                   (let ((_e64056447_
                                          (gx#syntax-e _g64006444_)))
                                     (let ((_hd64066451_ (##car _e64056447_))
                                           (_tl64076454_ (##cdr _e64056447_)))
                                       (if (gx#stx-pair/null? _hd64066451_)
                                           (if (fx>= (gx#stx-length
                                                      _hd64066451_)
                                                     '0)
                                               (let ((_g29427_
                                                      (gx#syntax-split-splice
                                                       _hd64066451_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29428_
                                                          (values-count
                                                           _g29427_)))
                                                     (if (not (fx= _g29428_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29428_)))
                                                   (let ((_target64086457_
                                                          (values-ref
                                                           _g29427_
                                                           0))
                                                         (_tl64106460_
                                                          (values-ref
                                                           _g29427_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl64106460_)
                                                         (letrec ((_loop64116463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd64096467_ _pre64156470_)
                             (if (gx#stx-pair? _hd64096467_)
                                 (let ((_e64126473_
                                        (gx#syntax-e _hd64096467_)))
                                   (let ((_lp-hd64136477_ (##car _e64126473_))
                                         (_lp-tl64146480_ (##cdr _e64126473_)))
                                     (_loop64116463_
                                      _lp-tl64146480_
                                      (cons _lp-hd64136477_ _pre64156470_))))
                                 (let ((_pre64166483_ (reverse _pre64156470_)))
                                   (if (gx#stx-pair? _tl64076454_)
                                       (let ((_e64176487_
                                              (gx#syntax-e _tl64076454_)))
                                         (let ((_hd64186491_
                                                (##car _e64176487_))
                                               (_tl64196494_
                                                (##cdr _e64176487_)))
                                           (if (gx#stx-pair/null? _hd64186491_)
                                               (if (fx>= (gx#stx-length
                                                          _hd64186491_)
                                                         '0)
                                                   (let ((_g29429_
                                                          (gx#syntax-split-splice
                                                           _hd64186491_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29430_
                                                              (values-count
                                                               _g29429_)))
                                                         (if (not (fx= _g29430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29430_)))
               (let ((_target64206497_ (values-ref _g29429_ 0))
                     (_tl64226500_ (values-ref _g29429_ 1)))
                 (if (gx#stx-null? _tl64226500_)
                     (letrec ((_loop64236503_
                               (lambda (_hd64216507_ _opt64276510_)
                                 (if (gx#stx-pair? _hd64216507_)
                                     (let ((_e64246513_
                                            (gx#syntax-e _hd64216507_)))
                                       (let ((_lp-hd64256517_
                                              (##car _e64246513_))
                                             (_lp-tl64266520_
                                              (##cdr _e64246513_)))
                                         (_loop64236503_
                                          _lp-tl64266520_
                                          (cons _lp-hd64256517_
                                                _opt64276510_))))
                                     (let ((_opt64286523_
                                            (reverse _opt64276510_)))
                                       (if (gx#stx-pair? _tl64196494_)
                                           (let ((_e64296527_
                                                  (gx#syntax-e _tl64196494_)))
                                             (let ((_hd64306531_
                                                    (##car _e64296527_))
                                                   (_tl64316534_
                                                    (##cdr _e64296527_)))
                                               (if (gx#stx-pair? _tl64316534_)
                                                   (let ((_e64326537_
                                                          (gx#syntax-e
                                                           _tl64316534_)))
                                                     (let ((_hd64336541_
                                                            (##car _e64326537_))
                                                           (_tl64346544_
                                                            (##cdr _e64326537_)))
                                                       (if (gx#stx-null?
                                                            _tl64346544_)
                                                           ((lambda (_L6547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6549_
                             _L6550_
                             _L6551_)
                      (let ()
                        (list (list (begin
                                      '#!void
                                      (foldr (lambda (_g65796584_ _g65806587_)
                                               (cons _g65796584_ _g65806587_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g65816590_
                                                               _g65826593_)
                                                        (cons _g65816590_
                                                              _g65826593_))
                                                      _L6549_
                                                      _L6550_))
                                             _L6551_))
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'apply)
                                           (cons _L6547_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g65956600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g65966603_)
                    (cons _g65956600_ _g65966603_))
                  (begin
                    '#!void
                    (foldr (lambda (_g65976606_ _g65986609_)
                             (cons _g65976606_ _g65986609_))
                           (cons _L6549_ '())
                           _L6550_))
                  _L6551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _stx4866_))))))
                    _hd64336541_
                    _hd64306531_
                    _opt64286523_
                    _pre64166483_)
                   (_g63996440_ _g64006444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63996440_ _g64006444_))))
                                           (_g63996440_ _g64006444_)))))))
                       (_loop64236503_ _target64206497_ '()))
                     (_g63996440_ _g64006444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63996440_ _g64006444_))
                                               (_g63996440_ _g64006444_))))
                                       (_g63996440_ _g64006444_)))))))
                   (_loop64116463_ _target64086457_ '()))
                 (_g63996440_ _g64006444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g63996440_ _g64006444_))
                                           (_g63996440_ _g64006444_))))
                                   (_g63996440_ _g64006444_)))))
                        (_g63986612_
                         (list _pre6175_
                               (reverse _right6184_)
                               _tail6177_
                               _primary6173_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _recur6179_)
                                        _opt6176_
                                        '()))))
                                (let ((_generate-kw-dispatch4882_
                                       (lambda (_primary5431_
                                                _kwargs5433_
                                                _strict?5434_)
                                         (let ((_g54365455_
                                                (lambda (_g54375451_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g54375451_))))
                                           (let ((_g54355514_
                                                  (lambda (_g54375459_)
                                                    (if (gx#stx-pair?
                                                         _g54375459_)
                                                        (let ((_e54415462_
                                                               (gx#syntax-e
                                                                _g54375459_)))
                                                          (let ((_hd54425466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e54415462_))
                        (_tl54435469_ (##cdr _e54415462_)))
                    (if (gx#stx-pair? _tl54435469_)
                        (let ((_e54445472_ (gx#syntax-e _tl54435469_)))
                          (let ((_hd54455476_ (##car _e54445472_))
                                (_tl54465479_ (##cdr _e54445472_)))
                            (if (gx#stx-pair? _tl54465479_)
                                (let ((_e54475482_ (gx#syntax-e _tl54465479_)))
                                  (let ((_hd54485486_ (##car _e54475482_))
                                        (_tl54495489_ (##cdr _e54475482_)))
                                    (if (gx#stx-null? _tl54495489_)
                                        ((lambda (_L5492_ _L5494_ _L5495_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda%)
                                                   (cons _L5492_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'apply)
                             (cons (gx#datum->syntax '#f 'keyword-dispatch)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L5495_ '()))
                                         (cons _L5494_ (cons _L5492_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd54485486_
                                         _hd54455476_
                                         _hd54425466_)
                                        (_g54365455_ _g54375459_))))
                                (_g54365455_ _g54375459_))))
                        (_g54365455_ _g54375459_))))
                (_g54365455_ _g54375459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g54355514_
                                              (list (if _strict?5434_
                                                        (_generate-kw-table4883_
                                                         (map car
                                                              _kwargs5433_))
                                                        '#f)
                                                    _primary5431_
                                                    (gx#genident 'args))))))))
                                  (let ((_generate-opt-dispatch4878_
                                         (lambda (_primary6616_
                                                  _pre6618_
                                                  _opt6619_
                                                  _tail6620_)
                                           (cons (list _pre6618_
                                                       (_generate-opt-clause4880_
                                                        _primary6616_
                                                        _pre6618_
                                                        _opt6619_))
                                                 (_generate-opt-dispatch*4879_
                                                  _primary6616_
                                                  _pre6618_
                                                  _opt6619_
                                                  _tail6620_)))))
                                    (let ((_g48874918_
                                           (lambda (_g48884914_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g48884914_))))
                                      (let ((_g48865131_
                                             (lambda (_g48884922_)
                                               (if (gx#stx-pair? _g48884922_)
                                                   (let ((_e49074925_
                                                          (gx#syntax-e
                                                           _g48884922_)))
                                                     (let ((_hd49084929_
                                                            (##car _e49074925_))
                                                           (_tl49094932_
                                                            (##cdr _e49074925_)))
                                                       (if (gx#stx-pair?
                                                            _tl49094932_)
                                                           (let ((_e49104935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl49094932_)))
                     (let ((_hd49114939_ (##car _e49104935_))
                           (_tl49124942_ (##cdr _e49104935_)))
                       ((lambda (_L4945_ _L4947_)
                          (if (_kw-lambda?4873_ _L4947_)
                              (let ((_g49634970_
                                     (lambda (_g49644966_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g49644966_))))
                                (let ((_g49625127_
                                       (lambda (_g49644974_)
                                         ((lambda ()
                                            (let ()
                                              (let ((_g29417_
                                                     (_kw-lambda-split4874_
                                                      _L4947_)))
                                                (begin
                                                  (let ((_g29418_
                                                         (values-count
                                                          _g29417_)))
                                                    (if (not (fx= _g29418_ 3))
                                                        (error "Context expects 3 values"
                                                               _g29418_)))
                                                  (let ((_key4983_
                                                         (values-ref
                                                          _g29417_
                                                          0))
                                                        (_kwargs4985_
                                                         (values-ref
                                                          _g29417_
                                                          1))
                                                        (_args4986_
                                                         (values-ref
                                                          _g29417_
                                                          2)))
                                                    (let ((_g49884996_
                                                           (lambda (_g49894992_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g49894992_))))
                                                      (let ((_g49875119_
                                                             (lambda (_g49895000_)
                                                               ((lambda (_L5003_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g50215029_
                                   (lambda (_g50225025_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g50225025_))))
                              (let ((_g50205115_
                                     (lambda (_g50225033_)
                                       ((lambda (_L5036_)
                                          (let ()
                                            (let ((_g50495057_
                                                   (lambda (_g50505053_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g50505053_))))
                                              (let ((_g50485111_
                                                     (lambda (_g50505061_)
                                                       ((lambda (_L5064_)
                                                          (let ()
                                                            (let ((_g50775085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g50785081_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g50785081_))))
                      (let ((_g50765107_
                             (lambda (_g50785089_)
                               ((lambda (_L5092_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (cons _L5036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _L5064_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L5092_ '()))))))
                                _g50785089_))))
                        (_g50765107_
                         (gx#stx-wrap-source
                          (_generate-kw-dispatch4882_
                           _L5036_
                           _kwargs4985_
                           (not _key4983_))
                          (gx#stx-source _stx4866_)))))))
                _g50505061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g50485111_
                                                 (gx#stx-wrap-source
                                                  (_generate-kw-primary4881_
                                                   _L5003_
                                                   _kwargs4985_
                                                   _args4986_
                                                   _L4945_)
                                                  (gx#stx-source
                                                   _stx4866_)))))))
                                        _g50225033_))))
                                (_g50205115_ (gx#genident 'kw-lambda))))))
                        _g49895000_))))
                (_g49875119_
                 (let ((_$e5123_ _key4983_))
                   (if _$e5123_ _$e5123_ (gx#genident 'key)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g49625127_
                                   (_check-duplicate-bindings4876_ _L4947_))))
                              (_g48874918_ _g48884922_)))
                        _tl49124942_
                        _hd49114939_)))
                   (_g48874918_ _g48884922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g48874918_
                                                    _g48884922_)))))
                                        (let ((_g48855359_
                                               (lambda (_g48885135_)
                                                 (if (gx#stx-pair? _g48885135_)
                                                     (let ((_e48995138_
                                                            (gx#syntax-e
                                                             _g48885135_)))
                                                       (let ((_hd49005142_
                                                              (##car _e48995138_))
                                                             (_tl49015145_
                                                              (##cdr _e48995138_)))
                                                         (if (gx#stx-pair?
                                                              _tl49015145_)
                                                             (let ((_e49025148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl49015145_)))
                       (let ((_hd49035152_ (##car _e49025148_))
                             (_tl49045155_ (##cdr _e49025148_)))
                         ((lambda (_L5158_ _L5160_)
                            (if (_opt-lambda?4871_ _L5160_)
                                (let ((_g29419_
                                       (_opt-lambda-split4872_ _L5160_)))
                                  (begin
                                    (let ((_g29420_ (values-count _g29419_)))
                                      (if (not (fx= _g29420_ 3))
                                          (error "Context expects 3 values"
                                                 _g29420_)))
                                    (let ((_pre5173_ (values-ref _g29419_ 0))
                                          (_opt5175_ (values-ref _g29419_ 1))
                                          (_tail5176_ (values-ref _g29419_ 2)))
                                      (let ((_g51785186_
                                             (lambda (_g51795182_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g51795182_))))
                                        (let ((_g51775355_
                                               (lambda (_g51795190_)
                                                 ((lambda (_L5193_)
                                                    (let ()
                                                      (let ((_g52065214_
                                                             (lambda (_g52075210_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g52075210_))))
                                                        (let ((_g52055351_
                                                               (lambda (_g52075218_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L5221_)
                            (let ()
                              (let ((_g52345251_
                                     (lambda (_g52355247_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g52355247_))))
                                (let ((_g52335347_
                                       (lambda (_g52355255_)
                                         (if (gx#stx-pair/null? _g52355255_)
                                             (if (fx>= (gx#stx-length
                                                        _g52355255_)
                                                       '0)
                                                 (let ((_g29421_
                                                        (gx#syntax-split-splice
                                                         _g52355255_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29422_
                                                            (values-count
                                                             _g29421_)))
                                                       (if (not (fx= _g29422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target52375258_
                                                            (values-ref
                                                             _g29421_
                                                             0))
                                                           (_tl52395261_
                                                            (values-ref
                                                             _g29421_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl52395261_)
                                                           (letrec ((_loop52405264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd52385268_ _clause52445271_)
                               (if (gx#stx-pair? _hd52385268_)
                                   (let ((_e52415274_
                                          (gx#syntax-e _hd52385268_)))
                                     (let ((_lp-hd52425278_
                                            (##car _e52415274_))
                                           (_lp-tl52435281_
                                            (##cdr _e52415274_)))
                                       (_loop52405264_
                                        _lp-tl52435281_
                                        (cons _lp-hd52425278_
                                              _clause52445271_))))
                                   (let ((_clause52455284_
                                          (reverse _clause52445271_)))
                                     ((lambda (_L5288_)
                                        (let ()
                                          (let ((_g53055313_
                                                 (lambda (_g53065309_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g53065309_))))
                                            (let ((_g53045335_
                                                   (lambda (_g53065317_)
                                                     ((lambda (_L5320_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5193_ '())
                                            (cons _L5221_ '()))
                                      '())
                                (cons _L5320_ '()))))))
              _g53065317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g53045335_
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g53385341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g53395344_)
                         (cons _g53385341_ _g53395344_))
                       '()
                       _L5288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx4866_)))))))
                                      _clause52455284_))))))
                     (_loop52405264_ _target52375258_ '()))
                   (_g52345251_ _g52355255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g52345251_ _g52355255_))
                                             (_g52345251_ _g52355255_)))))
                                  (_g52335347_
                                   (_generate-opt-dispatch4878_
                                    _L5193_
                                    _pre5173_
                                    _opt5175_
                                    _tail5176_))))))
                          _g52075218_))))
                  (_g52055351_
                   (gx#stx-wrap-source
                    (_generate-opt-primary4877_
                     _pre5173_
                     _opt5175_
                     _tail5176_
                     _L5158_)
                    (gx#stx-source _stx4866_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g51795190_))))
                                          (_g51775355_
                                           (gx#genident 'opt-lambda)))))))
                                (_g48865131_ _g48885135_)))
                          _tl49045155_
                          _hd49035152_)))
                     (_g48865131_ _g48885135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48865131_
                                                      _g48885135_)))))
                                          (let ((_g48845401_
                                                 (lambda (_g48885363_)
                                                   (if (gx#stx-pair?
                                                        _g48885363_)
                                                       (let ((_e48915366_
                                                              (gx#syntax-e
                                                               _g48885363_)))
                                                         (let ((_hd48925370_
                                                                (##car _e48915366_))
                                                               (_tl48935373_
                                                                (##cdr _e48915366_)))
                                                           (if (gx#stx-pair?
                                                                _tl48935373_)
                                                               (let ((_e48945376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl48935373_)))
                         (let ((_hd48955380_ (##car _e48945376_))
                               (_tl48965383_ (##cdr _e48945376_)))
                           ((lambda (_L5386_ _L5388_)
                              (if (_simple-lambda?4869_ _L5388_)
                                  (cons (gx#datum->syntax '#f 'lambda%)
                                        (cons _L5388_ _L5386_))
                                  (_g48855359_ _g48885363_)))
                            _tl48965383_
                            _hd48955380_)))
                       (_g48855359_ _g48885363_))))
               (_g48855359_ _g48885363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g48845401_
                                             _stx4866_)))))))))))))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def|
      (lambda (_$stx8033_)
        (let ((_g80388077_
               (lambda (_g80398073_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g80398073_))))
          (let ((_g80378132_
                 (lambda (_g80398081_)
                   (if (gx#stx-pair? _g80398081_)
                       (let ((_e80638084_ (gx#syntax-e _g80398081_)))
                         (let ((_hd80648088_ (##car _e80638084_))
                               (_tl80658091_ (##cdr _e80638084_)))
                           (if (gx#stx-pair? _tl80658091_)
                               (let ((_e80668094_ (gx#syntax-e _tl80658091_)))
                                 (let ((_hd80678098_ (##car _e80668094_))
                                       (_tl80688101_ (##cdr _e80668094_)))
                                   (if (gx#stx-pair? _tl80688101_)
                                       (let ((_e80698104_
                                              (gx#syntax-e _tl80688101_)))
                                         (let ((_hd80708108_
                                                (##car _e80698104_))
                                               (_tl80718111_
                                                (##cdr _e80698104_)))
                                           (if (gx#stx-null? _tl80718111_)
                                               ((lambda (_L8114_ _L8116_)
                                                  (if (gx#identifier? _L8116_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L8116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L8114_ '())))
              (_g80388077_ _g80398081_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd80708108_
                                                _hd80678098_)
                                               (_g80388077_ _g80398081_))))
                                       (_g80388077_ _g80398081_))))
                               (_g80388077_ _g80398081_))))
                       (_g80388077_ _g80398081_)))))
            (let ((_g80368230_
                   (lambda (_g80398136_)
                     (if (gx#stx-pair? _g80398136_)
                         (let ((_e80438139_ (gx#syntax-e _g80398136_)))
                           (let ((_hd80448143_ (##car _e80438139_))
                                 (_tl80458146_ (##cdr _e80438139_)))
                             (if (gx#stx-pair? _tl80458146_)
                                 (let ((_e80468149_
                                        (gx#syntax-e _tl80458146_)))
                                   (let ((_hd80478153_ (##car _e80468149_))
                                         (_tl80488156_ (##cdr _e80468149_)))
                                     (if (gx#stx-pair? _hd80478153_)
                                         (let ((_e80498159_
                                                (gx#syntax-e _hd80478153_)))
                                           (let ((_hd80508163_
                                                  (##car _e80498159_))
                                                 (_tl80518166_
                                                  (##cdr _e80498159_)))
                                             (if (gx#stx-pair/null?
                                                  _tl80488156_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl80488156_)
                                                           '0)
                                                     (let ((_g29439_
                                                            (gx#syntax-split-splice
                                                             _tl80488156_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29440_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29439_)))
                   (if (not (fx= _g29440_ 2))
                       (error "Context expects 2 values" _g29440_)))
                 (let ((_target80528169_ (values-ref _g29439_ 0))
                       (_tl80548172_ (values-ref _g29439_ 1)))
                   (if (gx#stx-null? _tl80548172_)
                       (letrec ((_loop80558175_
                                 (lambda (_hd80538179_ _body80598182_)
                                   (if (gx#stx-pair? _hd80538179_)
                                       (let ((_e80568185_
                                              (gx#syntax-e _hd80538179_)))
                                         (let ((_lp-hd80578189_
                                                (##car _e80568185_))
                                               (_lp-tl80588192_
                                                (##cdr _e80568185_)))
                                           (_loop80558175_
                                            _lp-tl80588192_
                                            (cons _lp-hd80578189_
                                                  _body80598182_))))
                                       (let ((_body80608195_
                                              (reverse _body80598182_)))
                                         ((lambda (_L8199_ _L8201_ _L8202_)
                                            (if (gx#identifier? _L8202_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L8202_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons _L8201_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g82218224_
                                                        _g82228227_)
                                                 (cons _g82218224_
                                                       _g82228227_))
                                               '()
                                               _L8199_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g80378132_ _g80398136_)))
                                          _body80608195_
                                          _tl80518166_
                                          _hd80508163_))))))
                         (_loop80558175_ _target80528169_ '()))
                       (_g80378132_ _g80398136_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80378132_ _g80398136_))
                                                 (_g80378132_ _g80398136_))))
                                         (_g80378132_ _g80398136_))))
                                 (_g80378132_ _g80398136_))))
                         (_g80378132_ _g80398136_)))))
              (_g80368230_ _$stx8033_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def*|
      (lambda (_$stx8235_)
        (let ((_g82398263_
               (lambda (_g82408259_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g82408259_))))
          (let ((_g82388348_
                 (lambda (_g82408267_)
                   (if (gx#stx-pair? _g82408267_)
                       (let ((_e82438270_ (gx#syntax-e _g82408267_)))
                         (let ((_hd82448274_ (##car _e82438270_))
                               (_tl82458277_ (##cdr _e82438270_)))
                           (if (gx#stx-pair? _tl82458277_)
                               (let ((_e82468280_ (gx#syntax-e _tl82458277_)))
                                 (let ((_hd82478284_ (##car _e82468280_))
                                       (_tl82488287_ (##cdr _e82468280_)))
                                   (if (gx#stx-pair/null? _tl82488287_)
                                       (if (fx>= (gx#stx-length _tl82488287_)
                                                 '0)
                                           (let ((_g29441_
                                                  (gx#syntax-split-splice
                                                   _tl82488287_
                                                   '0)))
                                             (begin
                                               (let ((_g29442_
                                                      (values-count _g29441_)))
                                                 (if (not (fx= _g29442_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29442_)))
                                               (let ((_target82498290_
                                                      (values-ref _g29441_ 0))
                                                     (_tl82518293_
                                                      (values-ref _g29441_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl82518293_)
                                                     (letrec ((_loop82528296_
                                                               (lambda (_hd82508300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses82568303_)
                         (if (gx#stx-pair? _hd82508300_)
                             (let ((_e82538306_ (gx#syntax-e _hd82508300_)))
                               (let ((_lp-hd82548310_ (##car _e82538306_))
                                     (_lp-tl82558313_ (##cdr _e82538306_)))
                                 (_loop82528296_
                                  _lp-tl82558313_
                                  (cons _lp-hd82548310_ _clauses82568303_))))
                             (let ((_clauses82578316_
                                    (reverse _clauses82568303_)))
                               ((lambda (_L8320_ _L8322_)
                                  (if (gx#identifier? _L8322_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'define-values)
                                            (cons (cons _L8322_ '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'case-lambda)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g83398342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g83408345_)
                                 (cons _g83398342_ _g83408345_))
                               '()
                               _L8320_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g82398263_ _g82408267_)))
                                _clauses82578316_
                                _hd82478284_))))))
               (_loop82528296_ _target82498290_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g82398263_
                                                      _g82408267_)))))
                                           (_g82398263_ _g82408267_))
                                       (_g82398263_ _g82408267_))))
                               (_g82398263_ _g82408267_))))
                       (_g82398263_ _g82408267_)))))
            (_g82388348_ _$stx8235_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8353_)
        (let ((_g83578375_
               (lambda (_g83588371_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g83588371_))))
          (let ((_g83568430_
                 (lambda (_g83588379_)
                   (if (gx#stx-pair? _g83588379_)
                       (let ((_e83618382_ (gx#syntax-e _g83588379_)))
                         (let ((_hd83628386_ (##car _e83618382_))
                               (_tl83638389_ (##cdr _e83618382_)))
                           (if (gx#stx-pair? _tl83638389_)
                               (let ((_e83648392_ (gx#syntax-e _tl83638389_)))
                                 (let ((_hd83658396_ (##car _e83648392_))
                                       (_tl83668399_ (##cdr _e83648392_)))
                                   (if (gx#stx-pair? _tl83668399_)
                                       (let ((_e83678402_
                                              (gx#syntax-e _tl83668399_)))
                                         (let ((_hd83688406_
                                                (##car _e83678402_))
                                               (_tl83698409_
                                                (##cdr _e83678402_)))
                                           (if (gx#stx-null? _tl83698409_)
                                               ((lambda (_L8412_ _L8414_)
                                                  (if (gx#identifier-list?
                                                       _L8414_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons _L8414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L8412_ '())))
              (_g83578375_ _g83588379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd83688406_
                                                _hd83658396_)
                                               (_g83578375_ _g83588379_))))
                                       (_g83578375_ _g83588379_))))
                               (_g83578375_ _g83588379_))))
                       (_g83578375_ _g83588379_)))))
            (_g83568430_ _$stx8353_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#case|
      (lambda (_$stx8434_)
        (let ((_g84388462_
               (lambda (_g84398458_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g84398458_))))
          (let ((_g84378547_
                 (lambda (_g84398466_)
                   (if (gx#stx-pair? _g84398466_)
                       (let ((_e84428469_ (gx#syntax-e _g84398466_)))
                         (let ((_hd84438473_ (##car _e84428469_))
                               (_tl84448476_ (##cdr _e84428469_)))
                           (if (gx#stx-pair? _tl84448476_)
                               (let ((_e84458479_ (gx#syntax-e _tl84448476_)))
                                 (let ((_hd84468483_ (##car _e84458479_))
                                       (_tl84478486_ (##cdr _e84458479_)))
                                   (if (gx#stx-pair/null? _tl84478486_)
                                       (if (fx>= (gx#stx-length _tl84478486_)
                                                 '0)
                                           (let ((_g29443_
                                                  (gx#syntax-split-splice
                                                   _tl84478486_
                                                   '0)))
                                             (begin
                                               (let ((_g29444_
                                                      (values-count _g29443_)))
                                                 (if (not (fx= _g29444_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29444_)))
                                               (let ((_target84488489_
                                                      (values-ref _g29443_ 0))
                                                     (_tl84508492_
                                                      (values-ref _g29443_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl84508492_)
                                                     (letrec ((_loop84518495_
                                                               (lambda (_hd84498499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause84558502_)
                         (if (gx#stx-pair? _hd84498499_)
                             (let ((_e84528505_ (gx#syntax-e _hd84498499_)))
                               (let ((_lp-hd84538509_ (##car _e84528505_))
                                     (_lp-tl84548512_ (##cdr _e84528505_)))
                                 (_loop84518495_
                                  _lp-tl84548512_
                                  (cons _lp-hd84538509_ _clause84558502_))))
                             (let ((_clause84568515_
                                    (reverse _clause84558502_)))
                               ((lambda (_L8519_ _L8521_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$e)
                                                    (cons _L8521_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '~case)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e)
                        (begin
                          '#!void
                          (foldr (lambda (_g85388541_ _g85398544_)
                                   (cons _g85388541_ _g85398544_))
                                 '()
                                 _L8519_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _clause84568515_
                                _hd84468483_))))))
               (_loop84518495_ _target84488489_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g84388462_
                                                      _g84398466_)))))
                                           (_g84388462_ _g84398466_))
                                       (_g84388462_ _g84398466_))))
                               (_g84388462_ _g84398466_))))
                       (_g84388462_ _g84398466_)))))
            (_g84378547_ _$stx8434_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case|
      (lambda (_$stx8552_)
        (let ((_g85608658_
               (lambda (_g85618654_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g85618654_))))
          (let ((_g85598773_
                 (lambda (_g85618662_)
                   (if (gx#stx-pair? _g85618662_)
                       (let ((_e86328665_ (gx#syntax-e _g85618662_)))
                         (let ((_hd86338669_ (##car _e86328665_))
                               (_tl86348672_ (##cdr _e86328665_)))
                           (if (gx#stx-pair? _tl86348672_)
                               (let ((_e86358675_ (gx#syntax-e _tl86348672_)))
                                 (let ((_hd86368679_ (##car _e86358675_))
                                       (_tl86378682_ (##cdr _e86358675_)))
                                   (if (gx#stx-pair? _tl86378682_)
                                       (let ((_e86388685_
                                              (gx#syntax-e _tl86378682_)))
                                         (let ((_hd86398689_
                                                (##car _e86388685_))
                                               (_tl86408692_
                                                (##cdr _e86388685_)))
                                           (if (gx#stx-pair? _hd86398689_)
                                               (let ((_e86418695_
                                                      (gx#syntax-e
                                                       _hd86398689_)))
                                                 (let ((_hd86428699_
                                                        (##car _e86418695_))
                                                       (_tl86438702_
                                                        (##cdr _e86418695_)))
                                                   (if (gx#stx-pair/null?
                                                        _tl86438702_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl86438702_)
                         '0)
                   (let ((_g29445_ (gx#syntax-split-splice _tl86438702_ '0)))
                     (begin
                       (let ((_g29446_ (values-count _g29445_)))
                         (if (not (fx= _g29446_ 2))
                             (error "Context expects 2 values" _g29446_)))
                       (let ((_target86448705_ (values-ref _g29445_ 0))
                             (_tl86468708_ (values-ref _g29445_ 1)))
                         (if (gx#stx-null? _tl86468708_)
                             (letrec ((_loop86478711_
                                       (lambda (_hd86458715_ _body86518718_)
                                         (if (gx#stx-pair? _hd86458715_)
                                             (let ((_e86488721_
                                                    (gx#syntax-e
                                                     _hd86458715_)))
                                               (let ((_lp-hd86498725_
                                                      (##car _e86488721_))
                                                     (_lp-tl86508728_
                                                      (##cdr _e86488721_)))
                                                 (_loop86478711_
                                                  _lp-tl86508728_
                                                  (cons _lp-hd86498725_
                                                        _body86518718_))))
                                             (let ((_body86528731_
                                                    (reverse _body86518718_)))
                                               ((lambda (_L8735_
                                                         _L8737_
                                                         _L8738_
                                                         _L8739_
                                                         _L8740_)
                                                  (if (gx#stx-list? _L8738_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '~case-test)
                                (cons _L8739_ (cons _L8738_ '())))
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g87648767_
                                                        _g87658770_)
                                                 (cons _g87648767_
                                                       _g87658770_))
                                               '()
                                               _L8737_)))
                                (cons (cons _L8740_ (cons _L8739_ _L8735_))
                                      '()))))
              (_g85608658_ _g85618662_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl86408692_
                                                _body86528731_
                                                _hd86428699_
                                                _hd86368679_
                                                _hd86338669_))))))
                               (_loop86478711_ _target86448705_ '()))
                             (_g85608658_ _g85618662_)))))
                   (_g85608658_ _g85618662_))
               (_g85608658_ _g85618662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g85608658_ _g85618662_))))
                                       (_g85608658_ _g85618662_))))
                               (_g85608658_ _g85618662_))))
                       (_g85608658_ _g85618662_)))))
            (let ((_g85588869_
                   (lambda (_g85618777_)
                     (if (gx#stx-pair? _g85618777_)
                         (let ((_e86098780_ (gx#syntax-e _g85618777_)))
                           (let ((_hd86108784_ (##car _e86098780_))
                                 (_tl86118787_ (##cdr _e86098780_)))
                             (if (gx#stx-pair? _tl86118787_)
                                 (let ((_e86128790_
                                        (gx#syntax-e _tl86118787_)))
                                   (let ((_hd86138794_ (##car _e86128790_))
                                         (_tl86148797_ (##cdr _e86128790_)))
                                     (if (gx#stx-pair? _tl86148797_)
                                         (let ((_e86158800_
                                                (gx#syntax-e _tl86148797_)))
                                           (let ((_hd86168804_
                                                  (##car _e86158800_))
                                                 (_tl86178807_
                                                  (##cdr _e86158800_)))
                                             (if (gx#stx-pair? _hd86168804_)
                                                 (let ((_e86188810_
                                                        (gx#syntax-e
                                                         _hd86168804_)))
                                                   (let ((_hd86198814_
                                                          (##car _e86188810_))
                                                         (_tl86208817_
                                                          (##cdr _e86188810_)))
                                                     (if (gx#stx-pair?
                                                          _tl86208817_)
                                                         (let ((_e86218820_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl86208817_)))
                   (let ((_hd86228824_ (##car _e86218820_))
                         (_tl86238827_ (##cdr _e86218820_)))
                     (if (gx#identifier? _hd86228824_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<sugar>::<sugar:2>[1]#_g29447_|
                              _hd86228824_)
                             (if (gx#stx-pair? _tl86238827_)
                                 (let ((_e86248830_
                                        (gx#syntax-e _tl86238827_)))
                                   (let ((_hd86258834_ (##car _e86248830_))
                                         (_tl86268837_ (##cdr _e86248830_)))
                                     (if (gx#stx-null? _tl86268837_)
                                         ((lambda (_L8840_
                                                   _L8842_
                                                   _L8843_
                                                   _L8844_
                                                   _L8845_)
                                            (if (gx#stx-list? _L8843_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '~case-test)
                          (cons _L8844_ (cons _L8843_ '())))
                    (cons (cons _L8842_ (cons _L8844_ '()))
                          (cons (cons _L8845_ (cons _L8844_ _L8840_)) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g85598773_ _g85618777_)))
                                          _tl86178807_
                                          _hd86258834_
                                          _hd86198814_
                                          _hd86138794_
                                          _hd86108784_)
                                         (_g85598773_ _g85618777_))))
                                 (_g85598773_ _g85618777_))
                             (_g85598773_ _g85618777_))
                         (_g85598773_ _g85618777_))))
                 (_g85598773_ _g85618777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g85598773_ _g85618777_))))
                                         (_g85598773_ _g85618777_))))
                                 (_g85598773_ _g85618777_))))
                         (_g85598773_ _g85618777_)))))
              (let ((_g85578933_
                     (lambda (_g85618873_)
                       (if (gx#stx-pair? _g85618873_)
                           (let ((_e85928876_ (gx#syntax-e _g85618873_)))
                             (let ((_hd85938880_ (##car _e85928876_))
                                   (_tl85948883_ (##cdr _e85928876_)))
                               (if (gx#stx-pair? _tl85948883_)
                                   (let ((_e85958886_
                                          (gx#syntax-e _tl85948883_)))
                                     (let ((_hd85968890_ (##car _e85958886_))
                                           (_tl85978893_ (##cdr _e85958886_)))
                                       (if (gx#stx-pair? _tl85978893_)
                                           (let ((_e85988896_
                                                  (gx#syntax-e _tl85978893_)))
                                             (let ((_hd85998900_
                                                    (##car _e85988896_))
                                                   (_tl86008903_
                                                    (##cdr _e85988896_)))
                                               (if (gx#stx-pair? _hd85998900_)
                                                   (let ((_e86018906_
                                                          (gx#syntax-e
                                                           _hd85998900_)))
                                                     (let ((_hd86028910_
                                                            (##car _e86018906_))
                                                           (_tl86038913_
                                                            (##cdr _e86018906_)))
                                                       (if (gx#identifier?
                                                            _hd86028910_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g29448_|
                                                                _hd86028910_)
                                                               ((lambda (_L8916_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'syntax-error)
                                (cons '"Bad syntax; misplaced else" '())))
                        _hd85968890_)
                       (_g85588869_ _g85618873_))
                   (_g85588869_ _g85618873_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g85588869_ _g85618873_))))
                                           (_g85588869_ _g85618873_))))
                                   (_g85588869_ _g85618873_))))
                           (_g85588869_ _g85618873_)))))
                (let ((_g85569041_
                       (lambda (_g85618937_)
                         (if (gx#stx-pair? _g85618937_)
                             (let ((_e85708940_ (gx#syntax-e _g85618937_)))
                               (let ((_hd85718944_ (##car _e85708940_))
                                     (_tl85728947_ (##cdr _e85708940_)))
                                 (if (gx#stx-pair? _tl85728947_)
                                     (let ((_e85738950_
                                            (gx#syntax-e _tl85728947_)))
                                       (let ((_hd85748954_ (##car _e85738950_))
                                             (_tl85758957_
                                              (##cdr _e85738950_)))
                                         (if (gx#stx-pair? _tl85758957_)
                                             (let ((_e85768960_
                                                    (gx#syntax-e
                                                     _tl85758957_)))
                                               (let ((_hd85778964_
                                                      (##car _e85768960_))
                                                     (_tl85788967_
                                                      (##cdr _e85768960_)))
                                                 (if (gx#stx-pair?
                                                      _hd85778964_)
                                                     (let ((_e85798970_
                                                            (gx#syntax-e
                                                             _hd85778964_)))
                                                       (let ((_hd85808974_
                                                              (##car _e85798970_))
                                                             (_tl85818977_
                                                              (##cdr _e85798970_)))
                                                         (if (gx#identifier?
                                                              _hd85808974_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29449_|
                          _hd85808974_)
                         (if (gx#stx-pair/null? _tl85818977_)
                             (if (fx>= (gx#stx-length _tl85818977_) '0)
                                 (let ((_g29450_
                                        (gx#syntax-split-splice
                                         _tl85818977_
                                         '0)))
                                   (begin
                                     (let ((_g29451_ (values-count _g29450_)))
                                       (if (not (fx= _g29451_ 2))
                                           (error "Context expects 2 values"
                                                  _g29451_)))
                                     (let ((_target85828980_
                                            (values-ref _g29450_ 0))
                                           (_tl85848983_
                                            (values-ref _g29450_ 1)))
                                       (if (gx#stx-null? _tl85848983_)
                                           (letrec ((_loop85858986_
                                                     (lambda (_hd85838990_
                                                              _body85898993_)
                                                       (if (gx#stx-pair?
                                                            _hd85838990_)
                                                           (let ((_e85868996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd85838990_)))
                     (let ((_lp-hd85879000_ (##car _e85868996_))
                           (_lp-tl85889003_ (##cdr _e85868996_)))
                       (_loop85858986_
                        _lp-tl85889003_
                        (cons _lp-hd85879000_ _body85898993_))))
                   (let ((_body85909006_ (reverse _body85898993_)))
                     (if (gx#stx-null? _tl85788967_)
                         ((lambda (_L9010_ _L9012_)
                            (cons (gx#datum->syntax '#f 'begin)
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g90329035_ _g90339038_)
                                             (cons _g90329035_ _g90339038_))
                                           '()
                                           _L9010_))))
                          _body85909006_
                          _hd85748954_)
                         (_g85578933_ _g85618937_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop85858986_
                                              _target85828980_
                                              '()))
                                           (_g85578933_ _g85618937_)))))
                                 (_g85578933_ _g85618937_))
                             (_g85578933_ _g85618937_))
                         (_g85578933_ _g85618937_))
                     (_g85578933_ _g85618937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g85578933_
                                                      _g85618937_))))
                                             (_g85578933_ _g85618937_))))
                                     (_g85578933_ _g85618937_))))
                             (_g85578933_ _g85618937_)))))
                  (let ((_g85559072_
                         (lambda (_g85619045_)
                           (if (gx#stx-pair? _g85619045_)
                               (let ((_e85629048_ (gx#syntax-e _g85619045_)))
                                 (let ((_hd85639052_ (##car _e85629048_))
                                       (_tl85649055_ (##cdr _e85629048_)))
                                   (if (gx#stx-pair? _tl85649055_)
                                       (let ((_e85659058_
                                              (gx#syntax-e _tl85649055_)))
                                         (let ((_hd85669062_
                                                (##car _e85659058_))
                                               (_tl85679065_
                                                (##cdr _e85659058_)))
                                           (if (gx#stx-null? _tl85679065_)
                                               ((lambda () '#!void))
                                               (_g85569041_ _g85619045_))))
                                       (_g85569041_ _g85619045_))))
                               (_g85569041_ _g85619045_)))))
                    (_g85559072_ _$stx8552_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case-test|
      (lambda (_stx9078_)
        (let ((_memq-datum?9081_
               (lambda (_x9443_)
                 (let ((_e9446_ (gx#stx-e _x9443_)))
                   (let ((_$e9449_ (symbol? _e9446_)))
                     (if _$e9449_
                         _$e9449_
                         (let ((_$e9453_ (keyword? _e9446_)))
                           (if _$e9453_ _$e9453_ (immediate? _e9446_)))))))))
          (let ((_memv-datum?9083_
                 (lambda (_x9436_)
                   (let ((_$e9439_ (_memq-datum?9081_ _x9436_)))
                     (if _$e9439_ _$e9439_ (gx#stx-number? _x9436_))))))
            (let ((_g90879138_
                   (lambda (_g90889134_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g90889134_))))
              (let ((_g90869283_
                     (lambda (_g90889142_)
                       (if (gx#stx-pair? _g90889142_)
                           (let ((_e91159145_ (gx#syntax-e _g90889142_)))
                             (let ((_hd91169149_ (##car _e91159145_))
                                   (_tl91179152_ (##cdr _e91159145_)))
                               (if (gx#stx-pair? _tl91179152_)
                                   (let ((_e91189155_
                                          (gx#syntax-e _tl91179152_)))
                                     (let ((_hd91199159_ (##car _e91189155_))
                                           (_tl91209162_ (##cdr _e91189155_)))
                                       (if (gx#stx-pair? _tl91209162_)
                                           (let ((_e91219165_
                                                  (gx#syntax-e _tl91209162_)))
                                             (let ((_hd91229169_
                                                    (##car _e91219165_))
                                                   (_tl91239172_
                                                    (##cdr _e91219165_)))
                                               (if (gx#stx-pair/null?
                                                    _hd91229169_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd91229169_)
                                                             '0)
                                                       (let ((_g29452_
                                                              (gx#syntax-split-splice
                                                               _hd91229169_
                                                               '0)))
                                                         (begin
                                                           (let ((_g29453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g29452_)))
                     (if (not (fx= _g29453_ 2))
                         (error "Context expects 2 values" _g29453_)))
                   (let ((_target91249175_ (values-ref _g29452_ 0))
                         (_tl91269178_ (values-ref _g29452_ 1)))
                     (if (gx#stx-null? _tl91269178_)
                         (letrec ((_loop91279181_
                                   (lambda (_hd91259185_ _datum91319188_)
                                     (if (gx#stx-pair? _hd91259185_)
                                         (let ((_e91289191_
                                                (gx#syntax-e _hd91259185_)))
                                           (let ((_lp-hd91299195_
                                                  (##car _e91289191_))
                                                 (_lp-tl91309198_
                                                  (##cdr _e91289191_)))
                                             (_loop91279181_
                                              _lp-tl91309198_
                                              (cons _lp-hd91299195_
                                                    _datum91319188_))))
                                         (let ((_datum91329201_
                                                (reverse _datum91319188_)))
                                           (if (gx#stx-null? _tl91239172_)
                                               ((lambda (_L9205_ _L9207_)
                                                  (let ((_g92289236_
                                                         (lambda (_g92299232_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g92299232_))))
                                                    (let ((_g92279263_
                                                           (lambda (_g92299240_)
                                                             ((lambda (_L9243_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9243_
                                (cons _L9207_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons (begin
                                                          '#!void
                                                          (foldr (lambda (_g92549257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g92559260_)
                           (cons _g92549257_ _g92559260_))
                         '()
                         _L9205_))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _g92299240_))))
              (_g92279263_
               (if (gx#stx-andmap
                    _memq-datum?9081_
                    (begin
                      '#!void
                      (foldr (lambda (_g92669269_ _g92679272_)
                               (cons _g92669269_ _g92679272_))
                             '()
                             _L9205_)))
                   (gx#datum->syntax '#f 'memq)
                   (if (gx#stx-andmap
                        _memv-datum?9083_
                        (begin
                          '#!void
                          (foldr (lambda (_g92749277_ _g92759280_)
                                   (cons _g92749277_ _g92759280_))
                                 '()
                                 _L9205_)))
                       (gx#datum->syntax '#f 'memv)
                       (gx#datum->syntax '#f 'member)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _datum91329201_
                                                _hd91199159_)
                                               (_g90879138_ _g90889142_)))))))
                           (_loop91279181_ _target91249175_ '()))
                         (_g90879138_ _g90889142_)))))
               (_g90879138_ _g90889142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90879138_ _g90889142_))))
                                           (_g90879138_ _g90889142_))))
                                   (_g90879138_ _g90889142_))))
                           (_g90879138_ _g90889142_)))))
                (let ((_g90859380_
                       (lambda (_g90889287_)
                         (if (gx#stx-pair? _g90889287_)
                             (let ((_e91019290_ (gx#syntax-e _g90889287_)))
                               (let ((_hd91029294_ (##car _e91019290_))
                                     (_tl91039297_ (##cdr _e91019290_)))
                                 (if (gx#stx-pair? _tl91039297_)
                                     (let ((_e91049300_
                                            (gx#syntax-e _tl91039297_)))
                                       (let ((_hd91059304_ (##car _e91049300_))
                                             (_tl91069307_
                                              (##cdr _e91049300_)))
                                         (if (gx#stx-pair? _tl91069307_)
                                             (let ((_e91079310_
                                                    (gx#syntax-e
                                                     _tl91069307_)))
                                               (let ((_hd91089314_
                                                      (##car _e91079310_))
                                                     (_tl91099317_
                                                      (##cdr _e91079310_)))
                                                 (if (gx#stx-pair?
                                                      _hd91089314_)
                                                     (let ((_e91109320_
                                                            (gx#syntax-e
                                                             _hd91089314_)))
                                                       (let ((_hd91119324_
                                                              (##car _e91109320_))
                                                             (_tl91129327_
                                                              (##cdr _e91109320_)))
                                                         (if (gx#stx-null?
                                                              _tl91129327_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl91099317_)
                         ((lambda (_L9330_ _L9332_)
                            (let ((_g93499357_
                                   (lambda (_g93509353_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g93509353_))))
                              (let ((_g93489376_
                                     (lambda (_g93509361_)
                                       ((lambda (_L9364_)
                                          (let ()
                                            (cons _L9364_
                                                  (cons _L9332_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L9330_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g93509361_))))
                                (_g93489376_
                                 (if (_memq-datum?9081_ _L9330_)
                                     (gx#datum->syntax '#f 'eq?)
                                     (if (_memv-datum?9083_ _L9330_)
                                         (gx#datum->syntax '#f 'eqv?)
                                         (gx#datum->syntax '#f 'equal?)))))))
                          _hd91119324_
                          _hd91059304_)
                         (_g90869283_ _g90889287_))
                     (_g90869283_ _g90889287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90869283_
                                                      _g90889287_))))
                                             (_g90869283_ _g90889287_))))
                                     (_g90869283_ _g90889287_))))
                             (_g90869283_ _g90889287_)))))
                  (let ((_g90849432_
                         (lambda (_g90889384_)
                           (if (gx#stx-pair? _g90889384_)
                               (let ((_e90909387_ (gx#syntax-e _g90889384_)))
                                 (let ((_hd90919391_ (##car _e90909387_))
                                       (_tl90929394_ (##cdr _e90909387_)))
                                   (if (gx#stx-pair? _tl90929394_)
                                       (let ((_e90939397_
                                              (gx#syntax-e _tl90929394_)))
                                         (let ((_hd90949401_
                                                (##car _e90939397_))
                                               (_tl90959404_
                                                (##cdr _e90939397_)))
                                           (if (gx#stx-pair? _tl90959404_)
                                               (let ((_e90969407_
                                                      (gx#syntax-e
                                                       _tl90959404_)))
                                                 (let ((_hd90979411_
                                                        (##car _e90969407_))
                                                       (_tl90989414_
                                                        (##cdr _e90969407_)))
                                                   (if (gx#stx-null?
                                                        _hd90979411_)
                                                       (if (gx#stx-null?
                                                            _tl90989414_)
                                                           ((lambda (_L9417_)
                                                              '#f)
                                                            _hd90949401_)
                                                           (_g90859380_
                                                            _g90889384_))
                                                       (_g90859380_
                                                        _g90889384_))))
                                               (_g90859380_ _g90889384_))))
                                       (_g90859380_ _g90889384_))))
                               (_g90859380_ _g90889384_)))))
                    (_g90849432_ _stx9078_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do|
      (lambda (_$stx9458_)
        (let ((_g94629533_
               (lambda (_g94639529_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g94639529_))))
          (let ((_g94619822_
                 (lambda (_g94639537_)
                   (if (gx#stx-pair? _g94639537_)
                       (let ((_e94709540_ (gx#syntax-e _g94639537_)))
                         (let ((_hd94719544_ (##car _e94709540_))
                               (_tl94729547_ (##cdr _e94709540_)))
                           (if (gx#stx-pair? _tl94729547_)
                               (let ((_e94739550_ (gx#syntax-e _tl94729547_)))
                                 (let ((_hd94749554_ (##car _e94739550_))
                                       (_tl94759557_ (##cdr _e94739550_)))
                                   (if (gx#stx-pair/null? _hd94749554_)
                                       (if (fx>= (gx#stx-length _hd94749554_)
                                                 '0)
                                           (let ((_g29454_
                                                  (gx#syntax-split-splice
                                                   _hd94749554_
                                                   '0)))
                                             (begin
                                               (let ((_g29455_
                                                      (values-count _g29454_)))
                                                 (if (not (fx= _g29455_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29455_)))
                                               (let ((_target94769560_
                                                      (values-ref _g29454_ 0))
                                                     (_tl94789563_
                                                      (values-ref _g29454_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl94789563_)
                                                     (letrec ((_loop94799566_
                                                               (lambda (_hd94779570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _step94839573_
                                _init94849575_
                                _var94859577_)
                         (if (gx#stx-pair? _hd94779570_)
                             (let ((_e94809580_ (gx#syntax-e _hd94779570_)))
                               (let ((_lp-hd94819584_ (##car _e94809580_))
                                     (_lp-tl94829587_ (##cdr _e94809580_)))
                                 (if (gx#stx-pair? _lp-hd94819584_)
                                     (let ((_e94899590_
                                            (gx#syntax-e _lp-hd94819584_)))
                                       (let ((_hd94909594_ (##car _e94899590_))
                                             (_tl94919597_
                                              (##cdr _e94899590_)))
                                         (if (gx#stx-pair? _tl94919597_)
                                             (let ((_e94929600_
                                                    (gx#syntax-e
                                                     _tl94919597_)))
                                               (let ((_hd94939604_
                                                      (##car _e94929600_))
                                                     (_tl94949607_
                                                      (##cdr _e94929600_)))
                                                 (if (gx#stx-pair/null?
                                                      _tl94949607_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl94949607_)
                                                               '0)
                                                         (let ((_g29456_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94949607_
                         '0)))
                   (begin
                     (let ((_g29457_ (values-count _g29456_)))
                       (if (not (fx= _g29457_ 2))
                           (error "Context expects 2 values" _g29457_)))
                     (let ((_target94959610_ (values-ref _g29456_ 0))
                           (_tl94979613_ (values-ref _g29456_ 1)))
                       (if (gx#stx-null? _tl94979613_)
                           (letrec ((_loop94989616_
                                     (lambda (_hd94969620_ _step95029623_)
                                       (if (gx#stx-pair? _hd94969620_)
                                           (let ((_e94999626_
                                                  (gx#syntax-e _hd94969620_)))
                                             (let ((_lp-hd95009630_
                                                    (##car _e94999626_))
                                                   (_lp-tl95019633_
                                                    (##cdr _e94999626_)))
                                               (_loop94989616_
                                                _lp-tl95019633_
                                                (cons _lp-hd95009630_
                                                      _step95029623_))))
                                           (let ((_step95039636_
                                                  (reverse _step95029623_)))
                                             (_loop94799566_
                                              _lp-tl94829587_
                                              (cons _step95039636_
                                                    _step94839573_)
                                              (cons _hd94939604_
                                                    _init94849575_)
                                              (cons _hd94909594_
                                                    _var94859577_)))))))
                             (_loop94989616_ _target94959610_ '()))
                           (_g94629533_ _g94639537_)))))
                 (_g94629533_ _g94639537_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94629533_
                                                      _g94639537_))))
                                             (_g94629533_ _g94639537_))))
                                     (_g94629533_ _g94639537_))))
                             (let ((_step94869640_ (reverse _step94839573_))
                                   (_init94879643_ (reverse _init94849575_))
                                   (_var94889645_ (reverse _var94859577_)))
                               (if (gx#stx-pair? _tl94759557_)
                                   (let ((_e95049648_
                                          (gx#syntax-e _tl94759557_)))
                                     (let ((_hd95059652_ (##car _e95049648_))
                                           (_tl95069655_ (##cdr _e95049648_)))
                                       (if (gx#stx-pair? _hd95059652_)
                                           (let ((_e95079658_
                                                  (gx#syntax-e _hd95059652_)))
                                             (let ((_hd95089662_
                                                    (##car _e95079658_))
                                                   (_tl95099665_
                                                    (##cdr _e95079658_)))
                                               (if (gx#stx-pair/null?
                                                    _tl95099665_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl95099665_)
                                                             '0)
                                                       (let ((_g29458_
                                                              (gx#syntax-split-splice
                                                               _tl95099665_
                                                               '0)))
                                                         (begin
                                                           (let ((_g29459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g29458_)))
                     (if (not (fx= _g29459_ 2))
                         (error "Context expects 2 values" _g29459_)))
                   (let ((_target95109668_ (values-ref _g29458_ 0))
                         (_tl95129671_ (values-ref _g29458_ 1)))
                     (if (gx#stx-null? _tl95129671_)
                         (letrec ((_loop95139674_
                                   (lambda (_hd95119678_ _fini95179681_)
                                     (if (gx#stx-pair? _hd95119678_)
                                         (let ((_e95149684_
                                                (gx#syntax-e _hd95119678_)))
                                           (let ((_lp-hd95159688_
                                                  (##car _e95149684_))
                                                 (_lp-tl95169691_
                                                  (##cdr _e95149684_)))
                                             (_loop95139674_
                                              _lp-tl95169691_
                                              (cons _lp-hd95159688_
                                                    _fini95179681_))))
                                         (let ((_fini95189694_
                                                (reverse _fini95179681_)))
                                           (if (gx#stx-pair/null? _tl95069655_)
                                               (if (fx>= (gx#stx-length
                                                          _tl95069655_)
                                                         '0)
                                                   (let ((_g29460_
                                                          (gx#syntax-split-splice
                                                           _tl95069655_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29461_
                                                              (values-count
                                                               _g29460_)))
                                                         (if (not (fx= _g29461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29461_)))
               (let ((_target95199698_ (values-ref _g29460_ 0))
                     (_tl95219701_ (values-ref _g29460_ 1)))
                 (if (gx#stx-null? _tl95219701_)
                     (letrec ((_loop95229704_
                               (lambda (_hd95209708_ _body95269711_)
                                 (if (gx#stx-pair? _hd95209708_)
                                     (let ((_e95239714_
                                            (gx#syntax-e _hd95209708_)))
                                       (let ((_lp-hd95249718_
                                              (##car _e95239714_))
                                             (_lp-tl95259721_
                                              (##cdr _e95239714_)))
                                         (_loop95229704_
                                          _lp-tl95259721_
                                          (cons _lp-hd95249718_
                                                _body95269711_))))
                                     (let ((_body95279724_
                                            (reverse _body95269711_)))
                                       ((lambda (_L9728_
                                                 _L9730_
                                                 _L9731_
                                                 _L9732_
                                                 _L9733_
                                                 _L9734_)
                                          (if (gx#stx-andmap
                                               gx#identifier?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g97679770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97689773_)
                  (cons _g97679770_ _g97689773_))
                '()
                _L9734_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$loop)
                                                          (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-check-splice-targets _L9733_ _L9734_)
                          (foldr (lambda (_g97759788_ _g97769791_ _g97779793_)
                                   (cons (cons _g97769791_
                                               (cons _g97759788_ '()))
                                         _g97779793_))
                                 '()
                                 _L9733_
                                 _L9734_))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'not)
                                                (cons _L9731_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g97789796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g97799799_)
                         (cons _g97789796_ _g97799799_))
                       (cons (cons (gx#datum->syntax '#f '$loop)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _L9732_
                                      _L9734_)
                                     (foldr (lambda (_g97809802_
                                                     _g97819805_
                                                     _g97829807_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons _g97819805_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g97839810_ _g97849813_)
                                   (cons _g97839810_ _g97849813_))
                                 '()
                                 _g97809802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g97829807_))
                                            '()
                                            _L9732_
                                            _L9734_)))
                             '())
                       _L9728_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g97859816_ _g97869819_)
                                     (cons _g97859816_ _g97869819_))
                                   '()
                                   _L9730_))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g94629533_ _g94639537_)))
                                        _body95279724_
                                        _fini95189694_
                                        _hd95089662_
                                        _step94869640_
                                        _init94879643_
                                        _var94889645_))))))
                       (_loop95229704_ _target95199698_ '()))
                     (_g94629533_ _g94639537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94629533_ _g94639537_))
                                               (_g94629533_ _g94639537_)))))))
                           (_loop95139674_ _target95109668_ '()))
                         (_g94629533_ _g94639537_)))))
               (_g94629533_ _g94639537_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94629533_ _g94639537_))))
                                           (_g94629533_ _g94639537_))))
                                   (_g94629533_ _g94639537_)))))))
               (_loop94799566_ _target94769560_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94629533_
                                                      _g94639537_)))))
                                           (_g94629533_ _g94639537_))
                                       (_g94629533_ _g94639537_))))
                               (_g94629533_ _g94639537_))))
                       (_g94629533_ _g94639537_)))))
            (_g94619822_ _$stx9458_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do-while|
      (lambda (_$stx9830_)
        (let ((_g98349857_
               (lambda (_g98359853_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g98359853_))))
          (let ((_g98339928_
                 (lambda (_g98359861_)
                   (if (gx#stx-pair? _g98359861_)
                       (let ((_e98409864_ (gx#syntax-e _g98359861_)))
                         (let ((_hd98419868_ (##car _e98409864_))
                               (_tl98429871_ (##cdr _e98409864_)))
                           (if (gx#stx-pair? _tl98429871_)
                               (let ((_e98439874_ (gx#syntax-e _tl98429871_)))
                                 (let ((_hd98449878_ (##car _e98439874_))
                                       (_tl98459881_ (##cdr _e98439874_)))
                                   (if (gx#stx-pair? _tl98459881_)
                                       (let ((_e98469884_
                                              (gx#syntax-e _tl98459881_)))
                                         (let ((_hd98479888_
                                                (##car _e98469884_))
                                               (_tl98489891_
                                                (##cdr _e98469884_)))
                                           (if (gx#stx-pair? _hd98479888_)
                                               (let ((_e98499894_
                                                      (gx#syntax-e
                                                       _hd98479888_)))
                                                 (let ((_hd98509898_
                                                        (##car _e98499894_))
                                                       (_tl98519901_
                                                        (##cdr _e98499894_)))
                                                   ((lambda (_L9904_
                                                             _L9906_
                                                             _L9907_
                                                             _L9908_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'do)
                                                            (cons _L9908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (gx#datum->syntax '#f 'not)
                                            (cons _L9907_ '()))
                                      _L9906_)
                                _L9904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl98489891_
                                                    _tl98519901_
                                                    _hd98509898_
                                                    _hd98449878_)))
                                               (_g98349857_ _g98359861_))))
                                       (_g98349857_ _g98359861_))))
                               (_g98349857_ _g98359861_))))
                       (_g98349857_ _g98359861_)))))
            (_g98339928_ _$stx9830_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#begin0|
      (lambda (_$stx9932_)
        (let ((_g99379968_
               (lambda (_g99389964_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g99389964_))))
          (let ((_g993610053_
                 (lambda (_g99389972_)
                   (if (gx#stx-pair? _g99389972_)
                       (let ((_e99489975_ (gx#syntax-e _g99389972_)))
                         (let ((_hd99499979_ (##car _e99489975_))
                               (_tl99509982_ (##cdr _e99489975_)))
                           (if (gx#stx-pair? _tl99509982_)
                               (let ((_e99519985_ (gx#syntax-e _tl99509982_)))
                                 (let ((_hd99529989_ (##car _e99519985_))
                                       (_tl99539992_ (##cdr _e99519985_)))
                                   (if (gx#stx-pair/null? _tl99539992_)
                                       (if (fx>= (gx#stx-length _tl99539992_)
                                                 '0)
                                           (let ((_g29462_
                                                  (gx#syntax-split-splice
                                                   _tl99539992_
                                                   '0)))
                                             (begin
                                               (let ((_g29463_
                                                      (values-count _g29462_)))
                                                 (if (not (fx= _g29463_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29463_)))
                                               (let ((_target99549995_
                                                      (values-ref _g29462_ 0))
                                                     (_tl99569998_
                                                      (values-ref _g29462_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl99569998_)
                                                     (letrec ((_loop995710001_
                                                               (lambda (_hd995510005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _rest996110008_)
                         (if (gx#stx-pair? _hd995510005_)
                             (let ((_e995810011_ (gx#syntax-e _hd995510005_)))
                               (let ((_lp-hd995910015_ (##car _e995810011_))
                                     (_lp-tl996010018_ (##cdr _e995810011_)))
                                 (_loop995710001_
                                  _lp-tl996010018_
                                  (cons _lp-hd995910015_ _rest996110008_))))
                             (let ((_rest996210021_ (reverse _rest996110008_)))
                               ((lambda (_L10025_ _L10027_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$r)
                                                    (cons _L10027_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '%#expression)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              (begin
                                '#!void
                                (foldr (lambda (_g1004410047_ _g1004510050_)
                                         (cons _g1004410047_ _g1004510050_))
                                       '()
                                       _L10025_)))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$r)
                                                          '())))))
                                _rest996210021_
                                _hd99529989_))))))
               (_loop995710001_ _target99549995_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g99379968_
                                                      _g99389972_)))))
                                           (_g99379968_ _g99389972_))
                                       (_g99379968_ _g99389972_))))
                               (_g99379968_ _g99389972_))))
                       (_g99379968_ _g99389972_)))))
            (let ((_g993510093_
                   (lambda (_g993810057_)
                     (if (gx#stx-pair? _g993810057_)
                         (let ((_e994010060_ (gx#syntax-e _g993810057_)))
                           (let ((_hd994110064_ (##car _e994010060_))
                                 (_tl994210067_ (##cdr _e994010060_)))
                             (if (gx#stx-pair? _tl994210067_)
                                 (let ((_e994310070_
                                        (gx#syntax-e _tl994210067_)))
                                   (let ((_hd994410074_ (##car _e994310070_))
                                         (_tl994510077_ (##cdr _e994310070_)))
                                     (if (gx#stx-null? _tl994510077_)
                                         ((lambda (_L10080_) _L10080_)
                                          _hd994410074_)
                                         (_g993610053_ _g993810057_))))
                                 (_g993610053_ _g993810057_))))
                         (_g993610053_ _g993810057_)))))
              (_g993510093_ _$stx9932_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#rec|
      (lambda (_$stx10098_)
        (let ((_g1010410157_
               (lambda (_g1010510153_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1010510153_))))
          (let ((_g1010310256_
                 (lambda (_g1010510161_)
                   (if (gx#stx-pair? _g1010510161_)
                       (let ((_e1013410164_ (gx#syntax-e _g1010510161_)))
                         (let ((_hd1013510168_ (##car _e1013410164_))
                               (_tl1013610171_ (##cdr _e1013410164_)))
                           (if (gx#stx-pair? _tl1013610171_)
                               (let ((_e1013710174_
                                      (gx#syntax-e _tl1013610171_)))
                                 (let ((_hd1013810178_ (##car _e1013710174_))
                                       (_tl1013910181_ (##cdr _e1013710174_)))
                                   (if (gx#stx-pair? _hd1013810178_)
                                       (let ((_e1014010184_
                                              (gx#syntax-e _hd1013810178_)))
                                         (let ((_hd1014110188_
                                                (##car _e1014010184_))
                                               (_tl1014210191_
                                                (##cdr _e1014010184_)))
                                           (if (gx#stx-pair/null?
                                                _tl1013910181_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1013910181_)
                                                         '0)
                                                   (let ((_g29464_
                                                          (gx#syntax-split-splice
                                                           _tl1013910181_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29465_
                                                              (values-count
                                                               _g29464_)))
                                                         (if (not (fx= _g29465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29465_)))
               (let ((_target1014310194_ (values-ref _g29464_ 0))
                     (_tl1014510197_ (values-ref _g29464_ 1)))
                 (if (gx#stx-null? _tl1014510197_)
                     (letrec ((_loop1014610200_
                               (lambda (_hd1014410204_ _body1015010207_)
                                 (if (gx#stx-pair? _hd1014410204_)
                                     (let ((_e1014710210_
                                            (gx#syntax-e _hd1014410204_)))
                                       (let ((_lp-hd1014810214_
                                              (##car _e1014710210_))
                                             (_lp-tl1014910217_
                                              (##cdr _e1014710210_)))
                                         (_loop1014610200_
                                          _lp-tl1014910217_
                                          (cons _lp-hd1014810214_
                                                _body1015010207_))))
                                     (let ((_body1015110220_
                                            (reverse _body1015010207_)))
                                       ((lambda (_L10224_ _L10226_ _L10227_)
                                          (if (gx#identifier? _L10227_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec)
                                                    (cons (cons (cons _L10227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons _L10226_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1024710250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1024810253_)
                   (cons _g1024710250_ _g1024810253_))
                 '()
                 _L10224_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L10227_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1010410157_ _g1010510161_)))
                                        _body1015110220_
                                        _tl1014210191_
                                        _hd1014110188_))))))
                       (_loop1014610200_ _target1014310194_ '()))
                     (_g1010410157_ _g1010510161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1010410157_
                                                    _g1010510161_))
                                               (_g1010410157_ _g1010510161_))))
                                       (_g1010410157_ _g1010510161_))))
                               (_g1010410157_ _g1010510161_))))
                       (_g1010410157_ _g1010510161_)))))
            (let ((_g1010210322_
                   (lambda (_g1010510260_)
                     (if (gx#stx-pair? _g1010510260_)
                         (let ((_e1011910263_ (gx#syntax-e _g1010510260_)))
                           (let ((_hd1012010267_ (##car _e1011910263_))
                                 (_tl1012110270_ (##cdr _e1011910263_)))
                             (if (gx#stx-pair? _tl1012110270_)
                                 (let ((_e1012210273_
                                        (gx#syntax-e _tl1012110270_)))
                                   (let ((_hd1012310277_ (##car _e1012210273_))
                                         (_tl1012410280_
                                          (##cdr _e1012210273_)))
                                     (if (gx#stx-pair? _hd1012310277_)
                                         (let ((_e1012510283_
                                                (gx#syntax-e _hd1012310277_)))
                                           (let ((_hd1012610287_
                                                  (##car _e1012510283_))
                                                 (_tl1012710290_
                                                  (##cdr _e1012510283_)))
                                             (if (gx#identifier?
                                                  _hd1012610287_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g29466_|
                                                      _hd1012610287_)
                                                     (if (gx#stx-pair?
                                                          _tl1012410280_)
                                                         (let ((_e1012810293_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1012410280_)))
                   (let ((_hd1012910297_ (##car _e1012810293_))
                         (_tl1013010300_ (##cdr _e1012810293_)))
                     (if (gx#stx-null? _tl1013010300_)
                         ((lambda (_L10303_ _L10305_)
                            (if (gx#identifier-list? _L10305_)
                                (cons (gx#datum->syntax '#f 'letrec-values)
                                      (cons (cons (cons _L10305_
                                                        (cons _L10303_ '()))
                                                  '())
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'values)
                                                        _L10305_)
                                                  '())))
                                (_g1010310256_ _g1010510260_)))
                          _hd1012910297_
                          _tl1012710290_)
                         (_g1010310256_ _g1010510260_))))
                 (_g1010310256_ _g1010510260_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1010310256_
                                                      _g1010510260_))
                                                 (_g1010310256_
                                                  _g1010510260_))))
                                         (_g1010310256_ _g1010510260_))))
                                 (_g1010310256_ _g1010510260_))))
                         (_g1010310256_ _g1010510260_)))))
              (let ((_g1010110376_
                     (lambda (_g1010510326_)
                       (if (gx#stx-pair? _g1010510326_)
                           (let ((_e1010810329_ (gx#syntax-e _g1010510326_)))
                             (let ((_hd1010910333_ (##car _e1010810329_))
                                   (_tl1011010336_ (##cdr _e1010810329_)))
                               (if (gx#stx-pair? _tl1011010336_)
                                   (let ((_e1011110339_
                                          (gx#syntax-e _tl1011010336_)))
                                     (let ((_hd1011210343_
                                            (##car _e1011110339_))
                                           (_tl1011310346_
                                            (##cdr _e1011110339_)))
                                       (if (gx#stx-pair? _tl1011310346_)
                                           (let ((_e1011410349_
                                                  (gx#syntax-e
                                                   _tl1011310346_)))
                                             (let ((_hd1011510353_
                                                    (##car _e1011410349_))
                                                   (_tl1011610356_
                                                    (##cdr _e1011410349_)))
                                               (if (gx#stx-null?
                                                    _tl1011610356_)
                                                   ((lambda (_L10359_ _L10361_)
                                                      (if (gx#identifier?
                                                           _L10361_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L10361_ (cons _L10359_ '())) '())
                              (cons _L10361_ '())))
                  (_g1010210322_ _g1010510326_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1011510353_
                                                    _hd1011210343_)
                                                   (_g1010210322_
                                                    _g1010510326_))))
                                           (_g1010210322_ _g1010510326_))))
                                   (_g1010210322_ _g1010510326_))))
                           (_g1010210322_ _g1010510326_)))))
                (_g1010110376_ _$stx10098_)))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet|
      (lambda (_stx10381_)
        (let ((_let-head?10384_
               (lambda (_x10931_)
                 (let ((_g1093510946_
                        (lambda (_g1093610942_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1093610942_))))
                   (let ((_g1093410957_
                          (lambda (_g1093610950_)
                            ((lambda () (gx#identifier? _x10931_))))))
                     (let ((_g1093310987_
                            (lambda (_g1093610961_)
                              (if (gx#stx-pair? _g1093610961_)
                                  (let ((_e1093810964_
                                         (gx#syntax-e _g1093610961_)))
                                    (let ((_hd1093910968_
                                           (##car _e1093810964_))
                                          (_tl1094010971_
                                           (##cdr _e1093810964_)))
                                      (if (gx#identifier? _hd1093910968_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:2>[1]#_g29476_|
                                               _hd1093910968_)
                                              ((lambda (_L10974_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L10974_))
                                               _tl1094010971_)
                                              (_g1093410957_ _g1093610961_))
                                          (_g1093410957_ _g1093610961_))))
                                  (_g1093410957_ _g1093610961_)))))
                       (_g1093310987_ _x10931_)))))))
          (let ((_let-head10386_
                 (lambda (_x10871_)
                   (let ((_g1087510886_
                          (lambda (_g1087610882_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1087610882_))))
                     (let ((_g1087410897_
                            (lambda (_g1087610890_)
                              ((lambda () (list _x10871_))))))
                       (let ((_g1087310927_
                              (lambda (_g1087610901_)
                                (if (gx#stx-pair? _g1087610901_)
                                    (let ((_e1087810904_
                                           (gx#syntax-e _g1087610901_)))
                                      (let ((_hd1087910908_
                                             (##car _e1087810904_))
                                            (_tl1088010911_
                                             (##cdr _e1087810904_)))
                                        (if (gx#identifier? _hd1087910908_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:2>[1]#_g29475_|
                                                 _hd1087910908_)
                                                ((lambda (_L10914_) _L10914_)
                                                 _tl1088010911_)
                                                (_g1087410897_ _g1087610901_))
                                            (_g1087410897_ _g1087610901_))))
                                    (_g1087410897_ _g1087610901_)))))
                         (_g1087310927_ _x10871_)))))))
            (let ((_g1038910447_
                   (lambda (_g1039010443_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1039010443_))))
              (let ((_g1038810797_
                     (lambda (_g1039010451_)
                       (if (gx#stx-pair? _g1039010451_)
                           (let ((_e1041010454_ (gx#syntax-e _g1039010451_)))
                             (let ((_hd1041110458_ (##car _e1041010454_))
                                   (_tl1041210461_ (##cdr _e1041010454_)))
                               (if (gx#stx-pair? _tl1041210461_)
                                   (let ((_e1041310464_
                                          (gx#syntax-e _tl1041210461_)))
                                     (let ((_hd1041410468_
                                            (##car _e1041310464_))
                                           (_tl1041510471_
                                            (##cdr _e1041310464_)))
                                       (if (gx#stx-pair/null? _hd1041410468_)
                                           (if (fx>= (gx#stx-length
                                                      _hd1041410468_)
                                                     '0)
                                               (let ((_g29467_
                                                      (gx#syntax-split-splice
                                                       _hd1041410468_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29468_
                                                          (values-count
                                                           _g29467_)))
                                                     (if (not (fx= _g29468_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29468_)))
                                                   (let ((_target1041610474_
                                                          (values-ref
                                                           _g29467_
                                                           0))
                                                         (_tl1041810477_
                                                          (values-ref
                                                           _g29467_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl1041810477_)
                                                         (letrec ((_loop1041910480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1041710484_
                                    _e1042310487_
                                    _hd1042410489_)
                             (if (gx#stx-pair? _hd1041710484_)
                                 (let ((_e1042010492_
                                        (gx#syntax-e _hd1041710484_)))
                                   (let ((_lp-hd1042110496_
                                          (##car _e1042010492_))
                                         (_lp-tl1042210499_
                                          (##cdr _e1042010492_)))
                                     (if (gx#stx-pair? _lp-hd1042110496_)
                                         (let ((_e1042710502_
                                                (gx#syntax-e
                                                 _lp-hd1042110496_)))
                                           (let ((_hd1042810506_
                                                  (##car _e1042710502_))
                                                 (_tl1042910509_
                                                  (##cdr _e1042710502_)))
                                             (if (gx#stx-pair? _tl1042910509_)
                                                 (let ((_e1043010512_
                                                        (gx#syntax-e
                                                         _tl1042910509_)))
                                                   (let ((_hd1043110516_
                                                          (##car _e1043010512_))
                                                         (_tl1043210519_
                                                          (##cdr _e1043010512_)))
                                                     (if (gx#stx-null?
                                                          _tl1043210519_)
                                                         (_loop1041910480_
                                                          _lp-tl1042210499_
                                                          (cons _hd1043110516_
                                                                _e1042310487_)
                                                          (cons _hd1042810506_
                                                                _hd1042410489_))
                                                         (_g1038910447_
                                                          _g1039010451_))))
                                                 (_g1038910447_
                                                  _g1039010451_))))
                                         (_g1038910447_ _g1039010451_))))
                                 (let ((_e1042510522_ (reverse _e1042310487_))
                                       (_hd1042610525_
                                        (reverse _hd1042410489_)))
                                   (if (gx#stx-pair/null? _tl1041510471_)
                                       (if (fx>= (gx#stx-length _tl1041510471_)
                                                 '0)
                                           (let ((_g29469_
                                                  (gx#syntax-split-splice
                                                   _tl1041510471_
                                                   '0)))
                                             (begin
                                               (let ((_g29470_
                                                      (values-count _g29469_)))
                                                 (if (not (fx= _g29470_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29470_)))
                                               (let ((_target1043310528_
                                                      (values-ref _g29469_ 0))
                                                     (_tl1043510531_
                                                      (values-ref _g29469_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1043510531_)
                                                     (letrec ((_loop1043610534_
                                                               (lambda (_hd1043410538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body1044010541_)
                         (if (gx#stx-pair? _hd1043410538_)
                             (let ((_e1043710544_
                                    (gx#syntax-e _hd1043410538_)))
                               (let ((_lp-hd1043810548_ (##car _e1043710544_))
                                     (_lp-tl1043910551_ (##cdr _e1043710544_)))
                                 (_loop1043610534_
                                  _lp-tl1043910551_
                                  (cons _lp-hd1043810548_ _body1044010541_))))
                             (let ((_body1044110554_
                                    (reverse _body1044010541_)))
                               ((lambda (_L10558_ _L10560_ _L10561_)
                                  (if (gx#stx-andmap
                                       _let-head?10384_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1058410587_
                                                         _g1058510590_)
                                                  (cons _g1058410587_
                                                        _g1058510590_))
                                                '()
                                                _L10561_)))
                                      (let ((_g1059310626_
                                             (lambda (_g1059410622_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1059410622_))))
                                        (let ((_g1059210777_
                                               (lambda (_g1059410630_)
                                                 (if (gx#stx-pair?
                                                      _g1059410630_)
                                                     (let ((_e1059710633_
                                                            (gx#syntax-e
                                                             _g1059410630_)))
                                                       (let ((_hd1059810637_
                                                              (##car _e1059710633_))
                                                             (_tl1059910640_
                                                              (##cdr _e1059710633_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1059810637_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1059810637_)
                               '0)
                         (let ((_g29471_
                                (gx#syntax-split-splice _hd1059810637_ '0)))
                           (begin
                             (let ((_g29472_ (values-count _g29471_)))
                               (if (not (fx= _g29472_ 2))
                                   (error "Context expects 2 values"
                                          _g29472_)))
                             (let ((_target1060010643_ (values-ref _g29471_ 0))
                                   (_tl1060210646_ (values-ref _g29471_ 1)))
                               (if (gx#stx-null? _tl1060210646_)
                                   (letrec ((_loop1060310649_
                                             (lambda (_hd1060110653_
                                                      _$e1060710656_)
                                               (if (gx#stx-pair?
                                                    _hd1060110653_)
                                                   (let ((_e1060410659_
                                                          (gx#syntax-e
                                                           _hd1060110653_)))
                                                     (let ((_lp-hd1060510663_
                                                            (##car _e1060410659_))
                                                           (_lp-tl1060610666_
                                                            (##cdr _e1060410659_)))
                                                       (_loop1060310649_
                                                        _lp-tl1060610666_
                                                        (cons _lp-hd1060510663_
                                                              _$e1060710656_))))
                                                   (let ((_$e1060810669_
                                                          (reverse _$e1060710656_)))
                                                     (if (gx#stx-pair?
                                                          _tl1059910640_)
                                                         (let ((_e1060910673_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1059910640_)))
                   (let ((_hd1061010677_ (##car _e1060910673_))
                         (_tl1061110680_ (##cdr _e1060910673_)))
                     (if (gx#stx-pair/null? _hd1061010677_)
                         (if (fx>= (gx#stx-length _hd1061010677_) '0)
                             (let ((_g29473_
                                    (gx#syntax-split-splice
                                     _hd1061010677_
                                     '0)))
                               (begin
                                 (let ((_g29474_ (values-count _g29473_)))
                                   (if (not (fx= _g29474_ 2))
                                       (error "Context expects 2 values"
                                              _g29474_)))
                                 (let ((_target1061210683_
                                        (values-ref _g29473_ 0))
                                       (_tl1061410686_
                                        (values-ref _g29473_ 1)))
                                   (if (gx#stx-null? _tl1061410686_)
                                       (letrec ((_loop1061510689_
                                                 (lambda (_hd1061310693_
                                                          _hd-bind1061910696_)
                                                   (if (gx#stx-pair?
                                                        _hd1061310693_)
                                                       (let ((_e1061610699_
                                                              (gx#syntax-e
                                                               _hd1061310693_)))
                                                         (let ((_lp-hd1061710703_
                                                                (##car _e1061610699_))
                                                               (_lp-tl1061810706_
                                                                (##cdr _e1061610699_)))
                                                           (_loop1061510689_
                                                            _lp-tl1061810706_
                                                            (cons _lp-hd1061710703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd-bind1061910696_))))
               (let ((_hd-bind1062010709_ (reverse _hd-bind1061910696_)))
                 (if (gx#stx-null? _tl1061110680_)
                     ((lambda (_L10713_ _L10715_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let-values)
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _L10560_
                                         _L10715_)
                                        (foldr (lambda (_g1073810749_
                                                        _g1073910752_
                                                        _g1074010754_)
                                                 (cons (cons (cons _g1073910752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _g1073810749_ '()))
               _g1074010754_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _L10560_
                                               _L10715_))
                                      (cons (cons (gx#datum->syntax '#f 'and)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1074110757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1074210760_)
                     (cons _g1074110757_ _g1074210760_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L10715_
                                        _L10713_)
                                       (foldr (lambda (_g1074310763_
                                                       _g1074410766_
                                                       _g1074510768_)
                                                (cons (cons _g1074410766_
                                                            (cons _g1074310763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g1074510768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L10715_
                                              _L10713_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1074610771_
                                                       _g1074710774_)
                                                (cons _g1074610771_
                                                      _g1074710774_))
                                              '()
                                              _L10558_))))
                         '())
                   _L10715_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _hd-bind1062010709_
                      _$e1060810669_)
                     (_g1059310626_ _g1059410630_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1061510689_
                                          _target1061210683_
                                          '()))
                                       (_g1059310626_ _g1059410630_)))))
                             (_g1059310626_ _g1059410630_))
                         (_g1059310626_ _g1059410630_))))
                 (_g1059310626_ _g1059410630_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1060310649_ _target1060010643_ '()))
                                   (_g1059310626_ _g1059410630_)))))
                         (_g1059310626_ _g1059410630_))
                     (_g1059310626_ _g1059410630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1059310626_
                                                      _g1059410630_)))))
                                          (_g1059210777_
                                           (list (gx#gentemps
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1078010783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1078110786_)
                     (cons _g1078010783_ _g1078110786_))
                   '()
                   _L10561_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-map
                                                  _let-head10386_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1078810791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1078910794_)
                     (cons _g1078810791_ _g1078910794_))
                   '()
                   _L10561_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g1038910447_ _g1039010451_)))
                                _body1044110554_
                                _e1042510522_
                                _hd1042610525_))))))
               (_loop1043610534_ _target1043310528_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1038910447_
                                                      _g1039010451_)))))
                                           (_g1038910447_ _g1039010451_))
                                       (_g1038910447_ _g1039010451_)))))))
                   (_loop1041910480_ _target1041610474_ '() '()))
                 (_g1038910447_ _g1039010451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1038910447_ _g1039010451_))
                                           (_g1038910447_ _g1039010451_))))
                                   (_g1038910447_ _g1039010451_))))
                           (_g1038910447_ _g1039010451_)))))
                (let ((_g1038710867_
                       (lambda (_g1039010801_)
                         (if (gx#stx-pair? _g1039010801_)
                             (let ((_e1039510804_ (gx#syntax-e _g1039010801_)))
                               (let ((_hd1039610808_ (##car _e1039510804_))
                                     (_tl1039710811_ (##cdr _e1039510804_)))
                                 (if (gx#stx-pair? _tl1039710811_)
                                     (let ((_e1039810814_
                                            (gx#syntax-e _tl1039710811_)))
                                       (let ((_hd1039910818_
                                              (##car _e1039810814_))
                                             (_tl1040010821_
                                              (##cdr _e1039810814_)))
                                         (if (gx#stx-pair? _hd1039910818_)
                                             (let ((_e1040110824_
                                                    (gx#syntax-e
                                                     _hd1039910818_)))
                                               (let ((_hd1040210828_
                                                      (##car _e1040110824_))
                                                     (_tl1040310831_
                                                      (##cdr _e1040110824_)))
                                                 (if (gx#stx-pair?
                                                      _tl1040310831_)
                                                     (let ((_e1040410834_
                                                            (gx#syntax-e
                                                             _tl1040310831_)))
                                                       (let ((_hd1040510838_
                                                              (##car _e1040410834_))
                                                             (_tl1040610841_
                                                              (##cdr _e1040410834_)))
                                                         (if (gx#stx-null?
                                                              _tl1040610841_)
                                                             ((lambda (_L10844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10846_
                               _L10847_
                               _L10848_)
                        (if (_let-head?10384_ _L10847_)
                            (cons _L10848_
                                  (cons (cons (cons _L10847_
                                                    (cons _L10846_ '()))
                                              '())
                                        _L10844_))
                            (_g1038810797_ _g1039010801_)))
                      _tl1040010821_
                      _hd1040510838_
                      _hd1040210828_
                      _hd1039610808_)
                     (_g1038810797_ _g1039010801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1038810797_
                                                      _g1039010801_))))
                                             (_g1038810797_ _g1039010801_))))
                                     (_g1038810797_ _g1039010801_))))
                             (_g1038810797_ _g1039010801_)))))
                  (_g1038710867_ _stx10381_))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet*|
      (lambda (_$stx10995_)
        (let ((_g1100011045_
               (lambda (_g1100111041_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1100111041_))))
          (let ((_g1099911146_
                 (lambda (_g1100111049_)
                   (if (gx#stx-pair? _g1100111049_)
                       (let ((_e1102211052_ (gx#syntax-e _g1100111049_)))
                         (let ((_hd1102311056_ (##car _e1102211052_))
                               (_tl1102411059_ (##cdr _e1102211052_)))
                           (if (gx#stx-pair? _tl1102411059_)
                               (let ((_e1102511062_
                                      (gx#syntax-e _tl1102411059_)))
                                 (let ((_hd1102611066_ (##car _e1102511062_))
                                       (_tl1102711069_ (##cdr _e1102511062_)))
                                   (if (gx#stx-pair? _hd1102611066_)
                                       (let ((_e1102811072_
                                              (gx#syntax-e _hd1102611066_)))
                                         (let ((_hd1102911076_
                                                (##car _e1102811072_))
                                               (_tl1103011079_
                                                (##cdr _e1102811072_)))
                                           (if (gx#stx-pair/null?
                                                _tl1102711069_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1102711069_)
                                                         '0)
                                                   (let ((_g29477_
                                                          (gx#syntax-split-splice
                                                           _tl1102711069_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29478_
                                                              (values-count
                                                               _g29477_)))
                                                         (if (not (fx= _g29478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29478_)))
               (let ((_target1103111082_ (values-ref _g29477_ 0))
                     (_tl1103311085_ (values-ref _g29477_ 1)))
                 (if (gx#stx-null? _tl1103311085_)
                     (letrec ((_loop1103411088_
                               (lambda (_hd1103211092_ _body1103811095_)
                                 (if (gx#stx-pair? _hd1103211092_)
                                     (let ((_e1103511098_
                                            (gx#syntax-e _hd1103211092_)))
                                       (let ((_lp-hd1103611102_
                                              (##car _e1103511098_))
                                             (_lp-tl1103711105_
                                              (##cdr _e1103511098_)))
                                         (_loop1103411088_
                                          _lp-tl1103711105_
                                          (cons _lp-hd1103611102_
                                                _body1103811095_))))
                                     (let ((_body1103911108_
                                            (reverse _body1103811095_)))
                                       ((lambda (_L11112_
                                                 _L11114_
                                                 _L11115_
                                                 _L11116_)
                                          (cons (gx#datum->syntax '#f 'alet)
                                                (cons (cons _L11115_ '())
                                                      (cons (cons _L11116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L11114_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1113711140_ _g1113811143_)
                                           (cons _g1113711140_ _g1113811143_))
                                         '()
                                         _L11112_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body1103911108_
                                        _tl1103011079_
                                        _hd1102911076_
                                        _hd1102311056_))))))
                       (_loop1103411088_ _target1103111082_ '()))
                     (_g1100011045_ _g1100111049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1100011045_
                                                    _g1100111049_))
                                               (_g1100011045_ _g1100111049_))))
                                       (_g1100011045_ _g1100111049_))))
                               (_g1100011045_ _g1100111049_))))
                       (_g1100011045_ _g1100111049_)))))
            (let ((_g1099811228_
                   (lambda (_g1100111150_)
                     (if (gx#stx-pair? _g1100111150_)
                         (let ((_e1100311153_ (gx#syntax-e _g1100111150_)))
                           (let ((_hd1100411157_ (##car _e1100311153_))
                                 (_tl1100511160_ (##cdr _e1100311153_)))
                             (if (gx#stx-pair? _tl1100511160_)
                                 (let ((_e1100611163_
                                        (gx#syntax-e _tl1100511160_)))
                                   (let ((_hd1100711167_ (##car _e1100611163_))
                                         (_tl1100811170_
                                          (##cdr _e1100611163_)))
                                     (if (gx#stx-null? _hd1100711167_)
                                         (if (gx#stx-pair/null? _tl1100811170_)
                                             (if (fx>= (gx#stx-length
                                                        _tl1100811170_)
                                                       '0)
                                                 (let ((_g29479_
                                                        (gx#syntax-split-splice
                                                         _tl1100811170_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29480_
                                                            (values-count
                                                             _g29479_)))
                                                       (if (not (fx= _g29480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29480_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1100911173_
                                                            (values-ref
                                                             _g29479_
                                                             0))
                                                           (_tl1101111176_
                                                            (values-ref
                                                             _g29479_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1101111176_)
                                                           (letrec ((_loop1101211179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1101011183_ _body1101611186_)
                               (if (gx#stx-pair? _hd1101011183_)
                                   (let ((_e1101311189_
                                          (gx#syntax-e _hd1101011183_)))
                                     (let ((_lp-hd1101411193_
                                            (##car _e1101311189_))
                                           (_lp-tl1101511196_
                                            (##cdr _e1101311189_)))
                                       (_loop1101211179_
                                        _lp-tl1101511196_
                                        (cons _lp-hd1101411193_
                                              _body1101611186_))))
                                   (let ((_body1101711199_
                                          (reverse _body1101611186_)))
                                     ((lambda (_L11203_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1121911222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1122011225_)
                       (cons _g1121911222_ _g1122011225_))
                     '()
                     _L11203_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body1101711199_))))))
                     (_loop1101211179_ _target1100911173_ '()))
                   (_g1099911146_ _g1100111150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1099911146_ _g1100111150_))
                                             (_g1099911146_ _g1100111150_))
                                         (_g1099911146_ _g1100111150_))))
                                 (_g1099911146_ _g1100111150_))))
                         (_g1099911146_ _g1100111150_)))))
              (_g1099811228_ _$stx10995_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#@list|
      (lambda (_$stx11234_)
        (let ((_g1124311300_
               (lambda (_g1124411296_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1124411296_))))
          (let ((_g1124211329_
                 (lambda (_g1124411304_)
                   (if (gx#stx-pair? _g1124411304_)
                       (let ((_e1129211307_ (gx#syntax-e _g1124411304_)))
                         (let ((_hd1129311311_ (##car _e1129211307_))
                               (_tl1129411314_ (##cdr _e1129211307_)))
                           ((lambda (_L11317_) _L11317_) _tl1129411314_)))
                       (_g1124311300_ _g1124411304_)))))
            (let ((_g1124111373_
                   (lambda (_g1124411333_)
                     (if (gx#stx-pair? _g1124411333_)
                         (let ((_e1128511336_ (gx#syntax-e _g1124411333_)))
                           (let ((_hd1128611340_ (##car _e1128511336_))
                                 (_tl1128711343_ (##cdr _e1128511336_)))
                             (if (gx#stx-pair? _tl1128711343_)
                                 (let ((_e1128811346_
                                        (gx#syntax-e _tl1128711343_)))
                                   (let ((_hd1128911350_ (##car _e1128811346_))
                                         (_tl1129011353_
                                          (##cdr _e1128811346_)))
                                     ((lambda (_L11356_ _L11358_ _L11359_)
                                        (cons (gx#datum->syntax '#f 'cons)
                                              (cons _L11358_
                                                    (cons (cons _L11359_
                                                                _L11356_)
                                                          '()))))
                                      _tl1129011353_
                                      _hd1128911350_
                                      _hd1128611340_)))
                                 (_g1124211329_ _g1124411333_))))
                         (_g1124211329_ _g1124411333_)))))
              (let ((_g1124011431_
                     (lambda (_g1124411377_)
                       (if (gx#stx-pair? _g1124411377_)
                           (let ((_e1127311380_ (gx#syntax-e _g1124411377_)))
                             (let ((_hd1127411384_ (##car _e1127311380_))
                                   (_tl1127511387_ (##cdr _e1127311380_)))
                               (if (gx#stx-pair? _tl1127511387_)
                                   (let ((_e1127611390_
                                          (gx#syntax-e _tl1127511387_)))
                                     (let ((_hd1127711394_
                                            (##car _e1127611390_))
                                           (_tl1127811397_
                                            (##cdr _e1127611390_)))
                                       (if (gx#stx-pair? _tl1127811397_)
                                           (let ((_e1127911400_
                                                  (gx#syntax-e
                                                   _tl1127811397_)))
                                             (let ((_hd1128011404_
                                                    (##car _e1127911400_))
                                                   (_tl1128111407_
                                                    (##cdr _e1127911400_)))
                                               ((lambda (_L11410_
                                                         _L11412_
                                                         _L11413_
                                                         _L11414_)
                                                  (if (gx#ellipsis? _L11412_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'foldr)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons)
                          (cons (cons _L11414_ _L11410_) (cons _L11413_ '()))))
              (_g1124111373_ _g1124411377_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1128111407_
                                                _hd1128011404_
                                                _hd1127711394_
                                                _hd1127411384_)))
                                           (_g1124111373_ _g1124411377_))))
                                   (_g1124111373_ _g1124411377_))))
                           (_g1124111373_ _g1124411377_)))))
                (let ((_g1123911485_
                       (lambda (_g1124411435_)
                         (if (gx#stx-pair? _g1124411435_)
                             (let ((_e1126011438_ (gx#syntax-e _g1124411435_)))
                               (let ((_hd1126111442_ (##car _e1126011438_))
                                     (_tl1126211445_ (##cdr _e1126011438_)))
                                 (if (gx#stx-pair? _tl1126211445_)
                                     (let ((_e1126311448_
                                            (gx#syntax-e _tl1126211445_)))
                                       (let ((_hd1126411452_
                                              (##car _e1126311448_))
                                             (_tl1126511455_
                                              (##cdr _e1126311448_)))
                                         (if (gx#stx-pair? _tl1126511455_)
                                             (let ((_e1126611458_
                                                    (gx#syntax-e
                                                     _tl1126511455_)))
                                               (let ((_hd1126711462_
                                                      (##car _e1126611458_))
                                                     (_tl1126811465_
                                                      (##cdr _e1126611458_)))
                                                 (if (gx#stx-null?
                                                      _tl1126811465_)
                                                     ((lambda (_L11468_
                                                               _L11470_)
                                                        (if (gx#ellipsis?
                                                             _L11468_)
                                                            _L11470_
                                                            (_g1124011431_
                                                             _g1124411435_)))
                                                      _hd1126711462_
                                                      _hd1126411452_)
                                                     (_g1124011431_
                                                      _g1124411435_))))
                                             (_g1124011431_ _g1124411435_))))
                                     (_g1124011431_ _g1124411435_))))
                             (_g1124011431_ _g1124411435_)))))
                  (let ((_g1123811537_
                         (lambda (_g1124411489_)
                           (if (gx#stx-pair? _g1124411489_)
                               (let ((_e1124911492_
                                      (gx#syntax-e _g1124411489_)))
                                 (let ((_hd1125011496_ (##car _e1124911492_))
                                       (_tl1125111499_ (##cdr _e1124911492_)))
                                   (if (gx#stx-pair? _tl1125111499_)
                                       (let ((_e1125211502_
                                              (gx#syntax-e _tl1125111499_)))
                                         (let ((_hd1125311506_
                                                (##car _e1125211502_))
                                               (_tl1125411509_
                                                (##cdr _e1125211502_)))
                                           (if (gx#stx-datum? _hd1125311506_)
                                               (if (equal? (gx#stx-e
                                                            _hd1125311506_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl1125411509_)
                                                       (let ((_e1125511512_
                                                              (gx#syntax-e
                                                               _tl1125411509_)))
                                                         (let ((_hd1125611516_
                                                                (##car _e1125511512_))
                                                               (_tl1125711519_
                                                                (##cdr _e1125511512_)))
                                                           (if (gx#stx-null?
                                                                _tl1125711519_)
                                                               ((lambda (_L11522_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11522_)
                        _hd1125611516_)
                       (_g1123911485_ _g1124411489_))))
               (_g1123911485_ _g1124411489_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1123911485_
                                                    _g1124411489_))
                                               (_g1123911485_ _g1124411489_))))
                                       (_g1123911485_ _g1124411489_))))
                               (_g1123911485_ _g1124411489_)))))
                    (let ((_g1123711558_
                           (lambda (_g1124411541_)
                             (if (gx#stx-pair? _g1124411541_)
                                 (let ((_e1124511544_
                                        (gx#syntax-e _g1124411541_)))
                                   (let ((_hd1124611548_ (##car _e1124511544_))
                                         (_tl1124711551_
                                          (##cdr _e1124511544_)))
                                     (if (gx#stx-null? _tl1124711551_)
                                         ((lambda ()
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons '() '()))))
                                         (_g1123811537_ _g1124411541_))))
                                 (_g1123811537_ _g1124411541_)))))
                      (_g1123711558_ _$stx11234_))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#quasiquote|
      (lambda (_stx11562_)
        (letrec ((_simple-quote?11565_
                  (lambda (_e12257_)
                    (let ((_g1226512302_
                           (lambda (_g1226612298_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1226612298_))))
                      (let ((_g1226412313_
                             (lambda (_g1226612306_) ((lambda () '#t)))))
                        (let ((_g1226312336_
                               (lambda (_g1226612317_)
                                 (if (gx#stx-box? _g1226612317_)
                                     (let ((_e1229612320_
                                            (unbox (gx#syntax-e
                                                    _g1226612317_))))
                                       ((lambda (_L12324_)
                                          (_simple-quote?11565_ _L12324_))
                                        _e1229612320_))
                                     (_g1226412313_ _g1226612317_)))))
                          (let ((_g1226212399_
                                 (lambda (_g1226612340_)
                                   (if (gx#stx-vector? _g1226612340_)
                                       (let ((_e1228512343_
                                              (vector->list
                                               (gx#syntax-e _g1226612340_))))
                                         (if (gx#stx-pair/null? _e1228512343_)
                                             (if (fx>= (gx#stx-length
                                                        _e1228512343_)
                                                       '0)
                                                 (let ((_g29481_
                                                        (gx#syntax-split-splice
                                                         _e1228512343_
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
                                                     (let ((_target1228612347_
                                                            (values-ref
                                                             _g29481_
                                                             0))
                                                           (_tl1228812350_
                                                            (values-ref
                                                             _g29481_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1228812350_)
                                                           (letrec ((_loop1228912353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1228712357_ _e1229312360_)
                               (if (gx#stx-pair? _hd1228712357_)
                                   (let ((_e1229012363_
                                          (gx#syntax-e _hd1228712357_)))
                                     (let ((_lp-hd1229112367_
                                            (##car _e1229012363_))
                                           (_lp-tl1229212370_
                                            (##cdr _e1229012363_)))
                                       (_loop1228912353_
                                        _lp-tl1229212370_
                                        (cons _lp-hd1229112367_
                                              _e1229312360_))))
                                   (let ((_e1229412373_
                                          (reverse _e1229312360_)))
                                     ((lambda (_L12377_)
                                        (_simple-quote?11565_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1239012393_
                                                           _g1239112396_)
                                                    (cons _g1239012393_
                                                          _g1239112396_))
                                                  '()
                                                  _L12377_))))
                                      _e1229412373_))))))
                     (_loop1228912353_ _target1228612347_ '()))
                   (_g1226312336_ _g1226612340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1226312336_ _g1226612340_))
                                             (_g1226312336_ _g1226612340_)))
                                       (_g1226312336_ _g1226612340_)))))
                            (let ((_g1226112429_
                                   (lambda (_g1226612403_)
                                     (if (gx#stx-pair? _g1226612403_)
                                         (let ((_e1228112406_
                                                (gx#syntax-e _g1226612403_)))
                                           (let ((_hd1228212410_
                                                  (##car _e1228112406_))
                                                 (_tl1228312413_
                                                  (##cdr _e1228112406_)))
                                             ((lambda (_L12416_ _L12418_)
                                                (if (_simple-quote?11565_
                                                     _L12418_)
                                                    (_simple-quote?11565_
                                                     _L12416_)
                                                    '#f))
                                              _tl1228312413_
                                              _hd1228212410_)))
                                         (_g1226212399_ _g1226612403_)))))
                              (let ((_g1226012460_
                                     (lambda (_g1226612433_)
                                       (if (gx#stx-pair? _g1226612433_)
                                           (let ((_e1227312436_
                                                  (gx#syntax-e _g1226612433_)))
                                             (let ((_hd1227412440_
                                                    (##car _e1227312436_))
                                                   (_tl1227512443_
                                                    (##cdr _e1227312436_)))
                                               (if (gx#identifier?
                                                    _hd1227412440_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<sugar>::<sugar:2>[1]#_g29483_|
                                                        _hd1227412440_)
                                                       (if (gx#stx-pair?
                                                            _tl1227512443_)
                                                           (let ((_e1227612446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1227512443_)))
                     (let ((_hd1227712450_ (##car _e1227612446_))
                           (_tl1227812453_ (##cdr _e1227612446_)))
                       (if (gx#stx-null? _tl1227812453_)
                           ((lambda () '#f))
                           (_g1226112429_ _g1226612433_))))
                   (_g1226112429_ _g1226612433_))
               (_g1226112429_ _g1226612433_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1226112429_
                                                    _g1226612433_))))
                                           (_g1226112429_ _g1226612433_)))))
                                (let ((_g1225912491_
                                       (lambda (_g1226612464_)
                                         (if (gx#stx-pair? _g1226612464_)
                                             (let ((_e1226712467_
                                                    (gx#syntax-e
                                                     _g1226612464_)))
                                               (let ((_hd1226812471_
                                                      (##car _e1226712467_))
                                                     (_tl1226912474_
                                                      (##cdr _e1226712467_)))
                                                 (if (gx#identifier?
                                                      _hd1226812471_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29484_|
                                                          _hd1226812471_)
                                                         (if (gx#stx-pair?
                                                              _tl1226912474_)
                                                             (let ((_e1227012477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1226912474_)))
                       (let ((_hd1227112481_ (##car _e1227012477_))
                             (_tl1227212484_ (##cdr _e1227012477_)))
                         (if (gx#stx-null? _tl1227212484_)
                             ((lambda () '#f))
                             (_g1226012460_ _g1226612464_))))
                     (_g1226012460_ _g1226612464_))
                 (_g1226012460_ _g1226612464_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1226012460_
                                                      _g1226612464_))))
                                             (_g1226012460_ _g1226612464_)))))
                                  (_g1225912491_ _e12257_))))))))))
                 (_generate11567_
                  (lambda (_e11629_ _d11631_)
                    (let ((_g1164011698_
                           (lambda (_g1164111694_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1164111694_))))
                      (let ((_g1163911715_
                             (lambda (_g1164111702_)
                               ((lambda (_L11705_)
                                  (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L11705_ '())))
                                _g1164111702_))))
                        (let ((_g1163811767_
                               (lambda (_g1164111719_)
                                 (if (gx#stx-box? _g1164111719_)
                                     (let ((_e1169111722_
                                            (unbox (gx#syntax-e
                                                    _g1164111719_))))
                                       ((lambda (_L11726_)
                                          (let ((_g1173611744_
                                                 (lambda (_g1173711740_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1173711740_))))
                                            (let ((_g1173511763_
                                                   (lambda (_g1173711748_)
                                                     ((lambda (_L11751_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'box)
                        (cons _L11751_ '()))))
              _g1173711748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1173511763_
                                               (_generate11567_
                                                _L11726_
                                                _d11631_)))))
                                        _e1169111722_))
                                     (_g1163911715_ _g1164111719_)))))
                          (let ((_g1163711861_
                                 (lambda (_g1164111771_)
                                   (if (gx#stx-vector? _g1164111771_)
                                       (let ((_e1168011774_
                                              (vector->list
                                               (gx#syntax-e _g1164111771_))))
                                         (if (gx#stx-pair/null? _e1168011774_)
                                             (if (fx>= (gx#stx-length
                                                        _e1168011774_)
                                                       '0)
                                                 (let ((_g29485_
                                                        (gx#syntax-split-splice
                                                         _e1168011774_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29486_
                                                            (values-count
                                                             _g29485_)))
                                                       (if (not (fx= _g29486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29486_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1168111778_
                                                            (values-ref
                                                             _g29485_
                                                             0))
                                                           (_tl1168311781_
                                                            (values-ref
                                                             _g29485_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1168311781_)
                                                           (letrec ((_loop1168411784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1168211788_ _e1168811791_)
                               (if (gx#stx-pair? _hd1168211788_)
                                   (let ((_e1168511794_
                                          (gx#syntax-e _hd1168211788_)))
                                     (let ((_lp-hd1168611798_
                                            (##car _e1168511794_))
                                           (_lp-tl1168711801_
                                            (##cdr _e1168511794_)))
                                       (_loop1168411784_
                                        _lp-tl1168711801_
                                        (cons _lp-hd1168611798_
                                              _e1168811791_))))
                                   (let ((_e1168911804_
                                          (reverse _e1168811791_)))
                                     ((lambda (_L11808_)
                                        (let ((_g1182211830_
                                               (lambda (_g1182311826_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1182311826_))))
                                          (let ((_g1182111849_
                                                 (lambda (_g1182311834_)
                                                   ((lambda (_L11837_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'list->vector)
                                                              (cons _L11837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1182311834_))))
                                            (_g1182111849_
                                             (_generate11567_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1185211855_
                                                                _g1185311858_)
                                                         (cons _g1185211855_
                                                               _g1185311858_))
                                                       '()
                                                       _L11808_))
                                              _d11631_)))))
                                      _e1168911804_))))))
                     (_loop1168411784_ _target1168111778_ '()))
                   (_g1163811767_ _g1164111771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1163811767_ _g1164111771_))
                                             (_g1163811767_ _g1164111771_)))
                                       (_g1163811767_ _g1164111771_)))))
                            (let ((_g1163611955_
                                   (lambda (_g1164111865_)
                                     (if (gx#stx-pair? _g1164111865_)
                                         (let ((_e1167611868_
                                                (gx#syntax-e _g1164111865_)))
                                           (let ((_hd1167711872_
                                                  (##car _e1167611868_))
                                                 (_tl1167811875_
                                                  (##cdr _e1167611868_)))
                                             ((lambda (_L11878_ _L11880_)
                                                (let ((_g1189111906_
                                                       (lambda (_g1189211902_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1189211902_))))
                                                  (let ((_g1189011951_
                                                         (lambda (_g1189211910_)
                                                           (if (gx#stx-pair?
                                                                _g1189211910_)
                                                               (let ((_e1189511913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1189211910_)))
                         (let ((_hd1189611917_ (##car _e1189511913_))
                               (_tl1189711920_ (##cdr _e1189511913_)))
                           (if (gx#stx-pair? _tl1189711920_)
                               (let ((_e1189811923_
                                      (gx#syntax-e _tl1189711920_)))
                                 (let ((_hd1189911927_ (##car _e1189811923_))
                                       (_tl1190011930_ (##cdr _e1189811923_)))
                                   (if (gx#stx-null? _tl1190011930_)
                                       ((lambda (_L11933_ _L11935_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'cons)
                                                  (cons _L11935_
                                                        (cons _L11933_ '())))))
                                        _hd1189911927_
                                        _hd1189611917_)
                                       (_g1189111906_ _g1189211910_))))
                               (_g1189111906_ _g1189211910_))))
                       (_g1189111906_ _g1189211910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1189011951_
                                                     (list (_generate11567_
                                                            _L11880_
                                                            _d11631_)
                                                           (_generate11567_
                                                            _L11878_
                                                            _d11631_))))))
                                              _tl1167811875_
                                              _hd1167711872_)))
                                         (_g1163711861_ _g1164111865_)))))
                              (let ((_g1163512040_
                                     (lambda (_g1164111959_)
                                       (if (gx#stx-pair? _g1164111959_)
                                           (let ((_e1166511962_
                                                  (gx#syntax-e _g1164111959_)))
                                             (let ((_hd1166611966_
                                                    (##car _e1166511962_))
                                                   (_tl1166711969_
                                                    (##cdr _e1166511962_)))
                                               (if (gx#stx-pair?
                                                    _hd1166611966_)
                                                   (let ((_e1166811972_
                                                          (gx#syntax-e
                                                           _hd1166611966_)))
                                                     (let ((_hd1166911976_
                                                            (##car _e1166811972_))
                                                           (_tl1167011979_
                                                            (##cdr _e1166811972_)))
                                                       (if (gx#identifier?
                                                            _hd1166911976_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g29487_|
                                                                _hd1166911976_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1167011979_)
                           (let ((_e1167111982_ (gx#syntax-e _tl1167011979_)))
                             (let ((_hd1167211986_ (##car _e1167111982_))
                                   (_tl1167311989_ (##cdr _e1167111982_)))
                               (if (gx#stx-null? _tl1167311989_)
                                   ((lambda (_L11992_ _L11994_)
                                      (if (fxzero? _d11631_)
                                          (let ((_g1200912017_
                                                 (lambda (_g1201012013_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1201012013_))))
                                            (let ((_g1200812036_
                                                   (lambda (_g1201012021_)
                                                     ((lambda (_L12024_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'foldr)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _L12024_ (cons _L11994_ '()))))))
              _g1201012021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1200812036_
                                               (_generate11567_
                                                _L11992_
                                                _d11631_))))
                                          (_g1163611955_ _g1164111959_)))
                                    _tl1166711969_
                                    _hd1167211986_)
                                   (_g1163611955_ _g1164111959_))))
                           (_g1163611955_ _g1164111959_))
                       (_g1163611955_ _g1164111959_))
                   (_g1163611955_ _g1164111959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1163611955_
                                                    _g1164111959_))))
                                           (_g1163611955_ _g1164111959_)))))
                                (let ((_g1163412111_
                                       (lambda (_g1164112044_)
                                         (if (gx#stx-pair? _g1164112044_)
                                             (let ((_e1165712047_
                                                    (gx#syntax-e
                                                     _g1164112044_)))
                                               (let ((_hd1165812051_
                                                      (##car _e1165712047_))
                                                     (_tl1165912054_
                                                      (##cdr _e1165712047_)))
                                                 (if (gx#identifier?
                                                      _hd1165812051_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29488_|
                                                          _hd1165812051_)
                                                         (if (gx#stx-pair?
                                                              _tl1165912054_)
                                                             (let ((_e1166012057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1165912054_)))
                       (let ((_hd1166112061_ (##car _e1166012057_))
                             (_tl1166212064_ (##cdr _e1166012057_)))
                         (if (gx#stx-null? _tl1166212064_)
                             ((lambda (_L12067_)
                                (if (fxzero? _d11631_)
                                    (cons (gx#datum->syntax '#f 'foldr)
                                          (cons (gx#datum->syntax '#f 'cons)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons '() '()))
                                                      (cons _L12067_ '()))))
                                    (let ((_g1208012088_
                                           (lambda (_g1208112084_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1208112084_))))
                                      (let ((_g1207912107_
                                             (lambda (_g1208112092_)
                                               ((lambda (_L12095_)
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
                        (cons _L12095_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1208112092_))))
                                        (_g1207912107_
                                         (_generate11567_
                                          _L12067_
                                          (fx1- _d11631_)))))))
                              _hd1166112061_)
                             (_g1163512040_ _g1164112044_))))
                     (_g1163512040_ _g1164112044_))
                 (_g1163512040_ _g1164112044_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1163512040_
                                                      _g1164112044_))))
                                             (_g1163512040_ _g1164112044_)))))
                                  (let ((_g1163312182_
                                         (lambda (_g1164112115_)
                                           (if (gx#stx-pair? _g1164112115_)
                                               (let ((_e1165012118_
                                                      (gx#syntax-e
                                                       _g1164112115_)))
                                                 (let ((_hd1165112122_
                                                        (##car _e1165012118_))
                                                       (_tl1165212125_
                                                        (##cdr _e1165012118_)))
                                                   (if (gx#identifier?
                                                        _hd1165112122_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:2>[1]#_g29489_|
                                                            _hd1165112122_)
                                                           (if (gx#stx-pair?
                                                                _tl1165212125_)
                                                               (let ((_e1165312128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1165212125_)))
                         (let ((_hd1165412132_ (##car _e1165312128_))
                               (_tl1165512135_ (##cdr _e1165312128_)))
                           (if (gx#stx-null? _tl1165512135_)
                               ((lambda (_L12138_)
                                  (if (fxzero? _d11631_)
                                      _L12138_
                                      (let ((_g1215112159_
                                             (lambda (_g1215212155_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1215212155_))))
                                        (let ((_g1215012178_
                                               (lambda (_g1215212163_)
                                                 ((lambda (_L12166_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons (gx#datum->syntax '#f 'unquote) '()))
                          (cons _L12166_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1215212163_))))
                                          (_g1215012178_
                                           (_generate11567_
                                            _L12138_
                                            (fx1- _d11631_)))))))
                                _hd1165412132_)
                               (_g1163412111_ _g1164112115_))))
                       (_g1163412111_ _g1164112115_))
                   (_g1163412111_ _g1164112115_))
               (_g1163412111_ _g1164112115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1163412111_
                                                _g1164112115_)))))
                                    (let ((_g1163212253_
                                           (lambda (_g1164112186_)
                                             (if (gx#stx-pair? _g1164112186_)
                                                 (let ((_e1164312189_
                                                        (gx#syntax-e
                                                         _g1164112186_)))
                                                   (let ((_hd1164412193_
                                                          (##car _e1164312189_))
                                                         (_tl1164512196_
                                                          (##cdr _e1164312189_)))
                                                     (if (gx#identifier?
                                                          _hd1164412193_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<sugar>::<sugar:2>[1]#_g29490_|
                                                              _hd1164412193_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1164512196_)
                         (let ((_e1164612199_ (gx#syntax-e _tl1164512196_)))
                           (let ((_hd1164712203_ (##car _e1164612199_))
                                 (_tl1164812206_ (##cdr _e1164612199_)))
                             (if (gx#stx-null? _tl1164812206_)
                                 ((lambda (_L12209_)
                                    (let ((_g1222212230_
                                           (lambda (_g1222312226_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1222312226_))))
                                      (let ((_g1222112249_
                                             (lambda (_g1222312234_)
                                               ((lambda (_L12237_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'quasiquote) '()))
                        (cons _L12237_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1222312234_))))
                                        (_g1222112249_
                                         (_generate11567_
                                          _L12209_
                                          (fx1+ _d11631_))))))
                                  _hd1164712203_)
                                 (_g1163312182_ _g1164112186_))))
                         (_g1163312182_ _g1164112186_))
                     (_g1163312182_ _g1164112186_))
                 (_g1163312182_ _g1164112186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1163312182_
                                                  _g1164112186_)))))
                                      (_g1163212253_ _e11629_)))))))))))))
          (let ((_g1156911583_
                 (lambda (_g1157011579_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1157011579_))))
            (let ((_g1156811625_
                   (lambda (_g1157011587_)
                     (if (gx#stx-pair? _g1157011587_)
                         (let ((_e1157211590_ (gx#syntax-e _g1157011587_)))
                           (let ((_hd1157311594_ (##car _e1157211590_))
                                 (_tl1157411597_ (##cdr _e1157211590_)))
                             (if (gx#stx-pair? _tl1157411597_)
                                 (let ((_e1157511600_
                                        (gx#syntax-e _tl1157411597_)))
                                   (let ((_hd1157611604_ (##car _e1157511600_))
                                         (_tl1157711607_
                                          (##cdr _e1157511600_)))
                                     (if (gx#stx-null? _tl1157711607_)
                                         ((lambda (_L11610_)
                                            (if (_simple-quote?11565_ _L11610_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L11610_ '()))
                                                (_generate11567_ _L11610_ '0)))
                                          _hd1157611604_)
                                         (_g1156911583_ _g1157011587_))))
                                 (_g1156911583_ _g1157011587_))))
                         (_g1156911583_ _g1157011587_)))))
              (_g1156811625_ _stx11562_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#delay|
      (lambda (_$stx12497_)
        (let ((_g1250212523_
               (lambda (_g1250312519_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1250312519_))))
          (let ((_g1250112564_
                 (lambda (_g1250312527_)
                   (if (gx#stx-pair? _g1250312527_)
                       (let ((_e1251212530_ (gx#syntax-e _g1250312527_)))
                         (let ((_hd1251312534_ (##car _e1251212530_))
                               (_tl1251412537_ (##cdr _e1251212530_)))
                           (if (gx#stx-pair? _tl1251412537_)
                               (let ((_e1251512540_
                                      (gx#syntax-e _tl1251412537_)))
                                 (let ((_hd1251612544_ (##car _e1251512540_))
                                       (_tl1251712547_ (##cdr _e1251512540_)))
                                   (if (gx#stx-null? _tl1251712547_)
                                       ((lambda (_L12550_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-promise)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda%)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12550_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _hd1251612544_)
                                       (_g1250212523_ _g1250312527_))))
                               (_g1250212523_ _g1250312527_))))
                       (_g1250212523_ _g1250312527_)))))
            (let ((_g1250012604_
                   (lambda (_g1250312568_)
                     (if (gx#stx-pair? _g1250312568_)
                         (let ((_e1250512571_ (gx#syntax-e _g1250312568_)))
                           (let ((_hd1250612575_ (##car _e1250512571_))
                                 (_tl1250712578_ (##cdr _e1250512571_)))
                             (if (gx#stx-pair? _tl1250712578_)
                                 (let ((_e1250812581_
                                        (gx#syntax-e _tl1250712578_)))
                                   (let ((_hd1250912585_ (##car _e1250812581_))
                                         (_tl1251012588_
                                          (##cdr _e1250812581_)))
                                     (if (gx#stx-null? _tl1251012588_)
                                         ((lambda (_L12591_)
                                            (if (gx#stx-datum? _L12591_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L12591_ '()))
                                                (_g1250112564_ _g1250312568_)))
                                          _hd1250912585_)
                                         (_g1250112564_ _g1250312568_))))
                                 (_g1250112564_ _g1250312568_))))
                         (_g1250112564_ _g1250312568_)))))
              (_g1250012604_ _$stx12497_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#cut|
      (lambda (_stx12608_)
        (let ((_generate12611_
               (lambda (_rest12730_)
                 ((letrec ((_lp12733_
                            (lambda (_rest12736_ _hd12738_ _body12739_)
                              (let ((_g1274212754_
                                     (lambda (_g1274312750_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1274312750_))))
                                (let ((_g1274112765_
                                       (lambda (_g1274312758_)
                                         ((lambda ()
                                            (values (reverse _hd12738_)
                                                    (reverse _body12739_)
                                                    '#f))))))
                                  (let ((_g1274012851_
                                         (lambda (_g1274312769_)
                                           (if (gx#stx-pair? _g1274312769_)
                                               (let ((_e1274612772_
                                                      (gx#syntax-e
                                                       _g1274312769_)))
                                                 (let ((_hd1274712776_
                                                        (##car _e1274612772_))
                                                       (_tl1274812779_
                                                        (##cdr _e1274612772_)))
                                                   ((lambda (_L12782_ _L12784_)
                                                      (let ((_g1280112808_
                                                             (lambda (_g1280212804_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1280212804_))))
                                                        (let ((_g1280012819_
                                                               (lambda (_g1280212812_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (_lp12733_
                             _L12782_
                             _hd12738_
                             (cons _L12784_ _body12739_)))))))
                  (let ((_g1279912833_
                         (lambda (_g1280212823_)
                           (if (gx#identifier? _g1280212823_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<sugar>::<sugar:2>[1]#_g29493_|
                                    _g1280212823_)
                                   ((lambda ()
                                      (if (gx#stx-null? _L12782_)
                                          (let ((_tail12830_ (gx#genident)))
                                            (values (foldl cons
                                                           _tail12830_
                                                           _hd12738_)
                                                    (foldl cons
                                                           (list _tail12830_)
                                                           _body12739_)
                                                    '#t))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx12608_
                                           _L12784_))))
                                   (_g1280012819_ _g1280212823_))
                               (_g1280012819_ _g1280212823_)))))
                    (let ((_g1279812847_
                           (lambda (_g1280212837_)
                             (if (gx#identifier? _g1280212837_)
                                 (if (gx#free-identifier=?
                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g29494_|
                                      _g1280212837_)
                                     ((lambda ()
                                        (let ((_arg12844_ (gx#genident)))
                                          (_lp12733_
                                           _L12782_
                                           (cons _arg12844_ _hd12738_)
                                           (cons _arg12844_ _body12739_)))))
                                     (_g1279912833_ _g1280212837_))
                                 (_g1279912833_ _g1280212837_)))))
                      (_g1279812847_ _L12784_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1274812779_
                                                    _hd1274712776_)))
                                               (_g1274112765_
                                                _g1274312769_)))))
                                    (_g1274012851_ _rest12736_)))))))
                    _lp12733_)
                  _rest12730_
                  '()
                  '()))))
          (let ((_g1261412625_
                 (lambda (_g1261512621_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1261512621_))))
            (let ((_g1261312726_
                   (lambda (_g1261512629_)
                     (if (gx#stx-pair? _g1261512629_)
                         (let ((_e1261712632_ (gx#syntax-e _g1261512629_)))
                           (let ((_hd1261812636_ (##car _e1261712632_))
                                 (_tl1261912639_ (##cdr _e1261712632_)))
                             ((lambda (_L12642_)
                                (if (if (gx#stx-list? _L12642_)
                                        (not (gx#stx-null? _L12642_))
                                        '#f)
                                    (let ((_g29491_
                                           (_generate12611_ _L12642_)))
                                      (begin
                                        (let ((_g29492_
                                               (values-count _g29491_)))
                                          (if (not (fx= _g29492_ 3))
                                              (error "Context expects 3 values"
                                                     _g29492_)))
                                        (let ((_hd12655_
                                               (values-ref _g29491_ 0))
                                              (_body12657_
                                               (values-ref _g29491_ 1))
                                              (_tail?12658_
                                               (values-ref _g29491_ 2)))
                                          (let ((_g1266012668_
                                                 (lambda (_g1266112664_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1266112664_))))
                                            (let ((_g1265912722_
                                                   (lambda (_g1266112672_)
                                                     ((lambda (_L12675_)
                                                        (let ()
                                                          (let ((_g1268812696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1268912692_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1268912692_))))
                    (let ((_g1268712718_
                           (lambda (_g1268912700_)
                             ((lambda (_L12703_)
                                (let ()
                                  (let ()
                                    (if _tail?12658_
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12675_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'apply)
                        _L12703_)
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12675_
                                                    (cons _L12703_ '())))))))
                              _g1268912700_))))
                      (_g1268712718_ _body12657_)))))
              _g1266112672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1265912722_ _hd12655_))))))
                                    (_g1261412625_ _g1261512629_)))
                              _tl1261912639_)))
                         (_g1261412625_ _g1261512629_)))))
              (_g1261312726_ _stx12608_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<>|
      (lambda (_$stx12856_)
        (let ((_g1285912866_
               (lambda (_g1286012862_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1286012862_))))
          (_g1285912866_ _$stx12856_))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<...>|
      (lambda (_$stx12870_)
        (let ((_g1287312880_
               (lambda (_g1287412876_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1287412876_))))
          (_g1287312880_ _$stx12870_))))))
