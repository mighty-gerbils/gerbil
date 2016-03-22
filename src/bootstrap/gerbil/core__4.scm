(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28288_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28289_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28290_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28307_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28316_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28317_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28324_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28325_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28328_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28329_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28330_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28331_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28334_|
    (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28335_|
    (gx#core-quote-syntax '<>))
  (begin
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#lambda|
      (lambda (_stx4587_)
        (let ((_simple-lambda?4590_
               (lambda (_hd7740_) (gx#stx-andmap gx#identifier? _hd7740_))))
          (let ((_opt-lambda?4592_
                 (lambda (_hd7592_)
                   ((letrec ((_lp7595_
                              (lambda (_rest7598_ _opt?7600_)
                                (let ((_g76037615_
                                       (lambda (_g76047611_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g76047611_))))
                                  (let ((_g76027630_
                                         (lambda (_g76047619_)
                                           ((lambda ()
                                              (if _opt?7600_
                                                  (let ((_$e7626_
                                                         (gx#stx-null?
                                                          _rest7598_)))
                                                    (if _$e7626_
                                                        _$e7626_
                                                        (gx#identifier?
                                                         _rest7598_)))
                                                  '#f))))))
                                    (let ((_g76017736_
                                           (lambda (_g76047634_)
                                             (if (gx#stx-pair? _g76047634_)
                                                 (let ((_e76077637_
                                                        (gx#syntax-e
                                                         _g76047634_)))
                                                   (let ((_hd76087641_
                                                          (##car _e76077637_))
                                                         (_tl76097644_
                                                          (##cdr _e76077637_)))
                                                     ((lambda (_L7647_ _L7649_)
                                                        (let ((_g76657679_
                                                               (lambda (_g76667675_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g76667675_))))
                  (let ((_g76647690_
                         (lambda (_g76667683_)
                           ((lambda ()
                              (if (gx#identifier? _L7649_)
                                  (if (not _opt?7600_)
                                      (_lp7595_ _L7647_ '#f)
                                      '#f)
                                  '#f))))))
                    (let ((_g76637732_
                           (lambda (_g76667694_)
                             (if (gx#stx-pair? _g76667694_)
                                 (let ((_e76687697_ (gx#syntax-e _g76667694_)))
                                   (let ((_hd76697701_ (##car _e76687697_))
                                         (_tl76707704_ (##cdr _e76687697_)))
                                     (if (gx#stx-pair? _tl76707704_)
                                         (let ((_e76717707_
                                                (gx#syntax-e _tl76707704_)))
                                           (let ((_hd76727711_
                                                  (##car _e76717707_))
                                                 (_tl76737714_
                                                  (##cdr _e76717707_)))
                                             (if (gx#stx-null? _tl76737714_)
                                                 ((lambda (_L7717_)
                                                    (if (gx#identifier?
                                                         _L7717_)
                                                        (_lp7595_ _L7647_ '#t)
                                                        (_g76647690_
                                                         _g76667694_)))
                                                  _hd76697701_)
                                                 (_g76647690_ _g76667694_))))
                                         (_g76647690_ _g76667694_))))
                                 (_g76647690_ _g76667694_)))))
                      (_g76637732_ _L7649_)))))
              _tl76097644_
              _hd76087641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g76027630_ _g76047634_)))))
                                      (_g76017736_ _rest7598_)))))))
                      _lp7595_)
                    _hd7592_
                    '#f))))
            (let ((_kw-lambda?4594_
                   (lambda (_hd7118_)
                     ((letrec ((_lp7121_
                                (lambda (_rest7124_ _opt?7126_ _key?7127_)
                                  (let ((_g71327161_
                                         (lambda (_g71337157_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g71337157_))))
                                    (let ((_g71317176_
                                           (lambda (_g71337165_)
                                             ((lambda ()
                                                (if _key?7127_
                                                    (let ((_$e7172_
                                                           (gx#stx-null?
                                                            _rest7124_)))
                                                      (if _$e7172_
                                                          _$e7172_
                                                          (gx#identifier?
                                                           _rest7124_)))
                                                    '#f))))))
                                      (let ((_g71307282_
                                             (lambda (_g71337180_)
                                               (if (gx#stx-pair? _g71337180_)
                                                   (let ((_e71537183_
                                                          (gx#syntax-e
                                                           _g71337180_)))
                                                     (let ((_hd71547187_
                                                            (##car _e71537183_))
                                                           (_tl71557190_
                                                            (##cdr _e71537183_)))
                                                       ((lambda (_L7193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7195_)
                  (let ((_g72117225_
                         (lambda (_g72127221_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g72127221_))))
                    (let ((_g72107236_
                           (lambda (_g72127229_)
                             ((lambda ()
                                (if (gx#identifier? _L7195_)
                                    (if (not _opt?7126_)
                                        (_lp7121_ _L7193_ '#f _key?7127_)
                                        '#f)
                                    '#f))))))
                      (let ((_g72097278_
                             (lambda (_g72127240_)
                               (if (gx#stx-pair? _g72127240_)
                                   (let ((_e72147243_
                                          (gx#syntax-e _g72127240_)))
                                     (let ((_hd72157247_ (##car _e72147243_))
                                           (_tl72167250_ (##cdr _e72147243_)))
                                       (if (gx#stx-pair? _tl72167250_)
                                           (let ((_e72177253_
                                                  (gx#syntax-e _tl72167250_)))
                                             (let ((_hd72187257_
                                                    (##car _e72177253_))
                                                   (_tl72197260_
                                                    (##cdr _e72177253_)))
                                               (if (gx#stx-null? _tl72197260_)
                                                   ((lambda (_L7263_)
                                                      (if (gx#identifier?
                                                           _L7263_)
                                                          (_lp7121_
                                                           _L7193_
                                                           '#t
                                                           _key?7127_)
                                                          '#f))
                                                    _hd72157247_)
                                                   (_g72107236_ _g72127240_))))
                                           (_g72107236_ _g72127240_))))
                                   (_g72107236_ _g72127240_)))))
                        (_g72097278_ _L7195_)))))
                _tl71557190_
                _hd71547187_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g71317176_
                                                    _g71337180_)))))
                                        (let ((_g71297324_
                                               (lambda (_g71337286_)
                                                 (if (gx#stx-pair? _g71337286_)
                                                     (let ((_e71457289_
                                                            (gx#syntax-e
                                                             _g71337286_)))
                                                       (let ((_hd71467293_
                                                              (##car _e71457289_))
                                                             (_tl71477296_
                                                              (##cdr _e71457289_)))
                                                         (if (gx#stx-datum?
                                                              _hd71467293_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd71467293_)
                                 '#!key)
                         (if (gx#stx-pair? _tl71477296_)
                             (let ((_e71487299_ (gx#syntax-e _tl71477296_)))
                               (let ((_hd71497303_ (##car _e71487299_))
                                     (_tl71507306_ (##cdr _e71487299_)))
                                 ((lambda (_L7309_ _L7311_)
                                    (if (gx#identifier? _L7311_)
                                        (_lp7121_ _L7309_ _opt?7126_ '#t)
                                        '#f))
                                  _tl71507306_
                                  _hd71497303_)))
                             (_g71307282_ _g71337286_))
                         (_g71307282_ _g71337286_))
                     (_g71307282_ _g71337286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g71307282_
                                                      _g71337286_)))))
                                          (let ((_g71287440_
                                                 (lambda (_g71337328_)
                                                   (if (gx#stx-pair?
                                                        _g71337328_)
                                                       (let ((_e71377331_
                                                              (gx#syntax-e
                                                               _g71337328_)))
                                                         (let ((_hd71387335_
                                                                (##car _e71377331_))
                                                               (_tl71397338_
                                                                (##cdr _e71377331_)))
                                                           (if (gx#stx-pair?
                                                                _tl71397338_)
                                                               (let ((_e71407341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl71397338_)))
                         (let ((_hd71417345_ (##car _e71407341_))
                               (_tl71427348_ (##cdr _e71407341_)))
                           ((lambda (_L7351_ _L7353_ _L7354_)
                              (if (gx#stx-keyword? _L7354_)
                                  (let ((_g73697383_
                                         (lambda (_g73707379_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g73707379_))))
                                    (let ((_g73687394_
                                           (lambda (_g73707387_)
                                             ((lambda ()
                                                (if (gx#identifier? _L7353_)
                                                    (_lp7121_
                                                     _L7351_
                                                     _opt?7126_
                                                     '#t)
                                                    '#f))))))
                                      (let ((_g73677436_
                                             (lambda (_g73707398_)
                                               (if (gx#stx-pair? _g73707398_)
                                                   (let ((_e73727401_
                                                          (gx#syntax-e
                                                           _g73707398_)))
                                                     (let ((_hd73737405_
                                                            (##car _e73727401_))
                                                           (_tl73747408_
                                                            (##cdr _e73727401_)))
                                                       (if (gx#stx-pair?
                                                            _tl73747408_)
                                                           (let ((_e73757411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl73747408_)))
                     (let ((_hd73767415_ (##car _e73757411_))
                           (_tl73777418_ (##cdr _e73757411_)))
                       (if (gx#stx-null? _tl73777418_)
                           ((lambda (_L7421_)
                              (if (gx#identifier? _L7421_)
                                  (_lp7121_ _L7351_ _opt?7126_ '#t)
                                  '#f))
                            _hd73737405_)
                           (_g73687394_ _g73707398_))))
                   (_g73687394_ _g73707398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73687394_
                                                    _g73707398_)))))
                                        (_g73677436_ _L7353_))))
                                  (_g71297324_ _g71337328_)))
                            _tl71427348_
                            _hd71417345_
                            _hd71387335_)))
                       (_g71297324_ _g71337328_))))
               (_g71297324_ _g71337328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g71287440_ _rest7124_)))))))))
                        _lp7121_)
                      _hd7118_
                      '#f
                      '#f))))
              (let ((_generate-bind4596_
                     (lambda (_e6854_)
                       (if (gx#underscore? _e6854_)
                           (gx#genident _e6854_)
                           _e6854_))))
                (let ((_check-duplicate-bindings4597_
                       (lambda (_hd6551_)
                         (let ((_cons-id6554_
                                (lambda (_id6850_ _ids6852_)
                                  (if (gx#underscore? _id6850_)
                                      _ids6852_
                                      (cons _id6850_ _ids6852_)))))
                           ((letrec ((_lp6557_
                                      (lambda (_rest6560_ _ids6562_)
                                        (let ((_g65656577_
                                               (lambda (_g65666573_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g65666573_))))
                                          (let ((_g65646588_
                                                 (lambda (_g65666581_)
                                                   ((lambda ()
                                                      (gx#check-duplicate-identifiers
                                                       (if (gx#stx-null?
                                                            _rest6560_)
                                                           _ids6562_
                                                           (_cons-id6554_
                                                            _rest6560_
                                                            _ids6562_))
                                                       _stx4587_))))))
                                            (let ((_g65636846_
                                                   (lambda (_g65666592_)
                                                     (if (gx#stx-pair?
                                                          _g65666592_)
                                                         (let ((_e65696595_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g65666592_)))
                   (let ((_hd65706599_ (##car _e65696595_))
                         (_tl65716602_ (##cdr _e65696595_)))
                     ((lambda (_L6605_ _L6607_)
                        (if (gx#identifier? _L6607_)
                            (_lp6557_
                             _L6605_
                             (_cons-id6554_ _L6607_ _ids6562_))
                            (if (gx#stx-pair? _L6607_)
                                (let ((_g66236637_
                                       (lambda (_g66246633_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g66246633_))))
                                  (let ((_g66226678_
                                         (lambda (_g66246641_)
                                           (if (gx#stx-pair? _g66246641_)
                                               (let ((_e66266644_
                                                      (gx#syntax-e
                                                       _g66246641_)))
                                                 (let ((_hd66276648_
                                                        (##car _e66266644_))
                                                       (_tl66286651_
                                                        (##cdr _e66266644_)))
                                                   (if (gx#stx-pair?
                                                        _tl66286651_)
                                                       (let ((_e66296654_
                                                              (gx#syntax-e
                                                               _tl66286651_)))
                                                         (let ((_hd66306658_
                                                                (##car _e66296654_))
                                                               (_tl66316661_
                                                                (##cdr _e66296654_)))
                                                           (if (gx#stx-null?
                                                                _tl66316661_)
                                                               ((lambda (_L6664_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_lp6557_ _L6605_ (_cons-id6554_ _L6664_ _ids6562_)))
                        _hd66276648_)
                       (_g66236637_ _g66246641_))))
               (_g66236637_ _g66246641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g66236637_ _g66246641_)))))
                                    (_g66226678_ _L6607_)))
                                (if (gx#stx-keyword? _L6607_)
                                    (let ((_g66826694_
                                           (lambda (_g66836690_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g66836690_))))
                                      (let ((_g66816796_
                                             (lambda (_g66836698_)
                                               (if (gx#stx-pair? _g66836698_)
                                                   (let ((_e66866701_
                                                          (gx#syntax-e
                                                           _g66836698_)))
                                                     (let ((_hd66876705_
                                                            (##car _e66866701_))
                                                           (_tl66886708_
                                                            (##cdr _e66866701_)))
                                                       ((lambda (_L6711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6713_)
                  (let ((_g67256739_
                         (lambda (_g67266735_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g67266735_))))
                    (let ((_g67246750_
                           (lambda (_g67266743_)
                             ((lambda ()
                                (_lp6557_
                                 _L6711_
                                 (_cons-id6554_ _L6713_ _ids6562_)))))))
                      (let ((_g67236792_
                             (lambda (_g67266754_)
                               (if (gx#stx-pair? _g67266754_)
                                   (let ((_e67286757_
                                          (gx#syntax-e _g67266754_)))
                                     (let ((_hd67296761_ (##car _e67286757_))
                                           (_tl67306764_ (##cdr _e67286757_)))
                                       (if (gx#stx-pair? _tl67306764_)
                                           (let ((_e67316767_
                                                  (gx#syntax-e _tl67306764_)))
                                             (let ((_hd67326771_
                                                    (##car _e67316767_))
                                                   (_tl67336774_
                                                    (##cdr _e67316767_)))
                                               (if (gx#stx-null? _tl67336774_)
                                                   ((lambda (_L6777_)
                                                      (_lp6557_
                                                       _L6711_
                                                       (_cons-id6554_
                                                        _L6777_
                                                        _ids6562_)))
                                                    _hd67296761_)
                                                   (_g67246750_ _g67266754_))))
                                           (_g67246750_ _g67266754_))))
                                   (_g67246750_ _g67266754_)))))
                        (_g67236792_ _L6713_)))))
                _tl66886708_
                _hd66876705_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g66826694_
                                                    _g66836698_)))))
                                        (_g66816796_ _L6605_)))
                                    (if (eq? (gx#stx-e _L6607_) '#!key)
                                        (let ((_g68006812_
                                               (lambda (_g68016808_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g68016808_))))
                                          (let ((_g67996842_
                                                 (lambda (_g68016816_)
                                                   (if (gx#stx-pair?
                                                        _g68016816_)
                                                       (let ((_e68046819_
                                                              (gx#syntax-e
                                                               _g68016816_)))
                                                         (let ((_hd68056823_
                                                                (##car _e68046819_))
                                                               (_tl68066826_
                                                                (##cdr _e68046819_)))
                                                           ((lambda (_L6829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6831_)
                      (_lp6557_ _L6829_ (_cons-id6554_ _L6831_ _ids6562_)))
                    _tl68066826_
                    _hd68056823_)))
               (_g68006812_ _g68016816_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g67996842_ _L6605_)))
                                        (error '"BUG: check-duplicate-bindings"
                                               _stx4587_
                                               _rest6560_))))))
                      _tl65716602_
                      _hd65706599_)))
                 (_g65646588_ _g65666592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g65636846_ _rest6560_)))))))
                              _lp6557_)
                            _hd6551_
                            '())))))
                  (let ((_generate-opt-primary4598_
                         (lambda (_pre6343_ _opt6345_ _tail6346_ _body6347_)
                           (let ((_g63496390_
                                  (lambda (_g63506386_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g63506386_))))
                             (let ((_g63486547_
                                    (lambda (_g63506394_)
                                      (if (gx#stx-pair? _g63506394_)
                                          (let ((_e63556397_
                                                 (gx#syntax-e _g63506394_)))
                                            (let ((_hd63566401_
                                                   (##car _e63556397_))
                                                  (_tl63576404_
                                                   (##cdr _e63556397_)))
                                              (if (gx#stx-pair/null?
                                                   _hd63566401_)
                                                  (if (fx>= (gx#stx-length
                                                             _hd63566401_)
                                                            '0)
                                                      (let ((_g28276_
                                                             (gx#syntax-split-splice
                                                              _hd63566401_
                                                              '0)))
                                                        (begin
                                                          (let ((_g28277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g28276_)))
                    (if (not (fx= _g28277_ 2))
                        (error "Context expects 2 values" _g28277_)))
                  (let ((_target63586407_ (values-ref _g28276_ 0))
                        (_tl63606410_ (values-ref _g28276_ 1)))
                    (if (gx#stx-null? _tl63606410_)
                        (letrec ((_loop63616413_
                                  (lambda (_hd63596417_ _pre63656420_)
                                    (if (gx#stx-pair? _hd63596417_)
                                        (let ((_e63626423_
                                               (gx#syntax-e _hd63596417_)))
                                          (let ((_lp-hd63636427_
                                                 (##car _e63626423_))
                                                (_lp-tl63646430_
                                                 (##cdr _e63626423_)))
                                            (_loop63616413_
                                             _lp-tl63646430_
                                             (cons _lp-hd63636427_
                                                   _pre63656420_))))
                                        (let ((_pre63666433_
                                               (reverse _pre63656420_)))
                                          (if (gx#stx-pair? _tl63576404_)
                                              (let ((_e63676437_
                                                     (gx#syntax-e
                                                      _tl63576404_)))
                                                (let ((_hd63686441_
                                                       (##car _e63676437_))
                                                      (_tl63696444_
                                                       (##cdr _e63676437_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd63686441_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd63686441_)
                        '0)
                  (let ((_g28278_ (gx#syntax-split-splice _hd63686441_ '0)))
                    (begin
                      (let ((_g28279_ (values-count _g28278_)))
                        (if (not (fx= _g28279_ 2))
                            (error "Context expects 2 values" _g28279_)))
                      (let ((_target63706447_ (values-ref _g28278_ 0))
                            (_tl63726450_ (values-ref _g28278_ 1)))
                        (if (gx#stx-null? _tl63726450_)
                            (letrec ((_loop63736453_
                                      (lambda (_hd63716457_ _opt63776460_)
                                        (if (gx#stx-pair? _hd63716457_)
                                            (let ((_e63746463_
                                                   (gx#syntax-e _hd63716457_)))
                                              (let ((_lp-hd63756467_
                                                     (##car _e63746463_))
                                                    (_lp-tl63766470_
                                                     (##cdr _e63746463_)))
                                                (_loop63736453_
                                                 _lp-tl63766470_
                                                 (cons _lp-hd63756467_
                                                       _opt63776460_))))
                                            (let ((_opt63786473_
                                                   (reverse _opt63776460_)))
                                              (if (gx#stx-pair? _tl63696444_)
                                                  (let ((_e63796477_
                                                         (gx#syntax-e
                                                          _tl63696444_)))
                                                    (let ((_hd63806481_
                                                           (##car _e63796477_))
                                                          (_tl63816484_
                                                           (##cdr _e63796477_)))
                                                      (if (gx#stx-pair?
                                                           _tl63816484_)
                                                          (let ((_e63826487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl63816484_)))
                    (let ((_hd63836491_ (##car _e63826487_))
                          (_tl63846494_ (##cdr _e63826487_)))
                      (if (gx#stx-null? _tl63846494_)
                          ((lambda (_L6497_ _L6499_ _L6500_ _L6501_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g65306535_
                                                             _g65316538_)
                                                      (cons _g65306535_
                                                            _g65316538_))
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g65326541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g65336544_)
                       (cons _g65326541_ _g65336544_))
                     _L6499_
                     _L6500_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L6501_))
                                           _L6497_))))
                           _hd63836491_
                           _hd63806481_
                           _opt63786473_
                           _pre63666433_)
                          (_g63496390_ _g63506394_))))
                  (_g63496390_ _g63506394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63496390_
                                                   _g63506394_)))))))
                              (_loop63736453_ _target63706447_ '()))
                            (_g63496390_ _g63506394_)))))
                  (_g63496390_ _g63506394_))
              (_g63496390_ _g63506394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g63496390_ _g63506394_)))))))
                          (_loop63616413_ _target63586407_ '()))
                        (_g63496390_ _g63506394_)))))
              (_g63496390_ _g63506394_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63496390_ _g63506394_))))
                                          (_g63496390_ _g63506394_)))))
                               (_g63486547_
                                (list _pre6343_
                                      (map car _opt6345_)
                                      _tail6346_
                                      _body6347_)))))))
                    (let ((_generate-opt-clause4601_
                           (lambda (_primary5592_ _pre5594_ _opt5595_)
                             ((letrec ((_recur5597_
                                        (lambda (_opt-rest5600_ _right5602_)
                                          (if (pair? _opt-rest5600_)
                                              (let ((_hd5604_
                                                     (car _opt-rest5600_)))
                                                (let ((_rest5607_
                                                       (cdr _opt-rest5600_)))
                                                  (let ((_g56105618_
                                                         (lambda (_g56115614_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g56115614_))))
                                                    (let ((_g56095707_
                                                           (lambda (_g56115622_)
                                                             ((lambda (_L5625_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g56415649_
                                 (lambda (_g56425645_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g56425645_))))
                            (let ((_g56405703_
                                   (lambda (_g56425653_)
                                     ((lambda (_L5656_)
                                        (let ()
                                          (let ((_g56695677_
                                                 (lambda (_g56705673_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g56705673_))))
                                            (let ((_g56685699_
                                                   (lambda (_g56705681_)
                                                     ((lambda (_L5684_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5625_ '())
                                            (cons _L5656_ '()))
                                      '())
                                (cons _L5684_ '()))))))
              _g56705681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g56685699_
                                               (_recur5597_
                                                _rest5607_
                                                (cons _L5625_
                                                      _right5602_)))))))
                                      _g56425653_))))
                              (_g56405703_ (cdr _hd5604_))))))
                      _g56115622_))))
              (_g56095707_ (car _hd5604_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g57115748_
                                                     (lambda (_g57125744_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g57125744_))))
                                                (let ((_g57105890_
                                                       (lambda (_g57125752_)
                                                         (if (gx#stx-pair?
                                                              _g57125752_)
                                                             (let ((_e57165755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g57125752_)))
                       (let ((_hd57175759_ (##car _e57165755_))
                             (_tl57185762_ (##cdr _e57165755_)))
                         (if (gx#stx-pair/null? _hd57175759_)
                             (if (fx>= (gx#stx-length _hd57175759_) '0)
                                 (let ((_g28272_
                                        (gx#syntax-split-splice
                                         _hd57175759_
                                         '0)))
                                   (begin
                                     (let ((_g28273_ (values-count _g28272_)))
                                       (if (not (fx= _g28273_ 2))
                                           (error "Context expects 2 values"
                                                  _g28273_)))
                                     (let ((_target57195765_
                                            (values-ref _g28272_ 0))
                                           (_tl57215768_
                                            (values-ref _g28272_ 1)))
                                       (if (gx#stx-null? _tl57215768_)
                                           (letrec ((_loop57225771_
                                                     (lambda (_hd57205775_
                                                              _pre57265778_)
                                                       (if (gx#stx-pair?
                                                            _hd57205775_)
                                                           (let ((_e57235781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd57205775_)))
                     (let ((_lp-hd57245785_ (##car _e57235781_))
                           (_lp-tl57255788_ (##cdr _e57235781_)))
                       (_loop57225771_
                        _lp-tl57255788_
                        (cons _lp-hd57245785_ _pre57265778_))))
                   (let ((_pre57275791_ (reverse _pre57265778_)))
                     (if (gx#stx-pair? _tl57185762_)
                         (let ((_e57285795_ (gx#syntax-e _tl57185762_)))
                           (let ((_hd57295799_ (##car _e57285795_))
                                 (_tl57305802_ (##cdr _e57285795_)))
                             (if (gx#stx-pair/null? _hd57295799_)
                                 (if (fx>= (gx#stx-length _hd57295799_) '0)
                                     (let ((_g28274_
                                            (gx#syntax-split-splice
                                             _hd57295799_
                                             '0)))
                                       (begin
                                         (let ((_g28275_
                                                (values-count _g28274_)))
                                           (if (not (fx= _g28275_ 2))
                                               (error "Context expects 2 values"
                                                      _g28275_)))
                                         (let ((_target57315805_
                                                (values-ref _g28274_ 0))
                                               (_tl57335808_
                                                (values-ref _g28274_ 1)))
                                           (if (gx#stx-null? _tl57335808_)
                                               (letrec ((_loop57345811_
                                                         (lambda (_hd57325815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opt57385818_)
                   (if (gx#stx-pair? _hd57325815_)
                       (let ((_e57355821_ (gx#syntax-e _hd57325815_)))
                         (let ((_lp-hd57365825_ (##car _e57355821_))
                               (_lp-tl57375828_ (##cdr _e57355821_)))
                           (_loop57345811_
                            _lp-tl57375828_
                            (cons _lp-hd57365825_ _opt57385818_))))
                       (let ((_opt57395831_ (reverse _opt57385818_)))
                         (if (gx#stx-pair? _tl57305802_)
                             (let ((_e57405835_ (gx#syntax-e _tl57305802_)))
                               (let ((_hd57415839_ (##car _e57405835_))
                                     (_tl57425842_ (##cdr _e57405835_)))
                                 (if (gx#stx-null? _tl57425842_)
                                     ((lambda (_L5845_ _L5847_ _L5848_)
                                        (let ()
                                          (gx#stx-wrap-source
                                           (cons _L5845_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g58735878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g58745881_)
                    (cons _g58735878_ _g58745881_))
                  (begin
                    '#!void
                    (foldr (lambda (_g58755884_ _g58765887_)
                             (cons _g58755884_ _g58765887_))
                           '()
                           _L5847_))
                  _L5848_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _stx4587_))))
                                      _hd57415839_
                                      _opt57395831_
                                      _pre57275791_)
                                     (_g57115748_ _g57125752_))))
                             (_g57115748_ _g57125752_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop57345811_
                                                  _target57315805_
                                                  '()))
                                               (_g57115748_ _g57125752_)))))
                                     (_g57115748_ _g57125752_))
                                 (_g57115748_ _g57125752_))))
                         (_g57115748_ _g57125752_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop57225771_
                                              _target57195765_
                                              '()))
                                           (_g57115748_ _g57125752_)))))
                                 (_g57115748_ _g57125752_))
                             (_g57115748_ _g57125752_))))
                     (_g57115748_ _g57125752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g57105890_
                                                   (list _pre5594_
                                                         (reverse _right5602_)
                                                         _primary5592_))))))))
                                _recur5597_)
                              _opt5595_
                              '()))))
                      (let ((_generate-kw-primary4602_
                             (lambda (_kwvar5239_
                                      _kwargs5241_
                                      _args5242_
                                      _body5243_)
                               (let ((_absent5245_ (gx#genident 'absent)))
                                 (letrec ((_make-body5247_
                                           (lambda (_kwargs5411_ _body5413_)
                                             (if (pair? _kwargs5411_)
                                                 (let ((_next5415_
                                                        (car _kwargs5411_)))
                                                   (let ((_rest5418_
                                                          (cdr _kwargs5411_)))
                                                     (let ((_key5421_
                                                            (car _next5415_)))
                                                       (let ((_var5424_
                                                              (cadr _next5415_)))
                                                         (let ((_default5427_
                                                                (caddr _next5415_)))
                                                           (let ()
                                                             (let ((_g54325467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g54335463_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g54335463_))))
                       (let ((_g54315588_
                              (lambda (_g54335471_)
                                (if (gx#stx-pair? _g54335471_)
                                    (let ((_e54415474_
                                           (gx#syntax-e _g54335471_)))
                                      (let ((_hd54425478_ (##car _e54415474_))
                                            (_tl54435481_ (##cdr _e54415474_)))
                                        (if (gx#stx-pair? _tl54435481_)
                                            (let ((_e54445484_
                                                   (gx#syntax-e _tl54435481_)))
                                              (let ((_hd54455488_
                                                     (##car _e54445484_))
                                                    (_tl54465491_
                                                     (##cdr _e54445484_)))
                                                (if (gx#stx-pair? _tl54465491_)
                                                    (let ((_e54475494_
                                                           (gx#syntax-e
                                                            _tl54465491_)))
                                                      (let ((_hd54485498_
                                                             (##car _e54475494_))
                                                            (_tl54495501_
                                                             (##cdr _e54475494_)))
                                                        (if (gx#stx-pair?
                                                             _tl54495501_)
                                                            (let ((_e54505504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl54495501_)))
                      (let ((_hd54515508_ (##car _e54505504_))
                            (_tl54525511_ (##cdr _e54505504_)))
                        (if (gx#stx-pair? _tl54525511_)
                            (let ((_e54535514_ (gx#syntax-e _tl54525511_)))
                              (let ((_hd54545518_ (##car _e54535514_))
                                    (_tl54555521_ (##cdr _e54535514_)))
                                (if (gx#stx-pair? _tl54555521_)
                                    (let ((_e54565524_
                                           (gx#syntax-e _tl54555521_)))
                                      (let ((_hd54575528_ (##car _e54565524_))
                                            (_tl54585531_ (##cdr _e54565524_)))
                                        (if (gx#stx-pair? _tl54585531_)
                                            (let ((_e54595534_
                                                   (gx#syntax-e _tl54585531_)))
                                              (let ((_hd54605538_
                                                     (##car _e54595534_))
                                                    (_tl54615541_
                                                     (##cdr _e54595534_)))
                                                (if (gx#stx-null? _tl54615541_)
                                                    ((lambda (_L5544_
                                                              _L5546_
                                                              _L5547_
                                                              _L5548_
                                                              _L5549_
                                                              _L5550_
                                                              _L5551_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _L5548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'hash-ref)
                                                     (cons _L5551_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L5550_ '()))
                         (cons _L5544_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'let-values)
                                         (cons (cons (cons (cons _L5549_ '())
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'if)
                               (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons _L5548_ (cons _L5544_ '())))
                                     (cons _L5547_ (cons _L5548_ '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L5546_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd54605538_
                                                     _hd54575528_
                                                     _hd54545518_
                                                     _hd54515508_
                                                     _hd54485498_
                                                     _hd54455488_
                                                     _hd54425478_)
                                                    (_g54325467_
                                                     _g54335471_))))
                                            (_g54325467_ _g54335471_))))
                                    (_g54325467_ _g54335471_))))
                            (_g54325467_ _g54335471_))))
                    (_g54325467_ _g54335471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g54325467_
                                                     _g54335471_))))
                                            (_g54325467_ _g54335471_))))
                                    (_g54325467_ _g54335471_)))))
                         (_g54315588_
                          (list _kwvar5239_
                                _key5421_
                                _var5424_
                                (gx#genident _var5424_)
                                _default5427_
                                (_make-body5247_ _rest5418_ _body5413_)
                                _absent5245_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons 'begin _body5413_)))))
                                   (let ((_g52495257_
                                          (lambda (_g52505253_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g52505253_))))
                                     (let ((_g52485407_
                                            (lambda (_g52505261_)
                                              ((lambda (_L5264_)
                                                 (let ()
                                                   (let ((_g52775285_
                                                          (lambda (_g52785281_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g52785281_))))
                                                     (let ((_g52765403_
                                                            (lambda (_g52785289_)
                                                              ((lambda (_L5292_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g53055313_
                                  (lambda (_g53065309_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g53065309_))))
                             (let ((_g53045399_
                                    (lambda (_g53065317_)
                                      ((lambda (_L5320_)
                                         (let ()
                                           (let ((_g53335341_
                                                  (lambda (_g53345337_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g53345337_))))
                                             (let ((_g53325395_
                                                    (lambda (_g53345345_)
                                                      ((lambda (_L5348_)
                                                         (let ()
                                                           (let ((_g53615369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g53625365_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g53625365_))))
                     (let ((_g53605391_
                            (lambda (_g53625373_)
                              ((lambda (_L5376_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons (cons _L5376_ '())
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-vector)
                                 (cons '0 '()))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L5348_ '()))))))
                               _g53625373_))))
                       (_g53605391_ _absent5245_)))))
               _g53345345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g53325395_
                                                (gx#stx-wrap-source
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons _L5264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5292_)
                     (cons _L5320_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source
                                                  _stx4587_)))))))
                                       _g53065317_))))
                               (_g53045399_
                                (_make-body5247_ _kwargs5241_ _body5243_))))))
                       _g52785289_))))
               (_g52765403_ _args5242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g52505261_))))
                                       (_g52485407_ _kwvar5239_))))))))
                        (let ((_generate-kw-table4604_
                               (lambda (_kws5126_)
                                 ((letrec ((_rehash5129_
                                            (lambda (_pht5132_)
                                              ((letrec ((_lp5135_
                                                         (lambda (_rest5138_)
                                                           (if (pair? _rest5138_)
                                                               (let ((_key5141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _rest5138_)))
                         (let ((_rest5144_ (cdr _rest5138_)))
                           (let ((_pos5147_
                                  (fxmodulo
                                   (keyword-hash _key5141_)
                                   (vector-length _pht5132_))))
                             (let ()
                               (if (vector-ref _pht5132_ _pos5147_)
                                   (if (fx< (vector-length _pht5132_) '8192)
                                       (_rehash5129_
                                        (make-vector
                                         (fx1+ (* '2
                                                  (vector-length _pht5132_)))
                                         '#f))
                                       (error '"Unresolvable keyword collision"
                                              _kws5126_))
                                   (begin
                                     (vector-set!
                                      _pht5132_
                                      _pos5147_
                                      _key5141_)
                                     (_lp5135_ _rest5144_)))))))
                       _pht5132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _lp5135_)
                                               _kws5126_))))
                                    _rehash5129_)
                                  (make-vector (length _kws5126_) '#f)))))
                          (let ((_opt-lambda-split4593_
                                 (lambda (_hd7444_)
                                   ((letrec ((_lp7447_
                                              (lambda (_rest7450_
                                                       _pre7452_
                                                       _opt7453_)
                                                (let ((_g74567468_
                                                       (lambda (_g74577464_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g74577464_))))
                                                  (let ((_g74557479_
                                                         (lambda (_g74577472_)
                                                           ((lambda ()
                                                              (values (reverse _pre7452_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _opt7453_)
                              (if (gx#identifier? _rest7450_)
                                  (_generate-bind4596_ _rest7450_)
                                  _rest7450_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g74547588_
                                                           (lambda (_g74577483_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g74577483_)
                         (let ((_e74607486_ (gx#syntax-e _g74577483_)))
                           (let ((_hd74617490_ (##car _e74607486_))
                                 (_tl74627493_ (##cdr _e74607486_)))
                             ((lambda (_L7496_ _L7498_)
                                (let ((_g75147529_
                                       (lambda (_g75157525_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g75157525_))))
                                  (let ((_g75137540_
                                         (lambda (_g75157533_)
                                           ((lambda ()
                                              (_lp7447_
                                               _L7496_
                                               (cons (_generate-bind4596_
                                                      _L7498_)
                                                     _pre7452_)
                                               _opt7453_))))))
                                    (let ((_g75127584_
                                           (lambda (_g75157544_)
                                             (if (gx#stx-pair? _g75157544_)
                                                 (let ((_e75187547_
                                                        (gx#syntax-e
                                                         _g75157544_)))
                                                   (let ((_hd75197551_
                                                          (##car _e75187547_))
                                                         (_tl75207554_
                                                          (##cdr _e75187547_)))
                                                     (if (gx#stx-pair?
                                                          _tl75207554_)
                                                         (let ((_e75217557_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl75207554_)))
                   (let ((_hd75227561_ (##car _e75217557_))
                         (_tl75237564_ (##cdr _e75217557_)))
                     (if (gx#stx-null? _tl75237564_)
                         ((lambda (_L7567_ _L7569_)
                            (_lp7447_
                             _L7496_
                             _pre7452_
                             (cons (cons (_generate-bind4596_ _L7569_) _L7567_)
                                   _opt7453_)))
                          _hd75227561_
                          _hd75197551_)
                         (_g75137540_ _g75157544_))))
                 (_g75137540_ _g75157544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g75137540_ _g75157544_)))))
                                      (_g75127584_ _L7498_)))))
                              _tl74627493_
                              _hd74617490_)))
                         (_g74557479_ _g74577483_)))))
              (_g74547588_ _rest7450_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp7447_)
                                    _hd7444_
                                    '()
                                    '()))))
                            (let ((_kw-lambda-split4595_
                                   (lambda (_hd6857_)
                                     ((letrec ((_lp6860_
                                                (lambda (_rest6863_
                                                         _kwvar6865_
                                                         _kwargs6866_
                                                         _args6867_)
                                                  (let ((_g68726901_
                                                         (lambda (_g68736897_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g68736897_))))
                                                    (let ((_g68716912_
                                                           (lambda (_g68736905_)
                                                             ((lambda ()
                                                                (values _kwvar6865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse _kwargs6866_)
                                (foldl cons _rest6863_ _args6867_)))))))
              (let ((_g68706946_
                     (lambda (_g68736916_)
                       (if (gx#stx-pair? _g68736916_)
                           (let ((_e68936919_ (gx#syntax-e _g68736916_)))
                             (let ((_hd68946923_ (##car _e68936919_))
                                   (_tl68956926_ (##cdr _e68936919_)))
                               ((lambda (_L6929_ _L6931_)
                                  (_lp6860_
                                   _L6929_
                                   _kwvar6865_
                                   _kwargs6866_
                                   (cons _L6931_ _args6867_)))
                                _tl68956926_
                                _hd68946923_)))
                           (_g68716912_ _g68736916_)))))
                (let ((_g68696988_
                       (lambda (_g68736950_)
                         (if (gx#stx-pair? _g68736950_)
                             (let ((_e68856953_ (gx#syntax-e _g68736950_)))
                               (let ((_hd68866957_ (##car _e68856953_))
                                     (_tl68876960_ (##cdr _e68856953_)))
                                 (if (gx#stx-datum? _hd68866957_)
                                     (if (equal? (gx#stx-e _hd68866957_)
                                                 '#!key)
                                         (if (gx#stx-pair? _tl68876960_)
                                             (let ((_e68886963_
                                                    (gx#syntax-e
                                                     _tl68876960_)))
                                               (let ((_hd68896967_
                                                      (##car _e68886963_))
                                                     (_tl68906970_
                                                      (##cdr _e68886963_)))
                                                 ((lambda (_L6973_ _L6975_)
                                                    (if _kwvar6865_
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; duplicate #!key argument"
                                                         _stx4587_
                                                         _hd6857_
                                                         _L6975_)
                                                        (_lp6860_
                                                         _L6973_
                                                         (_generate-bind4596_
                                                          _L6975_)
                                                         _kwargs6866_
                                                         _args6867_)))
                                                  _tl68906970_
                                                  _hd68896967_)))
                                             (_g68706946_ _g68736950_))
                                         (_g68706946_ _g68736950_))
                                     (_g68706946_ _g68736950_))))
                             (_g68706946_ _g68736950_)))))
                  (let ((_g68687114_
                         (lambda (_g68736992_)
                           (if (gx#stx-pair? _g68736992_)
                               (let ((_e68776995_ (gx#syntax-e _g68736992_)))
                                 (let ((_hd68786999_ (##car _e68776995_))
                                       (_tl68797002_ (##cdr _e68776995_)))
                                   (if (gx#stx-pair? _tl68797002_)
                                       (let ((_e68807005_
                                              (gx#syntax-e _tl68797002_)))
                                         (let ((_hd68817009_
                                                (##car _e68807005_))
                                               (_tl68827012_
                                                (##cdr _e68807005_)))
                                           ((lambda (_L7015_ _L7017_ _L7018_)
                                              (if (gx#stx-keyword? _L7018_)
                                                  (let ((_key7032_
                                                         (gx#stx-e _L7018_)))
                                                    (if (find (lambda (_kwarg7035_)
                                                                (eq? _key7032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _kwarg7035_)))
                      _kwargs6866_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; duplicate keyword argument"
                 _stx4587_
                 _hd6857_
                 _key7032_)
                (let ((_g70397054_
                       (lambda (_g70407050_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g70407050_))))
                  (let ((_g70387065_
                         (lambda (_g70407058_)
                           ((lambda ()
                              (_lp6860_
                               _L7015_
                               _kwvar6865_
                               (cons (list _key7032_
                                           (_generate-bind4596_ _L7017_)
                                           (cons (gx#datum->syntax '#f 'error)
                                                 (cons '"Missing required keyword argument"
                                                       (cons _L7018_ '()))))
                                     _kwargs6866_)
                               _args6867_))))))
                    (let ((_g70377110_
                           (lambda (_g70407069_)
                             (if (gx#stx-pair? _g70407069_)
                                 (let ((_e70437072_ (gx#syntax-e _g70407069_)))
                                   (let ((_hd70447076_ (##car _e70437072_))
                                         (_tl70457079_ (##cdr _e70437072_)))
                                     (if (gx#stx-pair? _tl70457079_)
                                         (let ((_e70467082_
                                                (gx#syntax-e _tl70457079_)))
                                           (let ((_hd70477086_
                                                  (##car _e70467082_))
                                                 (_tl70487089_
                                                  (##cdr _e70467082_)))
                                             (if (gx#stx-null? _tl70487089_)
                                                 ((lambda (_L7092_ _L7094_)
                                                    (_lp6860_
                                                     _L7015_
                                                     _kwvar6865_
                                                     (cons (list _key7032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_generate-bind4596_ _L7094_)
                         _L7092_)
                   _kwargs6866_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _args6867_))
                                                  _hd70477086_
                                                  _hd70447076_)
                                                 (_g70387065_ _g70407069_))))
                                         (_g70387065_ _g70407069_))))
                                 (_g70387065_ _g70407069_)))))
                      (_g70377110_ _L7017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g68696988_ _g68736992_)))
                                            _tl68827012_
                                            _hd68817009_
                                            _hd68786999_)))
                                       (_g68696988_ _g68736992_))))
                               (_g68696988_ _g68736992_)))))
                    (_g68687114_ _rest6863_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6860_)
                                      _hd6857_
                                      '#f
                                      '()
                                      '()))))
                              (let ((_generate-opt-dispatch*4600_
                                     (lambda (_primary5894_
                                              _pre5896_
                                              _opt5897_
                                              _tail5898_)
                                       ((letrec ((_recur5900_
                                                  (lambda (_opt-rest5903_
                                                           _right5905_)
                                                    (if (pair? _opt-rest5903_)
                                                        (let ((_hd5907_
                                                               (caar _opt-rest5903_)))
                                                          (let ((_rest5910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cdr _opt-rest5903_)))
                    (let ((_right*5913_ (cons _hd5907_ _right5905_)))
                      (let ((_g59165933_
                             (lambda (_g59175929_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g59175929_))))
                        (let ((_g59156116_
                               (lambda (_g59175937_)
                                 (if (gx#stx-pair/null? _g59175937_)
                                     (if (fx>= (gx#stx-length _g59175937_) '0)
                                         (let ((_g28264_
                                                (gx#syntax-split-splice
                                                 _g59175937_
                                                 '0)))
                                           (begin
                                             (let ((_g28265_
                                                    (values-count _g28264_)))
                                               (if (not (fx= _g28265_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28265_)))
                                             (let ((_target59195940_
                                                    (values-ref _g28264_ 0))
                                                   (_tl59215943_
                                                    (values-ref _g28264_ 1)))
                                               (if (gx#stx-null? _tl59215943_)
                                                   (letrec ((_loop59225946_
                                                             (lambda (_hd59205950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pre-bind59265953_)
                       (if (gx#stx-pair? _hd59205950_)
                           (let ((_e59235956_ (gx#syntax-e _hd59205950_)))
                             (let ((_lp-hd59245960_ (##car _e59235956_))
                                   (_lp-tl59255963_ (##cdr _e59235956_)))
                               (_loop59225946_
                                _lp-tl59255963_
                                (cons _lp-hd59245960_ _pre-bind59265953_))))
                           (let ((_pre-bind59275966_
                                  (reverse _pre-bind59265953_)))
                             ((lambda (_L5970_)
                                (let ()
                                  (let ((_g59916008_
                                         (lambda (_g59926004_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g59926004_))))
                                    (let ((_g59906112_
                                           (lambda (_g59926012_)
                                             (if (gx#stx-pair/null?
                                                  _g59926012_)
                                                 (if (fx>= (gx#stx-length
                                                            _g59926012_)
                                                           '0)
                                                     (let ((_g28266_
                                                            (gx#syntax-split-splice
                                                             _g59926012_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28267_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28266_)))
                   (if (not (fx= _g28267_ 2))
                       (error "Context expects 2 values" _g28267_)))
                 (let ((_target59946015_ (values-ref _g28266_ 0))
                       (_tl59966018_ (values-ref _g28266_ 1)))
                   (if (gx#stx-null? _tl59966018_)
                       (letrec ((_loop59976021_
                                 (lambda (_hd59956025_ _opt-bind60016028_)
                                   (if (gx#stx-pair? _hd59956025_)
                                       (let ((_e59986031_
                                              (gx#syntax-e _hd59956025_)))
                                         (let ((_lp-hd59996035_
                                                (##car _e59986031_))
                                               (_lp-tl60006038_
                                                (##cdr _e59986031_)))
                                           (_loop59976021_
                                            _lp-tl60006038_
                                            (cons _lp-hd59996035_
                                                  _opt-bind60016028_))))
                                       (let ((_opt-bind60026041_
                                              (reverse _opt-bind60016028_)))
                                         ((lambda (_L6045_)
                                            (let ()
                                              (let ((_g60626070_
                                                     (lambda (_g60636066_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g60636066_))))
                                                (let ((_g60616108_
                                                       (lambda (_g60636074_)
                                                         ((lambda (_L6077_)
                                                            (let ()
                                                              (let ()
                                                                (cons (list (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr (lambda (_g60916096_ _g60926099_)
                                               (cons _g60916096_ _g60926099_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g60936102_
                                                               _g60946105_)
                                                        (cons _g60936102_
                                                              _g60946105_))
                                                      (cons _L6077_ '())
                                                      _L6045_))
                                             _L5970_))
                                    (_generate-opt-clause4601_
                                     _primary5894_
                                     (foldr cons
                                            (reverse _right*5913_)
                                            _pre5896_)
                                     _rest5910_))
                              (_recur5900_ _rest5910_ _right*5913_)))))
                  _g60636074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g60616108_ _hd5907_)))))
                                          _opt-bind60026041_))))))
                         (_loop59976021_ _target59946015_ '()))
                       (_g59916008_ _g59926012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g59916008_ _g59926012_))
                                                 (_g59916008_ _g59926012_)))))
                                      (_g59906112_ (reverse _right5905_))))))
                              _pre-bind59275966_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop59225946_
                                                      _target59195940_
                                                      '()))
                                                   (_g59165933_
                                                    _g59175937_)))))
                                         (_g59165933_ _g59175937_))
                                     (_g59165933_ _g59175937_)))))
                          (_g59156116_ _pre5896_))))))
                (if (gx#stx-null? _tail5898_)
                    '()
                    (let ((_g61206161_
                           (lambda (_g61216157_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g61216157_))))
                      (let ((_g61196333_
                             (lambda (_g61216165_)
                               (if (gx#stx-pair? _g61216165_)
                                   (let ((_e61266168_
                                          (gx#syntax-e _g61216165_)))
                                     (let ((_hd61276172_ (##car _e61266168_))
                                           (_tl61286175_ (##cdr _e61266168_)))
                                       (if (gx#stx-pair/null? _hd61276172_)
                                           (if (fx>= (gx#stx-length
                                                      _hd61276172_)
                                                     '0)
                                               (let ((_g28268_
                                                      (gx#syntax-split-splice
                                                       _hd61276172_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28269_
                                                          (values-count
                                                           _g28268_)))
                                                     (if (not (fx= _g28269_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28269_)))
                                                   (let ((_target61296178_
                                                          (values-ref
                                                           _g28268_
                                                           0))
                                                         (_tl61316181_
                                                          (values-ref
                                                           _g28268_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl61316181_)
                                                         (letrec ((_loop61326184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd61306188_ _pre61366191_)
                             (if (gx#stx-pair? _hd61306188_)
                                 (let ((_e61336194_
                                        (gx#syntax-e _hd61306188_)))
                                   (let ((_lp-hd61346198_ (##car _e61336194_))
                                         (_lp-tl61356201_ (##cdr _e61336194_)))
                                     (_loop61326184_
                                      _lp-tl61356201_
                                      (cons _lp-hd61346198_ _pre61366191_))))
                                 (let ((_pre61376204_ (reverse _pre61366191_)))
                                   (if (gx#stx-pair? _tl61286175_)
                                       (let ((_e61386208_
                                              (gx#syntax-e _tl61286175_)))
                                         (let ((_hd61396212_
                                                (##car _e61386208_))
                                               (_tl61406215_
                                                (##cdr _e61386208_)))
                                           (if (gx#stx-pair/null? _hd61396212_)
                                               (if (fx>= (gx#stx-length
                                                          _hd61396212_)
                                                         '0)
                                                   (let ((_g28270_
                                                          (gx#syntax-split-splice
                                                           _hd61396212_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28271_
                                                              (values-count
                                                               _g28270_)))
                                                         (if (not (fx= _g28271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28271_)))
               (let ((_target61416218_ (values-ref _g28270_ 0))
                     (_tl61436221_ (values-ref _g28270_ 1)))
                 (if (gx#stx-null? _tl61436221_)
                     (letrec ((_loop61446224_
                               (lambda (_hd61426228_ _opt61486231_)
                                 (if (gx#stx-pair? _hd61426228_)
                                     (let ((_e61456234_
                                            (gx#syntax-e _hd61426228_)))
                                       (let ((_lp-hd61466238_
                                              (##car _e61456234_))
                                             (_lp-tl61476241_
                                              (##cdr _e61456234_)))
                                         (_loop61446224_
                                          _lp-tl61476241_
                                          (cons _lp-hd61466238_
                                                _opt61486231_))))
                                     (let ((_opt61496244_
                                            (reverse _opt61486231_)))
                                       (if (gx#stx-pair? _tl61406215_)
                                           (let ((_e61506248_
                                                  (gx#syntax-e _tl61406215_)))
                                             (let ((_hd61516252_
                                                    (##car _e61506248_))
                                                   (_tl61526255_
                                                    (##cdr _e61506248_)))
                                               (if (gx#stx-pair? _tl61526255_)
                                                   (let ((_e61536258_
                                                          (gx#syntax-e
                                                           _tl61526255_)))
                                                     (let ((_hd61546262_
                                                            (##car _e61536258_))
                                                           (_tl61556265_
                                                            (##cdr _e61536258_)))
                                                       (if (gx#stx-null?
                                                            _tl61556265_)
                                                           ((lambda (_L6268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6270_
                             _L6271_
                             _L6272_)
                      (let ()
                        (list (list (begin
                                      '#!void
                                      (foldr (lambda (_g63006305_ _g63016308_)
                                               (cons _g63006305_ _g63016308_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g63026311_
                                                               _g63036314_)
                                                        (cons _g63026311_
                                                              _g63036314_))
                                                      _L6270_
                                                      _L6271_))
                                             _L6272_))
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'apply)
                                           (cons _L6268_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g63166321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g63176324_)
                    (cons _g63166321_ _g63176324_))
                  (begin
                    '#!void
                    (foldr (lambda (_g63186327_ _g63196330_)
                             (cons _g63186327_ _g63196330_))
                           (cons _L6270_ '())
                           _L6271_))
                  _L6272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _stx4587_))))))
                    _hd61546262_
                    _hd61516252_
                    _opt61496244_
                    _pre61376204_)
                   (_g61206161_ _g61216165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g61206161_ _g61216165_))))
                                           (_g61206161_ _g61216165_)))))))
                       (_loop61446224_ _target61416218_ '()))
                     (_g61206161_ _g61216165_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g61206161_ _g61216165_))
                                               (_g61206161_ _g61216165_))))
                                       (_g61206161_ _g61216165_)))))))
                   (_loop61326184_ _target61296178_ '()))
                 (_g61206161_ _g61216165_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g61206161_ _g61216165_))
                                           (_g61206161_ _g61216165_))))
                                   (_g61206161_ _g61216165_)))))
                        (_g61196333_
                         (list _pre5896_
                               (reverse _right5905_)
                               _tail5898_
                               _primary5894_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _recur5900_)
                                        _opt5897_
                                        '()))))
                                (let ((_generate-kw-dispatch4603_
                                       (lambda (_primary5152_
                                                _kwargs5154_
                                                _strict?5155_)
                                         (let ((_g51575176_
                                                (lambda (_g51585172_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g51585172_))))
                                           (let ((_g51565235_
                                                  (lambda (_g51585180_)
                                                    (if (gx#stx-pair?
                                                         _g51585180_)
                                                        (let ((_e51625183_
                                                               (gx#syntax-e
                                                                _g51585180_)))
                                                          (let ((_hd51635187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e51625183_))
                        (_tl51645190_ (##cdr _e51625183_)))
                    (if (gx#stx-pair? _tl51645190_)
                        (let ((_e51655193_ (gx#syntax-e _tl51645190_)))
                          (let ((_hd51665197_ (##car _e51655193_))
                                (_tl51675200_ (##cdr _e51655193_)))
                            (if (gx#stx-pair? _tl51675200_)
                                (let ((_e51685203_ (gx#syntax-e _tl51675200_)))
                                  (let ((_hd51695207_ (##car _e51685203_))
                                        (_tl51705210_ (##cdr _e51685203_)))
                                    (if (gx#stx-null? _tl51705210_)
                                        ((lambda (_L5213_ _L5215_ _L5216_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda%)
                                                   (cons _L5213_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'apply)
                             (cons (gx#datum->syntax '#f 'keyword-dispatch)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L5216_ '()))
                                         (cons _L5215_ (cons _L5213_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd51695207_
                                         _hd51665197_
                                         _hd51635187_)
                                        (_g51575176_ _g51585180_))))
                                (_g51575176_ _g51585180_))))
                        (_g51575176_ _g51585180_))))
                (_g51575176_ _g51585180_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g51565235_
                                              (list (if _strict?5155_
                                                        (_generate-kw-table4604_
                                                         (map car
                                                              _kwargs5154_))
                                                        '#f)
                                                    _primary5152_
                                                    (gx#genident 'args))))))))
                                  (let ((_generate-opt-dispatch4599_
                                         (lambda (_primary6337_
                                                  _pre6339_
                                                  _opt6340_
                                                  _tail6341_)
                                           (cons (list _pre6339_
                                                       (_generate-opt-clause4601_
                                                        _primary6337_
                                                        _pre6339_
                                                        _opt6340_))
                                                 (_generate-opt-dispatch*4600_
                                                  _primary6337_
                                                  _pre6339_
                                                  _opt6340_
                                                  _tail6341_)))))
                                    (let ((_g46084639_
                                           (lambda (_g46094635_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g46094635_))))
                                      (let ((_g46074852_
                                             (lambda (_g46094643_)
                                               (if (gx#stx-pair? _g46094643_)
                                                   (let ((_e46284646_
                                                          (gx#syntax-e
                                                           _g46094643_)))
                                                     (let ((_hd46294650_
                                                            (##car _e46284646_))
                                                           (_tl46304653_
                                                            (##cdr _e46284646_)))
                                                       (if (gx#stx-pair?
                                                            _tl46304653_)
                                                           (let ((_e46314656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl46304653_)))
                     (let ((_hd46324660_ (##car _e46314656_))
                           (_tl46334663_ (##cdr _e46314656_)))
                       ((lambda (_L4666_ _L4668_)
                          (if (_kw-lambda?4594_ _L4668_)
                              (let ((_g46844691_
                                     (lambda (_g46854687_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g46854687_))))
                                (let ((_g46834848_
                                       (lambda (_g46854695_)
                                         ((lambda ()
                                            (let ()
                                              (let ((_g28258_
                                                     (_kw-lambda-split4595_
                                                      _L4668_)))
                                                (begin
                                                  (let ((_g28259_
                                                         (values-count
                                                          _g28258_)))
                                                    (if (not (fx= _g28259_ 3))
                                                        (error "Context expects 3 values"
                                                               _g28259_)))
                                                  (let ((_key4704_
                                                         (values-ref
                                                          _g28258_
                                                          0))
                                                        (_kwargs4706_
                                                         (values-ref
                                                          _g28258_
                                                          1))
                                                        (_args4707_
                                                         (values-ref
                                                          _g28258_
                                                          2)))
                                                    (let ((_g47094717_
                                                           (lambda (_g47104713_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g47104713_))))
                                                      (let ((_g47084840_
                                                             (lambda (_g47104721_)
                                                               ((lambda (_L4724_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g47424750_
                                   (lambda (_g47434746_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g47434746_))))
                              (let ((_g47414836_
                                     (lambda (_g47434754_)
                                       ((lambda (_L4757_)
                                          (let ()
                                            (let ((_g47704778_
                                                   (lambda (_g47714774_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g47714774_))))
                                              (let ((_g47694832_
                                                     (lambda (_g47714782_)
                                                       ((lambda (_L4785_)
                                                          (let ()
                                                            (let ((_g47984806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g47994802_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g47994802_))))
                      (let ((_g47974828_
                             (lambda (_g47994810_)
                               ((lambda (_L4813_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (cons _L4757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _L4785_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L4813_ '()))))))
                                _g47994810_))))
                        (_g47974828_
                         (gx#stx-wrap-source
                          (_generate-kw-dispatch4603_
                           _L4757_
                           _kwargs4706_
                           (not _key4704_))
                          (gx#stx-source _stx4587_)))))))
                _g47714782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g47694832_
                                                 (gx#stx-wrap-source
                                                  (_generate-kw-primary4602_
                                                   _L4724_
                                                   _kwargs4706_
                                                   _args4707_
                                                   _L4666_)
                                                  (gx#stx-source
                                                   _stx4587_)))))))
                                        _g47434754_))))
                                (_g47414836_ (gx#genident 'kw-lambda))))))
                        _g47104721_))))
                (_g47084840_
                 (let ((_$e4844_ _key4704_))
                   (if _$e4844_ _$e4844_ (gx#genident 'key)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g46834848_
                                   (_check-duplicate-bindings4597_ _L4668_))))
                              (_g46084639_ _g46094643_)))
                        _tl46334663_
                        _hd46324660_)))
                   (_g46084639_ _g46094643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g46084639_
                                                    _g46094643_)))))
                                        (let ((_g46065080_
                                               (lambda (_g46094856_)
                                                 (if (gx#stx-pair? _g46094856_)
                                                     (let ((_e46204859_
                                                            (gx#syntax-e
                                                             _g46094856_)))
                                                       (let ((_hd46214863_
                                                              (##car _e46204859_))
                                                             (_tl46224866_
                                                              (##cdr _e46204859_)))
                                                         (if (gx#stx-pair?
                                                              _tl46224866_)
                                                             (let ((_e46234869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl46224866_)))
                       (let ((_hd46244873_ (##car _e46234869_))
                             (_tl46254876_ (##cdr _e46234869_)))
                         ((lambda (_L4879_ _L4881_)
                            (if (_opt-lambda?4592_ _L4881_)
                                (let ((_g28260_
                                       (_opt-lambda-split4593_ _L4881_)))
                                  (begin
                                    (let ((_g28261_ (values-count _g28260_)))
                                      (if (not (fx= _g28261_ 3))
                                          (error "Context expects 3 values"
                                                 _g28261_)))
                                    (let ((_pre4894_ (values-ref _g28260_ 0))
                                          (_opt4896_ (values-ref _g28260_ 1))
                                          (_tail4897_ (values-ref _g28260_ 2)))
                                      (let ((_g48994907_
                                             (lambda (_g49004903_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g49004903_))))
                                        (let ((_g48985076_
                                               (lambda (_g49004911_)
                                                 ((lambda (_L4914_)
                                                    (let ()
                                                      (let ((_g49274935_
                                                             (lambda (_g49284931_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g49284931_))))
                                                        (let ((_g49265072_
                                                               (lambda (_g49284939_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L4942_)
                            (let ()
                              (let ((_g49554972_
                                     (lambda (_g49564968_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g49564968_))))
                                (let ((_g49545068_
                                       (lambda (_g49564976_)
                                         (if (gx#stx-pair/null? _g49564976_)
                                             (if (fx>= (gx#stx-length
                                                        _g49564976_)
                                                       '0)
                                                 (let ((_g28262_
                                                        (gx#syntax-split-splice
                                                         _g49564976_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28263_
                                                            (values-count
                                                             _g28262_)))
                                                       (if (not (fx= _g28263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28263_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target49584979_
                                                            (values-ref
                                                             _g28262_
                                                             0))
                                                           (_tl49604982_
                                                            (values-ref
                                                             _g28262_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl49604982_)
                                                           (letrec ((_loop49614985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd49594989_ _clause49654992_)
                               (if (gx#stx-pair? _hd49594989_)
                                   (let ((_e49624995_
                                          (gx#syntax-e _hd49594989_)))
                                     (let ((_lp-hd49634999_
                                            (##car _e49624995_))
                                           (_lp-tl49645002_
                                            (##cdr _e49624995_)))
                                       (_loop49614985_
                                        _lp-tl49645002_
                                        (cons _lp-hd49634999_
                                              _clause49654992_))))
                                   (let ((_clause49665005_
                                          (reverse _clause49654992_)))
                                     ((lambda (_L5009_)
                                        (let ()
                                          (let ((_g50265034_
                                                 (lambda (_g50275030_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g50275030_))))
                                            (let ((_g50255056_
                                                   (lambda (_g50275038_)
                                                     ((lambda (_L5041_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L4914_ '())
                                            (cons _L4942_ '()))
                                      '())
                                (cons _L5041_ '()))))))
              _g50275038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g50255056_
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g50595062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g50605065_)
                         (cons _g50595062_ _g50605065_))
                       '()
                       _L5009_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx4587_)))))))
                                      _clause49665005_))))))
                     (_loop49614985_ _target49584979_ '()))
                   (_g49554972_ _g49564976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g49554972_ _g49564976_))
                                             (_g49554972_ _g49564976_)))))
                                  (_g49545068_
                                   (_generate-opt-dispatch4599_
                                    _L4914_
                                    _pre4894_
                                    _opt4896_
                                    _tail4897_))))))
                          _g49284939_))))
                  (_g49265072_
                   (gx#stx-wrap-source
                    (_generate-opt-primary4598_
                     _pre4894_
                     _opt4896_
                     _tail4897_
                     _L4879_)
                    (gx#stx-source _stx4587_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g49004911_))))
                                          (_g48985076_
                                           (gx#genident 'opt-lambda)))))))
                                (_g46074852_ _g46094856_)))
                          _tl46254876_
                          _hd46244873_)))
                     (_g46074852_ _g46094856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g46074852_
                                                      _g46094856_)))))
                                          (let ((_g46055122_
                                                 (lambda (_g46095084_)
                                                   (if (gx#stx-pair?
                                                        _g46095084_)
                                                       (let ((_e46125087_
                                                              (gx#syntax-e
                                                               _g46095084_)))
                                                         (let ((_hd46135091_
                                                                (##car _e46125087_))
                                                               (_tl46145094_
                                                                (##cdr _e46125087_)))
                                                           (if (gx#stx-pair?
                                                                _tl46145094_)
                                                               (let ((_e46155097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl46145094_)))
                         (let ((_hd46165101_ (##car _e46155097_))
                               (_tl46175104_ (##cdr _e46155097_)))
                           ((lambda (_L5107_ _L5109_)
                              (if (_simple-lambda?4590_ _L5109_)
                                  (cons (gx#datum->syntax '#f 'lambda%)
                                        (cons _L5109_ _L5107_))
                                  (_g46065080_ _g46095084_)))
                            _tl46175104_
                            _hd46165101_)))
                       (_g46065080_ _g46095084_))))
               (_g46065080_ _g46095084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g46055122_
                                             _stx4587_)))))))))))))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def|
      (lambda (_$stx7754_)
        (let ((_g77597798_
               (lambda (_g77607794_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g77607794_))))
          (let ((_g77587853_
                 (lambda (_g77607802_)
                   (if (gx#stx-pair? _g77607802_)
                       (let ((_e77847805_ (gx#syntax-e _g77607802_)))
                         (let ((_hd77857809_ (##car _e77847805_))
                               (_tl77867812_ (##cdr _e77847805_)))
                           (if (gx#stx-pair? _tl77867812_)
                               (let ((_e77877815_ (gx#syntax-e _tl77867812_)))
                                 (let ((_hd77887819_ (##car _e77877815_))
                                       (_tl77897822_ (##cdr _e77877815_)))
                                   (if (gx#stx-pair? _tl77897822_)
                                       (let ((_e77907825_
                                              (gx#syntax-e _tl77897822_)))
                                         (let ((_hd77917829_
                                                (##car _e77907825_))
                                               (_tl77927832_
                                                (##cdr _e77907825_)))
                                           (if (gx#stx-null? _tl77927832_)
                                               ((lambda (_L7835_ _L7837_)
                                                  (if (gx#identifier? _L7837_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L7837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L7835_ '())))
              (_g77597798_ _g77607802_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd77917829_
                                                _hd77887819_)
                                               (_g77597798_ _g77607802_))))
                                       (_g77597798_ _g77607802_))))
                               (_g77597798_ _g77607802_))))
                       (_g77597798_ _g77607802_)))))
            (let ((_g77577951_
                   (lambda (_g77607857_)
                     (if (gx#stx-pair? _g77607857_)
                         (let ((_e77647860_ (gx#syntax-e _g77607857_)))
                           (let ((_hd77657864_ (##car _e77647860_))
                                 (_tl77667867_ (##cdr _e77647860_)))
                             (if (gx#stx-pair? _tl77667867_)
                                 (let ((_e77677870_
                                        (gx#syntax-e _tl77667867_)))
                                   (let ((_hd77687874_ (##car _e77677870_))
                                         (_tl77697877_ (##cdr _e77677870_)))
                                     (if (gx#stx-pair? _hd77687874_)
                                         (let ((_e77707880_
                                                (gx#syntax-e _hd77687874_)))
                                           (let ((_hd77717884_
                                                  (##car _e77707880_))
                                                 (_tl77727887_
                                                  (##cdr _e77707880_)))
                                             (if (gx#stx-pair/null?
                                                  _tl77697877_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl77697877_)
                                                           '0)
                                                     (let ((_g28280_
                                                            (gx#syntax-split-splice
                                                             _tl77697877_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28281_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28280_)))
                   (if (not (fx= _g28281_ 2))
                       (error "Context expects 2 values" _g28281_)))
                 (let ((_target77737890_ (values-ref _g28280_ 0))
                       (_tl77757893_ (values-ref _g28280_ 1)))
                   (if (gx#stx-null? _tl77757893_)
                       (letrec ((_loop77767896_
                                 (lambda (_hd77747900_ _body77807903_)
                                   (if (gx#stx-pair? _hd77747900_)
                                       (let ((_e77777906_
                                              (gx#syntax-e _hd77747900_)))
                                         (let ((_lp-hd77787910_
                                                (##car _e77777906_))
                                               (_lp-tl77797913_
                                                (##cdr _e77777906_)))
                                           (_loop77767896_
                                            _lp-tl77797913_
                                            (cons _lp-hd77787910_
                                                  _body77807903_))))
                                       (let ((_body77817916_
                                              (reverse _body77807903_)))
                                         ((lambda (_L7920_ _L7922_ _L7923_)
                                            (if (gx#identifier? _L7923_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L7923_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons _L7922_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g79427945_
                                                        _g79437948_)
                                                 (cons _g79427945_
                                                       _g79437948_))
                                               '()
                                               _L7920_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g77587853_ _g77607857_)))
                                          _body77817916_
                                          _tl77727887_
                                          _hd77717884_))))))
                         (_loop77767896_ _target77737890_ '()))
                       (_g77587853_ _g77607857_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g77587853_ _g77607857_))
                                                 (_g77587853_ _g77607857_))))
                                         (_g77587853_ _g77607857_))))
                                 (_g77587853_ _g77607857_))))
                         (_g77587853_ _g77607857_)))))
              (_g77577951_ _$stx7754_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def*|
      (lambda (_$stx7956_)
        (let ((_g79607984_
               (lambda (_g79617980_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g79617980_))))
          (let ((_g79598069_
                 (lambda (_g79617988_)
                   (if (gx#stx-pair? _g79617988_)
                       (let ((_e79647991_ (gx#syntax-e _g79617988_)))
                         (let ((_hd79657995_ (##car _e79647991_))
                               (_tl79667998_ (##cdr _e79647991_)))
                           (if (gx#stx-pair? _tl79667998_)
                               (let ((_e79678001_ (gx#syntax-e _tl79667998_)))
                                 (let ((_hd79688005_ (##car _e79678001_))
                                       (_tl79698008_ (##cdr _e79678001_)))
                                   (if (gx#stx-pair/null? _tl79698008_)
                                       (if (fx>= (gx#stx-length _tl79698008_)
                                                 '0)
                                           (let ((_g28282_
                                                  (gx#syntax-split-splice
                                                   _tl79698008_
                                                   '0)))
                                             (begin
                                               (let ((_g28283_
                                                      (values-count _g28282_)))
                                                 (if (not (fx= _g28283_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28283_)))
                                               (let ((_target79708011_
                                                      (values-ref _g28282_ 0))
                                                     (_tl79728014_
                                                      (values-ref _g28282_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl79728014_)
                                                     (letrec ((_loop79738017_
                                                               (lambda (_hd79718021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses79778024_)
                         (if (gx#stx-pair? _hd79718021_)
                             (let ((_e79748027_ (gx#syntax-e _hd79718021_)))
                               (let ((_lp-hd79758031_ (##car _e79748027_))
                                     (_lp-tl79768034_ (##cdr _e79748027_)))
                                 (_loop79738017_
                                  _lp-tl79768034_
                                  (cons _lp-hd79758031_ _clauses79778024_))))
                             (let ((_clauses79788037_
                                    (reverse _clauses79778024_)))
                               ((lambda (_L8041_ _L8043_)
                                  (if (gx#identifier? _L8043_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'define-values)
                                            (cons (cons _L8043_ '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'case-lambda)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g80608063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g80618066_)
                                 (cons _g80608063_ _g80618066_))
                               '()
                               _L8041_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g79607984_ _g79617988_)))
                                _clauses79788037_
                                _hd79688005_))))))
               (_loop79738017_ _target79708011_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g79607984_
                                                      _g79617988_)))))
                                           (_g79607984_ _g79617988_))
                                       (_g79607984_ _g79617988_))))
                               (_g79607984_ _g79617988_))))
                       (_g79607984_ _g79617988_)))))
            (_g79598069_ _$stx7956_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8074_)
        (let ((_g80788096_
               (lambda (_g80798092_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g80798092_))))
          (let ((_g80778151_
                 (lambda (_g80798100_)
                   (if (gx#stx-pair? _g80798100_)
                       (let ((_e80828103_ (gx#syntax-e _g80798100_)))
                         (let ((_hd80838107_ (##car _e80828103_))
                               (_tl80848110_ (##cdr _e80828103_)))
                           (if (gx#stx-pair? _tl80848110_)
                               (let ((_e80858113_ (gx#syntax-e _tl80848110_)))
                                 (let ((_hd80868117_ (##car _e80858113_))
                                       (_tl80878120_ (##cdr _e80858113_)))
                                   (if (gx#stx-pair? _tl80878120_)
                                       (let ((_e80888123_
                                              (gx#syntax-e _tl80878120_)))
                                         (let ((_hd80898127_
                                                (##car _e80888123_))
                                               (_tl80908130_
                                                (##cdr _e80888123_)))
                                           (if (gx#stx-null? _tl80908130_)
                                               ((lambda (_L8133_ _L8135_)
                                                  (if (gx#identifier-list?
                                                       _L8135_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons _L8135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L8133_ '())))
              (_g80788096_ _g80798100_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd80898127_
                                                _hd80868117_)
                                               (_g80788096_ _g80798100_))))
                                       (_g80788096_ _g80798100_))))
                               (_g80788096_ _g80798100_))))
                       (_g80788096_ _g80798100_)))))
            (_g80778151_ _$stx8074_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#case|
      (lambda (_$stx8155_)
        (let ((_g81598183_
               (lambda (_g81608179_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g81608179_))))
          (let ((_g81588268_
                 (lambda (_g81608187_)
                   (if (gx#stx-pair? _g81608187_)
                       (let ((_e81638190_ (gx#syntax-e _g81608187_)))
                         (let ((_hd81648194_ (##car _e81638190_))
                               (_tl81658197_ (##cdr _e81638190_)))
                           (if (gx#stx-pair? _tl81658197_)
                               (let ((_e81668200_ (gx#syntax-e _tl81658197_)))
                                 (let ((_hd81678204_ (##car _e81668200_))
                                       (_tl81688207_ (##cdr _e81668200_)))
                                   (if (gx#stx-pair/null? _tl81688207_)
                                       (if (fx>= (gx#stx-length _tl81688207_)
                                                 '0)
                                           (let ((_g28284_
                                                  (gx#syntax-split-splice
                                                   _tl81688207_
                                                   '0)))
                                             (begin
                                               (let ((_g28285_
                                                      (values-count _g28284_)))
                                                 (if (not (fx= _g28285_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28285_)))
                                               (let ((_target81698210_
                                                      (values-ref _g28284_ 0))
                                                     (_tl81718213_
                                                      (values-ref _g28284_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl81718213_)
                                                     (letrec ((_loop81728216_
                                                               (lambda (_hd81708220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause81768223_)
                         (if (gx#stx-pair? _hd81708220_)
                             (let ((_e81738226_ (gx#syntax-e _hd81708220_)))
                               (let ((_lp-hd81748230_ (##car _e81738226_))
                                     (_lp-tl81758233_ (##cdr _e81738226_)))
                                 (_loop81728216_
                                  _lp-tl81758233_
                                  (cons _lp-hd81748230_ _clause81768223_))))
                             (let ((_clause81778236_
                                    (reverse _clause81768223_)))
                               ((lambda (_L8240_ _L8242_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$e)
                                                    (cons _L8242_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '~case)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e)
                        (begin
                          '#!void
                          (foldr (lambda (_g82598262_ _g82608265_)
                                   (cons _g82598262_ _g82608265_))
                                 '()
                                 _L8240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _clause81778236_
                                _hd81678204_))))))
               (_loop81728216_ _target81698210_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g81598183_
                                                      _g81608187_)))))
                                           (_g81598183_ _g81608187_))
                                       (_g81598183_ _g81608187_))))
                               (_g81598183_ _g81608187_))))
                       (_g81598183_ _g81608187_)))))
            (_g81588268_ _$stx8155_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case|
      (lambda (_$stx8273_)
        (let ((_g82818379_
               (lambda (_g82828375_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g82828375_))))
          (let ((_g82808494_
                 (lambda (_g82828383_)
                   (if (gx#stx-pair? _g82828383_)
                       (let ((_e83538386_ (gx#syntax-e _g82828383_)))
                         (let ((_hd83548390_ (##car _e83538386_))
                               (_tl83558393_ (##cdr _e83538386_)))
                           (if (gx#stx-pair? _tl83558393_)
                               (let ((_e83568396_ (gx#syntax-e _tl83558393_)))
                                 (let ((_hd83578400_ (##car _e83568396_))
                                       (_tl83588403_ (##cdr _e83568396_)))
                                   (if (gx#stx-pair? _tl83588403_)
                                       (let ((_e83598406_
                                              (gx#syntax-e _tl83588403_)))
                                         (let ((_hd83608410_
                                                (##car _e83598406_))
                                               (_tl83618413_
                                                (##cdr _e83598406_)))
                                           (if (gx#stx-pair? _hd83608410_)
                                               (let ((_e83628416_
                                                      (gx#syntax-e
                                                       _hd83608410_)))
                                                 (let ((_hd83638420_
                                                        (##car _e83628416_))
                                                       (_tl83648423_
                                                        (##cdr _e83628416_)))
                                                   (if (gx#stx-pair/null?
                                                        _tl83648423_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl83648423_)
                         '0)
                   (let ((_g28286_ (gx#syntax-split-splice _tl83648423_ '0)))
                     (begin
                       (let ((_g28287_ (values-count _g28286_)))
                         (if (not (fx= _g28287_ 2))
                             (error "Context expects 2 values" _g28287_)))
                       (let ((_target83658426_ (values-ref _g28286_ 0))
                             (_tl83678429_ (values-ref _g28286_ 1)))
                         (if (gx#stx-null? _tl83678429_)
                             (letrec ((_loop83688432_
                                       (lambda (_hd83668436_ _body83728439_)
                                         (if (gx#stx-pair? _hd83668436_)
                                             (let ((_e83698442_
                                                    (gx#syntax-e
                                                     _hd83668436_)))
                                               (let ((_lp-hd83708446_
                                                      (##car _e83698442_))
                                                     (_lp-tl83718449_
                                                      (##cdr _e83698442_)))
                                                 (_loop83688432_
                                                  _lp-tl83718449_
                                                  (cons _lp-hd83708446_
                                                        _body83728439_))))
                                             (let ((_body83738452_
                                                    (reverse _body83728439_)))
                                               ((lambda (_L8456_
                                                         _L8458_
                                                         _L8459_
                                                         _L8460_
                                                         _L8461_)
                                                  (if (gx#stx-list? _L8459_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '~case-test)
                                (cons _L8460_ (cons _L8459_ '())))
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g84858488_
                                                        _g84868491_)
                                                 (cons _g84858488_
                                                       _g84868491_))
                                               '()
                                               _L8458_)))
                                (cons (cons _L8461_ (cons _L8460_ _L8456_))
                                      '()))))
              (_g82818379_ _g82828383_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl83618413_
                                                _body83738452_
                                                _hd83638420_
                                                _hd83578400_
                                                _hd83548390_))))))
                               (_loop83688432_ _target83658426_ '()))
                             (_g82818379_ _g82828383_)))))
                   (_g82818379_ _g82828383_))
               (_g82818379_ _g82828383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g82818379_ _g82828383_))))
                                       (_g82818379_ _g82828383_))))
                               (_g82818379_ _g82828383_))))
                       (_g82818379_ _g82828383_)))))
            (let ((_g82798590_
                   (lambda (_g82828498_)
                     (if (gx#stx-pair? _g82828498_)
                         (let ((_e83308501_ (gx#syntax-e _g82828498_)))
                           (let ((_hd83318505_ (##car _e83308501_))
                                 (_tl83328508_ (##cdr _e83308501_)))
                             (if (gx#stx-pair? _tl83328508_)
                                 (let ((_e83338511_
                                        (gx#syntax-e _tl83328508_)))
                                   (let ((_hd83348515_ (##car _e83338511_))
                                         (_tl83358518_ (##cdr _e83338511_)))
                                     (if (gx#stx-pair? _tl83358518_)
                                         (let ((_e83368521_
                                                (gx#syntax-e _tl83358518_)))
                                           (let ((_hd83378525_
                                                  (##car _e83368521_))
                                                 (_tl83388528_
                                                  (##cdr _e83368521_)))
                                             (if (gx#stx-pair? _hd83378525_)
                                                 (let ((_e83398531_
                                                        (gx#syntax-e
                                                         _hd83378525_)))
                                                   (let ((_hd83408535_
                                                          (##car _e83398531_))
                                                         (_tl83418538_
                                                          (##cdr _e83398531_)))
                                                     (if (gx#stx-pair?
                                                          _tl83418538_)
                                                         (let ((_e83428541_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83418538_)))
                   (let ((_hd83438545_ (##car _e83428541_))
                         (_tl83448548_ (##cdr _e83428541_)))
                     (if (gx#identifier? _hd83438545_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<sugar>::<sugar:2>[1]#_g28288_|
                              _hd83438545_)
                             (if (gx#stx-pair? _tl83448548_)
                                 (let ((_e83458551_
                                        (gx#syntax-e _tl83448548_)))
                                   (let ((_hd83468555_ (##car _e83458551_))
                                         (_tl83478558_ (##cdr _e83458551_)))
                                     (if (gx#stx-null? _tl83478558_)
                                         ((lambda (_L8561_
                                                   _L8563_
                                                   _L8564_
                                                   _L8565_
                                                   _L8566_)
                                            (if (gx#stx-list? _L8564_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '~case-test)
                          (cons _L8565_ (cons _L8564_ '())))
                    (cons (cons _L8563_ (cons _L8565_ '()))
                          (cons (cons _L8566_ (cons _L8565_ _L8561_)) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g82808494_ _g82828498_)))
                                          _tl83388528_
                                          _hd83468555_
                                          _hd83408535_
                                          _hd83348515_
                                          _hd83318505_)
                                         (_g82808494_ _g82828498_))))
                                 (_g82808494_ _g82828498_))
                             (_g82808494_ _g82828498_))
                         (_g82808494_ _g82828498_))))
                 (_g82808494_ _g82828498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g82808494_ _g82828498_))))
                                         (_g82808494_ _g82828498_))))
                                 (_g82808494_ _g82828498_))))
                         (_g82808494_ _g82828498_)))))
              (let ((_g82788654_
                     (lambda (_g82828594_)
                       (if (gx#stx-pair? _g82828594_)
                           (let ((_e83138597_ (gx#syntax-e _g82828594_)))
                             (let ((_hd83148601_ (##car _e83138597_))
                                   (_tl83158604_ (##cdr _e83138597_)))
                               (if (gx#stx-pair? _tl83158604_)
                                   (let ((_e83168607_
                                          (gx#syntax-e _tl83158604_)))
                                     (let ((_hd83178611_ (##car _e83168607_))
                                           (_tl83188614_ (##cdr _e83168607_)))
                                       (if (gx#stx-pair? _tl83188614_)
                                           (let ((_e83198617_
                                                  (gx#syntax-e _tl83188614_)))
                                             (let ((_hd83208621_
                                                    (##car _e83198617_))
                                                   (_tl83218624_
                                                    (##cdr _e83198617_)))
                                               (if (gx#stx-pair? _hd83208621_)
                                                   (let ((_e83228627_
                                                          (gx#syntax-e
                                                           _hd83208621_)))
                                                     (let ((_hd83238631_
                                                            (##car _e83228627_))
                                                           (_tl83248634_
                                                            (##cdr _e83228627_)))
                                                       (if (gx#identifier?
                                                            _hd83238631_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g28289_|
                                                                _hd83238631_)
                                                               ((lambda (_L8637_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'syntax-error)
                                (cons '"Bad syntax; misplaced else" '())))
                        _hd83178611_)
                       (_g82798590_ _g82828594_))
                   (_g82798590_ _g82828594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g82798590_ _g82828594_))))
                                           (_g82798590_ _g82828594_))))
                                   (_g82798590_ _g82828594_))))
                           (_g82798590_ _g82828594_)))))
                (let ((_g82778762_
                       (lambda (_g82828658_)
                         (if (gx#stx-pair? _g82828658_)
                             (let ((_e82918661_ (gx#syntax-e _g82828658_)))
                               (let ((_hd82928665_ (##car _e82918661_))
                                     (_tl82938668_ (##cdr _e82918661_)))
                                 (if (gx#stx-pair? _tl82938668_)
                                     (let ((_e82948671_
                                            (gx#syntax-e _tl82938668_)))
                                       (let ((_hd82958675_ (##car _e82948671_))
                                             (_tl82968678_
                                              (##cdr _e82948671_)))
                                         (if (gx#stx-pair? _tl82968678_)
                                             (let ((_e82978681_
                                                    (gx#syntax-e
                                                     _tl82968678_)))
                                               (let ((_hd82988685_
                                                      (##car _e82978681_))
                                                     (_tl82998688_
                                                      (##cdr _e82978681_)))
                                                 (if (gx#stx-pair?
                                                      _hd82988685_)
                                                     (let ((_e83008691_
                                                            (gx#syntax-e
                                                             _hd82988685_)))
                                                       (let ((_hd83018695_
                                                              (##car _e83008691_))
                                                             (_tl83028698_
                                                              (##cdr _e83008691_)))
                                                         (if (gx#identifier?
                                                              _hd83018695_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<sugar>::<sugar:2>[1]#_g28290_|
                          _hd83018695_)
                         (if (gx#stx-pair/null? _tl83028698_)
                             (if (fx>= (gx#stx-length _tl83028698_) '0)
                                 (let ((_g28291_
                                        (gx#syntax-split-splice
                                         _tl83028698_
                                         '0)))
                                   (begin
                                     (let ((_g28292_ (values-count _g28291_)))
                                       (if (not (fx= _g28292_ 2))
                                           (error "Context expects 2 values"
                                                  _g28292_)))
                                     (let ((_target83038701_
                                            (values-ref _g28291_ 0))
                                           (_tl83058704_
                                            (values-ref _g28291_ 1)))
                                       (if (gx#stx-null? _tl83058704_)
                                           (letrec ((_loop83068707_
                                                     (lambda (_hd83048711_
                                                              _body83108714_)
                                                       (if (gx#stx-pair?
                                                            _hd83048711_)
                                                           (let ((_e83078717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd83048711_)))
                     (let ((_lp-hd83088721_ (##car _e83078717_))
                           (_lp-tl83098724_ (##cdr _e83078717_)))
                       (_loop83068707_
                        _lp-tl83098724_
                        (cons _lp-hd83088721_ _body83108714_))))
                   (let ((_body83118727_ (reverse _body83108714_)))
                     (if (gx#stx-null? _tl82998688_)
                         ((lambda (_L8731_ _L8733_)
                            (cons (gx#datum->syntax '#f 'begin)
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g87538756_ _g87548759_)
                                             (cons _g87538756_ _g87548759_))
                                           '()
                                           _L8731_))))
                          _body83118727_
                          _hd82958675_)
                         (_g82788654_ _g82828658_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop83068707_
                                              _target83038701_
                                              '()))
                                           (_g82788654_ _g82828658_)))))
                                 (_g82788654_ _g82828658_))
                             (_g82788654_ _g82828658_))
                         (_g82788654_ _g82828658_))
                     (_g82788654_ _g82828658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g82788654_
                                                      _g82828658_))))
                                             (_g82788654_ _g82828658_))))
                                     (_g82788654_ _g82828658_))))
                             (_g82788654_ _g82828658_)))))
                  (let ((_g82768793_
                         (lambda (_g82828766_)
                           (if (gx#stx-pair? _g82828766_)
                               (let ((_e82838769_ (gx#syntax-e _g82828766_)))
                                 (let ((_hd82848773_ (##car _e82838769_))
                                       (_tl82858776_ (##cdr _e82838769_)))
                                   (if (gx#stx-pair? _tl82858776_)
                                       (let ((_e82868779_
                                              (gx#syntax-e _tl82858776_)))
                                         (let ((_hd82878783_
                                                (##car _e82868779_))
                                               (_tl82888786_
                                                (##cdr _e82868779_)))
                                           (if (gx#stx-null? _tl82888786_)
                                               ((lambda () '#!void))
                                               (_g82778762_ _g82828766_))))
                                       (_g82778762_ _g82828766_))))
                               (_g82778762_ _g82828766_)))))
                    (_g82768793_ _$stx8273_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case-test|
      (lambda (_stx8799_)
        (let ((_memq-datum?8802_
               (lambda (_x9164_)
                 (let ((_e9167_ (gx#stx-e _x9164_)))
                   (let ((_$e9170_ (symbol? _e9167_)))
                     (if _$e9170_
                         _$e9170_
                         (let ((_$e9174_ (keyword? _e9167_)))
                           (if _$e9174_ _$e9174_ (immediate? _e9167_)))))))))
          (let ((_memv-datum?8804_
                 (lambda (_x9157_)
                   (let ((_$e9160_ (_memq-datum?8802_ _x9157_)))
                     (if _$e9160_ _$e9160_ (gx#stx-number? _x9157_))))))
            (let ((_g88088859_
                   (lambda (_g88098855_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g88098855_))))
              (let ((_g88079004_
                     (lambda (_g88098863_)
                       (if (gx#stx-pair? _g88098863_)
                           (let ((_e88368866_ (gx#syntax-e _g88098863_)))
                             (let ((_hd88378870_ (##car _e88368866_))
                                   (_tl88388873_ (##cdr _e88368866_)))
                               (if (gx#stx-pair? _tl88388873_)
                                   (let ((_e88398876_
                                          (gx#syntax-e _tl88388873_)))
                                     (let ((_hd88408880_ (##car _e88398876_))
                                           (_tl88418883_ (##cdr _e88398876_)))
                                       (if (gx#stx-pair? _tl88418883_)
                                           (let ((_e88428886_
                                                  (gx#syntax-e _tl88418883_)))
                                             (let ((_hd88438890_
                                                    (##car _e88428886_))
                                                   (_tl88448893_
                                                    (##cdr _e88428886_)))
                                               (if (gx#stx-pair/null?
                                                    _hd88438890_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd88438890_)
                                                             '0)
                                                       (let ((_g28293_
                                                              (gx#syntax-split-splice
                                                               _hd88438890_
                                                               '0)))
                                                         (begin
                                                           (let ((_g28294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g28293_)))
                     (if (not (fx= _g28294_ 2))
                         (error "Context expects 2 values" _g28294_)))
                   (let ((_target88458896_ (values-ref _g28293_ 0))
                         (_tl88478899_ (values-ref _g28293_ 1)))
                     (if (gx#stx-null? _tl88478899_)
                         (letrec ((_loop88488902_
                                   (lambda (_hd88468906_ _datum88528909_)
                                     (if (gx#stx-pair? _hd88468906_)
                                         (let ((_e88498912_
                                                (gx#syntax-e _hd88468906_)))
                                           (let ((_lp-hd88508916_
                                                  (##car _e88498912_))
                                                 (_lp-tl88518919_
                                                  (##cdr _e88498912_)))
                                             (_loop88488902_
                                              _lp-tl88518919_
                                              (cons _lp-hd88508916_
                                                    _datum88528909_))))
                                         (let ((_datum88538922_
                                                (reverse _datum88528909_)))
                                           (if (gx#stx-null? _tl88448893_)
                                               ((lambda (_L8926_ _L8928_)
                                                  (let ((_g89498957_
                                                         (lambda (_g89508953_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g89508953_))))
                                                    (let ((_g89488984_
                                                           (lambda (_g89508961_)
                                                             ((lambda (_L8964_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L8964_
                                (cons _L8928_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons (begin
                                                          '#!void
                                                          (foldr (lambda (_g89758978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g89768981_)
                           (cons _g89758978_ _g89768981_))
                         '()
                         _L8926_))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _g89508961_))))
              (_g89488984_
               (if (gx#stx-andmap
                    _memq-datum?8802_
                    (begin
                      '#!void
                      (foldr (lambda (_g89878990_ _g89888993_)
                               (cons _g89878990_ _g89888993_))
                             '()
                             _L8926_)))
                   (gx#datum->syntax '#f 'memq)
                   (if (gx#stx-andmap
                        _memv-datum?8804_
                        (begin
                          '#!void
                          (foldr (lambda (_g89958998_ _g89969001_)
                                   (cons _g89958998_ _g89969001_))
                                 '()
                                 _L8926_)))
                       (gx#datum->syntax '#f 'memv)
                       (gx#datum->syntax '#f 'member)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _datum88538922_
                                                _hd88408880_)
                                               (_g88088859_ _g88098863_)))))))
                           (_loop88488902_ _target88458896_ '()))
                         (_g88088859_ _g88098863_)))))
               (_g88088859_ _g88098863_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g88088859_ _g88098863_))))
                                           (_g88088859_ _g88098863_))))
                                   (_g88088859_ _g88098863_))))
                           (_g88088859_ _g88098863_)))))
                (let ((_g88069101_
                       (lambda (_g88099008_)
                         (if (gx#stx-pair? _g88099008_)
                             (let ((_e88229011_ (gx#syntax-e _g88099008_)))
                               (let ((_hd88239015_ (##car _e88229011_))
                                     (_tl88249018_ (##cdr _e88229011_)))
                                 (if (gx#stx-pair? _tl88249018_)
                                     (let ((_e88259021_
                                            (gx#syntax-e _tl88249018_)))
                                       (let ((_hd88269025_ (##car _e88259021_))
                                             (_tl88279028_
                                              (##cdr _e88259021_)))
                                         (if (gx#stx-pair? _tl88279028_)
                                             (let ((_e88289031_
                                                    (gx#syntax-e
                                                     _tl88279028_)))
                                               (let ((_hd88299035_
                                                      (##car _e88289031_))
                                                     (_tl88309038_
                                                      (##cdr _e88289031_)))
                                                 (if (gx#stx-pair?
                                                      _hd88299035_)
                                                     (let ((_e88319041_
                                                            (gx#syntax-e
                                                             _hd88299035_)))
                                                       (let ((_hd88329045_
                                                              (##car _e88319041_))
                                                             (_tl88339048_
                                                              (##cdr _e88319041_)))
                                                         (if (gx#stx-null?
                                                              _tl88339048_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl88309038_)
                         ((lambda (_L9051_ _L9053_)
                            (let ((_g90709078_
                                   (lambda (_g90719074_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g90719074_))))
                              (let ((_g90699097_
                                     (lambda (_g90719082_)
                                       ((lambda (_L9085_)
                                          (let ()
                                            (cons _L9085_
                                                  (cons _L9053_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L9051_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g90719082_))))
                                (_g90699097_
                                 (if (_memq-datum?8802_ _L9051_)
                                     (gx#datum->syntax '#f 'eq?)
                                     (if (_memv-datum?8804_ _L9051_)
                                         (gx#datum->syntax '#f 'eqv?)
                                         (gx#datum->syntax '#f 'equal?)))))))
                          _hd88329045_
                          _hd88269025_)
                         (_g88079004_ _g88099008_))
                     (_g88079004_ _g88099008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g88079004_
                                                      _g88099008_))))
                                             (_g88079004_ _g88099008_))))
                                     (_g88079004_ _g88099008_))))
                             (_g88079004_ _g88099008_)))))
                  (let ((_g88059153_
                         (lambda (_g88099105_)
                           (if (gx#stx-pair? _g88099105_)
                               (let ((_e88119108_ (gx#syntax-e _g88099105_)))
                                 (let ((_hd88129112_ (##car _e88119108_))
                                       (_tl88139115_ (##cdr _e88119108_)))
                                   (if (gx#stx-pair? _tl88139115_)
                                       (let ((_e88149118_
                                              (gx#syntax-e _tl88139115_)))
                                         (let ((_hd88159122_
                                                (##car _e88149118_))
                                               (_tl88169125_
                                                (##cdr _e88149118_)))
                                           (if (gx#stx-pair? _tl88169125_)
                                               (let ((_e88179128_
                                                      (gx#syntax-e
                                                       _tl88169125_)))
                                                 (let ((_hd88189132_
                                                        (##car _e88179128_))
                                                       (_tl88199135_
                                                        (##cdr _e88179128_)))
                                                   (if (gx#stx-null?
                                                        _hd88189132_)
                                                       (if (gx#stx-null?
                                                            _tl88199135_)
                                                           ((lambda (_L9138_)
                                                              '#f)
                                                            _hd88159122_)
                                                           (_g88069101_
                                                            _g88099105_))
                                                       (_g88069101_
                                                        _g88099105_))))
                                               (_g88069101_ _g88099105_))))
                                       (_g88069101_ _g88099105_))))
                               (_g88069101_ _g88099105_)))))
                    (_g88059153_ _stx8799_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do|
      (lambda (_$stx9179_)
        (let ((_g91839254_
               (lambda (_g91849250_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g91849250_))))
          (let ((_g91829543_
                 (lambda (_g91849258_)
                   (if (gx#stx-pair? _g91849258_)
                       (let ((_e91919261_ (gx#syntax-e _g91849258_)))
                         (let ((_hd91929265_ (##car _e91919261_))
                               (_tl91939268_ (##cdr _e91919261_)))
                           (if (gx#stx-pair? _tl91939268_)
                               (let ((_e91949271_ (gx#syntax-e _tl91939268_)))
                                 (let ((_hd91959275_ (##car _e91949271_))
                                       (_tl91969278_ (##cdr _e91949271_)))
                                   (if (gx#stx-pair/null? _hd91959275_)
                                       (if (fx>= (gx#stx-length _hd91959275_)
                                                 '0)
                                           (let ((_g28295_
                                                  (gx#syntax-split-splice
                                                   _hd91959275_
                                                   '0)))
                                             (begin
                                               (let ((_g28296_
                                                      (values-count _g28295_)))
                                                 (if (not (fx= _g28296_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28296_)))
                                               (let ((_target91979281_
                                                      (values-ref _g28295_ 0))
                                                     (_tl91999284_
                                                      (values-ref _g28295_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl91999284_)
                                                     (letrec ((_loop92009287_
                                                               (lambda (_hd91989291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _step92049294_
                                _init92059296_
                                _var92069298_)
                         (if (gx#stx-pair? _hd91989291_)
                             (let ((_e92019301_ (gx#syntax-e _hd91989291_)))
                               (let ((_lp-hd92029305_ (##car _e92019301_))
                                     (_lp-tl92039308_ (##cdr _e92019301_)))
                                 (if (gx#stx-pair? _lp-hd92029305_)
                                     (let ((_e92109311_
                                            (gx#syntax-e _lp-hd92029305_)))
                                       (let ((_hd92119315_ (##car _e92109311_))
                                             (_tl92129318_
                                              (##cdr _e92109311_)))
                                         (if (gx#stx-pair? _tl92129318_)
                                             (let ((_e92139321_
                                                    (gx#syntax-e
                                                     _tl92129318_)))
                                               (let ((_hd92149325_
                                                      (##car _e92139321_))
                                                     (_tl92159328_
                                                      (##cdr _e92139321_)))
                                                 (if (gx#stx-pair/null?
                                                      _tl92159328_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl92159328_)
                                                               '0)
                                                         (let ((_g28297_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl92159328_
                         '0)))
                   (begin
                     (let ((_g28298_ (values-count _g28297_)))
                       (if (not (fx= _g28298_ 2))
                           (error "Context expects 2 values" _g28298_)))
                     (let ((_target92169331_ (values-ref _g28297_ 0))
                           (_tl92189334_ (values-ref _g28297_ 1)))
                       (if (gx#stx-null? _tl92189334_)
                           (letrec ((_loop92199337_
                                     (lambda (_hd92179341_ _step92239344_)
                                       (if (gx#stx-pair? _hd92179341_)
                                           (let ((_e92209347_
                                                  (gx#syntax-e _hd92179341_)))
                                             (let ((_lp-hd92219351_
                                                    (##car _e92209347_))
                                                   (_lp-tl92229354_
                                                    (##cdr _e92209347_)))
                                               (_loop92199337_
                                                _lp-tl92229354_
                                                (cons _lp-hd92219351_
                                                      _step92239344_))))
                                           (let ((_step92249357_
                                                  (reverse _step92239344_)))
                                             (_loop92009287_
                                              _lp-tl92039308_
                                              (cons _step92249357_
                                                    _step92049294_)
                                              (cons _hd92149325_
                                                    _init92059296_)
                                              (cons _hd92119315_
                                                    _var92069298_)))))))
                             (_loop92199337_ _target92169331_ '()))
                           (_g91839254_ _g91849258_)))))
                 (_g91839254_ _g91849258_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g91839254_
                                                      _g91849258_))))
                                             (_g91839254_ _g91849258_))))
                                     (_g91839254_ _g91849258_))))
                             (let ((_step92079361_ (reverse _step92049294_))
                                   (_init92089364_ (reverse _init92059296_))
                                   (_var92099366_ (reverse _var92069298_)))
                               (if (gx#stx-pair? _tl91969278_)
                                   (let ((_e92259369_
                                          (gx#syntax-e _tl91969278_)))
                                     (let ((_hd92269373_ (##car _e92259369_))
                                           (_tl92279376_ (##cdr _e92259369_)))
                                       (if (gx#stx-pair? _hd92269373_)
                                           (let ((_e92289379_
                                                  (gx#syntax-e _hd92269373_)))
                                             (let ((_hd92299383_
                                                    (##car _e92289379_))
                                                   (_tl92309386_
                                                    (##cdr _e92289379_)))
                                               (if (gx#stx-pair/null?
                                                    _tl92309386_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl92309386_)
                                                             '0)
                                                       (let ((_g28299_
                                                              (gx#syntax-split-splice
                                                               _tl92309386_
                                                               '0)))
                                                         (begin
                                                           (let ((_g28300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g28299_)))
                     (if (not (fx= _g28300_ 2))
                         (error "Context expects 2 values" _g28300_)))
                   (let ((_target92319389_ (values-ref _g28299_ 0))
                         (_tl92339392_ (values-ref _g28299_ 1)))
                     (if (gx#stx-null? _tl92339392_)
                         (letrec ((_loop92349395_
                                   (lambda (_hd92329399_ _fini92389402_)
                                     (if (gx#stx-pair? _hd92329399_)
                                         (let ((_e92359405_
                                                (gx#syntax-e _hd92329399_)))
                                           (let ((_lp-hd92369409_
                                                  (##car _e92359405_))
                                                 (_lp-tl92379412_
                                                  (##cdr _e92359405_)))
                                             (_loop92349395_
                                              _lp-tl92379412_
                                              (cons _lp-hd92369409_
                                                    _fini92389402_))))
                                         (let ((_fini92399415_
                                                (reverse _fini92389402_)))
                                           (if (gx#stx-pair/null? _tl92279376_)
                                               (if (fx>= (gx#stx-length
                                                          _tl92279376_)
                                                         '0)
                                                   (let ((_g28301_
                                                          (gx#syntax-split-splice
                                                           _tl92279376_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28302_
                                                              (values-count
                                                               _g28301_)))
                                                         (if (not (fx= _g28302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28302_)))
               (let ((_target92409419_ (values-ref _g28301_ 0))
                     (_tl92429422_ (values-ref _g28301_ 1)))
                 (if (gx#stx-null? _tl92429422_)
                     (letrec ((_loop92439425_
                               (lambda (_hd92419429_ _body92479432_)
                                 (if (gx#stx-pair? _hd92419429_)
                                     (let ((_e92449435_
                                            (gx#syntax-e _hd92419429_)))
                                       (let ((_lp-hd92459439_
                                              (##car _e92449435_))
                                             (_lp-tl92469442_
                                              (##cdr _e92449435_)))
                                         (_loop92439425_
                                          _lp-tl92469442_
                                          (cons _lp-hd92459439_
                                                _body92479432_))))
                                     (let ((_body92489445_
                                            (reverse _body92479432_)))
                                       ((lambda (_L9449_
                                                 _L9451_
                                                 _L9452_
                                                 _L9453_
                                                 _L9454_
                                                 _L9455_)
                                          (if (gx#stx-andmap
                                               gx#identifier?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g94889491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g94899494_)
                  (cons _g94889491_ _g94899494_))
                '()
                _L9455_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$loop)
                                                          (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-check-splice-targets _L9454_ _L9455_)
                          (foldr (lambda (_g94969509_ _g94979512_ _g94989514_)
                                   (cons (cons _g94979512_
                                               (cons _g94969509_ '()))
                                         _g94989514_))
                                 '()
                                 _L9454_
                                 _L9455_))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'not)
                                                (cons _L9452_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g94999517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g95009520_)
                         (cons _g94999517_ _g95009520_))
                       (cons (cons (gx#datum->syntax '#f '$loop)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _L9453_
                                      _L9455_)
                                     (foldr (lambda (_g95019523_
                                                     _g95029526_
                                                     _g95039528_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons _g95029526_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g95049531_ _g95059534_)
                                   (cons _g95049531_ _g95059534_))
                                 '()
                                 _g95019523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g95039528_))
                                            '()
                                            _L9453_
                                            _L9455_)))
                             '())
                       _L9449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g95069537_ _g95079540_)
                                     (cons _g95069537_ _g95079540_))
                                   '()
                                   _L9451_))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g91839254_ _g91849258_)))
                                        _body92489445_
                                        _fini92399415_
                                        _hd92299383_
                                        _step92079361_
                                        _init92089364_
                                        _var92099366_))))))
                       (_loop92439425_ _target92409419_ '()))
                     (_g91839254_ _g91849258_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g91839254_ _g91849258_))
                                               (_g91839254_ _g91849258_)))))))
                           (_loop92349395_ _target92319389_ '()))
                         (_g91839254_ _g91849258_)))))
               (_g91839254_ _g91849258_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g91839254_ _g91849258_))))
                                           (_g91839254_ _g91849258_))))
                                   (_g91839254_ _g91849258_)))))))
               (_loop92009287_ _target91979281_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g91839254_
                                                      _g91849258_)))))
                                           (_g91839254_ _g91849258_))
                                       (_g91839254_ _g91849258_))))
                               (_g91839254_ _g91849258_))))
                       (_g91839254_ _g91849258_)))))
            (_g91829543_ _$stx9179_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do-while|
      (lambda (_$stx9551_)
        (let ((_g95559578_
               (lambda (_g95569574_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g95569574_))))
          (let ((_g95549649_
                 (lambda (_g95569582_)
                   (if (gx#stx-pair? _g95569582_)
                       (let ((_e95619585_ (gx#syntax-e _g95569582_)))
                         (let ((_hd95629589_ (##car _e95619585_))
                               (_tl95639592_ (##cdr _e95619585_)))
                           (if (gx#stx-pair? _tl95639592_)
                               (let ((_e95649595_ (gx#syntax-e _tl95639592_)))
                                 (let ((_hd95659599_ (##car _e95649595_))
                                       (_tl95669602_ (##cdr _e95649595_)))
                                   (if (gx#stx-pair? _tl95669602_)
                                       (let ((_e95679605_
                                              (gx#syntax-e _tl95669602_)))
                                         (let ((_hd95689609_
                                                (##car _e95679605_))
                                               (_tl95699612_
                                                (##cdr _e95679605_)))
                                           (if (gx#stx-pair? _hd95689609_)
                                               (let ((_e95709615_
                                                      (gx#syntax-e
                                                       _hd95689609_)))
                                                 (let ((_hd95719619_
                                                        (##car _e95709615_))
                                                       (_tl95729622_
                                                        (##cdr _e95709615_)))
                                                   ((lambda (_L9625_
                                                             _L9627_
                                                             _L9628_
                                                             _L9629_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'do)
                                                            (cons _L9629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (gx#datum->syntax '#f 'not)
                                            (cons _L9628_ '()))
                                      _L9627_)
                                _L9625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl95699612_
                                                    _tl95729622_
                                                    _hd95719619_
                                                    _hd95659599_)))
                                               (_g95559578_ _g95569582_))))
                                       (_g95559578_ _g95569582_))))
                               (_g95559578_ _g95569582_))))
                       (_g95559578_ _g95569582_)))))
            (_g95549649_ _$stx9551_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#begin0|
      (lambda (_$stx9653_)
        (let ((_g96589689_
               (lambda (_g96599685_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g96599685_))))
          (let ((_g96579774_
                 (lambda (_g96599693_)
                   (if (gx#stx-pair? _g96599693_)
                       (let ((_e96699696_ (gx#syntax-e _g96599693_)))
                         (let ((_hd96709700_ (##car _e96699696_))
                               (_tl96719703_ (##cdr _e96699696_)))
                           (if (gx#stx-pair? _tl96719703_)
                               (let ((_e96729706_ (gx#syntax-e _tl96719703_)))
                                 (let ((_hd96739710_ (##car _e96729706_))
                                       (_tl96749713_ (##cdr _e96729706_)))
                                   (if (gx#stx-pair/null? _tl96749713_)
                                       (if (fx>= (gx#stx-length _tl96749713_)
                                                 '0)
                                           (let ((_g28303_
                                                  (gx#syntax-split-splice
                                                   _tl96749713_
                                                   '0)))
                                             (begin
                                               (let ((_g28304_
                                                      (values-count _g28303_)))
                                                 (if (not (fx= _g28304_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28304_)))
                                               (let ((_target96759716_
                                                      (values-ref _g28303_ 0))
                                                     (_tl96779719_
                                                      (values-ref _g28303_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl96779719_)
                                                     (letrec ((_loop96789722_
                                                               (lambda (_hd96769726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _rest96829729_)
                         (if (gx#stx-pair? _hd96769726_)
                             (let ((_e96799732_ (gx#syntax-e _hd96769726_)))
                               (let ((_lp-hd96809736_ (##car _e96799732_))
                                     (_lp-tl96819739_ (##cdr _e96799732_)))
                                 (_loop96789722_
                                  _lp-tl96819739_
                                  (cons _lp-hd96809736_ _rest96829729_))))
                             (let ((_rest96839742_ (reverse _rest96829729_)))
                               ((lambda (_L9746_ _L9748_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$r)
                                                    (cons _L9748_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '%#expression)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              (begin
                                '#!void
                                (foldr (lambda (_g97659768_ _g97669771_)
                                         (cons _g97659768_ _g97669771_))
                                       '()
                                       _L9746_)))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$r)
                                                          '())))))
                                _rest96839742_
                                _hd96739710_))))))
               (_loop96789722_ _target96759716_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g96589689_
                                                      _g96599693_)))))
                                           (_g96589689_ _g96599693_))
                                       (_g96589689_ _g96599693_))))
                               (_g96589689_ _g96599693_))))
                       (_g96589689_ _g96599693_)))))
            (let ((_g96569814_
                   (lambda (_g96599778_)
                     (if (gx#stx-pair? _g96599778_)
                         (let ((_e96619781_ (gx#syntax-e _g96599778_)))
                           (let ((_hd96629785_ (##car _e96619781_))
                                 (_tl96639788_ (##cdr _e96619781_)))
                             (if (gx#stx-pair? _tl96639788_)
                                 (let ((_e96649791_
                                        (gx#syntax-e _tl96639788_)))
                                   (let ((_hd96659795_ (##car _e96649791_))
                                         (_tl96669798_ (##cdr _e96649791_)))
                                     (if (gx#stx-null? _tl96669798_)
                                         ((lambda (_L9801_) _L9801_)
                                          _hd96659795_)
                                         (_g96579774_ _g96599778_))))
                                 (_g96579774_ _g96599778_))))
                         (_g96579774_ _g96599778_)))))
              (_g96569814_ _$stx9653_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#rec|
      (lambda (_$stx9819_)
        (let ((_g98259878_
               (lambda (_g98269874_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g98269874_))))
          (let ((_g98249977_
                 (lambda (_g98269882_)
                   (if (gx#stx-pair? _g98269882_)
                       (let ((_e98559885_ (gx#syntax-e _g98269882_)))
                         (let ((_hd98569889_ (##car _e98559885_))
                               (_tl98579892_ (##cdr _e98559885_)))
                           (if (gx#stx-pair? _tl98579892_)
                               (let ((_e98589895_ (gx#syntax-e _tl98579892_)))
                                 (let ((_hd98599899_ (##car _e98589895_))
                                       (_tl98609902_ (##cdr _e98589895_)))
                                   (if (gx#stx-pair? _hd98599899_)
                                       (let ((_e98619905_
                                              (gx#syntax-e _hd98599899_)))
                                         (let ((_hd98629909_
                                                (##car _e98619905_))
                                               (_tl98639912_
                                                (##cdr _e98619905_)))
                                           (if (gx#stx-pair/null? _tl98609902_)
                                               (if (fx>= (gx#stx-length
                                                          _tl98609902_)
                                                         '0)
                                                   (let ((_g28305_
                                                          (gx#syntax-split-splice
                                                           _tl98609902_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28306_
                                                              (values-count
                                                               _g28305_)))
                                                         (if (not (fx= _g28306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28306_)))
               (let ((_target98649915_ (values-ref _g28305_ 0))
                     (_tl98669918_ (values-ref _g28305_ 1)))
                 (if (gx#stx-null? _tl98669918_)
                     (letrec ((_loop98679921_
                               (lambda (_hd98659925_ _body98719928_)
                                 (if (gx#stx-pair? _hd98659925_)
                                     (let ((_e98689931_
                                            (gx#syntax-e _hd98659925_)))
                                       (let ((_lp-hd98699935_
                                              (##car _e98689931_))
                                             (_lp-tl98709938_
                                              (##cdr _e98689931_)))
                                         (_loop98679921_
                                          _lp-tl98709938_
                                          (cons _lp-hd98699935_
                                                _body98719928_))))
                                     (let ((_body98729941_
                                            (reverse _body98719928_)))
                                       ((lambda (_L9945_ _L9947_ _L9948_)
                                          (if (gx#identifier? _L9948_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec)
                                                    (cons (cons (cons _L9948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons _L9947_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g99689971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g99699974_)
                   (cons _g99689971_ _g99699974_))
                 '()
                 _L9945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L9948_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g98259878_ _g98269882_)))
                                        _body98729941_
                                        _tl98639912_
                                        _hd98629909_))))))
                       (_loop98679921_ _target98649915_ '()))
                     (_g98259878_ _g98269882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g98259878_ _g98269882_))
                                               (_g98259878_ _g98269882_))))
                                       (_g98259878_ _g98269882_))))
                               (_g98259878_ _g98269882_))))
                       (_g98259878_ _g98269882_)))))
            (let ((_g982310043_
                   (lambda (_g98269981_)
                     (if (gx#stx-pair? _g98269981_)
                         (let ((_e98409984_ (gx#syntax-e _g98269981_)))
                           (let ((_hd98419988_ (##car _e98409984_))
                                 (_tl98429991_ (##cdr _e98409984_)))
                             (if (gx#stx-pair? _tl98429991_)
                                 (let ((_e98439994_
                                        (gx#syntax-e _tl98429991_)))
                                   (let ((_hd98449998_ (##car _e98439994_))
                                         (_tl984510001_ (##cdr _e98439994_)))
                                     (if (gx#stx-pair? _hd98449998_)
                                         (let ((_e984610004_
                                                (gx#syntax-e _hd98449998_)))
                                           (let ((_hd984710008_
                                                  (##car _e984610004_))
                                                 (_tl984810011_
                                                  (##cdr _e984610004_)))
                                             (if (gx#identifier? _hd984710008_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g28307_|
                                                      _hd984710008_)
                                                     (if (gx#stx-pair?
                                                          _tl984510001_)
                                                         (let ((_e984910014_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl984510001_)))
                   (let ((_hd985010018_ (##car _e984910014_))
                         (_tl985110021_ (##cdr _e984910014_)))
                     (if (gx#stx-null? _tl985110021_)
                         ((lambda (_L10024_ _L10026_)
                            (if (gx#identifier-list? _L10026_)
                                (cons (gx#datum->syntax '#f 'letrec-values)
                                      (cons (cons (cons _L10026_
                                                        (cons _L10024_ '()))
                                                  '())
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'values)
                                                        _L10026_)
                                                  '())))
                                (_g98249977_ _g98269981_)))
                          _hd985010018_
                          _tl984810011_)
                         (_g98249977_ _g98269981_))))
                 (_g98249977_ _g98269981_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g98249977_ _g98269981_))
                                                 (_g98249977_ _g98269981_))))
                                         (_g98249977_ _g98269981_))))
                                 (_g98249977_ _g98269981_))))
                         (_g98249977_ _g98269981_)))))
              (let ((_g982210097_
                     (lambda (_g982610047_)
                       (if (gx#stx-pair? _g982610047_)
                           (let ((_e982910050_ (gx#syntax-e _g982610047_)))
                             (let ((_hd983010054_ (##car _e982910050_))
                                   (_tl983110057_ (##cdr _e982910050_)))
                               (if (gx#stx-pair? _tl983110057_)
                                   (let ((_e983210060_
                                          (gx#syntax-e _tl983110057_)))
                                     (let ((_hd983310064_ (##car _e983210060_))
                                           (_tl983410067_
                                            (##cdr _e983210060_)))
                                       (if (gx#stx-pair? _tl983410067_)
                                           (let ((_e983510070_
                                                  (gx#syntax-e _tl983410067_)))
                                             (let ((_hd983610074_
                                                    (##car _e983510070_))
                                                   (_tl983710077_
                                                    (##cdr _e983510070_)))
                                               (if (gx#stx-null? _tl983710077_)
                                                   ((lambda (_L10080_ _L10082_)
                                                      (if (gx#identifier?
                                                           _L10082_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L10082_ (cons _L10080_ '())) '())
                              (cons _L10082_ '())))
                  (_g982310043_ _g982610047_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd983610074_
                                                    _hd983310064_)
                                                   (_g982310043_
                                                    _g982610047_))))
                                           (_g982310043_ _g982610047_))))
                                   (_g982310043_ _g982610047_))))
                           (_g982310043_ _g982610047_)))))
                (_g982210097_ _$stx9819_)))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet|
      (lambda (_stx10102_)
        (let ((_let-head?10105_
               (lambda (_x10652_)
                 (let ((_g1065610667_
                        (lambda (_g1065710663_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1065710663_))))
                   (let ((_g1065510678_
                          (lambda (_g1065710671_)
                            ((lambda () (gx#identifier? _x10652_))))))
                     (let ((_g1065410708_
                            (lambda (_g1065710682_)
                              (if (gx#stx-pair? _g1065710682_)
                                  (let ((_e1065910685_
                                         (gx#syntax-e _g1065710682_)))
                                    (let ((_hd1066010689_
                                           (##car _e1065910685_))
                                          (_tl1066110692_
                                           (##cdr _e1065910685_)))
                                      (if (gx#identifier? _hd1066010689_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:2>[1]#_g28317_|
                                               _hd1066010689_)
                                              ((lambda (_L10695_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L10695_))
                                               _tl1066110692_)
                                              (_g1065510678_ _g1065710682_))
                                          (_g1065510678_ _g1065710682_))))
                                  (_g1065510678_ _g1065710682_)))))
                       (_g1065410708_ _x10652_)))))))
          (let ((_let-head10107_
                 (lambda (_x10592_)
                   (let ((_g1059610607_
                          (lambda (_g1059710603_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1059710603_))))
                     (let ((_g1059510618_
                            (lambda (_g1059710611_)
                              ((lambda () (list _x10592_))))))
                       (let ((_g1059410648_
                              (lambda (_g1059710622_)
                                (if (gx#stx-pair? _g1059710622_)
                                    (let ((_e1059910625_
                                           (gx#syntax-e _g1059710622_)))
                                      (let ((_hd1060010629_
                                             (##car _e1059910625_))
                                            (_tl1060110632_
                                             (##cdr _e1059910625_)))
                                        (if (gx#identifier? _hd1060010629_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:2>[1]#_g28316_|
                                                 _hd1060010629_)
                                                ((lambda (_L10635_) _L10635_)
                                                 _tl1060110632_)
                                                (_g1059510618_ _g1059710622_))
                                            (_g1059510618_ _g1059710622_))))
                                    (_g1059510618_ _g1059710622_)))))
                         (_g1059410648_ _x10592_)))))))
            (let ((_g1011010168_
                   (lambda (_g1011110164_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1011110164_))))
              (let ((_g1010910518_
                     (lambda (_g1011110172_)
                       (if (gx#stx-pair? _g1011110172_)
                           (let ((_e1013110175_ (gx#syntax-e _g1011110172_)))
                             (let ((_hd1013210179_ (##car _e1013110175_))
                                   (_tl1013310182_ (##cdr _e1013110175_)))
                               (if (gx#stx-pair? _tl1013310182_)
                                   (let ((_e1013410185_
                                          (gx#syntax-e _tl1013310182_)))
                                     (let ((_hd1013510189_
                                            (##car _e1013410185_))
                                           (_tl1013610192_
                                            (##cdr _e1013410185_)))
                                       (if (gx#stx-pair/null? _hd1013510189_)
                                           (if (fx>= (gx#stx-length
                                                      _hd1013510189_)
                                                     '0)
                                               (let ((_g28308_
                                                      (gx#syntax-split-splice
                                                       _hd1013510189_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28309_
                                                          (values-count
                                                           _g28308_)))
                                                     (if (not (fx= _g28309_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28309_)))
                                                   (let ((_target1013710195_
                                                          (values-ref
                                                           _g28308_
                                                           0))
                                                         (_tl1013910198_
                                                          (values-ref
                                                           _g28308_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl1013910198_)
                                                         (letrec ((_loop1014010201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1013810205_
                                    _e1014410208_
                                    _hd1014510210_)
                             (if (gx#stx-pair? _hd1013810205_)
                                 (let ((_e1014110213_
                                        (gx#syntax-e _hd1013810205_)))
                                   (let ((_lp-hd1014210217_
                                          (##car _e1014110213_))
                                         (_lp-tl1014310220_
                                          (##cdr _e1014110213_)))
                                     (if (gx#stx-pair? _lp-hd1014210217_)
                                         (let ((_e1014810223_
                                                (gx#syntax-e
                                                 _lp-hd1014210217_)))
                                           (let ((_hd1014910227_
                                                  (##car _e1014810223_))
                                                 (_tl1015010230_
                                                  (##cdr _e1014810223_)))
                                             (if (gx#stx-pair? _tl1015010230_)
                                                 (let ((_e1015110233_
                                                        (gx#syntax-e
                                                         _tl1015010230_)))
                                                   (let ((_hd1015210237_
                                                          (##car _e1015110233_))
                                                         (_tl1015310240_
                                                          (##cdr _e1015110233_)))
                                                     (if (gx#stx-null?
                                                          _tl1015310240_)
                                                         (_loop1014010201_
                                                          _lp-tl1014310220_
                                                          (cons _hd1015210237_
                                                                _e1014410208_)
                                                          (cons _hd1014910227_
                                                                _hd1014510210_))
                                                         (_g1011010168_
                                                          _g1011110172_))))
                                                 (_g1011010168_
                                                  _g1011110172_))))
                                         (_g1011010168_ _g1011110172_))))
                                 (let ((_e1014610243_ (reverse _e1014410208_))
                                       (_hd1014710246_
                                        (reverse _hd1014510210_)))
                                   (if (gx#stx-pair/null? _tl1013610192_)
                                       (if (fx>= (gx#stx-length _tl1013610192_)
                                                 '0)
                                           (let ((_g28310_
                                                  (gx#syntax-split-splice
                                                   _tl1013610192_
                                                   '0)))
                                             (begin
                                               (let ((_g28311_
                                                      (values-count _g28310_)))
                                                 (if (not (fx= _g28311_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28311_)))
                                               (let ((_target1015410249_
                                                      (values-ref _g28310_ 0))
                                                     (_tl1015610252_
                                                      (values-ref _g28310_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1015610252_)
                                                     (letrec ((_loop1015710255_
                                                               (lambda (_hd1015510259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body1016110262_)
                         (if (gx#stx-pair? _hd1015510259_)
                             (let ((_e1015810265_
                                    (gx#syntax-e _hd1015510259_)))
                               (let ((_lp-hd1015910269_ (##car _e1015810265_))
                                     (_lp-tl1016010272_ (##cdr _e1015810265_)))
                                 (_loop1015710255_
                                  _lp-tl1016010272_
                                  (cons _lp-hd1015910269_ _body1016110262_))))
                             (let ((_body1016210275_
                                    (reverse _body1016110262_)))
                               ((lambda (_L10279_ _L10281_ _L10282_)
                                  (if (gx#stx-andmap
                                       _let-head?10105_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1030510308_
                                                         _g1030610311_)
                                                  (cons _g1030510308_
                                                        _g1030610311_))
                                                '()
                                                _L10282_)))
                                      (let ((_g1031410347_
                                             (lambda (_g1031510343_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1031510343_))))
                                        (let ((_g1031310498_
                                               (lambda (_g1031510351_)
                                                 (if (gx#stx-pair?
                                                      _g1031510351_)
                                                     (let ((_e1031810354_
                                                            (gx#syntax-e
                                                             _g1031510351_)))
                                                       (let ((_hd1031910358_
                                                              (##car _e1031810354_))
                                                             (_tl1032010361_
                                                              (##cdr _e1031810354_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1031910358_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1031910358_)
                               '0)
                         (let ((_g28312_
                                (gx#syntax-split-splice _hd1031910358_ '0)))
                           (begin
                             (let ((_g28313_ (values-count _g28312_)))
                               (if (not (fx= _g28313_ 2))
                                   (error "Context expects 2 values"
                                          _g28313_)))
                             (let ((_target1032110364_ (values-ref _g28312_ 0))
                                   (_tl1032310367_ (values-ref _g28312_ 1)))
                               (if (gx#stx-null? _tl1032310367_)
                                   (letrec ((_loop1032410370_
                                             (lambda (_hd1032210374_
                                                      _$e1032810377_)
                                               (if (gx#stx-pair?
                                                    _hd1032210374_)
                                                   (let ((_e1032510380_
                                                          (gx#syntax-e
                                                           _hd1032210374_)))
                                                     (let ((_lp-hd1032610384_
                                                            (##car _e1032510380_))
                                                           (_lp-tl1032710387_
                                                            (##cdr _e1032510380_)))
                                                       (_loop1032410370_
                                                        _lp-tl1032710387_
                                                        (cons _lp-hd1032610384_
                                                              _$e1032810377_))))
                                                   (let ((_$e1032910390_
                                                          (reverse _$e1032810377_)))
                                                     (if (gx#stx-pair?
                                                          _tl1032010361_)
                                                         (let ((_e1033010394_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1032010361_)))
                   (let ((_hd1033110398_ (##car _e1033010394_))
                         (_tl1033210401_ (##cdr _e1033010394_)))
                     (if (gx#stx-pair/null? _hd1033110398_)
                         (if (fx>= (gx#stx-length _hd1033110398_) '0)
                             (let ((_g28314_
                                    (gx#syntax-split-splice
                                     _hd1033110398_
                                     '0)))
                               (begin
                                 (let ((_g28315_ (values-count _g28314_)))
                                   (if (not (fx= _g28315_ 2))
                                       (error "Context expects 2 values"
                                              _g28315_)))
                                 (let ((_target1033310404_
                                        (values-ref _g28314_ 0))
                                       (_tl1033510407_
                                        (values-ref _g28314_ 1)))
                                   (if (gx#stx-null? _tl1033510407_)
                                       (letrec ((_loop1033610410_
                                                 (lambda (_hd1033410414_
                                                          _hd-bind1034010417_)
                                                   (if (gx#stx-pair?
                                                        _hd1033410414_)
                                                       (let ((_e1033710420_
                                                              (gx#syntax-e
                                                               _hd1033410414_)))
                                                         (let ((_lp-hd1033810424_
                                                                (##car _e1033710420_))
                                                               (_lp-tl1033910427_
                                                                (##cdr _e1033710420_)))
                                                           (_loop1033610410_
                                                            _lp-tl1033910427_
                                                            (cons _lp-hd1033810424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd-bind1034010417_))))
               (let ((_hd-bind1034110430_ (reverse _hd-bind1034010417_)))
                 (if (gx#stx-null? _tl1033210401_)
                     ((lambda (_L10434_ _L10436_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let-values)
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _L10281_
                                         _L10436_)
                                        (foldr (lambda (_g1045910470_
                                                        _g1046010473_
                                                        _g1046110475_)
                                                 (cons (cons (cons _g1046010473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _g1045910470_ '()))
               _g1046110475_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _L10281_
                                               _L10436_))
                                      (cons (cons (gx#datum->syntax '#f 'and)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1046210478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1046310481_)
                     (cons _g1046210478_ _g1046310481_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L10436_
                                        _L10434_)
                                       (foldr (lambda (_g1046410484_
                                                       _g1046510487_
                                                       _g1046610489_)
                                                (cons (cons _g1046510487_
                                                            (cons _g1046410484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g1046610489_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L10436_
                                              _L10434_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1046710492_
                                                       _g1046810495_)
                                                (cons _g1046710492_
                                                      _g1046810495_))
                                              '()
                                              _L10279_))))
                         '())
                   _L10436_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _hd-bind1034110430_
                      _$e1032910390_)
                     (_g1031410347_ _g1031510351_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1033610410_
                                          _target1033310404_
                                          '()))
                                       (_g1031410347_ _g1031510351_)))))
                             (_g1031410347_ _g1031510351_))
                         (_g1031410347_ _g1031510351_))))
                 (_g1031410347_ _g1031510351_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1032410370_ _target1032110364_ '()))
                                   (_g1031410347_ _g1031510351_)))))
                         (_g1031410347_ _g1031510351_))
                     (_g1031410347_ _g1031510351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1031410347_
                                                      _g1031510351_)))))
                                          (_g1031310498_
                                           (list (gx#gentemps
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1050110504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1050210507_)
                     (cons _g1050110504_ _g1050210507_))
                   '()
                   _L10282_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-map
                                                  _let-head10107_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1050910512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1051010515_)
                     (cons _g1050910512_ _g1051010515_))
                   '()
                   _L10282_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g1011010168_ _g1011110172_)))
                                _body1016210275_
                                _e1014610243_
                                _hd1014710246_))))))
               (_loop1015710255_ _target1015410249_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1011010168_
                                                      _g1011110172_)))))
                                           (_g1011010168_ _g1011110172_))
                                       (_g1011010168_ _g1011110172_)))))))
                   (_loop1014010201_ _target1013710195_ '() '()))
                 (_g1011010168_ _g1011110172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1011010168_ _g1011110172_))
                                           (_g1011010168_ _g1011110172_))))
                                   (_g1011010168_ _g1011110172_))))
                           (_g1011010168_ _g1011110172_)))))
                (let ((_g1010810588_
                       (lambda (_g1011110522_)
                         (if (gx#stx-pair? _g1011110522_)
                             (let ((_e1011610525_ (gx#syntax-e _g1011110522_)))
                               (let ((_hd1011710529_ (##car _e1011610525_))
                                     (_tl1011810532_ (##cdr _e1011610525_)))
                                 (if (gx#stx-pair? _tl1011810532_)
                                     (let ((_e1011910535_
                                            (gx#syntax-e _tl1011810532_)))
                                       (let ((_hd1012010539_
                                              (##car _e1011910535_))
                                             (_tl1012110542_
                                              (##cdr _e1011910535_)))
                                         (if (gx#stx-pair? _hd1012010539_)
                                             (let ((_e1012210545_
                                                    (gx#syntax-e
                                                     _hd1012010539_)))
                                               (let ((_hd1012310549_
                                                      (##car _e1012210545_))
                                                     (_tl1012410552_
                                                      (##cdr _e1012210545_)))
                                                 (if (gx#stx-pair?
                                                      _tl1012410552_)
                                                     (let ((_e1012510555_
                                                            (gx#syntax-e
                                                             _tl1012410552_)))
                                                       (let ((_hd1012610559_
                                                              (##car _e1012510555_))
                                                             (_tl1012710562_
                                                              (##cdr _e1012510555_)))
                                                         (if (gx#stx-null?
                                                              _tl1012710562_)
                                                             ((lambda (_L10565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10567_
                               _L10568_
                               _L10569_)
                        (if (_let-head?10105_ _L10568_)
                            (cons _L10569_
                                  (cons (cons (cons _L10568_
                                                    (cons _L10567_ '()))
                                              '())
                                        _L10565_))
                            (_g1010910518_ _g1011110522_)))
                      _tl1012110542_
                      _hd1012610559_
                      _hd1012310549_
                      _hd1011710529_)
                     (_g1010910518_ _g1011110522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1010910518_
                                                      _g1011110522_))))
                                             (_g1010910518_ _g1011110522_))))
                                     (_g1010910518_ _g1011110522_))))
                             (_g1010910518_ _g1011110522_)))))
                  (_g1010810588_ _stx10102_))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet*|
      (lambda (_$stx10716_)
        (let ((_g1072110766_
               (lambda (_g1072210762_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1072210762_))))
          (let ((_g1072010867_
                 (lambda (_g1072210770_)
                   (if (gx#stx-pair? _g1072210770_)
                       (let ((_e1074310773_ (gx#syntax-e _g1072210770_)))
                         (let ((_hd1074410777_ (##car _e1074310773_))
                               (_tl1074510780_ (##cdr _e1074310773_)))
                           (if (gx#stx-pair? _tl1074510780_)
                               (let ((_e1074610783_
                                      (gx#syntax-e _tl1074510780_)))
                                 (let ((_hd1074710787_ (##car _e1074610783_))
                                       (_tl1074810790_ (##cdr _e1074610783_)))
                                   (if (gx#stx-pair? _hd1074710787_)
                                       (let ((_e1074910793_
                                              (gx#syntax-e _hd1074710787_)))
                                         (let ((_hd1075010797_
                                                (##car _e1074910793_))
                                               (_tl1075110800_
                                                (##cdr _e1074910793_)))
                                           (if (gx#stx-pair/null?
                                                _tl1074810790_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1074810790_)
                                                         '0)
                                                   (let ((_g28318_
                                                          (gx#syntax-split-splice
                                                           _tl1074810790_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28319_
                                                              (values-count
                                                               _g28318_)))
                                                         (if (not (fx= _g28319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28319_)))
               (let ((_target1075210803_ (values-ref _g28318_ 0))
                     (_tl1075410806_ (values-ref _g28318_ 1)))
                 (if (gx#stx-null? _tl1075410806_)
                     (letrec ((_loop1075510809_
                               (lambda (_hd1075310813_ _body1075910816_)
                                 (if (gx#stx-pair? _hd1075310813_)
                                     (let ((_e1075610819_
                                            (gx#syntax-e _hd1075310813_)))
                                       (let ((_lp-hd1075710823_
                                              (##car _e1075610819_))
                                             (_lp-tl1075810826_
                                              (##cdr _e1075610819_)))
                                         (_loop1075510809_
                                          _lp-tl1075810826_
                                          (cons _lp-hd1075710823_
                                                _body1075910816_))))
                                     (let ((_body1076010829_
                                            (reverse _body1075910816_)))
                                       ((lambda (_L10833_
                                                 _L10835_
                                                 _L10836_
                                                 _L10837_)
                                          (cons (gx#datum->syntax '#f 'alet)
                                                (cons (cons _L10836_ '())
                                                      (cons (cons _L10837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L10835_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1085810861_ _g1085910864_)
                                           (cons _g1085810861_ _g1085910864_))
                                         '()
                                         _L10833_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body1076010829_
                                        _tl1075110800_
                                        _hd1075010797_
                                        _hd1074410777_))))))
                       (_loop1075510809_ _target1075210803_ '()))
                     (_g1072110766_ _g1072210770_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1072110766_
                                                    _g1072210770_))
                                               (_g1072110766_ _g1072210770_))))
                                       (_g1072110766_ _g1072210770_))))
                               (_g1072110766_ _g1072210770_))))
                       (_g1072110766_ _g1072210770_)))))
            (let ((_g1071910949_
                   (lambda (_g1072210871_)
                     (if (gx#stx-pair? _g1072210871_)
                         (let ((_e1072410874_ (gx#syntax-e _g1072210871_)))
                           (let ((_hd1072510878_ (##car _e1072410874_))
                                 (_tl1072610881_ (##cdr _e1072410874_)))
                             (if (gx#stx-pair? _tl1072610881_)
                                 (let ((_e1072710884_
                                        (gx#syntax-e _tl1072610881_)))
                                   (let ((_hd1072810888_ (##car _e1072710884_))
                                         (_tl1072910891_
                                          (##cdr _e1072710884_)))
                                     (if (gx#stx-null? _hd1072810888_)
                                         (if (gx#stx-pair/null? _tl1072910891_)
                                             (if (fx>= (gx#stx-length
                                                        _tl1072910891_)
                                                       '0)
                                                 (let ((_g28320_
                                                        (gx#syntax-split-splice
                                                         _tl1072910891_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28321_
                                                            (values-count
                                                             _g28320_)))
                                                       (if (not (fx= _g28321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28321_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1073010894_
                                                            (values-ref
                                                             _g28320_
                                                             0))
                                                           (_tl1073210897_
                                                            (values-ref
                                                             _g28320_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1073210897_)
                                                           (letrec ((_loop1073310900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1073110904_ _body1073710907_)
                               (if (gx#stx-pair? _hd1073110904_)
                                   (let ((_e1073410910_
                                          (gx#syntax-e _hd1073110904_)))
                                     (let ((_lp-hd1073510914_
                                            (##car _e1073410910_))
                                           (_lp-tl1073610917_
                                            (##cdr _e1073410910_)))
                                       (_loop1073310900_
                                        _lp-tl1073610917_
                                        (cons _lp-hd1073510914_
                                              _body1073710907_))))
                                   (let ((_body1073810920_
                                          (reverse _body1073710907_)))
                                     ((lambda (_L10924_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1094010943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1094110946_)
                       (cons _g1094010943_ _g1094110946_))
                     '()
                     _L10924_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body1073810920_))))))
                     (_loop1073310900_ _target1073010894_ '()))
                   (_g1072010867_ _g1072210871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1072010867_ _g1072210871_))
                                             (_g1072010867_ _g1072210871_))
                                         (_g1072010867_ _g1072210871_))))
                                 (_g1072010867_ _g1072210871_))))
                         (_g1072010867_ _g1072210871_)))))
              (_g1071910949_ _$stx10716_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#@list|
      (lambda (_$stx10955_)
        (let ((_g1096411021_
               (lambda (_g1096511017_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1096511017_))))
          (let ((_g1096311050_
                 (lambda (_g1096511025_)
                   (if (gx#stx-pair? _g1096511025_)
                       (let ((_e1101311028_ (gx#syntax-e _g1096511025_)))
                         (let ((_hd1101411032_ (##car _e1101311028_))
                               (_tl1101511035_ (##cdr _e1101311028_)))
                           ((lambda (_L11038_) _L11038_) _tl1101511035_)))
                       (_g1096411021_ _g1096511025_)))))
            (let ((_g1096211094_
                   (lambda (_g1096511054_)
                     (if (gx#stx-pair? _g1096511054_)
                         (let ((_e1100611057_ (gx#syntax-e _g1096511054_)))
                           (let ((_hd1100711061_ (##car _e1100611057_))
                                 (_tl1100811064_ (##cdr _e1100611057_)))
                             (if (gx#stx-pair? _tl1100811064_)
                                 (let ((_e1100911067_
                                        (gx#syntax-e _tl1100811064_)))
                                   (let ((_hd1101011071_ (##car _e1100911067_))
                                         (_tl1101111074_
                                          (##cdr _e1100911067_)))
                                     ((lambda (_L11077_ _L11079_ _L11080_)
                                        (cons (gx#datum->syntax '#f 'cons)
                                              (cons _L11079_
                                                    (cons (cons _L11080_
                                                                _L11077_)
                                                          '()))))
                                      _tl1101111074_
                                      _hd1101011071_
                                      _hd1100711061_)))
                                 (_g1096311050_ _g1096511054_))))
                         (_g1096311050_ _g1096511054_)))))
              (let ((_g1096111152_
                     (lambda (_g1096511098_)
                       (if (gx#stx-pair? _g1096511098_)
                           (let ((_e1099411101_ (gx#syntax-e _g1096511098_)))
                             (let ((_hd1099511105_ (##car _e1099411101_))
                                   (_tl1099611108_ (##cdr _e1099411101_)))
                               (if (gx#stx-pair? _tl1099611108_)
                                   (let ((_e1099711111_
                                          (gx#syntax-e _tl1099611108_)))
                                     (let ((_hd1099811115_
                                            (##car _e1099711111_))
                                           (_tl1099911118_
                                            (##cdr _e1099711111_)))
                                       (if (gx#stx-pair? _tl1099911118_)
                                           (let ((_e1100011121_
                                                  (gx#syntax-e
                                                   _tl1099911118_)))
                                             (let ((_hd1100111125_
                                                    (##car _e1100011121_))
                                                   (_tl1100211128_
                                                    (##cdr _e1100011121_)))
                                               ((lambda (_L11131_
                                                         _L11133_
                                                         _L11134_
                                                         _L11135_)
                                                  (if (gx#ellipsis? _L11133_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'foldr)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons)
                          (cons (cons _L11135_ _L11131_) (cons _L11134_ '()))))
              (_g1096211094_ _g1096511098_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1100211128_
                                                _hd1100111125_
                                                _hd1099811115_
                                                _hd1099511105_)))
                                           (_g1096211094_ _g1096511098_))))
                                   (_g1096211094_ _g1096511098_))))
                           (_g1096211094_ _g1096511098_)))))
                (let ((_g1096011206_
                       (lambda (_g1096511156_)
                         (if (gx#stx-pair? _g1096511156_)
                             (let ((_e1098111159_ (gx#syntax-e _g1096511156_)))
                               (let ((_hd1098211163_ (##car _e1098111159_))
                                     (_tl1098311166_ (##cdr _e1098111159_)))
                                 (if (gx#stx-pair? _tl1098311166_)
                                     (let ((_e1098411169_
                                            (gx#syntax-e _tl1098311166_)))
                                       (let ((_hd1098511173_
                                              (##car _e1098411169_))
                                             (_tl1098611176_
                                              (##cdr _e1098411169_)))
                                         (if (gx#stx-pair? _tl1098611176_)
                                             (let ((_e1098711179_
                                                    (gx#syntax-e
                                                     _tl1098611176_)))
                                               (let ((_hd1098811183_
                                                      (##car _e1098711179_))
                                                     (_tl1098911186_
                                                      (##cdr _e1098711179_)))
                                                 (if (gx#stx-null?
                                                      _tl1098911186_)
                                                     ((lambda (_L11189_
                                                               _L11191_)
                                                        (if (gx#ellipsis?
                                                             _L11189_)
                                                            _L11191_
                                                            (_g1096111152_
                                                             _g1096511156_)))
                                                      _hd1098811183_
                                                      _hd1098511173_)
                                                     (_g1096111152_
                                                      _g1096511156_))))
                                             (_g1096111152_ _g1096511156_))))
                                     (_g1096111152_ _g1096511156_))))
                             (_g1096111152_ _g1096511156_)))))
                  (let ((_g1095911258_
                         (lambda (_g1096511210_)
                           (if (gx#stx-pair? _g1096511210_)
                               (let ((_e1097011213_
                                      (gx#syntax-e _g1096511210_)))
                                 (let ((_hd1097111217_ (##car _e1097011213_))
                                       (_tl1097211220_ (##cdr _e1097011213_)))
                                   (if (gx#stx-pair? _tl1097211220_)
                                       (let ((_e1097311223_
                                              (gx#syntax-e _tl1097211220_)))
                                         (let ((_hd1097411227_
                                                (##car _e1097311223_))
                                               (_tl1097511230_
                                                (##cdr _e1097311223_)))
                                           (if (gx#stx-datum? _hd1097411227_)
                                               (if (equal? (gx#stx-e
                                                            _hd1097411227_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl1097511230_)
                                                       (let ((_e1097611233_
                                                              (gx#syntax-e
                                                               _tl1097511230_)))
                                                         (let ((_hd1097711237_
                                                                (##car _e1097611233_))
                                                               (_tl1097811240_
                                                                (##cdr _e1097611233_)))
                                                           (if (gx#stx-null?
                                                                _tl1097811240_)
                                                               ((lambda (_L11243_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11243_)
                        _hd1097711237_)
                       (_g1096011206_ _g1096511210_))))
               (_g1096011206_ _g1096511210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1096011206_
                                                    _g1096511210_))
                                               (_g1096011206_ _g1096511210_))))
                                       (_g1096011206_ _g1096511210_))))
                               (_g1096011206_ _g1096511210_)))))
                    (let ((_g1095811279_
                           (lambda (_g1096511262_)
                             (if (gx#stx-pair? _g1096511262_)
                                 (let ((_e1096611265_
                                        (gx#syntax-e _g1096511262_)))
                                   (let ((_hd1096711269_ (##car _e1096611265_))
                                         (_tl1096811272_
                                          (##cdr _e1096611265_)))
                                     (if (gx#stx-null? _tl1096811272_)
                                         ((lambda ()
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons '() '()))))
                                         (_g1095911258_ _g1096511262_))))
                                 (_g1095911258_ _g1096511262_)))))
                      (_g1095811279_ _$stx10955_))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#quasiquote|
      (lambda (_stx11283_)
        (letrec ((_simple-quote?11286_
                  (lambda (_e11978_)
                    (let ((_g1198612023_
                           (lambda (_g1198712019_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1198712019_))))
                      (let ((_g1198512034_
                             (lambda (_g1198712027_) ((lambda () '#t)))))
                        (let ((_g1198412057_
                               (lambda (_g1198712038_)
                                 (if (gx#stx-box? _g1198712038_)
                                     (let ((_e1201712041_
                                            (unbox (gx#syntax-e
                                                    _g1198712038_))))
                                       ((lambda (_L12045_)
                                          (_simple-quote?11286_ _L12045_))
                                        _e1201712041_))
                                     (_g1198512034_ _g1198712038_)))))
                          (let ((_g1198312120_
                                 (lambda (_g1198712061_)
                                   (if (gx#stx-vector? _g1198712061_)
                                       (let ((_e1200612064_
                                              (vector->list
                                               (gx#syntax-e _g1198712061_))))
                                         (if (gx#stx-pair/null? _e1200612064_)
                                             (if (fx>= (gx#stx-length
                                                        _e1200612064_)
                                                       '0)
                                                 (let ((_g28322_
                                                        (gx#syntax-split-splice
                                                         _e1200612064_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28323_
                                                            (values-count
                                                             _g28322_)))
                                                       (if (not (fx= _g28323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28323_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1200712068_
                                                            (values-ref
                                                             _g28322_
                                                             0))
                                                           (_tl1200912071_
                                                            (values-ref
                                                             _g28322_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1200912071_)
                                                           (letrec ((_loop1201012074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1200812078_ _e1201412081_)
                               (if (gx#stx-pair? _hd1200812078_)
                                   (let ((_e1201112084_
                                          (gx#syntax-e _hd1200812078_)))
                                     (let ((_lp-hd1201212088_
                                            (##car _e1201112084_))
                                           (_lp-tl1201312091_
                                            (##cdr _e1201112084_)))
                                       (_loop1201012074_
                                        _lp-tl1201312091_
                                        (cons _lp-hd1201212088_
                                              _e1201412081_))))
                                   (let ((_e1201512094_
                                          (reverse _e1201412081_)))
                                     ((lambda (_L12098_)
                                        (_simple-quote?11286_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1211112114_
                                                           _g1211212117_)
                                                    (cons _g1211112114_
                                                          _g1211212117_))
                                                  '()
                                                  _L12098_))))
                                      _e1201512094_))))))
                     (_loop1201012074_ _target1200712068_ '()))
                   (_g1198412057_ _g1198712061_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1198412057_ _g1198712061_))
                                             (_g1198412057_ _g1198712061_)))
                                       (_g1198412057_ _g1198712061_)))))
                            (let ((_g1198212150_
                                   (lambda (_g1198712124_)
                                     (if (gx#stx-pair? _g1198712124_)
                                         (let ((_e1200212127_
                                                (gx#syntax-e _g1198712124_)))
                                           (let ((_hd1200312131_
                                                  (##car _e1200212127_))
                                                 (_tl1200412134_
                                                  (##cdr _e1200212127_)))
                                             ((lambda (_L12137_ _L12139_)
                                                (if (_simple-quote?11286_
                                                     _L12139_)
                                                    (_simple-quote?11286_
                                                     _L12137_)
                                                    '#f))
                                              _tl1200412134_
                                              _hd1200312131_)))
                                         (_g1198312120_ _g1198712124_)))))
                              (let ((_g1198112181_
                                     (lambda (_g1198712154_)
                                       (if (gx#stx-pair? _g1198712154_)
                                           (let ((_e1199412157_
                                                  (gx#syntax-e _g1198712154_)))
                                             (let ((_hd1199512161_
                                                    (##car _e1199412157_))
                                                   (_tl1199612164_
                                                    (##cdr _e1199412157_)))
                                               (if (gx#identifier?
                                                    _hd1199512161_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<sugar>::<sugar:2>[1]#_g28324_|
                                                        _hd1199512161_)
                                                       (if (gx#stx-pair?
                                                            _tl1199612164_)
                                                           (let ((_e1199712167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1199612164_)))
                     (let ((_hd1199812171_ (##car _e1199712167_))
                           (_tl1199912174_ (##cdr _e1199712167_)))
                       (if (gx#stx-null? _tl1199912174_)
                           ((lambda () '#f))
                           (_g1198212150_ _g1198712154_))))
                   (_g1198212150_ _g1198712154_))
               (_g1198212150_ _g1198712154_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1198212150_
                                                    _g1198712154_))))
                                           (_g1198212150_ _g1198712154_)))))
                                (let ((_g1198012212_
                                       (lambda (_g1198712185_)
                                         (if (gx#stx-pair? _g1198712185_)
                                             (let ((_e1198812188_
                                                    (gx#syntax-e
                                                     _g1198712185_)))
                                               (let ((_hd1198912192_
                                                      (##car _e1198812188_))
                                                     (_tl1199012195_
                                                      (##cdr _e1198812188_)))
                                                 (if (gx#identifier?
                                                      _hd1198912192_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g28325_|
                                                          _hd1198912192_)
                                                         (if (gx#stx-pair?
                                                              _tl1199012195_)
                                                             (let ((_e1199112198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1199012195_)))
                       (let ((_hd1199212202_ (##car _e1199112198_))
                             (_tl1199312205_ (##cdr _e1199112198_)))
                         (if (gx#stx-null? _tl1199312205_)
                             ((lambda () '#f))
                             (_g1198112181_ _g1198712185_))))
                     (_g1198112181_ _g1198712185_))
                 (_g1198112181_ _g1198712185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1198112181_
                                                      _g1198712185_))))
                                             (_g1198112181_ _g1198712185_)))))
                                  (_g1198012212_ _e11978_))))))))))
                 (_generate11288_
                  (lambda (_e11350_ _d11352_)
                    (let ((_g1136111419_
                           (lambda (_g1136211415_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1136211415_))))
                      (let ((_g1136011436_
                             (lambda (_g1136211423_)
                               ((lambda (_L11426_)
                                  (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L11426_ '())))
                                _g1136211423_))))
                        (let ((_g1135911488_
                               (lambda (_g1136211440_)
                                 (if (gx#stx-box? _g1136211440_)
                                     (let ((_e1141211443_
                                            (unbox (gx#syntax-e
                                                    _g1136211440_))))
                                       ((lambda (_L11447_)
                                          (let ((_g1145711465_
                                                 (lambda (_g1145811461_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1145811461_))))
                                            (let ((_g1145611484_
                                                   (lambda (_g1145811469_)
                                                     ((lambda (_L11472_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'box)
                        (cons _L11472_ '()))))
              _g1145811469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1145611484_
                                               (_generate11288_
                                                _L11447_
                                                _d11352_)))))
                                        _e1141211443_))
                                     (_g1136011436_ _g1136211440_)))))
                          (let ((_g1135811582_
                                 (lambda (_g1136211492_)
                                   (if (gx#stx-vector? _g1136211492_)
                                       (let ((_e1140111495_
                                              (vector->list
                                               (gx#syntax-e _g1136211492_))))
                                         (if (gx#stx-pair/null? _e1140111495_)
                                             (if (fx>= (gx#stx-length
                                                        _e1140111495_)
                                                       '0)
                                                 (let ((_g28326_
                                                        (gx#syntax-split-splice
                                                         _e1140111495_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28327_
                                                            (values-count
                                                             _g28326_)))
                                                       (if (not (fx= _g28327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1140211499_
                                                            (values-ref
                                                             _g28326_
                                                             0))
                                                           (_tl1140411502_
                                                            (values-ref
                                                             _g28326_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1140411502_)
                                                           (letrec ((_loop1140511505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1140311509_ _e1140911512_)
                               (if (gx#stx-pair? _hd1140311509_)
                                   (let ((_e1140611515_
                                          (gx#syntax-e _hd1140311509_)))
                                     (let ((_lp-hd1140711519_
                                            (##car _e1140611515_))
                                           (_lp-tl1140811522_
                                            (##cdr _e1140611515_)))
                                       (_loop1140511505_
                                        _lp-tl1140811522_
                                        (cons _lp-hd1140711519_
                                              _e1140911512_))))
                                   (let ((_e1141011525_
                                          (reverse _e1140911512_)))
                                     ((lambda (_L11529_)
                                        (let ((_g1154311551_
                                               (lambda (_g1154411547_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1154411547_))))
                                          (let ((_g1154211570_
                                                 (lambda (_g1154411555_)
                                                   ((lambda (_L11558_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'list->vector)
                                                              (cons _L11558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1154411555_))))
                                            (_g1154211570_
                                             (_generate11288_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1157311576_
                                                                _g1157411579_)
                                                         (cons _g1157311576_
                                                               _g1157411579_))
                                                       '()
                                                       _L11529_))
                                              _d11352_)))))
                                      _e1141011525_))))))
                     (_loop1140511505_ _target1140211499_ '()))
                   (_g1135911488_ _g1136211492_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1135911488_ _g1136211492_))
                                             (_g1135911488_ _g1136211492_)))
                                       (_g1135911488_ _g1136211492_)))))
                            (let ((_g1135711676_
                                   (lambda (_g1136211586_)
                                     (if (gx#stx-pair? _g1136211586_)
                                         (let ((_e1139711589_
                                                (gx#syntax-e _g1136211586_)))
                                           (let ((_hd1139811593_
                                                  (##car _e1139711589_))
                                                 (_tl1139911596_
                                                  (##cdr _e1139711589_)))
                                             ((lambda (_L11599_ _L11601_)
                                                (let ((_g1161211627_
                                                       (lambda (_g1161311623_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1161311623_))))
                                                  (let ((_g1161111672_
                                                         (lambda (_g1161311631_)
                                                           (if (gx#stx-pair?
                                                                _g1161311631_)
                                                               (let ((_e1161611634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1161311631_)))
                         (let ((_hd1161711638_ (##car _e1161611634_))
                               (_tl1161811641_ (##cdr _e1161611634_)))
                           (if (gx#stx-pair? _tl1161811641_)
                               (let ((_e1161911644_
                                      (gx#syntax-e _tl1161811641_)))
                                 (let ((_hd1162011648_ (##car _e1161911644_))
                                       (_tl1162111651_ (##cdr _e1161911644_)))
                                   (if (gx#stx-null? _tl1162111651_)
                                       ((lambda (_L11654_ _L11656_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'cons)
                                                  (cons _L11656_
                                                        (cons _L11654_ '())))))
                                        _hd1162011648_
                                        _hd1161711638_)
                                       (_g1161211627_ _g1161311631_))))
                               (_g1161211627_ _g1161311631_))))
                       (_g1161211627_ _g1161311631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1161111672_
                                                     (list (_generate11288_
                                                            _L11601_
                                                            _d11352_)
                                                           (_generate11288_
                                                            _L11599_
                                                            _d11352_))))))
                                              _tl1139911596_
                                              _hd1139811593_)))
                                         (_g1135811582_ _g1136211586_)))))
                              (let ((_g1135611761_
                                     (lambda (_g1136211680_)
                                       (if (gx#stx-pair? _g1136211680_)
                                           (let ((_e1138611683_
                                                  (gx#syntax-e _g1136211680_)))
                                             (let ((_hd1138711687_
                                                    (##car _e1138611683_))
                                                   (_tl1138811690_
                                                    (##cdr _e1138611683_)))
                                               (if (gx#stx-pair?
                                                    _hd1138711687_)
                                                   (let ((_e1138911693_
                                                          (gx#syntax-e
                                                           _hd1138711687_)))
                                                     (let ((_hd1139011697_
                                                            (##car _e1138911693_))
                                                           (_tl1139111700_
                                                            (##cdr _e1138911693_)))
                                                       (if (gx#identifier?
                                                            _hd1139011697_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g28328_|
                                                                _hd1139011697_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1139111700_)
                           (let ((_e1139211703_ (gx#syntax-e _tl1139111700_)))
                             (let ((_hd1139311707_ (##car _e1139211703_))
                                   (_tl1139411710_ (##cdr _e1139211703_)))
                               (if (gx#stx-null? _tl1139411710_)
                                   ((lambda (_L11713_ _L11715_)
                                      (if (fxzero? _d11352_)
                                          (let ((_g1173011738_
                                                 (lambda (_g1173111734_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1173111734_))))
                                            (let ((_g1172911757_
                                                   (lambda (_g1173111742_)
                                                     ((lambda (_L11745_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'foldr)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _L11745_ (cons _L11715_ '()))))))
              _g1173111742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1172911757_
                                               (_generate11288_
                                                _L11713_
                                                _d11352_))))
                                          (_g1135711676_ _g1136211680_)))
                                    _tl1138811690_
                                    _hd1139311707_)
                                   (_g1135711676_ _g1136211680_))))
                           (_g1135711676_ _g1136211680_))
                       (_g1135711676_ _g1136211680_))
                   (_g1135711676_ _g1136211680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1135711676_
                                                    _g1136211680_))))
                                           (_g1135711676_ _g1136211680_)))))
                                (let ((_g1135511832_
                                       (lambda (_g1136211765_)
                                         (if (gx#stx-pair? _g1136211765_)
                                             (let ((_e1137811768_
                                                    (gx#syntax-e
                                                     _g1136211765_)))
                                               (let ((_hd1137911772_
                                                      (##car _e1137811768_))
                                                     (_tl1138011775_
                                                      (##cdr _e1137811768_)))
                                                 (if (gx#identifier?
                                                      _hd1137911772_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g28329_|
                                                          _hd1137911772_)
                                                         (if (gx#stx-pair?
                                                              _tl1138011775_)
                                                             (let ((_e1138111778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1138011775_)))
                       (let ((_hd1138211782_ (##car _e1138111778_))
                             (_tl1138311785_ (##cdr _e1138111778_)))
                         (if (gx#stx-null? _tl1138311785_)
                             ((lambda (_L11788_)
                                (if (fxzero? _d11352_)
                                    (cons (gx#datum->syntax '#f 'foldr)
                                          (cons (gx#datum->syntax '#f 'cons)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons '() '()))
                                                      (cons _L11788_ '()))))
                                    (let ((_g1180111809_
                                           (lambda (_g1180211805_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1180211805_))))
                                      (let ((_g1180011828_
                                             (lambda (_g1180211813_)
                                               ((lambda (_L11816_)
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
                        (cons _L11816_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1180211813_))))
                                        (_g1180011828_
                                         (_generate11288_
                                          _L11788_
                                          (fx1- _d11352_)))))))
                              _hd1138211782_)
                             (_g1135611761_ _g1136211765_))))
                     (_g1135611761_ _g1136211765_))
                 (_g1135611761_ _g1136211765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1135611761_
                                                      _g1136211765_))))
                                             (_g1135611761_ _g1136211765_)))))
                                  (let ((_g1135411903_
                                         (lambda (_g1136211836_)
                                           (if (gx#stx-pair? _g1136211836_)
                                               (let ((_e1137111839_
                                                      (gx#syntax-e
                                                       _g1136211836_)))
                                                 (let ((_hd1137211843_
                                                        (##car _e1137111839_))
                                                       (_tl1137311846_
                                                        (##cdr _e1137111839_)))
                                                   (if (gx#identifier?
                                                        _hd1137211843_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:2>[1]#_g28330_|
                                                            _hd1137211843_)
                                                           (if (gx#stx-pair?
                                                                _tl1137311846_)
                                                               (let ((_e1137411849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1137311846_)))
                         (let ((_hd1137511853_ (##car _e1137411849_))
                               (_tl1137611856_ (##cdr _e1137411849_)))
                           (if (gx#stx-null? _tl1137611856_)
                               ((lambda (_L11859_)
                                  (if (fxzero? _d11352_)
                                      _L11859_
                                      (let ((_g1187211880_
                                             (lambda (_g1187311876_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1187311876_))))
                                        (let ((_g1187111899_
                                               (lambda (_g1187311884_)
                                                 ((lambda (_L11887_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons (gx#datum->syntax '#f 'unquote) '()))
                          (cons _L11887_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1187311884_))))
                                          (_g1187111899_
                                           (_generate11288_
                                            _L11859_
                                            (fx1- _d11352_)))))))
                                _hd1137511853_)
                               (_g1135511832_ _g1136211836_))))
                       (_g1135511832_ _g1136211836_))
                   (_g1135511832_ _g1136211836_))
               (_g1135511832_ _g1136211836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1135511832_
                                                _g1136211836_)))))
                                    (let ((_g1135311974_
                                           (lambda (_g1136211907_)
                                             (if (gx#stx-pair? _g1136211907_)
                                                 (let ((_e1136411910_
                                                        (gx#syntax-e
                                                         _g1136211907_)))
                                                   (let ((_hd1136511914_
                                                          (##car _e1136411910_))
                                                         (_tl1136611917_
                                                          (##cdr _e1136411910_)))
                                                     (if (gx#identifier?
                                                          _hd1136511914_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<sugar>::<sugar:2>[1]#_g28331_|
                                                              _hd1136511914_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1136611917_)
                         (let ((_e1136711920_ (gx#syntax-e _tl1136611917_)))
                           (let ((_hd1136811924_ (##car _e1136711920_))
                                 (_tl1136911927_ (##cdr _e1136711920_)))
                             (if (gx#stx-null? _tl1136911927_)
                                 ((lambda (_L11930_)
                                    (let ((_g1194311951_
                                           (lambda (_g1194411947_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1194411947_))))
                                      (let ((_g1194211970_
                                             (lambda (_g1194411955_)
                                               ((lambda (_L11958_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'quasiquote) '()))
                        (cons _L11958_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1194411955_))))
                                        (_g1194211970_
                                         (_generate11288_
                                          _L11930_
                                          (fx1+ _d11352_))))))
                                  _hd1136811924_)
                                 (_g1135411903_ _g1136211907_))))
                         (_g1135411903_ _g1136211907_))
                     (_g1135411903_ _g1136211907_))
                 (_g1135411903_ _g1136211907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1135411903_
                                                  _g1136211907_)))))
                                      (_g1135311974_ _e11350_)))))))))))))
          (let ((_g1129011304_
                 (lambda (_g1129111300_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1129111300_))))
            (let ((_g1128911346_
                   (lambda (_g1129111308_)
                     (if (gx#stx-pair? _g1129111308_)
                         (let ((_e1129311311_ (gx#syntax-e _g1129111308_)))
                           (let ((_hd1129411315_ (##car _e1129311311_))
                                 (_tl1129511318_ (##cdr _e1129311311_)))
                             (if (gx#stx-pair? _tl1129511318_)
                                 (let ((_e1129611321_
                                        (gx#syntax-e _tl1129511318_)))
                                   (let ((_hd1129711325_ (##car _e1129611321_))
                                         (_tl1129811328_
                                          (##cdr _e1129611321_)))
                                     (if (gx#stx-null? _tl1129811328_)
                                         ((lambda (_L11331_)
                                            (if (_simple-quote?11286_ _L11331_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L11331_ '()))
                                                (_generate11288_ _L11331_ '0)))
                                          _hd1129711325_)
                                         (_g1129011304_ _g1129111308_))))
                                 (_g1129011304_ _g1129111308_))))
                         (_g1129011304_ _g1129111308_)))))
              (_g1128911346_ _stx11283_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#delay|
      (lambda (_$stx12218_)
        (let ((_g1222312244_
               (lambda (_g1222412240_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1222412240_))))
          (let ((_g1222212285_
                 (lambda (_g1222412248_)
                   (if (gx#stx-pair? _g1222412248_)
                       (let ((_e1223312251_ (gx#syntax-e _g1222412248_)))
                         (let ((_hd1223412255_ (##car _e1223312251_))
                               (_tl1223512258_ (##cdr _e1223312251_)))
                           (if (gx#stx-pair? _tl1223512258_)
                               (let ((_e1223612261_
                                      (gx#syntax-e _tl1223512258_)))
                                 (let ((_hd1223712265_ (##car _e1223612261_))
                                       (_tl1223812268_ (##cdr _e1223612261_)))
                                   (if (gx#stx-null? _tl1223812268_)
                                       ((lambda (_L12271_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-promise)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda%)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12271_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _hd1223712265_)
                                       (_g1222312244_ _g1222412248_))))
                               (_g1222312244_ _g1222412248_))))
                       (_g1222312244_ _g1222412248_)))))
            (let ((_g1222112325_
                   (lambda (_g1222412289_)
                     (if (gx#stx-pair? _g1222412289_)
                         (let ((_e1222612292_ (gx#syntax-e _g1222412289_)))
                           (let ((_hd1222712296_ (##car _e1222612292_))
                                 (_tl1222812299_ (##cdr _e1222612292_)))
                             (if (gx#stx-pair? _tl1222812299_)
                                 (let ((_e1222912302_
                                        (gx#syntax-e _tl1222812299_)))
                                   (let ((_hd1223012306_ (##car _e1222912302_))
                                         (_tl1223112309_
                                          (##cdr _e1222912302_)))
                                     (if (gx#stx-null? _tl1223112309_)
                                         ((lambda (_L12312_)
                                            (if (gx#stx-datum? _L12312_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L12312_ '()))
                                                (_g1222212285_ _g1222412289_)))
                                          _hd1223012306_)
                                         (_g1222212285_ _g1222412289_))))
                                 (_g1222212285_ _g1222412289_))))
                         (_g1222212285_ _g1222412289_)))))
              (_g1222112325_ _$stx12218_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#cut|
      (lambda (_stx12329_)
        (let ((_generate12332_
               (lambda (_rest12451_)
                 ((letrec ((_lp12454_
                            (lambda (_rest12457_ _hd12459_ _body12460_)
                              (let ((_g1246312475_
                                     (lambda (_g1246412471_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1246412471_))))
                                (let ((_g1246212486_
                                       (lambda (_g1246412479_)
                                         ((lambda ()
                                            (values (reverse _hd12459_)
                                                    (reverse _body12460_)
                                                    '#f))))))
                                  (let ((_g1246112572_
                                         (lambda (_g1246412490_)
                                           (if (gx#stx-pair? _g1246412490_)
                                               (let ((_e1246712493_
                                                      (gx#syntax-e
                                                       _g1246412490_)))
                                                 (let ((_hd1246812497_
                                                        (##car _e1246712493_))
                                                       (_tl1246912500_
                                                        (##cdr _e1246712493_)))
                                                   ((lambda (_L12503_ _L12505_)
                                                      (let ((_g1252212529_
                                                             (lambda (_g1252312525_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1252312525_))))
                                                        (let ((_g1252112540_
                                                               (lambda (_g1252312533_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (_lp12454_
                             _L12503_
                             _hd12459_
                             (cons _L12505_ _body12460_)))))))
                  (let ((_g1252012554_
                         (lambda (_g1252312544_)
                           (if (gx#identifier? _g1252312544_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<sugar>::<sugar:2>[1]#_g28334_|
                                    _g1252312544_)
                                   ((lambda ()
                                      (if (gx#stx-null? _L12503_)
                                          (let ((_tail12551_ (gx#genident)))
                                            (values (foldl cons
                                                           _tail12551_
                                                           _hd12459_)
                                                    (foldl cons
                                                           (list _tail12551_)
                                                           _body12460_)
                                                    '#t))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx12329_
                                           _L12505_))))
                                   (_g1252112540_ _g1252312544_))
                               (_g1252112540_ _g1252312544_)))))
                    (let ((_g1251912568_
                           (lambda (_g1252312558_)
                             (if (gx#identifier? _g1252312558_)
                                 (if (gx#free-identifier=?
                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g28335_|
                                      _g1252312558_)
                                     ((lambda ()
                                        (let ((_arg12565_ (gx#genident)))
                                          (_lp12454_
                                           _L12503_
                                           (cons _arg12565_ _hd12459_)
                                           (cons _arg12565_ _body12460_)))))
                                     (_g1252012554_ _g1252312558_))
                                 (_g1252012554_ _g1252312558_)))))
                      (_g1251912568_ _L12505_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1246912500_
                                                    _hd1246812497_)))
                                               (_g1246212486_
                                                _g1246412490_)))))
                                    (_g1246112572_ _rest12457_)))))))
                    _lp12454_)
                  _rest12451_
                  '()
                  '()))))
          (let ((_g1233512346_
                 (lambda (_g1233612342_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1233612342_))))
            (let ((_g1233412447_
                   (lambda (_g1233612350_)
                     (if (gx#stx-pair? _g1233612350_)
                         (let ((_e1233812353_ (gx#syntax-e _g1233612350_)))
                           (let ((_hd1233912357_ (##car _e1233812353_))
                                 (_tl1234012360_ (##cdr _e1233812353_)))
                             ((lambda (_L12363_)
                                (if (if (gx#stx-list? _L12363_)
                                        (not (gx#stx-null? _L12363_))
                                        '#f)
                                    (let ((_g28332_
                                           (_generate12332_ _L12363_)))
                                      (begin
                                        (let ((_g28333_
                                               (values-count _g28332_)))
                                          (if (not (fx= _g28333_ 3))
                                              (error "Context expects 3 values"
                                                     _g28333_)))
                                        (let ((_hd12376_
                                               (values-ref _g28332_ 0))
                                              (_body12378_
                                               (values-ref _g28332_ 1))
                                              (_tail?12379_
                                               (values-ref _g28332_ 2)))
                                          (let ((_g1238112389_
                                                 (lambda (_g1238212385_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1238212385_))))
                                            (let ((_g1238012443_
                                                   (lambda (_g1238212393_)
                                                     ((lambda (_L12396_)
                                                        (let ()
                                                          (let ((_g1240912417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1241012413_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1241012413_))))
                    (let ((_g1240812439_
                           (lambda (_g1241012421_)
                             ((lambda (_L12424_)
                                (let ()
                                  (let ()
                                    (if _tail?12379_
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12396_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'apply)
                        _L12424_)
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12396_
                                                    (cons _L12424_ '())))))))
                              _g1241012421_))))
                      (_g1240812439_ _body12378_)))))
              _g1238212393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1238012443_ _hd12376_))))))
                                    (_g1233512346_ _g1233612350_)))
                              _tl1234012360_)))
                         (_g1233512346_ _g1233612350_)))))
              (_g1233412447_ _stx12329_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<>|
      (lambda (_$stx12577_)
        (let ((_g1258012587_
               (lambda (_g1258112583_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1258112583_))))
          (_g1258012587_ _$stx12577_))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<...>|
      (lambda (_$stx12591_)
        (let ((_g1259412601_
               (lambda (_g1259512597_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1259512597_))))
          (_g1259412601_ _$stx12591_))))))
