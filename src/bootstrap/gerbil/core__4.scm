(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29442_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29443_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29444_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29461_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29470_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29471_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29478_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29479_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29482_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29483_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29484_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29485_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29488_|
    (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29489_|
    (gx#core-quote-syntax '<>))
  (begin
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#lambda|
      (lambda (_stx4861_)
        (let ((_simple-lambda?4864_
               (lambda (_hd8014_) (gx#stx-andmap gx#identifier? _hd8014_))))
          (let ((_opt-lambda?4866_
                 (lambda (_hd7866_)
                   ((letrec ((_lp7869_
                              (lambda (_rest7872_ _opt?7874_)
                                (let ((_g78777889_
                                       (lambda (_g78787885_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g78787885_))))
                                  (let ((_g78767904_
                                         (lambda (_g78787893_)
                                           ((lambda ()
                                              (if _opt?7874_
                                                  (let ((_$e7900_
                                                         (gx#stx-null?
                                                          _rest7872_)))
                                                    (if _$e7900_
                                                        _$e7900_
                                                        (gx#identifier?
                                                         _rest7872_)))
                                                  '#f))))))
                                    (let ((_g78758010_
                                           (lambda (_g78787908_)
                                             (if (gx#stx-pair? _g78787908_)
                                                 (let ((_e78817911_
                                                        (gx#syntax-e
                                                         _g78787908_)))
                                                   (let ((_hd78827915_
                                                          (##car _e78817911_))
                                                         (_tl78837918_
                                                          (##cdr _e78817911_)))
                                                     ((lambda (_L7921_ _L7923_)
                                                        (let ((_g79397953_
                                                               (lambda (_g79407949_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g79407949_))))
                  (let ((_g79387964_
                         (lambda (_g79407957_)
                           ((lambda ()
                              (if (gx#identifier? _L7923_)
                                  (if (not _opt?7874_)
                                      (_lp7869_ _L7921_ '#f)
                                      '#f)
                                  '#f))))))
                    (let ((_g79378006_
                           (lambda (_g79407968_)
                             (if (gx#stx-pair? _g79407968_)
                                 (let ((_e79427971_ (gx#syntax-e _g79407968_)))
                                   (let ((_hd79437975_ (##car _e79427971_))
                                         (_tl79447978_ (##cdr _e79427971_)))
                                     (if (gx#stx-pair? _tl79447978_)
                                         (let ((_e79457981_
                                                (gx#syntax-e _tl79447978_)))
                                           (let ((_hd79467985_
                                                  (##car _e79457981_))
                                                 (_tl79477988_
                                                  (##cdr _e79457981_)))
                                             (if (gx#stx-null? _tl79477988_)
                                                 ((lambda (_L7991_)
                                                    (if (gx#identifier?
                                                         _L7991_)
                                                        (_lp7869_ _L7921_ '#t)
                                                        (_g79387964_
                                                         _g79407968_)))
                                                  _hd79437975_)
                                                 (_g79387964_ _g79407968_))))
                                         (_g79387964_ _g79407968_))))
                                 (_g79387964_ _g79407968_)))))
                      (_g79378006_ _L7923_)))))
              _tl78837918_
              _hd78827915_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g78767904_ _g78787908_)))))
                                      (_g78758010_ _rest7872_)))))))
                      _lp7869_)
                    _hd7866_
                    '#f))))
            (let ((_kw-lambda?4868_
                   (lambda (_hd7392_)
                     ((letrec ((_lp7395_
                                (lambda (_rest7398_ _opt?7400_ _key?7401_)
                                  (let ((_g74067435_
                                         (lambda (_g74077431_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g74077431_))))
                                    (let ((_g74057450_
                                           (lambda (_g74077439_)
                                             ((lambda ()
                                                (if _key?7401_
                                                    (let ((_$e7446_
                                                           (gx#stx-null?
                                                            _rest7398_)))
                                                      (if _$e7446_
                                                          _$e7446_
                                                          (gx#identifier?
                                                           _rest7398_)))
                                                    '#f))))))
                                      (let ((_g74047556_
                                             (lambda (_g74077454_)
                                               (if (gx#stx-pair? _g74077454_)
                                                   (let ((_e74277457_
                                                          (gx#syntax-e
                                                           _g74077454_)))
                                                     (let ((_hd74287461_
                                                            (##car _e74277457_))
                                                           (_tl74297464_
                                                            (##cdr _e74277457_)))
                                                       ((lambda (_L7467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7469_)
                  (let ((_g74857499_
                         (lambda (_g74867495_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g74867495_))))
                    (let ((_g74847510_
                           (lambda (_g74867503_)
                             ((lambda ()
                                (if (gx#identifier? _L7469_)
                                    (if (not _opt?7400_)
                                        (_lp7395_ _L7467_ '#f _key?7401_)
                                        '#f)
                                    '#f))))))
                      (let ((_g74837552_
                             (lambda (_g74867514_)
                               (if (gx#stx-pair? _g74867514_)
                                   (let ((_e74887517_
                                          (gx#syntax-e _g74867514_)))
                                     (let ((_hd74897521_ (##car _e74887517_))
                                           (_tl74907524_ (##cdr _e74887517_)))
                                       (if (gx#stx-pair? _tl74907524_)
                                           (let ((_e74917527_
                                                  (gx#syntax-e _tl74907524_)))
                                             (let ((_hd74927531_
                                                    (##car _e74917527_))
                                                   (_tl74937534_
                                                    (##cdr _e74917527_)))
                                               (if (gx#stx-null? _tl74937534_)
                                                   ((lambda (_L7537_)
                                                      (if (gx#identifier?
                                                           _L7537_)
                                                          (_lp7395_
                                                           _L7467_
                                                           '#t
                                                           _key?7401_)
                                                          '#f))
                                                    _hd74897521_)
                                                   (_g74847510_ _g74867514_))))
                                           (_g74847510_ _g74867514_))))
                                   (_g74847510_ _g74867514_)))))
                        (_g74837552_ _L7469_)))))
                _tl74297464_
                _hd74287461_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g74057450_
                                                    _g74077454_)))))
                                        (let ((_g74037598_
                                               (lambda (_g74077560_)
                                                 (if (gx#stx-pair? _g74077560_)
                                                     (let ((_e74197563_
                                                            (gx#syntax-e
                                                             _g74077560_)))
                                                       (let ((_hd74207567_
                                                              (##car _e74197563_))
                                                             (_tl74217570_
                                                              (##cdr _e74197563_)))
                                                         (if (gx#stx-datum?
                                                              _hd74207567_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd74207567_)
                                 '#!key)
                         (if (gx#stx-pair? _tl74217570_)
                             (let ((_e74227573_ (gx#syntax-e _tl74217570_)))
                               (let ((_hd74237577_ (##car _e74227573_))
                                     (_tl74247580_ (##cdr _e74227573_)))
                                 ((lambda (_L7583_ _L7585_)
                                    (if (gx#identifier? _L7585_)
                                        (_lp7395_ _L7583_ _opt?7400_ '#t)
                                        '#f))
                                  _tl74247580_
                                  _hd74237577_)))
                             (_g74047556_ _g74077560_))
                         (_g74047556_ _g74077560_))
                     (_g74047556_ _g74077560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g74047556_
                                                      _g74077560_)))))
                                          (let ((_g74027714_
                                                 (lambda (_g74077602_)
                                                   (if (gx#stx-pair?
                                                        _g74077602_)
                                                       (let ((_e74117605_
                                                              (gx#syntax-e
                                                               _g74077602_)))
                                                         (let ((_hd74127609_
                                                                (##car _e74117605_))
                                                               (_tl74137612_
                                                                (##cdr _e74117605_)))
                                                           (if (gx#stx-pair?
                                                                _tl74137612_)
                                                               (let ((_e74147615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl74137612_)))
                         (let ((_hd74157619_ (##car _e74147615_))
                               (_tl74167622_ (##cdr _e74147615_)))
                           ((lambda (_L7625_ _L7627_ _L7628_)
                              (if (gx#stx-keyword? _L7628_)
                                  (let ((_g76437657_
                                         (lambda (_g76447653_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g76447653_))))
                                    (let ((_g76427668_
                                           (lambda (_g76447661_)
                                             ((lambda ()
                                                (if (gx#identifier? _L7627_)
                                                    (_lp7395_
                                                     _L7625_
                                                     _opt?7400_
                                                     '#t)
                                                    '#f))))))
                                      (let ((_g76417710_
                                             (lambda (_g76447672_)
                                               (if (gx#stx-pair? _g76447672_)
                                                   (let ((_e76467675_
                                                          (gx#syntax-e
                                                           _g76447672_)))
                                                     (let ((_hd76477679_
                                                            (##car _e76467675_))
                                                           (_tl76487682_
                                                            (##cdr _e76467675_)))
                                                       (if (gx#stx-pair?
                                                            _tl76487682_)
                                                           (let ((_e76497685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl76487682_)))
                     (let ((_hd76507689_ (##car _e76497685_))
                           (_tl76517692_ (##cdr _e76497685_)))
                       (if (gx#stx-null? _tl76517692_)
                           ((lambda (_L7695_)
                              (if (gx#identifier? _L7695_)
                                  (_lp7395_ _L7625_ _opt?7400_ '#t)
                                  '#f))
                            _hd76477679_)
                           (_g76427668_ _g76447672_))))
                   (_g76427668_ _g76447672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76427668_
                                                    _g76447672_)))))
                                        (_g76417710_ _L7627_))))
                                  (_g74037598_ _g74077602_)))
                            _tl74167622_
                            _hd74157619_
                            _hd74127609_)))
                       (_g74037598_ _g74077602_))))
               (_g74037598_ _g74077602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g74027714_ _rest7398_)))))))))
                        _lp7395_)
                      _hd7392_
                      '#f
                      '#f))))
              (let ((_generate-bind4870_
                     (lambda (_e7128_)
                       (if (gx#underscore? _e7128_)
                           (gx#genident _e7128_)
                           _e7128_))))
                (let ((_check-duplicate-bindings4871_
                       (lambda (_hd6825_)
                         (let ((_cons-id6828_
                                (lambda (_id7124_ _ids7126_)
                                  (if (gx#underscore? _id7124_)
                                      _ids7126_
                                      (cons _id7124_ _ids7126_)))))
                           ((letrec ((_lp6831_
                                      (lambda (_rest6834_ _ids6836_)
                                        (let ((_g68396851_
                                               (lambda (_g68406847_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g68406847_))))
                                          (let ((_g68386862_
                                                 (lambda (_g68406855_)
                                                   ((lambda ()
                                                      (gx#check-duplicate-identifiers
                                                       (if (gx#stx-null?
                                                            _rest6834_)
                                                           _ids6836_
                                                           (_cons-id6828_
                                                            _rest6834_
                                                            _ids6836_))
                                                       _stx4861_))))))
                                            (let ((_g68377120_
                                                   (lambda (_g68406866_)
                                                     (if (gx#stx-pair?
                                                          _g68406866_)
                                                         (let ((_e68436869_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g68406866_)))
                   (let ((_hd68446873_ (##car _e68436869_))
                         (_tl68456876_ (##cdr _e68436869_)))
                     ((lambda (_L6879_ _L6881_)
                        (if (gx#identifier? _L6881_)
                            (_lp6831_
                             _L6879_
                             (_cons-id6828_ _L6881_ _ids6836_))
                            (if (gx#stx-pair? _L6881_)
                                (let ((_g68976911_
                                       (lambda (_g68986907_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g68986907_))))
                                  (let ((_g68966952_
                                         (lambda (_g68986915_)
                                           (if (gx#stx-pair? _g68986915_)
                                               (let ((_e69006918_
                                                      (gx#syntax-e
                                                       _g68986915_)))
                                                 (let ((_hd69016922_
                                                        (##car _e69006918_))
                                                       (_tl69026925_
                                                        (##cdr _e69006918_)))
                                                   (if (gx#stx-pair?
                                                        _tl69026925_)
                                                       (let ((_e69036928_
                                                              (gx#syntax-e
                                                               _tl69026925_)))
                                                         (let ((_hd69046932_
                                                                (##car _e69036928_))
                                                               (_tl69056935_
                                                                (##cdr _e69036928_)))
                                                           (if (gx#stx-null?
                                                                _tl69056935_)
                                                               ((lambda (_L6938_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_lp6831_ _L6879_ (_cons-id6828_ _L6938_ _ids6836_)))
                        _hd69016922_)
                       (_g68976911_ _g68986915_))))
               (_g68976911_ _g68986915_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68976911_ _g68986915_)))))
                                    (_g68966952_ _L6881_)))
                                (if (gx#stx-keyword? _L6881_)
                                    (let ((_g69566968_
                                           (lambda (_g69576964_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69576964_))))
                                      (let ((_g69557070_
                                             (lambda (_g69576972_)
                                               (if (gx#stx-pair? _g69576972_)
                                                   (let ((_e69606975_
                                                          (gx#syntax-e
                                                           _g69576972_)))
                                                     (let ((_hd69616979_
                                                            (##car _e69606975_))
                                                           (_tl69626982_
                                                            (##cdr _e69606975_)))
                                                       ((lambda (_L6985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6987_)
                  (let ((_g69997013_
                         (lambda (_g70007009_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g70007009_))))
                    (let ((_g69987024_
                           (lambda (_g70007017_)
                             ((lambda ()
                                (_lp6831_
                                 _L6985_
                                 (_cons-id6828_ _L6987_ _ids6836_)))))))
                      (let ((_g69977066_
                             (lambda (_g70007028_)
                               (if (gx#stx-pair? _g70007028_)
                                   (let ((_e70027031_
                                          (gx#syntax-e _g70007028_)))
                                     (let ((_hd70037035_ (##car _e70027031_))
                                           (_tl70047038_ (##cdr _e70027031_)))
                                       (if (gx#stx-pair? _tl70047038_)
                                           (let ((_e70057041_
                                                  (gx#syntax-e _tl70047038_)))
                                             (let ((_hd70067045_
                                                    (##car _e70057041_))
                                                   (_tl70077048_
                                                    (##cdr _e70057041_)))
                                               (if (gx#stx-null? _tl70077048_)
                                                   ((lambda (_L7051_)
                                                      (_lp6831_
                                                       _L6985_
                                                       (_cons-id6828_
                                                        _L7051_
                                                        _ids6836_)))
                                                    _hd70037035_)
                                                   (_g69987024_ _g70007028_))))
                                           (_g69987024_ _g70007028_))))
                                   (_g69987024_ _g70007028_)))))
                        (_g69977066_ _L6987_)))))
                _tl69626982_
                _hd69616979_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g69566968_
                                                    _g69576972_)))))
                                        (_g69557070_ _L6879_)))
                                    (if (eq? (gx#stx-e _L6881_) '#!key)
                                        (let ((_g70747086_
                                               (lambda (_g70757082_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g70757082_))))
                                          (let ((_g70737116_
                                                 (lambda (_g70757090_)
                                                   (if (gx#stx-pair?
                                                        _g70757090_)
                                                       (let ((_e70787093_
                                                              (gx#syntax-e
                                                               _g70757090_)))
                                                         (let ((_hd70797097_
                                                                (##car _e70787093_))
                                                               (_tl70807100_
                                                                (##cdr _e70787093_)))
                                                           ((lambda (_L7103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L7105_)
                      (_lp6831_ _L7103_ (_cons-id6828_ _L7105_ _ids6836_)))
                    _tl70807100_
                    _hd70797097_)))
               (_g70747086_ _g70757090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g70737116_ _L6879_)))
                                        (error '"BUG: check-duplicate-bindings"
                                               _stx4861_
                                               _rest6834_))))))
                      _tl68456876_
                      _hd68446873_)))
                 (_g68386862_ _g68406866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g68377120_ _rest6834_)))))))
                              _lp6831_)
                            _hd6825_
                            '())))))
                  (let ((_generate-opt-primary4872_
                         (lambda (_pre6617_ _opt6619_ _tail6620_ _body6621_)
                           (let ((_g66236664_
                                  (lambda (_g66246660_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g66246660_))))
                             (let ((_g66226821_
                                    (lambda (_g66246668_)
                                      (if (gx#stx-pair? _g66246668_)
                                          (let ((_e66296671_
                                                 (gx#syntax-e _g66246668_)))
                                            (let ((_hd66306675_
                                                   (##car _e66296671_))
                                                  (_tl66316678_
                                                   (##cdr _e66296671_)))
                                              (if (gx#stx-pair/null?
                                                   _hd66306675_)
                                                  (if (fx>= (gx#stx-length
                                                             _hd66306675_)
                                                            '0)
                                                      (let ((_g29430_
                                                             (gx#syntax-split-splice
                                                              _hd66306675_
                                                              '0)))
                                                        (begin
                                                          (let ((_g29431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g29430_)))
                    (if (not (fx= _g29431_ 2))
                        (error "Context expects 2 values" _g29431_)))
                  (let ((_target66326681_ (values-ref _g29430_ 0))
                        (_tl66346684_ (values-ref _g29430_ 1)))
                    (if (gx#stx-null? _tl66346684_)
                        (letrec ((_loop66356687_
                                  (lambda (_hd66336691_ _pre66396694_)
                                    (if (gx#stx-pair? _hd66336691_)
                                        (let ((_e66366697_
                                               (gx#syntax-e _hd66336691_)))
                                          (let ((_lp-hd66376701_
                                                 (##car _e66366697_))
                                                (_lp-tl66386704_
                                                 (##cdr _e66366697_)))
                                            (_loop66356687_
                                             _lp-tl66386704_
                                             (cons _lp-hd66376701_
                                                   _pre66396694_))))
                                        (let ((_pre66406707_
                                               (reverse _pre66396694_)))
                                          (if (gx#stx-pair? _tl66316678_)
                                              (let ((_e66416711_
                                                     (gx#syntax-e
                                                      _tl66316678_)))
                                                (let ((_hd66426715_
                                                       (##car _e66416711_))
                                                      (_tl66436718_
                                                       (##cdr _e66416711_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd66426715_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd66426715_)
                        '0)
                  (let ((_g29432_ (gx#syntax-split-splice _hd66426715_ '0)))
                    (begin
                      (let ((_g29433_ (values-count _g29432_)))
                        (if (not (fx= _g29433_ 2))
                            (error "Context expects 2 values" _g29433_)))
                      (let ((_target66446721_ (values-ref _g29432_ 0))
                            (_tl66466724_ (values-ref _g29432_ 1)))
                        (if (gx#stx-null? _tl66466724_)
                            (letrec ((_loop66476727_
                                      (lambda (_hd66456731_ _opt66516734_)
                                        (if (gx#stx-pair? _hd66456731_)
                                            (let ((_e66486737_
                                                   (gx#syntax-e _hd66456731_)))
                                              (let ((_lp-hd66496741_
                                                     (##car _e66486737_))
                                                    (_lp-tl66506744_
                                                     (##cdr _e66486737_)))
                                                (_loop66476727_
                                                 _lp-tl66506744_
                                                 (cons _lp-hd66496741_
                                                       _opt66516734_))))
                                            (let ((_opt66526747_
                                                   (reverse _opt66516734_)))
                                              (if (gx#stx-pair? _tl66436718_)
                                                  (let ((_e66536751_
                                                         (gx#syntax-e
                                                          _tl66436718_)))
                                                    (let ((_hd66546755_
                                                           (##car _e66536751_))
                                                          (_tl66556758_
                                                           (##cdr _e66536751_)))
                                                      (if (gx#stx-pair?
                                                           _tl66556758_)
                                                          (let ((_e66566761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl66556758_)))
                    (let ((_hd66576765_ (##car _e66566761_))
                          (_tl66586768_ (##cdr _e66566761_)))
                      (if (gx#stx-null? _tl66586768_)
                          ((lambda (_L6771_ _L6773_ _L6774_ _L6775_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g68046809_
                                                             _g68056812_)
                                                      (cons _g68046809_
                                                            _g68056812_))
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g68066815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g68076818_)
                       (cons _g68066815_ _g68076818_))
                     _L6773_
                     _L6774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L6775_))
                                           _L6771_))))
                           _hd66576765_
                           _hd66546755_
                           _opt66526747_
                           _pre66406707_)
                          (_g66236664_ _g66246668_))))
                  (_g66236664_ _g66246668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66236664_
                                                   _g66246668_)))))))
                              (_loop66476727_ _target66446721_ '()))
                            (_g66236664_ _g66246668_)))))
                  (_g66236664_ _g66246668_))
              (_g66236664_ _g66246668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66236664_ _g66246668_)))))))
                          (_loop66356687_ _target66326681_ '()))
                        (_g66236664_ _g66246668_)))))
              (_g66236664_ _g66246668_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66236664_ _g66246668_))))
                                          (_g66236664_ _g66246668_)))))
                               (_g66226821_
                                (list _pre6617_
                                      (map car _opt6619_)
                                      _tail6620_
                                      _body6621_)))))))
                    (let ((_generate-opt-clause4875_
                           (lambda (_primary5866_ _pre5868_ _opt5869_)
                             ((letrec ((_recur5871_
                                        (lambda (_opt-rest5874_ _right5876_)
                                          (if (pair? _opt-rest5874_)
                                              (let ((_hd5878_
                                                     (car _opt-rest5874_)))
                                                (let ((_rest5881_
                                                       (cdr _opt-rest5874_)))
                                                  (let ((_g58845892_
                                                         (lambda (_g58855888_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g58855888_))))
                                                    (let ((_g58835981_
                                                           (lambda (_g58855896_)
                                                             ((lambda (_L5899_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g59155923_
                                 (lambda (_g59165919_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g59165919_))))
                            (let ((_g59145977_
                                   (lambda (_g59165927_)
                                     ((lambda (_L5930_)
                                        (let ()
                                          (let ((_g59435951_
                                                 (lambda (_g59445947_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g59445947_))))
                                            (let ((_g59425973_
                                                   (lambda (_g59445955_)
                                                     ((lambda (_L5958_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5899_ '())
                                            (cons _L5930_ '()))
                                      '())
                                (cons _L5958_ '()))))))
              _g59445955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g59425973_
                                               (_recur5871_
                                                _rest5881_
                                                (cons _L5899_
                                                      _right5876_)))))))
                                      _g59165927_))))
                              (_g59145977_ (cdr _hd5878_))))))
                      _g58855896_))))
              (_g58835981_ (car _hd5878_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g59856022_
                                                     (lambda (_g59866018_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g59866018_))))
                                                (let ((_g59846164_
                                                       (lambda (_g59866026_)
                                                         (if (gx#stx-pair?
                                                              _g59866026_)
                                                             (let ((_e59906029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g59866026_)))
                       (let ((_hd59916033_ (##car _e59906029_))
                             (_tl59926036_ (##cdr _e59906029_)))
                         (if (gx#stx-pair/null? _hd59916033_)
                             (if (fx>= (gx#stx-length _hd59916033_) '0)
                                 (let ((_g29426_
                                        (gx#syntax-split-splice
                                         _hd59916033_
                                         '0)))
                                   (begin
                                     (let ((_g29427_ (values-count _g29426_)))
                                       (if (not (fx= _g29427_ 2))
                                           (error "Context expects 2 values"
                                                  _g29427_)))
                                     (let ((_target59936039_
                                            (values-ref _g29426_ 0))
                                           (_tl59956042_
                                            (values-ref _g29426_ 1)))
                                       (if (gx#stx-null? _tl59956042_)
                                           (letrec ((_loop59966045_
                                                     (lambda (_hd59946049_
                                                              _pre60006052_)
                                                       (if (gx#stx-pair?
                                                            _hd59946049_)
                                                           (let ((_e59976055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd59946049_)))
                     (let ((_lp-hd59986059_ (##car _e59976055_))
                           (_lp-tl59996062_ (##cdr _e59976055_)))
                       (_loop59966045_
                        _lp-tl59996062_
                        (cons _lp-hd59986059_ _pre60006052_))))
                   (let ((_pre60016065_ (reverse _pre60006052_)))
                     (if (gx#stx-pair? _tl59926036_)
                         (let ((_e60026069_ (gx#syntax-e _tl59926036_)))
                           (let ((_hd60036073_ (##car _e60026069_))
                                 (_tl60046076_ (##cdr _e60026069_)))
                             (if (gx#stx-pair/null? _hd60036073_)
                                 (if (fx>= (gx#stx-length _hd60036073_) '0)
                                     (let ((_g29428_
                                            (gx#syntax-split-splice
                                             _hd60036073_
                                             '0)))
                                       (begin
                                         (let ((_g29429_
                                                (values-count _g29428_)))
                                           (if (not (fx= _g29429_ 2))
                                               (error "Context expects 2 values"
                                                      _g29429_)))
                                         (let ((_target60056079_
                                                (values-ref _g29428_ 0))
                                               (_tl60076082_
                                                (values-ref _g29428_ 1)))
                                           (if (gx#stx-null? _tl60076082_)
                                               (letrec ((_loop60086085_
                                                         (lambda (_hd60066089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opt60126092_)
                   (if (gx#stx-pair? _hd60066089_)
                       (let ((_e60096095_ (gx#syntax-e _hd60066089_)))
                         (let ((_lp-hd60106099_ (##car _e60096095_))
                               (_lp-tl60116102_ (##cdr _e60096095_)))
                           (_loop60086085_
                            _lp-tl60116102_
                            (cons _lp-hd60106099_ _opt60126092_))))
                       (let ((_opt60136105_ (reverse _opt60126092_)))
                         (if (gx#stx-pair? _tl60046076_)
                             (let ((_e60146109_ (gx#syntax-e _tl60046076_)))
                               (let ((_hd60156113_ (##car _e60146109_))
                                     (_tl60166116_ (##cdr _e60146109_)))
                                 (if (gx#stx-null? _tl60166116_)
                                     ((lambda (_L6119_ _L6121_ _L6122_)
                                        (let ()
                                          (gx#stx-wrap-source
                                           (cons _L6119_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g61476152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g61486155_)
                    (cons _g61476152_ _g61486155_))
                  (begin
                    '#!void
                    (foldr (lambda (_g61496158_ _g61506161_)
                             (cons _g61496158_ _g61506161_))
                           '()
                           _L6121_))
                  _L6122_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _stx4861_))))
                                      _hd60156113_
                                      _opt60136105_
                                      _pre60016065_)
                                     (_g59856022_ _g59866026_))))
                             (_g59856022_ _g59866026_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop60086085_
                                                  _target60056079_
                                                  '()))
                                               (_g59856022_ _g59866026_)))))
                                     (_g59856022_ _g59866026_))
                                 (_g59856022_ _g59866026_))))
                         (_g59856022_ _g59866026_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop59966045_
                                              _target59936039_
                                              '()))
                                           (_g59856022_ _g59866026_)))))
                                 (_g59856022_ _g59866026_))
                             (_g59856022_ _g59866026_))))
                     (_g59856022_ _g59866026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g59846164_
                                                   (list _pre5868_
                                                         (reverse _right5876_)
                                                         _primary5866_))))))))
                                _recur5871_)
                              _opt5869_
                              '()))))
                      (let ((_generate-kw-primary4876_
                             (lambda (_kwvar5513_
                                      _kwargs5515_
                                      _args5516_
                                      _body5517_)
                               (let ((_absent5519_ (gx#genident 'absent)))
                                 (letrec ((_make-body5521_
                                           (lambda (_kwargs5685_ _body5687_)
                                             (if (pair? _kwargs5685_)
                                                 (let ((_next5689_
                                                        (car _kwargs5685_)))
                                                   (let ((_rest5692_
                                                          (cdr _kwargs5685_)))
                                                     (let ((_key5695_
                                                            (car _next5689_)))
                                                       (let ((_var5698_
                                                              (cadr _next5689_)))
                                                         (let ((_default5701_
                                                                (caddr _next5689_)))
                                                           (let ()
                                                             (let ((_g57065741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g57075737_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g57075737_))))
                       (let ((_g57055862_
                              (lambda (_g57075745_)
                                (if (gx#stx-pair? _g57075745_)
                                    (let ((_e57155748_
                                           (gx#syntax-e _g57075745_)))
                                      (let ((_hd57165752_ (##car _e57155748_))
                                            (_tl57175755_ (##cdr _e57155748_)))
                                        (if (gx#stx-pair? _tl57175755_)
                                            (let ((_e57185758_
                                                   (gx#syntax-e _tl57175755_)))
                                              (let ((_hd57195762_
                                                     (##car _e57185758_))
                                                    (_tl57205765_
                                                     (##cdr _e57185758_)))
                                                (if (gx#stx-pair? _tl57205765_)
                                                    (let ((_e57215768_
                                                           (gx#syntax-e
                                                            _tl57205765_)))
                                                      (let ((_hd57225772_
                                                             (##car _e57215768_))
                                                            (_tl57235775_
                                                             (##cdr _e57215768_)))
                                                        (if (gx#stx-pair?
                                                             _tl57235775_)
                                                            (let ((_e57245778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl57235775_)))
                      (let ((_hd57255782_ (##car _e57245778_))
                            (_tl57265785_ (##cdr _e57245778_)))
                        (if (gx#stx-pair? _tl57265785_)
                            (let ((_e57275788_ (gx#syntax-e _tl57265785_)))
                              (let ((_hd57285792_ (##car _e57275788_))
                                    (_tl57295795_ (##cdr _e57275788_)))
                                (if (gx#stx-pair? _tl57295795_)
                                    (let ((_e57305798_
                                           (gx#syntax-e _tl57295795_)))
                                      (let ((_hd57315802_ (##car _e57305798_))
                                            (_tl57325805_ (##cdr _e57305798_)))
                                        (if (gx#stx-pair? _tl57325805_)
                                            (let ((_e57335808_
                                                   (gx#syntax-e _tl57325805_)))
                                              (let ((_hd57345812_
                                                     (##car _e57335808_))
                                                    (_tl57355815_
                                                     (##cdr _e57335808_)))
                                                (if (gx#stx-null? _tl57355815_)
                                                    ((lambda (_L5818_
                                                              _L5820_
                                                              _L5821_
                                                              _L5822_
                                                              _L5823_
                                                              _L5824_
                                                              _L5825_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _L5822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'hash-ref)
                                                     (cons _L5825_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L5824_ '()))
                         (cons _L5818_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'let-values)
                                         (cons (cons (cons (cons _L5823_ '())
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'if)
                               (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons _L5822_ (cons _L5818_ '())))
                                     (cons _L5821_ (cons _L5822_ '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L5820_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd57345812_
                                                     _hd57315802_
                                                     _hd57285792_
                                                     _hd57255782_
                                                     _hd57225772_
                                                     _hd57195762_
                                                     _hd57165752_)
                                                    (_g57065741_
                                                     _g57075745_))))
                                            (_g57065741_ _g57075745_))))
                                    (_g57065741_ _g57075745_))))
                            (_g57065741_ _g57075745_))))
                    (_g57065741_ _g57075745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g57065741_
                                                     _g57075745_))))
                                            (_g57065741_ _g57075745_))))
                                    (_g57065741_ _g57075745_)))))
                         (_g57055862_
                          (list _kwvar5513_
                                _key5695_
                                _var5698_
                                (gx#genident _var5698_)
                                _default5701_
                                (_make-body5521_ _rest5692_ _body5687_)
                                _absent5519_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons 'begin _body5687_)))))
                                   (let ((_g55235531_
                                          (lambda (_g55245527_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g55245527_))))
                                     (let ((_g55225681_
                                            (lambda (_g55245535_)
                                              ((lambda (_L5538_)
                                                 (let ()
                                                   (let ((_g55515559_
                                                          (lambda (_g55525555_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g55525555_))))
                                                     (let ((_g55505677_
                                                            (lambda (_g55525563_)
                                                              ((lambda (_L5566_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g55795587_
                                  (lambda (_g55805583_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g55805583_))))
                             (let ((_g55785673_
                                    (lambda (_g55805591_)
                                      ((lambda (_L5594_)
                                         (let ()
                                           (let ((_g56075615_
                                                  (lambda (_g56085611_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g56085611_))))
                                             (let ((_g56065669_
                                                    (lambda (_g56085619_)
                                                      ((lambda (_L5622_)
                                                         (let ()
                                                           (let ((_g56355643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g56365639_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g56365639_))))
                     (let ((_g56345665_
                            (lambda (_g56365647_)
                              ((lambda (_L5650_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons (cons _L5650_ '())
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-vector)
                                 (cons '0 '()))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L5622_ '()))))))
                               _g56365647_))))
                       (_g56345665_ _absent5519_)))))
               _g56085619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g56065669_
                                                (gx#stx-wrap-source
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons _L5538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5566_)
                     (cons _L5594_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source
                                                  _stx4861_)))))))
                                       _g55805591_))))
                               (_g55785673_
                                (_make-body5521_ _kwargs5515_ _body5517_))))))
                       _g55525563_))))
               (_g55505677_ _args5516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g55245535_))))
                                       (_g55225681_ _kwvar5513_))))))))
                        (let ((_generate-kw-table4878_
                               (lambda (_kws5400_)
                                 ((letrec ((_rehash5403_
                                            (lambda (_pht5406_)
                                              ((letrec ((_lp5409_
                                                         (lambda (_rest5412_)
                                                           (if (pair? _rest5412_)
                                                               (let ((_key5415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _rest5412_)))
                         (let ((_rest5418_ (cdr _rest5412_)))
                           (let ((_pos5421_
                                  (fxmodulo
                                   (keyword-hash _key5415_)
                                   (vector-length _pht5406_))))
                             (let ()
                               (if (vector-ref _pht5406_ _pos5421_)
                                   (if (fx< (vector-length _pht5406_) '8192)
                                       (_rehash5403_
                                        (make-vector
                                         (fx1+ (* '2
                                                  (vector-length _pht5406_)))
                                         '#f))
                                       (error '"Unresolvable keyword collision"
                                              _kws5400_))
                                   (begin
                                     (vector-set!
                                      _pht5406_
                                      _pos5421_
                                      _key5415_)
                                     (_lp5409_ _rest5418_)))))))
                       _pht5406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _lp5409_)
                                               _kws5400_))))
                                    _rehash5403_)
                                  (make-vector (length _kws5400_) '#f)))))
                          (let ((_opt-lambda-split4867_
                                 (lambda (_hd7718_)
                                   ((letrec ((_lp7721_
                                              (lambda (_rest7724_
                                                       _pre7726_
                                                       _opt7727_)
                                                (let ((_g77307742_
                                                       (lambda (_g77317738_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g77317738_))))
                                                  (let ((_g77297753_
                                                         (lambda (_g77317746_)
                                                           ((lambda ()
                                                              (values (reverse _pre7726_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _opt7727_)
                              (if (gx#identifier? _rest7724_)
                                  (_generate-bind4870_ _rest7724_)
                                  _rest7724_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g77287862_
                                                           (lambda (_g77317757_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g77317757_)
                         (let ((_e77347760_ (gx#syntax-e _g77317757_)))
                           (let ((_hd77357764_ (##car _e77347760_))
                                 (_tl77367767_ (##cdr _e77347760_)))
                             ((lambda (_L7770_ _L7772_)
                                (let ((_g77887803_
                                       (lambda (_g77897799_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g77897799_))))
                                  (let ((_g77877814_
                                         (lambda (_g77897807_)
                                           ((lambda ()
                                              (_lp7721_
                                               _L7770_
                                               (cons (_generate-bind4870_
                                                      _L7772_)
                                                     _pre7726_)
                                               _opt7727_))))))
                                    (let ((_g77867858_
                                           (lambda (_g77897818_)
                                             (if (gx#stx-pair? _g77897818_)
                                                 (let ((_e77927821_
                                                        (gx#syntax-e
                                                         _g77897818_)))
                                                   (let ((_hd77937825_
                                                          (##car _e77927821_))
                                                         (_tl77947828_
                                                          (##cdr _e77927821_)))
                                                     (if (gx#stx-pair?
                                                          _tl77947828_)
                                                         (let ((_e77957831_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77947828_)))
                   (let ((_hd77967835_ (##car _e77957831_))
                         (_tl77977838_ (##cdr _e77957831_)))
                     (if (gx#stx-null? _tl77977838_)
                         ((lambda (_L7841_ _L7843_)
                            (_lp7721_
                             _L7770_
                             _pre7726_
                             (cons (cons (_generate-bind4870_ _L7843_) _L7841_)
                                   _opt7727_)))
                          _hd77967835_
                          _hd77937825_)
                         (_g77877814_ _g77897818_))))
                 (_g77877814_ _g77897818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g77877814_ _g77897818_)))))
                                      (_g77867858_ _L7772_)))))
                              _tl77367767_
                              _hd77357764_)))
                         (_g77297753_ _g77317757_)))))
              (_g77287862_ _rest7724_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp7721_)
                                    _hd7718_
                                    '()
                                    '()))))
                            (let ((_kw-lambda-split4869_
                                   (lambda (_hd7131_)
                                     ((letrec ((_lp7134_
                                                (lambda (_rest7137_
                                                         _kwvar7139_
                                                         _kwargs7140_
                                                         _args7141_)
                                                  (let ((_g71467175_
                                                         (lambda (_g71477171_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g71477171_))))
                                                    (let ((_g71457186_
                                                           (lambda (_g71477179_)
                                                             ((lambda ()
                                                                (values _kwvar7139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse _kwargs7140_)
                                (foldl cons _rest7137_ _args7141_)))))))
              (let ((_g71447220_
                     (lambda (_g71477190_)
                       (if (gx#stx-pair? _g71477190_)
                           (let ((_e71677193_ (gx#syntax-e _g71477190_)))
                             (let ((_hd71687197_ (##car _e71677193_))
                                   (_tl71697200_ (##cdr _e71677193_)))
                               ((lambda (_L7203_ _L7205_)
                                  (_lp7134_
                                   _L7203_
                                   _kwvar7139_
                                   _kwargs7140_
                                   (cons _L7205_ _args7141_)))
                                _tl71697200_
                                _hd71687197_)))
                           (_g71457186_ _g71477190_)))))
                (let ((_g71437262_
                       (lambda (_g71477224_)
                         (if (gx#stx-pair? _g71477224_)
                             (let ((_e71597227_ (gx#syntax-e _g71477224_)))
                               (let ((_hd71607231_ (##car _e71597227_))
                                     (_tl71617234_ (##cdr _e71597227_)))
                                 (if (gx#stx-datum? _hd71607231_)
                                     (if (equal? (gx#stx-e _hd71607231_)
                                                 '#!key)
                                         (if (gx#stx-pair? _tl71617234_)
                                             (let ((_e71627237_
                                                    (gx#syntax-e
                                                     _tl71617234_)))
                                               (let ((_hd71637241_
                                                      (##car _e71627237_))
                                                     (_tl71647244_
                                                      (##cdr _e71627237_)))
                                                 ((lambda (_L7247_ _L7249_)
                                                    (if _kwvar7139_
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; duplicate #!key argument"
                                                         _stx4861_
                                                         _hd7131_
                                                         _L7249_)
                                                        (_lp7134_
                                                         _L7247_
                                                         (_generate-bind4870_
                                                          _L7249_)
                                                         _kwargs7140_
                                                         _args7141_)))
                                                  _tl71647244_
                                                  _hd71637241_)))
                                             (_g71447220_ _g71477224_))
                                         (_g71447220_ _g71477224_))
                                     (_g71447220_ _g71477224_))))
                             (_g71447220_ _g71477224_)))))
                  (let ((_g71427388_
                         (lambda (_g71477266_)
                           (if (gx#stx-pair? _g71477266_)
                               (let ((_e71517269_ (gx#syntax-e _g71477266_)))
                                 (let ((_hd71527273_ (##car _e71517269_))
                                       (_tl71537276_ (##cdr _e71517269_)))
                                   (if (gx#stx-pair? _tl71537276_)
                                       (let ((_e71547279_
                                              (gx#syntax-e _tl71537276_)))
                                         (let ((_hd71557283_
                                                (##car _e71547279_))
                                               (_tl71567286_
                                                (##cdr _e71547279_)))
                                           ((lambda (_L7289_ _L7291_ _L7292_)
                                              (if (gx#stx-keyword? _L7292_)
                                                  (let ((_key7306_
                                                         (gx#stx-e _L7292_)))
                                                    (if (find (lambda (_kwarg7309_)
                                                                (eq? _key7306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _kwarg7309_)))
                      _kwargs7140_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; duplicate keyword argument"
                 _stx4861_
                 _hd7131_
                 _key7306_)
                (let ((_g73137328_
                       (lambda (_g73147324_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g73147324_))))
                  (let ((_g73127339_
                         (lambda (_g73147332_)
                           ((lambda ()
                              (_lp7134_
                               _L7289_
                               _kwvar7139_
                               (cons (list _key7306_
                                           (_generate-bind4870_ _L7291_)
                                           (cons (gx#datum->syntax '#f 'error)
                                                 (cons '"Missing required keyword argument"
                                                       (cons _L7292_ '()))))
                                     _kwargs7140_)
                               _args7141_))))))
                    (let ((_g73117384_
                           (lambda (_g73147343_)
                             (if (gx#stx-pair? _g73147343_)
                                 (let ((_e73177346_ (gx#syntax-e _g73147343_)))
                                   (let ((_hd73187350_ (##car _e73177346_))
                                         (_tl73197353_ (##cdr _e73177346_)))
                                     (if (gx#stx-pair? _tl73197353_)
                                         (let ((_e73207356_
                                                (gx#syntax-e _tl73197353_)))
                                           (let ((_hd73217360_
                                                  (##car _e73207356_))
                                                 (_tl73227363_
                                                  (##cdr _e73207356_)))
                                             (if (gx#stx-null? _tl73227363_)
                                                 ((lambda (_L7366_ _L7368_)
                                                    (_lp7134_
                                                     _L7289_
                                                     _kwvar7139_
                                                     (cons (list _key7306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_generate-bind4870_ _L7368_)
                         _L7366_)
                   _kwargs7140_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _args7141_))
                                                  _hd73217360_
                                                  _hd73187350_)
                                                 (_g73127339_ _g73147343_))))
                                         (_g73127339_ _g73147343_))))
                                 (_g73127339_ _g73147343_)))))
                      (_g73117384_ _L7291_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g71437262_ _g71477266_)))
                                            _tl71567286_
                                            _hd71557283_
                                            _hd71527273_)))
                                       (_g71437262_ _g71477266_))))
                               (_g71437262_ _g71477266_)))))
                    (_g71427388_ _rest7137_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp7134_)
                                      _hd7131_
                                      '#f
                                      '()
                                      '()))))
                              (let ((_generate-opt-dispatch*4874_
                                     (lambda (_primary6168_
                                              _pre6170_
                                              _opt6171_
                                              _tail6172_)
                                       ((letrec ((_recur6174_
                                                  (lambda (_opt-rest6177_
                                                           _right6179_)
                                                    (if (pair? _opt-rest6177_)
                                                        (let ((_hd6181_
                                                               (caar _opt-rest6177_)))
                                                          (let ((_rest6184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cdr _opt-rest6177_)))
                    (let ((_right*6187_ (cons _hd6181_ _right6179_)))
                      (let ((_g61906207_
                             (lambda (_g61916203_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g61916203_))))
                        (let ((_g61896390_
                               (lambda (_g61916211_)
                                 (if (gx#stx-pair/null? _g61916211_)
                                     (if (fx>= (gx#stx-length _g61916211_) '0)
                                         (let ((_g29418_
                                                (gx#syntax-split-splice
                                                 _g61916211_
                                                 '0)))
                                           (begin
                                             (let ((_g29419_
                                                    (values-count _g29418_)))
                                               (if (not (fx= _g29419_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29419_)))
                                             (let ((_target61936214_
                                                    (values-ref _g29418_ 0))
                                                   (_tl61956217_
                                                    (values-ref _g29418_ 1)))
                                               (if (gx#stx-null? _tl61956217_)
                                                   (letrec ((_loop61966220_
                                                             (lambda (_hd61946224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pre-bind62006227_)
                       (if (gx#stx-pair? _hd61946224_)
                           (let ((_e61976230_ (gx#syntax-e _hd61946224_)))
                             (let ((_lp-hd61986234_ (##car _e61976230_))
                                   (_lp-tl61996237_ (##cdr _e61976230_)))
                               (_loop61966220_
                                _lp-tl61996237_
                                (cons _lp-hd61986234_ _pre-bind62006227_))))
                           (let ((_pre-bind62016240_
                                  (reverse _pre-bind62006227_)))
                             ((lambda (_L6244_)
                                (let ()
                                  (let ((_g62656282_
                                         (lambda (_g62666278_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g62666278_))))
                                    (let ((_g62646386_
                                           (lambda (_g62666286_)
                                             (if (gx#stx-pair/null?
                                                  _g62666286_)
                                                 (if (fx>= (gx#stx-length
                                                            _g62666286_)
                                                           '0)
                                                     (let ((_g29420_
                                                            (gx#syntax-split-splice
                                                             _g62666286_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29421_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29420_)))
                   (if (not (fx= _g29421_ 2))
                       (error "Context expects 2 values" _g29421_)))
                 (let ((_target62686289_ (values-ref _g29420_ 0))
                       (_tl62706292_ (values-ref _g29420_ 1)))
                   (if (gx#stx-null? _tl62706292_)
                       (letrec ((_loop62716295_
                                 (lambda (_hd62696299_ _opt-bind62756302_)
                                   (if (gx#stx-pair? _hd62696299_)
                                       (let ((_e62726305_
                                              (gx#syntax-e _hd62696299_)))
                                         (let ((_lp-hd62736309_
                                                (##car _e62726305_))
                                               (_lp-tl62746312_
                                                (##cdr _e62726305_)))
                                           (_loop62716295_
                                            _lp-tl62746312_
                                            (cons _lp-hd62736309_
                                                  _opt-bind62756302_))))
                                       (let ((_opt-bind62766315_
                                              (reverse _opt-bind62756302_)))
                                         ((lambda (_L6319_)
                                            (let ()
                                              (let ((_g63366344_
                                                     (lambda (_g63376340_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g63376340_))))
                                                (let ((_g63356382_
                                                       (lambda (_g63376348_)
                                                         ((lambda (_L6351_)
                                                            (let ()
                                                              (let ()
                                                                (cons (list (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr (lambda (_g63656370_ _g63666373_)
                                               (cons _g63656370_ _g63666373_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g63676376_
                                                               _g63686379_)
                                                        (cons _g63676376_
                                                              _g63686379_))
                                                      (cons _L6351_ '())
                                                      _L6319_))
                                             _L6244_))
                                    (_generate-opt-clause4875_
                                     _primary6168_
                                     (foldr cons
                                            (reverse _right*6187_)
                                            _pre6170_)
                                     _rest6184_))
                              (_recur6174_ _rest6184_ _right*6187_)))))
                  _g63376348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63356382_ _hd6181_)))))
                                          _opt-bind62766315_))))))
                         (_loop62716295_ _target62686289_ '()))
                       (_g62656282_ _g62666286_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g62656282_ _g62666286_))
                                                 (_g62656282_ _g62666286_)))))
                                      (_g62646386_ (reverse _right6179_))))))
                              _pre-bind62016240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop61966220_
                                                      _target61936214_
                                                      '()))
                                                   (_g61906207_
                                                    _g61916211_)))))
                                         (_g61906207_ _g61916211_))
                                     (_g61906207_ _g61916211_)))))
                          (_g61896390_ _pre6170_))))))
                (if (gx#stx-null? _tail6172_)
                    '()
                    (let ((_g63946435_
                           (lambda (_g63956431_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g63956431_))))
                      (let ((_g63936607_
                             (lambda (_g63956439_)
                               (if (gx#stx-pair? _g63956439_)
                                   (let ((_e64006442_
                                          (gx#syntax-e _g63956439_)))
                                     (let ((_hd64016446_ (##car _e64006442_))
                                           (_tl64026449_ (##cdr _e64006442_)))
                                       (if (gx#stx-pair/null? _hd64016446_)
                                           (if (fx>= (gx#stx-length
                                                      _hd64016446_)
                                                     '0)
                                               (let ((_g29422_
                                                      (gx#syntax-split-splice
                                                       _hd64016446_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29423_
                                                          (values-count
                                                           _g29422_)))
                                                     (if (not (fx= _g29423_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29423_)))
                                                   (let ((_target64036452_
                                                          (values-ref
                                                           _g29422_
                                                           0))
                                                         (_tl64056455_
                                                          (values-ref
                                                           _g29422_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl64056455_)
                                                         (letrec ((_loop64066458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd64046462_ _pre64106465_)
                             (if (gx#stx-pair? _hd64046462_)
                                 (let ((_e64076468_
                                        (gx#syntax-e _hd64046462_)))
                                   (let ((_lp-hd64086472_ (##car _e64076468_))
                                         (_lp-tl64096475_ (##cdr _e64076468_)))
                                     (_loop64066458_
                                      _lp-tl64096475_
                                      (cons _lp-hd64086472_ _pre64106465_))))
                                 (let ((_pre64116478_ (reverse _pre64106465_)))
                                   (if (gx#stx-pair? _tl64026449_)
                                       (let ((_e64126482_
                                              (gx#syntax-e _tl64026449_)))
                                         (let ((_hd64136486_
                                                (##car _e64126482_))
                                               (_tl64146489_
                                                (##cdr _e64126482_)))
                                           (if (gx#stx-pair/null? _hd64136486_)
                                               (if (fx>= (gx#stx-length
                                                          _hd64136486_)
                                                         '0)
                                                   (let ((_g29424_
                                                          (gx#syntax-split-splice
                                                           _hd64136486_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29425_
                                                              (values-count
                                                               _g29424_)))
                                                         (if (not (fx= _g29425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29425_)))
               (let ((_target64156492_ (values-ref _g29424_ 0))
                     (_tl64176495_ (values-ref _g29424_ 1)))
                 (if (gx#stx-null? _tl64176495_)
                     (letrec ((_loop64186498_
                               (lambda (_hd64166502_ _opt64226505_)
                                 (if (gx#stx-pair? _hd64166502_)
                                     (let ((_e64196508_
                                            (gx#syntax-e _hd64166502_)))
                                       (let ((_lp-hd64206512_
                                              (##car _e64196508_))
                                             (_lp-tl64216515_
                                              (##cdr _e64196508_)))
                                         (_loop64186498_
                                          _lp-tl64216515_
                                          (cons _lp-hd64206512_
                                                _opt64226505_))))
                                     (let ((_opt64236518_
                                            (reverse _opt64226505_)))
                                       (if (gx#stx-pair? _tl64146489_)
                                           (let ((_e64246522_
                                                  (gx#syntax-e _tl64146489_)))
                                             (let ((_hd64256526_
                                                    (##car _e64246522_))
                                                   (_tl64266529_
                                                    (##cdr _e64246522_)))
                                               (if (gx#stx-pair? _tl64266529_)
                                                   (let ((_e64276532_
                                                          (gx#syntax-e
                                                           _tl64266529_)))
                                                     (let ((_hd64286536_
                                                            (##car _e64276532_))
                                                           (_tl64296539_
                                                            (##cdr _e64276532_)))
                                                       (if (gx#stx-null?
                                                            _tl64296539_)
                                                           ((lambda (_L6542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6544_
                             _L6545_
                             _L6546_)
                      (let ()
                        (list (list (begin
                                      '#!void
                                      (foldr (lambda (_g65746579_ _g65756582_)
                                               (cons _g65746579_ _g65756582_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g65766585_
                                                               _g65776588_)
                                                        (cons _g65766585_
                                                              _g65776588_))
                                                      _L6544_
                                                      _L6545_))
                                             _L6546_))
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'apply)
                                           (cons _L6542_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g65906595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g65916598_)
                    (cons _g65906595_ _g65916598_))
                  (begin
                    '#!void
                    (foldr (lambda (_g65926601_ _g65936604_)
                             (cons _g65926601_ _g65936604_))
                           (cons _L6544_ '())
                           _L6545_))
                  _L6546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _stx4861_))))))
                    _hd64286536_
                    _hd64256526_
                    _opt64236518_
                    _pre64116478_)
                   (_g63946435_ _g63956439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63946435_ _g63956439_))))
                                           (_g63946435_ _g63956439_)))))))
                       (_loop64186498_ _target64156492_ '()))
                     (_g63946435_ _g63956439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63946435_ _g63956439_))
                                               (_g63946435_ _g63956439_))))
                                       (_g63946435_ _g63956439_)))))))
                   (_loop64066458_ _target64036452_ '()))
                 (_g63946435_ _g63956439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g63946435_ _g63956439_))
                                           (_g63946435_ _g63956439_))))
                                   (_g63946435_ _g63956439_)))))
                        (_g63936607_
                         (list _pre6170_
                               (reverse _right6179_)
                               _tail6172_
                               _primary6168_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _recur6174_)
                                        _opt6171_
                                        '()))))
                                (let ((_generate-kw-dispatch4877_
                                       (lambda (_primary5426_
                                                _kwargs5428_
                                                _strict?5429_)
                                         (let ((_g54315450_
                                                (lambda (_g54325446_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g54325446_))))
                                           (let ((_g54305509_
                                                  (lambda (_g54325454_)
                                                    (if (gx#stx-pair?
                                                         _g54325454_)
                                                        (let ((_e54365457_
                                                               (gx#syntax-e
                                                                _g54325454_)))
                                                          (let ((_hd54375461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e54365457_))
                        (_tl54385464_ (##cdr _e54365457_)))
                    (if (gx#stx-pair? _tl54385464_)
                        (let ((_e54395467_ (gx#syntax-e _tl54385464_)))
                          (let ((_hd54405471_ (##car _e54395467_))
                                (_tl54415474_ (##cdr _e54395467_)))
                            (if (gx#stx-pair? _tl54415474_)
                                (let ((_e54425477_ (gx#syntax-e _tl54415474_)))
                                  (let ((_hd54435481_ (##car _e54425477_))
                                        (_tl54445484_ (##cdr _e54425477_)))
                                    (if (gx#stx-null? _tl54445484_)
                                        ((lambda (_L5487_ _L5489_ _L5490_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda%)
                                                   (cons _L5487_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'apply)
                             (cons (gx#datum->syntax '#f 'keyword-dispatch)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L5490_ '()))
                                         (cons _L5489_ (cons _L5487_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd54435481_
                                         _hd54405471_
                                         _hd54375461_)
                                        (_g54315450_ _g54325454_))))
                                (_g54315450_ _g54325454_))))
                        (_g54315450_ _g54325454_))))
                (_g54315450_ _g54325454_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g54305509_
                                              (list (if _strict?5429_
                                                        (_generate-kw-table4878_
                                                         (map car
                                                              _kwargs5428_))
                                                        '#f)
                                                    _primary5426_
                                                    (gx#genident 'args))))))))
                                  (let ((_generate-opt-dispatch4873_
                                         (lambda (_primary6611_
                                                  _pre6613_
                                                  _opt6614_
                                                  _tail6615_)
                                           (cons (list _pre6613_
                                                       (_generate-opt-clause4875_
                                                        _primary6611_
                                                        _pre6613_
                                                        _opt6614_))
                                                 (_generate-opt-dispatch*4874_
                                                  _primary6611_
                                                  _pre6613_
                                                  _opt6614_
                                                  _tail6615_)))))
                                    (let ((_g48824913_
                                           (lambda (_g48834909_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g48834909_))))
                                      (let ((_g48815126_
                                             (lambda (_g48834917_)
                                               (if (gx#stx-pair? _g48834917_)
                                                   (let ((_e49024920_
                                                          (gx#syntax-e
                                                           _g48834917_)))
                                                     (let ((_hd49034924_
                                                            (##car _e49024920_))
                                                           (_tl49044927_
                                                            (##cdr _e49024920_)))
                                                       (if (gx#stx-pair?
                                                            _tl49044927_)
                                                           (let ((_e49054930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl49044927_)))
                     (let ((_hd49064934_ (##car _e49054930_))
                           (_tl49074937_ (##cdr _e49054930_)))
                       ((lambda (_L4940_ _L4942_)
                          (if (_kw-lambda?4868_ _L4942_)
                              (let ((_g49584965_
                                     (lambda (_g49594961_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g49594961_))))
                                (let ((_g49575122_
                                       (lambda (_g49594969_)
                                         ((lambda ()
                                            (let ()
                                              (let ((_g29412_
                                                     (_kw-lambda-split4869_
                                                      _L4942_)))
                                                (begin
                                                  (let ((_g29413_
                                                         (values-count
                                                          _g29412_)))
                                                    (if (not (fx= _g29413_ 3))
                                                        (error "Context expects 3 values"
                                                               _g29413_)))
                                                  (let ((_key4978_
                                                         (values-ref
                                                          _g29412_
                                                          0))
                                                        (_kwargs4980_
                                                         (values-ref
                                                          _g29412_
                                                          1))
                                                        (_args4981_
                                                         (values-ref
                                                          _g29412_
                                                          2)))
                                                    (let ((_g49834991_
                                                           (lambda (_g49844987_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g49844987_))))
                                                      (let ((_g49825114_
                                                             (lambda (_g49844995_)
                                                               ((lambda (_L4998_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g50165024_
                                   (lambda (_g50175020_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g50175020_))))
                              (let ((_g50155110_
                                     (lambda (_g50175028_)
                                       ((lambda (_L5031_)
                                          (let ()
                                            (let ((_g50445052_
                                                   (lambda (_g50455048_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g50455048_))))
                                              (let ((_g50435106_
                                                     (lambda (_g50455056_)
                                                       ((lambda (_L5059_)
                                                          (let ()
                                                            (let ((_g50725080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g50735076_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g50735076_))))
                      (let ((_g50715102_
                             (lambda (_g50735084_)
                               ((lambda (_L5087_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (cons _L5031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _L5059_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L5087_ '()))))))
                                _g50735084_))))
                        (_g50715102_
                         (gx#stx-wrap-source
                          (_generate-kw-dispatch4877_
                           _L5031_
                           _kwargs4980_
                           (not _key4978_))
                          (gx#stx-source _stx4861_)))))))
                _g50455056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g50435106_
                                                 (gx#stx-wrap-source
                                                  (_generate-kw-primary4876_
                                                   _L4998_
                                                   _kwargs4980_
                                                   _args4981_
                                                   _L4940_)
                                                  (gx#stx-source
                                                   _stx4861_)))))))
                                        _g50175028_))))
                                (_g50155110_ (gx#genident 'kw-lambda))))))
                        _g49844995_))))
                (_g49825114_
                 (let ((_$e5118_ _key4978_))
                   (if _$e5118_ _$e5118_ (gx#genident 'key)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g49575122_
                                   (_check-duplicate-bindings4871_ _L4942_))))
                              (_g48824913_ _g48834917_)))
                        _tl49074937_
                        _hd49064934_)))
                   (_g48824913_ _g48834917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g48824913_
                                                    _g48834917_)))))
                                        (let ((_g48805354_
                                               (lambda (_g48835130_)
                                                 (if (gx#stx-pair? _g48835130_)
                                                     (let ((_e48945133_
                                                            (gx#syntax-e
                                                             _g48835130_)))
                                                       (let ((_hd48955137_
                                                              (##car _e48945133_))
                                                             (_tl48965140_
                                                              (##cdr _e48945133_)))
                                                         (if (gx#stx-pair?
                                                              _tl48965140_)
                                                             (let ((_e48975143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl48965140_)))
                       (let ((_hd48985147_ (##car _e48975143_))
                             (_tl48995150_ (##cdr _e48975143_)))
                         ((lambda (_L5153_ _L5155_)
                            (if (_opt-lambda?4866_ _L5155_)
                                (let ((_g29414_
                                       (_opt-lambda-split4867_ _L5155_)))
                                  (begin
                                    (let ((_g29415_ (values-count _g29414_)))
                                      (if (not (fx= _g29415_ 3))
                                          (error "Context expects 3 values"
                                                 _g29415_)))
                                    (let ((_pre5168_ (values-ref _g29414_ 0))
                                          (_opt5170_ (values-ref _g29414_ 1))
                                          (_tail5171_ (values-ref _g29414_ 2)))
                                      (let ((_g51735181_
                                             (lambda (_g51745177_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g51745177_))))
                                        (let ((_g51725350_
                                               (lambda (_g51745185_)
                                                 ((lambda (_L5188_)
                                                    (let ()
                                                      (let ((_g52015209_
                                                             (lambda (_g52025205_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g52025205_))))
                                                        (let ((_g52005346_
                                                               (lambda (_g52025213_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L5216_)
                            (let ()
                              (let ((_g52295246_
                                     (lambda (_g52305242_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g52305242_))))
                                (let ((_g52285342_
                                       (lambda (_g52305250_)
                                         (if (gx#stx-pair/null? _g52305250_)
                                             (if (fx>= (gx#stx-length
                                                        _g52305250_)
                                                       '0)
                                                 (let ((_g29416_
                                                        (gx#syntax-split-splice
                                                         _g52305250_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29417_
                                                            (values-count
                                                             _g29416_)))
                                                       (if (not (fx= _g29417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29417_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target52325253_
                                                            (values-ref
                                                             _g29416_
                                                             0))
                                                           (_tl52345256_
                                                            (values-ref
                                                             _g29416_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl52345256_)
                                                           (letrec ((_loop52355259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd52335263_ _clause52395266_)
                               (if (gx#stx-pair? _hd52335263_)
                                   (let ((_e52365269_
                                          (gx#syntax-e _hd52335263_)))
                                     (let ((_lp-hd52375273_
                                            (##car _e52365269_))
                                           (_lp-tl52385276_
                                            (##cdr _e52365269_)))
                                       (_loop52355259_
                                        _lp-tl52385276_
                                        (cons _lp-hd52375273_
                                              _clause52395266_))))
                                   (let ((_clause52405279_
                                          (reverse _clause52395266_)))
                                     ((lambda (_L5283_)
                                        (let ()
                                          (let ((_g53005308_
                                                 (lambda (_g53015304_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g53015304_))))
                                            (let ((_g52995330_
                                                   (lambda (_g53015312_)
                                                     ((lambda (_L5315_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5188_ '())
                                            (cons _L5216_ '()))
                                      '())
                                (cons _L5315_ '()))))))
              _g53015312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g52995330_
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g53335336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g53345339_)
                         (cons _g53335336_ _g53345339_))
                       '()
                       _L5283_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx4861_)))))))
                                      _clause52405279_))))))
                     (_loop52355259_ _target52325253_ '()))
                   (_g52295246_ _g52305250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g52295246_ _g52305250_))
                                             (_g52295246_ _g52305250_)))))
                                  (_g52285342_
                                   (_generate-opt-dispatch4873_
                                    _L5188_
                                    _pre5168_
                                    _opt5170_
                                    _tail5171_))))))
                          _g52025213_))))
                  (_g52005346_
                   (gx#stx-wrap-source
                    (_generate-opt-primary4872_
                     _pre5168_
                     _opt5170_
                     _tail5171_
                     _L5153_)
                    (gx#stx-source _stx4861_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g51745185_))))
                                          (_g51725350_
                                           (gx#genident 'opt-lambda)))))))
                                (_g48815126_ _g48835130_)))
                          _tl48995150_
                          _hd48985147_)))
                     (_g48815126_ _g48835130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48815126_
                                                      _g48835130_)))))
                                          (let ((_g48795396_
                                                 (lambda (_g48835358_)
                                                   (if (gx#stx-pair?
                                                        _g48835358_)
                                                       (let ((_e48865361_
                                                              (gx#syntax-e
                                                               _g48835358_)))
                                                         (let ((_hd48875365_
                                                                (##car _e48865361_))
                                                               (_tl48885368_
                                                                (##cdr _e48865361_)))
                                                           (if (gx#stx-pair?
                                                                _tl48885368_)
                                                               (let ((_e48895371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl48885368_)))
                         (let ((_hd48905375_ (##car _e48895371_))
                               (_tl48915378_ (##cdr _e48895371_)))
                           ((lambda (_L5381_ _L5383_)
                              (if (_simple-lambda?4864_ _L5383_)
                                  (cons (gx#datum->syntax '#f 'lambda%)
                                        (cons _L5383_ _L5381_))
                                  (_g48805354_ _g48835358_)))
                            _tl48915378_
                            _hd48905375_)))
                       (_g48805354_ _g48835358_))))
               (_g48805354_ _g48835358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g48795396_
                                             _stx4861_)))))))))))))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def|
      (lambda (_$stx8028_)
        (let ((_g80338072_
               (lambda (_g80348068_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g80348068_))))
          (let ((_g80328127_
                 (lambda (_g80348076_)
                   (if (gx#stx-pair? _g80348076_)
                       (let ((_e80588079_ (gx#syntax-e _g80348076_)))
                         (let ((_hd80598083_ (##car _e80588079_))
                               (_tl80608086_ (##cdr _e80588079_)))
                           (if (gx#stx-pair? _tl80608086_)
                               (let ((_e80618089_ (gx#syntax-e _tl80608086_)))
                                 (let ((_hd80628093_ (##car _e80618089_))
                                       (_tl80638096_ (##cdr _e80618089_)))
                                   (if (gx#stx-pair? _tl80638096_)
                                       (let ((_e80648099_
                                              (gx#syntax-e _tl80638096_)))
                                         (let ((_hd80658103_
                                                (##car _e80648099_))
                                               (_tl80668106_
                                                (##cdr _e80648099_)))
                                           (if (gx#stx-null? _tl80668106_)
                                               ((lambda (_L8109_ _L8111_)
                                                  (if (gx#identifier? _L8111_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L8111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L8109_ '())))
              (_g80338072_ _g80348076_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd80658103_
                                                _hd80628093_)
                                               (_g80338072_ _g80348076_))))
                                       (_g80338072_ _g80348076_))))
                               (_g80338072_ _g80348076_))))
                       (_g80338072_ _g80348076_)))))
            (let ((_g80318225_
                   (lambda (_g80348131_)
                     (if (gx#stx-pair? _g80348131_)
                         (let ((_e80388134_ (gx#syntax-e _g80348131_)))
                           (let ((_hd80398138_ (##car _e80388134_))
                                 (_tl80408141_ (##cdr _e80388134_)))
                             (if (gx#stx-pair? _tl80408141_)
                                 (let ((_e80418144_
                                        (gx#syntax-e _tl80408141_)))
                                   (let ((_hd80428148_ (##car _e80418144_))
                                         (_tl80438151_ (##cdr _e80418144_)))
                                     (if (gx#stx-pair? _hd80428148_)
                                         (let ((_e80448154_
                                                (gx#syntax-e _hd80428148_)))
                                           (let ((_hd80458158_
                                                  (##car _e80448154_))
                                                 (_tl80468161_
                                                  (##cdr _e80448154_)))
                                             (if (gx#stx-pair/null?
                                                  _tl80438151_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl80438151_)
                                                           '0)
                                                     (let ((_g29434_
                                                            (gx#syntax-split-splice
                                                             _tl80438151_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29435_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29434_)))
                   (if (not (fx= _g29435_ 2))
                       (error "Context expects 2 values" _g29435_)))
                 (let ((_target80478164_ (values-ref _g29434_ 0))
                       (_tl80498167_ (values-ref _g29434_ 1)))
                   (if (gx#stx-null? _tl80498167_)
                       (letrec ((_loop80508170_
                                 (lambda (_hd80488174_ _body80548177_)
                                   (if (gx#stx-pair? _hd80488174_)
                                       (let ((_e80518180_
                                              (gx#syntax-e _hd80488174_)))
                                         (let ((_lp-hd80528184_
                                                (##car _e80518180_))
                                               (_lp-tl80538187_
                                                (##cdr _e80518180_)))
                                           (_loop80508170_
                                            _lp-tl80538187_
                                            (cons _lp-hd80528184_
                                                  _body80548177_))))
                                       (let ((_body80558190_
                                              (reverse _body80548177_)))
                                         ((lambda (_L8194_ _L8196_ _L8197_)
                                            (if (gx#identifier? _L8197_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L8197_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons _L8196_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g82168219_
                                                        _g82178222_)
                                                 (cons _g82168219_
                                                       _g82178222_))
                                               '()
                                               _L8194_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g80328127_ _g80348131_)))
                                          _body80558190_
                                          _tl80468161_
                                          _hd80458158_))))))
                         (_loop80508170_ _target80478164_ '()))
                       (_g80328127_ _g80348131_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80328127_ _g80348131_))
                                                 (_g80328127_ _g80348131_))))
                                         (_g80328127_ _g80348131_))))
                                 (_g80328127_ _g80348131_))))
                         (_g80328127_ _g80348131_)))))
              (_g80318225_ _$stx8028_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def*|
      (lambda (_$stx8230_)
        (let ((_g82348258_
               (lambda (_g82358254_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g82358254_))))
          (let ((_g82338343_
                 (lambda (_g82358262_)
                   (if (gx#stx-pair? _g82358262_)
                       (let ((_e82388265_ (gx#syntax-e _g82358262_)))
                         (let ((_hd82398269_ (##car _e82388265_))
                               (_tl82408272_ (##cdr _e82388265_)))
                           (if (gx#stx-pair? _tl82408272_)
                               (let ((_e82418275_ (gx#syntax-e _tl82408272_)))
                                 (let ((_hd82428279_ (##car _e82418275_))
                                       (_tl82438282_ (##cdr _e82418275_)))
                                   (if (gx#stx-pair/null? _tl82438282_)
                                       (if (fx>= (gx#stx-length _tl82438282_)
                                                 '0)
                                           (let ((_g29436_
                                                  (gx#syntax-split-splice
                                                   _tl82438282_
                                                   '0)))
                                             (begin
                                               (let ((_g29437_
                                                      (values-count _g29436_)))
                                                 (if (not (fx= _g29437_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29437_)))
                                               (let ((_target82448285_
                                                      (values-ref _g29436_ 0))
                                                     (_tl82468288_
                                                      (values-ref _g29436_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl82468288_)
                                                     (letrec ((_loop82478291_
                                                               (lambda (_hd82458295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses82518298_)
                         (if (gx#stx-pair? _hd82458295_)
                             (let ((_e82488301_ (gx#syntax-e _hd82458295_)))
                               (let ((_lp-hd82498305_ (##car _e82488301_))
                                     (_lp-tl82508308_ (##cdr _e82488301_)))
                                 (_loop82478291_
                                  _lp-tl82508308_
                                  (cons _lp-hd82498305_ _clauses82518298_))))
                             (let ((_clauses82528311_
                                    (reverse _clauses82518298_)))
                               ((lambda (_L8315_ _L8317_)
                                  (if (gx#identifier? _L8317_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'define-values)
                                            (cons (cons _L8317_ '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'case-lambda)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g83348337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g83358340_)
                                 (cons _g83348337_ _g83358340_))
                               '()
                               _L8315_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g82348258_ _g82358262_)))
                                _clauses82528311_
                                _hd82428279_))))))
               (_loop82478291_ _target82448285_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g82348258_
                                                      _g82358262_)))))
                                           (_g82348258_ _g82358262_))
                                       (_g82348258_ _g82358262_))))
                               (_g82348258_ _g82358262_))))
                       (_g82348258_ _g82358262_)))))
            (_g82338343_ _$stx8230_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8348_)
        (let ((_g83528370_
               (lambda (_g83538366_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g83538366_))))
          (let ((_g83518425_
                 (lambda (_g83538374_)
                   (if (gx#stx-pair? _g83538374_)
                       (let ((_e83568377_ (gx#syntax-e _g83538374_)))
                         (let ((_hd83578381_ (##car _e83568377_))
                               (_tl83588384_ (##cdr _e83568377_)))
                           (if (gx#stx-pair? _tl83588384_)
                               (let ((_e83598387_ (gx#syntax-e _tl83588384_)))
                                 (let ((_hd83608391_ (##car _e83598387_))
                                       (_tl83618394_ (##cdr _e83598387_)))
                                   (if (gx#stx-pair? _tl83618394_)
                                       (let ((_e83628397_
                                              (gx#syntax-e _tl83618394_)))
                                         (let ((_hd83638401_
                                                (##car _e83628397_))
                                               (_tl83648404_
                                                (##cdr _e83628397_)))
                                           (if (gx#stx-null? _tl83648404_)
                                               ((lambda (_L8407_ _L8409_)
                                                  (if (gx#identifier-list?
                                                       _L8409_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons _L8409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L8407_ '())))
              (_g83528370_ _g83538374_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd83638401_
                                                _hd83608391_)
                                               (_g83528370_ _g83538374_))))
                                       (_g83528370_ _g83538374_))))
                               (_g83528370_ _g83538374_))))
                       (_g83528370_ _g83538374_)))))
            (_g83518425_ _$stx8348_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#case|
      (lambda (_$stx8429_)
        (let ((_g84338457_
               (lambda (_g84348453_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g84348453_))))
          (let ((_g84328542_
                 (lambda (_g84348461_)
                   (if (gx#stx-pair? _g84348461_)
                       (let ((_e84378464_ (gx#syntax-e _g84348461_)))
                         (let ((_hd84388468_ (##car _e84378464_))
                               (_tl84398471_ (##cdr _e84378464_)))
                           (if (gx#stx-pair? _tl84398471_)
                               (let ((_e84408474_ (gx#syntax-e _tl84398471_)))
                                 (let ((_hd84418478_ (##car _e84408474_))
                                       (_tl84428481_ (##cdr _e84408474_)))
                                   (if (gx#stx-pair/null? _tl84428481_)
                                       (if (fx>= (gx#stx-length _tl84428481_)
                                                 '0)
                                           (let ((_g29438_
                                                  (gx#syntax-split-splice
                                                   _tl84428481_
                                                   '0)))
                                             (begin
                                               (let ((_g29439_
                                                      (values-count _g29438_)))
                                                 (if (not (fx= _g29439_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29439_)))
                                               (let ((_target84438484_
                                                      (values-ref _g29438_ 0))
                                                     (_tl84458487_
                                                      (values-ref _g29438_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl84458487_)
                                                     (letrec ((_loop84468490_
                                                               (lambda (_hd84448494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause84508497_)
                         (if (gx#stx-pair? _hd84448494_)
                             (let ((_e84478500_ (gx#syntax-e _hd84448494_)))
                               (let ((_lp-hd84488504_ (##car _e84478500_))
                                     (_lp-tl84498507_ (##cdr _e84478500_)))
                                 (_loop84468490_
                                  _lp-tl84498507_
                                  (cons _lp-hd84488504_ _clause84508497_))))
                             (let ((_clause84518510_
                                    (reverse _clause84508497_)))
                               ((lambda (_L8514_ _L8516_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$e)
                                                    (cons _L8516_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '~case)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e)
                        (begin
                          '#!void
                          (foldr (lambda (_g85338536_ _g85348539_)
                                   (cons _g85338536_ _g85348539_))
                                 '()
                                 _L8514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _clause84518510_
                                _hd84418478_))))))
               (_loop84468490_ _target84438484_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g84338457_
                                                      _g84348461_)))))
                                           (_g84338457_ _g84348461_))
                                       (_g84338457_ _g84348461_))))
                               (_g84338457_ _g84348461_))))
                       (_g84338457_ _g84348461_)))))
            (_g84328542_ _$stx8429_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case|
      (lambda (_$stx8547_)
        (let ((_g85558653_
               (lambda (_g85568649_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g85568649_))))
          (let ((_g85548768_
                 (lambda (_g85568657_)
                   (if (gx#stx-pair? _g85568657_)
                       (let ((_e86278660_ (gx#syntax-e _g85568657_)))
                         (let ((_hd86288664_ (##car _e86278660_))
                               (_tl86298667_ (##cdr _e86278660_)))
                           (if (gx#stx-pair? _tl86298667_)
                               (let ((_e86308670_ (gx#syntax-e _tl86298667_)))
                                 (let ((_hd86318674_ (##car _e86308670_))
                                       (_tl86328677_ (##cdr _e86308670_)))
                                   (if (gx#stx-pair? _tl86328677_)
                                       (let ((_e86338680_
                                              (gx#syntax-e _tl86328677_)))
                                         (let ((_hd86348684_
                                                (##car _e86338680_))
                                               (_tl86358687_
                                                (##cdr _e86338680_)))
                                           (if (gx#stx-pair? _hd86348684_)
                                               (let ((_e86368690_
                                                      (gx#syntax-e
                                                       _hd86348684_)))
                                                 (let ((_hd86378694_
                                                        (##car _e86368690_))
                                                       (_tl86388697_
                                                        (##cdr _e86368690_)))
                                                   (if (gx#stx-pair/null?
                                                        _tl86388697_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl86388697_)
                         '0)
                   (let ((_g29440_ (gx#syntax-split-splice _tl86388697_ '0)))
                     (begin
                       (let ((_g29441_ (values-count _g29440_)))
                         (if (not (fx= _g29441_ 2))
                             (error "Context expects 2 values" _g29441_)))
                       (let ((_target86398700_ (values-ref _g29440_ 0))
                             (_tl86418703_ (values-ref _g29440_ 1)))
                         (if (gx#stx-null? _tl86418703_)
                             (letrec ((_loop86428706_
                                       (lambda (_hd86408710_ _body86468713_)
                                         (if (gx#stx-pair? _hd86408710_)
                                             (let ((_e86438716_
                                                    (gx#syntax-e
                                                     _hd86408710_)))
                                               (let ((_lp-hd86448720_
                                                      (##car _e86438716_))
                                                     (_lp-tl86458723_
                                                      (##cdr _e86438716_)))
                                                 (_loop86428706_
                                                  _lp-tl86458723_
                                                  (cons _lp-hd86448720_
                                                        _body86468713_))))
                                             (let ((_body86478726_
                                                    (reverse _body86468713_)))
                                               ((lambda (_L8730_
                                                         _L8732_
                                                         _L8733_
                                                         _L8734_
                                                         _L8735_)
                                                  (if (gx#stx-list? _L8733_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '~case-test)
                                (cons _L8734_ (cons _L8733_ '())))
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g87598762_
                                                        _g87608765_)
                                                 (cons _g87598762_
                                                       _g87608765_))
                                               '()
                                               _L8732_)))
                                (cons (cons _L8735_ (cons _L8734_ _L8730_))
                                      '()))))
              (_g85558653_ _g85568657_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl86358687_
                                                _body86478726_
                                                _hd86378694_
                                                _hd86318674_
                                                _hd86288664_))))))
                               (_loop86428706_ _target86398700_ '()))
                             (_g85558653_ _g85568657_)))))
                   (_g85558653_ _g85568657_))
               (_g85558653_ _g85568657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g85558653_ _g85568657_))))
                                       (_g85558653_ _g85568657_))))
                               (_g85558653_ _g85568657_))))
                       (_g85558653_ _g85568657_)))))
            (let ((_g85538864_
                   (lambda (_g85568772_)
                     (if (gx#stx-pair? _g85568772_)
                         (let ((_e86048775_ (gx#syntax-e _g85568772_)))
                           (let ((_hd86058779_ (##car _e86048775_))
                                 (_tl86068782_ (##cdr _e86048775_)))
                             (if (gx#stx-pair? _tl86068782_)
                                 (let ((_e86078785_
                                        (gx#syntax-e _tl86068782_)))
                                   (let ((_hd86088789_ (##car _e86078785_))
                                         (_tl86098792_ (##cdr _e86078785_)))
                                     (if (gx#stx-pair? _tl86098792_)
                                         (let ((_e86108795_
                                                (gx#syntax-e _tl86098792_)))
                                           (let ((_hd86118799_
                                                  (##car _e86108795_))
                                                 (_tl86128802_
                                                  (##cdr _e86108795_)))
                                             (if (gx#stx-pair? _hd86118799_)
                                                 (let ((_e86138805_
                                                        (gx#syntax-e
                                                         _hd86118799_)))
                                                   (let ((_hd86148809_
                                                          (##car _e86138805_))
                                                         (_tl86158812_
                                                          (##cdr _e86138805_)))
                                                     (if (gx#stx-pair?
                                                          _tl86158812_)
                                                         (let ((_e86168815_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl86158812_)))
                   (let ((_hd86178819_ (##car _e86168815_))
                         (_tl86188822_ (##cdr _e86168815_)))
                     (if (gx#identifier? _hd86178819_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<sugar>::<sugar:2>[1]#_g29442_|
                              _hd86178819_)
                             (if (gx#stx-pair? _tl86188822_)
                                 (let ((_e86198825_
                                        (gx#syntax-e _tl86188822_)))
                                   (let ((_hd86208829_ (##car _e86198825_))
                                         (_tl86218832_ (##cdr _e86198825_)))
                                     (if (gx#stx-null? _tl86218832_)
                                         ((lambda (_L8835_
                                                   _L8837_
                                                   _L8838_
                                                   _L8839_
                                                   _L8840_)
                                            (if (gx#stx-list? _L8838_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '~case-test)
                          (cons _L8839_ (cons _L8838_ '())))
                    (cons (cons _L8837_ (cons _L8839_ '()))
                          (cons (cons _L8840_ (cons _L8839_ _L8835_)) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g85548768_ _g85568772_)))
                                          _tl86128802_
                                          _hd86208829_
                                          _hd86148809_
                                          _hd86088789_
                                          _hd86058779_)
                                         (_g85548768_ _g85568772_))))
                                 (_g85548768_ _g85568772_))
                             (_g85548768_ _g85568772_))
                         (_g85548768_ _g85568772_))))
                 (_g85548768_ _g85568772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g85548768_ _g85568772_))))
                                         (_g85548768_ _g85568772_))))
                                 (_g85548768_ _g85568772_))))
                         (_g85548768_ _g85568772_)))))
              (let ((_g85528928_
                     (lambda (_g85568868_)
                       (if (gx#stx-pair? _g85568868_)
                           (let ((_e85878871_ (gx#syntax-e _g85568868_)))
                             (let ((_hd85888875_ (##car _e85878871_))
                                   (_tl85898878_ (##cdr _e85878871_)))
                               (if (gx#stx-pair? _tl85898878_)
                                   (let ((_e85908881_
                                          (gx#syntax-e _tl85898878_)))
                                     (let ((_hd85918885_ (##car _e85908881_))
                                           (_tl85928888_ (##cdr _e85908881_)))
                                       (if (gx#stx-pair? _tl85928888_)
                                           (let ((_e85938891_
                                                  (gx#syntax-e _tl85928888_)))
                                             (let ((_hd85948895_
                                                    (##car _e85938891_))
                                                   (_tl85958898_
                                                    (##cdr _e85938891_)))
                                               (if (gx#stx-pair? _hd85948895_)
                                                   (let ((_e85968901_
                                                          (gx#syntax-e
                                                           _hd85948895_)))
                                                     (let ((_hd85978905_
                                                            (##car _e85968901_))
                                                           (_tl85988908_
                                                            (##cdr _e85968901_)))
                                                       (if (gx#identifier?
                                                            _hd85978905_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g29443_|
                                                                _hd85978905_)
                                                               ((lambda (_L8911_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'syntax-error)
                                (cons '"Bad syntax; misplaced else" '())))
                        _hd85918885_)
                       (_g85538864_ _g85568868_))
                   (_g85538864_ _g85568868_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g85538864_ _g85568868_))))
                                           (_g85538864_ _g85568868_))))
                                   (_g85538864_ _g85568868_))))
                           (_g85538864_ _g85568868_)))))
                (let ((_g85519036_
                       (lambda (_g85568932_)
                         (if (gx#stx-pair? _g85568932_)
                             (let ((_e85658935_ (gx#syntax-e _g85568932_)))
                               (let ((_hd85668939_ (##car _e85658935_))
                                     (_tl85678942_ (##cdr _e85658935_)))
                                 (if (gx#stx-pair? _tl85678942_)
                                     (let ((_e85688945_
                                            (gx#syntax-e _tl85678942_)))
                                       (let ((_hd85698949_ (##car _e85688945_))
                                             (_tl85708952_
                                              (##cdr _e85688945_)))
                                         (if (gx#stx-pair? _tl85708952_)
                                             (let ((_e85718955_
                                                    (gx#syntax-e
                                                     _tl85708952_)))
                                               (let ((_hd85728959_
                                                      (##car _e85718955_))
                                                     (_tl85738962_
                                                      (##cdr _e85718955_)))
                                                 (if (gx#stx-pair?
                                                      _hd85728959_)
                                                     (let ((_e85748965_
                                                            (gx#syntax-e
                                                             _hd85728959_)))
                                                       (let ((_hd85758969_
                                                              (##car _e85748965_))
                                                             (_tl85768972_
                                                              (##cdr _e85748965_)))
                                                         (if (gx#identifier?
                                                              _hd85758969_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29444_|
                          _hd85758969_)
                         (if (gx#stx-pair/null? _tl85768972_)
                             (if (fx>= (gx#stx-length _tl85768972_) '0)
                                 (let ((_g29445_
                                        (gx#syntax-split-splice
                                         _tl85768972_
                                         '0)))
                                   (begin
                                     (let ((_g29446_ (values-count _g29445_)))
                                       (if (not (fx= _g29446_ 2))
                                           (error "Context expects 2 values"
                                                  _g29446_)))
                                     (let ((_target85778975_
                                            (values-ref _g29445_ 0))
                                           (_tl85798978_
                                            (values-ref _g29445_ 1)))
                                       (if (gx#stx-null? _tl85798978_)
                                           (letrec ((_loop85808981_
                                                     (lambda (_hd85788985_
                                                              _body85848988_)
                                                       (if (gx#stx-pair?
                                                            _hd85788985_)
                                                           (let ((_e85818991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd85788985_)))
                     (let ((_lp-hd85828995_ (##car _e85818991_))
                           (_lp-tl85838998_ (##cdr _e85818991_)))
                       (_loop85808981_
                        _lp-tl85838998_
                        (cons _lp-hd85828995_ _body85848988_))))
                   (let ((_body85859001_ (reverse _body85848988_)))
                     (if (gx#stx-null? _tl85738962_)
                         ((lambda (_L9005_ _L9007_)
                            (cons (gx#datum->syntax '#f 'begin)
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g90279030_ _g90289033_)
                                             (cons _g90279030_ _g90289033_))
                                           '()
                                           _L9005_))))
                          _body85859001_
                          _hd85698949_)
                         (_g85528928_ _g85568932_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop85808981_
                                              _target85778975_
                                              '()))
                                           (_g85528928_ _g85568932_)))))
                                 (_g85528928_ _g85568932_))
                             (_g85528928_ _g85568932_))
                         (_g85528928_ _g85568932_))
                     (_g85528928_ _g85568932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g85528928_
                                                      _g85568932_))))
                                             (_g85528928_ _g85568932_))))
                                     (_g85528928_ _g85568932_))))
                             (_g85528928_ _g85568932_)))))
                  (let ((_g85509067_
                         (lambda (_g85569040_)
                           (if (gx#stx-pair? _g85569040_)
                               (let ((_e85579043_ (gx#syntax-e _g85569040_)))
                                 (let ((_hd85589047_ (##car _e85579043_))
                                       (_tl85599050_ (##cdr _e85579043_)))
                                   (if (gx#stx-pair? _tl85599050_)
                                       (let ((_e85609053_
                                              (gx#syntax-e _tl85599050_)))
                                         (let ((_hd85619057_
                                                (##car _e85609053_))
                                               (_tl85629060_
                                                (##cdr _e85609053_)))
                                           (if (gx#stx-null? _tl85629060_)
                                               ((lambda () '#!void))
                                               (_g85519036_ _g85569040_))))
                                       (_g85519036_ _g85569040_))))
                               (_g85519036_ _g85569040_)))))
                    (_g85509067_ _$stx8547_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case-test|
      (lambda (_stx9073_)
        (let ((_memq-datum?9076_
               (lambda (_x9438_)
                 (let ((_e9441_ (gx#stx-e _x9438_)))
                   (let ((_$e9444_ (symbol? _e9441_)))
                     (if _$e9444_
                         _$e9444_
                         (let ((_$e9448_ (keyword? _e9441_)))
                           (if _$e9448_ _$e9448_ (immediate? _e9441_)))))))))
          (let ((_memv-datum?9078_
                 (lambda (_x9431_)
                   (let ((_$e9434_ (_memq-datum?9076_ _x9431_)))
                     (if _$e9434_ _$e9434_ (gx#stx-number? _x9431_))))))
            (let ((_g90829133_
                   (lambda (_g90839129_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g90839129_))))
              (let ((_g90819278_
                     (lambda (_g90839137_)
                       (if (gx#stx-pair? _g90839137_)
                           (let ((_e91109140_ (gx#syntax-e _g90839137_)))
                             (let ((_hd91119144_ (##car _e91109140_))
                                   (_tl91129147_ (##cdr _e91109140_)))
                               (if (gx#stx-pair? _tl91129147_)
                                   (let ((_e91139150_
                                          (gx#syntax-e _tl91129147_)))
                                     (let ((_hd91149154_ (##car _e91139150_))
                                           (_tl91159157_ (##cdr _e91139150_)))
                                       (if (gx#stx-pair? _tl91159157_)
                                           (let ((_e91169160_
                                                  (gx#syntax-e _tl91159157_)))
                                             (let ((_hd91179164_
                                                    (##car _e91169160_))
                                                   (_tl91189167_
                                                    (##cdr _e91169160_)))
                                               (if (gx#stx-pair/null?
                                                    _hd91179164_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd91179164_)
                                                             '0)
                                                       (let ((_g29447_
                                                              (gx#syntax-split-splice
                                                               _hd91179164_
                                                               '0)))
                                                         (begin
                                                           (let ((_g29448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g29447_)))
                     (if (not (fx= _g29448_ 2))
                         (error "Context expects 2 values" _g29448_)))
                   (let ((_target91199170_ (values-ref _g29447_ 0))
                         (_tl91219173_ (values-ref _g29447_ 1)))
                     (if (gx#stx-null? _tl91219173_)
                         (letrec ((_loop91229176_
                                   (lambda (_hd91209180_ _datum91269183_)
                                     (if (gx#stx-pair? _hd91209180_)
                                         (let ((_e91239186_
                                                (gx#syntax-e _hd91209180_)))
                                           (let ((_lp-hd91249190_
                                                  (##car _e91239186_))
                                                 (_lp-tl91259193_
                                                  (##cdr _e91239186_)))
                                             (_loop91229176_
                                              _lp-tl91259193_
                                              (cons _lp-hd91249190_
                                                    _datum91269183_))))
                                         (let ((_datum91279196_
                                                (reverse _datum91269183_)))
                                           (if (gx#stx-null? _tl91189167_)
                                               ((lambda (_L9200_ _L9202_)
                                                  (let ((_g92239231_
                                                         (lambda (_g92249227_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g92249227_))))
                                                    (let ((_g92229258_
                                                           (lambda (_g92249235_)
                                                             ((lambda (_L9238_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9238_
                                (cons _L9202_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons (begin
                                                          '#!void
                                                          (foldr (lambda (_g92499252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g92509255_)
                           (cons _g92499252_ _g92509255_))
                         '()
                         _L9200_))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _g92249235_))))
              (_g92229258_
               (if (gx#stx-andmap
                    _memq-datum?9076_
                    (begin
                      '#!void
                      (foldr (lambda (_g92619264_ _g92629267_)
                               (cons _g92619264_ _g92629267_))
                             '()
                             _L9200_)))
                   (gx#datum->syntax '#f 'memq)
                   (if (gx#stx-andmap
                        _memv-datum?9078_
                        (begin
                          '#!void
                          (foldr (lambda (_g92699272_ _g92709275_)
                                   (cons _g92699272_ _g92709275_))
                                 '()
                                 _L9200_)))
                       (gx#datum->syntax '#f 'memv)
                       (gx#datum->syntax '#f 'member)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _datum91279196_
                                                _hd91149154_)
                                               (_g90829133_ _g90839137_)))))))
                           (_loop91229176_ _target91199170_ '()))
                         (_g90829133_ _g90839137_)))))
               (_g90829133_ _g90839137_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90829133_ _g90839137_))))
                                           (_g90829133_ _g90839137_))))
                                   (_g90829133_ _g90839137_))))
                           (_g90829133_ _g90839137_)))))
                (let ((_g90809375_
                       (lambda (_g90839282_)
                         (if (gx#stx-pair? _g90839282_)
                             (let ((_e90969285_ (gx#syntax-e _g90839282_)))
                               (let ((_hd90979289_ (##car _e90969285_))
                                     (_tl90989292_ (##cdr _e90969285_)))
                                 (if (gx#stx-pair? _tl90989292_)
                                     (let ((_e90999295_
                                            (gx#syntax-e _tl90989292_)))
                                       (let ((_hd91009299_ (##car _e90999295_))
                                             (_tl91019302_
                                              (##cdr _e90999295_)))
                                         (if (gx#stx-pair? _tl91019302_)
                                             (let ((_e91029305_
                                                    (gx#syntax-e
                                                     _tl91019302_)))
                                               (let ((_hd91039309_
                                                      (##car _e91029305_))
                                                     (_tl91049312_
                                                      (##cdr _e91029305_)))
                                                 (if (gx#stx-pair?
                                                      _hd91039309_)
                                                     (let ((_e91059315_
                                                            (gx#syntax-e
                                                             _hd91039309_)))
                                                       (let ((_hd91069319_
                                                              (##car _e91059315_))
                                                             (_tl91079322_
                                                              (##cdr _e91059315_)))
                                                         (if (gx#stx-null?
                                                              _tl91079322_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl91049312_)
                         ((lambda (_L9325_ _L9327_)
                            (let ((_g93449352_
                                   (lambda (_g93459348_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g93459348_))))
                              (let ((_g93439371_
                                     (lambda (_g93459356_)
                                       ((lambda (_L9359_)
                                          (let ()
                                            (cons _L9359_
                                                  (cons _L9327_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L9325_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g93459356_))))
                                (_g93439371_
                                 (if (_memq-datum?9076_ _L9325_)
                                     (gx#datum->syntax '#f 'eq?)
                                     (if (_memv-datum?9078_ _L9325_)
                                         (gx#datum->syntax '#f 'eqv?)
                                         (gx#datum->syntax '#f 'equal?)))))))
                          _hd91069319_
                          _hd91009299_)
                         (_g90819278_ _g90839282_))
                     (_g90819278_ _g90839282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90819278_
                                                      _g90839282_))))
                                             (_g90819278_ _g90839282_))))
                                     (_g90819278_ _g90839282_))))
                             (_g90819278_ _g90839282_)))))
                  (let ((_g90799427_
                         (lambda (_g90839379_)
                           (if (gx#stx-pair? _g90839379_)
                               (let ((_e90859382_ (gx#syntax-e _g90839379_)))
                                 (let ((_hd90869386_ (##car _e90859382_))
                                       (_tl90879389_ (##cdr _e90859382_)))
                                   (if (gx#stx-pair? _tl90879389_)
                                       (let ((_e90889392_
                                              (gx#syntax-e _tl90879389_)))
                                         (let ((_hd90899396_
                                                (##car _e90889392_))
                                               (_tl90909399_
                                                (##cdr _e90889392_)))
                                           (if (gx#stx-pair? _tl90909399_)
                                               (let ((_e90919402_
                                                      (gx#syntax-e
                                                       _tl90909399_)))
                                                 (let ((_hd90929406_
                                                        (##car _e90919402_))
                                                       (_tl90939409_
                                                        (##cdr _e90919402_)))
                                                   (if (gx#stx-null?
                                                        _hd90929406_)
                                                       (if (gx#stx-null?
                                                            _tl90939409_)
                                                           ((lambda (_L9412_)
                                                              '#f)
                                                            _hd90899396_)
                                                           (_g90809375_
                                                            _g90839379_))
                                                       (_g90809375_
                                                        _g90839379_))))
                                               (_g90809375_ _g90839379_))))
                                       (_g90809375_ _g90839379_))))
                               (_g90809375_ _g90839379_)))))
                    (_g90799427_ _stx9073_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do|
      (lambda (_$stx9453_)
        (let ((_g94579528_
               (lambda (_g94589524_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g94589524_))))
          (let ((_g94569817_
                 (lambda (_g94589532_)
                   (if (gx#stx-pair? _g94589532_)
                       (let ((_e94659535_ (gx#syntax-e _g94589532_)))
                         (let ((_hd94669539_ (##car _e94659535_))
                               (_tl94679542_ (##cdr _e94659535_)))
                           (if (gx#stx-pair? _tl94679542_)
                               (let ((_e94689545_ (gx#syntax-e _tl94679542_)))
                                 (let ((_hd94699549_ (##car _e94689545_))
                                       (_tl94709552_ (##cdr _e94689545_)))
                                   (if (gx#stx-pair/null? _hd94699549_)
                                       (if (fx>= (gx#stx-length _hd94699549_)
                                                 '0)
                                           (let ((_g29449_
                                                  (gx#syntax-split-splice
                                                   _hd94699549_
                                                   '0)))
                                             (begin
                                               (let ((_g29450_
                                                      (values-count _g29449_)))
                                                 (if (not (fx= _g29450_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29450_)))
                                               (let ((_target94719555_
                                                      (values-ref _g29449_ 0))
                                                     (_tl94739558_
                                                      (values-ref _g29449_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl94739558_)
                                                     (letrec ((_loop94749561_
                                                               (lambda (_hd94729565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _step94789568_
                                _init94799570_
                                _var94809572_)
                         (if (gx#stx-pair? _hd94729565_)
                             (let ((_e94759575_ (gx#syntax-e _hd94729565_)))
                               (let ((_lp-hd94769579_ (##car _e94759575_))
                                     (_lp-tl94779582_ (##cdr _e94759575_)))
                                 (if (gx#stx-pair? _lp-hd94769579_)
                                     (let ((_e94849585_
                                            (gx#syntax-e _lp-hd94769579_)))
                                       (let ((_hd94859589_ (##car _e94849585_))
                                             (_tl94869592_
                                              (##cdr _e94849585_)))
                                         (if (gx#stx-pair? _tl94869592_)
                                             (let ((_e94879595_
                                                    (gx#syntax-e
                                                     _tl94869592_)))
                                               (let ((_hd94889599_
                                                      (##car _e94879595_))
                                                     (_tl94899602_
                                                      (##cdr _e94879595_)))
                                                 (if (gx#stx-pair/null?
                                                      _tl94899602_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl94899602_)
                                                               '0)
                                                         (let ((_g29451_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94899602_
                         '0)))
                   (begin
                     (let ((_g29452_ (values-count _g29451_)))
                       (if (not (fx= _g29452_ 2))
                           (error "Context expects 2 values" _g29452_)))
                     (let ((_target94909605_ (values-ref _g29451_ 0))
                           (_tl94929608_ (values-ref _g29451_ 1)))
                       (if (gx#stx-null? _tl94929608_)
                           (letrec ((_loop94939611_
                                     (lambda (_hd94919615_ _step94979618_)
                                       (if (gx#stx-pair? _hd94919615_)
                                           (let ((_e94949621_
                                                  (gx#syntax-e _hd94919615_)))
                                             (let ((_lp-hd94959625_
                                                    (##car _e94949621_))
                                                   (_lp-tl94969628_
                                                    (##cdr _e94949621_)))
                                               (_loop94939611_
                                                _lp-tl94969628_
                                                (cons _lp-hd94959625_
                                                      _step94979618_))))
                                           (let ((_step94989631_
                                                  (reverse _step94979618_)))
                                             (_loop94749561_
                                              _lp-tl94779582_
                                              (cons _step94989631_
                                                    _step94789568_)
                                              (cons _hd94889599_
                                                    _init94799570_)
                                              (cons _hd94859589_
                                                    _var94809572_)))))))
                             (_loop94939611_ _target94909605_ '()))
                           (_g94579528_ _g94589532_)))))
                 (_g94579528_ _g94589532_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94579528_
                                                      _g94589532_))))
                                             (_g94579528_ _g94589532_))))
                                     (_g94579528_ _g94589532_))))
                             (let ((_step94819635_ (reverse _step94789568_))
                                   (_init94829638_ (reverse _init94799570_))
                                   (_var94839640_ (reverse _var94809572_)))
                               (if (gx#stx-pair? _tl94709552_)
                                   (let ((_e94999643_
                                          (gx#syntax-e _tl94709552_)))
                                     (let ((_hd95009647_ (##car _e94999643_))
                                           (_tl95019650_ (##cdr _e94999643_)))
                                       (if (gx#stx-pair? _hd95009647_)
                                           (let ((_e95029653_
                                                  (gx#syntax-e _hd95009647_)))
                                             (let ((_hd95039657_
                                                    (##car _e95029653_))
                                                   (_tl95049660_
                                                    (##cdr _e95029653_)))
                                               (if (gx#stx-pair/null?
                                                    _tl95049660_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl95049660_)
                                                             '0)
                                                       (let ((_g29453_
                                                              (gx#syntax-split-splice
                                                               _tl95049660_
                                                               '0)))
                                                         (begin
                                                           (let ((_g29454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g29453_)))
                     (if (not (fx= _g29454_ 2))
                         (error "Context expects 2 values" _g29454_)))
                   (let ((_target95059663_ (values-ref _g29453_ 0))
                         (_tl95079666_ (values-ref _g29453_ 1)))
                     (if (gx#stx-null? _tl95079666_)
                         (letrec ((_loop95089669_
                                   (lambda (_hd95069673_ _fini95129676_)
                                     (if (gx#stx-pair? _hd95069673_)
                                         (let ((_e95099679_
                                                (gx#syntax-e _hd95069673_)))
                                           (let ((_lp-hd95109683_
                                                  (##car _e95099679_))
                                                 (_lp-tl95119686_
                                                  (##cdr _e95099679_)))
                                             (_loop95089669_
                                              _lp-tl95119686_
                                              (cons _lp-hd95109683_
                                                    _fini95129676_))))
                                         (let ((_fini95139689_
                                                (reverse _fini95129676_)))
                                           (if (gx#stx-pair/null? _tl95019650_)
                                               (if (fx>= (gx#stx-length
                                                          _tl95019650_)
                                                         '0)
                                                   (let ((_g29455_
                                                          (gx#syntax-split-splice
                                                           _tl95019650_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29456_
                                                              (values-count
                                                               _g29455_)))
                                                         (if (not (fx= _g29456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29456_)))
               (let ((_target95149693_ (values-ref _g29455_ 0))
                     (_tl95169696_ (values-ref _g29455_ 1)))
                 (if (gx#stx-null? _tl95169696_)
                     (letrec ((_loop95179699_
                               (lambda (_hd95159703_ _body95219706_)
                                 (if (gx#stx-pair? _hd95159703_)
                                     (let ((_e95189709_
                                            (gx#syntax-e _hd95159703_)))
                                       (let ((_lp-hd95199713_
                                              (##car _e95189709_))
                                             (_lp-tl95209716_
                                              (##cdr _e95189709_)))
                                         (_loop95179699_
                                          _lp-tl95209716_
                                          (cons _lp-hd95199713_
                                                _body95219706_))))
                                     (let ((_body95229719_
                                            (reverse _body95219706_)))
                                       ((lambda (_L9723_
                                                 _L9725_
                                                 _L9726_
                                                 _L9727_
                                                 _L9728_
                                                 _L9729_)
                                          (if (gx#stx-andmap
                                               gx#identifier?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g97629765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97639768_)
                  (cons _g97629765_ _g97639768_))
                '()
                _L9729_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$loop)
                                                          (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-check-splice-targets _L9728_ _L9729_)
                          (foldr (lambda (_g97709783_ _g97719786_ _g97729788_)
                                   (cons (cons _g97719786_
                                               (cons _g97709783_ '()))
                                         _g97729788_))
                                 '()
                                 _L9728_
                                 _L9729_))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'not)
                                                (cons _L9726_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g97739791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g97749794_)
                         (cons _g97739791_ _g97749794_))
                       (cons (cons (gx#datum->syntax '#f '$loop)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _L9727_
                                      _L9729_)
                                     (foldr (lambda (_g97759797_
                                                     _g97769800_
                                                     _g97779802_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons _g97769800_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g97789805_ _g97799808_)
                                   (cons _g97789805_ _g97799808_))
                                 '()
                                 _g97759797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g97779802_))
                                            '()
                                            _L9727_
                                            _L9729_)))
                             '())
                       _L9723_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g97809811_ _g97819814_)
                                     (cons _g97809811_ _g97819814_))
                                   '()
                                   _L9725_))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g94579528_ _g94589532_)))
                                        _body95229719_
                                        _fini95139689_
                                        _hd95039657_
                                        _step94819635_
                                        _init94829638_
                                        _var94839640_))))))
                       (_loop95179699_ _target95149693_ '()))
                     (_g94579528_ _g94589532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94579528_ _g94589532_))
                                               (_g94579528_ _g94589532_)))))))
                           (_loop95089669_ _target95059663_ '()))
                         (_g94579528_ _g94589532_)))))
               (_g94579528_ _g94589532_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94579528_ _g94589532_))))
                                           (_g94579528_ _g94589532_))))
                                   (_g94579528_ _g94589532_)))))))
               (_loop94749561_ _target94719555_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94579528_
                                                      _g94589532_)))))
                                           (_g94579528_ _g94589532_))
                                       (_g94579528_ _g94589532_))))
                               (_g94579528_ _g94589532_))))
                       (_g94579528_ _g94589532_)))))
            (_g94569817_ _$stx9453_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do-while|
      (lambda (_$stx9825_)
        (let ((_g98299852_
               (lambda (_g98309848_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g98309848_))))
          (let ((_g98289923_
                 (lambda (_g98309856_)
                   (if (gx#stx-pair? _g98309856_)
                       (let ((_e98359859_ (gx#syntax-e _g98309856_)))
                         (let ((_hd98369863_ (##car _e98359859_))
                               (_tl98379866_ (##cdr _e98359859_)))
                           (if (gx#stx-pair? _tl98379866_)
                               (let ((_e98389869_ (gx#syntax-e _tl98379866_)))
                                 (let ((_hd98399873_ (##car _e98389869_))
                                       (_tl98409876_ (##cdr _e98389869_)))
                                   (if (gx#stx-pair? _tl98409876_)
                                       (let ((_e98419879_
                                              (gx#syntax-e _tl98409876_)))
                                         (let ((_hd98429883_
                                                (##car _e98419879_))
                                               (_tl98439886_
                                                (##cdr _e98419879_)))
                                           (if (gx#stx-pair? _hd98429883_)
                                               (let ((_e98449889_
                                                      (gx#syntax-e
                                                       _hd98429883_)))
                                                 (let ((_hd98459893_
                                                        (##car _e98449889_))
                                                       (_tl98469896_
                                                        (##cdr _e98449889_)))
                                                   ((lambda (_L9899_
                                                             _L9901_
                                                             _L9902_
                                                             _L9903_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'do)
                                                            (cons _L9903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (gx#datum->syntax '#f 'not)
                                            (cons _L9902_ '()))
                                      _L9901_)
                                _L9899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl98439886_
                                                    _tl98469896_
                                                    _hd98459893_
                                                    _hd98399873_)))
                                               (_g98299852_ _g98309856_))))
                                       (_g98299852_ _g98309856_))))
                               (_g98299852_ _g98309856_))))
                       (_g98299852_ _g98309856_)))))
            (_g98289923_ _$stx9825_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#begin0|
      (lambda (_$stx9927_)
        (let ((_g99329963_
               (lambda (_g99339959_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g99339959_))))
          (let ((_g993110048_
                 (lambda (_g99339967_)
                   (if (gx#stx-pair? _g99339967_)
                       (let ((_e99439970_ (gx#syntax-e _g99339967_)))
                         (let ((_hd99449974_ (##car _e99439970_))
                               (_tl99459977_ (##cdr _e99439970_)))
                           (if (gx#stx-pair? _tl99459977_)
                               (let ((_e99469980_ (gx#syntax-e _tl99459977_)))
                                 (let ((_hd99479984_ (##car _e99469980_))
                                       (_tl99489987_ (##cdr _e99469980_)))
                                   (if (gx#stx-pair/null? _tl99489987_)
                                       (if (fx>= (gx#stx-length _tl99489987_)
                                                 '0)
                                           (let ((_g29457_
                                                  (gx#syntax-split-splice
                                                   _tl99489987_
                                                   '0)))
                                             (begin
                                               (let ((_g29458_
                                                      (values-count _g29457_)))
                                                 (if (not (fx= _g29458_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29458_)))
                                               (let ((_target99499990_
                                                      (values-ref _g29457_ 0))
                                                     (_tl99519993_
                                                      (values-ref _g29457_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl99519993_)
                                                     (letrec ((_loop99529996_
                                                               (lambda (_hd995010000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _rest995610003_)
                         (if (gx#stx-pair? _hd995010000_)
                             (let ((_e995310006_ (gx#syntax-e _hd995010000_)))
                               (let ((_lp-hd995410010_ (##car _e995310006_))
                                     (_lp-tl995510013_ (##cdr _e995310006_)))
                                 (_loop99529996_
                                  _lp-tl995510013_
                                  (cons _lp-hd995410010_ _rest995610003_))))
                             (let ((_rest995710016_ (reverse _rest995610003_)))
                               ((lambda (_L10020_ _L10022_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$r)
                                                    (cons _L10022_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '%#expression)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              (begin
                                '#!void
                                (foldr (lambda (_g1003910042_ _g1004010045_)
                                         (cons _g1003910042_ _g1004010045_))
                                       '()
                                       _L10020_)))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$r)
                                                          '())))))
                                _rest995710016_
                                _hd99479984_))))))
               (_loop99529996_ _target99499990_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g99329963_
                                                      _g99339967_)))))
                                           (_g99329963_ _g99339967_))
                                       (_g99329963_ _g99339967_))))
                               (_g99329963_ _g99339967_))))
                       (_g99329963_ _g99339967_)))))
            (let ((_g993010088_
                   (lambda (_g993310052_)
                     (if (gx#stx-pair? _g993310052_)
                         (let ((_e993510055_ (gx#syntax-e _g993310052_)))
                           (let ((_hd993610059_ (##car _e993510055_))
                                 (_tl993710062_ (##cdr _e993510055_)))
                             (if (gx#stx-pair? _tl993710062_)
                                 (let ((_e993810065_
                                        (gx#syntax-e _tl993710062_)))
                                   (let ((_hd993910069_ (##car _e993810065_))
                                         (_tl994010072_ (##cdr _e993810065_)))
                                     (if (gx#stx-null? _tl994010072_)
                                         ((lambda (_L10075_) _L10075_)
                                          _hd993910069_)
                                         (_g993110048_ _g993310052_))))
                                 (_g993110048_ _g993310052_))))
                         (_g993110048_ _g993310052_)))))
              (_g993010088_ _$stx9927_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#rec|
      (lambda (_$stx10093_)
        (let ((_g1009910152_
               (lambda (_g1010010148_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1010010148_))))
          (let ((_g1009810251_
                 (lambda (_g1010010156_)
                   (if (gx#stx-pair? _g1010010156_)
                       (let ((_e1012910159_ (gx#syntax-e _g1010010156_)))
                         (let ((_hd1013010163_ (##car _e1012910159_))
                               (_tl1013110166_ (##cdr _e1012910159_)))
                           (if (gx#stx-pair? _tl1013110166_)
                               (let ((_e1013210169_
                                      (gx#syntax-e _tl1013110166_)))
                                 (let ((_hd1013310173_ (##car _e1013210169_))
                                       (_tl1013410176_ (##cdr _e1013210169_)))
                                   (if (gx#stx-pair? _hd1013310173_)
                                       (let ((_e1013510179_
                                              (gx#syntax-e _hd1013310173_)))
                                         (let ((_hd1013610183_
                                                (##car _e1013510179_))
                                               (_tl1013710186_
                                                (##cdr _e1013510179_)))
                                           (if (gx#stx-pair/null?
                                                _tl1013410176_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1013410176_)
                                                         '0)
                                                   (let ((_g29459_
                                                          (gx#syntax-split-splice
                                                           _tl1013410176_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29460_
                                                              (values-count
                                                               _g29459_)))
                                                         (if (not (fx= _g29460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29460_)))
               (let ((_target1013810189_ (values-ref _g29459_ 0))
                     (_tl1014010192_ (values-ref _g29459_ 1)))
                 (if (gx#stx-null? _tl1014010192_)
                     (letrec ((_loop1014110195_
                               (lambda (_hd1013910199_ _body1014510202_)
                                 (if (gx#stx-pair? _hd1013910199_)
                                     (let ((_e1014210205_
                                            (gx#syntax-e _hd1013910199_)))
                                       (let ((_lp-hd1014310209_
                                              (##car _e1014210205_))
                                             (_lp-tl1014410212_
                                              (##cdr _e1014210205_)))
                                         (_loop1014110195_
                                          _lp-tl1014410212_
                                          (cons _lp-hd1014310209_
                                                _body1014510202_))))
                                     (let ((_body1014610215_
                                            (reverse _body1014510202_)))
                                       ((lambda (_L10219_ _L10221_ _L10222_)
                                          (if (gx#identifier? _L10222_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec)
                                                    (cons (cons (cons _L10222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons _L10221_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1024210245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1024310248_)
                   (cons _g1024210245_ _g1024310248_))
                 '()
                 _L10219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L10222_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1009910152_ _g1010010156_)))
                                        _body1014610215_
                                        _tl1013710186_
                                        _hd1013610183_))))))
                       (_loop1014110195_ _target1013810189_ '()))
                     (_g1009910152_ _g1010010156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1009910152_
                                                    _g1010010156_))
                                               (_g1009910152_ _g1010010156_))))
                                       (_g1009910152_ _g1010010156_))))
                               (_g1009910152_ _g1010010156_))))
                       (_g1009910152_ _g1010010156_)))))
            (let ((_g1009710317_
                   (lambda (_g1010010255_)
                     (if (gx#stx-pair? _g1010010255_)
                         (let ((_e1011410258_ (gx#syntax-e _g1010010255_)))
                           (let ((_hd1011510262_ (##car _e1011410258_))
                                 (_tl1011610265_ (##cdr _e1011410258_)))
                             (if (gx#stx-pair? _tl1011610265_)
                                 (let ((_e1011710268_
                                        (gx#syntax-e _tl1011610265_)))
                                   (let ((_hd1011810272_ (##car _e1011710268_))
                                         (_tl1011910275_
                                          (##cdr _e1011710268_)))
                                     (if (gx#stx-pair? _hd1011810272_)
                                         (let ((_e1012010278_
                                                (gx#syntax-e _hd1011810272_)))
                                           (let ((_hd1012110282_
                                                  (##car _e1012010278_))
                                                 (_tl1012210285_
                                                  (##cdr _e1012010278_)))
                                             (if (gx#identifier?
                                                  _hd1012110282_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g29461_|
                                                      _hd1012110282_)
                                                     (if (gx#stx-pair?
                                                          _tl1011910275_)
                                                         (let ((_e1012310288_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1011910275_)))
                   (let ((_hd1012410292_ (##car _e1012310288_))
                         (_tl1012510295_ (##cdr _e1012310288_)))
                     (if (gx#stx-null? _tl1012510295_)
                         ((lambda (_L10298_ _L10300_)
                            (if (gx#identifier-list? _L10300_)
                                (cons (gx#datum->syntax '#f 'letrec-values)
                                      (cons (cons (cons _L10300_
                                                        (cons _L10298_ '()))
                                                  '())
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'values)
                                                        _L10300_)
                                                  '())))
                                (_g1009810251_ _g1010010255_)))
                          _hd1012410292_
                          _tl1012210285_)
                         (_g1009810251_ _g1010010255_))))
                 (_g1009810251_ _g1010010255_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1009810251_
                                                      _g1010010255_))
                                                 (_g1009810251_
                                                  _g1010010255_))))
                                         (_g1009810251_ _g1010010255_))))
                                 (_g1009810251_ _g1010010255_))))
                         (_g1009810251_ _g1010010255_)))))
              (let ((_g1009610371_
                     (lambda (_g1010010321_)
                       (if (gx#stx-pair? _g1010010321_)
                           (let ((_e1010310324_ (gx#syntax-e _g1010010321_)))
                             (let ((_hd1010410328_ (##car _e1010310324_))
                                   (_tl1010510331_ (##cdr _e1010310324_)))
                               (if (gx#stx-pair? _tl1010510331_)
                                   (let ((_e1010610334_
                                          (gx#syntax-e _tl1010510331_)))
                                     (let ((_hd1010710338_
                                            (##car _e1010610334_))
                                           (_tl1010810341_
                                            (##cdr _e1010610334_)))
                                       (if (gx#stx-pair? _tl1010810341_)
                                           (let ((_e1010910344_
                                                  (gx#syntax-e
                                                   _tl1010810341_)))
                                             (let ((_hd1011010348_
                                                    (##car _e1010910344_))
                                                   (_tl1011110351_
                                                    (##cdr _e1010910344_)))
                                               (if (gx#stx-null?
                                                    _tl1011110351_)
                                                   ((lambda (_L10354_ _L10356_)
                                                      (if (gx#identifier?
                                                           _L10356_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L10356_ (cons _L10354_ '())) '())
                              (cons _L10356_ '())))
                  (_g1009710317_ _g1010010321_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1011010348_
                                                    _hd1010710338_)
                                                   (_g1009710317_
                                                    _g1010010321_))))
                                           (_g1009710317_ _g1010010321_))))
                                   (_g1009710317_ _g1010010321_))))
                           (_g1009710317_ _g1010010321_)))))
                (_g1009610371_ _$stx10093_)))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet|
      (lambda (_stx10376_)
        (let ((_let-head?10379_
               (lambda (_x10926_)
                 (let ((_g1093010941_
                        (lambda (_g1093110937_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1093110937_))))
                   (let ((_g1092910952_
                          (lambda (_g1093110945_)
                            ((lambda () (gx#identifier? _x10926_))))))
                     (let ((_g1092810982_
                            (lambda (_g1093110956_)
                              (if (gx#stx-pair? _g1093110956_)
                                  (let ((_e1093310959_
                                         (gx#syntax-e _g1093110956_)))
                                    (let ((_hd1093410963_
                                           (##car _e1093310959_))
                                          (_tl1093510966_
                                           (##cdr _e1093310959_)))
                                      (if (gx#identifier? _hd1093410963_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:2>[1]#_g29471_|
                                               _hd1093410963_)
                                              ((lambda (_L10969_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L10969_))
                                               _tl1093510966_)
                                              (_g1092910952_ _g1093110956_))
                                          (_g1092910952_ _g1093110956_))))
                                  (_g1092910952_ _g1093110956_)))))
                       (_g1092810982_ _x10926_)))))))
          (let ((_let-head10381_
                 (lambda (_x10866_)
                   (let ((_g1087010881_
                          (lambda (_g1087110877_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1087110877_))))
                     (let ((_g1086910892_
                            (lambda (_g1087110885_)
                              ((lambda () (list _x10866_))))))
                       (let ((_g1086810922_
                              (lambda (_g1087110896_)
                                (if (gx#stx-pair? _g1087110896_)
                                    (let ((_e1087310899_
                                           (gx#syntax-e _g1087110896_)))
                                      (let ((_hd1087410903_
                                             (##car _e1087310899_))
                                            (_tl1087510906_
                                             (##cdr _e1087310899_)))
                                        (if (gx#identifier? _hd1087410903_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:2>[1]#_g29470_|
                                                 _hd1087410903_)
                                                ((lambda (_L10909_) _L10909_)
                                                 _tl1087510906_)
                                                (_g1086910892_ _g1087110896_))
                                            (_g1086910892_ _g1087110896_))))
                                    (_g1086910892_ _g1087110896_)))))
                         (_g1086810922_ _x10866_)))))))
            (let ((_g1038410442_
                   (lambda (_g1038510438_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1038510438_))))
              (let ((_g1038310792_
                     (lambda (_g1038510446_)
                       (if (gx#stx-pair? _g1038510446_)
                           (let ((_e1040510449_ (gx#syntax-e _g1038510446_)))
                             (let ((_hd1040610453_ (##car _e1040510449_))
                                   (_tl1040710456_ (##cdr _e1040510449_)))
                               (if (gx#stx-pair? _tl1040710456_)
                                   (let ((_e1040810459_
                                          (gx#syntax-e _tl1040710456_)))
                                     (let ((_hd1040910463_
                                            (##car _e1040810459_))
                                           (_tl1041010466_
                                            (##cdr _e1040810459_)))
                                       (if (gx#stx-pair/null? _hd1040910463_)
                                           (if (fx>= (gx#stx-length
                                                      _hd1040910463_)
                                                     '0)
                                               (let ((_g29462_
                                                      (gx#syntax-split-splice
                                                       _hd1040910463_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29463_
                                                          (values-count
                                                           _g29462_)))
                                                     (if (not (fx= _g29463_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29463_)))
                                                   (let ((_target1041110469_
                                                          (values-ref
                                                           _g29462_
                                                           0))
                                                         (_tl1041310472_
                                                          (values-ref
                                                           _g29462_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl1041310472_)
                                                         (letrec ((_loop1041410475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1041210479_
                                    _e1041810482_
                                    _hd1041910484_)
                             (if (gx#stx-pair? _hd1041210479_)
                                 (let ((_e1041510487_
                                        (gx#syntax-e _hd1041210479_)))
                                   (let ((_lp-hd1041610491_
                                          (##car _e1041510487_))
                                         (_lp-tl1041710494_
                                          (##cdr _e1041510487_)))
                                     (if (gx#stx-pair? _lp-hd1041610491_)
                                         (let ((_e1042210497_
                                                (gx#syntax-e
                                                 _lp-hd1041610491_)))
                                           (let ((_hd1042310501_
                                                  (##car _e1042210497_))
                                                 (_tl1042410504_
                                                  (##cdr _e1042210497_)))
                                             (if (gx#stx-pair? _tl1042410504_)
                                                 (let ((_e1042510507_
                                                        (gx#syntax-e
                                                         _tl1042410504_)))
                                                   (let ((_hd1042610511_
                                                          (##car _e1042510507_))
                                                         (_tl1042710514_
                                                          (##cdr _e1042510507_)))
                                                     (if (gx#stx-null?
                                                          _tl1042710514_)
                                                         (_loop1041410475_
                                                          _lp-tl1041710494_
                                                          (cons _hd1042610511_
                                                                _e1041810482_)
                                                          (cons _hd1042310501_
                                                                _hd1041910484_))
                                                         (_g1038410442_
                                                          _g1038510446_))))
                                                 (_g1038410442_
                                                  _g1038510446_))))
                                         (_g1038410442_ _g1038510446_))))
                                 (let ((_e1042010517_ (reverse _e1041810482_))
                                       (_hd1042110520_
                                        (reverse _hd1041910484_)))
                                   (if (gx#stx-pair/null? _tl1041010466_)
                                       (if (fx>= (gx#stx-length _tl1041010466_)
                                                 '0)
                                           (let ((_g29464_
                                                  (gx#syntax-split-splice
                                                   _tl1041010466_
                                                   '0)))
                                             (begin
                                               (let ((_g29465_
                                                      (values-count _g29464_)))
                                                 (if (not (fx= _g29465_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29465_)))
                                               (let ((_target1042810523_
                                                      (values-ref _g29464_ 0))
                                                     (_tl1043010526_
                                                      (values-ref _g29464_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1043010526_)
                                                     (letrec ((_loop1043110529_
                                                               (lambda (_hd1042910533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body1043510536_)
                         (if (gx#stx-pair? _hd1042910533_)
                             (let ((_e1043210539_
                                    (gx#syntax-e _hd1042910533_)))
                               (let ((_lp-hd1043310543_ (##car _e1043210539_))
                                     (_lp-tl1043410546_ (##cdr _e1043210539_)))
                                 (_loop1043110529_
                                  _lp-tl1043410546_
                                  (cons _lp-hd1043310543_ _body1043510536_))))
                             (let ((_body1043610549_
                                    (reverse _body1043510536_)))
                               ((lambda (_L10553_ _L10555_ _L10556_)
                                  (if (gx#stx-andmap
                                       _let-head?10379_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1057910582_
                                                         _g1058010585_)
                                                  (cons _g1057910582_
                                                        _g1058010585_))
                                                '()
                                                _L10556_)))
                                      (let ((_g1058810621_
                                             (lambda (_g1058910617_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1058910617_))))
                                        (let ((_g1058710772_
                                               (lambda (_g1058910625_)
                                                 (if (gx#stx-pair?
                                                      _g1058910625_)
                                                     (let ((_e1059210628_
                                                            (gx#syntax-e
                                                             _g1058910625_)))
                                                       (let ((_hd1059310632_
                                                              (##car _e1059210628_))
                                                             (_tl1059410635_
                                                              (##cdr _e1059210628_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1059310632_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1059310632_)
                               '0)
                         (let ((_g29466_
                                (gx#syntax-split-splice _hd1059310632_ '0)))
                           (begin
                             (let ((_g29467_ (values-count _g29466_)))
                               (if (not (fx= _g29467_ 2))
                                   (error "Context expects 2 values"
                                          _g29467_)))
                             (let ((_target1059510638_ (values-ref _g29466_ 0))
                                   (_tl1059710641_ (values-ref _g29466_ 1)))
                               (if (gx#stx-null? _tl1059710641_)
                                   (letrec ((_loop1059810644_
                                             (lambda (_hd1059610648_
                                                      _$e1060210651_)
                                               (if (gx#stx-pair?
                                                    _hd1059610648_)
                                                   (let ((_e1059910654_
                                                          (gx#syntax-e
                                                           _hd1059610648_)))
                                                     (let ((_lp-hd1060010658_
                                                            (##car _e1059910654_))
                                                           (_lp-tl1060110661_
                                                            (##cdr _e1059910654_)))
                                                       (_loop1059810644_
                                                        _lp-tl1060110661_
                                                        (cons _lp-hd1060010658_
                                                              _$e1060210651_))))
                                                   (let ((_$e1060310664_
                                                          (reverse _$e1060210651_)))
                                                     (if (gx#stx-pair?
                                                          _tl1059410635_)
                                                         (let ((_e1060410668_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1059410635_)))
                   (let ((_hd1060510672_ (##car _e1060410668_))
                         (_tl1060610675_ (##cdr _e1060410668_)))
                     (if (gx#stx-pair/null? _hd1060510672_)
                         (if (fx>= (gx#stx-length _hd1060510672_) '0)
                             (let ((_g29468_
                                    (gx#syntax-split-splice
                                     _hd1060510672_
                                     '0)))
                               (begin
                                 (let ((_g29469_ (values-count _g29468_)))
                                   (if (not (fx= _g29469_ 2))
                                       (error "Context expects 2 values"
                                              _g29469_)))
                                 (let ((_target1060710678_
                                        (values-ref _g29468_ 0))
                                       (_tl1060910681_
                                        (values-ref _g29468_ 1)))
                                   (if (gx#stx-null? _tl1060910681_)
                                       (letrec ((_loop1061010684_
                                                 (lambda (_hd1060810688_
                                                          _hd-bind1061410691_)
                                                   (if (gx#stx-pair?
                                                        _hd1060810688_)
                                                       (let ((_e1061110694_
                                                              (gx#syntax-e
                                                               _hd1060810688_)))
                                                         (let ((_lp-hd1061210698_
                                                                (##car _e1061110694_))
                                                               (_lp-tl1061310701_
                                                                (##cdr _e1061110694_)))
                                                           (_loop1061010684_
                                                            _lp-tl1061310701_
                                                            (cons _lp-hd1061210698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd-bind1061410691_))))
               (let ((_hd-bind1061510704_ (reverse _hd-bind1061410691_)))
                 (if (gx#stx-null? _tl1060610675_)
                     ((lambda (_L10708_ _L10710_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let-values)
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _L10555_
                                         _L10710_)
                                        (foldr (lambda (_g1073310744_
                                                        _g1073410747_
                                                        _g1073510749_)
                                                 (cons (cons (cons _g1073410747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _g1073310744_ '()))
               _g1073510749_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _L10555_
                                               _L10710_))
                                      (cons (cons (gx#datum->syntax '#f 'and)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1073610752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1073710755_)
                     (cons _g1073610752_ _g1073710755_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L10710_
                                        _L10708_)
                                       (foldr (lambda (_g1073810758_
                                                       _g1073910761_
                                                       _g1074010763_)
                                                (cons (cons _g1073910761_
                                                            (cons _g1073810758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g1074010763_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L10710_
                                              _L10708_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1074110766_
                                                       _g1074210769_)
                                                (cons _g1074110766_
                                                      _g1074210769_))
                                              '()
                                              _L10553_))))
                         '())
                   _L10710_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _hd-bind1061510704_
                      _$e1060310664_)
                     (_g1058810621_ _g1058910625_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1061010684_
                                          _target1060710678_
                                          '()))
                                       (_g1058810621_ _g1058910625_)))))
                             (_g1058810621_ _g1058910625_))
                         (_g1058810621_ _g1058910625_))))
                 (_g1058810621_ _g1058910625_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1059810644_ _target1059510638_ '()))
                                   (_g1058810621_ _g1058910625_)))))
                         (_g1058810621_ _g1058910625_))
                     (_g1058810621_ _g1058910625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1058810621_
                                                      _g1058910625_)))))
                                          (_g1058710772_
                                           (list (gx#gentemps
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1077510778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1077610781_)
                     (cons _g1077510778_ _g1077610781_))
                   '()
                   _L10556_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-map
                                                  _let-head10381_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1078310786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1078410789_)
                     (cons _g1078310786_ _g1078410789_))
                   '()
                   _L10556_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g1038410442_ _g1038510446_)))
                                _body1043610549_
                                _e1042010517_
                                _hd1042110520_))))))
               (_loop1043110529_ _target1042810523_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1038410442_
                                                      _g1038510446_)))))
                                           (_g1038410442_ _g1038510446_))
                                       (_g1038410442_ _g1038510446_)))))))
                   (_loop1041410475_ _target1041110469_ '() '()))
                 (_g1038410442_ _g1038510446_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1038410442_ _g1038510446_))
                                           (_g1038410442_ _g1038510446_))))
                                   (_g1038410442_ _g1038510446_))))
                           (_g1038410442_ _g1038510446_)))))
                (let ((_g1038210862_
                       (lambda (_g1038510796_)
                         (if (gx#stx-pair? _g1038510796_)
                             (let ((_e1039010799_ (gx#syntax-e _g1038510796_)))
                               (let ((_hd1039110803_ (##car _e1039010799_))
                                     (_tl1039210806_ (##cdr _e1039010799_)))
                                 (if (gx#stx-pair? _tl1039210806_)
                                     (let ((_e1039310809_
                                            (gx#syntax-e _tl1039210806_)))
                                       (let ((_hd1039410813_
                                              (##car _e1039310809_))
                                             (_tl1039510816_
                                              (##cdr _e1039310809_)))
                                         (if (gx#stx-pair? _hd1039410813_)
                                             (let ((_e1039610819_
                                                    (gx#syntax-e
                                                     _hd1039410813_)))
                                               (let ((_hd1039710823_
                                                      (##car _e1039610819_))
                                                     (_tl1039810826_
                                                      (##cdr _e1039610819_)))
                                                 (if (gx#stx-pair?
                                                      _tl1039810826_)
                                                     (let ((_e1039910829_
                                                            (gx#syntax-e
                                                             _tl1039810826_)))
                                                       (let ((_hd1040010833_
                                                              (##car _e1039910829_))
                                                             (_tl1040110836_
                                                              (##cdr _e1039910829_)))
                                                         (if (gx#stx-null?
                                                              _tl1040110836_)
                                                             ((lambda (_L10839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10841_
                               _L10842_
                               _L10843_)
                        (if (_let-head?10379_ _L10842_)
                            (cons _L10843_
                                  (cons (cons (cons _L10842_
                                                    (cons _L10841_ '()))
                                              '())
                                        _L10839_))
                            (_g1038310792_ _g1038510796_)))
                      _tl1039510816_
                      _hd1040010833_
                      _hd1039710823_
                      _hd1039110803_)
                     (_g1038310792_ _g1038510796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1038310792_
                                                      _g1038510796_))))
                                             (_g1038310792_ _g1038510796_))))
                                     (_g1038310792_ _g1038510796_))))
                             (_g1038310792_ _g1038510796_)))))
                  (_g1038210862_ _stx10376_))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet*|
      (lambda (_$stx10990_)
        (let ((_g1099511040_
               (lambda (_g1099611036_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1099611036_))))
          (let ((_g1099411141_
                 (lambda (_g1099611044_)
                   (if (gx#stx-pair? _g1099611044_)
                       (let ((_e1101711047_ (gx#syntax-e _g1099611044_)))
                         (let ((_hd1101811051_ (##car _e1101711047_))
                               (_tl1101911054_ (##cdr _e1101711047_)))
                           (if (gx#stx-pair? _tl1101911054_)
                               (let ((_e1102011057_
                                      (gx#syntax-e _tl1101911054_)))
                                 (let ((_hd1102111061_ (##car _e1102011057_))
                                       (_tl1102211064_ (##cdr _e1102011057_)))
                                   (if (gx#stx-pair? _hd1102111061_)
                                       (let ((_e1102311067_
                                              (gx#syntax-e _hd1102111061_)))
                                         (let ((_hd1102411071_
                                                (##car _e1102311067_))
                                               (_tl1102511074_
                                                (##cdr _e1102311067_)))
                                           (if (gx#stx-pair/null?
                                                _tl1102211064_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1102211064_)
                                                         '0)
                                                   (let ((_g29472_
                                                          (gx#syntax-split-splice
                                                           _tl1102211064_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29473_
                                                              (values-count
                                                               _g29472_)))
                                                         (if (not (fx= _g29473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29473_)))
               (let ((_target1102611077_ (values-ref _g29472_ 0))
                     (_tl1102811080_ (values-ref _g29472_ 1)))
                 (if (gx#stx-null? _tl1102811080_)
                     (letrec ((_loop1102911083_
                               (lambda (_hd1102711087_ _body1103311090_)
                                 (if (gx#stx-pair? _hd1102711087_)
                                     (let ((_e1103011093_
                                            (gx#syntax-e _hd1102711087_)))
                                       (let ((_lp-hd1103111097_
                                              (##car _e1103011093_))
                                             (_lp-tl1103211100_
                                              (##cdr _e1103011093_)))
                                         (_loop1102911083_
                                          _lp-tl1103211100_
                                          (cons _lp-hd1103111097_
                                                _body1103311090_))))
                                     (let ((_body1103411103_
                                            (reverse _body1103311090_)))
                                       ((lambda (_L11107_
                                                 _L11109_
                                                 _L11110_
                                                 _L11111_)
                                          (cons (gx#datum->syntax '#f 'alet)
                                                (cons (cons _L11110_ '())
                                                      (cons (cons _L11111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L11109_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1113211135_ _g1113311138_)
                                           (cons _g1113211135_ _g1113311138_))
                                         '()
                                         _L11107_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body1103411103_
                                        _tl1102511074_
                                        _hd1102411071_
                                        _hd1101811051_))))))
                       (_loop1102911083_ _target1102611077_ '()))
                     (_g1099511040_ _g1099611044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1099511040_
                                                    _g1099611044_))
                                               (_g1099511040_ _g1099611044_))))
                                       (_g1099511040_ _g1099611044_))))
                               (_g1099511040_ _g1099611044_))))
                       (_g1099511040_ _g1099611044_)))))
            (let ((_g1099311223_
                   (lambda (_g1099611145_)
                     (if (gx#stx-pair? _g1099611145_)
                         (let ((_e1099811148_ (gx#syntax-e _g1099611145_)))
                           (let ((_hd1099911152_ (##car _e1099811148_))
                                 (_tl1100011155_ (##cdr _e1099811148_)))
                             (if (gx#stx-pair? _tl1100011155_)
                                 (let ((_e1100111158_
                                        (gx#syntax-e _tl1100011155_)))
                                   (let ((_hd1100211162_ (##car _e1100111158_))
                                         (_tl1100311165_
                                          (##cdr _e1100111158_)))
                                     (if (gx#stx-null? _hd1100211162_)
                                         (if (gx#stx-pair/null? _tl1100311165_)
                                             (if (fx>= (gx#stx-length
                                                        _tl1100311165_)
                                                       '0)
                                                 (let ((_g29474_
                                                        (gx#syntax-split-splice
                                                         _tl1100311165_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29475_
                                                            (values-count
                                                             _g29474_)))
                                                       (if (not (fx= _g29475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1100411168_
                                                            (values-ref
                                                             _g29474_
                                                             0))
                                                           (_tl1100611171_
                                                            (values-ref
                                                             _g29474_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1100611171_)
                                                           (letrec ((_loop1100711174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1100511178_ _body1101111181_)
                               (if (gx#stx-pair? _hd1100511178_)
                                   (let ((_e1100811184_
                                          (gx#syntax-e _hd1100511178_)))
                                     (let ((_lp-hd1100911188_
                                            (##car _e1100811184_))
                                           (_lp-tl1101011191_
                                            (##cdr _e1100811184_)))
                                       (_loop1100711174_
                                        _lp-tl1101011191_
                                        (cons _lp-hd1100911188_
                                              _body1101111181_))))
                                   (let ((_body1101211194_
                                          (reverse _body1101111181_)))
                                     ((lambda (_L11198_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1121411217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1121511220_)
                       (cons _g1121411217_ _g1121511220_))
                     '()
                     _L11198_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body1101211194_))))))
                     (_loop1100711174_ _target1100411168_ '()))
                   (_g1099411141_ _g1099611145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1099411141_ _g1099611145_))
                                             (_g1099411141_ _g1099611145_))
                                         (_g1099411141_ _g1099611145_))))
                                 (_g1099411141_ _g1099611145_))))
                         (_g1099411141_ _g1099611145_)))))
              (_g1099311223_ _$stx10990_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#@list|
      (lambda (_$stx11229_)
        (let ((_g1123811295_
               (lambda (_g1123911291_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1123911291_))))
          (let ((_g1123711324_
                 (lambda (_g1123911299_)
                   (if (gx#stx-pair? _g1123911299_)
                       (let ((_e1128711302_ (gx#syntax-e _g1123911299_)))
                         (let ((_hd1128811306_ (##car _e1128711302_))
                               (_tl1128911309_ (##cdr _e1128711302_)))
                           ((lambda (_L11312_) _L11312_) _tl1128911309_)))
                       (_g1123811295_ _g1123911299_)))))
            (let ((_g1123611368_
                   (lambda (_g1123911328_)
                     (if (gx#stx-pair? _g1123911328_)
                         (let ((_e1128011331_ (gx#syntax-e _g1123911328_)))
                           (let ((_hd1128111335_ (##car _e1128011331_))
                                 (_tl1128211338_ (##cdr _e1128011331_)))
                             (if (gx#stx-pair? _tl1128211338_)
                                 (let ((_e1128311341_
                                        (gx#syntax-e _tl1128211338_)))
                                   (let ((_hd1128411345_ (##car _e1128311341_))
                                         (_tl1128511348_
                                          (##cdr _e1128311341_)))
                                     ((lambda (_L11351_ _L11353_ _L11354_)
                                        (cons (gx#datum->syntax '#f 'cons)
                                              (cons _L11353_
                                                    (cons (cons _L11354_
                                                                _L11351_)
                                                          '()))))
                                      _tl1128511348_
                                      _hd1128411345_
                                      _hd1128111335_)))
                                 (_g1123711324_ _g1123911328_))))
                         (_g1123711324_ _g1123911328_)))))
              (let ((_g1123511426_
                     (lambda (_g1123911372_)
                       (if (gx#stx-pair? _g1123911372_)
                           (let ((_e1126811375_ (gx#syntax-e _g1123911372_)))
                             (let ((_hd1126911379_ (##car _e1126811375_))
                                   (_tl1127011382_ (##cdr _e1126811375_)))
                               (if (gx#stx-pair? _tl1127011382_)
                                   (let ((_e1127111385_
                                          (gx#syntax-e _tl1127011382_)))
                                     (let ((_hd1127211389_
                                            (##car _e1127111385_))
                                           (_tl1127311392_
                                            (##cdr _e1127111385_)))
                                       (if (gx#stx-pair? _tl1127311392_)
                                           (let ((_e1127411395_
                                                  (gx#syntax-e
                                                   _tl1127311392_)))
                                             (let ((_hd1127511399_
                                                    (##car _e1127411395_))
                                                   (_tl1127611402_
                                                    (##cdr _e1127411395_)))
                                               ((lambda (_L11405_
                                                         _L11407_
                                                         _L11408_
                                                         _L11409_)
                                                  (if (gx#ellipsis? _L11407_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'foldr)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons)
                          (cons (cons _L11409_ _L11405_) (cons _L11408_ '()))))
              (_g1123611368_ _g1123911372_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1127611402_
                                                _hd1127511399_
                                                _hd1127211389_
                                                _hd1126911379_)))
                                           (_g1123611368_ _g1123911372_))))
                                   (_g1123611368_ _g1123911372_))))
                           (_g1123611368_ _g1123911372_)))))
                (let ((_g1123411480_
                       (lambda (_g1123911430_)
                         (if (gx#stx-pair? _g1123911430_)
                             (let ((_e1125511433_ (gx#syntax-e _g1123911430_)))
                               (let ((_hd1125611437_ (##car _e1125511433_))
                                     (_tl1125711440_ (##cdr _e1125511433_)))
                                 (if (gx#stx-pair? _tl1125711440_)
                                     (let ((_e1125811443_
                                            (gx#syntax-e _tl1125711440_)))
                                       (let ((_hd1125911447_
                                              (##car _e1125811443_))
                                             (_tl1126011450_
                                              (##cdr _e1125811443_)))
                                         (if (gx#stx-pair? _tl1126011450_)
                                             (let ((_e1126111453_
                                                    (gx#syntax-e
                                                     _tl1126011450_)))
                                               (let ((_hd1126211457_
                                                      (##car _e1126111453_))
                                                     (_tl1126311460_
                                                      (##cdr _e1126111453_)))
                                                 (if (gx#stx-null?
                                                      _tl1126311460_)
                                                     ((lambda (_L11463_
                                                               _L11465_)
                                                        (if (gx#ellipsis?
                                                             _L11463_)
                                                            _L11465_
                                                            (_g1123511426_
                                                             _g1123911430_)))
                                                      _hd1126211457_
                                                      _hd1125911447_)
                                                     (_g1123511426_
                                                      _g1123911430_))))
                                             (_g1123511426_ _g1123911430_))))
                                     (_g1123511426_ _g1123911430_))))
                             (_g1123511426_ _g1123911430_)))))
                  (let ((_g1123311532_
                         (lambda (_g1123911484_)
                           (if (gx#stx-pair? _g1123911484_)
                               (let ((_e1124411487_
                                      (gx#syntax-e _g1123911484_)))
                                 (let ((_hd1124511491_ (##car _e1124411487_))
                                       (_tl1124611494_ (##cdr _e1124411487_)))
                                   (if (gx#stx-pair? _tl1124611494_)
                                       (let ((_e1124711497_
                                              (gx#syntax-e _tl1124611494_)))
                                         (let ((_hd1124811501_
                                                (##car _e1124711497_))
                                               (_tl1124911504_
                                                (##cdr _e1124711497_)))
                                           (if (gx#stx-datum? _hd1124811501_)
                                               (if (equal? (gx#stx-e
                                                            _hd1124811501_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl1124911504_)
                                                       (let ((_e1125011507_
                                                              (gx#syntax-e
                                                               _tl1124911504_)))
                                                         (let ((_hd1125111511_
                                                                (##car _e1125011507_))
                                                               (_tl1125211514_
                                                                (##cdr _e1125011507_)))
                                                           (if (gx#stx-null?
                                                                _tl1125211514_)
                                                               ((lambda (_L11517_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11517_)
                        _hd1125111511_)
                       (_g1123411480_ _g1123911484_))))
               (_g1123411480_ _g1123911484_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1123411480_
                                                    _g1123911484_))
                                               (_g1123411480_ _g1123911484_))))
                                       (_g1123411480_ _g1123911484_))))
                               (_g1123411480_ _g1123911484_)))))
                    (let ((_g1123211553_
                           (lambda (_g1123911536_)
                             (if (gx#stx-pair? _g1123911536_)
                                 (let ((_e1124011539_
                                        (gx#syntax-e _g1123911536_)))
                                   (let ((_hd1124111543_ (##car _e1124011539_))
                                         (_tl1124211546_
                                          (##cdr _e1124011539_)))
                                     (if (gx#stx-null? _tl1124211546_)
                                         ((lambda ()
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons '() '()))))
                                         (_g1123311532_ _g1123911536_))))
                                 (_g1123311532_ _g1123911536_)))))
                      (_g1123211553_ _$stx11229_))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#quasiquote|
      (lambda (_stx11557_)
        (letrec ((_simple-quote?11560_
                  (lambda (_e12252_)
                    (let ((_g1226012297_
                           (lambda (_g1226112293_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1226112293_))))
                      (let ((_g1225912308_
                             (lambda (_g1226112301_) ((lambda () '#t)))))
                        (let ((_g1225812331_
                               (lambda (_g1226112312_)
                                 (if (gx#stx-box? _g1226112312_)
                                     (let ((_e1229112315_
                                            (unbox (gx#syntax-e
                                                    _g1226112312_))))
                                       ((lambda (_L12319_)
                                          (_simple-quote?11560_ _L12319_))
                                        _e1229112315_))
                                     (_g1225912308_ _g1226112312_)))))
                          (let ((_g1225712394_
                                 (lambda (_g1226112335_)
                                   (if (gx#stx-vector? _g1226112335_)
                                       (let ((_e1228012338_
                                              (vector->list
                                               (gx#syntax-e _g1226112335_))))
                                         (if (gx#stx-pair/null? _e1228012338_)
                                             (if (fx>= (gx#stx-length
                                                        _e1228012338_)
                                                       '0)
                                                 (let ((_g29476_
                                                        (gx#syntax-split-splice
                                                         _e1228012338_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29477_
                                                            (values-count
                                                             _g29476_)))
                                                       (if (not (fx= _g29477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29477_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1228112342_
                                                            (values-ref
                                                             _g29476_
                                                             0))
                                                           (_tl1228312345_
                                                            (values-ref
                                                             _g29476_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1228312345_)
                                                           (letrec ((_loop1228412348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1228212352_ _e1228812355_)
                               (if (gx#stx-pair? _hd1228212352_)
                                   (let ((_e1228512358_
                                          (gx#syntax-e _hd1228212352_)))
                                     (let ((_lp-hd1228612362_
                                            (##car _e1228512358_))
                                           (_lp-tl1228712365_
                                            (##cdr _e1228512358_)))
                                       (_loop1228412348_
                                        _lp-tl1228712365_
                                        (cons _lp-hd1228612362_
                                              _e1228812355_))))
                                   (let ((_e1228912368_
                                          (reverse _e1228812355_)))
                                     ((lambda (_L12372_)
                                        (_simple-quote?11560_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1238512388_
                                                           _g1238612391_)
                                                    (cons _g1238512388_
                                                          _g1238612391_))
                                                  '()
                                                  _L12372_))))
                                      _e1228912368_))))))
                     (_loop1228412348_ _target1228112342_ '()))
                   (_g1225812331_ _g1226112335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1225812331_ _g1226112335_))
                                             (_g1225812331_ _g1226112335_)))
                                       (_g1225812331_ _g1226112335_)))))
                            (let ((_g1225612424_
                                   (lambda (_g1226112398_)
                                     (if (gx#stx-pair? _g1226112398_)
                                         (let ((_e1227612401_
                                                (gx#syntax-e _g1226112398_)))
                                           (let ((_hd1227712405_
                                                  (##car _e1227612401_))
                                                 (_tl1227812408_
                                                  (##cdr _e1227612401_)))
                                             ((lambda (_L12411_ _L12413_)
                                                (if (_simple-quote?11560_
                                                     _L12413_)
                                                    (_simple-quote?11560_
                                                     _L12411_)
                                                    '#f))
                                              _tl1227812408_
                                              _hd1227712405_)))
                                         (_g1225712394_ _g1226112398_)))))
                              (let ((_g1225512455_
                                     (lambda (_g1226112428_)
                                       (if (gx#stx-pair? _g1226112428_)
                                           (let ((_e1226812431_
                                                  (gx#syntax-e _g1226112428_)))
                                             (let ((_hd1226912435_
                                                    (##car _e1226812431_))
                                                   (_tl1227012438_
                                                    (##cdr _e1226812431_)))
                                               (if (gx#identifier?
                                                    _hd1226912435_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<sugar>::<sugar:2>[1]#_g29478_|
                                                        _hd1226912435_)
                                                       (if (gx#stx-pair?
                                                            _tl1227012438_)
                                                           (let ((_e1227112441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1227012438_)))
                     (let ((_hd1227212445_ (##car _e1227112441_))
                           (_tl1227312448_ (##cdr _e1227112441_)))
                       (if (gx#stx-null? _tl1227312448_)
                           ((lambda () '#f))
                           (_g1225612424_ _g1226112428_))))
                   (_g1225612424_ _g1226112428_))
               (_g1225612424_ _g1226112428_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1225612424_
                                                    _g1226112428_))))
                                           (_g1225612424_ _g1226112428_)))))
                                (let ((_g1225412486_
                                       (lambda (_g1226112459_)
                                         (if (gx#stx-pair? _g1226112459_)
                                             (let ((_e1226212462_
                                                    (gx#syntax-e
                                                     _g1226112459_)))
                                               (let ((_hd1226312466_
                                                      (##car _e1226212462_))
                                                     (_tl1226412469_
                                                      (##cdr _e1226212462_)))
                                                 (if (gx#identifier?
                                                      _hd1226312466_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29479_|
                                                          _hd1226312466_)
                                                         (if (gx#stx-pair?
                                                              _tl1226412469_)
                                                             (let ((_e1226512472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1226412469_)))
                       (let ((_hd1226612476_ (##car _e1226512472_))
                             (_tl1226712479_ (##cdr _e1226512472_)))
                         (if (gx#stx-null? _tl1226712479_)
                             ((lambda () '#f))
                             (_g1225512455_ _g1226112459_))))
                     (_g1225512455_ _g1226112459_))
                 (_g1225512455_ _g1226112459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1225512455_
                                                      _g1226112459_))))
                                             (_g1225512455_ _g1226112459_)))))
                                  (_g1225412486_ _e12252_))))))))))
                 (_generate11562_
                  (lambda (_e11624_ _d11626_)
                    (let ((_g1163511693_
                           (lambda (_g1163611689_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1163611689_))))
                      (let ((_g1163411710_
                             (lambda (_g1163611697_)
                               ((lambda (_L11700_)
                                  (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L11700_ '())))
                                _g1163611697_))))
                        (let ((_g1163311762_
                               (lambda (_g1163611714_)
                                 (if (gx#stx-box? _g1163611714_)
                                     (let ((_e1168611717_
                                            (unbox (gx#syntax-e
                                                    _g1163611714_))))
                                       ((lambda (_L11721_)
                                          (let ((_g1173111739_
                                                 (lambda (_g1173211735_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1173211735_))))
                                            (let ((_g1173011758_
                                                   (lambda (_g1173211743_)
                                                     ((lambda (_L11746_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'box)
                        (cons _L11746_ '()))))
              _g1173211743_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1173011758_
                                               (_generate11562_
                                                _L11721_
                                                _d11626_)))))
                                        _e1168611717_))
                                     (_g1163411710_ _g1163611714_)))))
                          (let ((_g1163211856_
                                 (lambda (_g1163611766_)
                                   (if (gx#stx-vector? _g1163611766_)
                                       (let ((_e1167511769_
                                              (vector->list
                                               (gx#syntax-e _g1163611766_))))
                                         (if (gx#stx-pair/null? _e1167511769_)
                                             (if (fx>= (gx#stx-length
                                                        _e1167511769_)
                                                       '0)
                                                 (let ((_g29480_
                                                        (gx#syntax-split-splice
                                                         _e1167511769_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29481_
                                                            (values-count
                                                             _g29480_)))
                                                       (if (not (fx= _g29481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29481_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1167611773_
                                                            (values-ref
                                                             _g29480_
                                                             0))
                                                           (_tl1167811776_
                                                            (values-ref
                                                             _g29480_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1167811776_)
                                                           (letrec ((_loop1167911779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1167711783_ _e1168311786_)
                               (if (gx#stx-pair? _hd1167711783_)
                                   (let ((_e1168011789_
                                          (gx#syntax-e _hd1167711783_)))
                                     (let ((_lp-hd1168111793_
                                            (##car _e1168011789_))
                                           (_lp-tl1168211796_
                                            (##cdr _e1168011789_)))
                                       (_loop1167911779_
                                        _lp-tl1168211796_
                                        (cons _lp-hd1168111793_
                                              _e1168311786_))))
                                   (let ((_e1168411799_
                                          (reverse _e1168311786_)))
                                     ((lambda (_L11803_)
                                        (let ((_g1181711825_
                                               (lambda (_g1181811821_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1181811821_))))
                                          (let ((_g1181611844_
                                                 (lambda (_g1181811829_)
                                                   ((lambda (_L11832_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'list->vector)
                                                              (cons _L11832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1181811829_))))
                                            (_g1181611844_
                                             (_generate11562_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1184711850_
                                                                _g1184811853_)
                                                         (cons _g1184711850_
                                                               _g1184811853_))
                                                       '()
                                                       _L11803_))
                                              _d11626_)))))
                                      _e1168411799_))))))
                     (_loop1167911779_ _target1167611773_ '()))
                   (_g1163311762_ _g1163611766_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1163311762_ _g1163611766_))
                                             (_g1163311762_ _g1163611766_)))
                                       (_g1163311762_ _g1163611766_)))))
                            (let ((_g1163111950_
                                   (lambda (_g1163611860_)
                                     (if (gx#stx-pair? _g1163611860_)
                                         (let ((_e1167111863_
                                                (gx#syntax-e _g1163611860_)))
                                           (let ((_hd1167211867_
                                                  (##car _e1167111863_))
                                                 (_tl1167311870_
                                                  (##cdr _e1167111863_)))
                                             ((lambda (_L11873_ _L11875_)
                                                (let ((_g1188611901_
                                                       (lambda (_g1188711897_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1188711897_))))
                                                  (let ((_g1188511946_
                                                         (lambda (_g1188711905_)
                                                           (if (gx#stx-pair?
                                                                _g1188711905_)
                                                               (let ((_e1189011908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1188711905_)))
                         (let ((_hd1189111912_ (##car _e1189011908_))
                               (_tl1189211915_ (##cdr _e1189011908_)))
                           (if (gx#stx-pair? _tl1189211915_)
                               (let ((_e1189311918_
                                      (gx#syntax-e _tl1189211915_)))
                                 (let ((_hd1189411922_ (##car _e1189311918_))
                                       (_tl1189511925_ (##cdr _e1189311918_)))
                                   (if (gx#stx-null? _tl1189511925_)
                                       ((lambda (_L11928_ _L11930_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'cons)
                                                  (cons _L11930_
                                                        (cons _L11928_ '())))))
                                        _hd1189411922_
                                        _hd1189111912_)
                                       (_g1188611901_ _g1188711905_))))
                               (_g1188611901_ _g1188711905_))))
                       (_g1188611901_ _g1188711905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1188511946_
                                                     (list (_generate11562_
                                                            _L11875_
                                                            _d11626_)
                                                           (_generate11562_
                                                            _L11873_
                                                            _d11626_))))))
                                              _tl1167311870_
                                              _hd1167211867_)))
                                         (_g1163211856_ _g1163611860_)))))
                              (let ((_g1163012035_
                                     (lambda (_g1163611954_)
                                       (if (gx#stx-pair? _g1163611954_)
                                           (let ((_e1166011957_
                                                  (gx#syntax-e _g1163611954_)))
                                             (let ((_hd1166111961_
                                                    (##car _e1166011957_))
                                                   (_tl1166211964_
                                                    (##cdr _e1166011957_)))
                                               (if (gx#stx-pair?
                                                    _hd1166111961_)
                                                   (let ((_e1166311967_
                                                          (gx#syntax-e
                                                           _hd1166111961_)))
                                                     (let ((_hd1166411971_
                                                            (##car _e1166311967_))
                                                           (_tl1166511974_
                                                            (##cdr _e1166311967_)))
                                                       (if (gx#identifier?
                                                            _hd1166411971_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g29482_|
                                                                _hd1166411971_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1166511974_)
                           (let ((_e1166611977_ (gx#syntax-e _tl1166511974_)))
                             (let ((_hd1166711981_ (##car _e1166611977_))
                                   (_tl1166811984_ (##cdr _e1166611977_)))
                               (if (gx#stx-null? _tl1166811984_)
                                   ((lambda (_L11987_ _L11989_)
                                      (if (fxzero? _d11626_)
                                          (let ((_g1200412012_
                                                 (lambda (_g1200512008_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1200512008_))))
                                            (let ((_g1200312031_
                                                   (lambda (_g1200512016_)
                                                     ((lambda (_L12019_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'foldr)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _L12019_ (cons _L11989_ '()))))))
              _g1200512016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1200312031_
                                               (_generate11562_
                                                _L11987_
                                                _d11626_))))
                                          (_g1163111950_ _g1163611954_)))
                                    _tl1166211964_
                                    _hd1166711981_)
                                   (_g1163111950_ _g1163611954_))))
                           (_g1163111950_ _g1163611954_))
                       (_g1163111950_ _g1163611954_))
                   (_g1163111950_ _g1163611954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1163111950_
                                                    _g1163611954_))))
                                           (_g1163111950_ _g1163611954_)))))
                                (let ((_g1162912106_
                                       (lambda (_g1163612039_)
                                         (if (gx#stx-pair? _g1163612039_)
                                             (let ((_e1165212042_
                                                    (gx#syntax-e
                                                     _g1163612039_)))
                                               (let ((_hd1165312046_
                                                      (##car _e1165212042_))
                                                     (_tl1165412049_
                                                      (##cdr _e1165212042_)))
                                                 (if (gx#identifier?
                                                      _hd1165312046_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29483_|
                                                          _hd1165312046_)
                                                         (if (gx#stx-pair?
                                                              _tl1165412049_)
                                                             (let ((_e1165512052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1165412049_)))
                       (let ((_hd1165612056_ (##car _e1165512052_))
                             (_tl1165712059_ (##cdr _e1165512052_)))
                         (if (gx#stx-null? _tl1165712059_)
                             ((lambda (_L12062_)
                                (if (fxzero? _d11626_)
                                    (cons (gx#datum->syntax '#f 'foldr)
                                          (cons (gx#datum->syntax '#f 'cons)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons '() '()))
                                                      (cons _L12062_ '()))))
                                    (let ((_g1207512083_
                                           (lambda (_g1207612079_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1207612079_))))
                                      (let ((_g1207412102_
                                             (lambda (_g1207612087_)
                                               ((lambda (_L12090_)
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
                        (cons _L12090_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1207612087_))))
                                        (_g1207412102_
                                         (_generate11562_
                                          _L12062_
                                          (fx1- _d11626_)))))))
                              _hd1165612056_)
                             (_g1163012035_ _g1163612039_))))
                     (_g1163012035_ _g1163612039_))
                 (_g1163012035_ _g1163612039_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1163012035_
                                                      _g1163612039_))))
                                             (_g1163012035_ _g1163612039_)))))
                                  (let ((_g1162812177_
                                         (lambda (_g1163612110_)
                                           (if (gx#stx-pair? _g1163612110_)
                                               (let ((_e1164512113_
                                                      (gx#syntax-e
                                                       _g1163612110_)))
                                                 (let ((_hd1164612117_
                                                        (##car _e1164512113_))
                                                       (_tl1164712120_
                                                        (##cdr _e1164512113_)))
                                                   (if (gx#identifier?
                                                        _hd1164612117_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:2>[1]#_g29484_|
                                                            _hd1164612117_)
                                                           (if (gx#stx-pair?
                                                                _tl1164712120_)
                                                               (let ((_e1164812123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1164712120_)))
                         (let ((_hd1164912127_ (##car _e1164812123_))
                               (_tl1165012130_ (##cdr _e1164812123_)))
                           (if (gx#stx-null? _tl1165012130_)
                               ((lambda (_L12133_)
                                  (if (fxzero? _d11626_)
                                      _L12133_
                                      (let ((_g1214612154_
                                             (lambda (_g1214712150_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1214712150_))))
                                        (let ((_g1214512173_
                                               (lambda (_g1214712158_)
                                                 ((lambda (_L12161_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons (gx#datum->syntax '#f 'unquote) '()))
                          (cons _L12161_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1214712158_))))
                                          (_g1214512173_
                                           (_generate11562_
                                            _L12133_
                                            (fx1- _d11626_)))))))
                                _hd1164912127_)
                               (_g1162912106_ _g1163612110_))))
                       (_g1162912106_ _g1163612110_))
                   (_g1162912106_ _g1163612110_))
               (_g1162912106_ _g1163612110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1162912106_
                                                _g1163612110_)))))
                                    (let ((_g1162712248_
                                           (lambda (_g1163612181_)
                                             (if (gx#stx-pair? _g1163612181_)
                                                 (let ((_e1163812184_
                                                        (gx#syntax-e
                                                         _g1163612181_)))
                                                   (let ((_hd1163912188_
                                                          (##car _e1163812184_))
                                                         (_tl1164012191_
                                                          (##cdr _e1163812184_)))
                                                     (if (gx#identifier?
                                                          _hd1163912188_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<sugar>::<sugar:2>[1]#_g29485_|
                                                              _hd1163912188_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1164012191_)
                         (let ((_e1164112194_ (gx#syntax-e _tl1164012191_)))
                           (let ((_hd1164212198_ (##car _e1164112194_))
                                 (_tl1164312201_ (##cdr _e1164112194_)))
                             (if (gx#stx-null? _tl1164312201_)
                                 ((lambda (_L12204_)
                                    (let ((_g1221712225_
                                           (lambda (_g1221812221_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1221812221_))))
                                      (let ((_g1221612244_
                                             (lambda (_g1221812229_)
                                               ((lambda (_L12232_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'quasiquote) '()))
                        (cons _L12232_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1221812229_))))
                                        (_g1221612244_
                                         (_generate11562_
                                          _L12204_
                                          (fx1+ _d11626_))))))
                                  _hd1164212198_)
                                 (_g1162812177_ _g1163612181_))))
                         (_g1162812177_ _g1163612181_))
                     (_g1162812177_ _g1163612181_))
                 (_g1162812177_ _g1163612181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1162812177_
                                                  _g1163612181_)))))
                                      (_g1162712248_ _e11624_)))))))))))))
          (let ((_g1156411578_
                 (lambda (_g1156511574_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1156511574_))))
            (let ((_g1156311620_
                   (lambda (_g1156511582_)
                     (if (gx#stx-pair? _g1156511582_)
                         (let ((_e1156711585_ (gx#syntax-e _g1156511582_)))
                           (let ((_hd1156811589_ (##car _e1156711585_))
                                 (_tl1156911592_ (##cdr _e1156711585_)))
                             (if (gx#stx-pair? _tl1156911592_)
                                 (let ((_e1157011595_
                                        (gx#syntax-e _tl1156911592_)))
                                   (let ((_hd1157111599_ (##car _e1157011595_))
                                         (_tl1157211602_
                                          (##cdr _e1157011595_)))
                                     (if (gx#stx-null? _tl1157211602_)
                                         ((lambda (_L11605_)
                                            (if (_simple-quote?11560_ _L11605_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L11605_ '()))
                                                (_generate11562_ _L11605_ '0)))
                                          _hd1157111599_)
                                         (_g1156411578_ _g1156511582_))))
                                 (_g1156411578_ _g1156511582_))))
                         (_g1156411578_ _g1156511582_)))))
              (_g1156311620_ _stx11557_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#delay|
      (lambda (_$stx12492_)
        (let ((_g1249712518_
               (lambda (_g1249812514_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1249812514_))))
          (let ((_g1249612559_
                 (lambda (_g1249812522_)
                   (if (gx#stx-pair? _g1249812522_)
                       (let ((_e1250712525_ (gx#syntax-e _g1249812522_)))
                         (let ((_hd1250812529_ (##car _e1250712525_))
                               (_tl1250912532_ (##cdr _e1250712525_)))
                           (if (gx#stx-pair? _tl1250912532_)
                               (let ((_e1251012535_
                                      (gx#syntax-e _tl1250912532_)))
                                 (let ((_hd1251112539_ (##car _e1251012535_))
                                       (_tl1251212542_ (##cdr _e1251012535_)))
                                   (if (gx#stx-null? _tl1251212542_)
                                       ((lambda (_L12545_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-promise)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda%)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12545_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _hd1251112539_)
                                       (_g1249712518_ _g1249812522_))))
                               (_g1249712518_ _g1249812522_))))
                       (_g1249712518_ _g1249812522_)))))
            (let ((_g1249512599_
                   (lambda (_g1249812563_)
                     (if (gx#stx-pair? _g1249812563_)
                         (let ((_e1250012566_ (gx#syntax-e _g1249812563_)))
                           (let ((_hd1250112570_ (##car _e1250012566_))
                                 (_tl1250212573_ (##cdr _e1250012566_)))
                             (if (gx#stx-pair? _tl1250212573_)
                                 (let ((_e1250312576_
                                        (gx#syntax-e _tl1250212573_)))
                                   (let ((_hd1250412580_ (##car _e1250312576_))
                                         (_tl1250512583_
                                          (##cdr _e1250312576_)))
                                     (if (gx#stx-null? _tl1250512583_)
                                         ((lambda (_L12586_)
                                            (if (gx#stx-datum? _L12586_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L12586_ '()))
                                                (_g1249612559_ _g1249812563_)))
                                          _hd1250412580_)
                                         (_g1249612559_ _g1249812563_))))
                                 (_g1249612559_ _g1249812563_))))
                         (_g1249612559_ _g1249812563_)))))
              (_g1249512599_ _$stx12492_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#cut|
      (lambda (_stx12603_)
        (let ((_generate12606_
               (lambda (_rest12725_)
                 ((letrec ((_lp12728_
                            (lambda (_rest12731_ _hd12733_ _body12734_)
                              (let ((_g1273712749_
                                     (lambda (_g1273812745_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1273812745_))))
                                (let ((_g1273612760_
                                       (lambda (_g1273812753_)
                                         ((lambda ()
                                            (values (reverse _hd12733_)
                                                    (reverse _body12734_)
                                                    '#f))))))
                                  (let ((_g1273512846_
                                         (lambda (_g1273812764_)
                                           (if (gx#stx-pair? _g1273812764_)
                                               (let ((_e1274112767_
                                                      (gx#syntax-e
                                                       _g1273812764_)))
                                                 (let ((_hd1274212771_
                                                        (##car _e1274112767_))
                                                       (_tl1274312774_
                                                        (##cdr _e1274112767_)))
                                                   ((lambda (_L12777_ _L12779_)
                                                      (let ((_g1279612803_
                                                             (lambda (_g1279712799_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1279712799_))))
                                                        (let ((_g1279512814_
                                                               (lambda (_g1279712807_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (_lp12728_
                             _L12777_
                             _hd12733_
                             (cons _L12779_ _body12734_)))))))
                  (let ((_g1279412828_
                         (lambda (_g1279712818_)
                           (if (gx#identifier? _g1279712818_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<sugar>::<sugar:2>[1]#_g29488_|
                                    _g1279712818_)
                                   ((lambda ()
                                      (if (gx#stx-null? _L12777_)
                                          (let ((_tail12825_ (gx#genident)))
                                            (values (foldl cons
                                                           _tail12825_
                                                           _hd12733_)
                                                    (foldl cons
                                                           (list _tail12825_)
                                                           _body12734_)
                                                    '#t))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx12603_
                                           _L12779_))))
                                   (_g1279512814_ _g1279712818_))
                               (_g1279512814_ _g1279712818_)))))
                    (let ((_g1279312842_
                           (lambda (_g1279712832_)
                             (if (gx#identifier? _g1279712832_)
                                 (if (gx#free-identifier=?
                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g29489_|
                                      _g1279712832_)
                                     ((lambda ()
                                        (let ((_arg12839_ (gx#genident)))
                                          (_lp12728_
                                           _L12777_
                                           (cons _arg12839_ _hd12733_)
                                           (cons _arg12839_ _body12734_)))))
                                     (_g1279412828_ _g1279712832_))
                                 (_g1279412828_ _g1279712832_)))))
                      (_g1279312842_ _L12779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1274312774_
                                                    _hd1274212771_)))
                                               (_g1273612760_
                                                _g1273812764_)))))
                                    (_g1273512846_ _rest12731_)))))))
                    _lp12728_)
                  _rest12725_
                  '()
                  '()))))
          (let ((_g1260912620_
                 (lambda (_g1261012616_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1261012616_))))
            (let ((_g1260812721_
                   (lambda (_g1261012624_)
                     (if (gx#stx-pair? _g1261012624_)
                         (let ((_e1261212627_ (gx#syntax-e _g1261012624_)))
                           (let ((_hd1261312631_ (##car _e1261212627_))
                                 (_tl1261412634_ (##cdr _e1261212627_)))
                             ((lambda (_L12637_)
                                (if (if (gx#stx-list? _L12637_)
                                        (not (gx#stx-null? _L12637_))
                                        '#f)
                                    (let ((_g29486_
                                           (_generate12606_ _L12637_)))
                                      (begin
                                        (let ((_g29487_
                                               (values-count _g29486_)))
                                          (if (not (fx= _g29487_ 3))
                                              (error "Context expects 3 values"
                                                     _g29487_)))
                                        (let ((_hd12650_
                                               (values-ref _g29486_ 0))
                                              (_body12652_
                                               (values-ref _g29486_ 1))
                                              (_tail?12653_
                                               (values-ref _g29486_ 2)))
                                          (let ((_g1265512663_
                                                 (lambda (_g1265612659_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1265612659_))))
                                            (let ((_g1265412717_
                                                   (lambda (_g1265612667_)
                                                     ((lambda (_L12670_)
                                                        (let ()
                                                          (let ((_g1268312691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1268412687_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1268412687_))))
                    (let ((_g1268212713_
                           (lambda (_g1268412695_)
                             ((lambda (_L12698_)
                                (let ()
                                  (let ()
                                    (if _tail?12653_
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12670_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'apply)
                        _L12698_)
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12670_
                                                    (cons _L12698_ '())))))))
                              _g1268412695_))))
                      (_g1268212713_ _body12652_)))))
              _g1265612667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1265412717_ _hd12650_))))))
                                    (_g1260912620_ _g1261012624_)))
                              _tl1261412634_)))
                         (_g1260912620_ _g1261012624_)))))
              (_g1260812721_ _stx12603_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<>|
      (lambda (_$stx12851_)
        (let ((_g1285412861_
               (lambda (_g1285512857_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1285512857_))))
          (_g1285412861_ _$stx12851_))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<...>|
      (lambda (_$stx12865_)
        (let ((_g1286812875_
               (lambda (_g1286912871_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1286912871_))))
          (_g1286812875_ _$stx12865_))))))
