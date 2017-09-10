(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<syntax-sugar>[1]#_g30575_|
    (gx#core-quote-syntax 'values))
  (begin
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx336_)
        (let* ((_g339363_
                (lambda (_g340359_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g340359_)))
               (_g338668_
                (lambda (_g340367_)
                  (if (gx#stx-pair? _g340367_)
                      (let ((_e343370_ (gx#syntax-e _g340367_)))
                        (let ((_hd344374_ (##car _e343370_))
                              (_tl345377_ (##cdr _e343370_)))
                          (if (gx#stx-pair? _tl345377_)
                              (let ((_e346380_ (gx#syntax-e _tl345377_)))
                                (let ((_hd347384_ (##car _e346380_))
                                      (_tl348387_ (##cdr _e346380_)))
                                  (if (gx#stx-pair/null? _tl348387_)
                                      (if (fx>= (gx#stx-length _tl348387_) '0)
                                          (let ((_g30561_
                                                 (gx#syntax-split-splice
                                                  _tl348387_
                                                  '0)))
                                            (begin
                                              (let ((_g30562_
                                                     (values-count _g30561_)))
                                                (if (not (fx= _g30562_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30562_)))
                                              (let ((_target349390_
                                                     (values-ref _g30561_ 0))
                                                    (_tl351393_
                                                     (values-ref _g30561_ 1)))
                                                (if (gx#stx-null? _tl351393_)
                                                    (letrec ((_loop352396_
                                                              (lambda (_hd350400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clauses356403_)
                        (if (gx#stx-pair? _hd350400_)
                            (let ((_e353406_ (gx#syntax-e _hd350400_)))
                              (let ((_lp-hd354410_ (##car _e353406_))
                                    (_lp-tl355413_ (##cdr _e353406_)))
                                (_loop352396_
                                 _lp-tl355413_
                                 (cons _lp-hd354410_ _clauses356403_))))
                            (let ((_clauses357416_ (reverse _clauses356403_)))
                              ((lambda (_L420_ _L422_)
                                 (if (gx#identifier-list? _L422_)
                                     (let* ((_body585_
                                             (gx#stx-map
                                              (lambda (_clause442_)
                                                (let* ((_g446473_
                                                        (lambda (_g447469_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g447469_)))
                                                       (_g445531_
                                                        (lambda (_g447477_)
                                                          (if (gx#stx-pair?
                                                               _g447477_)
                                                              (let ((_e459480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g447477_)))
                        (let ((_hd460484_ (##car _e459480_))
                              (_tl461487_ (##cdr _e459480_)))
                          (if (gx#stx-pair? _tl461487_)
                              (let ((_e462490_ (gx#syntax-e _tl461487_)))
                                (let ((_hd463494_ (##car _e462490_))
                                      (_tl464497_ (##cdr _e462490_)))
                                  (if (gx#stx-pair? _tl464497_)
                                      (let ((_e465500_
                                             (gx#syntax-e _tl464497_)))
                                        (let ((_hd466504_ (##car _e465500_))
                                              (_tl467507_ (##cdr _e465500_)))
                                          (if (gx#stx-null? _tl467507_)
                                              ((lambda (_L510_ _L512_ _L513_)
                                                 (cons _L513_
                                                       (cons _L512_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _L510_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd466504_
                                               _hd463494_
                                               _hd460484_)
                                              (_g446473_ _g447477_))))
                                      (_g446473_ _g447477_))))
                              (_g446473_ _g447477_))))
                      (_g446473_ _g447477_))))
               (_g444573_
                (lambda (_g447535_)
                  (if (gx#stx-pair? _g447535_)
                      (let ((_e450538_ (gx#syntax-e _g447535_)))
                        (let ((_hd451542_ (##car _e450538_))
                              (_tl452545_ (##cdr _e450538_)))
                          (if (gx#stx-pair? _tl452545_)
                              (let ((_e453548_ (gx#syntax-e _tl452545_)))
                                (let ((_hd454552_ (##car _e453548_))
                                      (_tl455555_ (##cdr _e453548_)))
                                  (if (gx#stx-null? _tl455555_)
                                      ((lambda (_L558_ _L560_)
                                         (cons _L560_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax)
                                                           (cons _L558_ '()))
                                                     '())))
                                       _hd454552_
                                       _hd451542_)
                                      (_g445531_ _g447535_))))
                              (_g445531_ _g447535_))))
                      (_g445531_ _g447535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g444573_ _clause442_)))
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g576579_
                                                                _g577582_)
                                                         (cons _g576579_
                                                               _g577582_))
                                                       '()
                                                       _L420_))))
                                            (_g588605_
                                             (lambda (_g589601_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g589601_)))
                                            (_g587664_
                                             (lambda (_g589609_)
                                               (if (gx#stx-pair/null?
                                                    _g589609_)
                                                   (if (fx>= (gx#stx-length
                                                              _g589609_)
                                                             '0)
                                                       (let ((_g30563_
                                                              (gx#syntax-split-splice
                                                               _g589609_
                                                               '0)))
                                                         (begin
                                                           (let ((_g30564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g30563_)))
                     (if (not (fx= _g30564_ 2))
                         (error "Context expects 2 values" _g30564_)))
                   (let ((_target591612_ (values-ref _g30563_ 0))
                         (_tl593615_ (values-ref _g30563_ 1)))
                     (if (gx#stx-null? _tl593615_)
                         (letrec ((_loop594618_
                                   (lambda (_hd592622_ _clause598625_)
                                     (if (gx#stx-pair? _hd592622_)
                                         (let ((_e595628_
                                                (gx#syntax-e _hd592622_)))
                                           (let ((_lp-hd596632_
                                                  (##car _e595628_))
                                                 (_lp-tl597635_
                                                  (##cdr _e595628_)))
                                             (_loop594618_
                                              _lp-tl597635_
                                              (cons _lp-hd596632_
                                                    _clause598625_))))
                                         (let ((_clause599638_
                                                (reverse _clause598625_)))
                                           ((lambda (_L642_)
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
                                    (cons _L422_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g655658_
                                                            _g656661_)
                                                     (cons _g655658_
                                                           _g656661_))
                                                   '()
                                                   _L642_)))))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _clause599638_))))))
                           (_loop594618_ _target591612_ '()))
                         (_g588605_ _g589609_)))))
               (_g588605_ _g589609_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g588605_ _g589609_)))))
                                       (_g587664_ _body585_))
                                     (_g339363_ _g340367_)))
                               _clauses357416_
                               _hd347384_))))))
              (_loop352396_ _target349390_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g339363_ _g340367_)))))
                                          (_g339363_ _g340367_))
                                      (_g339363_ _g340367_))))
                              (_g339363_ _g340367_))))
                      (_g339363_ _g340367_)))))
          (_g338668_ _stx336_))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx674_)
        (let* ((_g679764_
                (lambda (_g680760_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g680760_)))
               (_g678925_
                (lambda (_g680768_)
                  (if (gx#stx-pair? _g680768_)
                      (let ((_e727771_ (gx#syntax-e _g680768_)))
                        (let ((_hd728775_ (##car _e727771_))
                              (_tl729778_ (##cdr _e727771_)))
                          (if (gx#stx-pair? _tl729778_)
                              (let ((_e730781_ (gx#syntax-e _tl729778_)))
                                (let ((_hd731785_ (##car _e730781_))
                                      (_tl732788_ (##cdr _e730781_)))
                                  (if (gx#stx-pair/null? _hd731785_)
                                      (if (fx>= (gx#stx-length _hd731785_) '0)
                                          (let ((_g30565_
                                                 (gx#syntax-split-splice
                                                  _hd731785_
                                                  '0)))
                                            (begin
                                              (let ((_g30566_
                                                     (values-count _g30565_)))
                                                (if (not (fx= _g30566_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30566_)))
                                              (let ((_target733791_
                                                     (values-ref _g30565_ 0))
                                                    (_tl735794_
                                                     (values-ref _g30565_ 1)))
                                                (if (gx#stx-null? _tl735794_)
                                                    (letrec ((_loop736797_
                                                              (lambda (_hd734801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e740804_
                               _pat741806_)
                        (if (gx#stx-pair? _hd734801_)
                            (let ((_e737809_ (gx#syntax-e _hd734801_)))
                              (let ((_lp-hd738813_ (##car _e737809_))
                                    (_lp-tl739816_ (##cdr _e737809_)))
                                (if (gx#stx-pair? _lp-hd738813_)
                                    (let ((_e744819_
                                           (gx#syntax-e _lp-hd738813_)))
                                      (let ((_hd745823_ (##car _e744819_))
                                            (_tl746826_ (##cdr _e744819_)))
                                        (if (gx#stx-pair? _tl746826_)
                                            (let ((_e747829_
                                                   (gx#syntax-e _tl746826_)))
                                              (let ((_hd748833_
                                                     (##car _e747829_))
                                                    (_tl749836_
                                                     (##cdr _e747829_)))
                                                (if (gx#stx-null? _tl749836_)
                                                    (_loop736797_
                                                     _lp-tl739816_
                                                     (cons _hd748833_
                                                           _e740804_)
                                                     (cons _hd745823_
                                                           _pat741806_))
                                                    (_g679764_ _g680768_))))
                                            (_g679764_ _g680768_))))
                                    (_g679764_ _g680768_))))
                            (let ((_e742839_ (reverse _e740804_))
                                  (_pat743842_ (reverse _pat741806_)))
                              (if (gx#stx-pair/null? _tl732788_)
                                  (if (fx>= (gx#stx-length _tl732788_) '0)
                                      (let ((_g30567_
                                             (gx#syntax-split-splice
                                              _tl732788_
                                              '0)))
                                        (begin
                                          (let ((_g30568_
                                                 (values-count _g30567_)))
                                            (if (not (fx= _g30568_ 2))
                                                (error "Context expects 2 values"
                                                       _g30568_)))
                                          (let ((_target750845_
                                                 (values-ref _g30567_ 0))
                                                (_tl752848_
                                                 (values-ref _g30567_ 1)))
                                            (if (gx#stx-null? _tl752848_)
                                                (letrec ((_loop753851_
                                                          (lambda (_hd751855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body757858_)
                    (if (gx#stx-pair? _hd751855_)
                        (let ((_e754861_ (gx#syntax-e _hd751855_)))
                          (let ((_lp-hd755865_ (##car _e754861_))
                                (_lp-tl756868_ (##cdr _e754861_)))
                            (_loop753851_
                             _lp-tl756868_
                             (cons _lp-hd755865_ _body757858_))))
                        (let ((_body758871_ (reverse _body757858_)))
                          ((lambda (_L875_ _L877_ _L878_)
                             (cons (gx#datum->syntax '#f 'syntax-case)
                                   (cons (cons (gx#datum->syntax '#f 'list)
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g900907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g901910_)
                  (cons _g900907_ _g901910_))
                '()
                _L877_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons '()
                                               (cons (cons (begin
                                                             '#!void
                                                             (foldr (lambda (_g902913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g903916_)
                              (cons _g902913_ _g903916_))
                            '()
                            _L878_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons '()
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g904919_ _g905922_)
                                                (cons _g904919_ _g905922_))
                                              '()
                                              _L875_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _body758871_
                           _e742839_
                           _pat743842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop753851_
                                                   _target750845_
                                                   '()))
                                                (_g679764_ _g680768_)))))
                                      (_g679764_ _g680768_))
                                  (_g679764_ _g680768_)))))))
              (_loop736797_ _target733791_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g679764_ _g680768_)))))
                                          (_g679764_ _g680768_))
                                      (_g679764_ _g680768_))))
                              (_g679764_ _g680768_))))
                      (_g679764_ _g680768_))))
               (_g6771047_
                (lambda (_g680929_)
                  (if (gx#stx-pair? _g680929_)
                      (let ((_e700932_ (gx#syntax-e _g680929_)))
                        (let ((_hd701936_ (##car _e700932_))
                              (_tl702939_ (##cdr _e700932_)))
                          (if (gx#stx-pair? _tl702939_)
                              (let ((_e703942_ (gx#syntax-e _tl702939_)))
                                (let ((_hd704946_ (##car _e703942_))
                                      (_tl705949_ (##cdr _e703942_)))
                                  (if (gx#stx-pair? _hd704946_)
                                      (let ((_e706952_
                                             (gx#syntax-e _hd704946_)))
                                        (let ((_hd707956_ (##car _e706952_))
                                              (_tl708959_ (##cdr _e706952_)))
                                          (if (gx#stx-pair? _hd707956_)
                                              (let ((_e709962_
                                                     (gx#syntax-e _hd707956_)))
                                                (let ((_hd710966_
                                                       (##car _e709962_))
                                                      (_tl711969_
                                                       (##cdr _e709962_)))
                                                  (if (gx#stx-pair? _tl711969_)
                                                      (let ((_e712972_
                                                             (gx#syntax-e
                                                              _tl711969_)))
                                                        (let ((_hd713976_
                                                               (##car _e712972_))
                                                              (_tl714979_
                                                               (##cdr _e712972_)))
                                                          (if (gx#stx-null?
                                                               _tl714979_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl708959_)
                          (if (gx#stx-pair/null? _tl705949_)
                              (if (fx>= (gx#stx-length _tl705949_) '0)
                                  (let ((_g30569_
                                         (gx#syntax-split-splice
                                          _tl705949_
                                          '0)))
                                    (begin
                                      (let ((_g30570_ (values-count _g30569_)))
                                        (if (not (fx= _g30570_ 2))
                                            (error "Context expects 2 values"
                                                   _g30570_)))
                                      (let ((_target715982_
                                             (values-ref _g30569_ 0))
                                            (_tl717985_
                                             (values-ref _g30569_ 1)))
                                        (if (gx#stx-null? _tl717985_)
                                            (letrec ((_loop718988_
                                                      (lambda (_hd716992_
                                                               _body722995_)
                                                        (if (gx#stx-pair?
                                                             _hd716992_)
                                                            (let ((_e719998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd716992_)))
                      (let ((_lp-hd7201002_ (##car _e719998_))
                            (_lp-tl7211005_ (##cdr _e719998_)))
                        (_loop718988_
                         _lp-tl7211005_
                         (cons _lp-hd7201002_ _body722995_))))
                    (let ((_body7231008_ (reverse _body722995_)))
                      ((lambda (_L1012_ _L1014_ _L1015_)
                         (cons (gx#datum->syntax '#f 'syntax-case)
                               (cons _L1014_
                                     (cons '()
                                           (cons (cons _L1015_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons '()
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g10381041_ _g10391044_)
                                            (cons _g10381041_ _g10391044_))
                                          '()
                                          _L1012_))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                       _body7231008_
                       _hd713976_
                       _hd710966_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop718988_
                                               _target715982_
                                               '()))
                                            (_g678925_ _g680929_)))))
                                  (_g678925_ _g680929_))
                              (_g678925_ _g680929_))
                          (_g678925_ _g680929_))
                      (_g678925_ _g680929_))))
              (_g678925_ _g680929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g678925_ _g680929_))))
                                      (_g678925_ _g680929_))))
                              (_g678925_ _g680929_))))
                      (_g678925_ _g680929_))))
               (_g6761129_
                (lambda (_g6801051_)
                  (if (gx#stx-pair? _g6801051_)
                      (let ((_e6821054_ (gx#syntax-e _g6801051_)))
                        (let ((_hd6831058_ (##car _e6821054_))
                              (_tl6841061_ (##cdr _e6821054_)))
                          (if (gx#stx-pair? _tl6841061_)
                              (let ((_e6851064_ (gx#syntax-e _tl6841061_)))
                                (let ((_hd6861068_ (##car _e6851064_))
                                      (_tl6871071_ (##cdr _e6851064_)))
                                  (if (gx#stx-null? _hd6861068_)
                                      (if (gx#stx-pair/null? _tl6871071_)
                                          (if (fx>= (gx#stx-length _tl6871071_)
                                                    '0)
                                              (let ((_g30571_
                                                     (gx#syntax-split-splice
                                                      _tl6871071_
                                                      '0)))
                                                (begin
                                                  (let ((_g30572_
                                                         (values-count
                                                          _g30571_)))
                                                    (if (not (fx= _g30572_ 2))
                                                        (error "Context expects 2 values"
                                                               _g30572_)))
                                                  (let ((_target6881074_
                                                         (values-ref
                                                          _g30571_
                                                          0))
                                                        (_tl6901077_
                                                         (values-ref
                                                          _g30571_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl6901077_)
                                                        (letrec ((_loop6911080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd6891084_ _body6951087_)
                            (if (gx#stx-pair? _hd6891084_)
                                (let ((_e6921090_ (gx#syntax-e _hd6891084_)))
                                  (let ((_lp-hd6931094_ (##car _e6921090_))
                                        (_lp-tl6941097_ (##cdr _e6921090_)))
                                    (_loop6911080_
                                     _lp-tl6941097_
                                     (cons _lp-hd6931094_ _body6951087_))))
                                (let ((_body6961100_ (reverse _body6951087_)))
                                  ((lambda (_L1104_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g11201123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g11211126_)
                    (cons _g11201123_ _g11211126_))
                  '()
                  _L1104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body6961100_))))))
                  (_loop6911080_ _target6881074_ '()))
                (_g6771047_ _g6801051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g6771047_ _g6801051_))
                                          (_g6771047_ _g6801051_))
                                      (_g6771047_ _g6801051_))))
                              (_g6771047_ _g6801051_))))
                      (_g6771047_ _g6801051_)))))
          (_g6761129_ _stx674_))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx1137_)
        (let* ((_g11421219_
                (lambda (_g11431215_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g11431215_)))
               (_g11411320_
                (lambda (_g11431223_)
                  (if (gx#stx-pair? _g11431223_)
                      (let ((_e11961226_ (gx#syntax-e _g11431223_)))
                        (let ((_hd11971230_ (##car _e11961226_))
                              (_tl11981233_ (##cdr _e11961226_)))
                          (if (gx#stx-pair? _tl11981233_)
                              (let ((_e11991236_ (gx#syntax-e _tl11981233_)))
                                (let ((_hd12001240_ (##car _e11991236_))
                                      (_tl12011243_ (##cdr _e11991236_)))
                                  (if (gx#stx-pair? _hd12001240_)
                                      (let ((_e12021246_
                                             (gx#syntax-e _hd12001240_)))
                                        (let ((_hd12031250_
                                               (##car _e12021246_))
                                              (_tl12041253_
                                               (##cdr _e12021246_)))
                                          (if (gx#stx-pair/null? _tl12011243_)
                                              (if (fx>= (gx#stx-length
                                                         _tl12011243_)
                                                        '0)
                                                  (let ((_g30573_
                                                         (gx#syntax-split-splice
                                                          _tl12011243_
                                                          '0)))
                                                    (begin
                                                      (let ((_g30574_
                                                             (values-count
                                                              _g30573_)))
                                                        (if (not (fx= _g30574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g30574_)))
              (let ((_target12051256_ (values-ref _g30573_ 0))
                    (_tl12071259_ (values-ref _g30573_ 1)))
                (if (gx#stx-null? _tl12071259_)
                    (letrec ((_loop12081262_
                              (lambda (_hd12061266_ _body12121269_)
                                (if (gx#stx-pair? _hd12061266_)
                                    (let ((_e12091272_
                                           (gx#syntax-e _hd12061266_)))
                                      (let ((_lp-hd12101276_
                                             (##car _e12091272_))
                                            (_lp-tl12111279_
                                             (##cdr _e12091272_)))
                                        (_loop12081262_
                                         _lp-tl12111279_
                                         (cons _lp-hd12101276_
                                               _body12121269_))))
                                    (let ((_body12131282_
                                           (reverse _body12121269_)))
                                      ((lambda (_L1286_
                                                _L1288_
                                                _L1289_
                                                _L1290_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'with-syntax)
                                               (cons (cons _L1289_ '())
                                                     (cons (cons _L1290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L1288_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g13111314_ _g13121317_)
                                          (cons _g13111314_ _g13121317_))
                                        '()
                                        _L1286_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body12131282_
                                       _tl12041253_
                                       _hd12031250_
                                       _hd11971230_))))))
                      (_loop12081262_ _target12051256_ '()))
                    (_g11421219_ _g11431223_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g11421219_ _g11431223_))
                                              (_g11421219_ _g11431223_))))
                                      (_g11421219_ _g11431223_))))
                              (_g11421219_ _g11431223_))))
                      (_g11421219_ _g11431223_))))
               (_g11401458_
                (lambda (_g11431324_)
                  (if (gx#stx-pair? _g11431324_)
                      (let ((_e11651327_ (gx#syntax-e _g11431324_)))
                        (let ((_hd11661331_ (##car _e11651327_))
                              (_tl11671334_ (##cdr _e11651327_)))
                          (if (gx#stx-pair? _tl11671334_)
                              (let ((_e11681337_ (gx#syntax-e _tl11671334_)))
                                (let ((_hd11691341_ (##car _e11681337_))
                                      (_tl11701344_ (##cdr _e11681337_)))
                                  (if (gx#stx-pair? _hd11691341_)
                                      (let ((_e11711347_
                                             (gx#syntax-e _hd11691341_)))
                                        (let ((_hd11721351_
                                               (##car _e11711347_))
                                              (_tl11731354_
                                               (##cdr _e11711347_)))
                                          (if (gx#stx-pair? _hd11721351_)
                                              (let ((_e11741357_
                                                     (gx#syntax-e
                                                      _hd11721351_)))
                                                (let ((_hd11751361_
                                                       (##car _e11741357_))
                                                      (_tl11761364_
                                                       (##cdr _e11741357_)))
                                                  (if (gx#stx-pair?
                                                       _hd11751361_)
                                                      (let ((_e11771367_
                                                             (gx#syntax-e
                                                              _hd11751361_)))
                                                        (let ((_hd11781371_
                                                               (##car _e11771367_))
                                                              (_tl11791374_
                                                               (##cdr _e11771367_)))
                                                          (if (gx#identifier?
                                                               _hd11781371_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core::<syntax-sugar>[1]#_g30575_|
                           _hd11781371_)
                          (if (gx#stx-pair? _tl11761364_)
                              (let ((_e11801377_ (gx#syntax-e _tl11761364_)))
                                (let ((_hd11811381_ (##car _e11801377_))
                                      (_tl11821384_ (##cdr _e11801377_)))
                                  (if (gx#stx-null? _tl11821384_)
                                      (if (gx#stx-pair/null? _tl11701344_)
                                          (if (fx>= (gx#stx-length
                                                     _tl11701344_)
                                                    '0)
                                              (let ((_g30576_
                                                     (gx#syntax-split-splice
                                                      _tl11701344_
                                                      '0)))
                                                (begin
                                                  (let ((_g30577_
                                                         (values-count
                                                          _g30576_)))
                                                    (if (not (fx= _g30577_ 2))
                                                        (error "Context expects 2 values"
                                                               _g30577_)))
                                                  (let ((_target11831387_
                                                         (values-ref
                                                          _g30576_
                                                          0))
                                                        (_tl11851390_
                                                         (values-ref
                                                          _g30576_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl11851390_)
                                                        (letrec ((_loop11861393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd11841397_ _body11901400_)
                            (if (gx#stx-pair? _hd11841397_)
                                (let ((_e11871403_ (gx#syntax-e _hd11841397_)))
                                  (let ((_lp-hd11881407_ (##car _e11871403_))
                                        (_lp-tl11891410_ (##cdr _e11871403_)))
                                    (_loop11861393_
                                     _lp-tl11891410_
                                     (cons _lp-hd11881407_ _body11901400_))))
                                (let ((_body11911413_
                                       (reverse _body11901400_)))
                                  ((lambda (_L1417_
                                            _L1419_
                                            _L1420_
                                            _L1421_
                                            _L1422_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons _L1421_
                                                             (cons _L1420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L1422_
                                                             (cons _L1419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g14491452_ _g14501455_)
                                      (cons _g14491452_ _g14501455_))
                                    '()
                                    _L1417_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body11911413_
                                   _tl11731354_
                                   _hd11811381_
                                   _tl11791374_
                                   _hd11661331_))))))
                  (_loop11861393_ _target11831387_ '()))
                (_g11411320_ _g11431324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11411320_ _g11431324_))
                                          (_g11411320_ _g11431324_))
                                      (_g11411320_ _g11431324_))))
                              (_g11411320_ _g11431324_))
                          (_g11411320_ _g11431324_))
                      (_g11411320_ _g11431324_))))
              (_g11411320_ _g11431324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11411320_ _g11431324_))))
                                      (_g11411320_ _g11431324_))))
                              (_g11411320_ _g11431324_))))
                      (_g11411320_ _g11431324_))))
               (_g11391540_
                (lambda (_g11431462_)
                  (if (gx#stx-pair? _g11431462_)
                      (let ((_e11451465_ (gx#syntax-e _g11431462_)))
                        (let ((_hd11461469_ (##car _e11451465_))
                              (_tl11471472_ (##cdr _e11451465_)))
                          (if (gx#stx-pair? _tl11471472_)
                              (let ((_e11481475_ (gx#syntax-e _tl11471472_)))
                                (let ((_hd11491479_ (##car _e11481475_))
                                      (_tl11501482_ (##cdr _e11481475_)))
                                  (if (gx#stx-null? _hd11491479_)
                                      (if (gx#stx-pair/null? _tl11501482_)
                                          (if (fx>= (gx#stx-length
                                                     _tl11501482_)
                                                    '0)
                                              (let ((_g30578_
                                                     (gx#syntax-split-splice
                                                      _tl11501482_
                                                      '0)))
                                                (begin
                                                  (let ((_g30579_
                                                         (values-count
                                                          _g30578_)))
                                                    (if (not (fx= _g30579_ 2))
                                                        (error "Context expects 2 values"
                                                               _g30579_)))
                                                  (let ((_target11511485_
                                                         (values-ref
                                                          _g30578_
                                                          0))
                                                        (_tl11531488_
                                                         (values-ref
                                                          _g30578_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl11531488_)
                                                        (letrec ((_loop11541491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd11521495_ _body11581498_)
                            (if (gx#stx-pair? _hd11521495_)
                                (let ((_e11551501_ (gx#syntax-e _hd11521495_)))
                                  (let ((_lp-hd11561505_ (##car _e11551501_))
                                        (_lp-tl11571508_ (##cdr _e11551501_)))
                                    (_loop11541491_
                                     _lp-tl11571508_
                                     (cons _lp-hd11561505_ _body11581498_))))
                                (let ((_body11591511_
                                       (reverse _body11581498_)))
                                  ((lambda (_L1515_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g15311534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g15321537_)
                    (cons _g15311534_ _g15321537_))
                  '()
                  _L1515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body11591511_))))))
                  (_loop11541491_ _target11511485_ '()))
                (_g11401458_ _g11431462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11401458_ _g11431462_))
                                          (_g11401458_ _g11431462_))
                                      (_g11401458_ _g11431462_))))
                              (_g11401458_ _g11431462_))))
                      (_g11401458_ _g11431462_)))))
          (_g11391540_ _stx1137_))))
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1547_)
        (let* ((_g15501568_
                (lambda (_g15511564_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g15511564_)))
               (_g15491623_
                (lambda (_g15511572_)
                  (if (gx#stx-pair? _g15511572_)
                      (let ((_e15541575_ (gx#syntax-e _g15511572_)))
                        (let ((_hd15551579_ (##car _e15541575_))
                              (_tl15561582_ (##cdr _e15541575_)))
                          (if (gx#stx-pair? _tl15561582_)
                              (let ((_e15571585_ (gx#syntax-e _tl15561582_)))
                                (let ((_hd15581589_ (##car _e15571585_))
                                      (_tl15591592_ (##cdr _e15571585_)))
                                  (if (gx#stx-pair? _tl15591592_)
                                      (let ((_e15601595_
                                             (gx#syntax-e _tl15591592_)))
                                        (let ((_hd15611599_
                                               (##car _e15601595_))
                                              (_tl15621602_
                                               (##cdr _e15601595_)))
                                          (if (gx#stx-null? _tl15621602_)
                                              ((lambda (_L1605_ _L1607_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _L1605_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _L1607_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd15611599_
                                               _hd15581589_)
                                              (_g15501568_ _g15511572_))))
                                      (_g15501568_ _g15511572_))))
                              (_g15501568_ _g15511572_))))
                      (_g15501568_ _g15511572_)))))
          (_g15491623_ _stx1547_))))))
