(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28325_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28326_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28327_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28344_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28353_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28354_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28361_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28362_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28365_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28366_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28367_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28368_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28371_|
    (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28372_|
    (gx#core-quote-syntax '<>))
  (begin
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#lambda|
      (lambda (_stx4624_)
        (let ((_simple-lambda?4627_
               (lambda (_hd7777_) (gx#stx-andmap gx#identifier? _hd7777_))))
          (let ((_opt-lambda?4629_
                 (lambda (_hd7629_)
                   ((letrec ((_lp7632_
                              (lambda (_rest7635_ _opt?7637_)
                                (let ((_g76407652_
                                       (lambda (_g76417648_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g76417648_))))
                                  (let ((_g76397667_
                                         (lambda (_g76417656_)
                                           ((lambda ()
                                              (if _opt?7637_
                                                  (let ((_$e7663_
                                                         (gx#stx-null?
                                                          _rest7635_)))
                                                    (if _$e7663_
                                                        _$e7663_
                                                        (gx#identifier?
                                                         _rest7635_)))
                                                  '#f))))))
                                    (let ((_g76387773_
                                           (lambda (_g76417671_)
                                             (if (gx#stx-pair? _g76417671_)
                                                 (let ((_e76447674_
                                                        (gx#syntax-e
                                                         _g76417671_)))
                                                   (let ((_hd76457678_
                                                          (##car _e76447674_))
                                                         (_tl76467681_
                                                          (##cdr _e76447674_)))
                                                     ((lambda (_L7684_ _L7686_)
                                                        (let ((_g77027716_
                                                               (lambda (_g77037712_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g77037712_))))
                  (let ((_g77017727_
                         (lambda (_g77037720_)
                           ((lambda ()
                              (if (gx#identifier? _L7686_)
                                  (if (not _opt?7637_)
                                      (_lp7632_ _L7684_ '#f)
                                      '#f)
                                  '#f))))))
                    (let ((_g77007769_
                           (lambda (_g77037731_)
                             (if (gx#stx-pair? _g77037731_)
                                 (let ((_e77057734_ (gx#syntax-e _g77037731_)))
                                   (let ((_hd77067738_ (##car _e77057734_))
                                         (_tl77077741_ (##cdr _e77057734_)))
                                     (if (gx#stx-pair? _tl77077741_)
                                         (let ((_e77087744_
                                                (gx#syntax-e _tl77077741_)))
                                           (let ((_hd77097748_
                                                  (##car _e77087744_))
                                                 (_tl77107751_
                                                  (##cdr _e77087744_)))
                                             (if (gx#stx-null? _tl77107751_)
                                                 ((lambda (_L7754_)
                                                    (if (gx#identifier?
                                                         _L7754_)
                                                        (_lp7632_ _L7684_ '#t)
                                                        (_g77017727_
                                                         _g77037731_)))
                                                  _hd77067738_)
                                                 (_g77017727_ _g77037731_))))
                                         (_g77017727_ _g77037731_))))
                                 (_g77017727_ _g77037731_)))))
                      (_g77007769_ _L7686_)))))
              _tl76467681_
              _hd76457678_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g76397667_ _g76417671_)))))
                                      (_g76387773_ _rest7635_)))))))
                      _lp7632_)
                    _hd7629_
                    '#f))))
            (let ((_kw-lambda?4631_
                   (lambda (_hd7155_)
                     ((letrec ((_lp7158_
                                (lambda (_rest7161_ _opt?7163_ _key?7164_)
                                  (let ((_g71697198_
                                         (lambda (_g71707194_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g71707194_))))
                                    (let ((_g71687213_
                                           (lambda (_g71707202_)
                                             ((lambda ()
                                                (if _key?7164_
                                                    (let ((_$e7209_
                                                           (gx#stx-null?
                                                            _rest7161_)))
                                                      (if _$e7209_
                                                          _$e7209_
                                                          (gx#identifier?
                                                           _rest7161_)))
                                                    '#f))))))
                                      (let ((_g71677319_
                                             (lambda (_g71707217_)
                                               (if (gx#stx-pair? _g71707217_)
                                                   (let ((_e71907220_
                                                          (gx#syntax-e
                                                           _g71707217_)))
                                                     (let ((_hd71917224_
                                                            (##car _e71907220_))
                                                           (_tl71927227_
                                                            (##cdr _e71907220_)))
                                                       ((lambda (_L7230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7232_)
                  (let ((_g72487262_
                         (lambda (_g72497258_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g72497258_))))
                    (let ((_g72477273_
                           (lambda (_g72497266_)
                             ((lambda ()
                                (if (gx#identifier? _L7232_)
                                    (if (not _opt?7163_)
                                        (_lp7158_ _L7230_ '#f _key?7164_)
                                        '#f)
                                    '#f))))))
                      (let ((_g72467315_
                             (lambda (_g72497277_)
                               (if (gx#stx-pair? _g72497277_)
                                   (let ((_e72517280_
                                          (gx#syntax-e _g72497277_)))
                                     (let ((_hd72527284_ (##car _e72517280_))
                                           (_tl72537287_ (##cdr _e72517280_)))
                                       (if (gx#stx-pair? _tl72537287_)
                                           (let ((_e72547290_
                                                  (gx#syntax-e _tl72537287_)))
                                             (let ((_hd72557294_
                                                    (##car _e72547290_))
                                                   (_tl72567297_
                                                    (##cdr _e72547290_)))
                                               (if (gx#stx-null? _tl72567297_)
                                                   ((lambda (_L7300_)
                                                      (if (gx#identifier?
                                                           _L7300_)
                                                          (_lp7158_
                                                           _L7230_
                                                           '#t
                                                           _key?7164_)
                                                          '#f))
                                                    _hd72527284_)
                                                   (_g72477273_ _g72497277_))))
                                           (_g72477273_ _g72497277_))))
                                   (_g72477273_ _g72497277_)))))
                        (_g72467315_ _L7232_)))))
                _tl71927227_
                _hd71917224_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g71687213_
                                                    _g71707217_)))))
                                        (let ((_g71667361_
                                               (lambda (_g71707323_)
                                                 (if (gx#stx-pair? _g71707323_)
                                                     (let ((_e71827326_
                                                            (gx#syntax-e
                                                             _g71707323_)))
                                                       (let ((_hd71837330_
                                                              (##car _e71827326_))
                                                             (_tl71847333_
                                                              (##cdr _e71827326_)))
                                                         (if (gx#stx-datum?
                                                              _hd71837330_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd71837330_)
                                 '#!key)
                         (if (gx#stx-pair? _tl71847333_)
                             (let ((_e71857336_ (gx#syntax-e _tl71847333_)))
                               (let ((_hd71867340_ (##car _e71857336_))
                                     (_tl71877343_ (##cdr _e71857336_)))
                                 ((lambda (_L7346_ _L7348_)
                                    (if (gx#identifier? _L7348_)
                                        (_lp7158_ _L7346_ _opt?7163_ '#t)
                                        '#f))
                                  _tl71877343_
                                  _hd71867340_)))
                             (_g71677319_ _g71707323_))
                         (_g71677319_ _g71707323_))
                     (_g71677319_ _g71707323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g71677319_
                                                      _g71707323_)))))
                                          (let ((_g71657477_
                                                 (lambda (_g71707365_)
                                                   (if (gx#stx-pair?
                                                        _g71707365_)
                                                       (let ((_e71747368_
                                                              (gx#syntax-e
                                                               _g71707365_)))
                                                         (let ((_hd71757372_
                                                                (##car _e71747368_))
                                                               (_tl71767375_
                                                                (##cdr _e71747368_)))
                                                           (if (gx#stx-pair?
                                                                _tl71767375_)
                                                               (let ((_e71777378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl71767375_)))
                         (let ((_hd71787382_ (##car _e71777378_))
                               (_tl71797385_ (##cdr _e71777378_)))
                           ((lambda (_L7388_ _L7390_ _L7391_)
                              (if (gx#stx-keyword? _L7391_)
                                  (let ((_g74067420_
                                         (lambda (_g74077416_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g74077416_))))
                                    (let ((_g74057431_
                                           (lambda (_g74077424_)
                                             ((lambda ()
                                                (if (gx#identifier? _L7390_)
                                                    (_lp7158_
                                                     _L7388_
                                                     _opt?7163_
                                                     '#t)
                                                    '#f))))))
                                      (let ((_g74047473_
                                             (lambda (_g74077435_)
                                               (if (gx#stx-pair? _g74077435_)
                                                   (let ((_e74097438_
                                                          (gx#syntax-e
                                                           _g74077435_)))
                                                     (let ((_hd74107442_
                                                            (##car _e74097438_))
                                                           (_tl74117445_
                                                            (##cdr _e74097438_)))
                                                       (if (gx#stx-pair?
                                                            _tl74117445_)
                                                           (let ((_e74127448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl74117445_)))
                     (let ((_hd74137452_ (##car _e74127448_))
                           (_tl74147455_ (##cdr _e74127448_)))
                       (if (gx#stx-null? _tl74147455_)
                           ((lambda (_L7458_)
                              (if (gx#identifier? _L7458_)
                                  (_lp7158_ _L7388_ _opt?7163_ '#t)
                                  '#f))
                            _hd74107442_)
                           (_g74057431_ _g74077435_))))
                   (_g74057431_ _g74077435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g74057431_
                                                    _g74077435_)))))
                                        (_g74047473_ _L7390_))))
                                  (_g71667361_ _g71707365_)))
                            _tl71797385_
                            _hd71787382_
                            _hd71757372_)))
                       (_g71667361_ _g71707365_))))
               (_g71667361_ _g71707365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g71657477_ _rest7161_)))))))))
                        _lp7158_)
                      _hd7155_
                      '#f
                      '#f))))
              (let ((_generate-bind4633_
                     (lambda (_e6891_)
                       (if (gx#underscore? _e6891_)
                           (gx#genident _e6891_)
                           _e6891_))))
                (let ((_check-duplicate-bindings4634_
                       (lambda (_hd6588_)
                         (let ((_cons-id6591_
                                (lambda (_id6887_ _ids6889_)
                                  (if (gx#underscore? _id6887_)
                                      _ids6889_
                                      (cons _id6887_ _ids6889_)))))
                           ((letrec ((_lp6594_
                                      (lambda (_rest6597_ _ids6599_)
                                        (let ((_g66026614_
                                               (lambda (_g66036610_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g66036610_))))
                                          (let ((_g66016625_
                                                 (lambda (_g66036618_)
                                                   ((lambda ()
                                                      (gx#check-duplicate-identifiers
                                                       (if (gx#stx-null?
                                                            _rest6597_)
                                                           _ids6599_
                                                           (_cons-id6591_
                                                            _rest6597_
                                                            _ids6599_))
                                                       _stx4624_))))))
                                            (let ((_g66006883_
                                                   (lambda (_g66036629_)
                                                     (if (gx#stx-pair?
                                                          _g66036629_)
                                                         (let ((_e66066632_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g66036629_)))
                   (let ((_hd66076636_ (##car _e66066632_))
                         (_tl66086639_ (##cdr _e66066632_)))
                     ((lambda (_L6642_ _L6644_)
                        (if (gx#identifier? _L6644_)
                            (_lp6594_
                             _L6642_
                             (_cons-id6591_ _L6644_ _ids6599_))
                            (if (gx#stx-pair? _L6644_)
                                (let ((_g66606674_
                                       (lambda (_g66616670_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g66616670_))))
                                  (let ((_g66596715_
                                         (lambda (_g66616678_)
                                           (if (gx#stx-pair? _g66616678_)
                                               (let ((_e66636681_
                                                      (gx#syntax-e
                                                       _g66616678_)))
                                                 (let ((_hd66646685_
                                                        (##car _e66636681_))
                                                       (_tl66656688_
                                                        (##cdr _e66636681_)))
                                                   (if (gx#stx-pair?
                                                        _tl66656688_)
                                                       (let ((_e66666691_
                                                              (gx#syntax-e
                                                               _tl66656688_)))
                                                         (let ((_hd66676695_
                                                                (##car _e66666691_))
                                                               (_tl66686698_
                                                                (##cdr _e66666691_)))
                                                           (if (gx#stx-null?
                                                                _tl66686698_)
                                                               ((lambda (_L6701_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_lp6594_ _L6642_ (_cons-id6591_ _L6701_ _ids6599_)))
                        _hd66646685_)
                       (_g66606674_ _g66616678_))))
               (_g66606674_ _g66616678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g66606674_ _g66616678_)))))
                                    (_g66596715_ _L6644_)))
                                (if (gx#stx-keyword? _L6644_)
                                    (let ((_g67196731_
                                           (lambda (_g67206727_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g67206727_))))
                                      (let ((_g67186833_
                                             (lambda (_g67206735_)
                                               (if (gx#stx-pair? _g67206735_)
                                                   (let ((_e67236738_
                                                          (gx#syntax-e
                                                           _g67206735_)))
                                                     (let ((_hd67246742_
                                                            (##car _e67236738_))
                                                           (_tl67256745_
                                                            (##cdr _e67236738_)))
                                                       ((lambda (_L6748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6750_)
                  (let ((_g67626776_
                         (lambda (_g67636772_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g67636772_))))
                    (let ((_g67616787_
                           (lambda (_g67636780_)
                             ((lambda ()
                                (_lp6594_
                                 _L6748_
                                 (_cons-id6591_ _L6750_ _ids6599_)))))))
                      (let ((_g67606829_
                             (lambda (_g67636791_)
                               (if (gx#stx-pair? _g67636791_)
                                   (let ((_e67656794_
                                          (gx#syntax-e _g67636791_)))
                                     (let ((_hd67666798_ (##car _e67656794_))
                                           (_tl67676801_ (##cdr _e67656794_)))
                                       (if (gx#stx-pair? _tl67676801_)
                                           (let ((_e67686804_
                                                  (gx#syntax-e _tl67676801_)))
                                             (let ((_hd67696808_
                                                    (##car _e67686804_))
                                                   (_tl67706811_
                                                    (##cdr _e67686804_)))
                                               (if (gx#stx-null? _tl67706811_)
                                                   ((lambda (_L6814_)
                                                      (_lp6594_
                                                       _L6748_
                                                       (_cons-id6591_
                                                        _L6814_
                                                        _ids6599_)))
                                                    _hd67666798_)
                                                   (_g67616787_ _g67636791_))))
                                           (_g67616787_ _g67636791_))))
                                   (_g67616787_ _g67636791_)))))
                        (_g67606829_ _L6750_)))))
                _tl67256745_
                _hd67246742_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g67196731_
                                                    _g67206735_)))))
                                        (_g67186833_ _L6642_)))
                                    (if (eq? (gx#stx-e _L6644_) '#!key)
                                        (let ((_g68376849_
                                               (lambda (_g68386845_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g68386845_))))
                                          (let ((_g68366879_
                                                 (lambda (_g68386853_)
                                                   (if (gx#stx-pair?
                                                        _g68386853_)
                                                       (let ((_e68416856_
                                                              (gx#syntax-e
                                                               _g68386853_)))
                                                         (let ((_hd68426860_
                                                                (##car _e68416856_))
                                                               (_tl68436863_
                                                                (##cdr _e68416856_)))
                                                           ((lambda (_L6866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6868_)
                      (_lp6594_ _L6866_ (_cons-id6591_ _L6868_ _ids6599_)))
                    _tl68436863_
                    _hd68426860_)))
               (_g68376849_ _g68386853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g68366879_ _L6642_)))
                                        (error '"BUG: check-duplicate-bindings"
                                               _stx4624_
                                               _rest6597_))))))
                      _tl66086639_
                      _hd66076636_)))
                 (_g66016625_ _g66036629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66006883_ _rest6597_)))))))
                              _lp6594_)
                            _hd6588_
                            '())))))
                  (let ((_generate-opt-primary4635_
                         (lambda (_pre6380_ _opt6382_ _tail6383_ _body6384_)
                           (let ((_g63866427_
                                  (lambda (_g63876423_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g63876423_))))
                             (let ((_g63856584_
                                    (lambda (_g63876431_)
                                      (if (gx#stx-pair? _g63876431_)
                                          (let ((_e63926434_
                                                 (gx#syntax-e _g63876431_)))
                                            (let ((_hd63936438_
                                                   (##car _e63926434_))
                                                  (_tl63946441_
                                                   (##cdr _e63926434_)))
                                              (if (gx#stx-pair/null?
                                                   _hd63936438_)
                                                  (if (fx>= (gx#stx-length
                                                             _hd63936438_)
                                                            '0)
                                                      (let ((_g28313_
                                                             (gx#syntax-split-splice
                                                              _hd63936438_
                                                              '0)))
                                                        (begin
                                                          (let ((_g28314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g28313_)))
                    (if (not (fx= _g28314_ 2))
                        (error "Context expects 2 values" _g28314_)))
                  (let ((_target63956444_ (values-ref _g28313_ 0))
                        (_tl63976447_ (values-ref _g28313_ 1)))
                    (if (gx#stx-null? _tl63976447_)
                        (letrec ((_loop63986450_
                                  (lambda (_hd63966454_ _pre64026457_)
                                    (if (gx#stx-pair? _hd63966454_)
                                        (let ((_e63996460_
                                               (gx#syntax-e _hd63966454_)))
                                          (let ((_lp-hd64006464_
                                                 (##car _e63996460_))
                                                (_lp-tl64016467_
                                                 (##cdr _e63996460_)))
                                            (_loop63986450_
                                             _lp-tl64016467_
                                             (cons _lp-hd64006464_
                                                   _pre64026457_))))
                                        (let ((_pre64036470_
                                               (reverse _pre64026457_)))
                                          (if (gx#stx-pair? _tl63946441_)
                                              (let ((_e64046474_
                                                     (gx#syntax-e
                                                      _tl63946441_)))
                                                (let ((_hd64056478_
                                                       (##car _e64046474_))
                                                      (_tl64066481_
                                                       (##cdr _e64046474_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd64056478_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd64056478_)
                        '0)
                  (let ((_g28315_ (gx#syntax-split-splice _hd64056478_ '0)))
                    (begin
                      (let ((_g28316_ (values-count _g28315_)))
                        (if (not (fx= _g28316_ 2))
                            (error "Context expects 2 values" _g28316_)))
                      (let ((_target64076484_ (values-ref _g28315_ 0))
                            (_tl64096487_ (values-ref _g28315_ 1)))
                        (if (gx#stx-null? _tl64096487_)
                            (letrec ((_loop64106490_
                                      (lambda (_hd64086494_ _opt64146497_)
                                        (if (gx#stx-pair? _hd64086494_)
                                            (let ((_e64116500_
                                                   (gx#syntax-e _hd64086494_)))
                                              (let ((_lp-hd64126504_
                                                     (##car _e64116500_))
                                                    (_lp-tl64136507_
                                                     (##cdr _e64116500_)))
                                                (_loop64106490_
                                                 _lp-tl64136507_
                                                 (cons _lp-hd64126504_
                                                       _opt64146497_))))
                                            (let ((_opt64156510_
                                                   (reverse _opt64146497_)))
                                              (if (gx#stx-pair? _tl64066481_)
                                                  (let ((_e64166514_
                                                         (gx#syntax-e
                                                          _tl64066481_)))
                                                    (let ((_hd64176518_
                                                           (##car _e64166514_))
                                                          (_tl64186521_
                                                           (##cdr _e64166514_)))
                                                      (if (gx#stx-pair?
                                                           _tl64186521_)
                                                          (let ((_e64196524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl64186521_)))
                    (let ((_hd64206528_ (##car _e64196524_))
                          (_tl64216531_ (##cdr _e64196524_)))
                      (if (gx#stx-null? _tl64216531_)
                          ((lambda (_L6534_ _L6536_ _L6537_ _L6538_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g65676572_
                                                             _g65686575_)
                                                      (cons _g65676572_
                                                            _g65686575_))
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g65696578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g65706581_)
                       (cons _g65696578_ _g65706581_))
                     _L6536_
                     _L6537_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L6538_))
                                           _L6534_))))
                           _hd64206528_
                           _hd64176518_
                           _opt64156510_
                           _pre64036470_)
                          (_g63866427_ _g63876431_))))
                  (_g63866427_ _g63876431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63866427_
                                                   _g63876431_)))))))
                              (_loop64106490_ _target64076484_ '()))
                            (_g63866427_ _g63876431_)))))
                  (_g63866427_ _g63876431_))
              (_g63866427_ _g63876431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g63866427_ _g63876431_)))))))
                          (_loop63986450_ _target63956444_ '()))
                        (_g63866427_ _g63876431_)))))
              (_g63866427_ _g63876431_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63866427_ _g63876431_))))
                                          (_g63866427_ _g63876431_)))))
                               (_g63856584_
                                (list _pre6380_
                                      (map car _opt6382_)
                                      _tail6383_
                                      _body6384_)))))))
                    (let ((_generate-opt-clause4638_
                           (lambda (_primary5629_ _pre5631_ _opt5632_)
                             ((letrec ((_recur5634_
                                        (lambda (_opt-rest5637_ _right5639_)
                                          (if (pair? _opt-rest5637_)
                                              (let ((_hd5641_
                                                     (car _opt-rest5637_)))
                                                (let ((_rest5644_
                                                       (cdr _opt-rest5637_)))
                                                  (let ((_g56475655_
                                                         (lambda (_g56485651_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g56485651_))))
                                                    (let ((_g56465744_
                                                           (lambda (_g56485659_)
                                                             ((lambda (_L5662_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g56785686_
                                 (lambda (_g56795682_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g56795682_))))
                            (let ((_g56775740_
                                   (lambda (_g56795690_)
                                     ((lambda (_L5693_)
                                        (let ()
                                          (let ((_g57065714_
                                                 (lambda (_g57075710_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g57075710_))))
                                            (let ((_g57055736_
                                                   (lambda (_g57075718_)
                                                     ((lambda (_L5721_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5662_ '())
                                            (cons _L5693_ '()))
                                      '())
                                (cons _L5721_ '()))))))
              _g57075718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g57055736_
                                               (_recur5634_
                                                _rest5644_
                                                (cons _L5662_
                                                      _right5639_)))))))
                                      _g56795690_))))
                              (_g56775740_ (cdr _hd5641_))))))
                      _g56485659_))))
              (_g56465744_ (car _hd5641_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g57485785_
                                                     (lambda (_g57495781_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g57495781_))))
                                                (let ((_g57475927_
                                                       (lambda (_g57495789_)
                                                         (if (gx#stx-pair?
                                                              _g57495789_)
                                                             (let ((_e57535792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g57495789_)))
                       (let ((_hd57545796_ (##car _e57535792_))
                             (_tl57555799_ (##cdr _e57535792_)))
                         (if (gx#stx-pair/null? _hd57545796_)
                             (if (fx>= (gx#stx-length _hd57545796_) '0)
                                 (let ((_g28309_
                                        (gx#syntax-split-splice
                                         _hd57545796_
                                         '0)))
                                   (begin
                                     (let ((_g28310_ (values-count _g28309_)))
                                       (if (not (fx= _g28310_ 2))
                                           (error "Context expects 2 values"
                                                  _g28310_)))
                                     (let ((_target57565802_
                                            (values-ref _g28309_ 0))
                                           (_tl57585805_
                                            (values-ref _g28309_ 1)))
                                       (if (gx#stx-null? _tl57585805_)
                                           (letrec ((_loop57595808_
                                                     (lambda (_hd57575812_
                                                              _pre57635815_)
                                                       (if (gx#stx-pair?
                                                            _hd57575812_)
                                                           (let ((_e57605818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd57575812_)))
                     (let ((_lp-hd57615822_ (##car _e57605818_))
                           (_lp-tl57625825_ (##cdr _e57605818_)))
                       (_loop57595808_
                        _lp-tl57625825_
                        (cons _lp-hd57615822_ _pre57635815_))))
                   (let ((_pre57645828_ (reverse _pre57635815_)))
                     (if (gx#stx-pair? _tl57555799_)
                         (let ((_e57655832_ (gx#syntax-e _tl57555799_)))
                           (let ((_hd57665836_ (##car _e57655832_))
                                 (_tl57675839_ (##cdr _e57655832_)))
                             (if (gx#stx-pair/null? _hd57665836_)
                                 (if (fx>= (gx#stx-length _hd57665836_) '0)
                                     (let ((_g28311_
                                            (gx#syntax-split-splice
                                             _hd57665836_
                                             '0)))
                                       (begin
                                         (let ((_g28312_
                                                (values-count _g28311_)))
                                           (if (not (fx= _g28312_ 2))
                                               (error "Context expects 2 values"
                                                      _g28312_)))
                                         (let ((_target57685842_
                                                (values-ref _g28311_ 0))
                                               (_tl57705845_
                                                (values-ref _g28311_ 1)))
                                           (if (gx#stx-null? _tl57705845_)
                                               (letrec ((_loop57715848_
                                                         (lambda (_hd57695852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opt57755855_)
                   (if (gx#stx-pair? _hd57695852_)
                       (let ((_e57725858_ (gx#syntax-e _hd57695852_)))
                         (let ((_lp-hd57735862_ (##car _e57725858_))
                               (_lp-tl57745865_ (##cdr _e57725858_)))
                           (_loop57715848_
                            _lp-tl57745865_
                            (cons _lp-hd57735862_ _opt57755855_))))
                       (let ((_opt57765868_ (reverse _opt57755855_)))
                         (if (gx#stx-pair? _tl57675839_)
                             (let ((_e57775872_ (gx#syntax-e _tl57675839_)))
                               (let ((_hd57785876_ (##car _e57775872_))
                                     (_tl57795879_ (##cdr _e57775872_)))
                                 (if (gx#stx-null? _tl57795879_)
                                     ((lambda (_L5882_ _L5884_ _L5885_)
                                        (let ()
                                          (gx#stx-wrap-source
                                           (cons _L5882_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g59105915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g59115918_)
                    (cons _g59105915_ _g59115918_))
                  (begin
                    '#!void
                    (foldr (lambda (_g59125921_ _g59135924_)
                             (cons _g59125921_ _g59135924_))
                           '()
                           _L5884_))
                  _L5885_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _stx4624_))))
                                      _hd57785876_
                                      _opt57765868_
                                      _pre57645828_)
                                     (_g57485785_ _g57495789_))))
                             (_g57485785_ _g57495789_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop57715848_
                                                  _target57685842_
                                                  '()))
                                               (_g57485785_ _g57495789_)))))
                                     (_g57485785_ _g57495789_))
                                 (_g57485785_ _g57495789_))))
                         (_g57485785_ _g57495789_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop57595808_
                                              _target57565802_
                                              '()))
                                           (_g57485785_ _g57495789_)))))
                                 (_g57485785_ _g57495789_))
                             (_g57485785_ _g57495789_))))
                     (_g57485785_ _g57495789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g57475927_
                                                   (list _pre5631_
                                                         (reverse _right5639_)
                                                         _primary5629_))))))))
                                _recur5634_)
                              _opt5632_
                              '()))))
                      (let ((_generate-kw-primary4639_
                             (lambda (_kwvar5276_
                                      _kwargs5278_
                                      _args5279_
                                      _body5280_)
                               (let ((_absent5282_ (gx#genident 'absent)))
                                 (letrec ((_make-body5284_
                                           (lambda (_kwargs5448_ _body5450_)
                                             (if (pair? _kwargs5448_)
                                                 (let ((_next5452_
                                                        (car _kwargs5448_)))
                                                   (let ((_rest5455_
                                                          (cdr _kwargs5448_)))
                                                     (let ((_key5458_
                                                            (car _next5452_)))
                                                       (let ((_var5461_
                                                              (cadr _next5452_)))
                                                         (let ((_default5464_
                                                                (caddr _next5452_)))
                                                           (let ()
                                                             (let ((_g54695504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g54705500_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g54705500_))))
                       (let ((_g54685625_
                              (lambda (_g54705508_)
                                (if (gx#stx-pair? _g54705508_)
                                    (let ((_e54785511_
                                           (gx#syntax-e _g54705508_)))
                                      (let ((_hd54795515_ (##car _e54785511_))
                                            (_tl54805518_ (##cdr _e54785511_)))
                                        (if (gx#stx-pair? _tl54805518_)
                                            (let ((_e54815521_
                                                   (gx#syntax-e _tl54805518_)))
                                              (let ((_hd54825525_
                                                     (##car _e54815521_))
                                                    (_tl54835528_
                                                     (##cdr _e54815521_)))
                                                (if (gx#stx-pair? _tl54835528_)
                                                    (let ((_e54845531_
                                                           (gx#syntax-e
                                                            _tl54835528_)))
                                                      (let ((_hd54855535_
                                                             (##car _e54845531_))
                                                            (_tl54865538_
                                                             (##cdr _e54845531_)))
                                                        (if (gx#stx-pair?
                                                             _tl54865538_)
                                                            (let ((_e54875541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl54865538_)))
                      (let ((_hd54885545_ (##car _e54875541_))
                            (_tl54895548_ (##cdr _e54875541_)))
                        (if (gx#stx-pair? _tl54895548_)
                            (let ((_e54905551_ (gx#syntax-e _tl54895548_)))
                              (let ((_hd54915555_ (##car _e54905551_))
                                    (_tl54925558_ (##cdr _e54905551_)))
                                (if (gx#stx-pair? _tl54925558_)
                                    (let ((_e54935561_
                                           (gx#syntax-e _tl54925558_)))
                                      (let ((_hd54945565_ (##car _e54935561_))
                                            (_tl54955568_ (##cdr _e54935561_)))
                                        (if (gx#stx-pair? _tl54955568_)
                                            (let ((_e54965571_
                                                   (gx#syntax-e _tl54955568_)))
                                              (let ((_hd54975575_
                                                     (##car _e54965571_))
                                                    (_tl54985578_
                                                     (##cdr _e54965571_)))
                                                (if (gx#stx-null? _tl54985578_)
                                                    ((lambda (_L5581_
                                                              _L5583_
                                                              _L5584_
                                                              _L5585_
                                                              _L5586_
                                                              _L5587_
                                                              _L5588_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _L5585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'hash-ref)
                                                     (cons _L5588_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L5587_ '()))
                         (cons _L5581_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'let-values)
                                         (cons (cons (cons (cons _L5586_ '())
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'if)
                               (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons _L5585_ (cons _L5581_ '())))
                                     (cons _L5584_ (cons _L5585_ '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L5583_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd54975575_
                                                     _hd54945565_
                                                     _hd54915555_
                                                     _hd54885545_
                                                     _hd54855535_
                                                     _hd54825525_
                                                     _hd54795515_)
                                                    (_g54695504_
                                                     _g54705508_))))
                                            (_g54695504_ _g54705508_))))
                                    (_g54695504_ _g54705508_))))
                            (_g54695504_ _g54705508_))))
                    (_g54695504_ _g54705508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g54695504_
                                                     _g54705508_))))
                                            (_g54695504_ _g54705508_))))
                                    (_g54695504_ _g54705508_)))))
                         (_g54685625_
                          (list _kwvar5276_
                                _key5458_
                                _var5461_
                                (gx#genident _var5461_)
                                _default5464_
                                (_make-body5284_ _rest5455_ _body5450_)
                                _absent5282_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons 'begin _body5450_)))))
                                   (let ((_g52865294_
                                          (lambda (_g52875290_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g52875290_))))
                                     (let ((_g52855444_
                                            (lambda (_g52875298_)
                                              ((lambda (_L5301_)
                                                 (let ()
                                                   (let ((_g53145322_
                                                          (lambda (_g53155318_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g53155318_))))
                                                     (let ((_g53135440_
                                                            (lambda (_g53155326_)
                                                              ((lambda (_L5329_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g53425350_
                                  (lambda (_g53435346_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g53435346_))))
                             (let ((_g53415436_
                                    (lambda (_g53435354_)
                                      ((lambda (_L5357_)
                                         (let ()
                                           (let ((_g53705378_
                                                  (lambda (_g53715374_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g53715374_))))
                                             (let ((_g53695432_
                                                    (lambda (_g53715382_)
                                                      ((lambda (_L5385_)
                                                         (let ()
                                                           (let ((_g53985406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g53995402_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g53995402_))))
                     (let ((_g53975428_
                            (lambda (_g53995410_)
                              ((lambda (_L5413_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons (cons _L5413_ '())
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-vector)
                                 (cons '0 '()))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L5385_ '()))))))
                               _g53995410_))))
                       (_g53975428_ _absent5282_)))))
               _g53715382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g53695432_
                                                (gx#stx-wrap-source
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons _L5301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5329_)
                     (cons _L5357_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source
                                                  _stx4624_)))))))
                                       _g53435354_))))
                               (_g53415436_
                                (_make-body5284_ _kwargs5278_ _body5280_))))))
                       _g53155326_))))
               (_g53135440_ _args5279_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g52875298_))))
                                       (_g52855444_ _kwvar5276_))))))))
                        (let ((_generate-kw-table4641_
                               (lambda (_kws5163_)
                                 ((letrec ((_rehash5166_
                                            (lambda (_pht5169_)
                                              ((letrec ((_lp5172_
                                                         (lambda (_rest5175_)
                                                           (if (pair? _rest5175_)
                                                               (let ((_key5178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _rest5175_)))
                         (let ((_rest5181_ (cdr _rest5175_)))
                           (let ((_pos5184_
                                  (fxmodulo
                                   (keyword-hash _key5178_)
                                   (vector-length _pht5169_))))
                             (let ()
                               (if (vector-ref _pht5169_ _pos5184_)
                                   (if (fx< (vector-length _pht5169_) '8192)
                                       (_rehash5166_
                                        (make-vector
                                         (fx1+ (* '2
                                                  (vector-length _pht5169_)))
                                         '#f))
                                       (error '"Unresolvable keyword collision"
                                              _kws5163_))
                                   (begin
                                     (vector-set!
                                      _pht5169_
                                      _pos5184_
                                      _key5178_)
                                     (_lp5172_ _rest5181_)))))))
                       _pht5169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _lp5172_)
                                               _kws5163_))))
                                    _rehash5166_)
                                  (make-vector (length _kws5163_) '#f)))))
                          (let ((_opt-lambda-split4630_
                                 (lambda (_hd7481_)
                                   ((letrec ((_lp7484_
                                              (lambda (_rest7487_
                                                       _pre7489_
                                                       _opt7490_)
                                                (let ((_g74937505_
                                                       (lambda (_g74947501_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g74947501_))))
                                                  (let ((_g74927516_
                                                         (lambda (_g74947509_)
                                                           ((lambda ()
                                                              (values (reverse _pre7489_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _opt7490_)
                              (if (gx#identifier? _rest7487_)
                                  (_generate-bind4633_ _rest7487_)
                                  _rest7487_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g74917625_
                                                           (lambda (_g74947520_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g74947520_)
                         (let ((_e74977523_ (gx#syntax-e _g74947520_)))
                           (let ((_hd74987527_ (##car _e74977523_))
                                 (_tl74997530_ (##cdr _e74977523_)))
                             ((lambda (_L7533_ _L7535_)
                                (let ((_g75517566_
                                       (lambda (_g75527562_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g75527562_))))
                                  (let ((_g75507577_
                                         (lambda (_g75527570_)
                                           ((lambda ()
                                              (_lp7484_
                                               _L7533_
                                               (cons (_generate-bind4633_
                                                      _L7535_)
                                                     _pre7489_)
                                               _opt7490_))))))
                                    (let ((_g75497621_
                                           (lambda (_g75527581_)
                                             (if (gx#stx-pair? _g75527581_)
                                                 (let ((_e75557584_
                                                        (gx#syntax-e
                                                         _g75527581_)))
                                                   (let ((_hd75567588_
                                                          (##car _e75557584_))
                                                         (_tl75577591_
                                                          (##cdr _e75557584_)))
                                                     (if (gx#stx-pair?
                                                          _tl75577591_)
                                                         (let ((_e75587594_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl75577591_)))
                   (let ((_hd75597598_ (##car _e75587594_))
                         (_tl75607601_ (##cdr _e75587594_)))
                     (if (gx#stx-null? _tl75607601_)
                         ((lambda (_L7604_ _L7606_)
                            (_lp7484_
                             _L7533_
                             _pre7489_
                             (cons (cons (_generate-bind4633_ _L7606_) _L7604_)
                                   _opt7490_)))
                          _hd75597598_
                          _hd75567588_)
                         (_g75507577_ _g75527581_))))
                 (_g75507577_ _g75527581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g75507577_ _g75527581_)))))
                                      (_g75497621_ _L7535_)))))
                              _tl74997530_
                              _hd74987527_)))
                         (_g74927516_ _g74947520_)))))
              (_g74917625_ _rest7487_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp7484_)
                                    _hd7481_
                                    '()
                                    '()))))
                            (let ((_kw-lambda-split4632_
                                   (lambda (_hd6894_)
                                     ((letrec ((_lp6897_
                                                (lambda (_rest6900_
                                                         _kwvar6902_
                                                         _kwargs6903_
                                                         _args6904_)
                                                  (let ((_g69096938_
                                                         (lambda (_g69106934_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g69106934_))))
                                                    (let ((_g69086949_
                                                           (lambda (_g69106942_)
                                                             ((lambda ()
                                                                (values _kwvar6902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse _kwargs6903_)
                                (foldl cons _rest6900_ _args6904_)))))))
              (let ((_g69076983_
                     (lambda (_g69106953_)
                       (if (gx#stx-pair? _g69106953_)
                           (let ((_e69306956_ (gx#syntax-e _g69106953_)))
                             (let ((_hd69316960_ (##car _e69306956_))
                                   (_tl69326963_ (##cdr _e69306956_)))
                               ((lambda (_L6966_ _L6968_)
                                  (_lp6897_
                                   _L6966_
                                   _kwvar6902_
                                   _kwargs6903_
                                   (cons _L6968_ _args6904_)))
                                _tl69326963_
                                _hd69316960_)))
                           (_g69086949_ _g69106953_)))))
                (let ((_g69067025_
                       (lambda (_g69106987_)
                         (if (gx#stx-pair? _g69106987_)
                             (let ((_e69226990_ (gx#syntax-e _g69106987_)))
                               (let ((_hd69236994_ (##car _e69226990_))
                                     (_tl69246997_ (##cdr _e69226990_)))
                                 (if (gx#stx-datum? _hd69236994_)
                                     (if (equal? (gx#stx-e _hd69236994_)
                                                 '#!key)
                                         (if (gx#stx-pair? _tl69246997_)
                                             (let ((_e69257000_
                                                    (gx#syntax-e
                                                     _tl69246997_)))
                                               (let ((_hd69267004_
                                                      (##car _e69257000_))
                                                     (_tl69277007_
                                                      (##cdr _e69257000_)))
                                                 ((lambda (_L7010_ _L7012_)
                                                    (if _kwvar6902_
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; duplicate #!key argument"
                                                         _stx4624_
                                                         _hd6894_
                                                         _L7012_)
                                                        (_lp6897_
                                                         _L7010_
                                                         (_generate-bind4633_
                                                          _L7012_)
                                                         _kwargs6903_
                                                         _args6904_)))
                                                  _tl69277007_
                                                  _hd69267004_)))
                                             (_g69076983_ _g69106987_))
                                         (_g69076983_ _g69106987_))
                                     (_g69076983_ _g69106987_))))
                             (_g69076983_ _g69106987_)))))
                  (let ((_g69057151_
                         (lambda (_g69107029_)
                           (if (gx#stx-pair? _g69107029_)
                               (let ((_e69147032_ (gx#syntax-e _g69107029_)))
                                 (let ((_hd69157036_ (##car _e69147032_))
                                       (_tl69167039_ (##cdr _e69147032_)))
                                   (if (gx#stx-pair? _tl69167039_)
                                       (let ((_e69177042_
                                              (gx#syntax-e _tl69167039_)))
                                         (let ((_hd69187046_
                                                (##car _e69177042_))
                                               (_tl69197049_
                                                (##cdr _e69177042_)))
                                           ((lambda (_L7052_ _L7054_ _L7055_)
                                              (if (gx#stx-keyword? _L7055_)
                                                  (let ((_key7069_
                                                         (gx#stx-e _L7055_)))
                                                    (if (find (lambda (_kwarg7072_)
                                                                (eq? _key7069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _kwarg7072_)))
                      _kwargs6903_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; duplicate keyword argument"
                 _stx4624_
                 _hd6894_
                 _key7069_)
                (let ((_g70767091_
                       (lambda (_g70777087_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g70777087_))))
                  (let ((_g70757102_
                         (lambda (_g70777095_)
                           ((lambda ()
                              (_lp6897_
                               _L7052_
                               _kwvar6902_
                               (cons (list _key7069_
                                           (_generate-bind4633_ _L7054_)
                                           (cons (gx#datum->syntax '#f 'error)
                                                 (cons '"Missing required keyword argument"
                                                       (cons _L7055_ '()))))
                                     _kwargs6903_)
                               _args6904_))))))
                    (let ((_g70747147_
                           (lambda (_g70777106_)
                             (if (gx#stx-pair? _g70777106_)
                                 (let ((_e70807109_ (gx#syntax-e _g70777106_)))
                                   (let ((_hd70817113_ (##car _e70807109_))
                                         (_tl70827116_ (##cdr _e70807109_)))
                                     (if (gx#stx-pair? _tl70827116_)
                                         (let ((_e70837119_
                                                (gx#syntax-e _tl70827116_)))
                                           (let ((_hd70847123_
                                                  (##car _e70837119_))
                                                 (_tl70857126_
                                                  (##cdr _e70837119_)))
                                             (if (gx#stx-null? _tl70857126_)
                                                 ((lambda (_L7129_ _L7131_)
                                                    (_lp6897_
                                                     _L7052_
                                                     _kwvar6902_
                                                     (cons (list _key7069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_generate-bind4633_ _L7131_)
                         _L7129_)
                   _kwargs6903_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _args6904_))
                                                  _hd70847123_
                                                  _hd70817113_)
                                                 (_g70757102_ _g70777106_))))
                                         (_g70757102_ _g70777106_))))
                                 (_g70757102_ _g70777106_)))))
                      (_g70747147_ _L7054_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69067025_ _g69107029_)))
                                            _tl69197049_
                                            _hd69187046_
                                            _hd69157036_)))
                                       (_g69067025_ _g69107029_))))
                               (_g69067025_ _g69107029_)))))
                    (_g69057151_ _rest6900_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6897_)
                                      _hd6894_
                                      '#f
                                      '()
                                      '()))))
                              (let ((_generate-opt-dispatch*4637_
                                     (lambda (_primary5931_
                                              _pre5933_
                                              _opt5934_
                                              _tail5935_)
                                       ((letrec ((_recur5937_
                                                  (lambda (_opt-rest5940_
                                                           _right5942_)
                                                    (if (pair? _opt-rest5940_)
                                                        (let ((_hd5944_
                                                               (caar _opt-rest5940_)))
                                                          (let ((_rest5947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cdr _opt-rest5940_)))
                    (let ((_right*5950_ (cons _hd5944_ _right5942_)))
                      (let ((_g59535970_
                             (lambda (_g59545966_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g59545966_))))
                        (let ((_g59526153_
                               (lambda (_g59545974_)
                                 (if (gx#stx-pair/null? _g59545974_)
                                     (if (fx>= (gx#stx-length _g59545974_) '0)
                                         (let ((_g28301_
                                                (gx#syntax-split-splice
                                                 _g59545974_
                                                 '0)))
                                           (begin
                                             (let ((_g28302_
                                                    (values-count _g28301_)))
                                               (if (not (fx= _g28302_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28302_)))
                                             (let ((_target59565977_
                                                    (values-ref _g28301_ 0))
                                                   (_tl59585980_
                                                    (values-ref _g28301_ 1)))
                                               (if (gx#stx-null? _tl59585980_)
                                                   (letrec ((_loop59595983_
                                                             (lambda (_hd59575987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pre-bind59635990_)
                       (if (gx#stx-pair? _hd59575987_)
                           (let ((_e59605993_ (gx#syntax-e _hd59575987_)))
                             (let ((_lp-hd59615997_ (##car _e59605993_))
                                   (_lp-tl59626000_ (##cdr _e59605993_)))
                               (_loop59595983_
                                _lp-tl59626000_
                                (cons _lp-hd59615997_ _pre-bind59635990_))))
                           (let ((_pre-bind59646003_
                                  (reverse _pre-bind59635990_)))
                             ((lambda (_L6007_)
                                (let ()
                                  (let ((_g60286045_
                                         (lambda (_g60296041_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g60296041_))))
                                    (let ((_g60276149_
                                           (lambda (_g60296049_)
                                             (if (gx#stx-pair/null?
                                                  _g60296049_)
                                                 (if (fx>= (gx#stx-length
                                                            _g60296049_)
                                                           '0)
                                                     (let ((_g28303_
                                                            (gx#syntax-split-splice
                                                             _g60296049_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28304_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28303_)))
                   (if (not (fx= _g28304_ 2))
                       (error "Context expects 2 values" _g28304_)))
                 (let ((_target60316052_ (values-ref _g28303_ 0))
                       (_tl60336055_ (values-ref _g28303_ 1)))
                   (if (gx#stx-null? _tl60336055_)
                       (letrec ((_loop60346058_
                                 (lambda (_hd60326062_ _opt-bind60386065_)
                                   (if (gx#stx-pair? _hd60326062_)
                                       (let ((_e60356068_
                                              (gx#syntax-e _hd60326062_)))
                                         (let ((_lp-hd60366072_
                                                (##car _e60356068_))
                                               (_lp-tl60376075_
                                                (##cdr _e60356068_)))
                                           (_loop60346058_
                                            _lp-tl60376075_
                                            (cons _lp-hd60366072_
                                                  _opt-bind60386065_))))
                                       (let ((_opt-bind60396078_
                                              (reverse _opt-bind60386065_)))
                                         ((lambda (_L6082_)
                                            (let ()
                                              (let ((_g60996107_
                                                     (lambda (_g61006103_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g61006103_))))
                                                (let ((_g60986145_
                                                       (lambda (_g61006111_)
                                                         ((lambda (_L6114_)
                                                            (let ()
                                                              (let ()
                                                                (cons (list (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr (lambda (_g61286133_ _g61296136_)
                                               (cons _g61286133_ _g61296136_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g61306139_
                                                               _g61316142_)
                                                        (cons _g61306139_
                                                              _g61316142_))
                                                      (cons _L6114_ '())
                                                      _L6082_))
                                             _L6007_))
                                    (_generate-opt-clause4638_
                                     _primary5931_
                                     (foldr cons
                                            (reverse _right*5950_)
                                            _pre5933_)
                                     _rest5947_))
                              (_recur5937_ _rest5947_ _right*5950_)))))
                  _g61006111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g60986145_ _hd5944_)))))
                                          _opt-bind60396078_))))))
                         (_loop60346058_ _target60316052_ '()))
                       (_g60286045_ _g60296049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g60286045_ _g60296049_))
                                                 (_g60286045_ _g60296049_)))))
                                      (_g60276149_ (reverse _right5942_))))))
                              _pre-bind59646003_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop59595983_
                                                      _target59565977_
                                                      '()))
                                                   (_g59535970_
                                                    _g59545974_)))))
                                         (_g59535970_ _g59545974_))
                                     (_g59535970_ _g59545974_)))))
                          (_g59526153_ _pre5933_))))))
                (if (gx#stx-null? _tail5935_)
                    '()
                    (let ((_g61576198_
                           (lambda (_g61586194_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g61586194_))))
                      (let ((_g61566370_
                             (lambda (_g61586202_)
                               (if (gx#stx-pair? _g61586202_)
                                   (let ((_e61636205_
                                          (gx#syntax-e _g61586202_)))
                                     (let ((_hd61646209_ (##car _e61636205_))
                                           (_tl61656212_ (##cdr _e61636205_)))
                                       (if (gx#stx-pair/null? _hd61646209_)
                                           (if (fx>= (gx#stx-length
                                                      _hd61646209_)
                                                     '0)
                                               (let ((_g28305_
                                                      (gx#syntax-split-splice
                                                       _hd61646209_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28306_
                                                          (values-count
                                                           _g28305_)))
                                                     (if (not (fx= _g28306_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28306_)))
                                                   (let ((_target61666215_
                                                          (values-ref
                                                           _g28305_
                                                           0))
                                                         (_tl61686218_
                                                          (values-ref
                                                           _g28305_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl61686218_)
                                                         (letrec ((_loop61696221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd61676225_ _pre61736228_)
                             (if (gx#stx-pair? _hd61676225_)
                                 (let ((_e61706231_
                                        (gx#syntax-e _hd61676225_)))
                                   (let ((_lp-hd61716235_ (##car _e61706231_))
                                         (_lp-tl61726238_ (##cdr _e61706231_)))
                                     (_loop61696221_
                                      _lp-tl61726238_
                                      (cons _lp-hd61716235_ _pre61736228_))))
                                 (let ((_pre61746241_ (reverse _pre61736228_)))
                                   (if (gx#stx-pair? _tl61656212_)
                                       (let ((_e61756245_
                                              (gx#syntax-e _tl61656212_)))
                                         (let ((_hd61766249_
                                                (##car _e61756245_))
                                               (_tl61776252_
                                                (##cdr _e61756245_)))
                                           (if (gx#stx-pair/null? _hd61766249_)
                                               (if (fx>= (gx#stx-length
                                                          _hd61766249_)
                                                         '0)
                                                   (let ((_g28307_
                                                          (gx#syntax-split-splice
                                                           _hd61766249_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28308_
                                                              (values-count
                                                               _g28307_)))
                                                         (if (not (fx= _g28308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28308_)))
               (let ((_target61786255_ (values-ref _g28307_ 0))
                     (_tl61806258_ (values-ref _g28307_ 1)))
                 (if (gx#stx-null? _tl61806258_)
                     (letrec ((_loop61816261_
                               (lambda (_hd61796265_ _opt61856268_)
                                 (if (gx#stx-pair? _hd61796265_)
                                     (let ((_e61826271_
                                            (gx#syntax-e _hd61796265_)))
                                       (let ((_lp-hd61836275_
                                              (##car _e61826271_))
                                             (_lp-tl61846278_
                                              (##cdr _e61826271_)))
                                         (_loop61816261_
                                          _lp-tl61846278_
                                          (cons _lp-hd61836275_
                                                _opt61856268_))))
                                     (let ((_opt61866281_
                                            (reverse _opt61856268_)))
                                       (if (gx#stx-pair? _tl61776252_)
                                           (let ((_e61876285_
                                                  (gx#syntax-e _tl61776252_)))
                                             (let ((_hd61886289_
                                                    (##car _e61876285_))
                                                   (_tl61896292_
                                                    (##cdr _e61876285_)))
                                               (if (gx#stx-pair? _tl61896292_)
                                                   (let ((_e61906295_
                                                          (gx#syntax-e
                                                           _tl61896292_)))
                                                     (let ((_hd61916299_
                                                            (##car _e61906295_))
                                                           (_tl61926302_
                                                            (##cdr _e61906295_)))
                                                       (if (gx#stx-null?
                                                            _tl61926302_)
                                                           ((lambda (_L6305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6307_
                             _L6308_
                             _L6309_)
                      (let ()
                        (list (list (begin
                                      '#!void
                                      (foldr (lambda (_g63376342_ _g63386345_)
                                               (cons _g63376342_ _g63386345_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g63396348_
                                                               _g63406351_)
                                                        (cons _g63396348_
                                                              _g63406351_))
                                                      _L6307_
                                                      _L6308_))
                                             _L6309_))
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'apply)
                                           (cons _L6305_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g63536358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g63546361_)
                    (cons _g63536358_ _g63546361_))
                  (begin
                    '#!void
                    (foldr (lambda (_g63556364_ _g63566367_)
                             (cons _g63556364_ _g63566367_))
                           (cons _L6307_ '())
                           _L6308_))
                  _L6309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _stx4624_))))))
                    _hd61916299_
                    _hd61886289_
                    _opt61866281_
                    _pre61746241_)
                   (_g61576198_ _g61586202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g61576198_ _g61586202_))))
                                           (_g61576198_ _g61586202_)))))))
                       (_loop61816261_ _target61786255_ '()))
                     (_g61576198_ _g61586202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g61576198_ _g61586202_))
                                               (_g61576198_ _g61586202_))))
                                       (_g61576198_ _g61586202_)))))))
                   (_loop61696221_ _target61666215_ '()))
                 (_g61576198_ _g61586202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g61576198_ _g61586202_))
                                           (_g61576198_ _g61586202_))))
                                   (_g61576198_ _g61586202_)))))
                        (_g61566370_
                         (list _pre5933_
                               (reverse _right5942_)
                               _tail5935_
                               _primary5931_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _recur5937_)
                                        _opt5934_
                                        '()))))
                                (let ((_generate-kw-dispatch4640_
                                       (lambda (_primary5189_
                                                _kwargs5191_
                                                _strict?5192_)
                                         (let ((_g51945213_
                                                (lambda (_g51955209_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g51955209_))))
                                           (let ((_g51935272_
                                                  (lambda (_g51955217_)
                                                    (if (gx#stx-pair?
                                                         _g51955217_)
                                                        (let ((_e51995220_
                                                               (gx#syntax-e
                                                                _g51955217_)))
                                                          (let ((_hd52005224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e51995220_))
                        (_tl52015227_ (##cdr _e51995220_)))
                    (if (gx#stx-pair? _tl52015227_)
                        (let ((_e52025230_ (gx#syntax-e _tl52015227_)))
                          (let ((_hd52035234_ (##car _e52025230_))
                                (_tl52045237_ (##cdr _e52025230_)))
                            (if (gx#stx-pair? _tl52045237_)
                                (let ((_e52055240_ (gx#syntax-e _tl52045237_)))
                                  (let ((_hd52065244_ (##car _e52055240_))
                                        (_tl52075247_ (##cdr _e52055240_)))
                                    (if (gx#stx-null? _tl52075247_)
                                        ((lambda (_L5250_ _L5252_ _L5253_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda%)
                                                   (cons _L5250_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'apply)
                             (cons (gx#datum->syntax '#f 'keyword-dispatch)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L5253_ '()))
                                         (cons _L5252_ (cons _L5250_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd52065244_
                                         _hd52035234_
                                         _hd52005224_)
                                        (_g51945213_ _g51955217_))))
                                (_g51945213_ _g51955217_))))
                        (_g51945213_ _g51955217_))))
                (_g51945213_ _g51955217_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g51935272_
                                              (list (if _strict?5192_
                                                        (_generate-kw-table4641_
                                                         (map car
                                                              _kwargs5191_))
                                                        '#f)
                                                    _primary5189_
                                                    (gx#genident 'args))))))))
                                  (let ((_generate-opt-dispatch4636_
                                         (lambda (_primary6374_
                                                  _pre6376_
                                                  _opt6377_
                                                  _tail6378_)
                                           (cons (list _pre6376_
                                                       (_generate-opt-clause4638_
                                                        _primary6374_
                                                        _pre6376_
                                                        _opt6377_))
                                                 (_generate-opt-dispatch*4637_
                                                  _primary6374_
                                                  _pre6376_
                                                  _opt6377_
                                                  _tail6378_)))))
                                    (let ((_g46454676_
                                           (lambda (_g46464672_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g46464672_))))
                                      (let ((_g46444889_
                                             (lambda (_g46464680_)
                                               (if (gx#stx-pair? _g46464680_)
                                                   (let ((_e46654683_
                                                          (gx#syntax-e
                                                           _g46464680_)))
                                                     (let ((_hd46664687_
                                                            (##car _e46654683_))
                                                           (_tl46674690_
                                                            (##cdr _e46654683_)))
                                                       (if (gx#stx-pair?
                                                            _tl46674690_)
                                                           (let ((_e46684693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl46674690_)))
                     (let ((_hd46694697_ (##car _e46684693_))
                           (_tl46704700_ (##cdr _e46684693_)))
                       ((lambda (_L4703_ _L4705_)
                          (if (_kw-lambda?4631_ _L4705_)
                              (let ((_g47214728_
                                     (lambda (_g47224724_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g47224724_))))
                                (let ((_g47204885_
                                       (lambda (_g47224732_)
                                         ((lambda ()
                                            (let ()
                                              (let ((_g28295_
                                                     (_kw-lambda-split4632_
                                                      _L4705_)))
                                                (begin
                                                  (let ((_g28296_
                                                         (values-count
                                                          _g28295_)))
                                                    (if (not (fx= _g28296_ 3))
                                                        (error "Context expects 3 values"
                                                               _g28296_)))
                                                  (let ((_key4741_
                                                         (values-ref
                                                          _g28295_
                                                          0))
                                                        (_kwargs4743_
                                                         (values-ref
                                                          _g28295_
                                                          1))
                                                        (_args4744_
                                                         (values-ref
                                                          _g28295_
                                                          2)))
                                                    (let ((_g47464754_
                                                           (lambda (_g47474750_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g47474750_))))
                                                      (let ((_g47454877_
                                                             (lambda (_g47474758_)
                                                               ((lambda (_L4761_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g47794787_
                                   (lambda (_g47804783_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g47804783_))))
                              (let ((_g47784873_
                                     (lambda (_g47804791_)
                                       ((lambda (_L4794_)
                                          (let ()
                                            (let ((_g48074815_
                                                   (lambda (_g48084811_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g48084811_))))
                                              (let ((_g48064869_
                                                     (lambda (_g48084819_)
                                                       ((lambda (_L4822_)
                                                          (let ()
                                                            (let ((_g48354843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g48364839_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g48364839_))))
                      (let ((_g48344865_
                             (lambda (_g48364847_)
                               ((lambda (_L4850_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (cons _L4794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _L4822_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L4850_ '()))))))
                                _g48364847_))))
                        (_g48344865_
                         (gx#stx-wrap-source
                          (_generate-kw-dispatch4640_
                           _L4794_
                           _kwargs4743_
                           (not _key4741_))
                          (gx#stx-source _stx4624_)))))))
                _g48084819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g48064869_
                                                 (gx#stx-wrap-source
                                                  (_generate-kw-primary4639_
                                                   _L4761_
                                                   _kwargs4743_
                                                   _args4744_
                                                   _L4703_)
                                                  (gx#stx-source
                                                   _stx4624_)))))))
                                        _g47804791_))))
                                (_g47784873_ (gx#genident 'kw-lambda))))))
                        _g47474758_))))
                (_g47454877_
                 (let ((_$e4881_ _key4741_))
                   (if _$e4881_ _$e4881_ (gx#genident 'key)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g47204885_
                                   (_check-duplicate-bindings4634_ _L4705_))))
                              (_g46454676_ _g46464680_)))
                        _tl46704700_
                        _hd46694697_)))
                   (_g46454676_ _g46464680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g46454676_
                                                    _g46464680_)))))
                                        (let ((_g46435117_
                                               (lambda (_g46464893_)
                                                 (if (gx#stx-pair? _g46464893_)
                                                     (let ((_e46574896_
                                                            (gx#syntax-e
                                                             _g46464893_)))
                                                       (let ((_hd46584900_
                                                              (##car _e46574896_))
                                                             (_tl46594903_
                                                              (##cdr _e46574896_)))
                                                         (if (gx#stx-pair?
                                                              _tl46594903_)
                                                             (let ((_e46604906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl46594903_)))
                       (let ((_hd46614910_ (##car _e46604906_))
                             (_tl46624913_ (##cdr _e46604906_)))
                         ((lambda (_L4916_ _L4918_)
                            (if (_opt-lambda?4629_ _L4918_)
                                (let ((_g28297_
                                       (_opt-lambda-split4630_ _L4918_)))
                                  (begin
                                    (let ((_g28298_ (values-count _g28297_)))
                                      (if (not (fx= _g28298_ 3))
                                          (error "Context expects 3 values"
                                                 _g28298_)))
                                    (let ((_pre4931_ (values-ref _g28297_ 0))
                                          (_opt4933_ (values-ref _g28297_ 1))
                                          (_tail4934_ (values-ref _g28297_ 2)))
                                      (let ((_g49364944_
                                             (lambda (_g49374940_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g49374940_))))
                                        (let ((_g49355113_
                                               (lambda (_g49374948_)
                                                 ((lambda (_L4951_)
                                                    (let ()
                                                      (let ((_g49644972_
                                                             (lambda (_g49654968_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g49654968_))))
                                                        (let ((_g49635109_
                                                               (lambda (_g49654976_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L4979_)
                            (let ()
                              (let ((_g49925009_
                                     (lambda (_g49935005_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g49935005_))))
                                (let ((_g49915105_
                                       (lambda (_g49935013_)
                                         (if (gx#stx-pair/null? _g49935013_)
                                             (if (fx>= (gx#stx-length
                                                        _g49935013_)
                                                       '0)
                                                 (let ((_g28299_
                                                        (gx#syntax-split-splice
                                                         _g49935013_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28300_
                                                            (values-count
                                                             _g28299_)))
                                                       (if (not (fx= _g28300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28300_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target49955016_
                                                            (values-ref
                                                             _g28299_
                                                             0))
                                                           (_tl49975019_
                                                            (values-ref
                                                             _g28299_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl49975019_)
                                                           (letrec ((_loop49985022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd49965026_ _clause50025029_)
                               (if (gx#stx-pair? _hd49965026_)
                                   (let ((_e49995032_
                                          (gx#syntax-e _hd49965026_)))
                                     (let ((_lp-hd50005036_
                                            (##car _e49995032_))
                                           (_lp-tl50015039_
                                            (##cdr _e49995032_)))
                                       (_loop49985022_
                                        _lp-tl50015039_
                                        (cons _lp-hd50005036_
                                              _clause50025029_))))
                                   (let ((_clause50035042_
                                          (reverse _clause50025029_)))
                                     ((lambda (_L5046_)
                                        (let ()
                                          (let ((_g50635071_
                                                 (lambda (_g50645067_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g50645067_))))
                                            (let ((_g50625093_
                                                   (lambda (_g50645075_)
                                                     ((lambda (_L5078_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L4951_ '())
                                            (cons _L4979_ '()))
                                      '())
                                (cons _L5078_ '()))))))
              _g50645075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g50625093_
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g50965099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g50975102_)
                         (cons _g50965099_ _g50975102_))
                       '()
                       _L5046_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx4624_)))))))
                                      _clause50035042_))))))
                     (_loop49985022_ _target49955016_ '()))
                   (_g49925009_ _g49935013_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g49925009_ _g49935013_))
                                             (_g49925009_ _g49935013_)))))
                                  (_g49915105_
                                   (_generate-opt-dispatch4636_
                                    _L4951_
                                    _pre4931_
                                    _opt4933_
                                    _tail4934_))))))
                          _g49654976_))))
                  (_g49635109_
                   (gx#stx-wrap-source
                    (_generate-opt-primary4635_
                     _pre4931_
                     _opt4933_
                     _tail4934_
                     _L4916_)
                    (gx#stx-source _stx4624_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g49374948_))))
                                          (_g49355113_
                                           (gx#genident 'opt-lambda)))))))
                                (_g46444889_ _g46464893_)))
                          _tl46624913_
                          _hd46614910_)))
                     (_g46444889_ _g46464893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g46444889_
                                                      _g46464893_)))))
                                          (let ((_g46425159_
                                                 (lambda (_g46465121_)
                                                   (if (gx#stx-pair?
                                                        _g46465121_)
                                                       (let ((_e46495124_
                                                              (gx#syntax-e
                                                               _g46465121_)))
                                                         (let ((_hd46505128_
                                                                (##car _e46495124_))
                                                               (_tl46515131_
                                                                (##cdr _e46495124_)))
                                                           (if (gx#stx-pair?
                                                                _tl46515131_)
                                                               (let ((_e46525134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl46515131_)))
                         (let ((_hd46535138_ (##car _e46525134_))
                               (_tl46545141_ (##cdr _e46525134_)))
                           ((lambda (_L5144_ _L5146_)
                              (if (_simple-lambda?4627_ _L5146_)
                                  (cons (gx#datum->syntax '#f 'lambda%)
                                        (cons _L5146_ _L5144_))
                                  (_g46435117_ _g46465121_)))
                            _tl46545141_
                            _hd46535138_)))
                       (_g46435117_ _g46465121_))))
               (_g46435117_ _g46465121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g46425159_
                                             _stx4624_)))))))))))))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def|
      (lambda (_$stx7791_)
        (let ((_g77967835_
               (lambda (_g77977831_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g77977831_))))
          (let ((_g77957890_
                 (lambda (_g77977839_)
                   (if (gx#stx-pair? _g77977839_)
                       (let ((_e78217842_ (gx#syntax-e _g77977839_)))
                         (let ((_hd78227846_ (##car _e78217842_))
                               (_tl78237849_ (##cdr _e78217842_)))
                           (if (gx#stx-pair? _tl78237849_)
                               (let ((_e78247852_ (gx#syntax-e _tl78237849_)))
                                 (let ((_hd78257856_ (##car _e78247852_))
                                       (_tl78267859_ (##cdr _e78247852_)))
                                   (if (gx#stx-pair? _tl78267859_)
                                       (let ((_e78277862_
                                              (gx#syntax-e _tl78267859_)))
                                         (let ((_hd78287866_
                                                (##car _e78277862_))
                                               (_tl78297869_
                                                (##cdr _e78277862_)))
                                           (if (gx#stx-null? _tl78297869_)
                                               ((lambda (_L7872_ _L7874_)
                                                  (if (gx#identifier? _L7874_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L7874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L7872_ '())))
              (_g77967835_ _g77977839_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd78287866_
                                                _hd78257856_)
                                               (_g77967835_ _g77977839_))))
                                       (_g77967835_ _g77977839_))))
                               (_g77967835_ _g77977839_))))
                       (_g77967835_ _g77977839_)))))
            (let ((_g77947988_
                   (lambda (_g77977894_)
                     (if (gx#stx-pair? _g77977894_)
                         (let ((_e78017897_ (gx#syntax-e _g77977894_)))
                           (let ((_hd78027901_ (##car _e78017897_))
                                 (_tl78037904_ (##cdr _e78017897_)))
                             (if (gx#stx-pair? _tl78037904_)
                                 (let ((_e78047907_
                                        (gx#syntax-e _tl78037904_)))
                                   (let ((_hd78057911_ (##car _e78047907_))
                                         (_tl78067914_ (##cdr _e78047907_)))
                                     (if (gx#stx-pair? _hd78057911_)
                                         (let ((_e78077917_
                                                (gx#syntax-e _hd78057911_)))
                                           (let ((_hd78087921_
                                                  (##car _e78077917_))
                                                 (_tl78097924_
                                                  (##cdr _e78077917_)))
                                             (if (gx#stx-pair/null?
                                                  _tl78067914_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl78067914_)
                                                           '0)
                                                     (let ((_g28317_
                                                            (gx#syntax-split-splice
                                                             _tl78067914_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28318_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28317_)))
                   (if (not (fx= _g28318_ 2))
                       (error "Context expects 2 values" _g28318_)))
                 (let ((_target78107927_ (values-ref _g28317_ 0))
                       (_tl78127930_ (values-ref _g28317_ 1)))
                   (if (gx#stx-null? _tl78127930_)
                       (letrec ((_loop78137933_
                                 (lambda (_hd78117937_ _body78177940_)
                                   (if (gx#stx-pair? _hd78117937_)
                                       (let ((_e78147943_
                                              (gx#syntax-e _hd78117937_)))
                                         (let ((_lp-hd78157947_
                                                (##car _e78147943_))
                                               (_lp-tl78167950_
                                                (##cdr _e78147943_)))
                                           (_loop78137933_
                                            _lp-tl78167950_
                                            (cons _lp-hd78157947_
                                                  _body78177940_))))
                                       (let ((_body78187953_
                                              (reverse _body78177940_)))
                                         ((lambda (_L7957_ _L7959_ _L7960_)
                                            (if (gx#identifier? _L7960_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L7960_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons _L7959_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g79797982_
                                                        _g79807985_)
                                                 (cons _g79797982_
                                                       _g79807985_))
                                               '()
                                               _L7957_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g77957890_ _g77977894_)))
                                          _body78187953_
                                          _tl78097924_
                                          _hd78087921_))))))
                         (_loop78137933_ _target78107927_ '()))
                       (_g77957890_ _g77977894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g77957890_ _g77977894_))
                                                 (_g77957890_ _g77977894_))))
                                         (_g77957890_ _g77977894_))))
                                 (_g77957890_ _g77977894_))))
                         (_g77957890_ _g77977894_)))))
              (_g77947988_ _$stx7791_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def*|
      (lambda (_$stx7993_)
        (let ((_g79978021_
               (lambda (_g79988017_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g79988017_))))
          (let ((_g79968106_
                 (lambda (_g79988025_)
                   (if (gx#stx-pair? _g79988025_)
                       (let ((_e80018028_ (gx#syntax-e _g79988025_)))
                         (let ((_hd80028032_ (##car _e80018028_))
                               (_tl80038035_ (##cdr _e80018028_)))
                           (if (gx#stx-pair? _tl80038035_)
                               (let ((_e80048038_ (gx#syntax-e _tl80038035_)))
                                 (let ((_hd80058042_ (##car _e80048038_))
                                       (_tl80068045_ (##cdr _e80048038_)))
                                   (if (gx#stx-pair/null? _tl80068045_)
                                       (if (fx>= (gx#stx-length _tl80068045_)
                                                 '0)
                                           (let ((_g28319_
                                                  (gx#syntax-split-splice
                                                   _tl80068045_
                                                   '0)))
                                             (begin
                                               (let ((_g28320_
                                                      (values-count _g28319_)))
                                                 (if (not (fx= _g28320_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28320_)))
                                               (let ((_target80078048_
                                                      (values-ref _g28319_ 0))
                                                     (_tl80098051_
                                                      (values-ref _g28319_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl80098051_)
                                                     (letrec ((_loop80108054_
                                                               (lambda (_hd80088058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses80148061_)
                         (if (gx#stx-pair? _hd80088058_)
                             (let ((_e80118064_ (gx#syntax-e _hd80088058_)))
                               (let ((_lp-hd80128068_ (##car _e80118064_))
                                     (_lp-tl80138071_ (##cdr _e80118064_)))
                                 (_loop80108054_
                                  _lp-tl80138071_
                                  (cons _lp-hd80128068_ _clauses80148061_))))
                             (let ((_clauses80158074_
                                    (reverse _clauses80148061_)))
                               ((lambda (_L8078_ _L8080_)
                                  (if (gx#identifier? _L8080_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'define-values)
                                            (cons (cons _L8080_ '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'case-lambda)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g80978100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g80988103_)
                                 (cons _g80978100_ _g80988103_))
                               '()
                               _L8078_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g79978021_ _g79988025_)))
                                _clauses80158074_
                                _hd80058042_))))))
               (_loop80108054_ _target80078048_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g79978021_
                                                      _g79988025_)))))
                                           (_g79978021_ _g79988025_))
                                       (_g79978021_ _g79988025_))))
                               (_g79978021_ _g79988025_))))
                       (_g79978021_ _g79988025_)))))
            (_g79968106_ _$stx7993_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8111_)
        (let ((_g81158133_
               (lambda (_g81168129_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g81168129_))))
          (let ((_g81148188_
                 (lambda (_g81168137_)
                   (if (gx#stx-pair? _g81168137_)
                       (let ((_e81198140_ (gx#syntax-e _g81168137_)))
                         (let ((_hd81208144_ (##car _e81198140_))
                               (_tl81218147_ (##cdr _e81198140_)))
                           (if (gx#stx-pair? _tl81218147_)
                               (let ((_e81228150_ (gx#syntax-e _tl81218147_)))
                                 (let ((_hd81238154_ (##car _e81228150_))
                                       (_tl81248157_ (##cdr _e81228150_)))
                                   (if (gx#stx-pair? _tl81248157_)
                                       (let ((_e81258160_
                                              (gx#syntax-e _tl81248157_)))
                                         (let ((_hd81268164_
                                                (##car _e81258160_))
                                               (_tl81278167_
                                                (##cdr _e81258160_)))
                                           (if (gx#stx-null? _tl81278167_)
                                               ((lambda (_L8170_ _L8172_)
                                                  (if (gx#identifier-list?
                                                       _L8172_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons _L8172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L8170_ '())))
              (_g81158133_ _g81168137_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd81268164_
                                                _hd81238154_)
                                               (_g81158133_ _g81168137_))))
                                       (_g81158133_ _g81168137_))))
                               (_g81158133_ _g81168137_))))
                       (_g81158133_ _g81168137_)))))
            (_g81148188_ _$stx8111_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#case|
      (lambda (_$stx8192_)
        (let ((_g81968220_
               (lambda (_g81978216_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g81978216_))))
          (let ((_g81958305_
                 (lambda (_g81978224_)
                   (if (gx#stx-pair? _g81978224_)
                       (let ((_e82008227_ (gx#syntax-e _g81978224_)))
                         (let ((_hd82018231_ (##car _e82008227_))
                               (_tl82028234_ (##cdr _e82008227_)))
                           (if (gx#stx-pair? _tl82028234_)
                               (let ((_e82038237_ (gx#syntax-e _tl82028234_)))
                                 (let ((_hd82048241_ (##car _e82038237_))
                                       (_tl82058244_ (##cdr _e82038237_)))
                                   (if (gx#stx-pair/null? _tl82058244_)
                                       (if (fx>= (gx#stx-length _tl82058244_)
                                                 '0)
                                           (let ((_g28321_
                                                  (gx#syntax-split-splice
                                                   _tl82058244_
                                                   '0)))
                                             (begin
                                               (let ((_g28322_
                                                      (values-count _g28321_)))
                                                 (if (not (fx= _g28322_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28322_)))
                                               (let ((_target82068247_
                                                      (values-ref _g28321_ 0))
                                                     (_tl82088250_
                                                      (values-ref _g28321_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl82088250_)
                                                     (letrec ((_loop82098253_
                                                               (lambda (_hd82078257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause82138260_)
                         (if (gx#stx-pair? _hd82078257_)
                             (let ((_e82108263_ (gx#syntax-e _hd82078257_)))
                               (let ((_lp-hd82118267_ (##car _e82108263_))
                                     (_lp-tl82128270_ (##cdr _e82108263_)))
                                 (_loop82098253_
                                  _lp-tl82128270_
                                  (cons _lp-hd82118267_ _clause82138260_))))
                             (let ((_clause82148273_
                                    (reverse _clause82138260_)))
                               ((lambda (_L8277_ _L8279_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$e)
                                                    (cons _L8279_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '~case)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e)
                        (begin
                          '#!void
                          (foldr (lambda (_g82968299_ _g82978302_)
                                   (cons _g82968299_ _g82978302_))
                                 '()
                                 _L8277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _clause82148273_
                                _hd82048241_))))))
               (_loop82098253_ _target82068247_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g81968220_
                                                      _g81978224_)))))
                                           (_g81968220_ _g81978224_))
                                       (_g81968220_ _g81978224_))))
                               (_g81968220_ _g81978224_))))
                       (_g81968220_ _g81978224_)))))
            (_g81958305_ _$stx8192_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case|
      (lambda (_$stx8310_)
        (let ((_g83188416_
               (lambda (_g83198412_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g83198412_))))
          (let ((_g83178531_
                 (lambda (_g83198420_)
                   (if (gx#stx-pair? _g83198420_)
                       (let ((_e83908423_ (gx#syntax-e _g83198420_)))
                         (let ((_hd83918427_ (##car _e83908423_))
                               (_tl83928430_ (##cdr _e83908423_)))
                           (if (gx#stx-pair? _tl83928430_)
                               (let ((_e83938433_ (gx#syntax-e _tl83928430_)))
                                 (let ((_hd83948437_ (##car _e83938433_))
                                       (_tl83958440_ (##cdr _e83938433_)))
                                   (if (gx#stx-pair? _tl83958440_)
                                       (let ((_e83968443_
                                              (gx#syntax-e _tl83958440_)))
                                         (let ((_hd83978447_
                                                (##car _e83968443_))
                                               (_tl83988450_
                                                (##cdr _e83968443_)))
                                           (if (gx#stx-pair? _hd83978447_)
                                               (let ((_e83998453_
                                                      (gx#syntax-e
                                                       _hd83978447_)))
                                                 (let ((_hd84008457_
                                                        (##car _e83998453_))
                                                       (_tl84018460_
                                                        (##cdr _e83998453_)))
                                                   (if (gx#stx-pair/null?
                                                        _tl84018460_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl84018460_)
                         '0)
                   (let ((_g28323_ (gx#syntax-split-splice _tl84018460_ '0)))
                     (begin
                       (let ((_g28324_ (values-count _g28323_)))
                         (if (not (fx= _g28324_ 2))
                             (error "Context expects 2 values" _g28324_)))
                       (let ((_target84028463_ (values-ref _g28323_ 0))
                             (_tl84048466_ (values-ref _g28323_ 1)))
                         (if (gx#stx-null? _tl84048466_)
                             (letrec ((_loop84058469_
                                       (lambda (_hd84038473_ _body84098476_)
                                         (if (gx#stx-pair? _hd84038473_)
                                             (let ((_e84068479_
                                                    (gx#syntax-e
                                                     _hd84038473_)))
                                               (let ((_lp-hd84078483_
                                                      (##car _e84068479_))
                                                     (_lp-tl84088486_
                                                      (##cdr _e84068479_)))
                                                 (_loop84058469_
                                                  _lp-tl84088486_
                                                  (cons _lp-hd84078483_
                                                        _body84098476_))))
                                             (let ((_body84108489_
                                                    (reverse _body84098476_)))
                                               ((lambda (_L8493_
                                                         _L8495_
                                                         _L8496_
                                                         _L8497_
                                                         _L8498_)
                                                  (if (gx#stx-list? _L8496_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '~case-test)
                                (cons _L8497_ (cons _L8496_ '())))
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g85228525_
                                                        _g85238528_)
                                                 (cons _g85228525_
                                                       _g85238528_))
                                               '()
                                               _L8495_)))
                                (cons (cons _L8498_ (cons _L8497_ _L8493_))
                                      '()))))
              (_g83188416_ _g83198420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl83988450_
                                                _body84108489_
                                                _hd84008457_
                                                _hd83948437_
                                                _hd83918427_))))))
                               (_loop84058469_ _target84028463_ '()))
                             (_g83188416_ _g83198420_)))))
                   (_g83188416_ _g83198420_))
               (_g83188416_ _g83198420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g83188416_ _g83198420_))))
                                       (_g83188416_ _g83198420_))))
                               (_g83188416_ _g83198420_))))
                       (_g83188416_ _g83198420_)))))
            (let ((_g83168627_
                   (lambda (_g83198535_)
                     (if (gx#stx-pair? _g83198535_)
                         (let ((_e83678538_ (gx#syntax-e _g83198535_)))
                           (let ((_hd83688542_ (##car _e83678538_))
                                 (_tl83698545_ (##cdr _e83678538_)))
                             (if (gx#stx-pair? _tl83698545_)
                                 (let ((_e83708548_
                                        (gx#syntax-e _tl83698545_)))
                                   (let ((_hd83718552_ (##car _e83708548_))
                                         (_tl83728555_ (##cdr _e83708548_)))
                                     (if (gx#stx-pair? _tl83728555_)
                                         (let ((_e83738558_
                                                (gx#syntax-e _tl83728555_)))
                                           (let ((_hd83748562_
                                                  (##car _e83738558_))
                                                 (_tl83758565_
                                                  (##cdr _e83738558_)))
                                             (if (gx#stx-pair? _hd83748562_)
                                                 (let ((_e83768568_
                                                        (gx#syntax-e
                                                         _hd83748562_)))
                                                   (let ((_hd83778572_
                                                          (##car _e83768568_))
                                                         (_tl83788575_
                                                          (##cdr _e83768568_)))
                                                     (if (gx#stx-pair?
                                                          _tl83788575_)
                                                         (let ((_e83798578_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83788575_)))
                   (let ((_hd83808582_ (##car _e83798578_))
                         (_tl83818585_ (##cdr _e83798578_)))
                     (if (gx#identifier? _hd83808582_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<sugar>::<sugar:2>[1]#_g28325_|
                              _hd83808582_)
                             (if (gx#stx-pair? _tl83818585_)
                                 (let ((_e83828588_
                                        (gx#syntax-e _tl83818585_)))
                                   (let ((_hd83838592_ (##car _e83828588_))
                                         (_tl83848595_ (##cdr _e83828588_)))
                                     (if (gx#stx-null? _tl83848595_)
                                         ((lambda (_L8598_
                                                   _L8600_
                                                   _L8601_
                                                   _L8602_
                                                   _L8603_)
                                            (if (gx#stx-list? _L8601_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '~case-test)
                          (cons _L8602_ (cons _L8601_ '())))
                    (cons (cons _L8600_ (cons _L8602_ '()))
                          (cons (cons _L8603_ (cons _L8602_ _L8598_)) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g83178531_ _g83198535_)))
                                          _tl83758565_
                                          _hd83838592_
                                          _hd83778572_
                                          _hd83718552_
                                          _hd83688542_)
                                         (_g83178531_ _g83198535_))))
                                 (_g83178531_ _g83198535_))
                             (_g83178531_ _g83198535_))
                         (_g83178531_ _g83198535_))))
                 (_g83178531_ _g83198535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g83178531_ _g83198535_))))
                                         (_g83178531_ _g83198535_))))
                                 (_g83178531_ _g83198535_))))
                         (_g83178531_ _g83198535_)))))
              (let ((_g83158691_
                     (lambda (_g83198631_)
                       (if (gx#stx-pair? _g83198631_)
                           (let ((_e83508634_ (gx#syntax-e _g83198631_)))
                             (let ((_hd83518638_ (##car _e83508634_))
                                   (_tl83528641_ (##cdr _e83508634_)))
                               (if (gx#stx-pair? _tl83528641_)
                                   (let ((_e83538644_
                                          (gx#syntax-e _tl83528641_)))
                                     (let ((_hd83548648_ (##car _e83538644_))
                                           (_tl83558651_ (##cdr _e83538644_)))
                                       (if (gx#stx-pair? _tl83558651_)
                                           (let ((_e83568654_
                                                  (gx#syntax-e _tl83558651_)))
                                             (let ((_hd83578658_
                                                    (##car _e83568654_))
                                                   (_tl83588661_
                                                    (##cdr _e83568654_)))
                                               (if (gx#stx-pair? _hd83578658_)
                                                   (let ((_e83598664_
                                                          (gx#syntax-e
                                                           _hd83578658_)))
                                                     (let ((_hd83608668_
                                                            (##car _e83598664_))
                                                           (_tl83618671_
                                                            (##cdr _e83598664_)))
                                                       (if (gx#identifier?
                                                            _hd83608668_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g28326_|
                                                                _hd83608668_)
                                                               ((lambda (_L8674_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'syntax-error)
                                (cons '"Bad syntax; misplaced else" '())))
                        _hd83548648_)
                       (_g83168627_ _g83198631_))
                   (_g83168627_ _g83198631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g83168627_ _g83198631_))))
                                           (_g83168627_ _g83198631_))))
                                   (_g83168627_ _g83198631_))))
                           (_g83168627_ _g83198631_)))))
                (let ((_g83148799_
                       (lambda (_g83198695_)
                         (if (gx#stx-pair? _g83198695_)
                             (let ((_e83288698_ (gx#syntax-e _g83198695_)))
                               (let ((_hd83298702_ (##car _e83288698_))
                                     (_tl83308705_ (##cdr _e83288698_)))
                                 (if (gx#stx-pair? _tl83308705_)
                                     (let ((_e83318708_
                                            (gx#syntax-e _tl83308705_)))
                                       (let ((_hd83328712_ (##car _e83318708_))
                                             (_tl83338715_
                                              (##cdr _e83318708_)))
                                         (if (gx#stx-pair? _tl83338715_)
                                             (let ((_e83348718_
                                                    (gx#syntax-e
                                                     _tl83338715_)))
                                               (let ((_hd83358722_
                                                      (##car _e83348718_))
                                                     (_tl83368725_
                                                      (##cdr _e83348718_)))
                                                 (if (gx#stx-pair?
                                                      _hd83358722_)
                                                     (let ((_e83378728_
                                                            (gx#syntax-e
                                                             _hd83358722_)))
                                                       (let ((_hd83388732_
                                                              (##car _e83378728_))
                                                             (_tl83398735_
                                                              (##cdr _e83378728_)))
                                                         (if (gx#identifier?
                                                              _hd83388732_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<sugar>::<sugar:2>[1]#_g28327_|
                          _hd83388732_)
                         (if (gx#stx-pair/null? _tl83398735_)
                             (if (fx>= (gx#stx-length _tl83398735_) '0)
                                 (let ((_g28328_
                                        (gx#syntax-split-splice
                                         _tl83398735_
                                         '0)))
                                   (begin
                                     (let ((_g28329_ (values-count _g28328_)))
                                       (if (not (fx= _g28329_ 2))
                                           (error "Context expects 2 values"
                                                  _g28329_)))
                                     (let ((_target83408738_
                                            (values-ref _g28328_ 0))
                                           (_tl83428741_
                                            (values-ref _g28328_ 1)))
                                       (if (gx#stx-null? _tl83428741_)
                                           (letrec ((_loop83438744_
                                                     (lambda (_hd83418748_
                                                              _body83478751_)
                                                       (if (gx#stx-pair?
                                                            _hd83418748_)
                                                           (let ((_e83448754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd83418748_)))
                     (let ((_lp-hd83458758_ (##car _e83448754_))
                           (_lp-tl83468761_ (##cdr _e83448754_)))
                       (_loop83438744_
                        _lp-tl83468761_
                        (cons _lp-hd83458758_ _body83478751_))))
                   (let ((_body83488764_ (reverse _body83478751_)))
                     (if (gx#stx-null? _tl83368725_)
                         ((lambda (_L8768_ _L8770_)
                            (cons (gx#datum->syntax '#f 'begin)
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g87908793_ _g87918796_)
                                             (cons _g87908793_ _g87918796_))
                                           '()
                                           _L8768_))))
                          _body83488764_
                          _hd83328712_)
                         (_g83158691_ _g83198695_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop83438744_
                                              _target83408738_
                                              '()))
                                           (_g83158691_ _g83198695_)))))
                                 (_g83158691_ _g83198695_))
                             (_g83158691_ _g83198695_))
                         (_g83158691_ _g83198695_))
                     (_g83158691_ _g83198695_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g83158691_
                                                      _g83198695_))))
                                             (_g83158691_ _g83198695_))))
                                     (_g83158691_ _g83198695_))))
                             (_g83158691_ _g83198695_)))))
                  (let ((_g83138830_
                         (lambda (_g83198803_)
                           (if (gx#stx-pair? _g83198803_)
                               (let ((_e83208806_ (gx#syntax-e _g83198803_)))
                                 (let ((_hd83218810_ (##car _e83208806_))
                                       (_tl83228813_ (##cdr _e83208806_)))
                                   (if (gx#stx-pair? _tl83228813_)
                                       (let ((_e83238816_
                                              (gx#syntax-e _tl83228813_)))
                                         (let ((_hd83248820_
                                                (##car _e83238816_))
                                               (_tl83258823_
                                                (##cdr _e83238816_)))
                                           (if (gx#stx-null? _tl83258823_)
                                               ((lambda () '#!void))
                                               (_g83148799_ _g83198803_))))
                                       (_g83148799_ _g83198803_))))
                               (_g83148799_ _g83198803_)))))
                    (_g83138830_ _$stx8310_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case-test|
      (lambda (_stx8836_)
        (let ((_memq-datum?8839_
               (lambda (_x9201_)
                 (let ((_e9204_ (gx#stx-e _x9201_)))
                   (let ((_$e9207_ (symbol? _e9204_)))
                     (if _$e9207_
                         _$e9207_
                         (let ((_$e9211_ (keyword? _e9204_)))
                           (if _$e9211_ _$e9211_ (immediate? _e9204_)))))))))
          (let ((_memv-datum?8841_
                 (lambda (_x9194_)
                   (let ((_$e9197_ (_memq-datum?8839_ _x9194_)))
                     (if _$e9197_ _$e9197_ (gx#stx-number? _x9194_))))))
            (let ((_g88458896_
                   (lambda (_g88468892_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g88468892_))))
              (let ((_g88449041_
                     (lambda (_g88468900_)
                       (if (gx#stx-pair? _g88468900_)
                           (let ((_e88738903_ (gx#syntax-e _g88468900_)))
                             (let ((_hd88748907_ (##car _e88738903_))
                                   (_tl88758910_ (##cdr _e88738903_)))
                               (if (gx#stx-pair? _tl88758910_)
                                   (let ((_e88768913_
                                          (gx#syntax-e _tl88758910_)))
                                     (let ((_hd88778917_ (##car _e88768913_))
                                           (_tl88788920_ (##cdr _e88768913_)))
                                       (if (gx#stx-pair? _tl88788920_)
                                           (let ((_e88798923_
                                                  (gx#syntax-e _tl88788920_)))
                                             (let ((_hd88808927_
                                                    (##car _e88798923_))
                                                   (_tl88818930_
                                                    (##cdr _e88798923_)))
                                               (if (gx#stx-pair/null?
                                                    _hd88808927_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd88808927_)
                                                             '0)
                                                       (let ((_g28330_
                                                              (gx#syntax-split-splice
                                                               _hd88808927_
                                                               '0)))
                                                         (begin
                                                           (let ((_g28331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g28330_)))
                     (if (not (fx= _g28331_ 2))
                         (error "Context expects 2 values" _g28331_)))
                   (let ((_target88828933_ (values-ref _g28330_ 0))
                         (_tl88848936_ (values-ref _g28330_ 1)))
                     (if (gx#stx-null? _tl88848936_)
                         (letrec ((_loop88858939_
                                   (lambda (_hd88838943_ _datum88898946_)
                                     (if (gx#stx-pair? _hd88838943_)
                                         (let ((_e88868949_
                                                (gx#syntax-e _hd88838943_)))
                                           (let ((_lp-hd88878953_
                                                  (##car _e88868949_))
                                                 (_lp-tl88888956_
                                                  (##cdr _e88868949_)))
                                             (_loop88858939_
                                              _lp-tl88888956_
                                              (cons _lp-hd88878953_
                                                    _datum88898946_))))
                                         (let ((_datum88908959_
                                                (reverse _datum88898946_)))
                                           (if (gx#stx-null? _tl88818930_)
                                               ((lambda (_L8963_ _L8965_)
                                                  (let ((_g89868994_
                                                         (lambda (_g89878990_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g89878990_))))
                                                    (let ((_g89859021_
                                                           (lambda (_g89878998_)
                                                             ((lambda (_L9001_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9001_
                                (cons _L8965_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons (begin
                                                          '#!void
                                                          (foldr (lambda (_g90129015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g90139018_)
                           (cons _g90129015_ _g90139018_))
                         '()
                         _L8963_))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _g89878998_))))
              (_g89859021_
               (if (gx#stx-andmap
                    _memq-datum?8839_
                    (begin
                      '#!void
                      (foldr (lambda (_g90249027_ _g90259030_)
                               (cons _g90249027_ _g90259030_))
                             '()
                             _L8963_)))
                   (gx#datum->syntax '#f 'memq)
                   (if (gx#stx-andmap
                        _memv-datum?8841_
                        (begin
                          '#!void
                          (foldr (lambda (_g90329035_ _g90339038_)
                                   (cons _g90329035_ _g90339038_))
                                 '()
                                 _L8963_)))
                       (gx#datum->syntax '#f 'memv)
                       (gx#datum->syntax '#f 'member)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _datum88908959_
                                                _hd88778917_)
                                               (_g88458896_ _g88468900_)))))))
                           (_loop88858939_ _target88828933_ '()))
                         (_g88458896_ _g88468900_)))))
               (_g88458896_ _g88468900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g88458896_ _g88468900_))))
                                           (_g88458896_ _g88468900_))))
                                   (_g88458896_ _g88468900_))))
                           (_g88458896_ _g88468900_)))))
                (let ((_g88439138_
                       (lambda (_g88469045_)
                         (if (gx#stx-pair? _g88469045_)
                             (let ((_e88599048_ (gx#syntax-e _g88469045_)))
                               (let ((_hd88609052_ (##car _e88599048_))
                                     (_tl88619055_ (##cdr _e88599048_)))
                                 (if (gx#stx-pair? _tl88619055_)
                                     (let ((_e88629058_
                                            (gx#syntax-e _tl88619055_)))
                                       (let ((_hd88639062_ (##car _e88629058_))
                                             (_tl88649065_
                                              (##cdr _e88629058_)))
                                         (if (gx#stx-pair? _tl88649065_)
                                             (let ((_e88659068_
                                                    (gx#syntax-e
                                                     _tl88649065_)))
                                               (let ((_hd88669072_
                                                      (##car _e88659068_))
                                                     (_tl88679075_
                                                      (##cdr _e88659068_)))
                                                 (if (gx#stx-pair?
                                                      _hd88669072_)
                                                     (let ((_e88689078_
                                                            (gx#syntax-e
                                                             _hd88669072_)))
                                                       (let ((_hd88699082_
                                                              (##car _e88689078_))
                                                             (_tl88709085_
                                                              (##cdr _e88689078_)))
                                                         (if (gx#stx-null?
                                                              _tl88709085_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl88679075_)
                         ((lambda (_L9088_ _L9090_)
                            (let ((_g91079115_
                                   (lambda (_g91089111_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g91089111_))))
                              (let ((_g91069134_
                                     (lambda (_g91089119_)
                                       ((lambda (_L9122_)
                                          (let ()
                                            (cons _L9122_
                                                  (cons _L9090_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L9088_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g91089119_))))
                                (_g91069134_
                                 (if (_memq-datum?8839_ _L9088_)
                                     (gx#datum->syntax '#f 'eq?)
                                     (if (_memv-datum?8841_ _L9088_)
                                         (gx#datum->syntax '#f 'eqv?)
                                         (gx#datum->syntax '#f 'equal?)))))))
                          _hd88699082_
                          _hd88639062_)
                         (_g88449041_ _g88469045_))
                     (_g88449041_ _g88469045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g88449041_
                                                      _g88469045_))))
                                             (_g88449041_ _g88469045_))))
                                     (_g88449041_ _g88469045_))))
                             (_g88449041_ _g88469045_)))))
                  (let ((_g88429190_
                         (lambda (_g88469142_)
                           (if (gx#stx-pair? _g88469142_)
                               (let ((_e88489145_ (gx#syntax-e _g88469142_)))
                                 (let ((_hd88499149_ (##car _e88489145_))
                                       (_tl88509152_ (##cdr _e88489145_)))
                                   (if (gx#stx-pair? _tl88509152_)
                                       (let ((_e88519155_
                                              (gx#syntax-e _tl88509152_)))
                                         (let ((_hd88529159_
                                                (##car _e88519155_))
                                               (_tl88539162_
                                                (##cdr _e88519155_)))
                                           (if (gx#stx-pair? _tl88539162_)
                                               (let ((_e88549165_
                                                      (gx#syntax-e
                                                       _tl88539162_)))
                                                 (let ((_hd88559169_
                                                        (##car _e88549165_))
                                                       (_tl88569172_
                                                        (##cdr _e88549165_)))
                                                   (if (gx#stx-null?
                                                        _hd88559169_)
                                                       (if (gx#stx-null?
                                                            _tl88569172_)
                                                           ((lambda (_L9175_)
                                                              '#f)
                                                            _hd88529159_)
                                                           (_g88439138_
                                                            _g88469142_))
                                                       (_g88439138_
                                                        _g88469142_))))
                                               (_g88439138_ _g88469142_))))
                                       (_g88439138_ _g88469142_))))
                               (_g88439138_ _g88469142_)))))
                    (_g88429190_ _stx8836_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do|
      (lambda (_$stx9216_)
        (let ((_g92209291_
               (lambda (_g92219287_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g92219287_))))
          (let ((_g92199580_
                 (lambda (_g92219295_)
                   (if (gx#stx-pair? _g92219295_)
                       (let ((_e92289298_ (gx#syntax-e _g92219295_)))
                         (let ((_hd92299302_ (##car _e92289298_))
                               (_tl92309305_ (##cdr _e92289298_)))
                           (if (gx#stx-pair? _tl92309305_)
                               (let ((_e92319308_ (gx#syntax-e _tl92309305_)))
                                 (let ((_hd92329312_ (##car _e92319308_))
                                       (_tl92339315_ (##cdr _e92319308_)))
                                   (if (gx#stx-pair/null? _hd92329312_)
                                       (if (fx>= (gx#stx-length _hd92329312_)
                                                 '0)
                                           (let ((_g28332_
                                                  (gx#syntax-split-splice
                                                   _hd92329312_
                                                   '0)))
                                             (begin
                                               (let ((_g28333_
                                                      (values-count _g28332_)))
                                                 (if (not (fx= _g28333_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28333_)))
                                               (let ((_target92349318_
                                                      (values-ref _g28332_ 0))
                                                     (_tl92369321_
                                                      (values-ref _g28332_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl92369321_)
                                                     (letrec ((_loop92379324_
                                                               (lambda (_hd92359328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _step92419331_
                                _init92429333_
                                _var92439335_)
                         (if (gx#stx-pair? _hd92359328_)
                             (let ((_e92389338_ (gx#syntax-e _hd92359328_)))
                               (let ((_lp-hd92399342_ (##car _e92389338_))
                                     (_lp-tl92409345_ (##cdr _e92389338_)))
                                 (if (gx#stx-pair? _lp-hd92399342_)
                                     (let ((_e92479348_
                                            (gx#syntax-e _lp-hd92399342_)))
                                       (let ((_hd92489352_ (##car _e92479348_))
                                             (_tl92499355_
                                              (##cdr _e92479348_)))
                                         (if (gx#stx-pair? _tl92499355_)
                                             (let ((_e92509358_
                                                    (gx#syntax-e
                                                     _tl92499355_)))
                                               (let ((_hd92519362_
                                                      (##car _e92509358_))
                                                     (_tl92529365_
                                                      (##cdr _e92509358_)))
                                                 (if (gx#stx-pair/null?
                                                      _tl92529365_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl92529365_)
                                                               '0)
                                                         (let ((_g28334_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl92529365_
                         '0)))
                   (begin
                     (let ((_g28335_ (values-count _g28334_)))
                       (if (not (fx= _g28335_ 2))
                           (error "Context expects 2 values" _g28335_)))
                     (let ((_target92539368_ (values-ref _g28334_ 0))
                           (_tl92559371_ (values-ref _g28334_ 1)))
                       (if (gx#stx-null? _tl92559371_)
                           (letrec ((_loop92569374_
                                     (lambda (_hd92549378_ _step92609381_)
                                       (if (gx#stx-pair? _hd92549378_)
                                           (let ((_e92579384_
                                                  (gx#syntax-e _hd92549378_)))
                                             (let ((_lp-hd92589388_
                                                    (##car _e92579384_))
                                                   (_lp-tl92599391_
                                                    (##cdr _e92579384_)))
                                               (_loop92569374_
                                                _lp-tl92599391_
                                                (cons _lp-hd92589388_
                                                      _step92609381_))))
                                           (let ((_step92619394_
                                                  (reverse _step92609381_)))
                                             (_loop92379324_
                                              _lp-tl92409345_
                                              (cons _step92619394_
                                                    _step92419331_)
                                              (cons _hd92519362_
                                                    _init92429333_)
                                              (cons _hd92489352_
                                                    _var92439335_)))))))
                             (_loop92569374_ _target92539368_ '()))
                           (_g92209291_ _g92219295_)))))
                 (_g92209291_ _g92219295_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g92209291_
                                                      _g92219295_))))
                                             (_g92209291_ _g92219295_))))
                                     (_g92209291_ _g92219295_))))
                             (let ((_step92449398_ (reverse _step92419331_))
                                   (_init92459401_ (reverse _init92429333_))
                                   (_var92469403_ (reverse _var92439335_)))
                               (if (gx#stx-pair? _tl92339315_)
                                   (let ((_e92629406_
                                          (gx#syntax-e _tl92339315_)))
                                     (let ((_hd92639410_ (##car _e92629406_))
                                           (_tl92649413_ (##cdr _e92629406_)))
                                       (if (gx#stx-pair? _hd92639410_)
                                           (let ((_e92659416_
                                                  (gx#syntax-e _hd92639410_)))
                                             (let ((_hd92669420_
                                                    (##car _e92659416_))
                                                   (_tl92679423_
                                                    (##cdr _e92659416_)))
                                               (if (gx#stx-pair/null?
                                                    _tl92679423_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl92679423_)
                                                             '0)
                                                       (let ((_g28336_
                                                              (gx#syntax-split-splice
                                                               _tl92679423_
                                                               '0)))
                                                         (begin
                                                           (let ((_g28337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g28336_)))
                     (if (not (fx= _g28337_ 2))
                         (error "Context expects 2 values" _g28337_)))
                   (let ((_target92689426_ (values-ref _g28336_ 0))
                         (_tl92709429_ (values-ref _g28336_ 1)))
                     (if (gx#stx-null? _tl92709429_)
                         (letrec ((_loop92719432_
                                   (lambda (_hd92699436_ _fini92759439_)
                                     (if (gx#stx-pair? _hd92699436_)
                                         (let ((_e92729442_
                                                (gx#syntax-e _hd92699436_)))
                                           (let ((_lp-hd92739446_
                                                  (##car _e92729442_))
                                                 (_lp-tl92749449_
                                                  (##cdr _e92729442_)))
                                             (_loop92719432_
                                              _lp-tl92749449_
                                              (cons _lp-hd92739446_
                                                    _fini92759439_))))
                                         (let ((_fini92769452_
                                                (reverse _fini92759439_)))
                                           (if (gx#stx-pair/null? _tl92649413_)
                                               (if (fx>= (gx#stx-length
                                                          _tl92649413_)
                                                         '0)
                                                   (let ((_g28338_
                                                          (gx#syntax-split-splice
                                                           _tl92649413_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28339_
                                                              (values-count
                                                               _g28338_)))
                                                         (if (not (fx= _g28339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28339_)))
               (let ((_target92779456_ (values-ref _g28338_ 0))
                     (_tl92799459_ (values-ref _g28338_ 1)))
                 (if (gx#stx-null? _tl92799459_)
                     (letrec ((_loop92809462_
                               (lambda (_hd92789466_ _body92849469_)
                                 (if (gx#stx-pair? _hd92789466_)
                                     (let ((_e92819472_
                                            (gx#syntax-e _hd92789466_)))
                                       (let ((_lp-hd92829476_
                                              (##car _e92819472_))
                                             (_lp-tl92839479_
                                              (##cdr _e92819472_)))
                                         (_loop92809462_
                                          _lp-tl92839479_
                                          (cons _lp-hd92829476_
                                                _body92849469_))))
                                     (let ((_body92859482_
                                            (reverse _body92849469_)))
                                       ((lambda (_L9486_
                                                 _L9488_
                                                 _L9489_
                                                 _L9490_
                                                 _L9491_
                                                 _L9492_)
                                          (if (gx#stx-andmap
                                               gx#identifier?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g95259528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g95269531_)
                  (cons _g95259528_ _g95269531_))
                '()
                _L9492_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$loop)
                                                          (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-check-splice-targets _L9491_ _L9492_)
                          (foldr (lambda (_g95339546_ _g95349549_ _g95359551_)
                                   (cons (cons _g95349549_
                                               (cons _g95339546_ '()))
                                         _g95359551_))
                                 '()
                                 _L9491_
                                 _L9492_))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'not)
                                                (cons _L9489_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g95369554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g95379557_)
                         (cons _g95369554_ _g95379557_))
                       (cons (cons (gx#datum->syntax '#f '$loop)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _L9490_
                                      _L9492_)
                                     (foldr (lambda (_g95389560_
                                                     _g95399563_
                                                     _g95409565_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons _g95399563_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g95419568_ _g95429571_)
                                   (cons _g95419568_ _g95429571_))
                                 '()
                                 _g95389560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g95409565_))
                                            '()
                                            _L9490_
                                            _L9492_)))
                             '())
                       _L9486_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g95439574_ _g95449577_)
                                     (cons _g95439574_ _g95449577_))
                                   '()
                                   _L9488_))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g92209291_ _g92219295_)))
                                        _body92859482_
                                        _fini92769452_
                                        _hd92669420_
                                        _step92449398_
                                        _init92459401_
                                        _var92469403_))))))
                       (_loop92809462_ _target92779456_ '()))
                     (_g92209291_ _g92219295_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g92209291_ _g92219295_))
                                               (_g92209291_ _g92219295_)))))))
                           (_loop92719432_ _target92689426_ '()))
                         (_g92209291_ _g92219295_)))))
               (_g92209291_ _g92219295_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g92209291_ _g92219295_))))
                                           (_g92209291_ _g92219295_))))
                                   (_g92209291_ _g92219295_)))))))
               (_loop92379324_ _target92349318_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g92209291_
                                                      _g92219295_)))))
                                           (_g92209291_ _g92219295_))
                                       (_g92209291_ _g92219295_))))
                               (_g92209291_ _g92219295_))))
                       (_g92209291_ _g92219295_)))))
            (_g92199580_ _$stx9216_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do-while|
      (lambda (_$stx9588_)
        (let ((_g95929615_
               (lambda (_g95939611_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g95939611_))))
          (let ((_g95919686_
                 (lambda (_g95939619_)
                   (if (gx#stx-pair? _g95939619_)
                       (let ((_e95989622_ (gx#syntax-e _g95939619_)))
                         (let ((_hd95999626_ (##car _e95989622_))
                               (_tl96009629_ (##cdr _e95989622_)))
                           (if (gx#stx-pair? _tl96009629_)
                               (let ((_e96019632_ (gx#syntax-e _tl96009629_)))
                                 (let ((_hd96029636_ (##car _e96019632_))
                                       (_tl96039639_ (##cdr _e96019632_)))
                                   (if (gx#stx-pair? _tl96039639_)
                                       (let ((_e96049642_
                                              (gx#syntax-e _tl96039639_)))
                                         (let ((_hd96059646_
                                                (##car _e96049642_))
                                               (_tl96069649_
                                                (##cdr _e96049642_)))
                                           (if (gx#stx-pair? _hd96059646_)
                                               (let ((_e96079652_
                                                      (gx#syntax-e
                                                       _hd96059646_)))
                                                 (let ((_hd96089656_
                                                        (##car _e96079652_))
                                                       (_tl96099659_
                                                        (##cdr _e96079652_)))
                                                   ((lambda (_L9662_
                                                             _L9664_
                                                             _L9665_
                                                             _L9666_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'do)
                                                            (cons _L9666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (gx#datum->syntax '#f 'not)
                                            (cons _L9665_ '()))
                                      _L9664_)
                                _L9662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl96069649_
                                                    _tl96099659_
                                                    _hd96089656_
                                                    _hd96029636_)))
                                               (_g95929615_ _g95939619_))))
                                       (_g95929615_ _g95939619_))))
                               (_g95929615_ _g95939619_))))
                       (_g95929615_ _g95939619_)))))
            (_g95919686_ _$stx9588_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#begin0|
      (lambda (_$stx9690_)
        (let ((_g96959726_
               (lambda (_g96969722_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g96969722_))))
          (let ((_g96949811_
                 (lambda (_g96969730_)
                   (if (gx#stx-pair? _g96969730_)
                       (let ((_e97069733_ (gx#syntax-e _g96969730_)))
                         (let ((_hd97079737_ (##car _e97069733_))
                               (_tl97089740_ (##cdr _e97069733_)))
                           (if (gx#stx-pair? _tl97089740_)
                               (let ((_e97099743_ (gx#syntax-e _tl97089740_)))
                                 (let ((_hd97109747_ (##car _e97099743_))
                                       (_tl97119750_ (##cdr _e97099743_)))
                                   (if (gx#stx-pair/null? _tl97119750_)
                                       (if (fx>= (gx#stx-length _tl97119750_)
                                                 '0)
                                           (let ((_g28340_
                                                  (gx#syntax-split-splice
                                                   _tl97119750_
                                                   '0)))
                                             (begin
                                               (let ((_g28341_
                                                      (values-count _g28340_)))
                                                 (if (not (fx= _g28341_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28341_)))
                                               (let ((_target97129753_
                                                      (values-ref _g28340_ 0))
                                                     (_tl97149756_
                                                      (values-ref _g28340_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl97149756_)
                                                     (letrec ((_loop97159759_
                                                               (lambda (_hd97139763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _rest97199766_)
                         (if (gx#stx-pair? _hd97139763_)
                             (let ((_e97169769_ (gx#syntax-e _hd97139763_)))
                               (let ((_lp-hd97179773_ (##car _e97169769_))
                                     (_lp-tl97189776_ (##cdr _e97169769_)))
                                 (_loop97159759_
                                  _lp-tl97189776_
                                  (cons _lp-hd97179773_ _rest97199766_))))
                             (let ((_rest97209779_ (reverse _rest97199766_)))
                               ((lambda (_L9783_ _L9785_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$r)
                                                    (cons _L9785_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '%#expression)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              (begin
                                '#!void
                                (foldr (lambda (_g98029805_ _g98039808_)
                                         (cons _g98029805_ _g98039808_))
                                       '()
                                       _L9783_)))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$r)
                                                          '())))))
                                _rest97209779_
                                _hd97109747_))))))
               (_loop97159759_ _target97129753_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g96959726_
                                                      _g96969730_)))))
                                           (_g96959726_ _g96969730_))
                                       (_g96959726_ _g96969730_))))
                               (_g96959726_ _g96969730_))))
                       (_g96959726_ _g96969730_)))))
            (let ((_g96939851_
                   (lambda (_g96969815_)
                     (if (gx#stx-pair? _g96969815_)
                         (let ((_e96989818_ (gx#syntax-e _g96969815_)))
                           (let ((_hd96999822_ (##car _e96989818_))
                                 (_tl97009825_ (##cdr _e96989818_)))
                             (if (gx#stx-pair? _tl97009825_)
                                 (let ((_e97019828_
                                        (gx#syntax-e _tl97009825_)))
                                   (let ((_hd97029832_ (##car _e97019828_))
                                         (_tl97039835_ (##cdr _e97019828_)))
                                     (if (gx#stx-null? _tl97039835_)
                                         ((lambda (_L9838_) _L9838_)
                                          _hd97029832_)
                                         (_g96949811_ _g96969815_))))
                                 (_g96949811_ _g96969815_))))
                         (_g96949811_ _g96969815_)))))
              (_g96939851_ _$stx9690_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#rec|
      (lambda (_$stx9856_)
        (let ((_g98629915_
               (lambda (_g98639911_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g98639911_))))
          (let ((_g986110014_
                 (lambda (_g98639919_)
                   (if (gx#stx-pair? _g98639919_)
                       (let ((_e98929922_ (gx#syntax-e _g98639919_)))
                         (let ((_hd98939926_ (##car _e98929922_))
                               (_tl98949929_ (##cdr _e98929922_)))
                           (if (gx#stx-pair? _tl98949929_)
                               (let ((_e98959932_ (gx#syntax-e _tl98949929_)))
                                 (let ((_hd98969936_ (##car _e98959932_))
                                       (_tl98979939_ (##cdr _e98959932_)))
                                   (if (gx#stx-pair? _hd98969936_)
                                       (let ((_e98989942_
                                              (gx#syntax-e _hd98969936_)))
                                         (let ((_hd98999946_
                                                (##car _e98989942_))
                                               (_tl99009949_
                                                (##cdr _e98989942_)))
                                           (if (gx#stx-pair/null? _tl98979939_)
                                               (if (fx>= (gx#stx-length
                                                          _tl98979939_)
                                                         '0)
                                                   (let ((_g28342_
                                                          (gx#syntax-split-splice
                                                           _tl98979939_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28343_
                                                              (values-count
                                                               _g28342_)))
                                                         (if (not (fx= _g28343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28343_)))
               (let ((_target99019952_ (values-ref _g28342_ 0))
                     (_tl99039955_ (values-ref _g28342_ 1)))
                 (if (gx#stx-null? _tl99039955_)
                     (letrec ((_loop99049958_
                               (lambda (_hd99029962_ _body99089965_)
                                 (if (gx#stx-pair? _hd99029962_)
                                     (let ((_e99059968_
                                            (gx#syntax-e _hd99029962_)))
                                       (let ((_lp-hd99069972_
                                              (##car _e99059968_))
                                             (_lp-tl99079975_
                                              (##cdr _e99059968_)))
                                         (_loop99049958_
                                          _lp-tl99079975_
                                          (cons _lp-hd99069972_
                                                _body99089965_))))
                                     (let ((_body99099978_
                                            (reverse _body99089965_)))
                                       ((lambda (_L9982_ _L9984_ _L9985_)
                                          (if (gx#identifier? _L9985_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec)
                                                    (cons (cons (cons _L9985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons _L9984_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1000510008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1000610011_)
                   (cons _g1000510008_ _g1000610011_))
                 '()
                 _L9982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L9985_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g98629915_ _g98639919_)))
                                        _body99099978_
                                        _tl99009949_
                                        _hd98999946_))))))
                       (_loop99049958_ _target99019952_ '()))
                     (_g98629915_ _g98639919_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g98629915_ _g98639919_))
                                               (_g98629915_ _g98639919_))))
                                       (_g98629915_ _g98639919_))))
                               (_g98629915_ _g98639919_))))
                       (_g98629915_ _g98639919_)))))
            (let ((_g986010080_
                   (lambda (_g986310018_)
                     (if (gx#stx-pair? _g986310018_)
                         (let ((_e987710021_ (gx#syntax-e _g986310018_)))
                           (let ((_hd987810025_ (##car _e987710021_))
                                 (_tl987910028_ (##cdr _e987710021_)))
                             (if (gx#stx-pair? _tl987910028_)
                                 (let ((_e988010031_
                                        (gx#syntax-e _tl987910028_)))
                                   (let ((_hd988110035_ (##car _e988010031_))
                                         (_tl988210038_ (##cdr _e988010031_)))
                                     (if (gx#stx-pair? _hd988110035_)
                                         (let ((_e988310041_
                                                (gx#syntax-e _hd988110035_)))
                                           (let ((_hd988410045_
                                                  (##car _e988310041_))
                                                 (_tl988510048_
                                                  (##cdr _e988310041_)))
                                             (if (gx#identifier? _hd988410045_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g28344_|
                                                      _hd988410045_)
                                                     (if (gx#stx-pair?
                                                          _tl988210038_)
                                                         (let ((_e988610051_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl988210038_)))
                   (let ((_hd988710055_ (##car _e988610051_))
                         (_tl988810058_ (##cdr _e988610051_)))
                     (if (gx#stx-null? _tl988810058_)
                         ((lambda (_L10061_ _L10063_)
                            (if (gx#identifier-list? _L10063_)
                                (cons (gx#datum->syntax '#f 'letrec-values)
                                      (cons (cons (cons _L10063_
                                                        (cons _L10061_ '()))
                                                  '())
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'values)
                                                        _L10063_)
                                                  '())))
                                (_g986110014_ _g986310018_)))
                          _hd988710055_
                          _tl988510048_)
                         (_g986110014_ _g986310018_))))
                 (_g986110014_ _g986310018_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g986110014_
                                                      _g986310018_))
                                                 (_g986110014_ _g986310018_))))
                                         (_g986110014_ _g986310018_))))
                                 (_g986110014_ _g986310018_))))
                         (_g986110014_ _g986310018_)))))
              (let ((_g985910134_
                     (lambda (_g986310084_)
                       (if (gx#stx-pair? _g986310084_)
                           (let ((_e986610087_ (gx#syntax-e _g986310084_)))
                             (let ((_hd986710091_ (##car _e986610087_))
                                   (_tl986810094_ (##cdr _e986610087_)))
                               (if (gx#stx-pair? _tl986810094_)
                                   (let ((_e986910097_
                                          (gx#syntax-e _tl986810094_)))
                                     (let ((_hd987010101_ (##car _e986910097_))
                                           (_tl987110104_
                                            (##cdr _e986910097_)))
                                       (if (gx#stx-pair? _tl987110104_)
                                           (let ((_e987210107_
                                                  (gx#syntax-e _tl987110104_)))
                                             (let ((_hd987310111_
                                                    (##car _e987210107_))
                                                   (_tl987410114_
                                                    (##cdr _e987210107_)))
                                               (if (gx#stx-null? _tl987410114_)
                                                   ((lambda (_L10117_ _L10119_)
                                                      (if (gx#identifier?
                                                           _L10119_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L10119_ (cons _L10117_ '())) '())
                              (cons _L10119_ '())))
                  (_g986010080_ _g986310084_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd987310111_
                                                    _hd987010101_)
                                                   (_g986010080_
                                                    _g986310084_))))
                                           (_g986010080_ _g986310084_))))
                                   (_g986010080_ _g986310084_))))
                           (_g986010080_ _g986310084_)))))
                (_g985910134_ _$stx9856_)))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet|
      (lambda (_stx10139_)
        (let ((_let-head?10142_
               (lambda (_x10689_)
                 (let ((_g1069310704_
                        (lambda (_g1069410700_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1069410700_))))
                   (let ((_g1069210715_
                          (lambda (_g1069410708_)
                            ((lambda () (gx#identifier? _x10689_))))))
                     (let ((_g1069110745_
                            (lambda (_g1069410719_)
                              (if (gx#stx-pair? _g1069410719_)
                                  (let ((_e1069610722_
                                         (gx#syntax-e _g1069410719_)))
                                    (let ((_hd1069710726_
                                           (##car _e1069610722_))
                                          (_tl1069810729_
                                           (##cdr _e1069610722_)))
                                      (if (gx#identifier? _hd1069710726_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:2>[1]#_g28354_|
                                               _hd1069710726_)
                                              ((lambda (_L10732_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L10732_))
                                               _tl1069810729_)
                                              (_g1069210715_ _g1069410719_))
                                          (_g1069210715_ _g1069410719_))))
                                  (_g1069210715_ _g1069410719_)))))
                       (_g1069110745_ _x10689_)))))))
          (let ((_let-head10144_
                 (lambda (_x10629_)
                   (let ((_g1063310644_
                          (lambda (_g1063410640_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1063410640_))))
                     (let ((_g1063210655_
                            (lambda (_g1063410648_)
                              ((lambda () (list _x10629_))))))
                       (let ((_g1063110685_
                              (lambda (_g1063410659_)
                                (if (gx#stx-pair? _g1063410659_)
                                    (let ((_e1063610662_
                                           (gx#syntax-e _g1063410659_)))
                                      (let ((_hd1063710666_
                                             (##car _e1063610662_))
                                            (_tl1063810669_
                                             (##cdr _e1063610662_)))
                                        (if (gx#identifier? _hd1063710666_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:2>[1]#_g28353_|
                                                 _hd1063710666_)
                                                ((lambda (_L10672_) _L10672_)
                                                 _tl1063810669_)
                                                (_g1063210655_ _g1063410659_))
                                            (_g1063210655_ _g1063410659_))))
                                    (_g1063210655_ _g1063410659_)))))
                         (_g1063110685_ _x10629_)))))))
            (let ((_g1014710205_
                   (lambda (_g1014810201_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1014810201_))))
              (let ((_g1014610555_
                     (lambda (_g1014810209_)
                       (if (gx#stx-pair? _g1014810209_)
                           (let ((_e1016810212_ (gx#syntax-e _g1014810209_)))
                             (let ((_hd1016910216_ (##car _e1016810212_))
                                   (_tl1017010219_ (##cdr _e1016810212_)))
                               (if (gx#stx-pair? _tl1017010219_)
                                   (let ((_e1017110222_
                                          (gx#syntax-e _tl1017010219_)))
                                     (let ((_hd1017210226_
                                            (##car _e1017110222_))
                                           (_tl1017310229_
                                            (##cdr _e1017110222_)))
                                       (if (gx#stx-pair/null? _hd1017210226_)
                                           (if (fx>= (gx#stx-length
                                                      _hd1017210226_)
                                                     '0)
                                               (let ((_g28345_
                                                      (gx#syntax-split-splice
                                                       _hd1017210226_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28346_
                                                          (values-count
                                                           _g28345_)))
                                                     (if (not (fx= _g28346_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28346_)))
                                                   (let ((_target1017410232_
                                                          (values-ref
                                                           _g28345_
                                                           0))
                                                         (_tl1017610235_
                                                          (values-ref
                                                           _g28345_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl1017610235_)
                                                         (letrec ((_loop1017710238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1017510242_
                                    _e1018110245_
                                    _hd1018210247_)
                             (if (gx#stx-pair? _hd1017510242_)
                                 (let ((_e1017810250_
                                        (gx#syntax-e _hd1017510242_)))
                                   (let ((_lp-hd1017910254_
                                          (##car _e1017810250_))
                                         (_lp-tl1018010257_
                                          (##cdr _e1017810250_)))
                                     (if (gx#stx-pair? _lp-hd1017910254_)
                                         (let ((_e1018510260_
                                                (gx#syntax-e
                                                 _lp-hd1017910254_)))
                                           (let ((_hd1018610264_
                                                  (##car _e1018510260_))
                                                 (_tl1018710267_
                                                  (##cdr _e1018510260_)))
                                             (if (gx#stx-pair? _tl1018710267_)
                                                 (let ((_e1018810270_
                                                        (gx#syntax-e
                                                         _tl1018710267_)))
                                                   (let ((_hd1018910274_
                                                          (##car _e1018810270_))
                                                         (_tl1019010277_
                                                          (##cdr _e1018810270_)))
                                                     (if (gx#stx-null?
                                                          _tl1019010277_)
                                                         (_loop1017710238_
                                                          _lp-tl1018010257_
                                                          (cons _hd1018910274_
                                                                _e1018110245_)
                                                          (cons _hd1018610264_
                                                                _hd1018210247_))
                                                         (_g1014710205_
                                                          _g1014810209_))))
                                                 (_g1014710205_
                                                  _g1014810209_))))
                                         (_g1014710205_ _g1014810209_))))
                                 (let ((_e1018310280_ (reverse _e1018110245_))
                                       (_hd1018410283_
                                        (reverse _hd1018210247_)))
                                   (if (gx#stx-pair/null? _tl1017310229_)
                                       (if (fx>= (gx#stx-length _tl1017310229_)
                                                 '0)
                                           (let ((_g28347_
                                                  (gx#syntax-split-splice
                                                   _tl1017310229_
                                                   '0)))
                                             (begin
                                               (let ((_g28348_
                                                      (values-count _g28347_)))
                                                 (if (not (fx= _g28348_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28348_)))
                                               (let ((_target1019110286_
                                                      (values-ref _g28347_ 0))
                                                     (_tl1019310289_
                                                      (values-ref _g28347_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1019310289_)
                                                     (letrec ((_loop1019410292_
                                                               (lambda (_hd1019210296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body1019810299_)
                         (if (gx#stx-pair? _hd1019210296_)
                             (let ((_e1019510302_
                                    (gx#syntax-e _hd1019210296_)))
                               (let ((_lp-hd1019610306_ (##car _e1019510302_))
                                     (_lp-tl1019710309_ (##cdr _e1019510302_)))
                                 (_loop1019410292_
                                  _lp-tl1019710309_
                                  (cons _lp-hd1019610306_ _body1019810299_))))
                             (let ((_body1019910312_
                                    (reverse _body1019810299_)))
                               ((lambda (_L10316_ _L10318_ _L10319_)
                                  (if (gx#stx-andmap
                                       _let-head?10142_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1034210345_
                                                         _g1034310348_)
                                                  (cons _g1034210345_
                                                        _g1034310348_))
                                                '()
                                                _L10319_)))
                                      (let ((_g1035110384_
                                             (lambda (_g1035210380_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1035210380_))))
                                        (let ((_g1035010535_
                                               (lambda (_g1035210388_)
                                                 (if (gx#stx-pair?
                                                      _g1035210388_)
                                                     (let ((_e1035510391_
                                                            (gx#syntax-e
                                                             _g1035210388_)))
                                                       (let ((_hd1035610395_
                                                              (##car _e1035510391_))
                                                             (_tl1035710398_
                                                              (##cdr _e1035510391_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1035610395_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1035610395_)
                               '0)
                         (let ((_g28349_
                                (gx#syntax-split-splice _hd1035610395_ '0)))
                           (begin
                             (let ((_g28350_ (values-count _g28349_)))
                               (if (not (fx= _g28350_ 2))
                                   (error "Context expects 2 values"
                                          _g28350_)))
                             (let ((_target1035810401_ (values-ref _g28349_ 0))
                                   (_tl1036010404_ (values-ref _g28349_ 1)))
                               (if (gx#stx-null? _tl1036010404_)
                                   (letrec ((_loop1036110407_
                                             (lambda (_hd1035910411_
                                                      _$e1036510414_)
                                               (if (gx#stx-pair?
                                                    _hd1035910411_)
                                                   (let ((_e1036210417_
                                                          (gx#syntax-e
                                                           _hd1035910411_)))
                                                     (let ((_lp-hd1036310421_
                                                            (##car _e1036210417_))
                                                           (_lp-tl1036410424_
                                                            (##cdr _e1036210417_)))
                                                       (_loop1036110407_
                                                        _lp-tl1036410424_
                                                        (cons _lp-hd1036310421_
                                                              _$e1036510414_))))
                                                   (let ((_$e1036610427_
                                                          (reverse _$e1036510414_)))
                                                     (if (gx#stx-pair?
                                                          _tl1035710398_)
                                                         (let ((_e1036710431_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1035710398_)))
                   (let ((_hd1036810435_ (##car _e1036710431_))
                         (_tl1036910438_ (##cdr _e1036710431_)))
                     (if (gx#stx-pair/null? _hd1036810435_)
                         (if (fx>= (gx#stx-length _hd1036810435_) '0)
                             (let ((_g28351_
                                    (gx#syntax-split-splice
                                     _hd1036810435_
                                     '0)))
                               (begin
                                 (let ((_g28352_ (values-count _g28351_)))
                                   (if (not (fx= _g28352_ 2))
                                       (error "Context expects 2 values"
                                              _g28352_)))
                                 (let ((_target1037010441_
                                        (values-ref _g28351_ 0))
                                       (_tl1037210444_
                                        (values-ref _g28351_ 1)))
                                   (if (gx#stx-null? _tl1037210444_)
                                       (letrec ((_loop1037310447_
                                                 (lambda (_hd1037110451_
                                                          _hd-bind1037710454_)
                                                   (if (gx#stx-pair?
                                                        _hd1037110451_)
                                                       (let ((_e1037410457_
                                                              (gx#syntax-e
                                                               _hd1037110451_)))
                                                         (let ((_lp-hd1037510461_
                                                                (##car _e1037410457_))
                                                               (_lp-tl1037610464_
                                                                (##cdr _e1037410457_)))
                                                           (_loop1037310447_
                                                            _lp-tl1037610464_
                                                            (cons _lp-hd1037510461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd-bind1037710454_))))
               (let ((_hd-bind1037810467_ (reverse _hd-bind1037710454_)))
                 (if (gx#stx-null? _tl1036910438_)
                     ((lambda (_L10471_ _L10473_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let-values)
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _L10318_
                                         _L10473_)
                                        (foldr (lambda (_g1049610507_
                                                        _g1049710510_
                                                        _g1049810512_)
                                                 (cons (cons (cons _g1049710510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _g1049610507_ '()))
               _g1049810512_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _L10318_
                                               _L10473_))
                                      (cons (cons (gx#datum->syntax '#f 'and)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1049910515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1050010518_)
                     (cons _g1049910515_ _g1050010518_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L10473_
                                        _L10471_)
                                       (foldr (lambda (_g1050110521_
                                                       _g1050210524_
                                                       _g1050310526_)
                                                (cons (cons _g1050210524_
                                                            (cons _g1050110521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g1050310526_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L10473_
                                              _L10471_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1050410529_
                                                       _g1050510532_)
                                                (cons _g1050410529_
                                                      _g1050510532_))
                                              '()
                                              _L10316_))))
                         '())
                   _L10473_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _hd-bind1037810467_
                      _$e1036610427_)
                     (_g1035110384_ _g1035210388_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1037310447_
                                          _target1037010441_
                                          '()))
                                       (_g1035110384_ _g1035210388_)))))
                             (_g1035110384_ _g1035210388_))
                         (_g1035110384_ _g1035210388_))))
                 (_g1035110384_ _g1035210388_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1036110407_ _target1035810401_ '()))
                                   (_g1035110384_ _g1035210388_)))))
                         (_g1035110384_ _g1035210388_))
                     (_g1035110384_ _g1035210388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1035110384_
                                                      _g1035210388_)))))
                                          (_g1035010535_
                                           (list (gx#gentemps
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1053810541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1053910544_)
                     (cons _g1053810541_ _g1053910544_))
                   '()
                   _L10319_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-map
                                                  _let-head10144_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1054610549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1054710552_)
                     (cons _g1054610549_ _g1054710552_))
                   '()
                   _L10319_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g1014710205_ _g1014810209_)))
                                _body1019910312_
                                _e1018310280_
                                _hd1018410283_))))))
               (_loop1019410292_ _target1019110286_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1014710205_
                                                      _g1014810209_)))))
                                           (_g1014710205_ _g1014810209_))
                                       (_g1014710205_ _g1014810209_)))))))
                   (_loop1017710238_ _target1017410232_ '() '()))
                 (_g1014710205_ _g1014810209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1014710205_ _g1014810209_))
                                           (_g1014710205_ _g1014810209_))))
                                   (_g1014710205_ _g1014810209_))))
                           (_g1014710205_ _g1014810209_)))))
                (let ((_g1014510625_
                       (lambda (_g1014810559_)
                         (if (gx#stx-pair? _g1014810559_)
                             (let ((_e1015310562_ (gx#syntax-e _g1014810559_)))
                               (let ((_hd1015410566_ (##car _e1015310562_))
                                     (_tl1015510569_ (##cdr _e1015310562_)))
                                 (if (gx#stx-pair? _tl1015510569_)
                                     (let ((_e1015610572_
                                            (gx#syntax-e _tl1015510569_)))
                                       (let ((_hd1015710576_
                                              (##car _e1015610572_))
                                             (_tl1015810579_
                                              (##cdr _e1015610572_)))
                                         (if (gx#stx-pair? _hd1015710576_)
                                             (let ((_e1015910582_
                                                    (gx#syntax-e
                                                     _hd1015710576_)))
                                               (let ((_hd1016010586_
                                                      (##car _e1015910582_))
                                                     (_tl1016110589_
                                                      (##cdr _e1015910582_)))
                                                 (if (gx#stx-pair?
                                                      _tl1016110589_)
                                                     (let ((_e1016210592_
                                                            (gx#syntax-e
                                                             _tl1016110589_)))
                                                       (let ((_hd1016310596_
                                                              (##car _e1016210592_))
                                                             (_tl1016410599_
                                                              (##cdr _e1016210592_)))
                                                         (if (gx#stx-null?
                                                              _tl1016410599_)
                                                             ((lambda (_L10602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10604_
                               _L10605_
                               _L10606_)
                        (if (_let-head?10142_ _L10605_)
                            (cons _L10606_
                                  (cons (cons (cons _L10605_
                                                    (cons _L10604_ '()))
                                              '())
                                        _L10602_))
                            (_g1014610555_ _g1014810559_)))
                      _tl1015810579_
                      _hd1016310596_
                      _hd1016010586_
                      _hd1015410566_)
                     (_g1014610555_ _g1014810559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1014610555_
                                                      _g1014810559_))))
                                             (_g1014610555_ _g1014810559_))))
                                     (_g1014610555_ _g1014810559_))))
                             (_g1014610555_ _g1014810559_)))))
                  (_g1014510625_ _stx10139_))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet*|
      (lambda (_$stx10753_)
        (let ((_g1075810803_
               (lambda (_g1075910799_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1075910799_))))
          (let ((_g1075710904_
                 (lambda (_g1075910807_)
                   (if (gx#stx-pair? _g1075910807_)
                       (let ((_e1078010810_ (gx#syntax-e _g1075910807_)))
                         (let ((_hd1078110814_ (##car _e1078010810_))
                               (_tl1078210817_ (##cdr _e1078010810_)))
                           (if (gx#stx-pair? _tl1078210817_)
                               (let ((_e1078310820_
                                      (gx#syntax-e _tl1078210817_)))
                                 (let ((_hd1078410824_ (##car _e1078310820_))
                                       (_tl1078510827_ (##cdr _e1078310820_)))
                                   (if (gx#stx-pair? _hd1078410824_)
                                       (let ((_e1078610830_
                                              (gx#syntax-e _hd1078410824_)))
                                         (let ((_hd1078710834_
                                                (##car _e1078610830_))
                                               (_tl1078810837_
                                                (##cdr _e1078610830_)))
                                           (if (gx#stx-pair/null?
                                                _tl1078510827_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1078510827_)
                                                         '0)
                                                   (let ((_g28355_
                                                          (gx#syntax-split-splice
                                                           _tl1078510827_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28356_
                                                              (values-count
                                                               _g28355_)))
                                                         (if (not (fx= _g28356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28356_)))
               (let ((_target1078910840_ (values-ref _g28355_ 0))
                     (_tl1079110843_ (values-ref _g28355_ 1)))
                 (if (gx#stx-null? _tl1079110843_)
                     (letrec ((_loop1079210846_
                               (lambda (_hd1079010850_ _body1079610853_)
                                 (if (gx#stx-pair? _hd1079010850_)
                                     (let ((_e1079310856_
                                            (gx#syntax-e _hd1079010850_)))
                                       (let ((_lp-hd1079410860_
                                              (##car _e1079310856_))
                                             (_lp-tl1079510863_
                                              (##cdr _e1079310856_)))
                                         (_loop1079210846_
                                          _lp-tl1079510863_
                                          (cons _lp-hd1079410860_
                                                _body1079610853_))))
                                     (let ((_body1079710866_
                                            (reverse _body1079610853_)))
                                       ((lambda (_L10870_
                                                 _L10872_
                                                 _L10873_
                                                 _L10874_)
                                          (cons (gx#datum->syntax '#f 'alet)
                                                (cons (cons _L10873_ '())
                                                      (cons (cons _L10874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L10872_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1089510898_ _g1089610901_)
                                           (cons _g1089510898_ _g1089610901_))
                                         '()
                                         _L10870_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body1079710866_
                                        _tl1078810837_
                                        _hd1078710834_
                                        _hd1078110814_))))))
                       (_loop1079210846_ _target1078910840_ '()))
                     (_g1075810803_ _g1075910807_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1075810803_
                                                    _g1075910807_))
                                               (_g1075810803_ _g1075910807_))))
                                       (_g1075810803_ _g1075910807_))))
                               (_g1075810803_ _g1075910807_))))
                       (_g1075810803_ _g1075910807_)))))
            (let ((_g1075610986_
                   (lambda (_g1075910908_)
                     (if (gx#stx-pair? _g1075910908_)
                         (let ((_e1076110911_ (gx#syntax-e _g1075910908_)))
                           (let ((_hd1076210915_ (##car _e1076110911_))
                                 (_tl1076310918_ (##cdr _e1076110911_)))
                             (if (gx#stx-pair? _tl1076310918_)
                                 (let ((_e1076410921_
                                        (gx#syntax-e _tl1076310918_)))
                                   (let ((_hd1076510925_ (##car _e1076410921_))
                                         (_tl1076610928_
                                          (##cdr _e1076410921_)))
                                     (if (gx#stx-null? _hd1076510925_)
                                         (if (gx#stx-pair/null? _tl1076610928_)
                                             (if (fx>= (gx#stx-length
                                                        _tl1076610928_)
                                                       '0)
                                                 (let ((_g28357_
                                                        (gx#syntax-split-splice
                                                         _tl1076610928_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28358_
                                                            (values-count
                                                             _g28357_)))
                                                       (if (not (fx= _g28358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28358_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1076710931_
                                                            (values-ref
                                                             _g28357_
                                                             0))
                                                           (_tl1076910934_
                                                            (values-ref
                                                             _g28357_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1076910934_)
                                                           (letrec ((_loop1077010937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1076810941_ _body1077410944_)
                               (if (gx#stx-pair? _hd1076810941_)
                                   (let ((_e1077110947_
                                          (gx#syntax-e _hd1076810941_)))
                                     (let ((_lp-hd1077210951_
                                            (##car _e1077110947_))
                                           (_lp-tl1077310954_
                                            (##cdr _e1077110947_)))
                                       (_loop1077010937_
                                        _lp-tl1077310954_
                                        (cons _lp-hd1077210951_
                                              _body1077410944_))))
                                   (let ((_body1077510957_
                                          (reverse _body1077410944_)))
                                     ((lambda (_L10961_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1097710980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1097810983_)
                       (cons _g1097710980_ _g1097810983_))
                     '()
                     _L10961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body1077510957_))))))
                     (_loop1077010937_ _target1076710931_ '()))
                   (_g1075710904_ _g1075910908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1075710904_ _g1075910908_))
                                             (_g1075710904_ _g1075910908_))
                                         (_g1075710904_ _g1075910908_))))
                                 (_g1075710904_ _g1075910908_))))
                         (_g1075710904_ _g1075910908_)))))
              (_g1075610986_ _$stx10753_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#@list|
      (lambda (_$stx10992_)
        (let ((_g1100111058_
               (lambda (_g1100211054_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1100211054_))))
          (let ((_g1100011087_
                 (lambda (_g1100211062_)
                   (if (gx#stx-pair? _g1100211062_)
                       (let ((_e1105011065_ (gx#syntax-e _g1100211062_)))
                         (let ((_hd1105111069_ (##car _e1105011065_))
                               (_tl1105211072_ (##cdr _e1105011065_)))
                           ((lambda (_L11075_) _L11075_) _tl1105211072_)))
                       (_g1100111058_ _g1100211062_)))))
            (let ((_g1099911131_
                   (lambda (_g1100211091_)
                     (if (gx#stx-pair? _g1100211091_)
                         (let ((_e1104311094_ (gx#syntax-e _g1100211091_)))
                           (let ((_hd1104411098_ (##car _e1104311094_))
                                 (_tl1104511101_ (##cdr _e1104311094_)))
                             (if (gx#stx-pair? _tl1104511101_)
                                 (let ((_e1104611104_
                                        (gx#syntax-e _tl1104511101_)))
                                   (let ((_hd1104711108_ (##car _e1104611104_))
                                         (_tl1104811111_
                                          (##cdr _e1104611104_)))
                                     ((lambda (_L11114_ _L11116_ _L11117_)
                                        (cons (gx#datum->syntax '#f 'cons)
                                              (cons _L11116_
                                                    (cons (cons _L11117_
                                                                _L11114_)
                                                          '()))))
                                      _tl1104811111_
                                      _hd1104711108_
                                      _hd1104411098_)))
                                 (_g1100011087_ _g1100211091_))))
                         (_g1100011087_ _g1100211091_)))))
              (let ((_g1099811189_
                     (lambda (_g1100211135_)
                       (if (gx#stx-pair? _g1100211135_)
                           (let ((_e1103111138_ (gx#syntax-e _g1100211135_)))
                             (let ((_hd1103211142_ (##car _e1103111138_))
                                   (_tl1103311145_ (##cdr _e1103111138_)))
                               (if (gx#stx-pair? _tl1103311145_)
                                   (let ((_e1103411148_
                                          (gx#syntax-e _tl1103311145_)))
                                     (let ((_hd1103511152_
                                            (##car _e1103411148_))
                                           (_tl1103611155_
                                            (##cdr _e1103411148_)))
                                       (if (gx#stx-pair? _tl1103611155_)
                                           (let ((_e1103711158_
                                                  (gx#syntax-e
                                                   _tl1103611155_)))
                                             (let ((_hd1103811162_
                                                    (##car _e1103711158_))
                                                   (_tl1103911165_
                                                    (##cdr _e1103711158_)))
                                               ((lambda (_L11168_
                                                         _L11170_
                                                         _L11171_
                                                         _L11172_)
                                                  (if (gx#ellipsis? _L11170_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'foldr)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons)
                          (cons (cons _L11172_ _L11168_) (cons _L11171_ '()))))
              (_g1099911131_ _g1100211135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1103911165_
                                                _hd1103811162_
                                                _hd1103511152_
                                                _hd1103211142_)))
                                           (_g1099911131_ _g1100211135_))))
                                   (_g1099911131_ _g1100211135_))))
                           (_g1099911131_ _g1100211135_)))))
                (let ((_g1099711243_
                       (lambda (_g1100211193_)
                         (if (gx#stx-pair? _g1100211193_)
                             (let ((_e1101811196_ (gx#syntax-e _g1100211193_)))
                               (let ((_hd1101911200_ (##car _e1101811196_))
                                     (_tl1102011203_ (##cdr _e1101811196_)))
                                 (if (gx#stx-pair? _tl1102011203_)
                                     (let ((_e1102111206_
                                            (gx#syntax-e _tl1102011203_)))
                                       (let ((_hd1102211210_
                                              (##car _e1102111206_))
                                             (_tl1102311213_
                                              (##cdr _e1102111206_)))
                                         (if (gx#stx-pair? _tl1102311213_)
                                             (let ((_e1102411216_
                                                    (gx#syntax-e
                                                     _tl1102311213_)))
                                               (let ((_hd1102511220_
                                                      (##car _e1102411216_))
                                                     (_tl1102611223_
                                                      (##cdr _e1102411216_)))
                                                 (if (gx#stx-null?
                                                      _tl1102611223_)
                                                     ((lambda (_L11226_
                                                               _L11228_)
                                                        (if (gx#ellipsis?
                                                             _L11226_)
                                                            _L11228_
                                                            (_g1099811189_
                                                             _g1100211193_)))
                                                      _hd1102511220_
                                                      _hd1102211210_)
                                                     (_g1099811189_
                                                      _g1100211193_))))
                                             (_g1099811189_ _g1100211193_))))
                                     (_g1099811189_ _g1100211193_))))
                             (_g1099811189_ _g1100211193_)))))
                  (let ((_g1099611295_
                         (lambda (_g1100211247_)
                           (if (gx#stx-pair? _g1100211247_)
                               (let ((_e1100711250_
                                      (gx#syntax-e _g1100211247_)))
                                 (let ((_hd1100811254_ (##car _e1100711250_))
                                       (_tl1100911257_ (##cdr _e1100711250_)))
                                   (if (gx#stx-pair? _tl1100911257_)
                                       (let ((_e1101011260_
                                              (gx#syntax-e _tl1100911257_)))
                                         (let ((_hd1101111264_
                                                (##car _e1101011260_))
                                               (_tl1101211267_
                                                (##cdr _e1101011260_)))
                                           (if (gx#stx-datum? _hd1101111264_)
                                               (if (equal? (gx#stx-e
                                                            _hd1101111264_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl1101211267_)
                                                       (let ((_e1101311270_
                                                              (gx#syntax-e
                                                               _tl1101211267_)))
                                                         (let ((_hd1101411274_
                                                                (##car _e1101311270_))
                                                               (_tl1101511277_
                                                                (##cdr _e1101311270_)))
                                                           (if (gx#stx-null?
                                                                _tl1101511277_)
                                                               ((lambda (_L11280_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11280_)
                        _hd1101411274_)
                       (_g1099711243_ _g1100211247_))))
               (_g1099711243_ _g1100211247_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1099711243_
                                                    _g1100211247_))
                                               (_g1099711243_ _g1100211247_))))
                                       (_g1099711243_ _g1100211247_))))
                               (_g1099711243_ _g1100211247_)))))
                    (let ((_g1099511316_
                           (lambda (_g1100211299_)
                             (if (gx#stx-pair? _g1100211299_)
                                 (let ((_e1100311302_
                                        (gx#syntax-e _g1100211299_)))
                                   (let ((_hd1100411306_ (##car _e1100311302_))
                                         (_tl1100511309_
                                          (##cdr _e1100311302_)))
                                     (if (gx#stx-null? _tl1100511309_)
                                         ((lambda ()
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons '() '()))))
                                         (_g1099611295_ _g1100211299_))))
                                 (_g1099611295_ _g1100211299_)))))
                      (_g1099511316_ _$stx10992_))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#quasiquote|
      (lambda (_stx11320_)
        (letrec ((_simple-quote?11323_
                  (lambda (_e12015_)
                    (let ((_g1202312060_
                           (lambda (_g1202412056_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1202412056_))))
                      (let ((_g1202212071_
                             (lambda (_g1202412064_) ((lambda () '#t)))))
                        (let ((_g1202112094_
                               (lambda (_g1202412075_)
                                 (if (gx#stx-box? _g1202412075_)
                                     (let ((_e1205412078_
                                            (unbox (gx#syntax-e
                                                    _g1202412075_))))
                                       ((lambda (_L12082_)
                                          (_simple-quote?11323_ _L12082_))
                                        _e1205412078_))
                                     (_g1202212071_ _g1202412075_)))))
                          (let ((_g1202012157_
                                 (lambda (_g1202412098_)
                                   (if (gx#stx-vector? _g1202412098_)
                                       (let ((_e1204312101_
                                              (vector->list
                                               (gx#syntax-e _g1202412098_))))
                                         (if (gx#stx-pair/null? _e1204312101_)
                                             (if (fx>= (gx#stx-length
                                                        _e1204312101_)
                                                       '0)
                                                 (let ((_g28359_
                                                        (gx#syntax-split-splice
                                                         _e1204312101_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28360_
                                                            (values-count
                                                             _g28359_)))
                                                       (if (not (fx= _g28360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28360_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1204412105_
                                                            (values-ref
                                                             _g28359_
                                                             0))
                                                           (_tl1204612108_
                                                            (values-ref
                                                             _g28359_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1204612108_)
                                                           (letrec ((_loop1204712111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1204512115_ _e1205112118_)
                               (if (gx#stx-pair? _hd1204512115_)
                                   (let ((_e1204812121_
                                          (gx#syntax-e _hd1204512115_)))
                                     (let ((_lp-hd1204912125_
                                            (##car _e1204812121_))
                                           (_lp-tl1205012128_
                                            (##cdr _e1204812121_)))
                                       (_loop1204712111_
                                        _lp-tl1205012128_
                                        (cons _lp-hd1204912125_
                                              _e1205112118_))))
                                   (let ((_e1205212131_
                                          (reverse _e1205112118_)))
                                     ((lambda (_L12135_)
                                        (_simple-quote?11323_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1214812151_
                                                           _g1214912154_)
                                                    (cons _g1214812151_
                                                          _g1214912154_))
                                                  '()
                                                  _L12135_))))
                                      _e1205212131_))))))
                     (_loop1204712111_ _target1204412105_ '()))
                   (_g1202112094_ _g1202412098_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1202112094_ _g1202412098_))
                                             (_g1202112094_ _g1202412098_)))
                                       (_g1202112094_ _g1202412098_)))))
                            (let ((_g1201912187_
                                   (lambda (_g1202412161_)
                                     (if (gx#stx-pair? _g1202412161_)
                                         (let ((_e1203912164_
                                                (gx#syntax-e _g1202412161_)))
                                           (let ((_hd1204012168_
                                                  (##car _e1203912164_))
                                                 (_tl1204112171_
                                                  (##cdr _e1203912164_)))
                                             ((lambda (_L12174_ _L12176_)
                                                (if (_simple-quote?11323_
                                                     _L12176_)
                                                    (_simple-quote?11323_
                                                     _L12174_)
                                                    '#f))
                                              _tl1204112171_
                                              _hd1204012168_)))
                                         (_g1202012157_ _g1202412161_)))))
                              (let ((_g1201812218_
                                     (lambda (_g1202412191_)
                                       (if (gx#stx-pair? _g1202412191_)
                                           (let ((_e1203112194_
                                                  (gx#syntax-e _g1202412191_)))
                                             (let ((_hd1203212198_
                                                    (##car _e1203112194_))
                                                   (_tl1203312201_
                                                    (##cdr _e1203112194_)))
                                               (if (gx#identifier?
                                                    _hd1203212198_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<sugar>::<sugar:2>[1]#_g28361_|
                                                        _hd1203212198_)
                                                       (if (gx#stx-pair?
                                                            _tl1203312201_)
                                                           (let ((_e1203412204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1203312201_)))
                     (let ((_hd1203512208_ (##car _e1203412204_))
                           (_tl1203612211_ (##cdr _e1203412204_)))
                       (if (gx#stx-null? _tl1203612211_)
                           ((lambda () '#f))
                           (_g1201912187_ _g1202412191_))))
                   (_g1201912187_ _g1202412191_))
               (_g1201912187_ _g1202412191_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1201912187_
                                                    _g1202412191_))))
                                           (_g1201912187_ _g1202412191_)))))
                                (let ((_g1201712249_
                                       (lambda (_g1202412222_)
                                         (if (gx#stx-pair? _g1202412222_)
                                             (let ((_e1202512225_
                                                    (gx#syntax-e
                                                     _g1202412222_)))
                                               (let ((_hd1202612229_
                                                      (##car _e1202512225_))
                                                     (_tl1202712232_
                                                      (##cdr _e1202512225_)))
                                                 (if (gx#identifier?
                                                      _hd1202612229_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g28362_|
                                                          _hd1202612229_)
                                                         (if (gx#stx-pair?
                                                              _tl1202712232_)
                                                             (let ((_e1202812235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1202712232_)))
                       (let ((_hd1202912239_ (##car _e1202812235_))
                             (_tl1203012242_ (##cdr _e1202812235_)))
                         (if (gx#stx-null? _tl1203012242_)
                             ((lambda () '#f))
                             (_g1201812218_ _g1202412222_))))
                     (_g1201812218_ _g1202412222_))
                 (_g1201812218_ _g1202412222_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1201812218_
                                                      _g1202412222_))))
                                             (_g1201812218_ _g1202412222_)))))
                                  (_g1201712249_ _e12015_))))))))))
                 (_generate11325_
                  (lambda (_e11387_ _d11389_)
                    (let ((_g1139811456_
                           (lambda (_g1139911452_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1139911452_))))
                      (let ((_g1139711473_
                             (lambda (_g1139911460_)
                               ((lambda (_L11463_)
                                  (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L11463_ '())))
                                _g1139911460_))))
                        (let ((_g1139611525_
                               (lambda (_g1139911477_)
                                 (if (gx#stx-box? _g1139911477_)
                                     (let ((_e1144911480_
                                            (unbox (gx#syntax-e
                                                    _g1139911477_))))
                                       ((lambda (_L11484_)
                                          (let ((_g1149411502_
                                                 (lambda (_g1149511498_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1149511498_))))
                                            (let ((_g1149311521_
                                                   (lambda (_g1149511506_)
                                                     ((lambda (_L11509_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'box)
                        (cons _L11509_ '()))))
              _g1149511506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1149311521_
                                               (_generate11325_
                                                _L11484_
                                                _d11389_)))))
                                        _e1144911480_))
                                     (_g1139711473_ _g1139911477_)))))
                          (let ((_g1139511619_
                                 (lambda (_g1139911529_)
                                   (if (gx#stx-vector? _g1139911529_)
                                       (let ((_e1143811532_
                                              (vector->list
                                               (gx#syntax-e _g1139911529_))))
                                         (if (gx#stx-pair/null? _e1143811532_)
                                             (if (fx>= (gx#stx-length
                                                        _e1143811532_)
                                                       '0)
                                                 (let ((_g28363_
                                                        (gx#syntax-split-splice
                                                         _e1143811532_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28364_
                                                            (values-count
                                                             _g28363_)))
                                                       (if (not (fx= _g28364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28364_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1143911536_
                                                            (values-ref
                                                             _g28363_
                                                             0))
                                                           (_tl1144111539_
                                                            (values-ref
                                                             _g28363_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1144111539_)
                                                           (letrec ((_loop1144211542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1144011546_ _e1144611549_)
                               (if (gx#stx-pair? _hd1144011546_)
                                   (let ((_e1144311552_
                                          (gx#syntax-e _hd1144011546_)))
                                     (let ((_lp-hd1144411556_
                                            (##car _e1144311552_))
                                           (_lp-tl1144511559_
                                            (##cdr _e1144311552_)))
                                       (_loop1144211542_
                                        _lp-tl1144511559_
                                        (cons _lp-hd1144411556_
                                              _e1144611549_))))
                                   (let ((_e1144711562_
                                          (reverse _e1144611549_)))
                                     ((lambda (_L11566_)
                                        (let ((_g1158011588_
                                               (lambda (_g1158111584_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1158111584_))))
                                          (let ((_g1157911607_
                                                 (lambda (_g1158111592_)
                                                   ((lambda (_L11595_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'list->vector)
                                                              (cons _L11595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1158111592_))))
                                            (_g1157911607_
                                             (_generate11325_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1161011613_
                                                                _g1161111616_)
                                                         (cons _g1161011613_
                                                               _g1161111616_))
                                                       '()
                                                       _L11566_))
                                              _d11389_)))))
                                      _e1144711562_))))))
                     (_loop1144211542_ _target1143911536_ '()))
                   (_g1139611525_ _g1139911529_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1139611525_ _g1139911529_))
                                             (_g1139611525_ _g1139911529_)))
                                       (_g1139611525_ _g1139911529_)))))
                            (let ((_g1139411713_
                                   (lambda (_g1139911623_)
                                     (if (gx#stx-pair? _g1139911623_)
                                         (let ((_e1143411626_
                                                (gx#syntax-e _g1139911623_)))
                                           (let ((_hd1143511630_
                                                  (##car _e1143411626_))
                                                 (_tl1143611633_
                                                  (##cdr _e1143411626_)))
                                             ((lambda (_L11636_ _L11638_)
                                                (let ((_g1164911664_
                                                       (lambda (_g1165011660_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1165011660_))))
                                                  (let ((_g1164811709_
                                                         (lambda (_g1165011668_)
                                                           (if (gx#stx-pair?
                                                                _g1165011668_)
                                                               (let ((_e1165311671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1165011668_)))
                         (let ((_hd1165411675_ (##car _e1165311671_))
                               (_tl1165511678_ (##cdr _e1165311671_)))
                           (if (gx#stx-pair? _tl1165511678_)
                               (let ((_e1165611681_
                                      (gx#syntax-e _tl1165511678_)))
                                 (let ((_hd1165711685_ (##car _e1165611681_))
                                       (_tl1165811688_ (##cdr _e1165611681_)))
                                   (if (gx#stx-null? _tl1165811688_)
                                       ((lambda (_L11691_ _L11693_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'cons)
                                                  (cons _L11693_
                                                        (cons _L11691_ '())))))
                                        _hd1165711685_
                                        _hd1165411675_)
                                       (_g1164911664_ _g1165011668_))))
                               (_g1164911664_ _g1165011668_))))
                       (_g1164911664_ _g1165011668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1164811709_
                                                     (list (_generate11325_
                                                            _L11638_
                                                            _d11389_)
                                                           (_generate11325_
                                                            _L11636_
                                                            _d11389_))))))
                                              _tl1143611633_
                                              _hd1143511630_)))
                                         (_g1139511619_ _g1139911623_)))))
                              (let ((_g1139311798_
                                     (lambda (_g1139911717_)
                                       (if (gx#stx-pair? _g1139911717_)
                                           (let ((_e1142311720_
                                                  (gx#syntax-e _g1139911717_)))
                                             (let ((_hd1142411724_
                                                    (##car _e1142311720_))
                                                   (_tl1142511727_
                                                    (##cdr _e1142311720_)))
                                               (if (gx#stx-pair?
                                                    _hd1142411724_)
                                                   (let ((_e1142611730_
                                                          (gx#syntax-e
                                                           _hd1142411724_)))
                                                     (let ((_hd1142711734_
                                                            (##car _e1142611730_))
                                                           (_tl1142811737_
                                                            (##cdr _e1142611730_)))
                                                       (if (gx#identifier?
                                                            _hd1142711734_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g28365_|
                                                                _hd1142711734_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1142811737_)
                           (let ((_e1142911740_ (gx#syntax-e _tl1142811737_)))
                             (let ((_hd1143011744_ (##car _e1142911740_))
                                   (_tl1143111747_ (##cdr _e1142911740_)))
                               (if (gx#stx-null? _tl1143111747_)
                                   ((lambda (_L11750_ _L11752_)
                                      (if (fxzero? _d11389_)
                                          (let ((_g1176711775_
                                                 (lambda (_g1176811771_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1176811771_))))
                                            (let ((_g1176611794_
                                                   (lambda (_g1176811779_)
                                                     ((lambda (_L11782_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'foldr)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _L11782_ (cons _L11752_ '()))))))
              _g1176811779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1176611794_
                                               (_generate11325_
                                                _L11750_
                                                _d11389_))))
                                          (_g1139411713_ _g1139911717_)))
                                    _tl1142511727_
                                    _hd1143011744_)
                                   (_g1139411713_ _g1139911717_))))
                           (_g1139411713_ _g1139911717_))
                       (_g1139411713_ _g1139911717_))
                   (_g1139411713_ _g1139911717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1139411713_
                                                    _g1139911717_))))
                                           (_g1139411713_ _g1139911717_)))))
                                (let ((_g1139211869_
                                       (lambda (_g1139911802_)
                                         (if (gx#stx-pair? _g1139911802_)
                                             (let ((_e1141511805_
                                                    (gx#syntax-e
                                                     _g1139911802_)))
                                               (let ((_hd1141611809_
                                                      (##car _e1141511805_))
                                                     (_tl1141711812_
                                                      (##cdr _e1141511805_)))
                                                 (if (gx#identifier?
                                                      _hd1141611809_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g28366_|
                                                          _hd1141611809_)
                                                         (if (gx#stx-pair?
                                                              _tl1141711812_)
                                                             (let ((_e1141811815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1141711812_)))
                       (let ((_hd1141911819_ (##car _e1141811815_))
                             (_tl1142011822_ (##cdr _e1141811815_)))
                         (if (gx#stx-null? _tl1142011822_)
                             ((lambda (_L11825_)
                                (if (fxzero? _d11389_)
                                    (cons (gx#datum->syntax '#f 'foldr)
                                          (cons (gx#datum->syntax '#f 'cons)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons '() '()))
                                                      (cons _L11825_ '()))))
                                    (let ((_g1183811846_
                                           (lambda (_g1183911842_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1183911842_))))
                                      (let ((_g1183711865_
                                             (lambda (_g1183911850_)
                                               ((lambda (_L11853_)
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
                        (cons _L11853_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1183911850_))))
                                        (_g1183711865_
                                         (_generate11325_
                                          _L11825_
                                          (fx1- _d11389_)))))))
                              _hd1141911819_)
                             (_g1139311798_ _g1139911802_))))
                     (_g1139311798_ _g1139911802_))
                 (_g1139311798_ _g1139911802_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1139311798_
                                                      _g1139911802_))))
                                             (_g1139311798_ _g1139911802_)))))
                                  (let ((_g1139111940_
                                         (lambda (_g1139911873_)
                                           (if (gx#stx-pair? _g1139911873_)
                                               (let ((_e1140811876_
                                                      (gx#syntax-e
                                                       _g1139911873_)))
                                                 (let ((_hd1140911880_
                                                        (##car _e1140811876_))
                                                       (_tl1141011883_
                                                        (##cdr _e1140811876_)))
                                                   (if (gx#identifier?
                                                        _hd1140911880_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:2>[1]#_g28367_|
                                                            _hd1140911880_)
                                                           (if (gx#stx-pair?
                                                                _tl1141011883_)
                                                               (let ((_e1141111886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1141011883_)))
                         (let ((_hd1141211890_ (##car _e1141111886_))
                               (_tl1141311893_ (##cdr _e1141111886_)))
                           (if (gx#stx-null? _tl1141311893_)
                               ((lambda (_L11896_)
                                  (if (fxzero? _d11389_)
                                      _L11896_
                                      (let ((_g1190911917_
                                             (lambda (_g1191011913_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1191011913_))))
                                        (let ((_g1190811936_
                                               (lambda (_g1191011921_)
                                                 ((lambda (_L11924_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons (gx#datum->syntax '#f 'unquote) '()))
                          (cons _L11924_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1191011921_))))
                                          (_g1190811936_
                                           (_generate11325_
                                            _L11896_
                                            (fx1- _d11389_)))))))
                                _hd1141211890_)
                               (_g1139211869_ _g1139911873_))))
                       (_g1139211869_ _g1139911873_))
                   (_g1139211869_ _g1139911873_))
               (_g1139211869_ _g1139911873_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1139211869_
                                                _g1139911873_)))))
                                    (let ((_g1139012011_
                                           (lambda (_g1139911944_)
                                             (if (gx#stx-pair? _g1139911944_)
                                                 (let ((_e1140111947_
                                                        (gx#syntax-e
                                                         _g1139911944_)))
                                                   (let ((_hd1140211951_
                                                          (##car _e1140111947_))
                                                         (_tl1140311954_
                                                          (##cdr _e1140111947_)))
                                                     (if (gx#identifier?
                                                          _hd1140211951_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<sugar>::<sugar:2>[1]#_g28368_|
                                                              _hd1140211951_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1140311954_)
                         (let ((_e1140411957_ (gx#syntax-e _tl1140311954_)))
                           (let ((_hd1140511961_ (##car _e1140411957_))
                                 (_tl1140611964_ (##cdr _e1140411957_)))
                             (if (gx#stx-null? _tl1140611964_)
                                 ((lambda (_L11967_)
                                    (let ((_g1198011988_
                                           (lambda (_g1198111984_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1198111984_))))
                                      (let ((_g1197912007_
                                             (lambda (_g1198111992_)
                                               ((lambda (_L11995_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'quasiquote) '()))
                        (cons _L11995_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1198111992_))))
                                        (_g1197912007_
                                         (_generate11325_
                                          _L11967_
                                          (fx1+ _d11389_))))))
                                  _hd1140511961_)
                                 (_g1139111940_ _g1139911944_))))
                         (_g1139111940_ _g1139911944_))
                     (_g1139111940_ _g1139911944_))
                 (_g1139111940_ _g1139911944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1139111940_
                                                  _g1139911944_)))))
                                      (_g1139012011_ _e11387_)))))))))))))
          (let ((_g1132711341_
                 (lambda (_g1132811337_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1132811337_))))
            (let ((_g1132611383_
                   (lambda (_g1132811345_)
                     (if (gx#stx-pair? _g1132811345_)
                         (let ((_e1133011348_ (gx#syntax-e _g1132811345_)))
                           (let ((_hd1133111352_ (##car _e1133011348_))
                                 (_tl1133211355_ (##cdr _e1133011348_)))
                             (if (gx#stx-pair? _tl1133211355_)
                                 (let ((_e1133311358_
                                        (gx#syntax-e _tl1133211355_)))
                                   (let ((_hd1133411362_ (##car _e1133311358_))
                                         (_tl1133511365_
                                          (##cdr _e1133311358_)))
                                     (if (gx#stx-null? _tl1133511365_)
                                         ((lambda (_L11368_)
                                            (if (_simple-quote?11323_ _L11368_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L11368_ '()))
                                                (_generate11325_ _L11368_ '0)))
                                          _hd1133411362_)
                                         (_g1132711341_ _g1132811345_))))
                                 (_g1132711341_ _g1132811345_))))
                         (_g1132711341_ _g1132811345_)))))
              (_g1132611383_ _stx11320_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#delay|
      (lambda (_$stx12255_)
        (let ((_g1226012281_
               (lambda (_g1226112277_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1226112277_))))
          (let ((_g1225912322_
                 (lambda (_g1226112285_)
                   (if (gx#stx-pair? _g1226112285_)
                       (let ((_e1227012288_ (gx#syntax-e _g1226112285_)))
                         (let ((_hd1227112292_ (##car _e1227012288_))
                               (_tl1227212295_ (##cdr _e1227012288_)))
                           (if (gx#stx-pair? _tl1227212295_)
                               (let ((_e1227312298_
                                      (gx#syntax-e _tl1227212295_)))
                                 (let ((_hd1227412302_ (##car _e1227312298_))
                                       (_tl1227512305_ (##cdr _e1227312298_)))
                                   (if (gx#stx-null? _tl1227512305_)
                                       ((lambda (_L12308_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-promise)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda%)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12308_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _hd1227412302_)
                                       (_g1226012281_ _g1226112285_))))
                               (_g1226012281_ _g1226112285_))))
                       (_g1226012281_ _g1226112285_)))))
            (let ((_g1225812362_
                   (lambda (_g1226112326_)
                     (if (gx#stx-pair? _g1226112326_)
                         (let ((_e1226312329_ (gx#syntax-e _g1226112326_)))
                           (let ((_hd1226412333_ (##car _e1226312329_))
                                 (_tl1226512336_ (##cdr _e1226312329_)))
                             (if (gx#stx-pair? _tl1226512336_)
                                 (let ((_e1226612339_
                                        (gx#syntax-e _tl1226512336_)))
                                   (let ((_hd1226712343_ (##car _e1226612339_))
                                         (_tl1226812346_
                                          (##cdr _e1226612339_)))
                                     (if (gx#stx-null? _tl1226812346_)
                                         ((lambda (_L12349_)
                                            (if (gx#stx-datum? _L12349_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L12349_ '()))
                                                (_g1225912322_ _g1226112326_)))
                                          _hd1226712343_)
                                         (_g1225912322_ _g1226112326_))))
                                 (_g1225912322_ _g1226112326_))))
                         (_g1225912322_ _g1226112326_)))))
              (_g1225812362_ _$stx12255_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#cut|
      (lambda (_stx12366_)
        (let ((_generate12369_
               (lambda (_rest12488_)
                 ((letrec ((_lp12491_
                            (lambda (_rest12494_ _hd12496_ _body12497_)
                              (let ((_g1250012512_
                                     (lambda (_g1250112508_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1250112508_))))
                                (let ((_g1249912523_
                                       (lambda (_g1250112516_)
                                         ((lambda ()
                                            (values (reverse _hd12496_)
                                                    (reverse _body12497_)
                                                    '#f))))))
                                  (let ((_g1249812609_
                                         (lambda (_g1250112527_)
                                           (if (gx#stx-pair? _g1250112527_)
                                               (let ((_e1250412530_
                                                      (gx#syntax-e
                                                       _g1250112527_)))
                                                 (let ((_hd1250512534_
                                                        (##car _e1250412530_))
                                                       (_tl1250612537_
                                                        (##cdr _e1250412530_)))
                                                   ((lambda (_L12540_ _L12542_)
                                                      (let ((_g1255912566_
                                                             (lambda (_g1256012562_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1256012562_))))
                                                        (let ((_g1255812577_
                                                               (lambda (_g1256012570_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (_lp12491_
                             _L12540_
                             _hd12496_
                             (cons _L12542_ _body12497_)))))))
                  (let ((_g1255712591_
                         (lambda (_g1256012581_)
                           (if (gx#identifier? _g1256012581_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<sugar>::<sugar:2>[1]#_g28371_|
                                    _g1256012581_)
                                   ((lambda ()
                                      (if (gx#stx-null? _L12540_)
                                          (let ((_tail12588_ (gx#genident)))
                                            (values (foldl cons
                                                           _tail12588_
                                                           _hd12496_)
                                                    (foldl cons
                                                           (list _tail12588_)
                                                           _body12497_)
                                                    '#t))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx12366_
                                           _L12542_))))
                                   (_g1255812577_ _g1256012581_))
                               (_g1255812577_ _g1256012581_)))))
                    (let ((_g1255612605_
                           (lambda (_g1256012595_)
                             (if (gx#identifier? _g1256012595_)
                                 (if (gx#free-identifier=?
                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g28372_|
                                      _g1256012595_)
                                     ((lambda ()
                                        (let ((_arg12602_ (gx#genident)))
                                          (_lp12491_
                                           _L12540_
                                           (cons _arg12602_ _hd12496_)
                                           (cons _arg12602_ _body12497_)))))
                                     (_g1255712591_ _g1256012595_))
                                 (_g1255712591_ _g1256012595_)))))
                      (_g1255612605_ _L12542_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1250612537_
                                                    _hd1250512534_)))
                                               (_g1249912523_
                                                _g1250112527_)))))
                                    (_g1249812609_ _rest12494_)))))))
                    _lp12491_)
                  _rest12488_
                  '()
                  '()))))
          (let ((_g1237212383_
                 (lambda (_g1237312379_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1237312379_))))
            (let ((_g1237112484_
                   (lambda (_g1237312387_)
                     (if (gx#stx-pair? _g1237312387_)
                         (let ((_e1237512390_ (gx#syntax-e _g1237312387_)))
                           (let ((_hd1237612394_ (##car _e1237512390_))
                                 (_tl1237712397_ (##cdr _e1237512390_)))
                             ((lambda (_L12400_)
                                (if (if (gx#stx-list? _L12400_)
                                        (not (gx#stx-null? _L12400_))
                                        '#f)
                                    (let ((_g28369_
                                           (_generate12369_ _L12400_)))
                                      (begin
                                        (let ((_g28370_
                                               (values-count _g28369_)))
                                          (if (not (fx= _g28370_ 3))
                                              (error "Context expects 3 values"
                                                     _g28370_)))
                                        (let ((_hd12413_
                                               (values-ref _g28369_ 0))
                                              (_body12415_
                                               (values-ref _g28369_ 1))
                                              (_tail?12416_
                                               (values-ref _g28369_ 2)))
                                          (let ((_g1241812426_
                                                 (lambda (_g1241912422_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1241912422_))))
                                            (let ((_g1241712480_
                                                   (lambda (_g1241912430_)
                                                     ((lambda (_L12433_)
                                                        (let ()
                                                          (let ((_g1244612454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1244712450_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1244712450_))))
                    (let ((_g1244512476_
                           (lambda (_g1244712458_)
                             ((lambda (_L12461_)
                                (let ()
                                  (let ()
                                    (if _tail?12416_
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12433_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'apply)
                        _L12461_)
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12433_
                                                    (cons _L12461_ '())))))))
                              _g1244712458_))))
                      (_g1244512476_ _body12415_)))))
              _g1241912430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1241712480_ _hd12413_))))))
                                    (_g1237212383_ _g1237312387_)))
                              _tl1237712397_)))
                         (_g1237212383_ _g1237312387_)))))
              (_g1237112484_ _stx12366_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<>|
      (lambda (_$stx12614_)
        (let ((_g1261712624_
               (lambda (_g1261812620_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1261812620_))))
          (_g1261712624_ _$stx12614_))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<...>|
      (lambda (_$stx12628_)
        (let ((_g1263112638_
               (lambda (_g1263212634_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1263212634_))))
          (_g1263112638_ _$stx12628_))))))
