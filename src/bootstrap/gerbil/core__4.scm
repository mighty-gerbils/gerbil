(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30244_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30245_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30246_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30263_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30272_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30273_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30280_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30281_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30284_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30285_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30286_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30287_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30290_|
    (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30291_|
    (gx#core-quote-syntax '<>))
  (begin
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#lambda|
      (lambda (_stx4867_)
        (let ((_simple-lambda?4870_
               (lambda (_hd8020_) (gx#stx-andmap gx#identifier? _hd8020_))))
          (let ((_opt-lambda?4872_
                 (lambda (_hd7872_)
                   ((letrec ((_lp7875_
                              (lambda (_rest7878_ _opt?7880_)
                                (let ((_g78837895_
                                       (lambda (_g78847891_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g78847891_))))
                                  (let ((_g78827910_
                                         (lambda (_g78847899_)
                                           ((lambda ()
                                              (if _opt?7880_
                                                  (let ((_$e7906_
                                                         (gx#stx-null?
                                                          _rest7878_)))
                                                    (if _$e7906_
                                                        _$e7906_
                                                        (gx#identifier?
                                                         _rest7878_)))
                                                  '#f))))))
                                    (let ((_g78818016_
                                           (lambda (_g78847914_)
                                             (if (gx#stx-pair? _g78847914_)
                                                 (let ((_e78877917_
                                                        (gx#syntax-e
                                                         _g78847914_)))
                                                   (let ((_hd78887921_
                                                          (##car _e78877917_))
                                                         (_tl78897924_
                                                          (##cdr _e78877917_)))
                                                     ((lambda (_L7927_ _L7929_)
                                                        (let ((_g79457959_
                                                               (lambda (_g79467955_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g79467955_))))
                  (let ((_g79447970_
                         (lambda (_g79467963_)
                           ((lambda ()
                              (if (gx#identifier? _L7929_)
                                  (if (not _opt?7880_)
                                      (_lp7875_ _L7927_ '#f)
                                      '#f)
                                  '#f))))))
                    (let ((_g79438012_
                           (lambda (_g79467974_)
                             (if (gx#stx-pair? _g79467974_)
                                 (let ((_e79487977_ (gx#syntax-e _g79467974_)))
                                   (let ((_hd79497981_ (##car _e79487977_))
                                         (_tl79507984_ (##cdr _e79487977_)))
                                     (if (gx#stx-pair? _tl79507984_)
                                         (let ((_e79517987_
                                                (gx#syntax-e _tl79507984_)))
                                           (let ((_hd79527991_
                                                  (##car _e79517987_))
                                                 (_tl79537994_
                                                  (##cdr _e79517987_)))
                                             (if (gx#stx-null? _tl79537994_)
                                                 ((lambda (_L7997_)
                                                    (if (gx#identifier?
                                                         _L7997_)
                                                        (_lp7875_ _L7927_ '#t)
                                                        (_g79447970_
                                                         _g79467974_)))
                                                  _hd79497981_)
                                                 (_g79447970_ _g79467974_))))
                                         (_g79447970_ _g79467974_))))
                                 (_g79447970_ _g79467974_)))))
                      (_g79438012_ _L7929_)))))
              _tl78897924_
              _hd78887921_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g78827910_ _g78847914_)))))
                                      (_g78818016_ _rest7878_)))))))
                      _lp7875_)
                    _hd7872_
                    '#f))))
            (let ((_kw-lambda?4874_
                   (lambda (_hd7398_)
                     ((letrec ((_lp7401_
                                (lambda (_rest7404_ _opt?7406_ _key?7407_)
                                  (let ((_g74127441_
                                         (lambda (_g74137437_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g74137437_))))
                                    (let ((_g74117456_
                                           (lambda (_g74137445_)
                                             ((lambda ()
                                                (if _key?7407_
                                                    (let ((_$e7452_
                                                           (gx#stx-null?
                                                            _rest7404_)))
                                                      (if _$e7452_
                                                          _$e7452_
                                                          (gx#identifier?
                                                           _rest7404_)))
                                                    '#f))))))
                                      (let ((_g74107562_
                                             (lambda (_g74137460_)
                                               (if (gx#stx-pair? _g74137460_)
                                                   (let ((_e74337463_
                                                          (gx#syntax-e
                                                           _g74137460_)))
                                                     (let ((_hd74347467_
                                                            (##car _e74337463_))
                                                           (_tl74357470_
                                                            (##cdr _e74337463_)))
                                                       ((lambda (_L7473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7475_)
                  (let ((_g74917505_
                         (lambda (_g74927501_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g74927501_))))
                    (let ((_g74907516_
                           (lambda (_g74927509_)
                             ((lambda ()
                                (if (gx#identifier? _L7475_)
                                    (if (not _opt?7406_)
                                        (_lp7401_ _L7473_ '#f _key?7407_)
                                        '#f)
                                    '#f))))))
                      (let ((_g74897558_
                             (lambda (_g74927520_)
                               (if (gx#stx-pair? _g74927520_)
                                   (let ((_e74947523_
                                          (gx#syntax-e _g74927520_)))
                                     (let ((_hd74957527_ (##car _e74947523_))
                                           (_tl74967530_ (##cdr _e74947523_)))
                                       (if (gx#stx-pair? _tl74967530_)
                                           (let ((_e74977533_
                                                  (gx#syntax-e _tl74967530_)))
                                             (let ((_hd74987537_
                                                    (##car _e74977533_))
                                                   (_tl74997540_
                                                    (##cdr _e74977533_)))
                                               (if (gx#stx-null? _tl74997540_)
                                                   ((lambda (_L7543_)
                                                      (if (gx#identifier?
                                                           _L7543_)
                                                          (_lp7401_
                                                           _L7473_
                                                           '#t
                                                           _key?7407_)
                                                          '#f))
                                                    _hd74957527_)
                                                   (_g74907516_ _g74927520_))))
                                           (_g74907516_ _g74927520_))))
                                   (_g74907516_ _g74927520_)))))
                        (_g74897558_ _L7475_)))))
                _tl74357470_
                _hd74347467_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g74117456_
                                                    _g74137460_)))))
                                        (let ((_g74097604_
                                               (lambda (_g74137566_)
                                                 (if (gx#stx-pair? _g74137566_)
                                                     (let ((_e74257569_
                                                            (gx#syntax-e
                                                             _g74137566_)))
                                                       (let ((_hd74267573_
                                                              (##car _e74257569_))
                                                             (_tl74277576_
                                                              (##cdr _e74257569_)))
                                                         (if (gx#stx-datum?
                                                              _hd74267573_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd74267573_)
                                 '#!key)
                         (if (gx#stx-pair? _tl74277576_)
                             (let ((_e74287579_ (gx#syntax-e _tl74277576_)))
                               (let ((_hd74297583_ (##car _e74287579_))
                                     (_tl74307586_ (##cdr _e74287579_)))
                                 ((lambda (_L7589_ _L7591_)
                                    (if (gx#identifier? _L7591_)
                                        (_lp7401_ _L7589_ _opt?7406_ '#t)
                                        '#f))
                                  _tl74307586_
                                  _hd74297583_)))
                             (_g74107562_ _g74137566_))
                         (_g74107562_ _g74137566_))
                     (_g74107562_ _g74137566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g74107562_
                                                      _g74137566_)))))
                                          (let ((_g74087720_
                                                 (lambda (_g74137608_)
                                                   (if (gx#stx-pair?
                                                        _g74137608_)
                                                       (let ((_e74177611_
                                                              (gx#syntax-e
                                                               _g74137608_)))
                                                         (let ((_hd74187615_
                                                                (##car _e74177611_))
                                                               (_tl74197618_
                                                                (##cdr _e74177611_)))
                                                           (if (gx#stx-pair?
                                                                _tl74197618_)
                                                               (let ((_e74207621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl74197618_)))
                         (let ((_hd74217625_ (##car _e74207621_))
                               (_tl74227628_ (##cdr _e74207621_)))
                           ((lambda (_L7631_ _L7633_ _L7634_)
                              (if (gx#stx-keyword? _L7634_)
                                  (let ((_g76497663_
                                         (lambda (_g76507659_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g76507659_))))
                                    (let ((_g76487674_
                                           (lambda (_g76507667_)
                                             ((lambda ()
                                                (if (gx#identifier? _L7633_)
                                                    (_lp7401_
                                                     _L7631_
                                                     _opt?7406_
                                                     '#t)
                                                    '#f))))))
                                      (let ((_g76477716_
                                             (lambda (_g76507678_)
                                               (if (gx#stx-pair? _g76507678_)
                                                   (let ((_e76527681_
                                                          (gx#syntax-e
                                                           _g76507678_)))
                                                     (let ((_hd76537685_
                                                            (##car _e76527681_))
                                                           (_tl76547688_
                                                            (##cdr _e76527681_)))
                                                       (if (gx#stx-pair?
                                                            _tl76547688_)
                                                           (let ((_e76557691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl76547688_)))
                     (let ((_hd76567695_ (##car _e76557691_))
                           (_tl76577698_ (##cdr _e76557691_)))
                       (if (gx#stx-null? _tl76577698_)
                           ((lambda (_L7701_)
                              (if (gx#identifier? _L7701_)
                                  (_lp7401_ _L7631_ _opt?7406_ '#t)
                                  '#f))
                            _hd76537685_)
                           (_g76487674_ _g76507678_))))
                   (_g76487674_ _g76507678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76487674_
                                                    _g76507678_)))))
                                        (_g76477716_ _L7633_))))
                                  (_g74097604_ _g74137608_)))
                            _tl74227628_
                            _hd74217625_
                            _hd74187615_)))
                       (_g74097604_ _g74137608_))))
               (_g74097604_ _g74137608_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g74087720_ _rest7404_)))))))))
                        _lp7401_)
                      _hd7398_
                      '#f
                      '#f))))
              (let ((_generate-bind4876_
                     (lambda (_e7134_)
                       (if (gx#underscore? _e7134_)
                           (gx#genident _e7134_)
                           _e7134_))))
                (let ((_check-duplicate-bindings4877_
                       (lambda (_hd6831_)
                         (let ((_cons-id6834_
                                (lambda (_id7130_ _ids7132_)
                                  (if (gx#underscore? _id7130_)
                                      _ids7132_
                                      (cons _id7130_ _ids7132_)))))
                           ((letrec ((_lp6837_
                                      (lambda (_rest6840_ _ids6842_)
                                        (let ((_g68456857_
                                               (lambda (_g68466853_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g68466853_))))
                                          (let ((_g68446868_
                                                 (lambda (_g68466861_)
                                                   ((lambda ()
                                                      (gx#check-duplicate-identifiers
                                                       (if (gx#stx-null?
                                                            _rest6840_)
                                                           _ids6842_
                                                           (_cons-id6834_
                                                            _rest6840_
                                                            _ids6842_))
                                                       _stx4867_))))))
                                            (let ((_g68437126_
                                                   (lambda (_g68466872_)
                                                     (if (gx#stx-pair?
                                                          _g68466872_)
                                                         (let ((_e68496875_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g68466872_)))
                   (let ((_hd68506879_ (##car _e68496875_))
                         (_tl68516882_ (##cdr _e68496875_)))
                     ((lambda (_L6885_ _L6887_)
                        (if (gx#identifier? _L6887_)
                            (_lp6837_
                             _L6885_
                             (_cons-id6834_ _L6887_ _ids6842_))
                            (if (gx#stx-pair? _L6887_)
                                (let ((_g69036917_
                                       (lambda (_g69046913_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g69046913_))))
                                  (let ((_g69026958_
                                         (lambda (_g69046921_)
                                           (if (gx#stx-pair? _g69046921_)
                                               (let ((_e69066924_
                                                      (gx#syntax-e
                                                       _g69046921_)))
                                                 (let ((_hd69076928_
                                                        (##car _e69066924_))
                                                       (_tl69086931_
                                                        (##cdr _e69066924_)))
                                                   (if (gx#stx-pair?
                                                        _tl69086931_)
                                                       (let ((_e69096934_
                                                              (gx#syntax-e
                                                               _tl69086931_)))
                                                         (let ((_hd69106938_
                                                                (##car _e69096934_))
                                                               (_tl69116941_
                                                                (##cdr _e69096934_)))
                                                           (if (gx#stx-null?
                                                                _tl69116941_)
                                                               ((lambda (_L6944_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_lp6837_ _L6885_ (_cons-id6834_ _L6944_ _ids6842_)))
                        _hd69076928_)
                       (_g69036917_ _g69046921_))))
               (_g69036917_ _g69046921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g69036917_ _g69046921_)))))
                                    (_g69026958_ _L6887_)))
                                (if (gx#stx-keyword? _L6887_)
                                    (let ((_g69626974_
                                           (lambda (_g69636970_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69636970_))))
                                      (let ((_g69617076_
                                             (lambda (_g69636978_)
                                               (if (gx#stx-pair? _g69636978_)
                                                   (let ((_e69666981_
                                                          (gx#syntax-e
                                                           _g69636978_)))
                                                     (let ((_hd69676985_
                                                            (##car _e69666981_))
                                                           (_tl69686988_
                                                            (##cdr _e69666981_)))
                                                       ((lambda (_L6991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6993_)
                  (let ((_g70057019_
                         (lambda (_g70067015_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g70067015_))))
                    (let ((_g70047030_
                           (lambda (_g70067023_)
                             ((lambda ()
                                (_lp6837_
                                 _L6991_
                                 (_cons-id6834_ _L6993_ _ids6842_)))))))
                      (let ((_g70037072_
                             (lambda (_g70067034_)
                               (if (gx#stx-pair? _g70067034_)
                                   (let ((_e70087037_
                                          (gx#syntax-e _g70067034_)))
                                     (let ((_hd70097041_ (##car _e70087037_))
                                           (_tl70107044_ (##cdr _e70087037_)))
                                       (if (gx#stx-pair? _tl70107044_)
                                           (let ((_e70117047_
                                                  (gx#syntax-e _tl70107044_)))
                                             (let ((_hd70127051_
                                                    (##car _e70117047_))
                                                   (_tl70137054_
                                                    (##cdr _e70117047_)))
                                               (if (gx#stx-null? _tl70137054_)
                                                   ((lambda (_L7057_)
                                                      (_lp6837_
                                                       _L6991_
                                                       (_cons-id6834_
                                                        _L7057_
                                                        _ids6842_)))
                                                    _hd70097041_)
                                                   (_g70047030_ _g70067034_))))
                                           (_g70047030_ _g70067034_))))
                                   (_g70047030_ _g70067034_)))))
                        (_g70037072_ _L6993_)))))
                _tl69686988_
                _hd69676985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g69626974_
                                                    _g69636978_)))))
                                        (_g69617076_ _L6885_)))
                                    (if (eq? (gx#stx-e _L6887_) '#!key)
                                        (let ((_g70807092_
                                               (lambda (_g70817088_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g70817088_))))
                                          (let ((_g70797122_
                                                 (lambda (_g70817096_)
                                                   (if (gx#stx-pair?
                                                        _g70817096_)
                                                       (let ((_e70847099_
                                                              (gx#syntax-e
                                                               _g70817096_)))
                                                         (let ((_hd70857103_
                                                                (##car _e70847099_))
                                                               (_tl70867106_
                                                                (##cdr _e70847099_)))
                                                           ((lambda (_L7109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L7111_)
                      (_lp6837_ _L7109_ (_cons-id6834_ _L7111_ _ids6842_)))
                    _tl70867106_
                    _hd70857103_)))
               (_g70807092_ _g70817096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g70797122_ _L6885_)))
                                        (error '"BUG: check-duplicate-bindings"
                                               _stx4867_
                                               _rest6840_))))))
                      _tl68516882_
                      _hd68506879_)))
                 (_g68446868_ _g68466872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g68437126_ _rest6840_)))))))
                              _lp6837_)
                            _hd6831_
                            '())))))
                  (let ((_generate-opt-primary4878_
                         (lambda (_pre6623_ _opt6625_ _tail6626_ _body6627_)
                           (let ((_g66296670_
                                  (lambda (_g66306666_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g66306666_))))
                             (let ((_g66286827_
                                    (lambda (_g66306674_)
                                      (if (gx#stx-pair? _g66306674_)
                                          (let ((_e66356677_
                                                 (gx#syntax-e _g66306674_)))
                                            (let ((_hd66366681_
                                                   (##car _e66356677_))
                                                  (_tl66376684_
                                                   (##cdr _e66356677_)))
                                              (if (gx#stx-pair/null?
                                                   _hd66366681_)
                                                  (if (fx>= (gx#stx-length
                                                             _hd66366681_)
                                                            '0)
                                                      (let ((_g30232_
                                                             (gx#syntax-split-splice
                                                              _hd66366681_
                                                              '0)))
                                                        (begin
                                                          (let ((_g30233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g30232_)))
                    (if (not (fx= _g30233_ 2))
                        (error "Context expects 2 values" _g30233_)))
                  (let ((_target66386687_ (values-ref _g30232_ 0))
                        (_tl66406690_ (values-ref _g30232_ 1)))
                    (if (gx#stx-null? _tl66406690_)
                        (letrec ((_loop66416693_
                                  (lambda (_hd66396697_ _pre66456700_)
                                    (if (gx#stx-pair? _hd66396697_)
                                        (let ((_e66426703_
                                               (gx#syntax-e _hd66396697_)))
                                          (let ((_lp-hd66436707_
                                                 (##car _e66426703_))
                                                (_lp-tl66446710_
                                                 (##cdr _e66426703_)))
                                            (_loop66416693_
                                             _lp-tl66446710_
                                             (cons _lp-hd66436707_
                                                   _pre66456700_))))
                                        (let ((_pre66466713_
                                               (reverse _pre66456700_)))
                                          (if (gx#stx-pair? _tl66376684_)
                                              (let ((_e66476717_
                                                     (gx#syntax-e
                                                      _tl66376684_)))
                                                (let ((_hd66486721_
                                                       (##car _e66476717_))
                                                      (_tl66496724_
                                                       (##cdr _e66476717_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd66486721_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd66486721_)
                        '0)
                  (let ((_g30234_ (gx#syntax-split-splice _hd66486721_ '0)))
                    (begin
                      (let ((_g30235_ (values-count _g30234_)))
                        (if (not (fx= _g30235_ 2))
                            (error "Context expects 2 values" _g30235_)))
                      (let ((_target66506727_ (values-ref _g30234_ 0))
                            (_tl66526730_ (values-ref _g30234_ 1)))
                        (if (gx#stx-null? _tl66526730_)
                            (letrec ((_loop66536733_
                                      (lambda (_hd66516737_ _opt66576740_)
                                        (if (gx#stx-pair? _hd66516737_)
                                            (let ((_e66546743_
                                                   (gx#syntax-e _hd66516737_)))
                                              (let ((_lp-hd66556747_
                                                     (##car _e66546743_))
                                                    (_lp-tl66566750_
                                                     (##cdr _e66546743_)))
                                                (_loop66536733_
                                                 _lp-tl66566750_
                                                 (cons _lp-hd66556747_
                                                       _opt66576740_))))
                                            (let ((_opt66586753_
                                                   (reverse _opt66576740_)))
                                              (if (gx#stx-pair? _tl66496724_)
                                                  (let ((_e66596757_
                                                         (gx#syntax-e
                                                          _tl66496724_)))
                                                    (let ((_hd66606761_
                                                           (##car _e66596757_))
                                                          (_tl66616764_
                                                           (##cdr _e66596757_)))
                                                      (if (gx#stx-pair?
                                                           _tl66616764_)
                                                          (let ((_e66626767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl66616764_)))
                    (let ((_hd66636771_ (##car _e66626767_))
                          (_tl66646774_ (##cdr _e66626767_)))
                      (if (gx#stx-null? _tl66646774_)
                          ((lambda (_L6777_ _L6779_ _L6780_ _L6781_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g68106815_
                                                             _g68116818_)
                                                      (cons _g68106815_
                                                            _g68116818_))
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g68126821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g68136824_)
                       (cons _g68126821_ _g68136824_))
                     _L6779_
                     _L6780_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L6781_))
                                           _L6777_))))
                           _hd66636771_
                           _hd66606761_
                           _opt66586753_
                           _pre66466713_)
                          (_g66296670_ _g66306674_))))
                  (_g66296670_ _g66306674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66296670_
                                                   _g66306674_)))))))
                              (_loop66536733_ _target66506727_ '()))
                            (_g66296670_ _g66306674_)))))
                  (_g66296670_ _g66306674_))
              (_g66296670_ _g66306674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66296670_ _g66306674_)))))))
                          (_loop66416693_ _target66386687_ '()))
                        (_g66296670_ _g66306674_)))))
              (_g66296670_ _g66306674_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66296670_ _g66306674_))))
                                          (_g66296670_ _g66306674_)))))
                               (_g66286827_
                                (list _pre6623_
                                      (map car _opt6625_)
                                      _tail6626_
                                      _body6627_)))))))
                    (let ((_generate-opt-clause4881_
                           (lambda (_primary5872_ _pre5874_ _opt5875_)
                             ((letrec ((_recur5877_
                                        (lambda (_opt-rest5880_ _right5882_)
                                          (if (pair? _opt-rest5880_)
                                              (let ((_hd5884_
                                                     (car _opt-rest5880_)))
                                                (let ((_rest5887_
                                                       (cdr _opt-rest5880_)))
                                                  (let ((_g58905898_
                                                         (lambda (_g58915894_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g58915894_))))
                                                    (let ((_g58895987_
                                                           (lambda (_g58915902_)
                                                             ((lambda (_L5905_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g59215929_
                                 (lambda (_g59225925_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g59225925_))))
                            (let ((_g59205983_
                                   (lambda (_g59225933_)
                                     ((lambda (_L5936_)
                                        (let ()
                                          (let ((_g59495957_
                                                 (lambda (_g59505953_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g59505953_))))
                                            (let ((_g59485979_
                                                   (lambda (_g59505961_)
                                                     ((lambda (_L5964_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5905_ '())
                                            (cons _L5936_ '()))
                                      '())
                                (cons _L5964_ '()))))))
              _g59505961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g59485979_
                                               (_recur5877_
                                                _rest5887_
                                                (cons _L5905_
                                                      _right5882_)))))))
                                      _g59225933_))))
                              (_g59205983_ (cdr _hd5884_))))))
                      _g58915902_))))
              (_g58895987_ (car _hd5884_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g59916028_
                                                     (lambda (_g59926024_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g59926024_))))
                                                (let ((_g59906170_
                                                       (lambda (_g59926032_)
                                                         (if (gx#stx-pair?
                                                              _g59926032_)
                                                             (let ((_e59966035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g59926032_)))
                       (let ((_hd59976039_ (##car _e59966035_))
                             (_tl59986042_ (##cdr _e59966035_)))
                         (if (gx#stx-pair/null? _hd59976039_)
                             (if (fx>= (gx#stx-length _hd59976039_) '0)
                                 (let ((_g30228_
                                        (gx#syntax-split-splice
                                         _hd59976039_
                                         '0)))
                                   (begin
                                     (let ((_g30229_ (values-count _g30228_)))
                                       (if (not (fx= _g30229_ 2))
                                           (error "Context expects 2 values"
                                                  _g30229_)))
                                     (let ((_target59996045_
                                            (values-ref _g30228_ 0))
                                           (_tl60016048_
                                            (values-ref _g30228_ 1)))
                                       (if (gx#stx-null? _tl60016048_)
                                           (letrec ((_loop60026051_
                                                     (lambda (_hd60006055_
                                                              _pre60066058_)
                                                       (if (gx#stx-pair?
                                                            _hd60006055_)
                                                           (let ((_e60036061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd60006055_)))
                     (let ((_lp-hd60046065_ (##car _e60036061_))
                           (_lp-tl60056068_ (##cdr _e60036061_)))
                       (_loop60026051_
                        _lp-tl60056068_
                        (cons _lp-hd60046065_ _pre60066058_))))
                   (let ((_pre60076071_ (reverse _pre60066058_)))
                     (if (gx#stx-pair? _tl59986042_)
                         (let ((_e60086075_ (gx#syntax-e _tl59986042_)))
                           (let ((_hd60096079_ (##car _e60086075_))
                                 (_tl60106082_ (##cdr _e60086075_)))
                             (if (gx#stx-pair/null? _hd60096079_)
                                 (if (fx>= (gx#stx-length _hd60096079_) '0)
                                     (let ((_g30230_
                                            (gx#syntax-split-splice
                                             _hd60096079_
                                             '0)))
                                       (begin
                                         (let ((_g30231_
                                                (values-count _g30230_)))
                                           (if (not (fx= _g30231_ 2))
                                               (error "Context expects 2 values"
                                                      _g30231_)))
                                         (let ((_target60116085_
                                                (values-ref _g30230_ 0))
                                               (_tl60136088_
                                                (values-ref _g30230_ 1)))
                                           (if (gx#stx-null? _tl60136088_)
                                               (letrec ((_loop60146091_
                                                         (lambda (_hd60126095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opt60186098_)
                   (if (gx#stx-pair? _hd60126095_)
                       (let ((_e60156101_ (gx#syntax-e _hd60126095_)))
                         (let ((_lp-hd60166105_ (##car _e60156101_))
                               (_lp-tl60176108_ (##cdr _e60156101_)))
                           (_loop60146091_
                            _lp-tl60176108_
                            (cons _lp-hd60166105_ _opt60186098_))))
                       (let ((_opt60196111_ (reverse _opt60186098_)))
                         (if (gx#stx-pair? _tl60106082_)
                             (let ((_e60206115_ (gx#syntax-e _tl60106082_)))
                               (let ((_hd60216119_ (##car _e60206115_))
                                     (_tl60226122_ (##cdr _e60206115_)))
                                 (if (gx#stx-null? _tl60226122_)
                                     ((lambda (_L6125_ _L6127_ _L6128_)
                                        (let ()
                                          (gx#stx-wrap-source
                                           (cons _L6125_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g61536158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g61546161_)
                    (cons _g61536158_ _g61546161_))
                  (begin
                    '#!void
                    (foldr (lambda (_g61556164_ _g61566167_)
                             (cons _g61556164_ _g61566167_))
                           '()
                           _L6127_))
                  _L6128_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _stx4867_))))
                                      _hd60216119_
                                      _opt60196111_
                                      _pre60076071_)
                                     (_g59916028_ _g59926032_))))
                             (_g59916028_ _g59926032_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop60146091_
                                                  _target60116085_
                                                  '()))
                                               (_g59916028_ _g59926032_)))))
                                     (_g59916028_ _g59926032_))
                                 (_g59916028_ _g59926032_))))
                         (_g59916028_ _g59926032_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop60026051_
                                              _target59996045_
                                              '()))
                                           (_g59916028_ _g59926032_)))))
                                 (_g59916028_ _g59926032_))
                             (_g59916028_ _g59926032_))))
                     (_g59916028_ _g59926032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g59906170_
                                                   (list _pre5874_
                                                         (reverse _right5882_)
                                                         _primary5872_))))))))
                                _recur5877_)
                              _opt5875_
                              '()))))
                      (let ((_generate-kw-primary4882_
                             (lambda (_kwvar5519_
                                      _kwargs5521_
                                      _args5522_
                                      _body5523_)
                               (let ((_absent5525_ (gx#genident 'absent)))
                                 (letrec ((_make-body5527_
                                           (lambda (_kwargs5691_ _body5693_)
                                             (if (pair? _kwargs5691_)
                                                 (let ((_next5695_
                                                        (car _kwargs5691_)))
                                                   (let ((_rest5698_
                                                          (cdr _kwargs5691_)))
                                                     (let ((_key5701_
                                                            (car _next5695_)))
                                                       (let ((_var5704_
                                                              (cadr _next5695_)))
                                                         (let ((_default5707_
                                                                (caddr _next5695_)))
                                                           (let ()
                                                             (let ((_g57125747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g57135743_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g57135743_))))
                       (let ((_g57115868_
                              (lambda (_g57135751_)
                                (if (gx#stx-pair? _g57135751_)
                                    (let ((_e57215754_
                                           (gx#syntax-e _g57135751_)))
                                      (let ((_hd57225758_ (##car _e57215754_))
                                            (_tl57235761_ (##cdr _e57215754_)))
                                        (if (gx#stx-pair? _tl57235761_)
                                            (let ((_e57245764_
                                                   (gx#syntax-e _tl57235761_)))
                                              (let ((_hd57255768_
                                                     (##car _e57245764_))
                                                    (_tl57265771_
                                                     (##cdr _e57245764_)))
                                                (if (gx#stx-pair? _tl57265771_)
                                                    (let ((_e57275774_
                                                           (gx#syntax-e
                                                            _tl57265771_)))
                                                      (let ((_hd57285778_
                                                             (##car _e57275774_))
                                                            (_tl57295781_
                                                             (##cdr _e57275774_)))
                                                        (if (gx#stx-pair?
                                                             _tl57295781_)
                                                            (let ((_e57305784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl57295781_)))
                      (let ((_hd57315788_ (##car _e57305784_))
                            (_tl57325791_ (##cdr _e57305784_)))
                        (if (gx#stx-pair? _tl57325791_)
                            (let ((_e57335794_ (gx#syntax-e _tl57325791_)))
                              (let ((_hd57345798_ (##car _e57335794_))
                                    (_tl57355801_ (##cdr _e57335794_)))
                                (if (gx#stx-pair? _tl57355801_)
                                    (let ((_e57365804_
                                           (gx#syntax-e _tl57355801_)))
                                      (let ((_hd57375808_ (##car _e57365804_))
                                            (_tl57385811_ (##cdr _e57365804_)))
                                        (if (gx#stx-pair? _tl57385811_)
                                            (let ((_e57395814_
                                                   (gx#syntax-e _tl57385811_)))
                                              (let ((_hd57405818_
                                                     (##car _e57395814_))
                                                    (_tl57415821_
                                                     (##cdr _e57395814_)))
                                                (if (gx#stx-null? _tl57415821_)
                                                    ((lambda (_L5824_
                                                              _L5826_
                                                              _L5827_
                                                              _L5828_
                                                              _L5829_
                                                              _L5830_
                                                              _L5831_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _L5828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'hash-ref)
                                                     (cons _L5831_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L5830_ '()))
                         (cons _L5824_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'let-values)
                                         (cons (cons (cons (cons _L5829_ '())
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'if)
                               (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons _L5828_ (cons _L5824_ '())))
                                     (cons _L5827_ (cons _L5828_ '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L5826_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd57405818_
                                                     _hd57375808_
                                                     _hd57345798_
                                                     _hd57315788_
                                                     _hd57285778_
                                                     _hd57255768_
                                                     _hd57225758_)
                                                    (_g57125747_
                                                     _g57135751_))))
                                            (_g57125747_ _g57135751_))))
                                    (_g57125747_ _g57135751_))))
                            (_g57125747_ _g57135751_))))
                    (_g57125747_ _g57135751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g57125747_
                                                     _g57135751_))))
                                            (_g57125747_ _g57135751_))))
                                    (_g57125747_ _g57135751_)))))
                         (_g57115868_
                          (list _kwvar5519_
                                _key5701_
                                _var5704_
                                (gx#genident _var5704_)
                                _default5707_
                                (_make-body5527_ _rest5698_ _body5693_)
                                _absent5525_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons 'begin _body5693_)))))
                                   (let ((_g55295537_
                                          (lambda (_g55305533_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g55305533_))))
                                     (let ((_g55285687_
                                            (lambda (_g55305541_)
                                              ((lambda (_L5544_)
                                                 (let ()
                                                   (let ((_g55575565_
                                                          (lambda (_g55585561_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g55585561_))))
                                                     (let ((_g55565683_
                                                            (lambda (_g55585569_)
                                                              ((lambda (_L5572_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g55855593_
                                  (lambda (_g55865589_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g55865589_))))
                             (let ((_g55845679_
                                    (lambda (_g55865597_)
                                      ((lambda (_L5600_)
                                         (let ()
                                           (let ((_g56135621_
                                                  (lambda (_g56145617_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g56145617_))))
                                             (let ((_g56125675_
                                                    (lambda (_g56145625_)
                                                      ((lambda (_L5628_)
                                                         (let ()
                                                           (let ((_g56415649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g56425645_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g56425645_))))
                     (let ((_g56405671_
                            (lambda (_g56425653_)
                              ((lambda (_L5656_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons (cons _L5656_ '())
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-vector)
                                 (cons '0 '()))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L5628_ '()))))))
                               _g56425653_))))
                       (_g56405671_ _absent5525_)))))
               _g56145625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g56125675_
                                                (gx#stx-wrap-source
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons _L5544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5572_)
                     (cons _L5600_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source
                                                  _stx4867_)))))))
                                       _g55865597_))))
                               (_g55845679_
                                (_make-body5527_ _kwargs5521_ _body5523_))))))
                       _g55585569_))))
               (_g55565683_ _args5522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g55305541_))))
                                       (_g55285687_ _kwvar5519_))))))))
                        (let ((_generate-kw-table4884_
                               (lambda (_kws5406_)
                                 ((letrec ((_rehash5409_
                                            (lambda (_pht5412_)
                                              ((letrec ((_lp5415_
                                                         (lambda (_rest5418_)
                                                           (if (pair? _rest5418_)
                                                               (let ((_key5421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _rest5418_)))
                         (let ((_rest5424_ (cdr _rest5418_)))
                           (let ((_pos5427_
                                  (fxmodulo
                                   (keyword-hash _key5421_)
                                   (vector-length _pht5412_))))
                             (let ()
                               (if (vector-ref _pht5412_ _pos5427_)
                                   (if (fx< (vector-length _pht5412_) '8192)
                                       (_rehash5409_
                                        (make-vector
                                         (fx1+ (* '2
                                                  (vector-length _pht5412_)))
                                         '#f))
                                       (error '"Unresolvable keyword collision"
                                              _kws5406_))
                                   (begin
                                     (vector-set!
                                      _pht5412_
                                      _pos5427_
                                      _key5421_)
                                     (_lp5415_ _rest5424_)))))))
                       _pht5412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _lp5415_)
                                               _kws5406_))))
                                    _rehash5409_)
                                  (make-vector (length _kws5406_) '#f)))))
                          (let ((_opt-lambda-split4873_
                                 (lambda (_hd7724_)
                                   ((letrec ((_lp7727_
                                              (lambda (_rest7730_
                                                       _pre7732_
                                                       _opt7733_)
                                                (let ((_g77367748_
                                                       (lambda (_g77377744_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g77377744_))))
                                                  (let ((_g77357759_
                                                         (lambda (_g77377752_)
                                                           ((lambda ()
                                                              (values (reverse _pre7732_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _opt7733_)
                              (if (gx#identifier? _rest7730_)
                                  (_generate-bind4876_ _rest7730_)
                                  _rest7730_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g77347868_
                                                           (lambda (_g77377763_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g77377763_)
                         (let ((_e77407766_ (gx#syntax-e _g77377763_)))
                           (let ((_hd77417770_ (##car _e77407766_))
                                 (_tl77427773_ (##cdr _e77407766_)))
                             ((lambda (_L7776_ _L7778_)
                                (let ((_g77947809_
                                       (lambda (_g77957805_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g77957805_))))
                                  (let ((_g77937820_
                                         (lambda (_g77957813_)
                                           ((lambda ()
                                              (_lp7727_
                                               _L7776_
                                               (cons (_generate-bind4876_
                                                      _L7778_)
                                                     _pre7732_)
                                               _opt7733_))))))
                                    (let ((_g77927864_
                                           (lambda (_g77957824_)
                                             (if (gx#stx-pair? _g77957824_)
                                                 (let ((_e77987827_
                                                        (gx#syntax-e
                                                         _g77957824_)))
                                                   (let ((_hd77997831_
                                                          (##car _e77987827_))
                                                         (_tl78007834_
                                                          (##cdr _e77987827_)))
                                                     (if (gx#stx-pair?
                                                          _tl78007834_)
                                                         (let ((_e78017837_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78007834_)))
                   (let ((_hd78027841_ (##car _e78017837_))
                         (_tl78037844_ (##cdr _e78017837_)))
                     (if (gx#stx-null? _tl78037844_)
                         ((lambda (_L7847_ _L7849_)
                            (_lp7727_
                             _L7776_
                             _pre7732_
                             (cons (cons (_generate-bind4876_ _L7849_) _L7847_)
                                   _opt7733_)))
                          _hd78027841_
                          _hd77997831_)
                         (_g77937820_ _g77957824_))))
                 (_g77937820_ _g77957824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g77937820_ _g77957824_)))))
                                      (_g77927864_ _L7778_)))))
                              _tl77427773_
                              _hd77417770_)))
                         (_g77357759_ _g77377763_)))))
              (_g77347868_ _rest7730_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp7727_)
                                    _hd7724_
                                    '()
                                    '()))))
                            (let ((_kw-lambda-split4875_
                                   (lambda (_hd7137_)
                                     ((letrec ((_lp7140_
                                                (lambda (_rest7143_
                                                         _kwvar7145_
                                                         _kwargs7146_
                                                         _args7147_)
                                                  (let ((_g71527181_
                                                         (lambda (_g71537177_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g71537177_))))
                                                    (let ((_g71517192_
                                                           (lambda (_g71537185_)
                                                             ((lambda ()
                                                                (values _kwvar7145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse _kwargs7146_)
                                (foldl cons _rest7143_ _args7147_)))))))
              (let ((_g71507226_
                     (lambda (_g71537196_)
                       (if (gx#stx-pair? _g71537196_)
                           (let ((_e71737199_ (gx#syntax-e _g71537196_)))
                             (let ((_hd71747203_ (##car _e71737199_))
                                   (_tl71757206_ (##cdr _e71737199_)))
                               ((lambda (_L7209_ _L7211_)
                                  (_lp7140_
                                   _L7209_
                                   _kwvar7145_
                                   _kwargs7146_
                                   (cons _L7211_ _args7147_)))
                                _tl71757206_
                                _hd71747203_)))
                           (_g71517192_ _g71537196_)))))
                (let ((_g71497268_
                       (lambda (_g71537230_)
                         (if (gx#stx-pair? _g71537230_)
                             (let ((_e71657233_ (gx#syntax-e _g71537230_)))
                               (let ((_hd71667237_ (##car _e71657233_))
                                     (_tl71677240_ (##cdr _e71657233_)))
                                 (if (gx#stx-datum? _hd71667237_)
                                     (if (equal? (gx#stx-e _hd71667237_)
                                                 '#!key)
                                         (if (gx#stx-pair? _tl71677240_)
                                             (let ((_e71687243_
                                                    (gx#syntax-e
                                                     _tl71677240_)))
                                               (let ((_hd71697247_
                                                      (##car _e71687243_))
                                                     (_tl71707250_
                                                      (##cdr _e71687243_)))
                                                 ((lambda (_L7253_ _L7255_)
                                                    (if _kwvar7145_
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; duplicate #!key argument"
                                                         _stx4867_
                                                         _hd7137_
                                                         _L7255_)
                                                        (_lp7140_
                                                         _L7253_
                                                         (_generate-bind4876_
                                                          _L7255_)
                                                         _kwargs7146_
                                                         _args7147_)))
                                                  _tl71707250_
                                                  _hd71697247_)))
                                             (_g71507226_ _g71537230_))
                                         (_g71507226_ _g71537230_))
                                     (_g71507226_ _g71537230_))))
                             (_g71507226_ _g71537230_)))))
                  (let ((_g71487394_
                         (lambda (_g71537272_)
                           (if (gx#stx-pair? _g71537272_)
                               (let ((_e71577275_ (gx#syntax-e _g71537272_)))
                                 (let ((_hd71587279_ (##car _e71577275_))
                                       (_tl71597282_ (##cdr _e71577275_)))
                                   (if (gx#stx-pair? _tl71597282_)
                                       (let ((_e71607285_
                                              (gx#syntax-e _tl71597282_)))
                                         (let ((_hd71617289_
                                                (##car _e71607285_))
                                               (_tl71627292_
                                                (##cdr _e71607285_)))
                                           ((lambda (_L7295_ _L7297_ _L7298_)
                                              (if (gx#stx-keyword? _L7298_)
                                                  (let ((_key7312_
                                                         (gx#stx-e _L7298_)))
                                                    (if (find (lambda (_kwarg7315_)
                                                                (eq? _key7312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _kwarg7315_)))
                      _kwargs7146_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; duplicate keyword argument"
                 _stx4867_
                 _hd7137_
                 _key7312_)
                (let ((_g73197334_
                       (lambda (_g73207330_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g73207330_))))
                  (let ((_g73187345_
                         (lambda (_g73207338_)
                           ((lambda ()
                              (_lp7140_
                               _L7295_
                               _kwvar7145_
                               (cons (list _key7312_
                                           (_generate-bind4876_ _L7297_)
                                           (cons (gx#datum->syntax '#f 'error)
                                                 (cons '"Missing required keyword argument"
                                                       (cons _L7298_ '()))))
                                     _kwargs7146_)
                               _args7147_))))))
                    (let ((_g73177390_
                           (lambda (_g73207349_)
                             (if (gx#stx-pair? _g73207349_)
                                 (let ((_e73237352_ (gx#syntax-e _g73207349_)))
                                   (let ((_hd73247356_ (##car _e73237352_))
                                         (_tl73257359_ (##cdr _e73237352_)))
                                     (if (gx#stx-pair? _tl73257359_)
                                         (let ((_e73267362_
                                                (gx#syntax-e _tl73257359_)))
                                           (let ((_hd73277366_
                                                  (##car _e73267362_))
                                                 (_tl73287369_
                                                  (##cdr _e73267362_)))
                                             (if (gx#stx-null? _tl73287369_)
                                                 ((lambda (_L7372_ _L7374_)
                                                    (_lp7140_
                                                     _L7295_
                                                     _kwvar7145_
                                                     (cons (list _key7312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_generate-bind4876_ _L7374_)
                         _L7372_)
                   _kwargs7146_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _args7147_))
                                                  _hd73277366_
                                                  _hd73247356_)
                                                 (_g73187345_ _g73207349_))))
                                         (_g73187345_ _g73207349_))))
                                 (_g73187345_ _g73207349_)))))
                      (_g73177390_ _L7297_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g71497268_ _g71537272_)))
                                            _tl71627292_
                                            _hd71617289_
                                            _hd71587279_)))
                                       (_g71497268_ _g71537272_))))
                               (_g71497268_ _g71537272_)))))
                    (_g71487394_ _rest7143_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp7140_)
                                      _hd7137_
                                      '#f
                                      '()
                                      '()))))
                              (let ((_generate-opt-dispatch*4880_
                                     (lambda (_primary6174_
                                              _pre6176_
                                              _opt6177_
                                              _tail6178_)
                                       ((letrec ((_recur6180_
                                                  (lambda (_opt-rest6183_
                                                           _right6185_)
                                                    (if (pair? _opt-rest6183_)
                                                        (let ((_hd6187_
                                                               (caar _opt-rest6183_)))
                                                          (let ((_rest6190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cdr _opt-rest6183_)))
                    (let ((_right*6193_ (cons _hd6187_ _right6185_)))
                      (let ((_g61966213_
                             (lambda (_g61976209_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g61976209_))))
                        (let ((_g61956396_
                               (lambda (_g61976217_)
                                 (if (gx#stx-pair/null? _g61976217_)
                                     (if (fx>= (gx#stx-length _g61976217_) '0)
                                         (let ((_g30220_
                                                (gx#syntax-split-splice
                                                 _g61976217_
                                                 '0)))
                                           (begin
                                             (let ((_g30221_
                                                    (values-count _g30220_)))
                                               (if (not (fx= _g30221_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30221_)))
                                             (let ((_target61996220_
                                                    (values-ref _g30220_ 0))
                                                   (_tl62016223_
                                                    (values-ref _g30220_ 1)))
                                               (if (gx#stx-null? _tl62016223_)
                                                   (letrec ((_loop62026226_
                                                             (lambda (_hd62006230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pre-bind62066233_)
                       (if (gx#stx-pair? _hd62006230_)
                           (let ((_e62036236_ (gx#syntax-e _hd62006230_)))
                             (let ((_lp-hd62046240_ (##car _e62036236_))
                                   (_lp-tl62056243_ (##cdr _e62036236_)))
                               (_loop62026226_
                                _lp-tl62056243_
                                (cons _lp-hd62046240_ _pre-bind62066233_))))
                           (let ((_pre-bind62076246_
                                  (reverse _pre-bind62066233_)))
                             ((lambda (_L6250_)
                                (let ()
                                  (let ((_g62716288_
                                         (lambda (_g62726284_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g62726284_))))
                                    (let ((_g62706392_
                                           (lambda (_g62726292_)
                                             (if (gx#stx-pair/null?
                                                  _g62726292_)
                                                 (if (fx>= (gx#stx-length
                                                            _g62726292_)
                                                           '0)
                                                     (let ((_g30222_
                                                            (gx#syntax-split-splice
                                                             _g62726292_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30223_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30222_)))
                   (if (not (fx= _g30223_ 2))
                       (error "Context expects 2 values" _g30223_)))
                 (let ((_target62746295_ (values-ref _g30222_ 0))
                       (_tl62766298_ (values-ref _g30222_ 1)))
                   (if (gx#stx-null? _tl62766298_)
                       (letrec ((_loop62776301_
                                 (lambda (_hd62756305_ _opt-bind62816308_)
                                   (if (gx#stx-pair? _hd62756305_)
                                       (let ((_e62786311_
                                              (gx#syntax-e _hd62756305_)))
                                         (let ((_lp-hd62796315_
                                                (##car _e62786311_))
                                               (_lp-tl62806318_
                                                (##cdr _e62786311_)))
                                           (_loop62776301_
                                            _lp-tl62806318_
                                            (cons _lp-hd62796315_
                                                  _opt-bind62816308_))))
                                       (let ((_opt-bind62826321_
                                              (reverse _opt-bind62816308_)))
                                         ((lambda (_L6325_)
                                            (let ()
                                              (let ((_g63426350_
                                                     (lambda (_g63436346_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g63436346_))))
                                                (let ((_g63416388_
                                                       (lambda (_g63436354_)
                                                         ((lambda (_L6357_)
                                                            (let ()
                                                              (let ()
                                                                (cons (list (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr (lambda (_g63716376_ _g63726379_)
                                               (cons _g63716376_ _g63726379_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g63736382_
                                                               _g63746385_)
                                                        (cons _g63736382_
                                                              _g63746385_))
                                                      (cons _L6357_ '())
                                                      _L6325_))
                                             _L6250_))
                                    (_generate-opt-clause4881_
                                     _primary6174_
                                     (foldr cons
                                            (reverse _right*6193_)
                                            _pre6176_)
                                     _rest6190_))
                              (_recur6180_ _rest6190_ _right*6193_)))))
                  _g63436354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63416388_ _hd6187_)))))
                                          _opt-bind62826321_))))))
                         (_loop62776301_ _target62746295_ '()))
                       (_g62716288_ _g62726292_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g62716288_ _g62726292_))
                                                 (_g62716288_ _g62726292_)))))
                                      (_g62706392_ (reverse _right6185_))))))
                              _pre-bind62076246_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop62026226_
                                                      _target61996220_
                                                      '()))
                                                   (_g61966213_
                                                    _g61976217_)))))
                                         (_g61966213_ _g61976217_))
                                     (_g61966213_ _g61976217_)))))
                          (_g61956396_ _pre6176_))))))
                (if (gx#stx-null? _tail6178_)
                    '()
                    (let ((_g64006441_
                           (lambda (_g64016437_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g64016437_))))
                      (let ((_g63996613_
                             (lambda (_g64016445_)
                               (if (gx#stx-pair? _g64016445_)
                                   (let ((_e64066448_
                                          (gx#syntax-e _g64016445_)))
                                     (let ((_hd64076452_ (##car _e64066448_))
                                           (_tl64086455_ (##cdr _e64066448_)))
                                       (if (gx#stx-pair/null? _hd64076452_)
                                           (if (fx>= (gx#stx-length
                                                      _hd64076452_)
                                                     '0)
                                               (let ((_g30224_
                                                      (gx#syntax-split-splice
                                                       _hd64076452_
                                                       '0)))
                                                 (begin
                                                   (let ((_g30225_
                                                          (values-count
                                                           _g30224_)))
                                                     (if (not (fx= _g30225_ 2))
                                                         (error "Context expects 2 values"
                                                                _g30225_)))
                                                   (let ((_target64096458_
                                                          (values-ref
                                                           _g30224_
                                                           0))
                                                         (_tl64116461_
                                                          (values-ref
                                                           _g30224_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl64116461_)
                                                         (letrec ((_loop64126464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd64106468_ _pre64166471_)
                             (if (gx#stx-pair? _hd64106468_)
                                 (let ((_e64136474_
                                        (gx#syntax-e _hd64106468_)))
                                   (let ((_lp-hd64146478_ (##car _e64136474_))
                                         (_lp-tl64156481_ (##cdr _e64136474_)))
                                     (_loop64126464_
                                      _lp-tl64156481_
                                      (cons _lp-hd64146478_ _pre64166471_))))
                                 (let ((_pre64176484_ (reverse _pre64166471_)))
                                   (if (gx#stx-pair? _tl64086455_)
                                       (let ((_e64186488_
                                              (gx#syntax-e _tl64086455_)))
                                         (let ((_hd64196492_
                                                (##car _e64186488_))
                                               (_tl64206495_
                                                (##cdr _e64186488_)))
                                           (if (gx#stx-pair/null? _hd64196492_)
                                               (if (fx>= (gx#stx-length
                                                          _hd64196492_)
                                                         '0)
                                                   (let ((_g30226_
                                                          (gx#syntax-split-splice
                                                           _hd64196492_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30227_
                                                              (values-count
                                                               _g30226_)))
                                                         (if (not (fx= _g30227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30227_)))
               (let ((_target64216498_ (values-ref _g30226_ 0))
                     (_tl64236501_ (values-ref _g30226_ 1)))
                 (if (gx#stx-null? _tl64236501_)
                     (letrec ((_loop64246504_
                               (lambda (_hd64226508_ _opt64286511_)
                                 (if (gx#stx-pair? _hd64226508_)
                                     (let ((_e64256514_
                                            (gx#syntax-e _hd64226508_)))
                                       (let ((_lp-hd64266518_
                                              (##car _e64256514_))
                                             (_lp-tl64276521_
                                              (##cdr _e64256514_)))
                                         (_loop64246504_
                                          _lp-tl64276521_
                                          (cons _lp-hd64266518_
                                                _opt64286511_))))
                                     (let ((_opt64296524_
                                            (reverse _opt64286511_)))
                                       (if (gx#stx-pair? _tl64206495_)
                                           (let ((_e64306528_
                                                  (gx#syntax-e _tl64206495_)))
                                             (let ((_hd64316532_
                                                    (##car _e64306528_))
                                                   (_tl64326535_
                                                    (##cdr _e64306528_)))
                                               (if (gx#stx-pair? _tl64326535_)
                                                   (let ((_e64336538_
                                                          (gx#syntax-e
                                                           _tl64326535_)))
                                                     (let ((_hd64346542_
                                                            (##car _e64336538_))
                                                           (_tl64356545_
                                                            (##cdr _e64336538_)))
                                                       (if (gx#stx-null?
                                                            _tl64356545_)
                                                           ((lambda (_L6548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6550_
                             _L6551_
                             _L6552_)
                      (let ()
                        (list (list (begin
                                      '#!void
                                      (foldr (lambda (_g65806585_ _g65816588_)
                                               (cons _g65806585_ _g65816588_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g65826591_
                                                               _g65836594_)
                                                        (cons _g65826591_
                                                              _g65836594_))
                                                      _L6550_
                                                      _L6551_))
                                             _L6552_))
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'apply)
                                           (cons _L6548_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g65966601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g65976604_)
                    (cons _g65966601_ _g65976604_))
                  (begin
                    '#!void
                    (foldr (lambda (_g65986607_ _g65996610_)
                             (cons _g65986607_ _g65996610_))
                           (cons _L6550_ '())
                           _L6551_))
                  _L6552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _stx4867_))))))
                    _hd64346542_
                    _hd64316532_
                    _opt64296524_
                    _pre64176484_)
                   (_g64006441_ _g64016445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g64006441_ _g64016445_))))
                                           (_g64006441_ _g64016445_)))))))
                       (_loop64246504_ _target64216498_ '()))
                     (_g64006441_ _g64016445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g64006441_ _g64016445_))
                                               (_g64006441_ _g64016445_))))
                                       (_g64006441_ _g64016445_)))))))
                   (_loop64126464_ _target64096458_ '()))
                 (_g64006441_ _g64016445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g64006441_ _g64016445_))
                                           (_g64006441_ _g64016445_))))
                                   (_g64006441_ _g64016445_)))))
                        (_g63996613_
                         (list _pre6176_
                               (reverse _right6185_)
                               _tail6178_
                               _primary6174_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _recur6180_)
                                        _opt6177_
                                        '()))))
                                (let ((_generate-kw-dispatch4883_
                                       (lambda (_primary5432_
                                                _kwargs5434_
                                                _strict?5435_)
                                         (let ((_g54375456_
                                                (lambda (_g54385452_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g54385452_))))
                                           (let ((_g54365515_
                                                  (lambda (_g54385460_)
                                                    (if (gx#stx-pair?
                                                         _g54385460_)
                                                        (let ((_e54425463_
                                                               (gx#syntax-e
                                                                _g54385460_)))
                                                          (let ((_hd54435467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e54425463_))
                        (_tl54445470_ (##cdr _e54425463_)))
                    (if (gx#stx-pair? _tl54445470_)
                        (let ((_e54455473_ (gx#syntax-e _tl54445470_)))
                          (let ((_hd54465477_ (##car _e54455473_))
                                (_tl54475480_ (##cdr _e54455473_)))
                            (if (gx#stx-pair? _tl54475480_)
                                (let ((_e54485483_ (gx#syntax-e _tl54475480_)))
                                  (let ((_hd54495487_ (##car _e54485483_))
                                        (_tl54505490_ (##cdr _e54485483_)))
                                    (if (gx#stx-null? _tl54505490_)
                                        ((lambda (_L5493_ _L5495_ _L5496_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda%)
                                                   (cons _L5493_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'apply)
                             (cons (gx#datum->syntax '#f 'keyword-dispatch)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L5496_ '()))
                                         (cons _L5495_ (cons _L5493_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd54495487_
                                         _hd54465477_
                                         _hd54435467_)
                                        (_g54375456_ _g54385460_))))
                                (_g54375456_ _g54385460_))))
                        (_g54375456_ _g54385460_))))
                (_g54375456_ _g54385460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g54365515_
                                              (list (if _strict?5435_
                                                        (_generate-kw-table4884_
                                                         (map car
                                                              _kwargs5434_))
                                                        '#f)
                                                    _primary5432_
                                                    (gx#genident 'args))))))))
                                  (let ((_generate-opt-dispatch4879_
                                         (lambda (_primary6617_
                                                  _pre6619_
                                                  _opt6620_
                                                  _tail6621_)
                                           (cons (list _pre6619_
                                                       (_generate-opt-clause4881_
                                                        _primary6617_
                                                        _pre6619_
                                                        _opt6620_))
                                                 (_generate-opt-dispatch*4880_
                                                  _primary6617_
                                                  _pre6619_
                                                  _opt6620_
                                                  _tail6621_)))))
                                    (let ((_g48884919_
                                           (lambda (_g48894915_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g48894915_))))
                                      (let ((_g48875132_
                                             (lambda (_g48894923_)
                                               (if (gx#stx-pair? _g48894923_)
                                                   (let ((_e49084926_
                                                          (gx#syntax-e
                                                           _g48894923_)))
                                                     (let ((_hd49094930_
                                                            (##car _e49084926_))
                                                           (_tl49104933_
                                                            (##cdr _e49084926_)))
                                                       (if (gx#stx-pair?
                                                            _tl49104933_)
                                                           (let ((_e49114936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl49104933_)))
                     (let ((_hd49124940_ (##car _e49114936_))
                           (_tl49134943_ (##cdr _e49114936_)))
                       ((lambda (_L4946_ _L4948_)
                          (if (_kw-lambda?4874_ _L4948_)
                              (let ((_g49644971_
                                     (lambda (_g49654967_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g49654967_))))
                                (let ((_g49635128_
                                       (lambda (_g49654975_)
                                         ((lambda ()
                                            (let ()
                                              (let ((_g30214_
                                                     (_kw-lambda-split4875_
                                                      _L4948_)))
                                                (begin
                                                  (let ((_g30215_
                                                         (values-count
                                                          _g30214_)))
                                                    (if (not (fx= _g30215_ 3))
                                                        (error "Context expects 3 values"
                                                               _g30215_)))
                                                  (let ((_key4984_
                                                         (values-ref
                                                          _g30214_
                                                          0))
                                                        (_kwargs4986_
                                                         (values-ref
                                                          _g30214_
                                                          1))
                                                        (_args4987_
                                                         (values-ref
                                                          _g30214_
                                                          2)))
                                                    (let ((_g49894997_
                                                           (lambda (_g49904993_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g49904993_))))
                                                      (let ((_g49885120_
                                                             (lambda (_g49905001_)
                                                               ((lambda (_L5004_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g50225030_
                                   (lambda (_g50235026_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g50235026_))))
                              (let ((_g50215116_
                                     (lambda (_g50235034_)
                                       ((lambda (_L5037_)
                                          (let ()
                                            (let ((_g50505058_
                                                   (lambda (_g50515054_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g50515054_))))
                                              (let ((_g50495112_
                                                     (lambda (_g50515062_)
                                                       ((lambda (_L5065_)
                                                          (let ()
                                                            (let ((_g50785086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g50795082_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g50795082_))))
                      (let ((_g50775108_
                             (lambda (_g50795090_)
                               ((lambda (_L5093_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (cons _L5037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _L5065_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L5093_ '()))))))
                                _g50795090_))))
                        (_g50775108_
                         (gx#stx-wrap-source
                          (_generate-kw-dispatch4883_
                           _L5037_
                           _kwargs4986_
                           (not _key4984_))
                          (gx#stx-source _stx4867_)))))))
                _g50515062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g50495112_
                                                 (gx#stx-wrap-source
                                                  (_generate-kw-primary4882_
                                                   _L5004_
                                                   _kwargs4986_
                                                   _args4987_
                                                   _L4946_)
                                                  (gx#stx-source
                                                   _stx4867_)))))))
                                        _g50235034_))))
                                (_g50215116_ (gx#genident 'kw-lambda))))))
                        _g49905001_))))
                (_g49885120_
                 (let ((_$e5124_ _key4984_))
                   (if _$e5124_ _$e5124_ (gx#genident 'key)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g49635128_
                                   (_check-duplicate-bindings4877_ _L4948_))))
                              (_g48884919_ _g48894923_)))
                        _tl49134943_
                        _hd49124940_)))
                   (_g48884919_ _g48894923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g48884919_
                                                    _g48894923_)))))
                                        (let ((_g48865360_
                                               (lambda (_g48895136_)
                                                 (if (gx#stx-pair? _g48895136_)
                                                     (let ((_e49005139_
                                                            (gx#syntax-e
                                                             _g48895136_)))
                                                       (let ((_hd49015143_
                                                              (##car _e49005139_))
                                                             (_tl49025146_
                                                              (##cdr _e49005139_)))
                                                         (if (gx#stx-pair?
                                                              _tl49025146_)
                                                             (let ((_e49035149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl49025146_)))
                       (let ((_hd49045153_ (##car _e49035149_))
                             (_tl49055156_ (##cdr _e49035149_)))
                         ((lambda (_L5159_ _L5161_)
                            (if (_opt-lambda?4872_ _L5161_)
                                (let ((_g30216_
                                       (_opt-lambda-split4873_ _L5161_)))
                                  (begin
                                    (let ((_g30217_ (values-count _g30216_)))
                                      (if (not (fx= _g30217_ 3))
                                          (error "Context expects 3 values"
                                                 _g30217_)))
                                    (let ((_pre5174_ (values-ref _g30216_ 0))
                                          (_opt5176_ (values-ref _g30216_ 1))
                                          (_tail5177_ (values-ref _g30216_ 2)))
                                      (let ((_g51795187_
                                             (lambda (_g51805183_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g51805183_))))
                                        (let ((_g51785356_
                                               (lambda (_g51805191_)
                                                 ((lambda (_L5194_)
                                                    (let ()
                                                      (let ((_g52075215_
                                                             (lambda (_g52085211_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g52085211_))))
                                                        (let ((_g52065352_
                                                               (lambda (_g52085219_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L5222_)
                            (let ()
                              (let ((_g52355252_
                                     (lambda (_g52365248_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g52365248_))))
                                (let ((_g52345348_
                                       (lambda (_g52365256_)
                                         (if (gx#stx-pair/null? _g52365256_)
                                             (if (fx>= (gx#stx-length
                                                        _g52365256_)
                                                       '0)
                                                 (let ((_g30218_
                                                        (gx#syntax-split-splice
                                                         _g52365256_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30219_
                                                            (values-count
                                                             _g30218_)))
                                                       (if (not (fx= _g30219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30219_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target52385259_
                                                            (values-ref
                                                             _g30218_
                                                             0))
                                                           (_tl52405262_
                                                            (values-ref
                                                             _g30218_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl52405262_)
                                                           (letrec ((_loop52415265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd52395269_ _clause52455272_)
                               (if (gx#stx-pair? _hd52395269_)
                                   (let ((_e52425275_
                                          (gx#syntax-e _hd52395269_)))
                                     (let ((_lp-hd52435279_
                                            (##car _e52425275_))
                                           (_lp-tl52445282_
                                            (##cdr _e52425275_)))
                                       (_loop52415265_
                                        _lp-tl52445282_
                                        (cons _lp-hd52435279_
                                              _clause52455272_))))
                                   (let ((_clause52465285_
                                          (reverse _clause52455272_)))
                                     ((lambda (_L5289_)
                                        (let ()
                                          (let ((_g53065314_
                                                 (lambda (_g53075310_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g53075310_))))
                                            (let ((_g53055336_
                                                   (lambda (_g53075318_)
                                                     ((lambda (_L5321_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5194_ '())
                                            (cons _L5222_ '()))
                                      '())
                                (cons _L5321_ '()))))))
              _g53075318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g53055336_
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g53395342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g53405345_)
                         (cons _g53395342_ _g53405345_))
                       '()
                       _L5289_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx4867_)))))))
                                      _clause52465285_))))))
                     (_loop52415265_ _target52385259_ '()))
                   (_g52355252_ _g52365256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g52355252_ _g52365256_))
                                             (_g52355252_ _g52365256_)))))
                                  (_g52345348_
                                   (_generate-opt-dispatch4879_
                                    _L5194_
                                    _pre5174_
                                    _opt5176_
                                    _tail5177_))))))
                          _g52085219_))))
                  (_g52065352_
                   (gx#stx-wrap-source
                    (_generate-opt-primary4878_
                     _pre5174_
                     _opt5176_
                     _tail5177_
                     _L5159_)
                    (gx#stx-source _stx4867_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g51805191_))))
                                          (_g51785356_
                                           (gx#genident 'opt-lambda)))))))
                                (_g48875132_ _g48895136_)))
                          _tl49055156_
                          _hd49045153_)))
                     (_g48875132_ _g48895136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48875132_
                                                      _g48895136_)))))
                                          (let ((_g48855402_
                                                 (lambda (_g48895364_)
                                                   (if (gx#stx-pair?
                                                        _g48895364_)
                                                       (let ((_e48925367_
                                                              (gx#syntax-e
                                                               _g48895364_)))
                                                         (let ((_hd48935371_
                                                                (##car _e48925367_))
                                                               (_tl48945374_
                                                                (##cdr _e48925367_)))
                                                           (if (gx#stx-pair?
                                                                _tl48945374_)
                                                               (let ((_e48955377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl48945374_)))
                         (let ((_hd48965381_ (##car _e48955377_))
                               (_tl48975384_ (##cdr _e48955377_)))
                           ((lambda (_L5387_ _L5389_)
                              (if (_simple-lambda?4870_ _L5389_)
                                  (cons (gx#datum->syntax '#f 'lambda%)
                                        (cons _L5389_ _L5387_))
                                  (_g48865360_ _g48895364_)))
                            _tl48975384_
                            _hd48965381_)))
                       (_g48865360_ _g48895364_))))
               (_g48865360_ _g48895364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g48855402_
                                             _stx4867_)))))))))))))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def|
      (lambda (_$stx8034_)
        (let ((_g80398078_
               (lambda (_g80408074_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g80408074_))))
          (let ((_g80388133_
                 (lambda (_g80408082_)
                   (if (gx#stx-pair? _g80408082_)
                       (let ((_e80648085_ (gx#syntax-e _g80408082_)))
                         (let ((_hd80658089_ (##car _e80648085_))
                               (_tl80668092_ (##cdr _e80648085_)))
                           (if (gx#stx-pair? _tl80668092_)
                               (let ((_e80678095_ (gx#syntax-e _tl80668092_)))
                                 (let ((_hd80688099_ (##car _e80678095_))
                                       (_tl80698102_ (##cdr _e80678095_)))
                                   (if (gx#stx-pair? _tl80698102_)
                                       (let ((_e80708105_
                                              (gx#syntax-e _tl80698102_)))
                                         (let ((_hd80718109_
                                                (##car _e80708105_))
                                               (_tl80728112_
                                                (##cdr _e80708105_)))
                                           (if (gx#stx-null? _tl80728112_)
                                               ((lambda (_L8115_ _L8117_)
                                                  (if (gx#identifier? _L8117_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L8117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L8115_ '())))
              (_g80398078_ _g80408082_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd80718109_
                                                _hd80688099_)
                                               (_g80398078_ _g80408082_))))
                                       (_g80398078_ _g80408082_))))
                               (_g80398078_ _g80408082_))))
                       (_g80398078_ _g80408082_)))))
            (let ((_g80378231_
                   (lambda (_g80408137_)
                     (if (gx#stx-pair? _g80408137_)
                         (let ((_e80448140_ (gx#syntax-e _g80408137_)))
                           (let ((_hd80458144_ (##car _e80448140_))
                                 (_tl80468147_ (##cdr _e80448140_)))
                             (if (gx#stx-pair? _tl80468147_)
                                 (let ((_e80478150_
                                        (gx#syntax-e _tl80468147_)))
                                   (let ((_hd80488154_ (##car _e80478150_))
                                         (_tl80498157_ (##cdr _e80478150_)))
                                     (if (gx#stx-pair? _hd80488154_)
                                         (let ((_e80508160_
                                                (gx#syntax-e _hd80488154_)))
                                           (let ((_hd80518164_
                                                  (##car _e80508160_))
                                                 (_tl80528167_
                                                  (##cdr _e80508160_)))
                                             (if (gx#stx-pair/null?
                                                  _tl80498157_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl80498157_)
                                                           '0)
                                                     (let ((_g30236_
                                                            (gx#syntax-split-splice
                                                             _tl80498157_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30237_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30236_)))
                   (if (not (fx= _g30237_ 2))
                       (error "Context expects 2 values" _g30237_)))
                 (let ((_target80538170_ (values-ref _g30236_ 0))
                       (_tl80558173_ (values-ref _g30236_ 1)))
                   (if (gx#stx-null? _tl80558173_)
                       (letrec ((_loop80568176_
                                 (lambda (_hd80548180_ _body80608183_)
                                   (if (gx#stx-pair? _hd80548180_)
                                       (let ((_e80578186_
                                              (gx#syntax-e _hd80548180_)))
                                         (let ((_lp-hd80588190_
                                                (##car _e80578186_))
                                               (_lp-tl80598193_
                                                (##cdr _e80578186_)))
                                           (_loop80568176_
                                            _lp-tl80598193_
                                            (cons _lp-hd80588190_
                                                  _body80608183_))))
                                       (let ((_body80618196_
                                              (reverse _body80608183_)))
                                         ((lambda (_L8200_ _L8202_ _L8203_)
                                            (if (gx#identifier? _L8203_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L8203_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons _L8202_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g82228225_
                                                        _g82238228_)
                                                 (cons _g82228225_
                                                       _g82238228_))
                                               '()
                                               _L8200_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g80388133_ _g80408137_)))
                                          _body80618196_
                                          _tl80528167_
                                          _hd80518164_))))))
                         (_loop80568176_ _target80538170_ '()))
                       (_g80388133_ _g80408137_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80388133_ _g80408137_))
                                                 (_g80388133_ _g80408137_))))
                                         (_g80388133_ _g80408137_))))
                                 (_g80388133_ _g80408137_))))
                         (_g80388133_ _g80408137_)))))
              (_g80378231_ _$stx8034_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def*|
      (lambda (_$stx8236_)
        (let ((_g82408264_
               (lambda (_g82418260_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g82418260_))))
          (let ((_g82398349_
                 (lambda (_g82418268_)
                   (if (gx#stx-pair? _g82418268_)
                       (let ((_e82448271_ (gx#syntax-e _g82418268_)))
                         (let ((_hd82458275_ (##car _e82448271_))
                               (_tl82468278_ (##cdr _e82448271_)))
                           (if (gx#stx-pair? _tl82468278_)
                               (let ((_e82478281_ (gx#syntax-e _tl82468278_)))
                                 (let ((_hd82488285_ (##car _e82478281_))
                                       (_tl82498288_ (##cdr _e82478281_)))
                                   (if (gx#stx-pair/null? _tl82498288_)
                                       (if (fx>= (gx#stx-length _tl82498288_)
                                                 '0)
                                           (let ((_g30238_
                                                  (gx#syntax-split-splice
                                                   _tl82498288_
                                                   '0)))
                                             (begin
                                               (let ((_g30239_
                                                      (values-count _g30238_)))
                                                 (if (not (fx= _g30239_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30239_)))
                                               (let ((_target82508291_
                                                      (values-ref _g30238_ 0))
                                                     (_tl82528294_
                                                      (values-ref _g30238_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl82528294_)
                                                     (letrec ((_loop82538297_
                                                               (lambda (_hd82518301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses82578304_)
                         (if (gx#stx-pair? _hd82518301_)
                             (let ((_e82548307_ (gx#syntax-e _hd82518301_)))
                               (let ((_lp-hd82558311_ (##car _e82548307_))
                                     (_lp-tl82568314_ (##cdr _e82548307_)))
                                 (_loop82538297_
                                  _lp-tl82568314_
                                  (cons _lp-hd82558311_ _clauses82578304_))))
                             (let ((_clauses82588317_
                                    (reverse _clauses82578304_)))
                               ((lambda (_L8321_ _L8323_)
                                  (if (gx#identifier? _L8323_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'define-values)
                                            (cons (cons _L8323_ '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'case-lambda)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g83408343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g83418346_)
                                 (cons _g83408343_ _g83418346_))
                               '()
                               _L8321_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g82408264_ _g82418268_)))
                                _clauses82588317_
                                _hd82488285_))))))
               (_loop82538297_ _target82508291_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g82408264_
                                                      _g82418268_)))))
                                           (_g82408264_ _g82418268_))
                                       (_g82408264_ _g82418268_))))
                               (_g82408264_ _g82418268_))))
                       (_g82408264_ _g82418268_)))))
            (_g82398349_ _$stx8236_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8354_)
        (let ((_g83588376_
               (lambda (_g83598372_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g83598372_))))
          (let ((_g83578431_
                 (lambda (_g83598380_)
                   (if (gx#stx-pair? _g83598380_)
                       (let ((_e83628383_ (gx#syntax-e _g83598380_)))
                         (let ((_hd83638387_ (##car _e83628383_))
                               (_tl83648390_ (##cdr _e83628383_)))
                           (if (gx#stx-pair? _tl83648390_)
                               (let ((_e83658393_ (gx#syntax-e _tl83648390_)))
                                 (let ((_hd83668397_ (##car _e83658393_))
                                       (_tl83678400_ (##cdr _e83658393_)))
                                   (if (gx#stx-pair? _tl83678400_)
                                       (let ((_e83688403_
                                              (gx#syntax-e _tl83678400_)))
                                         (let ((_hd83698407_
                                                (##car _e83688403_))
                                               (_tl83708410_
                                                (##cdr _e83688403_)))
                                           (if (gx#stx-null? _tl83708410_)
                                               ((lambda (_L8413_ _L8415_)
                                                  (if (gx#identifier-list?
                                                       _L8415_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons _L8415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L8413_ '())))
              (_g83588376_ _g83598380_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd83698407_
                                                _hd83668397_)
                                               (_g83588376_ _g83598380_))))
                                       (_g83588376_ _g83598380_))))
                               (_g83588376_ _g83598380_))))
                       (_g83588376_ _g83598380_)))))
            (_g83578431_ _$stx8354_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#case|
      (lambda (_$stx8435_)
        (let ((_g84398463_
               (lambda (_g84408459_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g84408459_))))
          (let ((_g84388548_
                 (lambda (_g84408467_)
                   (if (gx#stx-pair? _g84408467_)
                       (let ((_e84438470_ (gx#syntax-e _g84408467_)))
                         (let ((_hd84448474_ (##car _e84438470_))
                               (_tl84458477_ (##cdr _e84438470_)))
                           (if (gx#stx-pair? _tl84458477_)
                               (let ((_e84468480_ (gx#syntax-e _tl84458477_)))
                                 (let ((_hd84478484_ (##car _e84468480_))
                                       (_tl84488487_ (##cdr _e84468480_)))
                                   (if (gx#stx-pair/null? _tl84488487_)
                                       (if (fx>= (gx#stx-length _tl84488487_)
                                                 '0)
                                           (let ((_g30240_
                                                  (gx#syntax-split-splice
                                                   _tl84488487_
                                                   '0)))
                                             (begin
                                               (let ((_g30241_
                                                      (values-count _g30240_)))
                                                 (if (not (fx= _g30241_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30241_)))
                                               (let ((_target84498490_
                                                      (values-ref _g30240_ 0))
                                                     (_tl84518493_
                                                      (values-ref _g30240_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl84518493_)
                                                     (letrec ((_loop84528496_
                                                               (lambda (_hd84508500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause84568503_)
                         (if (gx#stx-pair? _hd84508500_)
                             (let ((_e84538506_ (gx#syntax-e _hd84508500_)))
                               (let ((_lp-hd84548510_ (##car _e84538506_))
                                     (_lp-tl84558513_ (##cdr _e84538506_)))
                                 (_loop84528496_
                                  _lp-tl84558513_
                                  (cons _lp-hd84548510_ _clause84568503_))))
                             (let ((_clause84578516_
                                    (reverse _clause84568503_)))
                               ((lambda (_L8520_ _L8522_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$e)
                                                    (cons _L8522_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '~case)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e)
                        (begin
                          '#!void
                          (foldr (lambda (_g85398542_ _g85408545_)
                                   (cons _g85398542_ _g85408545_))
                                 '()
                                 _L8520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _clause84578516_
                                _hd84478484_))))))
               (_loop84528496_ _target84498490_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g84398463_
                                                      _g84408467_)))))
                                           (_g84398463_ _g84408467_))
                                       (_g84398463_ _g84408467_))))
                               (_g84398463_ _g84408467_))))
                       (_g84398463_ _g84408467_)))))
            (_g84388548_ _$stx8435_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case|
      (lambda (_$stx8553_)
        (let ((_g85618659_
               (lambda (_g85628655_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g85628655_))))
          (let ((_g85608774_
                 (lambda (_g85628663_)
                   (if (gx#stx-pair? _g85628663_)
                       (let ((_e86338666_ (gx#syntax-e _g85628663_)))
                         (let ((_hd86348670_ (##car _e86338666_))
                               (_tl86358673_ (##cdr _e86338666_)))
                           (if (gx#stx-pair? _tl86358673_)
                               (let ((_e86368676_ (gx#syntax-e _tl86358673_)))
                                 (let ((_hd86378680_ (##car _e86368676_))
                                       (_tl86388683_ (##cdr _e86368676_)))
                                   (if (gx#stx-pair? _tl86388683_)
                                       (let ((_e86398686_
                                              (gx#syntax-e _tl86388683_)))
                                         (let ((_hd86408690_
                                                (##car _e86398686_))
                                               (_tl86418693_
                                                (##cdr _e86398686_)))
                                           (if (gx#stx-pair? _hd86408690_)
                                               (let ((_e86428696_
                                                      (gx#syntax-e
                                                       _hd86408690_)))
                                                 (let ((_hd86438700_
                                                        (##car _e86428696_))
                                                       (_tl86448703_
                                                        (##cdr _e86428696_)))
                                                   (if (gx#stx-pair/null?
                                                        _tl86448703_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl86448703_)
                         '0)
                   (let ((_g30242_ (gx#syntax-split-splice _tl86448703_ '0)))
                     (begin
                       (let ((_g30243_ (values-count _g30242_)))
                         (if (not (fx= _g30243_ 2))
                             (error "Context expects 2 values" _g30243_)))
                       (let ((_target86458706_ (values-ref _g30242_ 0))
                             (_tl86478709_ (values-ref _g30242_ 1)))
                         (if (gx#stx-null? _tl86478709_)
                             (letrec ((_loop86488712_
                                       (lambda (_hd86468716_ _body86528719_)
                                         (if (gx#stx-pair? _hd86468716_)
                                             (let ((_e86498722_
                                                    (gx#syntax-e
                                                     _hd86468716_)))
                                               (let ((_lp-hd86508726_
                                                      (##car _e86498722_))
                                                     (_lp-tl86518729_
                                                      (##cdr _e86498722_)))
                                                 (_loop86488712_
                                                  _lp-tl86518729_
                                                  (cons _lp-hd86508726_
                                                        _body86528719_))))
                                             (let ((_body86538732_
                                                    (reverse _body86528719_)))
                                               ((lambda (_L8736_
                                                         _L8738_
                                                         _L8739_
                                                         _L8740_
                                                         _L8741_)
                                                  (if (gx#stx-list? _L8739_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '~case-test)
                                (cons _L8740_ (cons _L8739_ '())))
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g87658768_
                                                        _g87668771_)
                                                 (cons _g87658768_
                                                       _g87668771_))
                                               '()
                                               _L8738_)))
                                (cons (cons _L8741_ (cons _L8740_ _L8736_))
                                      '()))))
              (_g85618659_ _g85628663_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl86418693_
                                                _body86538732_
                                                _hd86438700_
                                                _hd86378680_
                                                _hd86348670_))))))
                               (_loop86488712_ _target86458706_ '()))
                             (_g85618659_ _g85628663_)))))
                   (_g85618659_ _g85628663_))
               (_g85618659_ _g85628663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g85618659_ _g85628663_))))
                                       (_g85618659_ _g85628663_))))
                               (_g85618659_ _g85628663_))))
                       (_g85618659_ _g85628663_)))))
            (let ((_g85598870_
                   (lambda (_g85628778_)
                     (if (gx#stx-pair? _g85628778_)
                         (let ((_e86108781_ (gx#syntax-e _g85628778_)))
                           (let ((_hd86118785_ (##car _e86108781_))
                                 (_tl86128788_ (##cdr _e86108781_)))
                             (if (gx#stx-pair? _tl86128788_)
                                 (let ((_e86138791_
                                        (gx#syntax-e _tl86128788_)))
                                   (let ((_hd86148795_ (##car _e86138791_))
                                         (_tl86158798_ (##cdr _e86138791_)))
                                     (if (gx#stx-pair? _tl86158798_)
                                         (let ((_e86168801_
                                                (gx#syntax-e _tl86158798_)))
                                           (let ((_hd86178805_
                                                  (##car _e86168801_))
                                                 (_tl86188808_
                                                  (##cdr _e86168801_)))
                                             (if (gx#stx-pair? _hd86178805_)
                                                 (let ((_e86198811_
                                                        (gx#syntax-e
                                                         _hd86178805_)))
                                                   (let ((_hd86208815_
                                                          (##car _e86198811_))
                                                         (_tl86218818_
                                                          (##cdr _e86198811_)))
                                                     (if (gx#stx-pair?
                                                          _tl86218818_)
                                                         (let ((_e86228821_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl86218818_)))
                   (let ((_hd86238825_ (##car _e86228821_))
                         (_tl86248828_ (##cdr _e86228821_)))
                     (if (gx#identifier? _hd86238825_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<sugar>::<sugar:2>[1]#_g30244_|
                              _hd86238825_)
                             (if (gx#stx-pair? _tl86248828_)
                                 (let ((_e86258831_
                                        (gx#syntax-e _tl86248828_)))
                                   (let ((_hd86268835_ (##car _e86258831_))
                                         (_tl86278838_ (##cdr _e86258831_)))
                                     (if (gx#stx-null? _tl86278838_)
                                         ((lambda (_L8841_
                                                   _L8843_
                                                   _L8844_
                                                   _L8845_
                                                   _L8846_)
                                            (if (gx#stx-list? _L8844_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '~case-test)
                          (cons _L8845_ (cons _L8844_ '())))
                    (cons (cons _L8843_ (cons _L8845_ '()))
                          (cons (cons _L8846_ (cons _L8845_ _L8841_)) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g85608774_ _g85628778_)))
                                          _tl86188808_
                                          _hd86268835_
                                          _hd86208815_
                                          _hd86148795_
                                          _hd86118785_)
                                         (_g85608774_ _g85628778_))))
                                 (_g85608774_ _g85628778_))
                             (_g85608774_ _g85628778_))
                         (_g85608774_ _g85628778_))))
                 (_g85608774_ _g85628778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g85608774_ _g85628778_))))
                                         (_g85608774_ _g85628778_))))
                                 (_g85608774_ _g85628778_))))
                         (_g85608774_ _g85628778_)))))
              (let ((_g85588934_
                     (lambda (_g85628874_)
                       (if (gx#stx-pair? _g85628874_)
                           (let ((_e85938877_ (gx#syntax-e _g85628874_)))
                             (let ((_hd85948881_ (##car _e85938877_))
                                   (_tl85958884_ (##cdr _e85938877_)))
                               (if (gx#stx-pair? _tl85958884_)
                                   (let ((_e85968887_
                                          (gx#syntax-e _tl85958884_)))
                                     (let ((_hd85978891_ (##car _e85968887_))
                                           (_tl85988894_ (##cdr _e85968887_)))
                                       (if (gx#stx-pair? _tl85988894_)
                                           (let ((_e85998897_
                                                  (gx#syntax-e _tl85988894_)))
                                             (let ((_hd86008901_
                                                    (##car _e85998897_))
                                                   (_tl86018904_
                                                    (##cdr _e85998897_)))
                                               (if (gx#stx-pair? _hd86008901_)
                                                   (let ((_e86028907_
                                                          (gx#syntax-e
                                                           _hd86008901_)))
                                                     (let ((_hd86038911_
                                                            (##car _e86028907_))
                                                           (_tl86048914_
                                                            (##cdr _e86028907_)))
                                                       (if (gx#identifier?
                                                            _hd86038911_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g30245_|
                                                                _hd86038911_)
                                                               ((lambda (_L8917_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'syntax-error)
                                (cons '"Bad syntax; misplaced else" '())))
                        _hd85978891_)
                       (_g85598870_ _g85628874_))
                   (_g85598870_ _g85628874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g85598870_ _g85628874_))))
                                           (_g85598870_ _g85628874_))))
                                   (_g85598870_ _g85628874_))))
                           (_g85598870_ _g85628874_)))))
                (let ((_g85579042_
                       (lambda (_g85628938_)
                         (if (gx#stx-pair? _g85628938_)
                             (let ((_e85718941_ (gx#syntax-e _g85628938_)))
                               (let ((_hd85728945_ (##car _e85718941_))
                                     (_tl85738948_ (##cdr _e85718941_)))
                                 (if (gx#stx-pair? _tl85738948_)
                                     (let ((_e85748951_
                                            (gx#syntax-e _tl85738948_)))
                                       (let ((_hd85758955_ (##car _e85748951_))
                                             (_tl85768958_
                                              (##cdr _e85748951_)))
                                         (if (gx#stx-pair? _tl85768958_)
                                             (let ((_e85778961_
                                                    (gx#syntax-e
                                                     _tl85768958_)))
                                               (let ((_hd85788965_
                                                      (##car _e85778961_))
                                                     (_tl85798968_
                                                      (##cdr _e85778961_)))
                                                 (if (gx#stx-pair?
                                                      _hd85788965_)
                                                     (let ((_e85808971_
                                                            (gx#syntax-e
                                                             _hd85788965_)))
                                                       (let ((_hd85818975_
                                                              (##car _e85808971_))
                                                             (_tl85828978_
                                                              (##cdr _e85808971_)))
                                                         (if (gx#identifier?
                                                              _hd85818975_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<sugar>::<sugar:2>[1]#_g30246_|
                          _hd85818975_)
                         (if (gx#stx-pair/null? _tl85828978_)
                             (if (fx>= (gx#stx-length _tl85828978_) '0)
                                 (let ((_g30247_
                                        (gx#syntax-split-splice
                                         _tl85828978_
                                         '0)))
                                   (begin
                                     (let ((_g30248_ (values-count _g30247_)))
                                       (if (not (fx= _g30248_ 2))
                                           (error "Context expects 2 values"
                                                  _g30248_)))
                                     (let ((_target85838981_
                                            (values-ref _g30247_ 0))
                                           (_tl85858984_
                                            (values-ref _g30247_ 1)))
                                       (if (gx#stx-null? _tl85858984_)
                                           (letrec ((_loop85868987_
                                                     (lambda (_hd85848991_
                                                              _body85908994_)
                                                       (if (gx#stx-pair?
                                                            _hd85848991_)
                                                           (let ((_e85878997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd85848991_)))
                     (let ((_lp-hd85889001_ (##car _e85878997_))
                           (_lp-tl85899004_ (##cdr _e85878997_)))
                       (_loop85868987_
                        _lp-tl85899004_
                        (cons _lp-hd85889001_ _body85908994_))))
                   (let ((_body85919007_ (reverse _body85908994_)))
                     (if (gx#stx-null? _tl85798968_)
                         ((lambda (_L9011_ _L9013_)
                            (cons (gx#datum->syntax '#f 'begin)
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g90339036_ _g90349039_)
                                             (cons _g90339036_ _g90349039_))
                                           '()
                                           _L9011_))))
                          _body85919007_
                          _hd85758955_)
                         (_g85588934_ _g85628938_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop85868987_
                                              _target85838981_
                                              '()))
                                           (_g85588934_ _g85628938_)))))
                                 (_g85588934_ _g85628938_))
                             (_g85588934_ _g85628938_))
                         (_g85588934_ _g85628938_))
                     (_g85588934_ _g85628938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g85588934_
                                                      _g85628938_))))
                                             (_g85588934_ _g85628938_))))
                                     (_g85588934_ _g85628938_))))
                             (_g85588934_ _g85628938_)))))
                  (let ((_g85569073_
                         (lambda (_g85629046_)
                           (if (gx#stx-pair? _g85629046_)
                               (let ((_e85639049_ (gx#syntax-e _g85629046_)))
                                 (let ((_hd85649053_ (##car _e85639049_))
                                       (_tl85659056_ (##cdr _e85639049_)))
                                   (if (gx#stx-pair? _tl85659056_)
                                       (let ((_e85669059_
                                              (gx#syntax-e _tl85659056_)))
                                         (let ((_hd85679063_
                                                (##car _e85669059_))
                                               (_tl85689066_
                                                (##cdr _e85669059_)))
                                           (if (gx#stx-null? _tl85689066_)
                                               ((lambda () '#!void))
                                               (_g85579042_ _g85629046_))))
                                       (_g85579042_ _g85629046_))))
                               (_g85579042_ _g85629046_)))))
                    (_g85569073_ _$stx8553_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case-test|
      (lambda (_stx9079_)
        (let ((_memq-datum?9082_
               (lambda (_x9444_)
                 (let ((_e9447_ (gx#stx-e _x9444_)))
                   (let ((_$e9450_ (symbol? _e9447_)))
                     (if _$e9450_
                         _$e9450_
                         (let ((_$e9454_ (keyword? _e9447_)))
                           (if _$e9454_ _$e9454_ (immediate? _e9447_)))))))))
          (let ((_memv-datum?9084_
                 (lambda (_x9437_)
                   (let ((_$e9440_ (_memq-datum?9082_ _x9437_)))
                     (if _$e9440_ _$e9440_ (gx#stx-number? _x9437_))))))
            (let ((_g90889139_
                   (lambda (_g90899135_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g90899135_))))
              (let ((_g90879284_
                     (lambda (_g90899143_)
                       (if (gx#stx-pair? _g90899143_)
                           (let ((_e91169146_ (gx#syntax-e _g90899143_)))
                             (let ((_hd91179150_ (##car _e91169146_))
                                   (_tl91189153_ (##cdr _e91169146_)))
                               (if (gx#stx-pair? _tl91189153_)
                                   (let ((_e91199156_
                                          (gx#syntax-e _tl91189153_)))
                                     (let ((_hd91209160_ (##car _e91199156_))
                                           (_tl91219163_ (##cdr _e91199156_)))
                                       (if (gx#stx-pair? _tl91219163_)
                                           (let ((_e91229166_
                                                  (gx#syntax-e _tl91219163_)))
                                             (let ((_hd91239170_
                                                    (##car _e91229166_))
                                                   (_tl91249173_
                                                    (##cdr _e91229166_)))
                                               (if (gx#stx-pair/null?
                                                    _hd91239170_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd91239170_)
                                                             '0)
                                                       (let ((_g30249_
                                                              (gx#syntax-split-splice
                                                               _hd91239170_
                                                               '0)))
                                                         (begin
                                                           (let ((_g30250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g30249_)))
                     (if (not (fx= _g30250_ 2))
                         (error "Context expects 2 values" _g30250_)))
                   (let ((_target91259176_ (values-ref _g30249_ 0))
                         (_tl91279179_ (values-ref _g30249_ 1)))
                     (if (gx#stx-null? _tl91279179_)
                         (letrec ((_loop91289182_
                                   (lambda (_hd91269186_ _datum91329189_)
                                     (if (gx#stx-pair? _hd91269186_)
                                         (let ((_e91299192_
                                                (gx#syntax-e _hd91269186_)))
                                           (let ((_lp-hd91309196_
                                                  (##car _e91299192_))
                                                 (_lp-tl91319199_
                                                  (##cdr _e91299192_)))
                                             (_loop91289182_
                                              _lp-tl91319199_
                                              (cons _lp-hd91309196_
                                                    _datum91329189_))))
                                         (let ((_datum91339202_
                                                (reverse _datum91329189_)))
                                           (if (gx#stx-null? _tl91249173_)
                                               ((lambda (_L9206_ _L9208_)
                                                  (let ((_g92299237_
                                                         (lambda (_g92309233_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g92309233_))))
                                                    (let ((_g92289264_
                                                           (lambda (_g92309241_)
                                                             ((lambda (_L9244_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9244_
                                (cons _L9208_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons (begin
                                                          '#!void
                                                          (foldr (lambda (_g92559258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g92569261_)
                           (cons _g92559258_ _g92569261_))
                         '()
                         _L9206_))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _g92309241_))))
              (_g92289264_
               (if (gx#stx-andmap
                    _memq-datum?9082_
                    (begin
                      '#!void
                      (foldr (lambda (_g92679270_ _g92689273_)
                               (cons _g92679270_ _g92689273_))
                             '()
                             _L9206_)))
                   (gx#datum->syntax '#f 'memq)
                   (if (gx#stx-andmap
                        _memv-datum?9084_
                        (begin
                          '#!void
                          (foldr (lambda (_g92759278_ _g92769281_)
                                   (cons _g92759278_ _g92769281_))
                                 '()
                                 _L9206_)))
                       (gx#datum->syntax '#f 'memv)
                       (gx#datum->syntax '#f 'member)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _datum91339202_
                                                _hd91209160_)
                                               (_g90889139_ _g90899143_)))))))
                           (_loop91289182_ _target91259176_ '()))
                         (_g90889139_ _g90899143_)))))
               (_g90889139_ _g90899143_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90889139_ _g90899143_))))
                                           (_g90889139_ _g90899143_))))
                                   (_g90889139_ _g90899143_))))
                           (_g90889139_ _g90899143_)))))
                (let ((_g90869381_
                       (lambda (_g90899288_)
                         (if (gx#stx-pair? _g90899288_)
                             (let ((_e91029291_ (gx#syntax-e _g90899288_)))
                               (let ((_hd91039295_ (##car _e91029291_))
                                     (_tl91049298_ (##cdr _e91029291_)))
                                 (if (gx#stx-pair? _tl91049298_)
                                     (let ((_e91059301_
                                            (gx#syntax-e _tl91049298_)))
                                       (let ((_hd91069305_ (##car _e91059301_))
                                             (_tl91079308_
                                              (##cdr _e91059301_)))
                                         (if (gx#stx-pair? _tl91079308_)
                                             (let ((_e91089311_
                                                    (gx#syntax-e
                                                     _tl91079308_)))
                                               (let ((_hd91099315_
                                                      (##car _e91089311_))
                                                     (_tl91109318_
                                                      (##cdr _e91089311_)))
                                                 (if (gx#stx-pair?
                                                      _hd91099315_)
                                                     (let ((_e91119321_
                                                            (gx#syntax-e
                                                             _hd91099315_)))
                                                       (let ((_hd91129325_
                                                              (##car _e91119321_))
                                                             (_tl91139328_
                                                              (##cdr _e91119321_)))
                                                         (if (gx#stx-null?
                                                              _tl91139328_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl91109318_)
                         ((lambda (_L9331_ _L9333_)
                            (let ((_g93509358_
                                   (lambda (_g93519354_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g93519354_))))
                              (let ((_g93499377_
                                     (lambda (_g93519362_)
                                       ((lambda (_L9365_)
                                          (let ()
                                            (cons _L9365_
                                                  (cons _L9333_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L9331_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g93519362_))))
                                (_g93499377_
                                 (if (_memq-datum?9082_ _L9331_)
                                     (gx#datum->syntax '#f 'eq?)
                                     (if (_memv-datum?9084_ _L9331_)
                                         (gx#datum->syntax '#f 'eqv?)
                                         (gx#datum->syntax '#f 'equal?)))))))
                          _hd91129325_
                          _hd91069305_)
                         (_g90879284_ _g90899288_))
                     (_g90879284_ _g90899288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90879284_
                                                      _g90899288_))))
                                             (_g90879284_ _g90899288_))))
                                     (_g90879284_ _g90899288_))))
                             (_g90879284_ _g90899288_)))))
                  (let ((_g90859433_
                         (lambda (_g90899385_)
                           (if (gx#stx-pair? _g90899385_)
                               (let ((_e90919388_ (gx#syntax-e _g90899385_)))
                                 (let ((_hd90929392_ (##car _e90919388_))
                                       (_tl90939395_ (##cdr _e90919388_)))
                                   (if (gx#stx-pair? _tl90939395_)
                                       (let ((_e90949398_
                                              (gx#syntax-e _tl90939395_)))
                                         (let ((_hd90959402_
                                                (##car _e90949398_))
                                               (_tl90969405_
                                                (##cdr _e90949398_)))
                                           (if (gx#stx-pair? _tl90969405_)
                                               (let ((_e90979408_
                                                      (gx#syntax-e
                                                       _tl90969405_)))
                                                 (let ((_hd90989412_
                                                        (##car _e90979408_))
                                                       (_tl90999415_
                                                        (##cdr _e90979408_)))
                                                   (if (gx#stx-null?
                                                        _hd90989412_)
                                                       (if (gx#stx-null?
                                                            _tl90999415_)
                                                           ((lambda (_L9418_)
                                                              '#f)
                                                            _hd90959402_)
                                                           (_g90869381_
                                                            _g90899385_))
                                                       (_g90869381_
                                                        _g90899385_))))
                                               (_g90869381_ _g90899385_))))
                                       (_g90869381_ _g90899385_))))
                               (_g90869381_ _g90899385_)))))
                    (_g90859433_ _stx9079_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do|
      (lambda (_$stx9459_)
        (let ((_g94639534_
               (lambda (_g94649530_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g94649530_))))
          (let ((_g94629823_
                 (lambda (_g94649538_)
                   (if (gx#stx-pair? _g94649538_)
                       (let ((_e94719541_ (gx#syntax-e _g94649538_)))
                         (let ((_hd94729545_ (##car _e94719541_))
                               (_tl94739548_ (##cdr _e94719541_)))
                           (if (gx#stx-pair? _tl94739548_)
                               (let ((_e94749551_ (gx#syntax-e _tl94739548_)))
                                 (let ((_hd94759555_ (##car _e94749551_))
                                       (_tl94769558_ (##cdr _e94749551_)))
                                   (if (gx#stx-pair/null? _hd94759555_)
                                       (if (fx>= (gx#stx-length _hd94759555_)
                                                 '0)
                                           (let ((_g30251_
                                                  (gx#syntax-split-splice
                                                   _hd94759555_
                                                   '0)))
                                             (begin
                                               (let ((_g30252_
                                                      (values-count _g30251_)))
                                                 (if (not (fx= _g30252_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30252_)))
                                               (let ((_target94779561_
                                                      (values-ref _g30251_ 0))
                                                     (_tl94799564_
                                                      (values-ref _g30251_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl94799564_)
                                                     (letrec ((_loop94809567_
                                                               (lambda (_hd94789571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _step94849574_
                                _init94859576_
                                _var94869578_)
                         (if (gx#stx-pair? _hd94789571_)
                             (let ((_e94819581_ (gx#syntax-e _hd94789571_)))
                               (let ((_lp-hd94829585_ (##car _e94819581_))
                                     (_lp-tl94839588_ (##cdr _e94819581_)))
                                 (if (gx#stx-pair? _lp-hd94829585_)
                                     (let ((_e94909591_
                                            (gx#syntax-e _lp-hd94829585_)))
                                       (let ((_hd94919595_ (##car _e94909591_))
                                             (_tl94929598_
                                              (##cdr _e94909591_)))
                                         (if (gx#stx-pair? _tl94929598_)
                                             (let ((_e94939601_
                                                    (gx#syntax-e
                                                     _tl94929598_)))
                                               (let ((_hd94949605_
                                                      (##car _e94939601_))
                                                     (_tl94959608_
                                                      (##cdr _e94939601_)))
                                                 (if (gx#stx-pair/null?
                                                      _tl94959608_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl94959608_)
                                                               '0)
                                                         (let ((_g30253_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94959608_
                         '0)))
                   (begin
                     (let ((_g30254_ (values-count _g30253_)))
                       (if (not (fx= _g30254_ 2))
                           (error "Context expects 2 values" _g30254_)))
                     (let ((_target94969611_ (values-ref _g30253_ 0))
                           (_tl94989614_ (values-ref _g30253_ 1)))
                       (if (gx#stx-null? _tl94989614_)
                           (letrec ((_loop94999617_
                                     (lambda (_hd94979621_ _step95039624_)
                                       (if (gx#stx-pair? _hd94979621_)
                                           (let ((_e95009627_
                                                  (gx#syntax-e _hd94979621_)))
                                             (let ((_lp-hd95019631_
                                                    (##car _e95009627_))
                                                   (_lp-tl95029634_
                                                    (##cdr _e95009627_)))
                                               (_loop94999617_
                                                _lp-tl95029634_
                                                (cons _lp-hd95019631_
                                                      _step95039624_))))
                                           (let ((_step95049637_
                                                  (reverse _step95039624_)))
                                             (_loop94809567_
                                              _lp-tl94839588_
                                              (cons _step95049637_
                                                    _step94849574_)
                                              (cons _hd94949605_
                                                    _init94859576_)
                                              (cons _hd94919595_
                                                    _var94869578_)))))))
                             (_loop94999617_ _target94969611_ '()))
                           (_g94639534_ _g94649538_)))))
                 (_g94639534_ _g94649538_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94639534_
                                                      _g94649538_))))
                                             (_g94639534_ _g94649538_))))
                                     (_g94639534_ _g94649538_))))
                             (let ((_step94879641_ (reverse _step94849574_))
                                   (_init94889644_ (reverse _init94859576_))
                                   (_var94899646_ (reverse _var94869578_)))
                               (if (gx#stx-pair? _tl94769558_)
                                   (let ((_e95059649_
                                          (gx#syntax-e _tl94769558_)))
                                     (let ((_hd95069653_ (##car _e95059649_))
                                           (_tl95079656_ (##cdr _e95059649_)))
                                       (if (gx#stx-pair? _hd95069653_)
                                           (let ((_e95089659_
                                                  (gx#syntax-e _hd95069653_)))
                                             (let ((_hd95099663_
                                                    (##car _e95089659_))
                                                   (_tl95109666_
                                                    (##cdr _e95089659_)))
                                               (if (gx#stx-pair/null?
                                                    _tl95109666_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl95109666_)
                                                             '0)
                                                       (let ((_g30255_
                                                              (gx#syntax-split-splice
                                                               _tl95109666_
                                                               '0)))
                                                         (begin
                                                           (let ((_g30256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g30255_)))
                     (if (not (fx= _g30256_ 2))
                         (error "Context expects 2 values" _g30256_)))
                   (let ((_target95119669_ (values-ref _g30255_ 0))
                         (_tl95139672_ (values-ref _g30255_ 1)))
                     (if (gx#stx-null? _tl95139672_)
                         (letrec ((_loop95149675_
                                   (lambda (_hd95129679_ _fini95189682_)
                                     (if (gx#stx-pair? _hd95129679_)
                                         (let ((_e95159685_
                                                (gx#syntax-e _hd95129679_)))
                                           (let ((_lp-hd95169689_
                                                  (##car _e95159685_))
                                                 (_lp-tl95179692_
                                                  (##cdr _e95159685_)))
                                             (_loop95149675_
                                              _lp-tl95179692_
                                              (cons _lp-hd95169689_
                                                    _fini95189682_))))
                                         (let ((_fini95199695_
                                                (reverse _fini95189682_)))
                                           (if (gx#stx-pair/null? _tl95079656_)
                                               (if (fx>= (gx#stx-length
                                                          _tl95079656_)
                                                         '0)
                                                   (let ((_g30257_
                                                          (gx#syntax-split-splice
                                                           _tl95079656_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30258_
                                                              (values-count
                                                               _g30257_)))
                                                         (if (not (fx= _g30258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30258_)))
               (let ((_target95209699_ (values-ref _g30257_ 0))
                     (_tl95229702_ (values-ref _g30257_ 1)))
                 (if (gx#stx-null? _tl95229702_)
                     (letrec ((_loop95239705_
                               (lambda (_hd95219709_ _body95279712_)
                                 (if (gx#stx-pair? _hd95219709_)
                                     (let ((_e95249715_
                                            (gx#syntax-e _hd95219709_)))
                                       (let ((_lp-hd95259719_
                                              (##car _e95249715_))
                                             (_lp-tl95269722_
                                              (##cdr _e95249715_)))
                                         (_loop95239705_
                                          _lp-tl95269722_
                                          (cons _lp-hd95259719_
                                                _body95279712_))))
                                     (let ((_body95289725_
                                            (reverse _body95279712_)))
                                       ((lambda (_L9729_
                                                 _L9731_
                                                 _L9732_
                                                 _L9733_
                                                 _L9734_
                                                 _L9735_)
                                          (if (gx#stx-andmap
                                               gx#identifier?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g97689771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97699774_)
                  (cons _g97689771_ _g97699774_))
                '()
                _L9735_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$loop)
                                                          (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-check-splice-targets _L9734_ _L9735_)
                          (foldr (lambda (_g97769789_ _g97779792_ _g97789794_)
                                   (cons (cons _g97779792_
                                               (cons _g97769789_ '()))
                                         _g97789794_))
                                 '()
                                 _L9734_
                                 _L9735_))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'not)
                                                (cons _L9732_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g97799797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g97809800_)
                         (cons _g97799797_ _g97809800_))
                       (cons (cons (gx#datum->syntax '#f '$loop)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _L9733_
                                      _L9735_)
                                     (foldr (lambda (_g97819803_
                                                     _g97829806_
                                                     _g97839808_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons _g97829806_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g97849811_ _g97859814_)
                                   (cons _g97849811_ _g97859814_))
                                 '()
                                 _g97819803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g97839808_))
                                            '()
                                            _L9733_
                                            _L9735_)))
                             '())
                       _L9729_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g97869817_ _g97879820_)
                                     (cons _g97869817_ _g97879820_))
                                   '()
                                   _L9731_))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g94639534_ _g94649538_)))
                                        _body95289725_
                                        _fini95199695_
                                        _hd95099663_
                                        _step94879641_
                                        _init94889644_
                                        _var94899646_))))))
                       (_loop95239705_ _target95209699_ '()))
                     (_g94639534_ _g94649538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94639534_ _g94649538_))
                                               (_g94639534_ _g94649538_)))))))
                           (_loop95149675_ _target95119669_ '()))
                         (_g94639534_ _g94649538_)))))
               (_g94639534_ _g94649538_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94639534_ _g94649538_))))
                                           (_g94639534_ _g94649538_))))
                                   (_g94639534_ _g94649538_)))))))
               (_loop94809567_ _target94779561_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94639534_
                                                      _g94649538_)))))
                                           (_g94639534_ _g94649538_))
                                       (_g94639534_ _g94649538_))))
                               (_g94639534_ _g94649538_))))
                       (_g94639534_ _g94649538_)))))
            (_g94629823_ _$stx9459_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do-while|
      (lambda (_$stx9831_)
        (let ((_g98359858_
               (lambda (_g98369854_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g98369854_))))
          (let ((_g98349929_
                 (lambda (_g98369862_)
                   (if (gx#stx-pair? _g98369862_)
                       (let ((_e98419865_ (gx#syntax-e _g98369862_)))
                         (let ((_hd98429869_ (##car _e98419865_))
                               (_tl98439872_ (##cdr _e98419865_)))
                           (if (gx#stx-pair? _tl98439872_)
                               (let ((_e98449875_ (gx#syntax-e _tl98439872_)))
                                 (let ((_hd98459879_ (##car _e98449875_))
                                       (_tl98469882_ (##cdr _e98449875_)))
                                   (if (gx#stx-pair? _tl98469882_)
                                       (let ((_e98479885_
                                              (gx#syntax-e _tl98469882_)))
                                         (let ((_hd98489889_
                                                (##car _e98479885_))
                                               (_tl98499892_
                                                (##cdr _e98479885_)))
                                           (if (gx#stx-pair? _hd98489889_)
                                               (let ((_e98509895_
                                                      (gx#syntax-e
                                                       _hd98489889_)))
                                                 (let ((_hd98519899_
                                                        (##car _e98509895_))
                                                       (_tl98529902_
                                                        (##cdr _e98509895_)))
                                                   ((lambda (_L9905_
                                                             _L9907_
                                                             _L9908_
                                                             _L9909_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'do)
                                                            (cons _L9909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (gx#datum->syntax '#f 'not)
                                            (cons _L9908_ '()))
                                      _L9907_)
                                _L9905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl98499892_
                                                    _tl98529902_
                                                    _hd98519899_
                                                    _hd98459879_)))
                                               (_g98359858_ _g98369862_))))
                                       (_g98359858_ _g98369862_))))
                               (_g98359858_ _g98369862_))))
                       (_g98359858_ _g98369862_)))))
            (_g98349929_ _$stx9831_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#begin0|
      (lambda (_$stx9933_)
        (let ((_g99389969_
               (lambda (_g99399965_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g99399965_))))
          (let ((_g993710054_
                 (lambda (_g99399973_)
                   (if (gx#stx-pair? _g99399973_)
                       (let ((_e99499976_ (gx#syntax-e _g99399973_)))
                         (let ((_hd99509980_ (##car _e99499976_))
                               (_tl99519983_ (##cdr _e99499976_)))
                           (if (gx#stx-pair? _tl99519983_)
                               (let ((_e99529986_ (gx#syntax-e _tl99519983_)))
                                 (let ((_hd99539990_ (##car _e99529986_))
                                       (_tl99549993_ (##cdr _e99529986_)))
                                   (if (gx#stx-pair/null? _tl99549993_)
                                       (if (fx>= (gx#stx-length _tl99549993_)
                                                 '0)
                                           (let ((_g30259_
                                                  (gx#syntax-split-splice
                                                   _tl99549993_
                                                   '0)))
                                             (begin
                                               (let ((_g30260_
                                                      (values-count _g30259_)))
                                                 (if (not (fx= _g30260_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30260_)))
                                               (let ((_target99559996_
                                                      (values-ref _g30259_ 0))
                                                     (_tl99579999_
                                                      (values-ref _g30259_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl99579999_)
                                                     (letrec ((_loop995810002_
                                                               (lambda (_hd995610006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _rest996210009_)
                         (if (gx#stx-pair? _hd995610006_)
                             (let ((_e995910012_ (gx#syntax-e _hd995610006_)))
                               (let ((_lp-hd996010016_ (##car _e995910012_))
                                     (_lp-tl996110019_ (##cdr _e995910012_)))
                                 (_loop995810002_
                                  _lp-tl996110019_
                                  (cons _lp-hd996010016_ _rest996210009_))))
                             (let ((_rest996310022_ (reverse _rest996210009_)))
                               ((lambda (_L10026_ _L10028_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$r)
                                                    (cons _L10028_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '%#expression)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              (begin
                                '#!void
                                (foldr (lambda (_g1004510048_ _g1004610051_)
                                         (cons _g1004510048_ _g1004610051_))
                                       '()
                                       _L10026_)))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$r)
                                                          '())))))
                                _rest996310022_
                                _hd99539990_))))))
               (_loop995810002_ _target99559996_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g99389969_
                                                      _g99399973_)))))
                                           (_g99389969_ _g99399973_))
                                       (_g99389969_ _g99399973_))))
                               (_g99389969_ _g99399973_))))
                       (_g99389969_ _g99399973_)))))
            (let ((_g993610094_
                   (lambda (_g993910058_)
                     (if (gx#stx-pair? _g993910058_)
                         (let ((_e994110061_ (gx#syntax-e _g993910058_)))
                           (let ((_hd994210065_ (##car _e994110061_))
                                 (_tl994310068_ (##cdr _e994110061_)))
                             (if (gx#stx-pair? _tl994310068_)
                                 (let ((_e994410071_
                                        (gx#syntax-e _tl994310068_)))
                                   (let ((_hd994510075_ (##car _e994410071_))
                                         (_tl994610078_ (##cdr _e994410071_)))
                                     (if (gx#stx-null? _tl994610078_)
                                         ((lambda (_L10081_) _L10081_)
                                          _hd994510075_)
                                         (_g993710054_ _g993910058_))))
                                 (_g993710054_ _g993910058_))))
                         (_g993710054_ _g993910058_)))))
              (_g993610094_ _$stx9933_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#rec|
      (lambda (_$stx10099_)
        (let ((_g1010510158_
               (lambda (_g1010610154_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1010610154_))))
          (let ((_g1010410257_
                 (lambda (_g1010610162_)
                   (if (gx#stx-pair? _g1010610162_)
                       (let ((_e1013510165_ (gx#syntax-e _g1010610162_)))
                         (let ((_hd1013610169_ (##car _e1013510165_))
                               (_tl1013710172_ (##cdr _e1013510165_)))
                           (if (gx#stx-pair? _tl1013710172_)
                               (let ((_e1013810175_
                                      (gx#syntax-e _tl1013710172_)))
                                 (let ((_hd1013910179_ (##car _e1013810175_))
                                       (_tl1014010182_ (##cdr _e1013810175_)))
                                   (if (gx#stx-pair? _hd1013910179_)
                                       (let ((_e1014110185_
                                              (gx#syntax-e _hd1013910179_)))
                                         (let ((_hd1014210189_
                                                (##car _e1014110185_))
                                               (_tl1014310192_
                                                (##cdr _e1014110185_)))
                                           (if (gx#stx-pair/null?
                                                _tl1014010182_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1014010182_)
                                                         '0)
                                                   (let ((_g30261_
                                                          (gx#syntax-split-splice
                                                           _tl1014010182_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30262_
                                                              (values-count
                                                               _g30261_)))
                                                         (if (not (fx= _g30262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30262_)))
               (let ((_target1014410195_ (values-ref _g30261_ 0))
                     (_tl1014610198_ (values-ref _g30261_ 1)))
                 (if (gx#stx-null? _tl1014610198_)
                     (letrec ((_loop1014710201_
                               (lambda (_hd1014510205_ _body1015110208_)
                                 (if (gx#stx-pair? _hd1014510205_)
                                     (let ((_e1014810211_
                                            (gx#syntax-e _hd1014510205_)))
                                       (let ((_lp-hd1014910215_
                                              (##car _e1014810211_))
                                             (_lp-tl1015010218_
                                              (##cdr _e1014810211_)))
                                         (_loop1014710201_
                                          _lp-tl1015010218_
                                          (cons _lp-hd1014910215_
                                                _body1015110208_))))
                                     (let ((_body1015210221_
                                            (reverse _body1015110208_)))
                                       ((lambda (_L10225_ _L10227_ _L10228_)
                                          (if (gx#identifier? _L10228_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec)
                                                    (cons (cons (cons _L10228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons _L10227_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1024810251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1024910254_)
                   (cons _g1024810251_ _g1024910254_))
                 '()
                 _L10225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L10228_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1010510158_ _g1010610162_)))
                                        _body1015210221_
                                        _tl1014310192_
                                        _hd1014210189_))))))
                       (_loop1014710201_ _target1014410195_ '()))
                     (_g1010510158_ _g1010610162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1010510158_
                                                    _g1010610162_))
                                               (_g1010510158_ _g1010610162_))))
                                       (_g1010510158_ _g1010610162_))))
                               (_g1010510158_ _g1010610162_))))
                       (_g1010510158_ _g1010610162_)))))
            (let ((_g1010310323_
                   (lambda (_g1010610261_)
                     (if (gx#stx-pair? _g1010610261_)
                         (let ((_e1012010264_ (gx#syntax-e _g1010610261_)))
                           (let ((_hd1012110268_ (##car _e1012010264_))
                                 (_tl1012210271_ (##cdr _e1012010264_)))
                             (if (gx#stx-pair? _tl1012210271_)
                                 (let ((_e1012310274_
                                        (gx#syntax-e _tl1012210271_)))
                                   (let ((_hd1012410278_ (##car _e1012310274_))
                                         (_tl1012510281_
                                          (##cdr _e1012310274_)))
                                     (if (gx#stx-pair? _hd1012410278_)
                                         (let ((_e1012610284_
                                                (gx#syntax-e _hd1012410278_)))
                                           (let ((_hd1012710288_
                                                  (##car _e1012610284_))
                                                 (_tl1012810291_
                                                  (##cdr _e1012610284_)))
                                             (if (gx#identifier?
                                                  _hd1012710288_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g30263_|
                                                      _hd1012710288_)
                                                     (if (gx#stx-pair?
                                                          _tl1012510281_)
                                                         (let ((_e1012910294_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1012510281_)))
                   (let ((_hd1013010298_ (##car _e1012910294_))
                         (_tl1013110301_ (##cdr _e1012910294_)))
                     (if (gx#stx-null? _tl1013110301_)
                         ((lambda (_L10304_ _L10306_)
                            (if (gx#identifier-list? _L10306_)
                                (cons (gx#datum->syntax '#f 'letrec-values)
                                      (cons (cons (cons _L10306_
                                                        (cons _L10304_ '()))
                                                  '())
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'values)
                                                        _L10306_)
                                                  '())))
                                (_g1010410257_ _g1010610261_)))
                          _hd1013010298_
                          _tl1012810291_)
                         (_g1010410257_ _g1010610261_))))
                 (_g1010410257_ _g1010610261_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1010410257_
                                                      _g1010610261_))
                                                 (_g1010410257_
                                                  _g1010610261_))))
                                         (_g1010410257_ _g1010610261_))))
                                 (_g1010410257_ _g1010610261_))))
                         (_g1010410257_ _g1010610261_)))))
              (let ((_g1010210377_
                     (lambda (_g1010610327_)
                       (if (gx#stx-pair? _g1010610327_)
                           (let ((_e1010910330_ (gx#syntax-e _g1010610327_)))
                             (let ((_hd1011010334_ (##car _e1010910330_))
                                   (_tl1011110337_ (##cdr _e1010910330_)))
                               (if (gx#stx-pair? _tl1011110337_)
                                   (let ((_e1011210340_
                                          (gx#syntax-e _tl1011110337_)))
                                     (let ((_hd1011310344_
                                            (##car _e1011210340_))
                                           (_tl1011410347_
                                            (##cdr _e1011210340_)))
                                       (if (gx#stx-pair? _tl1011410347_)
                                           (let ((_e1011510350_
                                                  (gx#syntax-e
                                                   _tl1011410347_)))
                                             (let ((_hd1011610354_
                                                    (##car _e1011510350_))
                                                   (_tl1011710357_
                                                    (##cdr _e1011510350_)))
                                               (if (gx#stx-null?
                                                    _tl1011710357_)
                                                   ((lambda (_L10360_ _L10362_)
                                                      (if (gx#identifier?
                                                           _L10362_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L10362_ (cons _L10360_ '())) '())
                              (cons _L10362_ '())))
                  (_g1010310323_ _g1010610327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1011610354_
                                                    _hd1011310344_)
                                                   (_g1010310323_
                                                    _g1010610327_))))
                                           (_g1010310323_ _g1010610327_))))
                                   (_g1010310323_ _g1010610327_))))
                           (_g1010310323_ _g1010610327_)))))
                (_g1010210377_ _$stx10099_)))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet|
      (lambda (_stx10382_)
        (let ((_let-head?10385_
               (lambda (_x10932_)
                 (let ((_g1093610947_
                        (lambda (_g1093710943_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1093710943_))))
                   (let ((_g1093510958_
                          (lambda (_g1093710951_)
                            ((lambda () (gx#identifier? _x10932_))))))
                     (let ((_g1093410988_
                            (lambda (_g1093710962_)
                              (if (gx#stx-pair? _g1093710962_)
                                  (let ((_e1093910965_
                                         (gx#syntax-e _g1093710962_)))
                                    (let ((_hd1094010969_
                                           (##car _e1093910965_))
                                          (_tl1094110972_
                                           (##cdr _e1093910965_)))
                                      (if (gx#identifier? _hd1094010969_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:2>[1]#_g30273_|
                                               _hd1094010969_)
                                              ((lambda (_L10975_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L10975_))
                                               _tl1094110972_)
                                              (_g1093510958_ _g1093710962_))
                                          (_g1093510958_ _g1093710962_))))
                                  (_g1093510958_ _g1093710962_)))))
                       (_g1093410988_ _x10932_)))))))
          (let ((_let-head10387_
                 (lambda (_x10872_)
                   (let ((_g1087610887_
                          (lambda (_g1087710883_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1087710883_))))
                     (let ((_g1087510898_
                            (lambda (_g1087710891_)
                              ((lambda () (list _x10872_))))))
                       (let ((_g1087410928_
                              (lambda (_g1087710902_)
                                (if (gx#stx-pair? _g1087710902_)
                                    (let ((_e1087910905_
                                           (gx#syntax-e _g1087710902_)))
                                      (let ((_hd1088010909_
                                             (##car _e1087910905_))
                                            (_tl1088110912_
                                             (##cdr _e1087910905_)))
                                        (if (gx#identifier? _hd1088010909_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:2>[1]#_g30272_|
                                                 _hd1088010909_)
                                                ((lambda (_L10915_) _L10915_)
                                                 _tl1088110912_)
                                                (_g1087510898_ _g1087710902_))
                                            (_g1087510898_ _g1087710902_))))
                                    (_g1087510898_ _g1087710902_)))))
                         (_g1087410928_ _x10872_)))))))
            (let ((_g1039010448_
                   (lambda (_g1039110444_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1039110444_))))
              (let ((_g1038910798_
                     (lambda (_g1039110452_)
                       (if (gx#stx-pair? _g1039110452_)
                           (let ((_e1041110455_ (gx#syntax-e _g1039110452_)))
                             (let ((_hd1041210459_ (##car _e1041110455_))
                                   (_tl1041310462_ (##cdr _e1041110455_)))
                               (if (gx#stx-pair? _tl1041310462_)
                                   (let ((_e1041410465_
                                          (gx#syntax-e _tl1041310462_)))
                                     (let ((_hd1041510469_
                                            (##car _e1041410465_))
                                           (_tl1041610472_
                                            (##cdr _e1041410465_)))
                                       (if (gx#stx-pair/null? _hd1041510469_)
                                           (if (fx>= (gx#stx-length
                                                      _hd1041510469_)
                                                     '0)
                                               (let ((_g30264_
                                                      (gx#syntax-split-splice
                                                       _hd1041510469_
                                                       '0)))
                                                 (begin
                                                   (let ((_g30265_
                                                          (values-count
                                                           _g30264_)))
                                                     (if (not (fx= _g30265_ 2))
                                                         (error "Context expects 2 values"
                                                                _g30265_)))
                                                   (let ((_target1041710475_
                                                          (values-ref
                                                           _g30264_
                                                           0))
                                                         (_tl1041910478_
                                                          (values-ref
                                                           _g30264_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl1041910478_)
                                                         (letrec ((_loop1042010481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1041810485_
                                    _e1042410488_
                                    _hd1042510490_)
                             (if (gx#stx-pair? _hd1041810485_)
                                 (let ((_e1042110493_
                                        (gx#syntax-e _hd1041810485_)))
                                   (let ((_lp-hd1042210497_
                                          (##car _e1042110493_))
                                         (_lp-tl1042310500_
                                          (##cdr _e1042110493_)))
                                     (if (gx#stx-pair? _lp-hd1042210497_)
                                         (let ((_e1042810503_
                                                (gx#syntax-e
                                                 _lp-hd1042210497_)))
                                           (let ((_hd1042910507_
                                                  (##car _e1042810503_))
                                                 (_tl1043010510_
                                                  (##cdr _e1042810503_)))
                                             (if (gx#stx-pair? _tl1043010510_)
                                                 (let ((_e1043110513_
                                                        (gx#syntax-e
                                                         _tl1043010510_)))
                                                   (let ((_hd1043210517_
                                                          (##car _e1043110513_))
                                                         (_tl1043310520_
                                                          (##cdr _e1043110513_)))
                                                     (if (gx#stx-null?
                                                          _tl1043310520_)
                                                         (_loop1042010481_
                                                          _lp-tl1042310500_
                                                          (cons _hd1043210517_
                                                                _e1042410488_)
                                                          (cons _hd1042910507_
                                                                _hd1042510490_))
                                                         (_g1039010448_
                                                          _g1039110452_))))
                                                 (_g1039010448_
                                                  _g1039110452_))))
                                         (_g1039010448_ _g1039110452_))))
                                 (let ((_e1042610523_ (reverse _e1042410488_))
                                       (_hd1042710526_
                                        (reverse _hd1042510490_)))
                                   (if (gx#stx-pair/null? _tl1041610472_)
                                       (if (fx>= (gx#stx-length _tl1041610472_)
                                                 '0)
                                           (let ((_g30266_
                                                  (gx#syntax-split-splice
                                                   _tl1041610472_
                                                   '0)))
                                             (begin
                                               (let ((_g30267_
                                                      (values-count _g30266_)))
                                                 (if (not (fx= _g30267_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30267_)))
                                               (let ((_target1043410529_
                                                      (values-ref _g30266_ 0))
                                                     (_tl1043610532_
                                                      (values-ref _g30266_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1043610532_)
                                                     (letrec ((_loop1043710535_
                                                               (lambda (_hd1043510539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body1044110542_)
                         (if (gx#stx-pair? _hd1043510539_)
                             (let ((_e1043810545_
                                    (gx#syntax-e _hd1043510539_)))
                               (let ((_lp-hd1043910549_ (##car _e1043810545_))
                                     (_lp-tl1044010552_ (##cdr _e1043810545_)))
                                 (_loop1043710535_
                                  _lp-tl1044010552_
                                  (cons _lp-hd1043910549_ _body1044110542_))))
                             (let ((_body1044210555_
                                    (reverse _body1044110542_)))
                               ((lambda (_L10559_ _L10561_ _L10562_)
                                  (if (gx#stx-andmap
                                       _let-head?10385_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1058510588_
                                                         _g1058610591_)
                                                  (cons _g1058510588_
                                                        _g1058610591_))
                                                '()
                                                _L10562_)))
                                      (let ((_g1059410627_
                                             (lambda (_g1059510623_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1059510623_))))
                                        (let ((_g1059310778_
                                               (lambda (_g1059510631_)
                                                 (if (gx#stx-pair?
                                                      _g1059510631_)
                                                     (let ((_e1059810634_
                                                            (gx#syntax-e
                                                             _g1059510631_)))
                                                       (let ((_hd1059910638_
                                                              (##car _e1059810634_))
                                                             (_tl1060010641_
                                                              (##cdr _e1059810634_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1059910638_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1059910638_)
                               '0)
                         (let ((_g30268_
                                (gx#syntax-split-splice _hd1059910638_ '0)))
                           (begin
                             (let ((_g30269_ (values-count _g30268_)))
                               (if (not (fx= _g30269_ 2))
                                   (error "Context expects 2 values"
                                          _g30269_)))
                             (let ((_target1060110644_ (values-ref _g30268_ 0))
                                   (_tl1060310647_ (values-ref _g30268_ 1)))
                               (if (gx#stx-null? _tl1060310647_)
                                   (letrec ((_loop1060410650_
                                             (lambda (_hd1060210654_
                                                      _$e1060810657_)
                                               (if (gx#stx-pair?
                                                    _hd1060210654_)
                                                   (let ((_e1060510660_
                                                          (gx#syntax-e
                                                           _hd1060210654_)))
                                                     (let ((_lp-hd1060610664_
                                                            (##car _e1060510660_))
                                                           (_lp-tl1060710667_
                                                            (##cdr _e1060510660_)))
                                                       (_loop1060410650_
                                                        _lp-tl1060710667_
                                                        (cons _lp-hd1060610664_
                                                              _$e1060810657_))))
                                                   (let ((_$e1060910670_
                                                          (reverse _$e1060810657_)))
                                                     (if (gx#stx-pair?
                                                          _tl1060010641_)
                                                         (let ((_e1061010674_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1060010641_)))
                   (let ((_hd1061110678_ (##car _e1061010674_))
                         (_tl1061210681_ (##cdr _e1061010674_)))
                     (if (gx#stx-pair/null? _hd1061110678_)
                         (if (fx>= (gx#stx-length _hd1061110678_) '0)
                             (let ((_g30270_
                                    (gx#syntax-split-splice
                                     _hd1061110678_
                                     '0)))
                               (begin
                                 (let ((_g30271_ (values-count _g30270_)))
                                   (if (not (fx= _g30271_ 2))
                                       (error "Context expects 2 values"
                                              _g30271_)))
                                 (let ((_target1061310684_
                                        (values-ref _g30270_ 0))
                                       (_tl1061510687_
                                        (values-ref _g30270_ 1)))
                                   (if (gx#stx-null? _tl1061510687_)
                                       (letrec ((_loop1061610690_
                                                 (lambda (_hd1061410694_
                                                          _hd-bind1062010697_)
                                                   (if (gx#stx-pair?
                                                        _hd1061410694_)
                                                       (let ((_e1061710700_
                                                              (gx#syntax-e
                                                               _hd1061410694_)))
                                                         (let ((_lp-hd1061810704_
                                                                (##car _e1061710700_))
                                                               (_lp-tl1061910707_
                                                                (##cdr _e1061710700_)))
                                                           (_loop1061610690_
                                                            _lp-tl1061910707_
                                                            (cons _lp-hd1061810704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd-bind1062010697_))))
               (let ((_hd-bind1062110710_ (reverse _hd-bind1062010697_)))
                 (if (gx#stx-null? _tl1061210681_)
                     ((lambda (_L10714_ _L10716_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let-values)
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _L10561_
                                         _L10716_)
                                        (foldr (lambda (_g1073910750_
                                                        _g1074010753_
                                                        _g1074110755_)
                                                 (cons (cons (cons _g1074010753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _g1073910750_ '()))
               _g1074110755_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _L10561_
                                               _L10716_))
                                      (cons (cons (gx#datum->syntax '#f 'and)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1074210758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1074310761_)
                     (cons _g1074210758_ _g1074310761_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L10716_
                                        _L10714_)
                                       (foldr (lambda (_g1074410764_
                                                       _g1074510767_
                                                       _g1074610769_)
                                                (cons (cons _g1074510767_
                                                            (cons _g1074410764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g1074610769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L10716_
                                              _L10714_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1074710772_
                                                       _g1074810775_)
                                                (cons _g1074710772_
                                                      _g1074810775_))
                                              '()
                                              _L10559_))))
                         '())
                   _L10716_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _hd-bind1062110710_
                      _$e1060910670_)
                     (_g1059410627_ _g1059510631_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1061610690_
                                          _target1061310684_
                                          '()))
                                       (_g1059410627_ _g1059510631_)))))
                             (_g1059410627_ _g1059510631_))
                         (_g1059410627_ _g1059510631_))))
                 (_g1059410627_ _g1059510631_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1060410650_ _target1060110644_ '()))
                                   (_g1059410627_ _g1059510631_)))))
                         (_g1059410627_ _g1059510631_))
                     (_g1059410627_ _g1059510631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1059410627_
                                                      _g1059510631_)))))
                                          (_g1059310778_
                                           (list (gx#gentemps
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1078110784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1078210787_)
                     (cons _g1078110784_ _g1078210787_))
                   '()
                   _L10562_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-map
                                                  _let-head10387_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1078910792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1079010795_)
                     (cons _g1078910792_ _g1079010795_))
                   '()
                   _L10562_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g1039010448_ _g1039110452_)))
                                _body1044210555_
                                _e1042610523_
                                _hd1042710526_))))))
               (_loop1043710535_ _target1043410529_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1039010448_
                                                      _g1039110452_)))))
                                           (_g1039010448_ _g1039110452_))
                                       (_g1039010448_ _g1039110452_)))))))
                   (_loop1042010481_ _target1041710475_ '() '()))
                 (_g1039010448_ _g1039110452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1039010448_ _g1039110452_))
                                           (_g1039010448_ _g1039110452_))))
                                   (_g1039010448_ _g1039110452_))))
                           (_g1039010448_ _g1039110452_)))))
                (let ((_g1038810868_
                       (lambda (_g1039110802_)
                         (if (gx#stx-pair? _g1039110802_)
                             (let ((_e1039610805_ (gx#syntax-e _g1039110802_)))
                               (let ((_hd1039710809_ (##car _e1039610805_))
                                     (_tl1039810812_ (##cdr _e1039610805_)))
                                 (if (gx#stx-pair? _tl1039810812_)
                                     (let ((_e1039910815_
                                            (gx#syntax-e _tl1039810812_)))
                                       (let ((_hd1040010819_
                                              (##car _e1039910815_))
                                             (_tl1040110822_
                                              (##cdr _e1039910815_)))
                                         (if (gx#stx-pair? _hd1040010819_)
                                             (let ((_e1040210825_
                                                    (gx#syntax-e
                                                     _hd1040010819_)))
                                               (let ((_hd1040310829_
                                                      (##car _e1040210825_))
                                                     (_tl1040410832_
                                                      (##cdr _e1040210825_)))
                                                 (if (gx#stx-pair?
                                                      _tl1040410832_)
                                                     (let ((_e1040510835_
                                                            (gx#syntax-e
                                                             _tl1040410832_)))
                                                       (let ((_hd1040610839_
                                                              (##car _e1040510835_))
                                                             (_tl1040710842_
                                                              (##cdr _e1040510835_)))
                                                         (if (gx#stx-null?
                                                              _tl1040710842_)
                                                             ((lambda (_L10845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10847_
                               _L10848_
                               _L10849_)
                        (if (_let-head?10385_ _L10848_)
                            (cons _L10849_
                                  (cons (cons (cons _L10848_
                                                    (cons _L10847_ '()))
                                              '())
                                        _L10845_))
                            (_g1038910798_ _g1039110802_)))
                      _tl1040110822_
                      _hd1040610839_
                      _hd1040310829_
                      _hd1039710809_)
                     (_g1038910798_ _g1039110802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1038910798_
                                                      _g1039110802_))))
                                             (_g1038910798_ _g1039110802_))))
                                     (_g1038910798_ _g1039110802_))))
                             (_g1038910798_ _g1039110802_)))))
                  (_g1038810868_ _stx10382_))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet*|
      (lambda (_$stx10996_)
        (let ((_g1100111046_
               (lambda (_g1100211042_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1100211042_))))
          (let ((_g1100011147_
                 (lambda (_g1100211050_)
                   (if (gx#stx-pair? _g1100211050_)
                       (let ((_e1102311053_ (gx#syntax-e _g1100211050_)))
                         (let ((_hd1102411057_ (##car _e1102311053_))
                               (_tl1102511060_ (##cdr _e1102311053_)))
                           (if (gx#stx-pair? _tl1102511060_)
                               (let ((_e1102611063_
                                      (gx#syntax-e _tl1102511060_)))
                                 (let ((_hd1102711067_ (##car _e1102611063_))
                                       (_tl1102811070_ (##cdr _e1102611063_)))
                                   (if (gx#stx-pair? _hd1102711067_)
                                       (let ((_e1102911073_
                                              (gx#syntax-e _hd1102711067_)))
                                         (let ((_hd1103011077_
                                                (##car _e1102911073_))
                                               (_tl1103111080_
                                                (##cdr _e1102911073_)))
                                           (if (gx#stx-pair/null?
                                                _tl1102811070_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1102811070_)
                                                         '0)
                                                   (let ((_g30274_
                                                          (gx#syntax-split-splice
                                                           _tl1102811070_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30275_
                                                              (values-count
                                                               _g30274_)))
                                                         (if (not (fx= _g30275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30275_)))
               (let ((_target1103211083_ (values-ref _g30274_ 0))
                     (_tl1103411086_ (values-ref _g30274_ 1)))
                 (if (gx#stx-null? _tl1103411086_)
                     (letrec ((_loop1103511089_
                               (lambda (_hd1103311093_ _body1103911096_)
                                 (if (gx#stx-pair? _hd1103311093_)
                                     (let ((_e1103611099_
                                            (gx#syntax-e _hd1103311093_)))
                                       (let ((_lp-hd1103711103_
                                              (##car _e1103611099_))
                                             (_lp-tl1103811106_
                                              (##cdr _e1103611099_)))
                                         (_loop1103511089_
                                          _lp-tl1103811106_
                                          (cons _lp-hd1103711103_
                                                _body1103911096_))))
                                     (let ((_body1104011109_
                                            (reverse _body1103911096_)))
                                       ((lambda (_L11113_
                                                 _L11115_
                                                 _L11116_
                                                 _L11117_)
                                          (cons (gx#datum->syntax '#f 'alet)
                                                (cons (cons _L11116_ '())
                                                      (cons (cons _L11117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L11115_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1113811141_ _g1113911144_)
                                           (cons _g1113811141_ _g1113911144_))
                                         '()
                                         _L11113_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body1104011109_
                                        _tl1103111080_
                                        _hd1103011077_
                                        _hd1102411057_))))))
                       (_loop1103511089_ _target1103211083_ '()))
                     (_g1100111046_ _g1100211050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1100111046_
                                                    _g1100211050_))
                                               (_g1100111046_ _g1100211050_))))
                                       (_g1100111046_ _g1100211050_))))
                               (_g1100111046_ _g1100211050_))))
                       (_g1100111046_ _g1100211050_)))))
            (let ((_g1099911229_
                   (lambda (_g1100211151_)
                     (if (gx#stx-pair? _g1100211151_)
                         (let ((_e1100411154_ (gx#syntax-e _g1100211151_)))
                           (let ((_hd1100511158_ (##car _e1100411154_))
                                 (_tl1100611161_ (##cdr _e1100411154_)))
                             (if (gx#stx-pair? _tl1100611161_)
                                 (let ((_e1100711164_
                                        (gx#syntax-e _tl1100611161_)))
                                   (let ((_hd1100811168_ (##car _e1100711164_))
                                         (_tl1100911171_
                                          (##cdr _e1100711164_)))
                                     (if (gx#stx-null? _hd1100811168_)
                                         (if (gx#stx-pair/null? _tl1100911171_)
                                             (if (fx>= (gx#stx-length
                                                        _tl1100911171_)
                                                       '0)
                                                 (let ((_g30276_
                                                        (gx#syntax-split-splice
                                                         _tl1100911171_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30277_
                                                            (values-count
                                                             _g30276_)))
                                                       (if (not (fx= _g30277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30277_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1101011174_
                                                            (values-ref
                                                             _g30276_
                                                             0))
                                                           (_tl1101211177_
                                                            (values-ref
                                                             _g30276_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1101211177_)
                                                           (letrec ((_loop1101311180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1101111184_ _body1101711187_)
                               (if (gx#stx-pair? _hd1101111184_)
                                   (let ((_e1101411190_
                                          (gx#syntax-e _hd1101111184_)))
                                     (let ((_lp-hd1101511194_
                                            (##car _e1101411190_))
                                           (_lp-tl1101611197_
                                            (##cdr _e1101411190_)))
                                       (_loop1101311180_
                                        _lp-tl1101611197_
                                        (cons _lp-hd1101511194_
                                              _body1101711187_))))
                                   (let ((_body1101811200_
                                          (reverse _body1101711187_)))
                                     ((lambda (_L11204_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1122011223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1122111226_)
                       (cons _g1122011223_ _g1122111226_))
                     '()
                     _L11204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body1101811200_))))))
                     (_loop1101311180_ _target1101011174_ '()))
                   (_g1100011147_ _g1100211151_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1100011147_ _g1100211151_))
                                             (_g1100011147_ _g1100211151_))
                                         (_g1100011147_ _g1100211151_))))
                                 (_g1100011147_ _g1100211151_))))
                         (_g1100011147_ _g1100211151_)))))
              (_g1099911229_ _$stx10996_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#@list|
      (lambda (_$stx11235_)
        (let ((_g1124411301_
               (lambda (_g1124511297_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1124511297_))))
          (let ((_g1124311330_
                 (lambda (_g1124511305_)
                   (if (gx#stx-pair? _g1124511305_)
                       (let ((_e1129311308_ (gx#syntax-e _g1124511305_)))
                         (let ((_hd1129411312_ (##car _e1129311308_))
                               (_tl1129511315_ (##cdr _e1129311308_)))
                           ((lambda (_L11318_) _L11318_) _tl1129511315_)))
                       (_g1124411301_ _g1124511305_)))))
            (let ((_g1124211374_
                   (lambda (_g1124511334_)
                     (if (gx#stx-pair? _g1124511334_)
                         (let ((_e1128611337_ (gx#syntax-e _g1124511334_)))
                           (let ((_hd1128711341_ (##car _e1128611337_))
                                 (_tl1128811344_ (##cdr _e1128611337_)))
                             (if (gx#stx-pair? _tl1128811344_)
                                 (let ((_e1128911347_
                                        (gx#syntax-e _tl1128811344_)))
                                   (let ((_hd1129011351_ (##car _e1128911347_))
                                         (_tl1129111354_
                                          (##cdr _e1128911347_)))
                                     ((lambda (_L11357_ _L11359_ _L11360_)
                                        (cons (gx#datum->syntax '#f 'cons)
                                              (cons _L11359_
                                                    (cons (cons _L11360_
                                                                _L11357_)
                                                          '()))))
                                      _tl1129111354_
                                      _hd1129011351_
                                      _hd1128711341_)))
                                 (_g1124311330_ _g1124511334_))))
                         (_g1124311330_ _g1124511334_)))))
              (let ((_g1124111432_
                     (lambda (_g1124511378_)
                       (if (gx#stx-pair? _g1124511378_)
                           (let ((_e1127411381_ (gx#syntax-e _g1124511378_)))
                             (let ((_hd1127511385_ (##car _e1127411381_))
                                   (_tl1127611388_ (##cdr _e1127411381_)))
                               (if (gx#stx-pair? _tl1127611388_)
                                   (let ((_e1127711391_
                                          (gx#syntax-e _tl1127611388_)))
                                     (let ((_hd1127811395_
                                            (##car _e1127711391_))
                                           (_tl1127911398_
                                            (##cdr _e1127711391_)))
                                       (if (gx#stx-pair? _tl1127911398_)
                                           (let ((_e1128011401_
                                                  (gx#syntax-e
                                                   _tl1127911398_)))
                                             (let ((_hd1128111405_
                                                    (##car _e1128011401_))
                                                   (_tl1128211408_
                                                    (##cdr _e1128011401_)))
                                               ((lambda (_L11411_
                                                         _L11413_
                                                         _L11414_
                                                         _L11415_)
                                                  (if (gx#ellipsis? _L11413_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'foldr)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons)
                          (cons (cons _L11415_ _L11411_) (cons _L11414_ '()))))
              (_g1124211374_ _g1124511378_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1128211408_
                                                _hd1128111405_
                                                _hd1127811395_
                                                _hd1127511385_)))
                                           (_g1124211374_ _g1124511378_))))
                                   (_g1124211374_ _g1124511378_))))
                           (_g1124211374_ _g1124511378_)))))
                (let ((_g1124011486_
                       (lambda (_g1124511436_)
                         (if (gx#stx-pair? _g1124511436_)
                             (let ((_e1126111439_ (gx#syntax-e _g1124511436_)))
                               (let ((_hd1126211443_ (##car _e1126111439_))
                                     (_tl1126311446_ (##cdr _e1126111439_)))
                                 (if (gx#stx-pair? _tl1126311446_)
                                     (let ((_e1126411449_
                                            (gx#syntax-e _tl1126311446_)))
                                       (let ((_hd1126511453_
                                              (##car _e1126411449_))
                                             (_tl1126611456_
                                              (##cdr _e1126411449_)))
                                         (if (gx#stx-pair? _tl1126611456_)
                                             (let ((_e1126711459_
                                                    (gx#syntax-e
                                                     _tl1126611456_)))
                                               (let ((_hd1126811463_
                                                      (##car _e1126711459_))
                                                     (_tl1126911466_
                                                      (##cdr _e1126711459_)))
                                                 (if (gx#stx-null?
                                                      _tl1126911466_)
                                                     ((lambda (_L11469_
                                                               _L11471_)
                                                        (if (gx#ellipsis?
                                                             _L11469_)
                                                            _L11471_
                                                            (_g1124111432_
                                                             _g1124511436_)))
                                                      _hd1126811463_
                                                      _hd1126511453_)
                                                     (_g1124111432_
                                                      _g1124511436_))))
                                             (_g1124111432_ _g1124511436_))))
                                     (_g1124111432_ _g1124511436_))))
                             (_g1124111432_ _g1124511436_)))))
                  (let ((_g1123911538_
                         (lambda (_g1124511490_)
                           (if (gx#stx-pair? _g1124511490_)
                               (let ((_e1125011493_
                                      (gx#syntax-e _g1124511490_)))
                                 (let ((_hd1125111497_ (##car _e1125011493_))
                                       (_tl1125211500_ (##cdr _e1125011493_)))
                                   (if (gx#stx-pair? _tl1125211500_)
                                       (let ((_e1125311503_
                                              (gx#syntax-e _tl1125211500_)))
                                         (let ((_hd1125411507_
                                                (##car _e1125311503_))
                                               (_tl1125511510_
                                                (##cdr _e1125311503_)))
                                           (if (gx#stx-datum? _hd1125411507_)
                                               (if (equal? (gx#stx-e
                                                            _hd1125411507_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl1125511510_)
                                                       (let ((_e1125611513_
                                                              (gx#syntax-e
                                                               _tl1125511510_)))
                                                         (let ((_hd1125711517_
                                                                (##car _e1125611513_))
                                                               (_tl1125811520_
                                                                (##cdr _e1125611513_)))
                                                           (if (gx#stx-null?
                                                                _tl1125811520_)
                                                               ((lambda (_L11523_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11523_)
                        _hd1125711517_)
                       (_g1124011486_ _g1124511490_))))
               (_g1124011486_ _g1124511490_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1124011486_
                                                    _g1124511490_))
                                               (_g1124011486_ _g1124511490_))))
                                       (_g1124011486_ _g1124511490_))))
                               (_g1124011486_ _g1124511490_)))))
                    (let ((_g1123811559_
                           (lambda (_g1124511542_)
                             (if (gx#stx-pair? _g1124511542_)
                                 (let ((_e1124611545_
                                        (gx#syntax-e _g1124511542_)))
                                   (let ((_hd1124711549_ (##car _e1124611545_))
                                         (_tl1124811552_
                                          (##cdr _e1124611545_)))
                                     (if (gx#stx-null? _tl1124811552_)
                                         ((lambda ()
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons '() '()))))
                                         (_g1123911538_ _g1124511542_))))
                                 (_g1123911538_ _g1124511542_)))))
                      (_g1123811559_ _$stx11235_))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#quasiquote|
      (lambda (_stx11563_)
        (letrec ((_simple-quote?11566_
                  (lambda (_e12258_)
                    (let ((_g1226612303_
                           (lambda (_g1226712299_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1226712299_))))
                      (let ((_g1226512314_
                             (lambda (_g1226712307_) ((lambda () '#t)))))
                        (let ((_g1226412337_
                               (lambda (_g1226712318_)
                                 (if (gx#stx-box? _g1226712318_)
                                     (let ((_e1229712321_
                                            (unbox (gx#syntax-e
                                                    _g1226712318_))))
                                       ((lambda (_L12325_)
                                          (_simple-quote?11566_ _L12325_))
                                        _e1229712321_))
                                     (_g1226512314_ _g1226712318_)))))
                          (let ((_g1226312400_
                                 (lambda (_g1226712341_)
                                   (if (gx#stx-vector? _g1226712341_)
                                       (let ((_e1228612344_
                                              (vector->list
                                               (gx#syntax-e _g1226712341_))))
                                         (if (gx#stx-pair/null? _e1228612344_)
                                             (if (fx>= (gx#stx-length
                                                        _e1228612344_)
                                                       '0)
                                                 (let ((_g30278_
                                                        (gx#syntax-split-splice
                                                         _e1228612344_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30279_
                                                            (values-count
                                                             _g30278_)))
                                                       (if (not (fx= _g30279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30279_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1228712348_
                                                            (values-ref
                                                             _g30278_
                                                             0))
                                                           (_tl1228912351_
                                                            (values-ref
                                                             _g30278_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1228912351_)
                                                           (letrec ((_loop1229012354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1228812358_ _e1229412361_)
                               (if (gx#stx-pair? _hd1228812358_)
                                   (let ((_e1229112364_
                                          (gx#syntax-e _hd1228812358_)))
                                     (let ((_lp-hd1229212368_
                                            (##car _e1229112364_))
                                           (_lp-tl1229312371_
                                            (##cdr _e1229112364_)))
                                       (_loop1229012354_
                                        _lp-tl1229312371_
                                        (cons _lp-hd1229212368_
                                              _e1229412361_))))
                                   (let ((_e1229512374_
                                          (reverse _e1229412361_)))
                                     ((lambda (_L12378_)
                                        (_simple-quote?11566_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1239112394_
                                                           _g1239212397_)
                                                    (cons _g1239112394_
                                                          _g1239212397_))
                                                  '()
                                                  _L12378_))))
                                      _e1229512374_))))))
                     (_loop1229012354_ _target1228712348_ '()))
                   (_g1226412337_ _g1226712341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1226412337_ _g1226712341_))
                                             (_g1226412337_ _g1226712341_)))
                                       (_g1226412337_ _g1226712341_)))))
                            (let ((_g1226212430_
                                   (lambda (_g1226712404_)
                                     (if (gx#stx-pair? _g1226712404_)
                                         (let ((_e1228212407_
                                                (gx#syntax-e _g1226712404_)))
                                           (let ((_hd1228312411_
                                                  (##car _e1228212407_))
                                                 (_tl1228412414_
                                                  (##cdr _e1228212407_)))
                                             ((lambda (_L12417_ _L12419_)
                                                (if (_simple-quote?11566_
                                                     _L12419_)
                                                    (_simple-quote?11566_
                                                     _L12417_)
                                                    '#f))
                                              _tl1228412414_
                                              _hd1228312411_)))
                                         (_g1226312400_ _g1226712404_)))))
                              (let ((_g1226112461_
                                     (lambda (_g1226712434_)
                                       (if (gx#stx-pair? _g1226712434_)
                                           (let ((_e1227412437_
                                                  (gx#syntax-e _g1226712434_)))
                                             (let ((_hd1227512441_
                                                    (##car _e1227412437_))
                                                   (_tl1227612444_
                                                    (##cdr _e1227412437_)))
                                               (if (gx#identifier?
                                                    _hd1227512441_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<sugar>::<sugar:2>[1]#_g30280_|
                                                        _hd1227512441_)
                                                       (if (gx#stx-pair?
                                                            _tl1227612444_)
                                                           (let ((_e1227712447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1227612444_)))
                     (let ((_hd1227812451_ (##car _e1227712447_))
                           (_tl1227912454_ (##cdr _e1227712447_)))
                       (if (gx#stx-null? _tl1227912454_)
                           ((lambda () '#f))
                           (_g1226212430_ _g1226712434_))))
                   (_g1226212430_ _g1226712434_))
               (_g1226212430_ _g1226712434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1226212430_
                                                    _g1226712434_))))
                                           (_g1226212430_ _g1226712434_)))))
                                (let ((_g1226012492_
                                       (lambda (_g1226712465_)
                                         (if (gx#stx-pair? _g1226712465_)
                                             (let ((_e1226812468_
                                                    (gx#syntax-e
                                                     _g1226712465_)))
                                               (let ((_hd1226912472_
                                                      (##car _e1226812468_))
                                                     (_tl1227012475_
                                                      (##cdr _e1226812468_)))
                                                 (if (gx#identifier?
                                                      _hd1226912472_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g30281_|
                                                          _hd1226912472_)
                                                         (if (gx#stx-pair?
                                                              _tl1227012475_)
                                                             (let ((_e1227112478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1227012475_)))
                       (let ((_hd1227212482_ (##car _e1227112478_))
                             (_tl1227312485_ (##cdr _e1227112478_)))
                         (if (gx#stx-null? _tl1227312485_)
                             ((lambda () '#f))
                             (_g1226112461_ _g1226712465_))))
                     (_g1226112461_ _g1226712465_))
                 (_g1226112461_ _g1226712465_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1226112461_
                                                      _g1226712465_))))
                                             (_g1226112461_ _g1226712465_)))))
                                  (_g1226012492_ _e12258_))))))))))
                 (_generate11568_
                  (lambda (_e11630_ _d11632_)
                    (let ((_g1164111699_
                           (lambda (_g1164211695_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1164211695_))))
                      (let ((_g1164011716_
                             (lambda (_g1164211703_)
                               ((lambda (_L11706_)
                                  (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L11706_ '())))
                                _g1164211703_))))
                        (let ((_g1163911768_
                               (lambda (_g1164211720_)
                                 (if (gx#stx-box? _g1164211720_)
                                     (let ((_e1169211723_
                                            (unbox (gx#syntax-e
                                                    _g1164211720_))))
                                       ((lambda (_L11727_)
                                          (let ((_g1173711745_
                                                 (lambda (_g1173811741_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1173811741_))))
                                            (let ((_g1173611764_
                                                   (lambda (_g1173811749_)
                                                     ((lambda (_L11752_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'box)
                        (cons _L11752_ '()))))
              _g1173811749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1173611764_
                                               (_generate11568_
                                                _L11727_
                                                _d11632_)))))
                                        _e1169211723_))
                                     (_g1164011716_ _g1164211720_)))))
                          (let ((_g1163811862_
                                 (lambda (_g1164211772_)
                                   (if (gx#stx-vector? _g1164211772_)
                                       (let ((_e1168111775_
                                              (vector->list
                                               (gx#syntax-e _g1164211772_))))
                                         (if (gx#stx-pair/null? _e1168111775_)
                                             (if (fx>= (gx#stx-length
                                                        _e1168111775_)
                                                       '0)
                                                 (let ((_g30282_
                                                        (gx#syntax-split-splice
                                                         _e1168111775_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30283_
                                                            (values-count
                                                             _g30282_)))
                                                       (if (not (fx= _g30283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30283_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1168211779_
                                                            (values-ref
                                                             _g30282_
                                                             0))
                                                           (_tl1168411782_
                                                            (values-ref
                                                             _g30282_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1168411782_)
                                                           (letrec ((_loop1168511785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1168311789_ _e1168911792_)
                               (if (gx#stx-pair? _hd1168311789_)
                                   (let ((_e1168611795_
                                          (gx#syntax-e _hd1168311789_)))
                                     (let ((_lp-hd1168711799_
                                            (##car _e1168611795_))
                                           (_lp-tl1168811802_
                                            (##cdr _e1168611795_)))
                                       (_loop1168511785_
                                        _lp-tl1168811802_
                                        (cons _lp-hd1168711799_
                                              _e1168911792_))))
                                   (let ((_e1169011805_
                                          (reverse _e1168911792_)))
                                     ((lambda (_L11809_)
                                        (let ((_g1182311831_
                                               (lambda (_g1182411827_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1182411827_))))
                                          (let ((_g1182211850_
                                                 (lambda (_g1182411835_)
                                                   ((lambda (_L11838_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'list->vector)
                                                              (cons _L11838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1182411835_))))
                                            (_g1182211850_
                                             (_generate11568_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1185311856_
                                                                _g1185411859_)
                                                         (cons _g1185311856_
                                                               _g1185411859_))
                                                       '()
                                                       _L11809_))
                                              _d11632_)))))
                                      _e1169011805_))))))
                     (_loop1168511785_ _target1168211779_ '()))
                   (_g1163911768_ _g1164211772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1163911768_ _g1164211772_))
                                             (_g1163911768_ _g1164211772_)))
                                       (_g1163911768_ _g1164211772_)))))
                            (let ((_g1163711956_
                                   (lambda (_g1164211866_)
                                     (if (gx#stx-pair? _g1164211866_)
                                         (let ((_e1167711869_
                                                (gx#syntax-e _g1164211866_)))
                                           (let ((_hd1167811873_
                                                  (##car _e1167711869_))
                                                 (_tl1167911876_
                                                  (##cdr _e1167711869_)))
                                             ((lambda (_L11879_ _L11881_)
                                                (let ((_g1189211907_
                                                       (lambda (_g1189311903_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1189311903_))))
                                                  (let ((_g1189111952_
                                                         (lambda (_g1189311911_)
                                                           (if (gx#stx-pair?
                                                                _g1189311911_)
                                                               (let ((_e1189611914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1189311911_)))
                         (let ((_hd1189711918_ (##car _e1189611914_))
                               (_tl1189811921_ (##cdr _e1189611914_)))
                           (if (gx#stx-pair? _tl1189811921_)
                               (let ((_e1189911924_
                                      (gx#syntax-e _tl1189811921_)))
                                 (let ((_hd1190011928_ (##car _e1189911924_))
                                       (_tl1190111931_ (##cdr _e1189911924_)))
                                   (if (gx#stx-null? _tl1190111931_)
                                       ((lambda (_L11934_ _L11936_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'cons)
                                                  (cons _L11936_
                                                        (cons _L11934_ '())))))
                                        _hd1190011928_
                                        _hd1189711918_)
                                       (_g1189211907_ _g1189311911_))))
                               (_g1189211907_ _g1189311911_))))
                       (_g1189211907_ _g1189311911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1189111952_
                                                     (list (_generate11568_
                                                            _L11881_
                                                            _d11632_)
                                                           (_generate11568_
                                                            _L11879_
                                                            _d11632_))))))
                                              _tl1167911876_
                                              _hd1167811873_)))
                                         (_g1163811862_ _g1164211866_)))))
                              (let ((_g1163612041_
                                     (lambda (_g1164211960_)
                                       (if (gx#stx-pair? _g1164211960_)
                                           (let ((_e1166611963_
                                                  (gx#syntax-e _g1164211960_)))
                                             (let ((_hd1166711967_
                                                    (##car _e1166611963_))
                                                   (_tl1166811970_
                                                    (##cdr _e1166611963_)))
                                               (if (gx#stx-pair?
                                                    _hd1166711967_)
                                                   (let ((_e1166911973_
                                                          (gx#syntax-e
                                                           _hd1166711967_)))
                                                     (let ((_hd1167011977_
                                                            (##car _e1166911973_))
                                                           (_tl1167111980_
                                                            (##cdr _e1166911973_)))
                                                       (if (gx#identifier?
                                                            _hd1167011977_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g30284_|
                                                                _hd1167011977_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1167111980_)
                           (let ((_e1167211983_ (gx#syntax-e _tl1167111980_)))
                             (let ((_hd1167311987_ (##car _e1167211983_))
                                   (_tl1167411990_ (##cdr _e1167211983_)))
                               (if (gx#stx-null? _tl1167411990_)
                                   ((lambda (_L11993_ _L11995_)
                                      (if (fxzero? _d11632_)
                                          (let ((_g1201012018_
                                                 (lambda (_g1201112014_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1201112014_))))
                                            (let ((_g1200912037_
                                                   (lambda (_g1201112022_)
                                                     ((lambda (_L12025_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'foldr)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _L12025_ (cons _L11995_ '()))))))
              _g1201112022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1200912037_
                                               (_generate11568_
                                                _L11993_
                                                _d11632_))))
                                          (_g1163711956_ _g1164211960_)))
                                    _tl1166811970_
                                    _hd1167311987_)
                                   (_g1163711956_ _g1164211960_))))
                           (_g1163711956_ _g1164211960_))
                       (_g1163711956_ _g1164211960_))
                   (_g1163711956_ _g1164211960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1163711956_
                                                    _g1164211960_))))
                                           (_g1163711956_ _g1164211960_)))))
                                (let ((_g1163512112_
                                       (lambda (_g1164212045_)
                                         (if (gx#stx-pair? _g1164212045_)
                                             (let ((_e1165812048_
                                                    (gx#syntax-e
                                                     _g1164212045_)))
                                               (let ((_hd1165912052_
                                                      (##car _e1165812048_))
                                                     (_tl1166012055_
                                                      (##cdr _e1165812048_)))
                                                 (if (gx#identifier?
                                                      _hd1165912052_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g30285_|
                                                          _hd1165912052_)
                                                         (if (gx#stx-pair?
                                                              _tl1166012055_)
                                                             (let ((_e1166112058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1166012055_)))
                       (let ((_hd1166212062_ (##car _e1166112058_))
                             (_tl1166312065_ (##cdr _e1166112058_)))
                         (if (gx#stx-null? _tl1166312065_)
                             ((lambda (_L12068_)
                                (if (fxzero? _d11632_)
                                    (cons (gx#datum->syntax '#f 'foldr)
                                          (cons (gx#datum->syntax '#f 'cons)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons '() '()))
                                                      (cons _L12068_ '()))))
                                    (let ((_g1208112089_
                                           (lambda (_g1208212085_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1208212085_))))
                                      (let ((_g1208012108_
                                             (lambda (_g1208212093_)
                                               ((lambda (_L12096_)
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
                        (cons _L12096_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1208212093_))))
                                        (_g1208012108_
                                         (_generate11568_
                                          _L12068_
                                          (fx1- _d11632_)))))))
                              _hd1166212062_)
                             (_g1163612041_ _g1164212045_))))
                     (_g1163612041_ _g1164212045_))
                 (_g1163612041_ _g1164212045_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1163612041_
                                                      _g1164212045_))))
                                             (_g1163612041_ _g1164212045_)))))
                                  (let ((_g1163412183_
                                         (lambda (_g1164212116_)
                                           (if (gx#stx-pair? _g1164212116_)
                                               (let ((_e1165112119_
                                                      (gx#syntax-e
                                                       _g1164212116_)))
                                                 (let ((_hd1165212123_
                                                        (##car _e1165112119_))
                                                       (_tl1165312126_
                                                        (##cdr _e1165112119_)))
                                                   (if (gx#identifier?
                                                        _hd1165212123_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:2>[1]#_g30286_|
                                                            _hd1165212123_)
                                                           (if (gx#stx-pair?
                                                                _tl1165312126_)
                                                               (let ((_e1165412129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1165312126_)))
                         (let ((_hd1165512133_ (##car _e1165412129_))
                               (_tl1165612136_ (##cdr _e1165412129_)))
                           (if (gx#stx-null? _tl1165612136_)
                               ((lambda (_L12139_)
                                  (if (fxzero? _d11632_)
                                      _L12139_
                                      (let ((_g1215212160_
                                             (lambda (_g1215312156_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1215312156_))))
                                        (let ((_g1215112179_
                                               (lambda (_g1215312164_)
                                                 ((lambda (_L12167_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons (gx#datum->syntax '#f 'unquote) '()))
                          (cons _L12167_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1215312164_))))
                                          (_g1215112179_
                                           (_generate11568_
                                            _L12139_
                                            (fx1- _d11632_)))))))
                                _hd1165512133_)
                               (_g1163512112_ _g1164212116_))))
                       (_g1163512112_ _g1164212116_))
                   (_g1163512112_ _g1164212116_))
               (_g1163512112_ _g1164212116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1163512112_
                                                _g1164212116_)))))
                                    (let ((_g1163312254_
                                           (lambda (_g1164212187_)
                                             (if (gx#stx-pair? _g1164212187_)
                                                 (let ((_e1164412190_
                                                        (gx#syntax-e
                                                         _g1164212187_)))
                                                   (let ((_hd1164512194_
                                                          (##car _e1164412190_))
                                                         (_tl1164612197_
                                                          (##cdr _e1164412190_)))
                                                     (if (gx#identifier?
                                                          _hd1164512194_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<sugar>::<sugar:2>[1]#_g30287_|
                                                              _hd1164512194_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1164612197_)
                         (let ((_e1164712200_ (gx#syntax-e _tl1164612197_)))
                           (let ((_hd1164812204_ (##car _e1164712200_))
                                 (_tl1164912207_ (##cdr _e1164712200_)))
                             (if (gx#stx-null? _tl1164912207_)
                                 ((lambda (_L12210_)
                                    (let ((_g1222312231_
                                           (lambda (_g1222412227_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1222412227_))))
                                      (let ((_g1222212250_
                                             (lambda (_g1222412235_)
                                               ((lambda (_L12238_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'quasiquote) '()))
                        (cons _L12238_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1222412235_))))
                                        (_g1222212250_
                                         (_generate11568_
                                          _L12210_
                                          (fx1+ _d11632_))))))
                                  _hd1164812204_)
                                 (_g1163412183_ _g1164212187_))))
                         (_g1163412183_ _g1164212187_))
                     (_g1163412183_ _g1164212187_))
                 (_g1163412183_ _g1164212187_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1163412183_
                                                  _g1164212187_)))))
                                      (_g1163312254_ _e11630_)))))))))))))
          (let ((_g1157011584_
                 (lambda (_g1157111580_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1157111580_))))
            (let ((_g1156911626_
                   (lambda (_g1157111588_)
                     (if (gx#stx-pair? _g1157111588_)
                         (let ((_e1157311591_ (gx#syntax-e _g1157111588_)))
                           (let ((_hd1157411595_ (##car _e1157311591_))
                                 (_tl1157511598_ (##cdr _e1157311591_)))
                             (if (gx#stx-pair? _tl1157511598_)
                                 (let ((_e1157611601_
                                        (gx#syntax-e _tl1157511598_)))
                                   (let ((_hd1157711605_ (##car _e1157611601_))
                                         (_tl1157811608_
                                          (##cdr _e1157611601_)))
                                     (if (gx#stx-null? _tl1157811608_)
                                         ((lambda (_L11611_)
                                            (if (_simple-quote?11566_ _L11611_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L11611_ '()))
                                                (_generate11568_ _L11611_ '0)))
                                          _hd1157711605_)
                                         (_g1157011584_ _g1157111588_))))
                                 (_g1157011584_ _g1157111588_))))
                         (_g1157011584_ _g1157111588_)))))
              (_g1156911626_ _stx11563_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#delay|
      (lambda (_$stx12498_)
        (let ((_g1250312524_
               (lambda (_g1250412520_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1250412520_))))
          (let ((_g1250212565_
                 (lambda (_g1250412528_)
                   (if (gx#stx-pair? _g1250412528_)
                       (let ((_e1251312531_ (gx#syntax-e _g1250412528_)))
                         (let ((_hd1251412535_ (##car _e1251312531_))
                               (_tl1251512538_ (##cdr _e1251312531_)))
                           (if (gx#stx-pair? _tl1251512538_)
                               (let ((_e1251612541_
                                      (gx#syntax-e _tl1251512538_)))
                                 (let ((_hd1251712545_ (##car _e1251612541_))
                                       (_tl1251812548_ (##cdr _e1251612541_)))
                                   (if (gx#stx-null? _tl1251812548_)
                                       ((lambda (_L12551_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-promise)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda%)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12551_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _hd1251712545_)
                                       (_g1250312524_ _g1250412528_))))
                               (_g1250312524_ _g1250412528_))))
                       (_g1250312524_ _g1250412528_)))))
            (let ((_g1250112605_
                   (lambda (_g1250412569_)
                     (if (gx#stx-pair? _g1250412569_)
                         (let ((_e1250612572_ (gx#syntax-e _g1250412569_)))
                           (let ((_hd1250712576_ (##car _e1250612572_))
                                 (_tl1250812579_ (##cdr _e1250612572_)))
                             (if (gx#stx-pair? _tl1250812579_)
                                 (let ((_e1250912582_
                                        (gx#syntax-e _tl1250812579_)))
                                   (let ((_hd1251012586_ (##car _e1250912582_))
                                         (_tl1251112589_
                                          (##cdr _e1250912582_)))
                                     (if (gx#stx-null? _tl1251112589_)
                                         ((lambda (_L12592_)
                                            (if (gx#stx-datum? _L12592_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L12592_ '()))
                                                (_g1250212565_ _g1250412569_)))
                                          _hd1251012586_)
                                         (_g1250212565_ _g1250412569_))))
                                 (_g1250212565_ _g1250412569_))))
                         (_g1250212565_ _g1250412569_)))))
              (_g1250112605_ _$stx12498_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#cut|
      (lambda (_stx12609_)
        (let ((_generate12612_
               (lambda (_rest12731_)
                 ((letrec ((_lp12734_
                            (lambda (_rest12737_ _hd12739_ _body12740_)
                              (let ((_g1274312755_
                                     (lambda (_g1274412751_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1274412751_))))
                                (let ((_g1274212766_
                                       (lambda (_g1274412759_)
                                         ((lambda ()
                                            (values (reverse _hd12739_)
                                                    (reverse _body12740_)
                                                    '#f))))))
                                  (let ((_g1274112852_
                                         (lambda (_g1274412770_)
                                           (if (gx#stx-pair? _g1274412770_)
                                               (let ((_e1274712773_
                                                      (gx#syntax-e
                                                       _g1274412770_)))
                                                 (let ((_hd1274812777_
                                                        (##car _e1274712773_))
                                                       (_tl1274912780_
                                                        (##cdr _e1274712773_)))
                                                   ((lambda (_L12783_ _L12785_)
                                                      (let ((_g1280212809_
                                                             (lambda (_g1280312805_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1280312805_))))
                                                        (let ((_g1280112820_
                                                               (lambda (_g1280312813_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (_lp12734_
                             _L12783_
                             _hd12739_
                             (cons _L12785_ _body12740_)))))))
                  (let ((_g1280012834_
                         (lambda (_g1280312824_)
                           (if (gx#identifier? _g1280312824_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<sugar>::<sugar:2>[1]#_g30290_|
                                    _g1280312824_)
                                   ((lambda ()
                                      (if (gx#stx-null? _L12783_)
                                          (let ((_tail12831_ (gx#genident)))
                                            (values (foldl cons
                                                           _tail12831_
                                                           _hd12739_)
                                                    (foldl cons
                                                           (list _tail12831_)
                                                           _body12740_)
                                                    '#t))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx12609_
                                           _L12785_))))
                                   (_g1280112820_ _g1280312824_))
                               (_g1280112820_ _g1280312824_)))))
                    (let ((_g1279912848_
                           (lambda (_g1280312838_)
                             (if (gx#identifier? _g1280312838_)
                                 (if (gx#free-identifier=?
                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g30291_|
                                      _g1280312838_)
                                     ((lambda ()
                                        (let ((_arg12845_ (gx#genident)))
                                          (_lp12734_
                                           _L12783_
                                           (cons _arg12845_ _hd12739_)
                                           (cons _arg12845_ _body12740_)))))
                                     (_g1280012834_ _g1280312838_))
                                 (_g1280012834_ _g1280312838_)))))
                      (_g1279912848_ _L12785_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1274912780_
                                                    _hd1274812777_)))
                                               (_g1274212766_
                                                _g1274412770_)))))
                                    (_g1274112852_ _rest12737_)))))))
                    _lp12734_)
                  _rest12731_
                  '()
                  '()))))
          (let ((_g1261512626_
                 (lambda (_g1261612622_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1261612622_))))
            (let ((_g1261412727_
                   (lambda (_g1261612630_)
                     (if (gx#stx-pair? _g1261612630_)
                         (let ((_e1261812633_ (gx#syntax-e _g1261612630_)))
                           (let ((_hd1261912637_ (##car _e1261812633_))
                                 (_tl1262012640_ (##cdr _e1261812633_)))
                             ((lambda (_L12643_)
                                (if (if (gx#stx-list? _L12643_)
                                        (not (gx#stx-null? _L12643_))
                                        '#f)
                                    (let ((_g30288_
                                           (_generate12612_ _L12643_)))
                                      (begin
                                        (let ((_g30289_
                                               (values-count _g30288_)))
                                          (if (not (fx= _g30289_ 3))
                                              (error "Context expects 3 values"
                                                     _g30289_)))
                                        (let ((_hd12656_
                                               (values-ref _g30288_ 0))
                                              (_body12658_
                                               (values-ref _g30288_ 1))
                                              (_tail?12659_
                                               (values-ref _g30288_ 2)))
                                          (let ((_g1266112669_
                                                 (lambda (_g1266212665_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1266212665_))))
                                            (let ((_g1266012723_
                                                   (lambda (_g1266212673_)
                                                     ((lambda (_L12676_)
                                                        (let ()
                                                          (let ((_g1268912697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1269012693_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1269012693_))))
                    (let ((_g1268812719_
                           (lambda (_g1269012701_)
                             ((lambda (_L12704_)
                                (let ()
                                  (let ()
                                    (if _tail?12659_
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12676_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'apply)
                        _L12704_)
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12676_
                                                    (cons _L12704_ '())))))))
                              _g1269012701_))))
                      (_g1268812719_ _body12658_)))))
              _g1266212673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1266012723_ _hd12656_))))))
                                    (_g1261512626_ _g1261612630_)))
                              _tl1262012640_)))
                         (_g1261512626_ _g1261612630_)))))
              (_g1261412727_ _stx12609_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<>|
      (lambda (_$stx12857_)
        (let ((_g1286012867_
               (lambda (_g1286112863_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1286112863_))))
          (_g1286012867_ _$stx12857_))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<...>|
      (lambda (_$stx12871_)
        (let ((_g1287412881_
               (lambda (_g1287512877_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1287512877_))))
          (_g1287412881_ _$stx12871_))))))
