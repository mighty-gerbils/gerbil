(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28424_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28425_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28428_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28429_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28430_|
    (gx#core-quote-syntax 'else))
  (begin
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defrules|
      (lambda (_$stx1543_)
        (let ((_g15471575_
               (lambda (_g15481571_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g15481571_))))
          (let ((_g15461676_
                 (lambda (_g15481579_)
                   (if (gx#stx-pair? _g15481579_)
                       (let ((_e15521582_ (gx#syntax-e _g15481579_)))
                         (let ((_hd15531586_ (##car _e15521582_))
                               (_tl15541589_ (##cdr _e15521582_)))
                           (if (gx#stx-pair? _tl15541589_)
                               (let ((_e15551592_ (gx#syntax-e _tl15541589_)))
                                 (let ((_hd15561596_ (##car _e15551592_))
                                       (_tl15571599_ (##cdr _e15551592_)))
                                   (if (gx#stx-pair? _tl15571599_)
                                       (let ((_e15581602_
                                              (gx#syntax-e _tl15571599_)))
                                         (let ((_hd15591606_
                                                (##car _e15581602_))
                                               (_tl15601609_
                                                (##cdr _e15581602_)))
                                           (if (gx#stx-pair/null? _tl15601609_)
                                               (if (fx>= (gx#stx-length
                                                          _tl15601609_)
                                                         '0)
                                                   (let ((_g28396_
                                                          (gx#syntax-split-splice
                                                           _tl15601609_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28397_
                                                              (values-count
                                                               _g28396_)))
                                                         (if (not (fx= _g28397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28397_)))
               (let ((_target15611612_ (values-ref _g28396_ 0))
                     (_tl15631615_ (values-ref _g28396_ 1)))
                 (if (gx#stx-null? _tl15631615_)
                     (letrec ((_loop15641618_
                               (lambda (_hd15621622_ _clauses15681625_)
                                 (if (gx#stx-pair? _hd15621622_)
                                     (let ((_e15651628_
                                            (gx#syntax-e _hd15621622_)))
                                       (let ((_lp-hd15661632_
                                              (##car _e15651628_))
                                             (_lp-tl15671635_
                                              (##cdr _e15651628_)))
                                         (_loop15641618_
                                          _lp-tl15671635_
                                          (cons _lp-hd15661632_
                                                _clauses15681625_))))
                                     (let ((_clauses15691638_
                                            (reverse _clauses15681625_)))
                                       ((lambda (_L1642_ _L1644_ _L1645_)
                                          (if (gx#identifier? _L1645_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'define-syntax)
                                                    (cons _L1645_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons _L1644_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g16671670_ _g16681673_)
                                               (cons _g16671670_ _g16681673_))
                                             '()
                                             _L1642_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g15471575_ _g15481579_)))
                                        _clauses15691638_
                                        _hd15591606_
                                        _hd15561596_))))))
                       (_loop15641618_ _target15611612_ '()))
                     (_g15471575_ _g15481579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g15471575_ _g15481579_))
                                               (_g15471575_ _g15481579_))))
                                       (_g15471575_ _g15481579_))))
                               (_g15471575_ _g15481579_))))
                       (_g15471575_ _g15481579_)))))
            (_g15461676_ _$stx1543_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1681_)
        (let ((_g16861725_
               (lambda (_g16871721_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g16871721_))))
          (let ((_g16851780_
                 (lambda (_g16871729_)
                   (if (gx#stx-pair? _g16871729_)
                       (let ((_e17111732_ (gx#syntax-e _g16871729_)))
                         (let ((_hd17121736_ (##car _e17111732_))
                               (_tl17131739_ (##cdr _e17111732_)))
                           (if (gx#stx-pair? _tl17131739_)
                               (let ((_e17141742_ (gx#syntax-e _tl17131739_)))
                                 (let ((_hd17151746_ (##car _e17141742_))
                                       (_tl17161749_ (##cdr _e17141742_)))
                                   (if (gx#stx-pair? _tl17161749_)
                                       (let ((_e17171752_
                                              (gx#syntax-e _tl17161749_)))
                                         (let ((_hd17181756_
                                                (##car _e17171752_))
                                               (_tl17191759_
                                                (##cdr _e17171752_)))
                                           (if (gx#stx-null? _tl17191759_)
                                               ((lambda (_L1762_ _L1764_)
                                                  (if (gx#identifier? _L1764_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-syntax)
                                                            (cons _L1764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1762_ '())))
              (_g16861725_ _g16871729_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd17181756_
                                                _hd17151746_)
                                               (_g16861725_ _g16871729_))))
                                       (_g16861725_ _g16871729_))))
                               (_g16861725_ _g16871729_))))
                       (_g16861725_ _g16871729_)))))
            (let ((_g16841878_
                   (lambda (_g16871784_)
                     (if (gx#stx-pair? _g16871784_)
                         (let ((_e16911787_ (gx#syntax-e _g16871784_)))
                           (let ((_hd16921791_ (##car _e16911787_))
                                 (_tl16931794_ (##cdr _e16911787_)))
                             (if (gx#stx-pair? _tl16931794_)
                                 (let ((_e16941797_
                                        (gx#syntax-e _tl16931794_)))
                                   (let ((_hd16951801_ (##car _e16941797_))
                                         (_tl16961804_ (##cdr _e16941797_)))
                                     (if (gx#stx-pair? _hd16951801_)
                                         (let ((_e16971807_
                                                (gx#syntax-e _hd16951801_)))
                                           (let ((_hd16981811_
                                                  (##car _e16971807_))
                                                 (_tl16991814_
                                                  (##cdr _e16971807_)))
                                             (if (gx#stx-pair/null?
                                                  _tl16961804_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl16961804_)
                                                           '0)
                                                     (let ((_g28398_
                                                            (gx#syntax-split-splice
                                                             _tl16961804_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28399_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28398_)))
                   (if (not (fx= _g28399_ 2))
                       (error "Context expects 2 values" _g28399_)))
                 (let ((_target17001817_ (values-ref _g28398_ 0))
                       (_tl17021820_ (values-ref _g28398_ 1)))
                   (if (gx#stx-null? _tl17021820_)
                       (letrec ((_loop17031823_
                                 (lambda (_hd17011827_ _body17071830_)
                                   (if (gx#stx-pair? _hd17011827_)
                                       (let ((_e17041833_
                                              (gx#syntax-e _hd17011827_)))
                                         (let ((_lp-hd17051837_
                                                (##car _e17041833_))
                                               (_lp-tl17061840_
                                                (##cdr _e17041833_)))
                                           (_loop17031823_
                                            _lp-tl17061840_
                                            (cons _lp-hd17051837_
                                                  _body17071830_))))
                                       (let ((_body17081843_
                                              (reverse _body17071830_)))
                                         ((lambda (_L1847_ _L1849_ _L1850_)
                                            (if (gx#identifier? _L1850_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-syntax)
                                                      (cons _L1850_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L1849_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g18691872_
                                                        _g18701875_)
                                                 (cons _g18691872_
                                                       _g18701875_))
                                               '()
                                               _L1847_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g16851780_ _g16871784_)))
                                          _body17081843_
                                          _tl16991814_
                                          _hd16981811_))))))
                         (_loop17031823_ _target17001817_ '()))
                       (_g16851780_ _g16871784_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g16851780_ _g16871784_))
                                                 (_g16851780_ _g16871784_))))
                                         (_g16851780_ _g16871784_))))
                                 (_g16851780_ _g16871784_))))
                         (_g16851780_ _g16871784_)))))
              (_g16841878_ _$stx1681_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defalias|
      (lambda (_$stx1883_)
        (let ((_g18871905_
               (lambda (_g18881901_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g18881901_))))
          (let ((_g18861960_
                 (lambda (_g18881909_)
                   (if (gx#stx-pair? _g18881909_)
                       (let ((_e18911912_ (gx#syntax-e _g18881909_)))
                         (let ((_hd18921916_ (##car _e18911912_))
                               (_tl18931919_ (##cdr _e18911912_)))
                           (if (gx#stx-pair? _tl18931919_)
                               (let ((_e18941922_ (gx#syntax-e _tl18931919_)))
                                 (let ((_hd18951926_ (##car _e18941922_))
                                       (_tl18961929_ (##cdr _e18941922_)))
                                   (if (gx#stx-pair? _tl18961929_)
                                       (let ((_e18971932_
                                              (gx#syntax-e _tl18961929_)))
                                         (let ((_hd18981936_
                                                (##car _e18971932_))
                                               (_tl18991939_
                                                (##cdr _e18971932_)))
                                           (if (gx#stx-null? _tl18991939_)
                                               ((lambda (_L1942_ _L1944_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'define-alias)
                                                        (cons _L1944_
                                                              (cons _L1942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd18981936_
                                                _hd18951926_)
                                               (_g18871905_ _g18881909_))))
                                       (_g18871905_ _g18881909_))))
                               (_g18871905_ _g18881909_))))
                       (_g18871905_ _g18881909_)))))
            (_g18861960_ _$stx1883_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#define|
      (lambda (_$stx1964_)
        (let ((_g19692008_
               (lambda (_g19702004_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g19702004_))))
          (let ((_g19682063_
                 (lambda (_g19702012_)
                   (if (gx#stx-pair? _g19702012_)
                       (let ((_e19942015_ (gx#syntax-e _g19702012_)))
                         (let ((_hd19952019_ (##car _e19942015_))
                               (_tl19962022_ (##cdr _e19942015_)))
                           (if (gx#stx-pair? _tl19962022_)
                               (let ((_e19972025_ (gx#syntax-e _tl19962022_)))
                                 (let ((_hd19982029_ (##car _e19972025_))
                                       (_tl19992032_ (##cdr _e19972025_)))
                                   (if (gx#stx-pair? _tl19992032_)
                                       (let ((_e20002035_
                                              (gx#syntax-e _tl19992032_)))
                                         (let ((_hd20012039_
                                                (##car _e20002035_))
                                               (_tl20022042_
                                                (##cdr _e20002035_)))
                                           (if (gx#stx-null? _tl20022042_)
                                               ((lambda (_L2045_ _L2047_)
                                                  (if (gx#identifier? _L2047_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L2047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L2045_ '())))
              (_g19692008_ _g19702012_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd20012039_
                                                _hd19982029_)
                                               (_g19692008_ _g19702012_))))
                                       (_g19692008_ _g19702012_))))
                               (_g19692008_ _g19702012_))))
                       (_g19692008_ _g19702012_)))))
            (let ((_g19672161_
                   (lambda (_g19702067_)
                     (if (gx#stx-pair? _g19702067_)
                         (let ((_e19742070_ (gx#syntax-e _g19702067_)))
                           (let ((_hd19752074_ (##car _e19742070_))
                                 (_tl19762077_ (##cdr _e19742070_)))
                             (if (gx#stx-pair? _tl19762077_)
                                 (let ((_e19772080_
                                        (gx#syntax-e _tl19762077_)))
                                   (let ((_hd19782084_ (##car _e19772080_))
                                         (_tl19792087_ (##cdr _e19772080_)))
                                     (if (gx#stx-pair? _hd19782084_)
                                         (let ((_e19802090_
                                                (gx#syntax-e _hd19782084_)))
                                           (let ((_hd19812094_
                                                  (##car _e19802090_))
                                                 (_tl19822097_
                                                  (##cdr _e19802090_)))
                                             (if (gx#stx-pair/null?
                                                  _tl19792087_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl19792087_)
                                                           '0)
                                                     (let ((_g28400_
                                                            (gx#syntax-split-splice
                                                             _tl19792087_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28401_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28400_)))
                   (if (not (fx= _g28401_ 2))
                       (error "Context expects 2 values" _g28401_)))
                 (let ((_target19832100_ (values-ref _g28400_ 0))
                       (_tl19852103_ (values-ref _g28400_ 1)))
                   (if (gx#stx-null? _tl19852103_)
                       (letrec ((_loop19862106_
                                 (lambda (_hd19842110_ _body19902113_)
                                   (if (gx#stx-pair? _hd19842110_)
                                       (let ((_e19872116_
                                              (gx#syntax-e _hd19842110_)))
                                         (let ((_lp-hd19882120_
                                                (##car _e19872116_))
                                               (_lp-tl19892123_
                                                (##cdr _e19872116_)))
                                           (_loop19862106_
                                            _lp-tl19892123_
                                            (cons _lp-hd19882120_
                                                  _body19902113_))))
                                       (let ((_body19912126_
                                              (reverse _body19902113_)))
                                         ((lambda (_L2130_ _L2132_ _L2133_)
                                            (if (gx#identifier? _L2133_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L2133_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L2132_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g21522155_
                                                        _g21532158_)
                                                 (cons _g21522155_
                                                       _g21532158_))
                                               '()
                                               _L2130_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g19682063_ _g19702067_)))
                                          _body19912126_
                                          _tl19822097_
                                          _hd19812094_))))))
                         (_loop19862106_ _target19832100_ '()))
                       (_g19682063_ _g19702067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g19682063_ _g19702067_))
                                                 (_g19682063_ _g19702067_))))
                                         (_g19682063_ _g19702067_))))
                                 (_g19682063_ _g19702067_))))
                         (_g19682063_ _g19702067_)))))
              (_g19672161_ _$stx1964_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2166_)
        (let ((_g21712216_
               (lambda (_g21722212_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g21722212_))))
          (let ((_g21702317_
                 (lambda (_g21722220_)
                   (if (gx#stx-pair? _g21722220_)
                       (let ((_e21932223_ (gx#syntax-e _g21722220_)))
                         (let ((_hd21942227_ (##car _e21932223_))
                               (_tl21952230_ (##cdr _e21932223_)))
                           (if (gx#stx-pair? _tl21952230_)
                               (let ((_e21962233_ (gx#syntax-e _tl21952230_)))
                                 (let ((_hd21972237_ (##car _e21962233_))
                                       (_tl21982240_ (##cdr _e21962233_)))
                                   (if (gx#stx-pair? _hd21972237_)
                                       (let ((_e21992243_
                                              (gx#syntax-e _hd21972237_)))
                                         (let ((_hd22002247_
                                                (##car _e21992243_))
                                               (_tl22012250_
                                                (##cdr _e21992243_)))
                                           (if (gx#stx-pair/null? _tl21982240_)
                                               (if (fx>= (gx#stx-length
                                                          _tl21982240_)
                                                         '0)
                                                   (let ((_g28402_
                                                          (gx#syntax-split-splice
                                                           _tl21982240_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28403_
                                                              (values-count
                                                               _g28402_)))
                                                         (if (not (fx= _g28403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28403_)))
               (let ((_target22022253_ (values-ref _g28402_ 0))
                     (_tl22042256_ (values-ref _g28402_ 1)))
                 (if (gx#stx-null? _tl22042256_)
                     (letrec ((_loop22052259_
                               (lambda (_hd22032263_ _body22092266_)
                                 (if (gx#stx-pair? _hd22032263_)
                                     (let ((_e22062269_
                                            (gx#syntax-e _hd22032263_)))
                                       (let ((_lp-hd22072273_
                                              (##car _e22062269_))
                                             (_lp-tl22082276_
                                              (##cdr _e22062269_)))
                                         (_loop22052259_
                                          _lp-tl22082276_
                                          (cons _lp-hd22072273_
                                                _body22092266_))))
                                     (let ((_body22102279_
                                            (reverse _body22092266_)))
                                       ((lambda (_L2283_
                                                 _L2285_
                                                 _L2286_
                                                 _L2287_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons _L2286_ '())
                                                      (cons (cons _L2287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L2285_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g23082311_ _g23092314_)
                                           (cons _g23082311_ _g23092314_))
                                         '()
                                         _L2283_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body22102279_
                                        _tl22012250_
                                        _hd22002247_
                                        _hd21942227_))))))
                       (_loop22052259_ _target22022253_ '()))
                     (_g21712216_ _g21722220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g21712216_ _g21722220_))
                                               (_g21712216_ _g21722220_))))
                                       (_g21712216_ _g21722220_))))
                               (_g21712216_ _g21722220_))))
                       (_g21712216_ _g21722220_)))))
            (let ((_g21692399_
                   (lambda (_g21722321_)
                     (if (gx#stx-pair? _g21722321_)
                         (let ((_e21742324_ (gx#syntax-e _g21722321_)))
                           (let ((_hd21752328_ (##car _e21742324_))
                                 (_tl21762331_ (##cdr _e21742324_)))
                             (if (gx#stx-pair? _tl21762331_)
                                 (let ((_e21772334_
                                        (gx#syntax-e _tl21762331_)))
                                   (let ((_hd21782338_ (##car _e21772334_))
                                         (_tl21792341_ (##cdr _e21772334_)))
                                     (if (gx#stx-null? _hd21782338_)
                                         (if (gx#stx-pair/null? _tl21792341_)
                                             (if (fx>= (gx#stx-length
                                                        _tl21792341_)
                                                       '0)
                                                 (let ((_g28404_
                                                        (gx#syntax-split-splice
                                                         _tl21792341_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28405_
                                                            (values-count
                                                             _g28404_)))
                                                       (if (not (fx= _g28405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28405_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target21802344_
                                                            (values-ref
                                                             _g28404_
                                                             0))
                                                           (_tl21822347_
                                                            (values-ref
                                                             _g28404_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl21822347_)
                                                           (letrec ((_loop21832350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd21812354_ _body21872357_)
                               (if (gx#stx-pair? _hd21812354_)
                                   (let ((_e21842360_
                                          (gx#syntax-e _hd21812354_)))
                                     (let ((_lp-hd21852364_
                                            (##car _e21842360_))
                                           (_lp-tl21862367_
                                            (##cdr _e21842360_)))
                                       (_loop21832350_
                                        _lp-tl21862367_
                                        (cons _lp-hd21852364_
                                              _body21872357_))))
                                   (let ((_body21882370_
                                          (reverse _body21872357_)))
                                     ((lambda (_L2374_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g23902393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g23912396_)
                       (cons _g23902393_ _g23912396_))
                     '()
                     _L2374_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body21882370_))))))
                     (_loop21832350_ _target21802344_ '()))
                   (_g21702317_ _g21722321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g21702317_ _g21722321_))
                                             (_g21702317_ _g21722321_))
                                         (_g21702317_ _g21722321_))))
                                 (_g21702317_ _g21722321_))))
                         (_g21702317_ _g21722321_)))))
              (_g21692399_ _$stx2166_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let|
      (lambda (_$stx2405_)
        (let ((_g24102474_
               (lambda (_g24112470_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g24112470_))))
          (let ((_g24092559_
                 (lambda (_g24112478_)
                   (if (gx#stx-pair? _g24112478_)
                       (let ((_e24542481_ (gx#syntax-e _g24112478_)))
                         (let ((_hd24552485_ (##car _e24542481_))
                               (_tl24562488_ (##cdr _e24542481_)))
                           (if (gx#stx-pair? _tl24562488_)
                               (let ((_e24572491_ (gx#syntax-e _tl24562488_)))
                                 (let ((_hd24582495_ (##car _e24572491_))
                                       (_tl24592498_ (##cdr _e24572491_)))
                                   (if (gx#stx-pair/null? _tl24592498_)
                                       (if (fx>= (gx#stx-length _tl24592498_)
                                                 '0)
                                           (let ((_g28406_
                                                  (gx#syntax-split-splice
                                                   _tl24592498_
                                                   '0)))
                                             (begin
                                               (let ((_g28407_
                                                      (values-count _g28406_)))
                                                 (if (not (fx= _g28407_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28407_)))
                                               (let ((_target24602501_
                                                      (values-ref _g28406_ 0))
                                                     (_tl24622504_
                                                      (values-ref _g28406_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl24622504_)
                                                     (letrec ((_loop24632507_
                                                               (lambda (_hd24612511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body24672514_)
                         (if (gx#stx-pair? _hd24612511_)
                             (let ((_e24642517_ (gx#syntax-e _hd24612511_)))
                               (let ((_lp-hd24652521_ (##car _e24642517_))
                                     (_lp-tl24662524_ (##cdr _e24642517_)))
                                 (_loop24632507_
                                  _lp-tl24662524_
                                  (cons _lp-hd24652521_ _body24672514_))))
                             (let ((_body24682527_ (reverse _body24672514_)))
                               ((lambda (_L2531_ _L2533_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons _L2533_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g25502553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g25512556_)
                       (cons _g25502553_ _g25512556_))
                     '()
                     _L2531_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body24682527_
                                _hd24582495_))))))
               (_loop24632507_ _target24602501_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g24102474_
                                                      _g24112478_)))))
                                           (_g24102474_ _g24112478_))
                                       (_g24102474_ _g24112478_))))
                               (_g24102474_ _g24112478_))))
                       (_g24102474_ _g24112478_)))))
            (let ((_g24082735_
                   (lambda (_g24112563_)
                     (if (gx#stx-pair? _g24112563_)
                         (let ((_e24172566_ (gx#syntax-e _g24112563_)))
                           (let ((_hd24182570_ (##car _e24172566_))
                                 (_tl24192573_ (##cdr _e24172566_)))
                             (if (gx#stx-pair? _tl24192573_)
                                 (let ((_e24202576_
                                        (gx#syntax-e _tl24192573_)))
                                   (let ((_hd24212580_ (##car _e24202576_))
                                         (_tl24222583_ (##cdr _e24202576_)))
                                     (if (gx#stx-pair? _tl24222583_)
                                         (let ((_e24232586_
                                                (gx#syntax-e _tl24222583_)))
                                           (let ((_hd24242590_
                                                  (##car _e24232586_))
                                                 (_tl24252593_
                                                  (##cdr _e24232586_)))
                                             (if (gx#stx-pair/null?
                                                  _hd24242590_)
                                                 (if (fx>= (gx#stx-length
                                                            _hd24242590_)
                                                           '0)
                                                     (let ((_g28408_
                                                            (gx#syntax-split-splice
                                                             _hd24242590_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28409_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28408_)))
                   (if (not (fx= _g28409_ 2))
                       (error "Context expects 2 values" _g28409_)))
                 (let ((_target24262596_ (values-ref _g28408_ 0))
                       (_tl24282599_ (values-ref _g28408_ 1)))
                   (letrec ((_loop24292602_
                             (lambda (_hd24272606_ _arg24332609_ _var24342611_)
                               (if (gx#stx-pair? _hd24272606_)
                                   (let ((_e24302614_
                                          (gx#syntax-e _hd24272606_)))
                                     (let ((_lp-hd24312618_
                                            (##car _e24302614_))
                                           (_lp-tl24322621_
                                            (##cdr _e24302614_)))
                                       (if (gx#stx-pair? _lp-hd24312618_)
                                           (let ((_e24372624_
                                                  (gx#syntax-e
                                                   _lp-hd24312618_)))
                                             (let ((_hd24382628_
                                                    (##car _e24372624_))
                                                   (_tl24392631_
                                                    (##cdr _e24372624_)))
                                               (if (gx#stx-pair? _tl24392631_)
                                                   (let ((_e24402634_
                                                          (gx#syntax-e
                                                           _tl24392631_)))
                                                     (let ((_hd24412638_
                                                            (##car _e24402634_))
                                                           (_tl24422641_
                                                            (##cdr _e24402634_)))
                                                       (if (gx#stx-null?
                                                            _tl24422641_)
                                                           (_loop24292602_
                                                            _lp-tl24322621_
                                                            (cons _hd24412638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg24332609_)
                    (cons _hd24382628_ _var24342611_))
                   (_g24092559_ _g24112563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g24092559_ _g24112563_))))
                                           (_g24092559_ _g24112563_))))
                                   (let ((_arg24352644_
                                          (reverse _arg24332609_))
                                         (_var24362647_
                                          (reverse _var24342611_)))
                                     (if (gx#stx-pair/null? _tl24252593_)
                                         (if (fx>= (gx#stx-length _tl24252593_)
                                                   '0)
                                             (let ((_g28410_
                                                    (gx#syntax-split-splice
                                                     _tl24252593_
                                                     '0)))
                                               (begin
                                                 (let ((_g28411_
                                                        (values-count
                                                         _g28410_)))
                                                   (if (not (fx= _g28411_ 2))
                                                       (error "Context expects 2 values"
                                                              _g28411_)))
                                                 (let ((_target24432650_
                                                        (values-ref
                                                         _g28410_
                                                         0))
                                                       (_tl24452653_
                                                        (values-ref
                                                         _g28410_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl24452653_)
                                                       (letrec ((_loop24462656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd24442660_ _body24502663_)
                           (if (gx#stx-pair? _hd24442660_)
                               (let ((_e24472666_ (gx#syntax-e _hd24442660_)))
                                 (let ((_lp-hd24482670_ (##car _e24472666_))
                                       (_lp-tl24492673_ (##cdr _e24472666_)))
                                   (_loop24462656_
                                    _lp-tl24492673_
                                    (cons _lp-hd24482670_ _body24502663_))))
                               (let ((_body24512676_ (reverse _body24502663_)))
                                 ((lambda (_L2680_
                                           _L2682_
                                           _L2683_
                                           _L2684_
                                           _L2685_)
                                    (if (gx#identifier? _L2685_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec-values)
                                                    (cons (cons (cons (cons _L2685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'lambda%)
                                          (cons (begin
                                                  '#!void
                                                  (foldr (lambda (_g27102717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27112720_)
                   (cons _g27102717_ _g27112720_))
                 _L2682_
                 _L2684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g27122723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27132726_)
                   (cons _g27122723_ _g27132726_))
                 '()
                 _L2680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L2685_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g27142729_
                                                                _g27152732_)
                                                         (cons _g27142729_
                                                               _g27152732_))
                                                       '()
                                                       _L2683_)))
                                        (_g24092559_ _g24112563_)))
                                  _body24512676_
                                  _tl24282599_
                                  _arg24352644_
                                  _var24362647_
                                  _hd24212580_))))))
                 (_loop24462656_ _target24432650_ '()))
               (_g24092559_ _g24112563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g24092559_ _g24112563_))
                                         (_g24092559_ _g24112563_)))))))
                     (_loop24292602_ _target24262596_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g24092559_ _g24112563_))
                                                 (_g24092559_ _g24112563_))))
                                         (_g24092559_ _g24112563_))))
                                 (_g24092559_ _g24112563_))))
                         (_g24092559_ _g24112563_)))))
              (_g24082735_ _$stx2405_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*|
      (lambda (_$stx2742_)
        (let ((_g27462770_
               (lambda (_g27472766_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g27472766_))))
          (let ((_g27452855_
                 (lambda (_g27472774_)
                   (if (gx#stx-pair? _g27472774_)
                       (let ((_e27502777_ (gx#syntax-e _g27472774_)))
                         (let ((_hd27512781_ (##car _e27502777_))
                               (_tl27522784_ (##cdr _e27502777_)))
                           (if (gx#stx-pair? _tl27522784_)
                               (let ((_e27532787_ (gx#syntax-e _tl27522784_)))
                                 (let ((_hd27542791_ (##car _e27532787_))
                                       (_tl27552794_ (##cdr _e27532787_)))
                                   (if (gx#stx-pair/null? _tl27552794_)
                                       (if (fx>= (gx#stx-length _tl27552794_)
                                                 '0)
                                           (let ((_g28412_
                                                  (gx#syntax-split-splice
                                                   _tl27552794_
                                                   '0)))
                                             (begin
                                               (let ((_g28413_
                                                      (values-count _g28412_)))
                                                 (if (not (fx= _g28413_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28413_)))
                                               (let ((_target27562797_
                                                      (values-ref _g28412_ 0))
                                                     (_tl27582800_
                                                      (values-ref _g28412_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl27582800_)
                                                     (letrec ((_loop27592803_
                                                               (lambda (_hd27572807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body27632810_)
                         (if (gx#stx-pair? _hd27572807_)
                             (let ((_e27602813_ (gx#syntax-e _hd27572807_)))
                               (let ((_lp-hd27612817_ (##car _e27602813_))
                                     (_lp-tl27622820_ (##cdr _e27602813_)))
                                 (_loop27592803_
                                  _lp-tl27622820_
                                  (cons _lp-hd27612817_ _body27632810_))))
                             (let ((_body27642823_ (reverse _body27632810_)))
                               ((lambda (_L2827_ _L2829_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let*-values)
                                              (cons _L2829_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g28462849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g28472852_)
                       (cons _g28462849_ _g28472852_))
                     '()
                     _L2827_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body27642823_
                                _hd27542791_))))))
               (_loop27592803_ _target27562797_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g27462770_
                                                      _g27472774_)))))
                                           (_g27462770_ _g27472774_))
                                       (_g27462770_ _g27472774_))))
                               (_g27462770_ _g27472774_))))
                       (_g27462770_ _g27472774_)))))
            (_g27452855_ _$stx2742_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec|
      (lambda (_$stx2860_)
        (let ((_g28642888_
               (lambda (_g28652884_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g28652884_))))
          (let ((_g28632973_
                 (lambda (_g28652892_)
                   (if (gx#stx-pair? _g28652892_)
                       (let ((_e28682895_ (gx#syntax-e _g28652892_)))
                         (let ((_hd28692899_ (##car _e28682895_))
                               (_tl28702902_ (##cdr _e28682895_)))
                           (if (gx#stx-pair? _tl28702902_)
                               (let ((_e28712905_ (gx#syntax-e _tl28702902_)))
                                 (let ((_hd28722909_ (##car _e28712905_))
                                       (_tl28732912_ (##cdr _e28712905_)))
                                   (if (gx#stx-pair/null? _tl28732912_)
                                       (if (fx>= (gx#stx-length _tl28732912_)
                                                 '0)
                                           (let ((_g28414_
                                                  (gx#syntax-split-splice
                                                   _tl28732912_
                                                   '0)))
                                             (begin
                                               (let ((_g28415_
                                                      (values-count _g28414_)))
                                                 (if (not (fx= _g28415_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28415_)))
                                               (let ((_target28742915_
                                                      (values-ref _g28414_ 0))
                                                     (_tl28762918_
                                                      (values-ref _g28414_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl28762918_)
                                                     (letrec ((_loop28772921_
                                                               (lambda (_hd28752925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body28812928_)
                         (if (gx#stx-pair? _hd28752925_)
                             (let ((_e28782931_ (gx#syntax-e _hd28752925_)))
                               (let ((_lp-hd28792935_ (##car _e28782931_))
                                     (_lp-tl28802938_ (##cdr _e28782931_)))
                                 (_loop28772921_
                                  _lp-tl28802938_
                                  (cons _lp-hd28792935_ _body28812928_))))
                             (let ((_body28822941_ (reverse _body28812928_)))
                               ((lambda (_L2945_ _L2947_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec-values)
                                              (cons _L2947_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g29642967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g29652970_)
                       (cons _g29642967_ _g29652970_))
                     '()
                     _L2945_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body28822941_
                                _hd28722909_))))))
               (_loop28772921_ _target28742915_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g28642888_
                                                      _g28652892_)))))
                                           (_g28642888_ _g28652892_))
                                       (_g28642888_ _g28652892_))))
                               (_g28642888_ _g28652892_))))
                       (_g28642888_ _g28652892_)))))
            (_g28632973_ _$stx2860_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec*|
      (lambda (_$stx2978_)
        (let ((_g29823006_
               (lambda (_g29833002_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g29833002_))))
          (let ((_g29813091_
                 (lambda (_g29833010_)
                   (if (gx#stx-pair? _g29833010_)
                       (let ((_e29863013_ (gx#syntax-e _g29833010_)))
                         (let ((_hd29873017_ (##car _e29863013_))
                               (_tl29883020_ (##cdr _e29863013_)))
                           (if (gx#stx-pair? _tl29883020_)
                               (let ((_e29893023_ (gx#syntax-e _tl29883020_)))
                                 (let ((_hd29903027_ (##car _e29893023_))
                                       (_tl29913030_ (##cdr _e29893023_)))
                                   (if (gx#stx-pair/null? _tl29913030_)
                                       (if (fx>= (gx#stx-length _tl29913030_)
                                                 '0)
                                           (let ((_g28416_
                                                  (gx#syntax-split-splice
                                                   _tl29913030_
                                                   '0)))
                                             (begin
                                               (let ((_g28417_
                                                      (values-count _g28416_)))
                                                 (if (not (fx= _g28417_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28417_)))
                                               (let ((_target29923033_
                                                      (values-ref _g28416_ 0))
                                                     (_tl29943036_
                                                      (values-ref _g28416_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl29943036_)
                                                     (letrec ((_loop29953039_
                                                               (lambda (_hd29933043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body29993046_)
                         (if (gx#stx-pair? _hd29933043_)
                             (let ((_e29963049_ (gx#syntax-e _hd29933043_)))
                               (let ((_lp-hd29973053_ (##car _e29963049_))
                                     (_lp-tl29983056_ (##cdr _e29963049_)))
                                 (_loop29953039_
                                  _lp-tl29983056_
                                  (cons _lp-hd29973053_ _body29993046_))))
                             (let ((_body30003059_ (reverse _body29993046_)))
                               ((lambda (_L3063_ _L3065_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec*-values)
                                              (cons _L3065_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g30823085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g30833088_)
                       (cons _g30823085_ _g30833088_))
                     '()
                     _L3063_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body30003059_
                                _hd29903027_))))))
               (_loop29953039_ _target29923033_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g29823006_
                                                      _g29833010_)))))
                                           (_g29823006_ _g29833010_))
                                       (_g29823006_ _g29833010_))))
                               (_g29823006_ _g29833010_))))
                       (_g29823006_ _g29833010_)))))
            (_g29813091_ _$stx2978_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#~let|
      (lambda (_stx3096_)
        (let ((_let-head?3099_
               (lambda (_x3579_)
                 (let ((_g35833594_
                        (lambda (_g35843590_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g35843590_))))
                   (let ((_g35823605_
                          (lambda (_g35843598_)
                            ((lambda () (gx#identifier? _x3579_))))))
                     (let ((_g35813635_
                            (lambda (_g35843609_)
                              (if (gx#stx-pair? _g35843609_)
                                  (let ((_e35863612_
                                         (gx#syntax-e _g35843609_)))
                                    (let ((_hd35873616_ (##car _e35863612_))
                                          (_tl35883619_ (##cdr _e35863612_)))
                                      (if (gx#identifier? _hd35873616_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:1>[1]#_g28425_|
                                               _hd35873616_)
                                              ((lambda (_L3622_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3622_))
                                               _tl35883619_)
                                              (_g35823605_ _g35843609_))
                                          (_g35823605_ _g35843609_))))
                                  (_g35823605_ _g35843609_)))))
                       (_g35813635_ _x3579_)))))))
          (let ((_let-head3101_
                 (lambda (_x3519_)
                   (let ((_g35233534_
                          (lambda (_g35243530_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g35243530_))))
                     (let ((_g35223545_
                            (lambda (_g35243538_)
                              ((lambda () (list _x3519_))))))
                       (let ((_g35213575_
                              (lambda (_g35243549_)
                                (if (gx#stx-pair? _g35243549_)
                                    (let ((_e35263552_
                                           (gx#syntax-e _g35243549_)))
                                      (let ((_hd35273556_ (##car _e35263552_))
                                            (_tl35283559_ (##cdr _e35263552_)))
                                        (if (gx#identifier? _hd35273556_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:1>[1]#_g28424_|
                                                 _hd35273556_)
                                                ((lambda (_L3562_) _L3562_)
                                                 _tl35283559_)
                                                (_g35223545_ _g35243549_))
                                            (_g35223545_ _g35243549_))))
                                    (_g35223545_ _g35243549_)))))
                         (_g35213575_ _x3519_)))))))
            (let ((_g31043170_
                   (lambda (_g31053166_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g31053166_))))
              (let ((_g31033431_
                     (lambda (_g31053174_)
                       (if (gx#stx-pair? _g31053174_)
                           (let ((_e31303177_ (gx#syntax-e _g31053174_)))
                             (let ((_hd31313181_ (##car _e31303177_))
                                   (_tl31323184_ (##cdr _e31303177_)))
                               (if (gx#stx-pair? _tl31323184_)
                                   (let ((_e31333187_
                                          (gx#syntax-e _tl31323184_)))
                                     (let ((_hd31343191_ (##car _e31333187_))
                                           (_tl31353194_ (##cdr _e31333187_)))
                                       (if (gx#stx-pair? _tl31353194_)
                                           (let ((_e31363197_
                                                  (gx#syntax-e _tl31353194_)))
                                             (let ((_hd31373201_
                                                    (##car _e31363197_))
                                                   (_tl31383204_
                                                    (##cdr _e31363197_)))
                                               (if (gx#stx-pair/null?
                                                    _hd31373201_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd31373201_)
                                                             '0)
                                                       (let ((_g28418_
                                                              (gx#syntax-split-splice
                                                               _hd31373201_
                                                               '0)))
                                                         (begin
                                                           (let ((_g28419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g28418_)))
                     (if (not (fx= _g28419_ 2))
                         (error "Context expects 2 values" _g28419_)))
                   (let ((_target31393207_ (values-ref _g28418_ 0))
                         (_tl31413210_ (values-ref _g28418_ 1)))
                     (if (gx#stx-null? _tl31413210_)
                         (letrec ((_loop31423213_
                                   (lambda (_hd31403217_
                                            _e31463220_
                                            _hd31473222_)
                                     (if (gx#stx-pair? _hd31403217_)
                                         (let ((_e31433225_
                                                (gx#syntax-e _hd31403217_)))
                                           (let ((_lp-hd31443229_
                                                  (##car _e31433225_))
                                                 (_lp-tl31453232_
                                                  (##cdr _e31433225_)))
                                             (if (gx#stx-pair? _lp-hd31443229_)
                                                 (let ((_e31503235_
                                                        (gx#syntax-e
                                                         _lp-hd31443229_)))
                                                   (let ((_hd31513239_
                                                          (##car _e31503235_))
                                                         (_tl31523242_
                                                          (##cdr _e31503235_)))
                                                     (if (gx#stx-pair?
                                                          _tl31523242_)
                                                         (let ((_e31533245_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl31523242_)))
                   (let ((_hd31543249_ (##car _e31533245_))
                         (_tl31553252_ (##cdr _e31533245_)))
                     (if (gx#stx-null? _tl31553252_)
                         (_loop31423213_
                          _lp-tl31453232_
                          (cons _hd31543249_ _e31463220_)
                          (cons _hd31513239_ _hd31473222_))
                         (_g31043170_ _g31053174_))))
                 (_g31043170_ _g31053174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g31043170_ _g31053174_))))
                                         (let ((_e31483255_
                                                (reverse _e31463220_))
                                               (_hd31493258_
                                                (reverse _hd31473222_)))
                                           (if (gx#stx-pair/null? _tl31383204_)
                                               (if (fx>= (gx#stx-length
                                                          _tl31383204_)
                                                         '0)
                                                   (let ((_g28420_
                                                          (gx#syntax-split-splice
                                                           _tl31383204_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28421_
                                                              (values-count
                                                               _g28420_)))
                                                         (if (not (fx= _g28421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28421_)))
               (let ((_target31563261_ (values-ref _g28420_ 0))
                     (_tl31583264_ (values-ref _g28420_ 1)))
                 (if (gx#stx-null? _tl31583264_)
                     (letrec ((_loop31593267_
                               (lambda (_hd31573271_ _body31633274_)
                                 (if (gx#stx-pair? _hd31573271_)
                                     (let ((_e31603277_
                                            (gx#syntax-e _hd31573271_)))
                                       (let ((_lp-hd31613281_
                                              (##car _e31603277_))
                                             (_lp-tl31623284_
                                              (##cdr _e31603277_)))
                                         (_loop31593267_
                                          _lp-tl31623284_
                                          (cons _lp-hd31613281_
                                                _body31633274_))))
                                     (let ((_body31643287_
                                            (reverse _body31633274_)))
                                       ((lambda (_L3291_
                                                 _L3293_
                                                 _L3294_
                                                 _L3295_)
                                          (if (gx#stx-andmap
                                               _let-head?3099_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g33213324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g33223327_)
                  (cons _g33213324_ _g33223327_))
                '()
                _L3294_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g33303347_
                                                     (lambda (_g33313343_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g33313343_))))
                                                (let ((_g33293419_
                                                       (lambda (_g33313351_)
                                                         (if (gx#stx-pair/null?
                                                              _g33313351_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g33313351_)
                               '0)
                         (let ((_g28422_
                                (gx#syntax-split-splice _g33313351_ '0)))
                           (begin
                             (let ((_g28423_ (values-count _g28422_)))
                               (if (not (fx= _g28423_ 2))
                                   (error "Context expects 2 values"
                                          _g28423_)))
                             (let ((_target33333354_ (values-ref _g28422_ 0))
                                   (_tl33353357_ (values-ref _g28422_ 1)))
                               (if (gx#stx-null? _tl33353357_)
                                   (letrec ((_loop33363360_
                                             (lambda (_hd33343364_
                                                      _hd-bind33403367_)
                                               (if (gx#stx-pair? _hd33343364_)
                                                   (let ((_e33373370_
                                                          (gx#syntax-e
                                                           _hd33343364_)))
                                                     (let ((_lp-hd33383374_
                                                            (##car _e33373370_))
                                                           (_lp-tl33393377_
                                                            (##cdr _e33373370_)))
                                                       (_loop33363360_
                                                        _lp-tl33393377_
                                                        (cons _lp-hd33383374_
                                                              _hd-bind33403367_))))
                                                   (let ((_hd-bind33413380_
                                                          (reverse _hd-bind33403367_)))
                                                     ((lambda (_L3384_)
                                                        (let ()
                                                          (cons _L3295_
                                                                (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#syntax-check-splice-targets
                                 _L3293_
                                 _L3384_)
                                (foldr (lambda (_g33993405_
                                                _g34003408_
                                                _g34013410_)
                                         (cons (cons _g34003408_
                                                     (cons _g33993405_ '()))
                                               _g34013410_))
                                       '()
                                       _L3293_
                                       _L3384_))
                              (begin
                                '#!void
                                (foldr (lambda (_g34023413_ _g34033416_)
                                         (cons _g34023413_ _g34033416_))
                                       '()
                                       _L3291_))))))
              _hd-bind33413380_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop33363360_ _target33333354_ '()))
                                   (_g33303347_ _g33313351_)))))
                         (_g33303347_ _g33313351_))
                     (_g33303347_ _g33313351_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g33293419_
                                                   (gx#stx-map
                                                    _let-head3101_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g34223425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g34233428_)
                       (cons _g34223425_ _g34233428_))
                     '()
                     _L3294_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g31043170_ _g31053174_)))
                                        _body31643287_
                                        _e31483255_
                                        _hd31493258_
                                        _hd31343191_))))))
                       (_loop31593267_ _target31563261_ '()))
                     (_g31043170_ _g31053174_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31043170_ _g31053174_))
                                               (_g31043170_ _g31053174_)))))))
                           (_loop31423213_ _target31393207_ '() '()))
                         (_g31043170_ _g31053174_)))))
               (_g31043170_ _g31053174_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31043170_ _g31053174_))))
                                           (_g31043170_ _g31053174_))))
                                   (_g31043170_ _g31053174_))))
                           (_g31043170_ _g31053174_)))))
                (let ((_g31023515_
                       (lambda (_g31053435_)
                         (if (gx#stx-pair? _g31053435_)
                             (let ((_e31113438_ (gx#syntax-e _g31053435_)))
                               (let ((_hd31123442_ (##car _e31113438_))
                                     (_tl31133445_ (##cdr _e31113438_)))
                                 (if (gx#stx-pair? _tl31133445_)
                                     (let ((_e31143448_
                                            (gx#syntax-e _tl31133445_)))
                                       (let ((_hd31153452_ (##car _e31143448_))
                                             (_tl31163455_
                                              (##cdr _e31143448_)))
                                         (if (gx#stx-pair? _tl31163455_)
                                             (let ((_e31173458_
                                                    (gx#syntax-e
                                                     _tl31163455_)))
                                               (let ((_hd31183462_
                                                      (##car _e31173458_))
                                                     (_tl31193465_
                                                      (##cdr _e31173458_)))
                                                 (if (gx#stx-pair?
                                                      _hd31183462_)
                                                     (let ((_e31203468_
                                                            (gx#syntax-e
                                                             _hd31183462_)))
                                                       (let ((_hd31213472_
                                                              (##car _e31203468_))
                                                             (_tl31223475_
                                                              (##cdr _e31203468_)))
                                                         (if (gx#stx-pair?
                                                              _tl31223475_)
                                                             (let ((_e31233478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl31223475_)))
                       (let ((_hd31243482_ (##car _e31233478_))
                             (_tl31253485_ (##cdr _e31233478_)))
                         (if (gx#stx-null? _tl31253485_)
                             ((lambda (_L3488_ _L3490_ _L3491_ _L3492_ _L3493_)
                                (if (_let-head?3099_ _L3491_)
                                    (cons _L3493_
                                          (cons _L3492_
                                                (cons (cons (cons _L3491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L3490_ '()))
                    '())
              _L3488_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g31033431_ _g31053435_)))
                              _tl31193465_
                              _hd31243482_
                              _hd31213472_
                              _hd31153452_
                              _hd31123442_)
                             (_g31033431_ _g31053435_))))
                     (_g31033431_ _g31053435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g31033431_
                                                      _g31053435_))))
                                             (_g31033431_ _g31053435_))))
                                     (_g31033431_ _g31053435_))))
                             (_g31033431_ _g31053435_)))))
                  (_g31023515_ _stx3096_))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#and|
      (lambda (_$stx3642_)
        (let ((_g36483674_
               (lambda (_g36493670_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g36493670_))))
          (let ((_g36473719_
                 (lambda (_g36493678_)
                   (if (gx#stx-pair? _g36493678_)
                       (let ((_e36633681_ (gx#syntax-e _g36493678_)))
                         (let ((_hd36643685_ (##car _e36633681_))
                               (_tl36653688_ (##cdr _e36633681_)))
                           (if (gx#stx-pair? _tl36653688_)
                               (let ((_e36663691_ (gx#syntax-e _tl36653688_)))
                                 (let ((_hd36673695_ (##car _e36663691_))
                                       (_tl36683698_ (##cdr _e36663691_)))
                                   ((lambda (_L3701_ _L3703_ _L3704_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons _L3703_
                                                  (cons (cons _L3704_ _L3701_)
                                                        (cons '#f '())))))
                                    _tl36683698_
                                    _hd36673695_
                                    _hd36643685_)))
                               (_g36483674_ _g36493678_))))
                       (_g36483674_ _g36493678_)))))
            (let ((_g36463759_
                   (lambda (_g36493723_)
                     (if (gx#stx-pair? _g36493723_)
                         (let ((_e36543726_ (gx#syntax-e _g36493723_)))
                           (let ((_hd36553730_ (##car _e36543726_))
                                 (_tl36563733_ (##cdr _e36543726_)))
                             (if (gx#stx-pair? _tl36563733_)
                                 (let ((_e36573736_
                                        (gx#syntax-e _tl36563733_)))
                                   (let ((_hd36583740_ (##car _e36573736_))
                                         (_tl36593743_ (##cdr _e36573736_)))
                                     (if (gx#stx-null? _tl36593743_)
                                         ((lambda (_L3746_) _L3746_)
                                          _hd36583740_)
                                         (_g36473719_ _g36493723_))))
                                 (_g36473719_ _g36493723_))))
                         (_g36473719_ _g36493723_)))))
              (let ((_g36453780_
                     (lambda (_g36493763_)
                       (if (gx#stx-pair? _g36493763_)
                           (let ((_e36503766_ (gx#syntax-e _g36493763_)))
                             (let ((_hd36513770_ (##car _e36503766_))
                                   (_tl36523773_ (##cdr _e36503766_)))
                               (if (gx#stx-null? _tl36523773_)
                                   ((lambda () '#t))
                                   (_g36463759_ _g36493763_))))
                           (_g36463759_ _g36493763_)))))
                (_g36453780_ _$stx3642_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#or|
      (lambda (_$stx3784_)
        (let ((_g37903816_
               (lambda (_g37913812_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37913812_))))
          (let ((_g37893861_
                 (lambda (_g37913820_)
                   (if (gx#stx-pair? _g37913820_)
                       (let ((_e38053823_ (gx#syntax-e _g37913820_)))
                         (let ((_hd38063827_ (##car _e38053823_))
                               (_tl38073830_ (##cdr _e38053823_)))
                           (if (gx#stx-pair? _tl38073830_)
                               (let ((_e38083833_ (gx#syntax-e _tl38073830_)))
                                 (let ((_hd38093837_ (##car _e38083833_))
                                       (_tl38103840_ (##cdr _e38083833_)))
                                   ((lambda (_L3843_ _L3845_ _L3846_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L3845_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (gx#datum->syntax '#f '$e)
                                  (cons (cons _L3846_ _L3843_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl38103840_
                                    _hd38093837_
                                    _hd38063827_)))
                               (_g37903816_ _g37913820_))))
                       (_g37903816_ _g37913820_)))))
            (let ((_g37883901_
                   (lambda (_g37913865_)
                     (if (gx#stx-pair? _g37913865_)
                         (let ((_e37963868_ (gx#syntax-e _g37913865_)))
                           (let ((_hd37973872_ (##car _e37963868_))
                                 (_tl37983875_ (##cdr _e37963868_)))
                             (if (gx#stx-pair? _tl37983875_)
                                 (let ((_e37993878_
                                        (gx#syntax-e _tl37983875_)))
                                   (let ((_hd38003882_ (##car _e37993878_))
                                         (_tl38013885_ (##cdr _e37993878_)))
                                     (if (gx#stx-null? _tl38013885_)
                                         ((lambda (_L3888_) _L3888_)
                                          _hd38003882_)
                                         (_g37893861_ _g37913865_))))
                                 (_g37893861_ _g37913865_))))
                         (_g37893861_ _g37913865_)))))
              (let ((_g37873922_
                     (lambda (_g37913905_)
                       (if (gx#stx-pair? _g37913905_)
                           (let ((_e37923908_ (gx#syntax-e _g37913905_)))
                             (let ((_hd37933912_ (##car _e37923908_))
                                   (_tl37943915_ (##cdr _e37923908_)))
                               (if (gx#stx-null? _tl37943915_)
                                   ((lambda () '#f))
                                   (_g37883901_ _g37913905_))))
                           (_g37883901_ _g37913905_)))))
                (_g37873922_ _$stx3784_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#cond|
      (lambda (_$stx3926_)
        (let ((_g39354026_
               (lambda (_g39364022_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g39364022_))))
          (let ((_g39344127_
                 (lambda (_g39364030_)
                   (if (gx#stx-pair? _g39364030_)
                       (let ((_e40034033_ (gx#syntax-e _g39364030_)))
                         (let ((_hd40044037_ (##car _e40034033_))
                               (_tl40054040_ (##cdr _e40034033_)))
                           (if (gx#stx-pair? _tl40054040_)
                               (let ((_e40064043_ (gx#syntax-e _tl40054040_)))
                                 (let ((_hd40074047_ (##car _e40064043_))
                                       (_tl40084050_ (##cdr _e40064043_)))
                                   (if (gx#stx-pair? _hd40074047_)
                                       (let ((_e40094053_
                                              (gx#syntax-e _hd40074047_)))
                                         (let ((_hd40104057_
                                                (##car _e40094053_))
                                               (_tl40114060_
                                                (##cdr _e40094053_)))
                                           (if (gx#stx-pair/null? _tl40114060_)
                                               (if (fx>= (gx#stx-length
                                                          _tl40114060_)
                                                         '0)
                                                   (let ((_g28426_
                                                          (gx#syntax-split-splice
                                                           _tl40114060_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28427_
                                                              (values-count
                                                               _g28426_)))
                                                         (if (not (fx= _g28427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28427_)))
               (let ((_target40124063_ (values-ref _g28426_ 0))
                     (_tl40144066_ (values-ref _g28426_ 1)))
                 (if (gx#stx-null? _tl40144066_)
                     (letrec ((_loop40154069_
                               (lambda (_hd40134073_ _body40194076_)
                                 (if (gx#stx-pair? _hd40134073_)
                                     (let ((_e40164079_
                                            (gx#syntax-e _hd40134073_)))
                                       (let ((_lp-hd40174083_
                                              (##car _e40164079_))
                                             (_lp-tl40184086_
                                              (##cdr _e40164079_)))
                                         (_loop40154069_
                                          _lp-tl40184086_
                                          (cons _lp-hd40174083_
                                                _body40194076_))))
                                     (let ((_body40204089_
                                            (reverse _body40194076_)))
                                       ((lambda (_L4093_
                                                 _L4095_
                                                 _L4096_
                                                 _L4097_)
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons _L4096_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (begin
                            '#!void
                            (foldr (lambda (_g41184121_ _g41194124_)
                                     (cons _g41184121_ _g41194124_))
                                   '()
                                   _L4095_)))
                    (cons (cons _L4097_ _L4093_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _tl40084050_
                                        _body40204089_
                                        _hd40104057_
                                        _hd40044037_))))))
                       (_loop40154069_ _target40124063_ '()))
                     (_g39354026_ _g39364030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g39354026_ _g39364030_))
                                               (_g39354026_ _g39364030_))))
                                       (_g39354026_ _g39364030_))))
                               (_g39354026_ _g39364030_))))
                       (_g39354026_ _g39364030_)))))
            (let ((_g39334183_
                   (lambda (_g39364131_)
                     (if (gx#stx-pair? _g39364131_)
                         (let ((_e39904134_ (gx#syntax-e _g39364131_)))
                           (let ((_hd39914138_ (##car _e39904134_))
                                 (_tl39924141_ (##cdr _e39904134_)))
                             (if (gx#stx-pair? _tl39924141_)
                                 (let ((_e39934144_
                                        (gx#syntax-e _tl39924141_)))
                                   (let ((_hd39944148_ (##car _e39934144_))
                                         (_tl39954151_ (##cdr _e39934144_)))
                                     (if (gx#stx-pair? _hd39944148_)
                                         (let ((_e39964154_
                                                (gx#syntax-e _hd39944148_)))
                                           (let ((_hd39974158_
                                                  (##car _e39964154_))
                                                 (_tl39984161_
                                                  (##cdr _e39964154_)))
                                             (if (gx#stx-null? _tl39984161_)
                                                 ((lambda (_L4164_
                                                           _L4166_
                                                           _L4167_)
                                                    (cons _L4167_
                                                          (cons (cons _L4166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '=>)
                                    (cons (gx#datum->syntax '#f 'values) '())))
                        _L4164_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl39954151_
                                                  _hd39974158_
                                                  _hd39914138_)
                                                 (_g39344127_ _g39364131_))))
                                         (_g39344127_ _g39364131_))))
                                 (_g39344127_ _g39364131_))))
                         (_g39344127_ _g39364131_)))))
              (let ((_g39324265_
                     (lambda (_g39364187_)
                       (if (gx#stx-pair? _g39364187_)
                           (let ((_e39724190_ (gx#syntax-e _g39364187_)))
                             (let ((_hd39734194_ (##car _e39724190_))
                                   (_tl39744197_ (##cdr _e39724190_)))
                               (if (gx#stx-pair? _tl39744197_)
                                   (let ((_e39754200_
                                          (gx#syntax-e _tl39744197_)))
                                     (let ((_hd39764204_ (##car _e39754200_))
                                           (_tl39774207_ (##cdr _e39754200_)))
                                       (if (gx#stx-pair? _hd39764204_)
                                           (let ((_e39784210_
                                                  (gx#syntax-e _hd39764204_)))
                                             (let ((_hd39794214_
                                                    (##car _e39784210_))
                                                   (_tl39804217_
                                                    (##cdr _e39784210_)))
                                               (if (gx#stx-pair? _tl39804217_)
                                                   (let ((_e39814220_
                                                          (gx#syntax-e
                                                           _tl39804217_)))
                                                     (let ((_hd39824224_
                                                            (##car _e39814220_))
                                                           (_tl39834227_
                                                            (##cdr _e39814220_)))
                                                       (if (gx#identifier?
                                                            _hd39824224_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:1>[1]#_g28428_|
                                                                _hd39824224_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl39834227_)
                           (let ((_e39844230_ (gx#syntax-e _tl39834227_)))
                             (let ((_hd39854234_ (##car _e39844230_))
                                   (_tl39864237_ (##cdr _e39844230_)))
                               (if (gx#stx-null? _tl39864237_)
                                   ((lambda (_L4240_ _L4242_ _L4243_ _L4244_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L4243_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (cons _L4242_
                                        (cons (gx#datum->syntax '#f '$e) '()))
                                  (cons (cons _L4244_ _L4240_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl39774207_
                                    _hd39854234_
                                    _hd39794214_
                                    _hd39734194_)
                                   (_g39334183_ _g39364187_))))
                           (_g39334183_ _g39364187_))
                       (_g39334183_ _g39364187_))
                   (_g39334183_ _g39364187_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g39334183_ _g39364187_))))
                                           (_g39334183_ _g39364187_))))
                                   (_g39334183_ _g39364187_))))
                           (_g39334183_ _g39364187_)))))
                (let ((_g39314306_
                       (lambda (_g39364269_)
                         (if (gx#stx-pair? _g39364269_)
                             (let ((_e39594272_ (gx#syntax-e _g39364269_)))
                               (let ((_hd39604276_ (##car _e39594272_))
                                     (_tl39614279_ (##cdr _e39594272_)))
                                 (if (gx#stx-pair? _tl39614279_)
                                     (let ((_e39624282_
                                            (gx#syntax-e _tl39614279_)))
                                       (let ((_hd39634286_ (##car _e39624282_))
                                             (_tl39644289_
                                              (##cdr _e39624282_)))
                                         (if (gx#stx-pair? _hd39634286_)
                                             (let ((_e39654292_
                                                    (gx#syntax-e
                                                     _hd39634286_)))
                                               (let ((_hd39664296_
                                                      (##car _e39654292_))
                                                     (_tl39674299_
                                                      (##cdr _e39654292_)))
                                                 (if (gx#identifier?
                                                      _hd39664296_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:1>[1]#_g28429_|
                                                          _hd39664296_)
                                                         ((lambda ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'syntax-error)
                          (cons '"Bad syntax; misplaced else" '()))))
                 (_g39324265_ _g39364269_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g39324265_
                                                      _g39364269_))))
                                             (_g39324265_ _g39364269_))))
                                     (_g39324265_ _g39364269_))))
                             (_g39324265_ _g39364269_)))))
                  (let ((_g39304401_
                         (lambda (_g39364310_)
                           (if (gx#stx-pair? _g39364310_)
                               (let ((_e39414313_ (gx#syntax-e _g39364310_)))
                                 (let ((_hd39424317_ (##car _e39414313_))
                                       (_tl39434320_ (##cdr _e39414313_)))
                                   (if (gx#stx-pair? _tl39434320_)
                                       (let ((_e39444323_
                                              (gx#syntax-e _tl39434320_)))
                                         (let ((_hd39454327_
                                                (##car _e39444323_))
                                               (_tl39464330_
                                                (##cdr _e39444323_)))
                                           (if (gx#stx-pair? _hd39454327_)
                                               (let ((_e39474333_
                                                      (gx#syntax-e
                                                       _hd39454327_)))
                                                 (let ((_hd39484337_
                                                        (##car _e39474333_))
                                                       (_tl39494340_
                                                        (##cdr _e39474333_)))
                                                   (if (gx#identifier?
                                                        _hd39484337_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:1>[1]#_g28430_|
                                                            _hd39484337_)
                                                           (if (gx#stx-pair/null?
                                                                _tl39494340_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _tl39494340_)
                                 '0)
                           (let ((_g28431_
                                  (gx#syntax-split-splice _tl39494340_ '0)))
                             (begin
                               (let ((_g28432_ (values-count _g28431_)))
                                 (if (not (fx= _g28432_ 2))
                                     (error "Context expects 2 values"
                                            _g28432_)))
                               (let ((_target39504343_ (values-ref _g28431_ 0))
                                     (_tl39524346_ (values-ref _g28431_ 1)))
                                 (if (gx#stx-null? _tl39524346_)
                                     (letrec ((_loop39534349_
                                               (lambda (_hd39514353_
                                                        _body39574356_)
                                                 (if (gx#stx-pair?
                                                      _hd39514353_)
                                                     (let ((_e39544359_
                                                            (gx#syntax-e
                                                             _hd39514353_)))
                                                       (let ((_lp-hd39554363_
                                                              (##car _e39544359_))
                                                             (_lp-tl39564366_
                                                              (##cdr _e39544359_)))
                                                         (_loop39534349_
                                                          _lp-tl39564366_
                                                          (cons _lp-hd39554363_
                                                                _body39574356_))))
                                                     (let ((_body39584369_
                                                            (reverse _body39574356_)))
                                                       (if (gx#stx-null?
                                                            _tl39464330_)
                                                           ((lambda (_L4373_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '%#expression)
                            (cons (cons (gx#datum->syntax '#f 'begin)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g43924395_
                                                          _g43934398_)
                                                   (cons _g43924395_
                                                         _g43934398_))
                                                 '()
                                                 _L4373_)))
                                  '())))
                    _body39584369_)
                   (_g39314306_ _g39364310_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop39534349_ _target39504343_ '()))
                                     (_g39314306_ _g39364310_)))))
                           (_g39314306_ _g39364310_))
                       (_g39314306_ _g39364310_))
                   (_g39314306_ _g39364310_))
               (_g39314306_ _g39364310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g39314306_ _g39364310_))))
                                       (_g39314306_ _g39364310_))))
                               (_g39314306_ _g39364310_)))))
                    (let ((_g39294422_
                           (lambda (_g39364405_)
                             (if (gx#stx-pair? _g39364405_)
                                 (let ((_e39374408_ (gx#syntax-e _g39364405_)))
                                   (let ((_hd39384412_ (##car _e39374408_))
                                         (_tl39394415_ (##cdr _e39374408_)))
                                     (if (gx#stx-null? _tl39394415_)
                                         ((lambda () '#!void))
                                         (_g39304401_ _g39364405_))))
                                 (_g39304401_ _g39364405_)))))
                      (_g39294422_ _$stx3926_))))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#when|
      (lambda (_$stx4428_)
        (let ((_g44324456_
               (lambda (_g44334452_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g44334452_))))
          (let ((_g44314541_
                 (lambda (_g44334460_)
                   (if (gx#stx-pair? _g44334460_)
                       (let ((_e44364463_ (gx#syntax-e _g44334460_)))
                         (let ((_hd44374467_ (##car _e44364463_))
                               (_tl44384470_ (##cdr _e44364463_)))
                           (if (gx#stx-pair? _tl44384470_)
                               (let ((_e44394473_ (gx#syntax-e _tl44384470_)))
                                 (let ((_hd44404477_ (##car _e44394473_))
                                       (_tl44414480_ (##cdr _e44394473_)))
                                   (if (gx#stx-pair/null? _tl44414480_)
                                       (if (fx>= (gx#stx-length _tl44414480_)
                                                 '0)
                                           (let ((_g28433_
                                                  (gx#syntax-split-splice
                                                   _tl44414480_
                                                   '0)))
                                             (begin
                                               (let ((_g28434_
                                                      (values-count _g28433_)))
                                                 (if (not (fx= _g28434_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28434_)))
                                               (let ((_target44424483_
                                                      (values-ref _g28433_ 0))
                                                     (_tl44444486_
                                                      (values-ref _g28433_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl44444486_)
                                                     (letrec ((_loop44454489_
                                                               (lambda (_hd44434493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr44494496_)
                         (if (gx#stx-pair? _hd44434493_)
                             (let ((_e44464499_ (gx#syntax-e _hd44434493_)))
                               (let ((_lp-hd44474503_ (##car _e44464499_))
                                     (_lp-tl44484506_ (##cdr _e44464499_)))
                                 (_loop44454489_
                                  _lp-tl44484506_
                                  (cons _lp-hd44474503_ _expr44494496_))))
                             (let ((_expr44504509_ (reverse _expr44494496_)))
                               ((lambda (_L4513_ _L4515_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4515_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g45324535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g45334538_)
                             (cons _g45324535_ _g45334538_))
                           '()
                           _L4513_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '#!void '())))))
                                _expr44504509_
                                _hd44404477_))))))
               (_loop44454489_ _target44424483_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g44324456_
                                                      _g44334460_)))))
                                           (_g44324456_ _g44334460_))
                                       (_g44324456_ _g44334460_))))
                               (_g44324456_ _g44334460_))))
                       (_g44324456_ _g44334460_)))))
            (_g44314541_ _$stx4428_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#unless|
      (lambda (_$stx4546_)
        (let ((_g45504574_
               (lambda (_g45514570_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45514570_))))
          (let ((_g45494659_
                 (lambda (_g45514578_)
                   (if (gx#stx-pair? _g45514578_)
                       (let ((_e45544581_ (gx#syntax-e _g45514578_)))
                         (let ((_hd45554585_ (##car _e45544581_))
                               (_tl45564588_ (##cdr _e45544581_)))
                           (if (gx#stx-pair? _tl45564588_)
                               (let ((_e45574591_ (gx#syntax-e _tl45564588_)))
                                 (let ((_hd45584595_ (##car _e45574591_))
                                       (_tl45594598_ (##cdr _e45574591_)))
                                   (if (gx#stx-pair/null? _tl45594598_)
                                       (if (fx>= (gx#stx-length _tl45594598_)
                                                 '0)
                                           (let ((_g28435_
                                                  (gx#syntax-split-splice
                                                   _tl45594598_
                                                   '0)))
                                             (begin
                                               (let ((_g28436_
                                                      (values-count _g28435_)))
                                                 (if (not (fx= _g28436_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28436_)))
                                               (let ((_target45604601_
                                                      (values-ref _g28435_ 0))
                                                     (_tl45624604_
                                                      (values-ref _g28435_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl45624604_)
                                                     (letrec ((_loop45634607_
                                                               (lambda (_hd45614611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr45674614_)
                         (if (gx#stx-pair? _hd45614611_)
                             (let ((_e45644617_ (gx#syntax-e _hd45614611_)))
                               (let ((_lp-hd45654621_ (##car _e45644617_))
                                     (_lp-tl45664624_ (##cdr _e45644617_)))
                                 (_loop45634607_
                                  _lp-tl45664624_
                                  (cons _lp-hd45654621_ _expr45674614_))))
                             (let ((_expr45684627_ (reverse _expr45674614_)))
                               ((lambda (_L4631_ _L4633_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4633_
                                              (cons '#!void
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (begin
                          '#!void
                          (foldr (lambda (_g46504653_ _g46514656_)
                                   (cons _g46504653_ _g46514656_))
                                 '()
                                 _L4631_)))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _expr45684627_
                                _hd45584595_))))))
               (_loop45634607_ _target45604601_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45504574_
                                                      _g45514578_)))))
                                           (_g45504574_ _g45514578_))
                                       (_g45504574_ _g45514578_))))
                               (_g45504574_ _g45514578_))))
                       (_g45504574_ _g45514578_)))))
            (_g45494659_ _$stx4546_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4664_)
        (let ((_g46674691_
               (lambda (_g46684687_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g46684687_))))
          (let ((_g46664776_
                 (lambda (_g46684695_)
                   (if (gx#stx-pair? _g46684695_)
                       (let ((_e46714698_ (gx#syntax-e _g46684695_)))
                         (let ((_hd46724702_ (##car _e46714698_))
                               (_tl46734705_ (##cdr _e46714698_)))
                           (if (gx#stx-pair? _tl46734705_)
                               (let ((_e46744708_ (gx#syntax-e _tl46734705_)))
                                 (let ((_hd46754712_ (##car _e46744708_))
                                       (_tl46764715_ (##cdr _e46744708_)))
                                   (if (gx#stx-pair/null? _tl46764715_)
                                       (if (fx>= (gx#stx-length _tl46764715_)
                                                 '0)
                                           (let ((_g28437_
                                                  (gx#syntax-split-splice
                                                   _tl46764715_
                                                   '0)))
                                             (begin
                                               (let ((_g28438_
                                                      (values-count _g28437_)))
                                                 (if (not (fx= _g28438_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28438_)))
                                               (let ((_target46774718_
                                                      (values-ref _g28437_ 0))
                                                     (_tl46794721_
                                                      (values-ref _g28437_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl46794721_)
                                                     (letrec ((_loop46804724_
                                                               (lambda (_hd46784728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _detail46844731_)
                         (if (gx#stx-pair? _hd46784728_)
                             (let ((_e46814734_ (gx#syntax-e _hd46784728_)))
                               (let ((_lp-hd46824738_ (##car _e46814734_))
                                     (_lp-tl46834741_ (##cdr _e46814734_)))
                                 (_loop46804724_
                                  _lp-tl46834741_
                                  (cons _lp-hd46824738_ _detail46844731_))))
                             (let ((_detail46854744_
                                    (reverse _detail46844731_)))
                               ((lambda (_L4748_ _L4750_)
                                  (if (gx#stx-string? _L4750_)
                                      (apply gx#raise-syntax-error
                                             '#f
                                             (gx#stx-e _L4750_)
                                             _stx4664_
                                             (gx#syntax->list
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g47674770_
                                                                _g47684773_)
                                                         (cons _g47674770_
                                                               _g47684773_))
                                                       '()
                                                       _L4748_))))
                                      (_g46674691_ _g46684695_)))
                                _detail46854744_
                                _hd46754712_))))))
               (_loop46804724_ _target46774718_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g46674691_
                                                      _g46684695_)))))
                                           (_g46674691_ _g46684695_))
                                       (_g46674691_ _g46684695_))))
                               (_g46674691_ _g46684695_))))
                       (_g46674691_ _g46684695_)))))
            (_g46664776_ _stx4664_)))))))
