(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<syntax-sugar>[1]#_g28405_|
    (gx#core-quote-syntax 'values))
  (begin
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx330_)
        (let ((_g333357_
               (lambda (_g334353_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g334353_))))
          (let ((_g332662_
                 (lambda (_g334361_)
                   (if (gx#stx-pair? _g334361_)
                       (let ((_e337364_ (gx#syntax-e _g334361_)))
                         (let ((_hd338368_ (##car _e337364_))
                               (_tl339371_ (##cdr _e337364_)))
                           (if (gx#stx-pair? _tl339371_)
                               (let ((_e340374_ (gx#syntax-e _tl339371_)))
                                 (let ((_hd341378_ (##car _e340374_))
                                       (_tl342381_ (##cdr _e340374_)))
                                   (if (gx#stx-pair/null? _tl342381_)
                                       (if (fx>= (gx#stx-length _tl342381_) '0)
                                           (let ((_g28391_
                                                  (gx#syntax-split-splice
                                                   _tl342381_
                                                   '0)))
                                             (begin
                                               (let ((_g28392_
                                                      (values-count _g28391_)))
                                                 (if (not (fx= _g28392_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28392_)))
                                               (let ((_target343384_
                                                      (values-ref _g28391_ 0))
                                                     (_tl345387_
                                                      (values-ref _g28391_ 1)))
                                                 (if (gx#stx-null? _tl345387_)
                                                     (letrec ((_loop346390_
                                                               (lambda (_hd344394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses350397_)
                         (if (gx#stx-pair? _hd344394_)
                             (let ((_e347400_ (gx#syntax-e _hd344394_)))
                               (let ((_lp-hd348404_ (##car _e347400_))
                                     (_lp-tl349407_ (##cdr _e347400_)))
                                 (_loop346390_
                                  _lp-tl349407_
                                  (cons _lp-hd348404_ _clauses350397_))))
                             (let ((_clauses351410_ (reverse _clauses350397_)))
                               ((lambda (_L414_ _L416_)
                                  (if (gx#identifier-list? _L416_)
                                      (let ((_body579_
                                             (gx#stx-map
                                              (lambda (_clause436_)
                                                (let ((_g440467_
                                                       (lambda (_g441463_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g441463_))))
                                                  (let ((_g439525_
                                                         (lambda (_g441471_)
                                                           (if (gx#stx-pair?
                                                                _g441471_)
                                                               (let ((_e453474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g441471_)))
                         (let ((_hd454478_ (##car _e453474_))
                               (_tl455481_ (##cdr _e453474_)))
                           (if (gx#stx-pair? _tl455481_)
                               (let ((_e456484_ (gx#syntax-e _tl455481_)))
                                 (let ((_hd457488_ (##car _e456484_))
                                       (_tl458491_ (##cdr _e456484_)))
                                   (if (gx#stx-pair? _tl458491_)
                                       (let ((_e459494_
                                              (gx#syntax-e _tl458491_)))
                                         (let ((_hd460498_ (##car _e459494_))
                                               (_tl461501_ (##cdr _e459494_)))
                                           (if (gx#stx-null? _tl461501_)
                                               ((lambda (_L504_ _L506_ _L507_)
                                                  (cons _L507_
                                                        (cons _L506_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons _L504_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd460498_
                                                _hd457488_
                                                _hd454478_)
                                               (_g440467_ _g441471_))))
                                       (_g440467_ _g441471_))))
                               (_g440467_ _g441471_))))
                       (_g440467_ _g441471_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g438567_
                                                           (lambda (_g441529_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g441529_)
                         (let ((_e444532_ (gx#syntax-e _g441529_)))
                           (let ((_hd445536_ (##car _e444532_))
                                 (_tl446539_ (##cdr _e444532_)))
                             (if (gx#stx-pair? _tl446539_)
                                 (let ((_e447542_ (gx#syntax-e _tl446539_)))
                                   (let ((_hd448546_ (##car _e447542_))
                                         (_tl449549_ (##cdr _e447542_)))
                                     (if (gx#stx-null? _tl449549_)
                                         ((lambda (_L552_ _L554_)
                                            (cons _L554_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax)
                                                              (cons _L552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd448546_
                                          _hd445536_)
                                         (_g439525_ _g441529_))))
                                 (_g439525_ _g441529_))))
                         (_g439525_ _g441529_)))))
              (_g438567_ _clause436_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g570573_
                                                                _g571576_)
                                                         (cons _g570573_
                                                               _g571576_))
                                                       '()
                                                       _L414_)))))
                                        (let ((_g582599_
                                               (lambda (_g583595_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g583595_))))
                                          (let ((_g581658_
                                                 (lambda (_g583603_)
                                                   (if (gx#stx-pair/null?
                                                        _g583603_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g583603_)
                         '0)
                   (let ((_g28393_ (gx#syntax-split-splice _g583603_ '0)))
                     (begin
                       (let ((_g28394_ (values-count _g28393_)))
                         (if (not (fx= _g28394_ 2))
                             (error "Context expects 2 values" _g28394_)))
                       (let ((_target585606_ (values-ref _g28393_ 0))
                             (_tl587609_ (values-ref _g28393_ 1)))
                         (if (gx#stx-null? _tl587609_)
                             (letrec ((_loop588612_
                                       (lambda (_hd586616_ _clause592619_)
                                         (if (gx#stx-pair? _hd586616_)
                                             (let ((_e589622_
                                                    (gx#syntax-e _hd586616_)))
                                               (let ((_lp-hd590626_
                                                      (##car _e589622_))
                                                     (_lp-tl591629_
                                                      (##cdr _e589622_)))
                                                 (_loop588612_
                                                  _lp-tl591629_
                                                  (cons _lp-hd590626_
                                                        _clause592619_))))
                                             (let ((_clause593632_
                                                    (reverse _clause592619_)))
                                               ((lambda (_L636_)
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
                                        (cons _L416_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g649652_
                                                                _g650655_)
                                                         (cons _g649652_
                                                               _g650655_))
                                                       '()
                                                       _L636_)))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _clause593632_))))))
                               (_loop588612_ _target585606_ '()))
                             (_g582599_ _g583603_)))))
                   (_g582599_ _g583603_))
               (_g582599_ _g583603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g581658_ _body579_))))
                                      (_g333357_ _g334361_)))
                                _clauses351410_
                                _hd341378_))))))
               (_loop346390_ _target343384_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g333357_ _g334361_)))))
                                           (_g333357_ _g334361_))
                                       (_g333357_ _g334361_))))
                               (_g333357_ _g334361_))))
                       (_g333357_ _g334361_)))))
            (_g332662_ _stx330_)))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx668_)
        (let ((_g673758_
               (lambda (_g674754_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g674754_))))
          (let ((_g672919_
                 (lambda (_g674762_)
                   (if (gx#stx-pair? _g674762_)
                       (let ((_e721765_ (gx#syntax-e _g674762_)))
                         (let ((_hd722769_ (##car _e721765_))
                               (_tl723772_ (##cdr _e721765_)))
                           (if (gx#stx-pair? _tl723772_)
                               (let ((_e724775_ (gx#syntax-e _tl723772_)))
                                 (let ((_hd725779_ (##car _e724775_))
                                       (_tl726782_ (##cdr _e724775_)))
                                   (if (gx#stx-pair/null? _hd725779_)
                                       (if (fx>= (gx#stx-length _hd725779_) '0)
                                           (let ((_g28395_
                                                  (gx#syntax-split-splice
                                                   _hd725779_
                                                   '0)))
                                             (begin
                                               (let ((_g28396_
                                                      (values-count _g28395_)))
                                                 (if (not (fx= _g28396_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28396_)))
                                               (let ((_target727785_
                                                      (values-ref _g28395_ 0))
                                                     (_tl729788_
                                                      (values-ref _g28395_ 1)))
                                                 (if (gx#stx-null? _tl729788_)
                                                     (letrec ((_loop730791_
                                                               (lambda (_hd728795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e734798_
                                _pat735800_)
                         (if (gx#stx-pair? _hd728795_)
                             (let ((_e731803_ (gx#syntax-e _hd728795_)))
                               (let ((_lp-hd732807_ (##car _e731803_))
                                     (_lp-tl733810_ (##cdr _e731803_)))
                                 (if (gx#stx-pair? _lp-hd732807_)
                                     (let ((_e738813_
                                            (gx#syntax-e _lp-hd732807_)))
                                       (let ((_hd739817_ (##car _e738813_))
                                             (_tl740820_ (##cdr _e738813_)))
                                         (if (gx#stx-pair? _tl740820_)
                                             (let ((_e741823_
                                                    (gx#syntax-e _tl740820_)))
                                               (let ((_hd742827_
                                                      (##car _e741823_))
                                                     (_tl743830_
                                                      (##cdr _e741823_)))
                                                 (if (gx#stx-null? _tl743830_)
                                                     (_loop730791_
                                                      _lp-tl733810_
                                                      (cons _hd742827_
                                                            _e734798_)
                                                      (cons _hd739817_
                                                            _pat735800_))
                                                     (_g673758_ _g674762_))))
                                             (_g673758_ _g674762_))))
                                     (_g673758_ _g674762_))))
                             (let ((_e736833_ (reverse _e734798_))
                                   (_pat737836_ (reverse _pat735800_)))
                               (if (gx#stx-pair/null? _tl726782_)
                                   (if (fx>= (gx#stx-length _tl726782_) '0)
                                       (let ((_g28397_
                                              (gx#syntax-split-splice
                                               _tl726782_
                                               '0)))
                                         (begin
                                           (let ((_g28398_
                                                  (values-count _g28397_)))
                                             (if (not (fx= _g28398_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28398_)))
                                           (let ((_target744839_
                                                  (values-ref _g28397_ 0))
                                                 (_tl746842_
                                                  (values-ref _g28397_ 1)))
                                             (if (gx#stx-null? _tl746842_)
                                                 (letrec ((_loop747845_
                                                           (lambda (_hd745849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body751852_)
                     (if (gx#stx-pair? _hd745849_)
                         (let ((_e748855_ (gx#syntax-e _hd745849_)))
                           (let ((_lp-hd749859_ (##car _e748855_))
                                 (_lp-tl750862_ (##cdr _e748855_)))
                             (_loop747845_
                              _lp-tl750862_
                              (cons _lp-hd749859_ _body751852_))))
                         (let ((_body752865_ (reverse _body751852_)))
                           ((lambda (_L869_ _L871_ _L872_)
                              (cons (gx#datum->syntax '#f 'syntax-case)
                                    (cons (cons (gx#datum->syntax '#f 'list)
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g894901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g895904_)
                   (cons _g894901_ _g895904_))
                 '()
                 _L871_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons '()
                                                (cons (cons (begin
                                                              '#!void
                                                              (foldr (lambda (_g896907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g897910_)
                               (cons _g896907_ _g897910_))
                             '()
                             _L872_))
                    (cons (cons (gx#datum->syntax '#f 'let-values)
                                (cons '()
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g898913_ _g899916_)
                                                 (cons _g898913_ _g899916_))
                                               '()
                                               _L869_))))
                          '()))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            _body752865_
                            _e736833_
                            _pat737836_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop747845_
                                                    _target744839_
                                                    '()))
                                                 (_g673758_ _g674762_)))))
                                       (_g673758_ _g674762_))
                                   (_g673758_ _g674762_)))))))
               (_loop730791_ _target727785_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g673758_ _g674762_)))))
                                           (_g673758_ _g674762_))
                                       (_g673758_ _g674762_))))
                               (_g673758_ _g674762_))))
                       (_g673758_ _g674762_)))))
            (let ((_g6711041_
                   (lambda (_g674923_)
                     (if (gx#stx-pair? _g674923_)
                         (let ((_e694926_ (gx#syntax-e _g674923_)))
                           (let ((_hd695930_ (##car _e694926_))
                                 (_tl696933_ (##cdr _e694926_)))
                             (if (gx#stx-pair? _tl696933_)
                                 (let ((_e697936_ (gx#syntax-e _tl696933_)))
                                   (let ((_hd698940_ (##car _e697936_))
                                         (_tl699943_ (##cdr _e697936_)))
                                     (if (gx#stx-pair? _hd698940_)
                                         (let ((_e700946_
                                                (gx#syntax-e _hd698940_)))
                                           (let ((_hd701950_ (##car _e700946_))
                                                 (_tl702953_
                                                  (##cdr _e700946_)))
                                             (if (gx#stx-pair? _hd701950_)
                                                 (let ((_e703956_
                                                        (gx#syntax-e
                                                         _hd701950_)))
                                                   (let ((_hd704960_
                                                          (##car _e703956_))
                                                         (_tl705963_
                                                          (##cdr _e703956_)))
                                                     (if (gx#stx-pair?
                                                          _tl705963_)
                                                         (let ((_e706966_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl705963_)))
                   (let ((_hd707970_ (##car _e706966_))
                         (_tl708973_ (##cdr _e706966_)))
                     (if (gx#stx-null? _tl708973_)
                         (if (gx#stx-null? _tl702953_)
                             (if (gx#stx-pair/null? _tl699943_)
                                 (if (fx>= (gx#stx-length _tl699943_) '0)
                                     (let ((_g28399_
                                            (gx#syntax-split-splice
                                             _tl699943_
                                             '0)))
                                       (begin
                                         (let ((_g28400_
                                                (values-count _g28399_)))
                                           (if (not (fx= _g28400_ 2))
                                               (error "Context expects 2 values"
                                                      _g28400_)))
                                         (let ((_target709976_
                                                (values-ref _g28399_ 0))
                                               (_tl711979_
                                                (values-ref _g28399_ 1)))
                                           (if (gx#stx-null? _tl711979_)
                                               (letrec ((_loop712982_
                                                         (lambda (_hd710986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body716989_)
                   (if (gx#stx-pair? _hd710986_)
                       (let ((_e713992_ (gx#syntax-e _hd710986_)))
                         (let ((_lp-hd714996_ (##car _e713992_))
                               (_lp-tl715999_ (##cdr _e713992_)))
                           (_loop712982_
                            _lp-tl715999_
                            (cons _lp-hd714996_ _body716989_))))
                       (let ((_body7171002_ (reverse _body716989_)))
                         ((lambda (_L1006_ _L1008_ _L1009_)
                            (cons (gx#datum->syntax '#f 'syntax-case)
                                  (cons _L1008_
                                        (cons '()
                                              (cons (cons _L1009_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'let-values)
                              (cons '()
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g10321035_ _g10331038_)
                                               (cons _g10321035_ _g10331038_))
                                             '()
                                             _L1006_))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                          _body7171002_
                          _hd707970_
                          _hd704960_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop712982_
                                                  _target709976_
                                                  '()))
                                               (_g672919_ _g674923_)))))
                                     (_g672919_ _g674923_))
                                 (_g672919_ _g674923_))
                             (_g672919_ _g674923_))
                         (_g672919_ _g674923_))))
                 (_g672919_ _g674923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g672919_ _g674923_))))
                                         (_g672919_ _g674923_))))
                                 (_g672919_ _g674923_))))
                         (_g672919_ _g674923_)))))
              (let ((_g6701123_
                     (lambda (_g6741045_)
                       (if (gx#stx-pair? _g6741045_)
                           (let ((_e6761048_ (gx#syntax-e _g6741045_)))
                             (let ((_hd6771052_ (##car _e6761048_))
                                   (_tl6781055_ (##cdr _e6761048_)))
                               (if (gx#stx-pair? _tl6781055_)
                                   (let ((_e6791058_
                                          (gx#syntax-e _tl6781055_)))
                                     (let ((_hd6801062_ (##car _e6791058_))
                                           (_tl6811065_ (##cdr _e6791058_)))
                                       (if (gx#stx-null? _hd6801062_)
                                           (if (gx#stx-pair/null? _tl6811065_)
                                               (if (fx>= (gx#stx-length
                                                          _tl6811065_)
                                                         '0)
                                                   (let ((_g28401_
                                                          (gx#syntax-split-splice
                                                           _tl6811065_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28402_
                                                              (values-count
                                                               _g28401_)))
                                                         (if (not (fx= _g28402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28402_)))
               (let ((_target6821068_ (values-ref _g28401_ 0))
                     (_tl6841071_ (values-ref _g28401_ 1)))
                 (if (gx#stx-null? _tl6841071_)
                     (letrec ((_loop6851074_
                               (lambda (_hd6831078_ _body6891081_)
                                 (if (gx#stx-pair? _hd6831078_)
                                     (let ((_e6861084_
                                            (gx#syntax-e _hd6831078_)))
                                       (let ((_lp-hd6871088_
                                              (##car _e6861084_))
                                             (_lp-tl6881091_
                                              (##cdr _e6861084_)))
                                         (_loop6851074_
                                          _lp-tl6881091_
                                          (cons _lp-hd6871088_
                                                _body6891081_))))
                                     (let ((_body6901094_
                                            (reverse _body6891081_)))
                                       ((lambda (_L1098_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g11141117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g11151120_)
                         (cons _g11141117_ _g11151120_))
                       '()
                       _L1098_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body6901094_))))))
                       (_loop6851074_ _target6821068_ '()))
                     (_g6711041_ _g6741045_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6711041_ _g6741045_))
                                               (_g6711041_ _g6741045_))
                                           (_g6711041_ _g6741045_))))
                                   (_g6711041_ _g6741045_))))
                           (_g6711041_ _g6741045_)))))
                (_g6701123_ _stx668_)))))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx1131_)
        (let ((_g11361213_
               (lambda (_g11371209_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g11371209_))))
          (let ((_g11351314_
                 (lambda (_g11371217_)
                   (if (gx#stx-pair? _g11371217_)
                       (let ((_e11901220_ (gx#syntax-e _g11371217_)))
                         (let ((_hd11911224_ (##car _e11901220_))
                               (_tl11921227_ (##cdr _e11901220_)))
                           (if (gx#stx-pair? _tl11921227_)
                               (let ((_e11931230_ (gx#syntax-e _tl11921227_)))
                                 (let ((_hd11941234_ (##car _e11931230_))
                                       (_tl11951237_ (##cdr _e11931230_)))
                                   (if (gx#stx-pair? _hd11941234_)
                                       (let ((_e11961240_
                                              (gx#syntax-e _hd11941234_)))
                                         (let ((_hd11971244_
                                                (##car _e11961240_))
                                               (_tl11981247_
                                                (##cdr _e11961240_)))
                                           (if (gx#stx-pair/null? _tl11951237_)
                                               (if (fx>= (gx#stx-length
                                                          _tl11951237_)
                                                         '0)
                                                   (let ((_g28403_
                                                          (gx#syntax-split-splice
                                                           _tl11951237_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28404_
                                                              (values-count
                                                               _g28403_)))
                                                         (if (not (fx= _g28404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28404_)))
               (let ((_target11991250_ (values-ref _g28403_ 0))
                     (_tl12011253_ (values-ref _g28403_ 1)))
                 (if (gx#stx-null? _tl12011253_)
                     (letrec ((_loop12021256_
                               (lambda (_hd12001260_ _body12061263_)
                                 (if (gx#stx-pair? _hd12001260_)
                                     (let ((_e12031266_
                                            (gx#syntax-e _hd12001260_)))
                                       (let ((_lp-hd12041270_
                                              (##car _e12031266_))
                                             (_lp-tl12051273_
                                              (##cdr _e12031266_)))
                                         (_loop12021256_
                                          _lp-tl12051273_
                                          (cons _lp-hd12041270_
                                                _body12061263_))))
                                     (let ((_body12071276_
                                            (reverse _body12061263_)))
                                       ((lambda (_L1280_
                                                 _L1282_
                                                 _L1283_
                                                 _L1284_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-syntax)
                                                (cons (cons _L1283_ '())
                                                      (cons (cons _L1284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1282_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g13051308_ _g13061311_)
                                           (cons _g13051308_ _g13061311_))
                                         '()
                                         _L1280_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body12071276_
                                        _tl11981247_
                                        _hd11971244_
                                        _hd11911224_))))))
                       (_loop12021256_ _target11991250_ '()))
                     (_g11361213_ _g11371217_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g11361213_ _g11371217_))
                                               (_g11361213_ _g11371217_))))
                                       (_g11361213_ _g11371217_))))
                               (_g11361213_ _g11371217_))))
                       (_g11361213_ _g11371217_)))))
            (let ((_g11341452_
                   (lambda (_g11371318_)
                     (if (gx#stx-pair? _g11371318_)
                         (let ((_e11591321_ (gx#syntax-e _g11371318_)))
                           (let ((_hd11601325_ (##car _e11591321_))
                                 (_tl11611328_ (##cdr _e11591321_)))
                             (if (gx#stx-pair? _tl11611328_)
                                 (let ((_e11621331_
                                        (gx#syntax-e _tl11611328_)))
                                   (let ((_hd11631335_ (##car _e11621331_))
                                         (_tl11641338_ (##cdr _e11621331_)))
                                     (if (gx#stx-pair? _hd11631335_)
                                         (let ((_e11651341_
                                                (gx#syntax-e _hd11631335_)))
                                           (let ((_hd11661345_
                                                  (##car _e11651341_))
                                                 (_tl11671348_
                                                  (##cdr _e11651341_)))
                                             (if (gx#stx-pair? _hd11661345_)
                                                 (let ((_e11681351_
                                                        (gx#syntax-e
                                                         _hd11661345_)))
                                                   (let ((_hd11691355_
                                                          (##car _e11681351_))
                                                         (_tl11701358_
                                                          (##cdr _e11681351_)))
                                                     (if (gx#stx-pair?
                                                          _hd11691355_)
                                                         (let ((_e11711361_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd11691355_)))
                   (let ((_hd11721365_ (##car _e11711361_))
                         (_tl11731368_ (##cdr _e11711361_)))
                     (if (gx#identifier? _hd11721365_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<syntax-sugar>[1]#_g28405_|
                              _hd11721365_)
                             (if (gx#stx-pair? _tl11701358_)
                                 (let ((_e11741371_
                                        (gx#syntax-e _tl11701358_)))
                                   (let ((_hd11751375_ (##car _e11741371_))
                                         (_tl11761378_ (##cdr _e11741371_)))
                                     (if (gx#stx-null? _tl11761378_)
                                         (if (gx#stx-pair/null? _tl11641338_)
                                             (if (fx>= (gx#stx-length
                                                        _tl11641338_)
                                                       '0)
                                                 (let ((_g28406_
                                                        (gx#syntax-split-splice
                                                         _tl11641338_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28407_
                                                            (values-count
                                                             _g28406_)))
                                                       (if (not (fx= _g28407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28407_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target11771381_
                                                            (values-ref
                                                             _g28406_
                                                             0))
                                                           (_tl11791384_
                                                            (values-ref
                                                             _g28406_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl11791384_)
                                                           (letrec ((_loop11801387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd11781391_ _body11841394_)
                               (if (gx#stx-pair? _hd11781391_)
                                   (let ((_e11811397_
                                          (gx#syntax-e _hd11781391_)))
                                     (let ((_lp-hd11821401_
                                            (##car _e11811397_))
                                           (_lp-tl11831404_
                                            (##cdr _e11811397_)))
                                       (_loop11801387_
                                        _lp-tl11831404_
                                        (cons _lp-hd11821401_
                                              _body11841394_))))
                                   (let ((_body11851407_
                                          (reverse _body11841394_)))
                                     ((lambda (_L1411_
                                               _L1413_
                                               _L1414_
                                               _L1415_
                                               _L1416_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons (cons (cons _L1415_
                                                                (cons _L1414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _L1416_
                                                                (cons _L1413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (begin
                                '#!void
                                (foldr (lambda (_g14431446_ _g14441449_)
                                         (cons _g14431446_ _g14441449_))
                                       '()
                                       _L1411_))))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body11851407_
                                      _tl11671348_
                                      _hd11751375_
                                      _tl11731368_
                                      _hd11601325_))))))
                     (_loop11801387_ _target11771381_ '()))
                   (_g11351314_ _g11371318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g11351314_ _g11371318_))
                                             (_g11351314_ _g11371318_))
                                         (_g11351314_ _g11371318_))))
                                 (_g11351314_ _g11371318_))
                             (_g11351314_ _g11371318_))
                         (_g11351314_ _g11371318_))))
                 (_g11351314_ _g11371318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g11351314_ _g11371318_))))
                                         (_g11351314_ _g11371318_))))
                                 (_g11351314_ _g11371318_))))
                         (_g11351314_ _g11371318_)))))
              (let ((_g11331534_
                     (lambda (_g11371456_)
                       (if (gx#stx-pair? _g11371456_)
                           (let ((_e11391459_ (gx#syntax-e _g11371456_)))
                             (let ((_hd11401463_ (##car _e11391459_))
                                   (_tl11411466_ (##cdr _e11391459_)))
                               (if (gx#stx-pair? _tl11411466_)
                                   (let ((_e11421469_
                                          (gx#syntax-e _tl11411466_)))
                                     (let ((_hd11431473_ (##car _e11421469_))
                                           (_tl11441476_ (##cdr _e11421469_)))
                                       (if (gx#stx-null? _hd11431473_)
                                           (if (gx#stx-pair/null? _tl11441476_)
                                               (if (fx>= (gx#stx-length
                                                          _tl11441476_)
                                                         '0)
                                                   (let ((_g28408_
                                                          (gx#syntax-split-splice
                                                           _tl11441476_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28409_
                                                              (values-count
                                                               _g28408_)))
                                                         (if (not (fx= _g28409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28409_)))
               (let ((_target11451479_ (values-ref _g28408_ 0))
                     (_tl11471482_ (values-ref _g28408_ 1)))
                 (if (gx#stx-null? _tl11471482_)
                     (letrec ((_loop11481485_
                               (lambda (_hd11461489_ _body11521492_)
                                 (if (gx#stx-pair? _hd11461489_)
                                     (let ((_e11491495_
                                            (gx#syntax-e _hd11461489_)))
                                       (let ((_lp-hd11501499_
                                              (##car _e11491495_))
                                             (_lp-tl11511502_
                                              (##cdr _e11491495_)))
                                         (_loop11481485_
                                          _lp-tl11511502_
                                          (cons _lp-hd11501499_
                                                _body11521492_))))
                                     (let ((_body11531505_
                                            (reverse _body11521492_)))
                                       ((lambda (_L1509_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g15251528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g15261531_)
                         (cons _g15251528_ _g15261531_))
                       '()
                       _L1509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body11531505_))))))
                       (_loop11481485_ _target11451479_ '()))
                     (_g11341452_ _g11371456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g11341452_ _g11371456_))
                                               (_g11341452_ _g11371456_))
                                           (_g11341452_ _g11371456_))))
                                   (_g11341452_ _g11371456_))))
                           (_g11341452_ _g11371456_)))))
                (_g11331534_ _stx1131_)))))))))
