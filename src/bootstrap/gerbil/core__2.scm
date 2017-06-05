(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<syntax-sugar>[1]#_g29369_|
    (gx#core-quote-syntax 'values))
  (begin
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx334_)
        (let ((_g337361_
               (lambda (_g338357_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g338357_))))
          (let ((_g336666_
                 (lambda (_g338365_)
                   (if (gx#stx-pair? _g338365_)
                       (let ((_e341368_ (gx#syntax-e _g338365_)))
                         (let ((_hd342372_ (##car _e341368_))
                               (_tl343375_ (##cdr _e341368_)))
                           (if (gx#stx-pair? _tl343375_)
                               (let ((_e344378_ (gx#syntax-e _tl343375_)))
                                 (let ((_hd345382_ (##car _e344378_))
                                       (_tl346385_ (##cdr _e344378_)))
                                   (if (gx#stx-pair/null? _tl346385_)
                                       (if (fx>= (gx#stx-length _tl346385_) '0)
                                           (let ((_g29355_
                                                  (gx#syntax-split-splice
                                                   _tl346385_
                                                   '0)))
                                             (begin
                                               (let ((_g29356_
                                                      (values-count _g29355_)))
                                                 (if (not (fx= _g29356_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29356_)))
                                               (let ((_target347388_
                                                      (values-ref _g29355_ 0))
                                                     (_tl349391_
                                                      (values-ref _g29355_ 1)))
                                                 (if (gx#stx-null? _tl349391_)
                                                     (letrec ((_loop350394_
                                                               (lambda (_hd348398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses354401_)
                         (if (gx#stx-pair? _hd348398_)
                             (let ((_e351404_ (gx#syntax-e _hd348398_)))
                               (let ((_lp-hd352408_ (##car _e351404_))
                                     (_lp-tl353411_ (##cdr _e351404_)))
                                 (_loop350394_
                                  _lp-tl353411_
                                  (cons _lp-hd352408_ _clauses354401_))))
                             (let ((_clauses355414_ (reverse _clauses354401_)))
                               ((lambda (_L418_ _L420_)
                                  (if (gx#identifier-list? _L420_)
                                      (let ((_body583_
                                             (gx#stx-map
                                              (lambda (_clause440_)
                                                (let ((_g444471_
                                                       (lambda (_g445467_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g445467_))))
                                                  (let ((_g443529_
                                                         (lambda (_g445475_)
                                                           (if (gx#stx-pair?
                                                                _g445475_)
                                                               (let ((_e457478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g445475_)))
                         (let ((_hd458482_ (##car _e457478_))
                               (_tl459485_ (##cdr _e457478_)))
                           (if (gx#stx-pair? _tl459485_)
                               (let ((_e460488_ (gx#syntax-e _tl459485_)))
                                 (let ((_hd461492_ (##car _e460488_))
                                       (_tl462495_ (##cdr _e460488_)))
                                   (if (gx#stx-pair? _tl462495_)
                                       (let ((_e463498_
                                              (gx#syntax-e _tl462495_)))
                                         (let ((_hd464502_ (##car _e463498_))
                                               (_tl465505_ (##cdr _e463498_)))
                                           (if (gx#stx-null? _tl465505_)
                                               ((lambda (_L508_ _L510_ _L511_)
                                                  (cons _L511_
                                                        (cons _L510_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons _L508_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd464502_
                                                _hd461492_
                                                _hd458482_)
                                               (_g444471_ _g445475_))))
                                       (_g444471_ _g445475_))))
                               (_g444471_ _g445475_))))
                       (_g444471_ _g445475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g442571_
                                                           (lambda (_g445533_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g445533_)
                         (let ((_e448536_ (gx#syntax-e _g445533_)))
                           (let ((_hd449540_ (##car _e448536_))
                                 (_tl450543_ (##cdr _e448536_)))
                             (if (gx#stx-pair? _tl450543_)
                                 (let ((_e451546_ (gx#syntax-e _tl450543_)))
                                   (let ((_hd452550_ (##car _e451546_))
                                         (_tl453553_ (##cdr _e451546_)))
                                     (if (gx#stx-null? _tl453553_)
                                         ((lambda (_L556_ _L558_)
                                            (cons _L558_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax)
                                                              (cons _L556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd452550_
                                          _hd449540_)
                                         (_g443529_ _g445533_))))
                                 (_g443529_ _g445533_))))
                         (_g443529_ _g445533_)))))
              (_g442571_ _clause440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g574577_
                                                                _g575580_)
                                                         (cons _g574577_
                                                               _g575580_))
                                                       '()
                                                       _L418_)))))
                                        (let ((_g586603_
                                               (lambda (_g587599_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g587599_))))
                                          (let ((_g585662_
                                                 (lambda (_g587607_)
                                                   (if (gx#stx-pair/null?
                                                        _g587607_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g587607_)
                         '0)
                   (let ((_g29357_ (gx#syntax-split-splice _g587607_ '0)))
                     (begin
                       (let ((_g29358_ (values-count _g29357_)))
                         (if (not (fx= _g29358_ 2))
                             (error "Context expects 2 values" _g29358_)))
                       (let ((_target589610_ (values-ref _g29357_ 0))
                             (_tl591613_ (values-ref _g29357_ 1)))
                         (if (gx#stx-null? _tl591613_)
                             (letrec ((_loop592616_
                                       (lambda (_hd590620_ _clause596623_)
                                         (if (gx#stx-pair? _hd590620_)
                                             (let ((_e593626_
                                                    (gx#syntax-e _hd590620_)))
                                               (let ((_lp-hd594630_
                                                      (##car _e593626_))
                                                     (_lp-tl595633_
                                                      (##cdr _e593626_)))
                                                 (_loop592616_
                                                  _lp-tl595633_
                                                  (cons _lp-hd594630_
                                                        _clause596623_))))
                                             (let ((_clause597636_
                                                    (reverse _clause596623_)))
                                               ((lambda (_L640_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda%)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                  (cons (gx#datum->syntax '#f '$stx)
                                        (cons _L420_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g653656_
                                                                _g654659_)
                                                         (cons _g653656_
                                                               _g654659_))
                                                       '()
                                                       _L640_)))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _clause597636_))))))
                               (_loop592616_ _target589610_ '()))
                             (_g586603_ _g587607_)))))
                   (_g586603_ _g587607_))
               (_g586603_ _g587607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g585662_ _body583_))))
                                      (_g337361_ _g338365_)))
                                _clauses355414_
                                _hd345382_))))))
               (_loop350394_ _target347388_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g337361_ _g338365_)))))
                                           (_g337361_ _g338365_))
                                       (_g337361_ _g338365_))))
                               (_g337361_ _g338365_))))
                       (_g337361_ _g338365_)))))
            (_g336666_ _stx334_)))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx672_)
        (let ((_g677762_
               (lambda (_g678758_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g678758_))))
          (let ((_g676923_
                 (lambda (_g678766_)
                   (if (gx#stx-pair? _g678766_)
                       (let ((_e725769_ (gx#syntax-e _g678766_)))
                         (let ((_hd726773_ (##car _e725769_))
                               (_tl727776_ (##cdr _e725769_)))
                           (if (gx#stx-pair? _tl727776_)
                               (let ((_e728779_ (gx#syntax-e _tl727776_)))
                                 (let ((_hd729783_ (##car _e728779_))
                                       (_tl730786_ (##cdr _e728779_)))
                                   (if (gx#stx-pair/null? _hd729783_)
                                       (if (fx>= (gx#stx-length _hd729783_) '0)
                                           (let ((_g29359_
                                                  (gx#syntax-split-splice
                                                   _hd729783_
                                                   '0)))
                                             (begin
                                               (let ((_g29360_
                                                      (values-count _g29359_)))
                                                 (if (not (fx= _g29360_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29360_)))
                                               (let ((_target731789_
                                                      (values-ref _g29359_ 0))
                                                     (_tl733792_
                                                      (values-ref _g29359_ 1)))
                                                 (if (gx#stx-null? _tl733792_)
                                                     (letrec ((_loop734795_
                                                               (lambda (_hd732799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e738802_
                                _pat739804_)
                         (if (gx#stx-pair? _hd732799_)
                             (let ((_e735807_ (gx#syntax-e _hd732799_)))
                               (let ((_lp-hd736811_ (##car _e735807_))
                                     (_lp-tl737814_ (##cdr _e735807_)))
                                 (if (gx#stx-pair? _lp-hd736811_)
                                     (let ((_e742817_
                                            (gx#syntax-e _lp-hd736811_)))
                                       (let ((_hd743821_ (##car _e742817_))
                                             (_tl744824_ (##cdr _e742817_)))
                                         (if (gx#stx-pair? _tl744824_)
                                             (let ((_e745827_
                                                    (gx#syntax-e _tl744824_)))
                                               (let ((_hd746831_
                                                      (##car _e745827_))
                                                     (_tl747834_
                                                      (##cdr _e745827_)))
                                                 (if (gx#stx-null? _tl747834_)
                                                     (_loop734795_
                                                      _lp-tl737814_
                                                      (cons _hd746831_
                                                            _e738802_)
                                                      (cons _hd743821_
                                                            _pat739804_))
                                                     (_g677762_ _g678766_))))
                                             (_g677762_ _g678766_))))
                                     (_g677762_ _g678766_))))
                             (let ((_e740837_ (reverse _e738802_))
                                   (_pat741840_ (reverse _pat739804_)))
                               (if (gx#stx-pair/null? _tl730786_)
                                   (if (fx>= (gx#stx-length _tl730786_) '0)
                                       (let ((_g29361_
                                              (gx#syntax-split-splice
                                               _tl730786_
                                               '0)))
                                         (begin
                                           (let ((_g29362_
                                                  (values-count _g29361_)))
                                             (if (not (fx= _g29362_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29362_)))
                                           (let ((_target748843_
                                                  (values-ref _g29361_ 0))
                                                 (_tl750846_
                                                  (values-ref _g29361_ 1)))
                                             (if (gx#stx-null? _tl750846_)
                                                 (letrec ((_loop751849_
                                                           (lambda (_hd749853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body755856_)
                     (if (gx#stx-pair? _hd749853_)
                         (let ((_e752859_ (gx#syntax-e _hd749853_)))
                           (let ((_lp-hd753863_ (##car _e752859_))
                                 (_lp-tl754866_ (##cdr _e752859_)))
                             (_loop751849_
                              _lp-tl754866_
                              (cons _lp-hd753863_ _body755856_))))
                         (let ((_body756869_ (reverse _body755856_)))
                           ((lambda (_L873_ _L875_ _L876_)
                              (cons (gx#datum->syntax '#f 'syntax-case)
                                    (cons (cons (gx#datum->syntax '#f 'list)
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g898905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g899908_)
                   (cons _g898905_ _g899908_))
                 '()
                 _L875_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons '()
                                                (cons (cons (begin
                                                              '#!void
                                                              (foldr (lambda (_g900911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g901914_)
                               (cons _g900911_ _g901914_))
                             '()
                             _L876_))
                    (cons (cons (gx#datum->syntax '#f 'let-values)
                                (cons '()
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g902917_ _g903920_)
                                                 (cons _g902917_ _g903920_))
                                               '()
                                               _L873_))))
                          '()))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            _body756869_
                            _e740837_
                            _pat741840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop751849_
                                                    _target748843_
                                                    '()))
                                                 (_g677762_ _g678766_)))))
                                       (_g677762_ _g678766_))
                                   (_g677762_ _g678766_)))))))
               (_loop734795_ _target731789_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g677762_ _g678766_)))))
                                           (_g677762_ _g678766_))
                                       (_g677762_ _g678766_))))
                               (_g677762_ _g678766_))))
                       (_g677762_ _g678766_)))))
            (let ((_g6751045_
                   (lambda (_g678927_)
                     (if (gx#stx-pair? _g678927_)
                         (let ((_e698930_ (gx#syntax-e _g678927_)))
                           (let ((_hd699934_ (##car _e698930_))
                                 (_tl700937_ (##cdr _e698930_)))
                             (if (gx#stx-pair? _tl700937_)
                                 (let ((_e701940_ (gx#syntax-e _tl700937_)))
                                   (let ((_hd702944_ (##car _e701940_))
                                         (_tl703947_ (##cdr _e701940_)))
                                     (if (gx#stx-pair? _hd702944_)
                                         (let ((_e704950_
                                                (gx#syntax-e _hd702944_)))
                                           (let ((_hd705954_ (##car _e704950_))
                                                 (_tl706957_
                                                  (##cdr _e704950_)))
                                             (if (gx#stx-pair? _hd705954_)
                                                 (let ((_e707960_
                                                        (gx#syntax-e
                                                         _hd705954_)))
                                                   (let ((_hd708964_
                                                          (##car _e707960_))
                                                         (_tl709967_
                                                          (##cdr _e707960_)))
                                                     (if (gx#stx-pair?
                                                          _tl709967_)
                                                         (let ((_e710970_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl709967_)))
                   (let ((_hd711974_ (##car _e710970_))
                         (_tl712977_ (##cdr _e710970_)))
                     (if (gx#stx-null? _tl712977_)
                         (if (gx#stx-null? _tl706957_)
                             (if (gx#stx-pair/null? _tl703947_)
                                 (if (fx>= (gx#stx-length _tl703947_) '0)
                                     (let ((_g29363_
                                            (gx#syntax-split-splice
                                             _tl703947_
                                             '0)))
                                       (begin
                                         (let ((_g29364_
                                                (values-count _g29363_)))
                                           (if (not (fx= _g29364_ 2))
                                               (error "Context expects 2 values"
                                                      _g29364_)))
                                         (let ((_target713980_
                                                (values-ref _g29363_ 0))
                                               (_tl715983_
                                                (values-ref _g29363_ 1)))
                                           (if (gx#stx-null? _tl715983_)
                                               (letrec ((_loop716986_
                                                         (lambda (_hd714990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body720993_)
                   (if (gx#stx-pair? _hd714990_)
                       (let ((_e717996_ (gx#syntax-e _hd714990_)))
                         (let ((_lp-hd7181000_ (##car _e717996_))
                               (_lp-tl7191003_ (##cdr _e717996_)))
                           (_loop716986_
                            _lp-tl7191003_
                            (cons _lp-hd7181000_ _body720993_))))
                       (let ((_body7211006_ (reverse _body720993_)))
                         ((lambda (_L1010_ _L1012_ _L1013_)
                            (cons (gx#datum->syntax '#f 'syntax-case)
                                  (cons _L1012_
                                        (cons '()
                                              (cons (cons _L1013_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'let-values)
                              (cons '()
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g10361039_ _g10371042_)
                                               (cons _g10361039_ _g10371042_))
                                             '()
                                             _L1010_))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                          _body7211006_
                          _hd711974_
                          _hd708964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop716986_
                                                  _target713980_
                                                  '()))
                                               (_g676923_ _g678927_)))))
                                     (_g676923_ _g678927_))
                                 (_g676923_ _g678927_))
                             (_g676923_ _g678927_))
                         (_g676923_ _g678927_))))
                 (_g676923_ _g678927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g676923_ _g678927_))))
                                         (_g676923_ _g678927_))))
                                 (_g676923_ _g678927_))))
                         (_g676923_ _g678927_)))))
              (let ((_g6741127_
                     (lambda (_g6781049_)
                       (if (gx#stx-pair? _g6781049_)
                           (let ((_e6801052_ (gx#syntax-e _g6781049_)))
                             (let ((_hd6811056_ (##car _e6801052_))
                                   (_tl6821059_ (##cdr _e6801052_)))
                               (if (gx#stx-pair? _tl6821059_)
                                   (let ((_e6831062_
                                          (gx#syntax-e _tl6821059_)))
                                     (let ((_hd6841066_ (##car _e6831062_))
                                           (_tl6851069_ (##cdr _e6831062_)))
                                       (if (gx#stx-null? _hd6841066_)
                                           (if (gx#stx-pair/null? _tl6851069_)
                                               (if (fx>= (gx#stx-length
                                                          _tl6851069_)
                                                         '0)
                                                   (let ((_g29365_
                                                          (gx#syntax-split-splice
                                                           _tl6851069_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29366_
                                                              (values-count
                                                               _g29365_)))
                                                         (if (not (fx= _g29366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29366_)))
               (let ((_target6861072_ (values-ref _g29365_ 0))
                     (_tl6881075_ (values-ref _g29365_ 1)))
                 (if (gx#stx-null? _tl6881075_)
                     (letrec ((_loop6891078_
                               (lambda (_hd6871082_ _body6931085_)
                                 (if (gx#stx-pair? _hd6871082_)
                                     (let ((_e6901088_
                                            (gx#syntax-e _hd6871082_)))
                                       (let ((_lp-hd6911092_
                                              (##car _e6901088_))
                                             (_lp-tl6921095_
                                              (##cdr _e6901088_)))
                                         (_loop6891078_
                                          _lp-tl6921095_
                                          (cons _lp-hd6911092_
                                                _body6931085_))))
                                     (let ((_body6941098_
                                            (reverse _body6931085_)))
                                       ((lambda (_L1102_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g11181121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g11191124_)
                         (cons _g11181121_ _g11191124_))
                       '()
                       _L1102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body6941098_))))))
                       (_loop6891078_ _target6861072_ '()))
                     (_g6751045_ _g6781049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6751045_ _g6781049_))
                                               (_g6751045_ _g6781049_))
                                           (_g6751045_ _g6781049_))))
                                   (_g6751045_ _g6781049_))))
                           (_g6751045_ _g6781049_)))))
                (_g6741127_ _stx672_)))))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx1135_)
        (let ((_g11401217_
               (lambda (_g11411213_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g11411213_))))
          (let ((_g11391318_
                 (lambda (_g11411221_)
                   (if (gx#stx-pair? _g11411221_)
                       (let ((_e11941224_ (gx#syntax-e _g11411221_)))
                         (let ((_hd11951228_ (##car _e11941224_))
                               (_tl11961231_ (##cdr _e11941224_)))
                           (if (gx#stx-pair? _tl11961231_)
                               (let ((_e11971234_ (gx#syntax-e _tl11961231_)))
                                 (let ((_hd11981238_ (##car _e11971234_))
                                       (_tl11991241_ (##cdr _e11971234_)))
                                   (if (gx#stx-pair? _hd11981238_)
                                       (let ((_e12001244_
                                              (gx#syntax-e _hd11981238_)))
                                         (let ((_hd12011248_
                                                (##car _e12001244_))
                                               (_tl12021251_
                                                (##cdr _e12001244_)))
                                           (if (gx#stx-pair/null? _tl11991241_)
                                               (if (fx>= (gx#stx-length
                                                          _tl11991241_)
                                                         '0)
                                                   (let ((_g29367_
                                                          (gx#syntax-split-splice
                                                           _tl11991241_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29368_
                                                              (values-count
                                                               _g29367_)))
                                                         (if (not (fx= _g29368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29368_)))
               (let ((_target12031254_ (values-ref _g29367_ 0))
                     (_tl12051257_ (values-ref _g29367_ 1)))
                 (if (gx#stx-null? _tl12051257_)
                     (letrec ((_loop12061260_
                               (lambda (_hd12041264_ _body12101267_)
                                 (if (gx#stx-pair? _hd12041264_)
                                     (let ((_e12071270_
                                            (gx#syntax-e _hd12041264_)))
                                       (let ((_lp-hd12081274_
                                              (##car _e12071270_))
                                             (_lp-tl12091277_
                                              (##cdr _e12071270_)))
                                         (_loop12061260_
                                          _lp-tl12091277_
                                          (cons _lp-hd12081274_
                                                _body12101267_))))
                                     (let ((_body12111280_
                                            (reverse _body12101267_)))
                                       ((lambda (_L1284_
                                                 _L1286_
                                                 _L1287_
                                                 _L1288_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-syntax)
                                                (cons (cons _L1287_ '())
                                                      (cons (cons _L1288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1286_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g13091312_ _g13101315_)
                                           (cons _g13091312_ _g13101315_))
                                         '()
                                         _L1284_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body12111280_
                                        _tl12021251_
                                        _hd12011248_
                                        _hd11951228_))))))
                       (_loop12061260_ _target12031254_ '()))
                     (_g11401217_ _g11411221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g11401217_ _g11411221_))
                                               (_g11401217_ _g11411221_))))
                                       (_g11401217_ _g11411221_))))
                               (_g11401217_ _g11411221_))))
                       (_g11401217_ _g11411221_)))))
            (let ((_g11381456_
                   (lambda (_g11411322_)
                     (if (gx#stx-pair? _g11411322_)
                         (let ((_e11631325_ (gx#syntax-e _g11411322_)))
                           (let ((_hd11641329_ (##car _e11631325_))
                                 (_tl11651332_ (##cdr _e11631325_)))
                             (if (gx#stx-pair? _tl11651332_)
                                 (let ((_e11661335_
                                        (gx#syntax-e _tl11651332_)))
                                   (let ((_hd11671339_ (##car _e11661335_))
                                         (_tl11681342_ (##cdr _e11661335_)))
                                     (if (gx#stx-pair? _hd11671339_)
                                         (let ((_e11691345_
                                                (gx#syntax-e _hd11671339_)))
                                           (let ((_hd11701349_
                                                  (##car _e11691345_))
                                                 (_tl11711352_
                                                  (##cdr _e11691345_)))
                                             (if (gx#stx-pair? _hd11701349_)
                                                 (let ((_e11721355_
                                                        (gx#syntax-e
                                                         _hd11701349_)))
                                                   (let ((_hd11731359_
                                                          (##car _e11721355_))
                                                         (_tl11741362_
                                                          (##cdr _e11721355_)))
                                                     (if (gx#stx-pair?
                                                          _hd11731359_)
                                                         (let ((_e11751365_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd11731359_)))
                   (let ((_hd11761369_ (##car _e11751365_))
                         (_tl11771372_ (##cdr _e11751365_)))
                     (if (gx#identifier? _hd11761369_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<syntax-sugar>[1]#_g29369_|
                              _hd11761369_)
                             (if (gx#stx-pair? _tl11741362_)
                                 (let ((_e11781375_
                                        (gx#syntax-e _tl11741362_)))
                                   (let ((_hd11791379_ (##car _e11781375_))
                                         (_tl11801382_ (##cdr _e11781375_)))
                                     (if (gx#stx-null? _tl11801382_)
                                         (if (gx#stx-pair/null? _tl11681342_)
                                             (if (fx>= (gx#stx-length
                                                        _tl11681342_)
                                                       '0)
                                                 (let ((_g29370_
                                                        (gx#syntax-split-splice
                                                         _tl11681342_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29371_
                                                            (values-count
                                                             _g29370_)))
                                                       (if (not (fx= _g29371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29371_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target11811385_
                                                            (values-ref
                                                             _g29370_
                                                             0))
                                                           (_tl11831388_
                                                            (values-ref
                                                             _g29370_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl11831388_)
                                                           (letrec ((_loop11841391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd11821395_ _body11881398_)
                               (if (gx#stx-pair? _hd11821395_)
                                   (let ((_e11851401_
                                          (gx#syntax-e _hd11821395_)))
                                     (let ((_lp-hd11861405_
                                            (##car _e11851401_))
                                           (_lp-tl11871408_
                                            (##cdr _e11851401_)))
                                       (_loop11841391_
                                        _lp-tl11871408_
                                        (cons _lp-hd11861405_
                                              _body11881398_))))
                                   (let ((_body11891411_
                                          (reverse _body11881398_)))
                                     ((lambda (_L1415_
                                               _L1417_
                                               _L1418_
                                               _L1419_
                                               _L1420_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons (cons (cons _L1419_
                                                                (cons _L1418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _L1420_
                                                                (cons _L1417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (begin
                                '#!void
                                (foldr (lambda (_g14471450_ _g14481453_)
                                         (cons _g14471450_ _g14481453_))
                                       '()
                                       _L1415_))))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body11891411_
                                      _tl11711352_
                                      _hd11791379_
                                      _tl11771372_
                                      _hd11641329_))))))
                     (_loop11841391_ _target11811385_ '()))
                   (_g11391318_ _g11411322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g11391318_ _g11411322_))
                                             (_g11391318_ _g11411322_))
                                         (_g11391318_ _g11411322_))))
                                 (_g11391318_ _g11411322_))
                             (_g11391318_ _g11411322_))
                         (_g11391318_ _g11411322_))))
                 (_g11391318_ _g11411322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g11391318_ _g11411322_))))
                                         (_g11391318_ _g11411322_))))
                                 (_g11391318_ _g11411322_))))
                         (_g11391318_ _g11411322_)))))
              (let ((_g11371538_
                     (lambda (_g11411460_)
                       (if (gx#stx-pair? _g11411460_)
                           (let ((_e11431463_ (gx#syntax-e _g11411460_)))
                             (let ((_hd11441467_ (##car _e11431463_))
                                   (_tl11451470_ (##cdr _e11431463_)))
                               (if (gx#stx-pair? _tl11451470_)
                                   (let ((_e11461473_
                                          (gx#syntax-e _tl11451470_)))
                                     (let ((_hd11471477_ (##car _e11461473_))
                                           (_tl11481480_ (##cdr _e11461473_)))
                                       (if (gx#stx-null? _hd11471477_)
                                           (if (gx#stx-pair/null? _tl11481480_)
                                               (if (fx>= (gx#stx-length
                                                          _tl11481480_)
                                                         '0)
                                                   (let ((_g29372_
                                                          (gx#syntax-split-splice
                                                           _tl11481480_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29373_
                                                              (values-count
                                                               _g29372_)))
                                                         (if (not (fx= _g29373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29373_)))
               (let ((_target11491483_ (values-ref _g29372_ 0))
                     (_tl11511486_ (values-ref _g29372_ 1)))
                 (if (gx#stx-null? _tl11511486_)
                     (letrec ((_loop11521489_
                               (lambda (_hd11501493_ _body11561496_)
                                 (if (gx#stx-pair? _hd11501493_)
                                     (let ((_e11531499_
                                            (gx#syntax-e _hd11501493_)))
                                       (let ((_lp-hd11541503_
                                              (##car _e11531499_))
                                             (_lp-tl11551506_
                                              (##cdr _e11531499_)))
                                         (_loop11521489_
                                          _lp-tl11551506_
                                          (cons _lp-hd11541503_
                                                _body11561496_))))
                                     (let ((_body11571509_
                                            (reverse _body11561496_)))
                                       ((lambda (_L1513_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g15291532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g15301535_)
                         (cons _g15291532_ _g15301535_))
                       '()
                       _L1513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body11571509_))))))
                       (_loop11521489_ _target11491483_ '()))
                     (_g11381456_ _g11411460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g11381456_ _g11411460_))
                                               (_g11381456_ _g11411460_))
                                           (_g11381456_ _g11411460_))))
                                   (_g11381456_ _g11411460_))))
                           (_g11381456_ _g11411460_)))))
                (_g11371538_ _stx1135_)))))))
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1545_)
        (let ((_g15481566_
               (lambda (_g15491562_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g15491562_))))
          (let ((_g15471621_
                 (lambda (_g15491570_)
                   (if (gx#stx-pair? _g15491570_)
                       (let ((_e15521573_ (gx#syntax-e _g15491570_)))
                         (let ((_hd15531577_ (##car _e15521573_))
                               (_tl15541580_ (##cdr _e15521573_)))
                           (if (gx#stx-pair? _tl15541580_)
                               (let ((_e15551583_ (gx#syntax-e _tl15541580_)))
                                 (let ((_hd15561587_ (##car _e15551583_))
                                       (_tl15571590_ (##cdr _e15551583_)))
                                   (if (gx#stx-pair? _tl15571590_)
                                       (let ((_e15581593_
                                              (gx#syntax-e _tl15571590_)))
                                         (let ((_hd15591597_
                                                (##car _e15581593_))
                                               (_tl15601600_
                                                (##cdr _e15581593_)))
                                           (if (gx#stx-null? _tl15601600_)
                                               ((lambda (_L1603_ _L1605_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'stx-wrap-source)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'syntax)
                            (cons _L1603_ '()))
                      (cons (cons (gx#datum->syntax '#f 'stx-source)
                                  (cons _L1605_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd15591597_
                                                _hd15561587_)
                                               (_g15481566_ _g15491570_))))
                                       (_g15481566_ _g15491570_))))
                               (_g15481566_ _g15491570_))))
                       (_g15481566_ _g15491570_)))))
            (_g15471621_ _stx1545_)))))))
