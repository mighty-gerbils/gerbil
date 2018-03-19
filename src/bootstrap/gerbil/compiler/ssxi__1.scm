(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx48762_)
      (let* ((_g4876648784_
              (lambda (_g4876748780_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4876748780_)))
             (_g4876548839_
              (lambda (_g4876748788_)
                (if (gx#stx-pair? _g4876748788_)
                    (let ((_e4877048791_ (gx#syntax-e _g4876748788_)))
                      (let ((_hd4877148795_ (##car _e4877048791_))
                            (_tl4877248798_ (##cdr _e4877048791_)))
                        (if (gx#stx-pair? _tl4877248798_)
                            (let ((_e4877348801_ (gx#syntax-e _tl4877248798_)))
                              (let ((_hd4877448805_ (##car _e4877348801_))
                                    (_tl4877548808_ (##cdr _e4877348801_)))
                                (if (gx#stx-pair? _tl4877548808_)
                                    (let ((_e4877648811_
                                           (gx#syntax-e _tl4877548808_)))
                                      (let ((_hd4877748815_
                                             (##car _e4877648811_))
                                            (_tl4877848818_
                                             (##cdr _e4877648811_)))
                                        (if (gx#stx-null? _tl4877848818_)
                                            ((lambda (_L48821_ _L48823_)
                                               (if (gx#identifier? _L48823_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L48823_ '()))
                       (cons _L48821_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4876648784_
                                                    _g4876748788_)))
                                             _hd4877748815_
                                             _hd4877448805_)
                                            (_g4876648784_ _g4876748788_))))
                                    (_g4876648784_ _g4876748788_))))
                            (_g4876648784_ _g4876748788_))))
                    (_g4876648784_ _g4876748788_)))))
        (_g4876548839_ _$stx48762_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx48843_)
      (let* ((_g4884748876_
              (lambda (_g4884848872_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4884848872_)))
             (_g4884648976_
              (lambda (_g4884848880_)
                (if (gx#stx-pair? _g4884848880_)
                    (let ((_e4885148883_ (gx#syntax-e _g4884848880_)))
                      (let ((_hd4885248887_ (##car _e4885148883_))
                            (_tl4885348890_ (##cdr _e4885148883_)))
                        (if (gx#stx-pair/null? _tl4885348890_)
                            (let ((_g51584_
                                   (gx#syntax-split-splice _tl4885348890_ '0)))
                              (begin
                                (let ((_g51585_
                                       (if (##values? _g51584_)
                                           (##vector-length _g51584_)
                                           1)))
                                  (if (not (##fx= _g51585_ 2))
                                      (error "Context expects 2 values"
                                             _g51585_)))
                                (let ((_target4885448893_
                                       (##vector-ref _g51584_ 0))
                                      (_tl4885648896_
                                       (##vector-ref _g51584_ 1)))
                                  (if (gx#stx-null? _tl4885648896_)
                                      (letrec ((_loop4885748899_
                                                (lambda (_hd4885548903_
                                                         _type4886148906_
                                                         _symbol4886248908_)
                                                  (if (gx#stx-pair?
                                                       _hd4885548903_)
                                                      (let ((_e4885848911_
                                                             (gx#syntax-e
                                                              _hd4885548903_)))
                                                        (let ((_lp-hd4885948915_
                                                               (##car _e4885848911_))
                                                              (_lp-tl4886048918_
                                                               (##cdr _e4885848911_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4885948915_)
                                                              (let ((_e4886548921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4885948915_)))
                        (let ((_hd4886648925_ (##car _e4886548921_))
                              (_tl4886748928_ (##cdr _e4886548921_)))
                          (if (gx#stx-pair? _tl4886748928_)
                              (let ((_e4886848931_
                                     (gx#syntax-e _tl4886748928_)))
                                (let ((_hd4886948935_ (##car _e4886848931_))
                                      (_tl4887048938_ (##cdr _e4886848931_)))
                                  (if (gx#stx-null? _tl4887048938_)
                                      (_loop4885748899_
                                       _lp-tl4886048918_
                                       (cons _hd4886948935_ _type4886148906_)
                                       (cons _hd4886648925_
                                             _symbol4886248908_))
                                      (_g4884748876_ _g4884848880_))))
                              (_g4884748876_ _g4884848880_))))
                      (_g4884748876_ _g4884848880_))))
              (let ((_type4886348941_ (reverse _type4886148906_))
                    (_symbol4886448944_ (reverse _symbol4886248908_)))
                ((lambda (_L48947_ _L48949_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L48947_ _L48949_)
                           (foldr2 (lambda (_g4896448968_
                                            _g4896548971_
                                            _g4896648973_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g4896548971_
                                                       (cons _g4896448968_
                                                             '())))
                                           _g4896648973_))
                                   '()
                                   _L48947_
                                   _L48949_))))
                 _type4886348941_
                 _symbol4886448944_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4885748899_
                                         _target4885448893_
                                         '()
                                         '()))
                                      (_g4884748876_ _g4884848880_)))))
                            (_g4884748876_ _g4884848880_))))
                    (_g4884748876_ _g4884848880_)))))
        (_g4884648976_ _$stx48843_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx48981_)
      (let* ((___stx5112751128_ _$stx48981_)
             (_g4898649028_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5112751128_))))
        (let ((___kont5113051131_
               (lambda (_L49156_ _L49158_ _L49159_ _L49160_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L49160_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L49159_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L49158_ '()))
                                         (cons _L49156_ '())))))))
              (___kont5113251133_
               (lambda (_L49075_ _L49077_ _L49078_ _L49079_)
                 (cons _L49079_
                       (cons _L49078_
                             (cons _L49077_
                                   (cons _L49075_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5116651167_
                 (lambda (_e4899249106_
                          _hd4899349110_
                          _tl4899449113_
                          _e4899549116_
                          _hd4899649120_
                          _tl4899749123_
                          _e4899849126_
                          _hd4899949130_
                          _tl4900049133_
                          _e4900149136_
                          _hd4900249140_
                          _tl4900349143_
                          _e4900449146_
                          _hd4900549150_
                          _tl4900649153_)
                   (let ((_L49156_ _hd4900549150_)
                         (_L49158_ _hd4900249140_)
                         (_L49159_ _hd4899949130_)
                         (_L49160_ _hd4899649120_))
                     (if (if (gx#identifier? _L49160_)
                             (if (gx#identifier? _L49159_)
                                 (gx#identifier? _L49158_)
                                 '#f)
                             '#f)
                         (___kont5113051131_
                          _L49156_
                          _L49158_
                          _L49159_
                          _L49160_)
                         (_g4898649028_))))))
            (if (gx#stx-pair? ___stx5112751128_)
                (let ((_e4899249106_ (gx#syntax-e ___stx5112751128_)))
                  (let ((_tl4899449113_ (##cdr _e4899249106_))
                        (_hd4899349110_ (##car _e4899249106_)))
                    (if (gx#stx-pair? _tl4899449113_)
                        (let ((_e4899549116_ (gx#syntax-e _tl4899449113_)))
                          (let ((_tl4899749123_ (##cdr _e4899549116_))
                                (_hd4899649120_ (##car _e4899549116_)))
                            (if (gx#stx-pair? _tl4899749123_)
                                (let ((_e4899849126_
                                       (gx#syntax-e _tl4899749123_)))
                                  (let ((_tl4900049133_ (##cdr _e4899849126_))
                                        (_hd4899949130_ (##car _e4899849126_)))
                                    (if (gx#stx-pair? _tl4900049133_)
                                        (let ((_e4900149136_
                                               (gx#syntax-e _tl4900049133_)))
                                          (let ((_tl4900349143_
                                                 (##cdr _e4900149136_))
                                                (_hd4900249140_
                                                 (##car _e4900149136_)))
                                            (if (gx#stx-pair? _tl4900349143_)
                                                (let ((_e4900449146_
                                                       (gx#syntax-e
                                                        _tl4900349143_)))
                                                  (let ((_tl4900649153_
                                                         (##cdr _e4900449146_))
                                                        (_hd4900549150_
                                                         (##car _e4900449146_)))
                                                    (if (gx#stx-null?
                                                         _tl4900649153_)
                                                        (___match5116651167_
                                                         _e4899249106_
                                                         _hd4899349110_
                                                         _tl4899449113_
                                                         _e4899549116_
                                                         _hd4899649120_
                                                         _tl4899749123_
                                                         _e4899849126_
                                                         _hd4899949130_
                                                         _tl4900049133_
                                                         _e4900149136_
                                                         _hd4900249140_
                                                         _tl4900349143_
                                                         _e4900449146_
                                                         _hd4900549150_
                                                         _tl4900649153_)
                                                        (_g4898649028_))))
                                                (if (gx#stx-null?
                                                     _tl4900349143_)
                                                    (___kont5113251133_
                                                     _hd4900249140_
                                                     _hd4899949130_
                                                     _hd4899649120_
                                                     _hd4899349110_)
                                                    (_g4898649028_)))))
                                        (_g4898649028_))))
                                (_g4898649028_))))
                        (_g4898649028_))))
                (_g4898649028_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx49185_)
      (let* ((_g4918949224_
              (lambda (_g4919049220_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4919049220_)))
             (_g4918849343_
              (lambda (_g4919049228_)
                (if (gx#stx-pair? _g4919049228_)
                    (let ((_e4919449231_ (gx#syntax-e _g4919049228_)))
                      (let ((_hd4919549235_ (##car _e4919449231_))
                            (_tl4919649238_ (##cdr _e4919449231_)))
                        (if (gx#stx-pair/null? _tl4919649238_)
                            (let ((_g51586_
                                   (gx#syntax-split-splice _tl4919649238_ '0)))
                              (begin
                                (let ((_g51587_
                                       (if (##values? _g51586_)
                                           (##vector-length _g51586_)
                                           1)))
                                  (if (not (##fx= _g51587_ 2))
                                      (error "Context expects 2 values"
                                             _g51587_)))
                                (let ((_target4919749241_
                                       (##vector-ref _g51586_ 0))
                                      (_tl4919949244_
                                       (##vector-ref _g51586_ 1)))
                                  (if (gx#stx-null? _tl4919949244_)
                                      (letrec ((_loop4920049247_
                                                (lambda (_hd4919849251_
                                                         _symbol4920449254_
                                                         _method4920549256_
                                                         _type-t4920649258_)
                                                  (if (gx#stx-pair?
                                                       _hd4919849251_)
                                                      (let ((_e4920149261_
                                                             (gx#syntax-e
                                                              _hd4919849251_)))
                                                        (let ((_lp-hd4920249265_
                                                               (##car _e4920149261_))
                                                              (_lp-tl4920349268_
                                                               (##cdr _e4920149261_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4920249265_)
                                                              (let ((_e4921049271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4920249265_)))
                        (let ((_hd4921149275_ (##car _e4921049271_))
                              (_tl4921249278_ (##cdr _e4921049271_)))
                          (if (gx#stx-pair? _tl4921249278_)
                              (let ((_e4921349281_
                                     (gx#syntax-e _tl4921249278_)))
                                (let ((_hd4921449285_ (##car _e4921349281_))
                                      (_tl4921549288_ (##cdr _e4921349281_)))
                                  (if (gx#stx-pair? _tl4921549288_)
                                      (let ((_e4921649291_
                                             (gx#syntax-e _tl4921549288_)))
                                        (let ((_hd4921749295_
                                               (##car _e4921649291_))
                                              (_tl4921849298_
                                               (##cdr _e4921649291_)))
                                          (if (gx#stx-null? _tl4921849298_)
                                              (_loop4920049247_
                                               _lp-tl4920349268_
                                               (cons _hd4921749295_
                                                     _symbol4920449254_)
                                               (cons _hd4921449285_
                                                     _method4920549256_)
                                               (cons _hd4921149275_
                                                     _type-t4920649258_))
                                              (_g4918949224_ _g4919049228_))))
                                      (_g4918949224_ _g4919049228_))))
                              (_g4918949224_ _g4919049228_))))
                      (_g4918949224_ _g4919049228_))))
              (let ((_symbol4920749301_ (reverse _symbol4920449254_))
                    (_method4920849304_ (reverse _method4920549256_))
                    (_type-t4920949306_ (reverse _type-t4920649258_)))
                ((lambda (_L49309_ _L49311_ _L49312_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L49309_
                            _L49311_
                            _L49312_)
                           (foldr (lambda (_g4932849333_
                                           _g4932949336_
                                           _g4933049338_
                                           _g4933149340_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g4933049338_
                                                      (cons _g4932949336_
                                                            (cons _g4932849333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g4933149340_))
                                  '()
                                  _L49309_
                                  _L49311_
                                  _L49312_))))
                 _symbol4920749301_
                 _method4920849304_
                 _type-t4920949306_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4920049247_
                                         _target4919749241_
                                         '()
                                         '()
                                         '()))
                                      (_g4918949224_ _g4919049228_)))))
                            (_g4918949224_ _g4919049228_))))
                    (_g4918949224_ _g4919049228_)))))
        (_g4918849343_ _$stx49185_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx49348_)
      (let* ((_g4935249385_
              (lambda (_g4935349381_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4935349381_)))
             (_g4935149499_
              (lambda (_g4935349389_)
                (if (gx#stx-pair? _g4935349389_)
                    (let ((_e4935749392_ (gx#syntax-e _g4935349389_)))
                      (let ((_hd4935849396_ (##car _e4935749392_))
                            (_tl4935949399_ (##cdr _e4935749392_)))
                        (if (gx#stx-pair? _tl4935949399_)
                            (let ((_e4936049402_ (gx#syntax-e _tl4935949399_)))
                              (let ((_hd4936149406_ (##car _e4936049402_))
                                    (_tl4936249409_ (##cdr _e4936049402_)))
                                (if (gx#stx-pair/null? _tl4936249409_)
                                    (let ((_g51588_
                                           (gx#syntax-split-splice
                                            _tl4936249409_
                                            '0)))
                                      (begin
                                        (let ((_g51589_
                                               (if (##values? _g51588_)
                                                   (##vector-length _g51588_)
                                                   1)))
                                          (if (not (##fx= _g51589_ 2))
                                              (error "Context expects 2 values"
                                                     _g51589_)))
                                        (let ((_target4936349412_
                                               (##vector-ref _g51588_ 0))
                                              (_tl4936549415_
                                               (##vector-ref _g51588_ 1)))
                                          (if (gx#stx-null? _tl4936549415_)
                                              (letrec ((_loop4936649418_
                                                        (lambda (_hd4936449422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol4937049425_
                         _method4937149427_)
                  (if (gx#stx-pair? _hd4936449422_)
                      (let ((_e4936749430_ (gx#syntax-e _hd4936449422_)))
                        (let ((_lp-hd4936849434_ (##car _e4936749430_))
                              (_lp-tl4936949437_ (##cdr _e4936749430_)))
                          (if (gx#stx-pair? _lp-hd4936849434_)
                              (let ((_e4937449440_
                                     (gx#syntax-e _lp-hd4936849434_)))
                                (let ((_hd4937549444_ (##car _e4937449440_))
                                      (_tl4937649447_ (##cdr _e4937449440_)))
                                  (if (gx#stx-pair? _tl4937649447_)
                                      (let ((_e4937749450_
                                             (gx#syntax-e _tl4937649447_)))
                                        (let ((_hd4937849454_
                                               (##car _e4937749450_))
                                              (_tl4937949457_
                                               (##cdr _e4937749450_)))
                                          (if (gx#stx-null? _tl4937949457_)
                                              (_loop4936649418_
                                               _lp-tl4936949437_
                                               (cons _hd4937849454_
                                                     _symbol4937049425_)
                                               (cons _hd4937549444_
                                                     _method4937149427_))
                                              (_g4935249385_ _g4935349389_))))
                                      (_g4935249385_ _g4935349389_))))
                              (_g4935249385_ _g4935349389_))))
                      (let ((_symbol4937249460_ (reverse _symbol4937049425_))
                            (_method4937349463_ (reverse _method4937149427_)))
                        ((lambda (_L49466_ _L49468_ _L49469_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L49466_
                                    _L49468_)
                                   (foldr2 (lambda (_g4948749491_
                                                    _g4948849494_
                                                    _g4948949496_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L49469_
                                                               (cons _g4948849494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g4948749491_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4948949496_))
                                           '()
                                           _L49466_
                                           _L49468_))))
                         _symbol4937249460_
                         _method4937349463_
                         _hd4936149406_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4936649418_
                                                 _target4936349412_
                                                 '()
                                                 '()))
                                              (_g4935249385_ _g4935349389_)))))
                                    (_g4935249385_ _g4935349389_))))
                            (_g4935249385_ _g4935349389_))))
                    (_g4935249385_ _g4935349389_)))))
        (_g4935149499_ _$stx49348_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx49504_)
      (let* ((_g4950849522_
              (lambda (_g4950949518_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4950949518_)))
             (_g4950749563_
              (lambda (_g4950949526_)
                (if (gx#stx-pair? _g4950949526_)
                    (let ((_e4951149529_ (gx#syntax-e _g4950949526_)))
                      (let ((_hd4951249533_ (##car _e4951149529_))
                            (_tl4951349536_ (##cdr _e4951149529_)))
                        (if (gx#stx-pair? _tl4951349536_)
                            (let ((_e4951449539_ (gx#syntax-e _tl4951349536_)))
                              (let ((_hd4951549543_ (##car _e4951449539_))
                                    (_tl4951649546_ (##cdr _e4951449539_)))
                                (if (gx#stx-null? _tl4951649546_)
                                    ((lambda (_L49549_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L49549_ '()))
                                                   '())))
                                     _hd4951549543_)
                                    (_g4950849522_ _g4950949526_))))
                            (_g4950849522_ _g4950949526_))))
                    (_g4950849522_ _g4950949526_)))))
        (_g4950749563_ _$stx49504_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx49567_)
      (let* ((___stx5119551196_ _$stx49567_)
             (_g4957349639_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5119551196_))))
        (let ((___kont5119851199_
               (lambda (_L49861_ _L49863_ _L49864_ _L49865_ _L49866_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L49866_
                             (cons _L49865_
                                   (cons _L49864_
                                         (cons _L49863_
                                               (cons _L49861_ '()))))))))
              (___kont5120051201_
               (lambda (_L49771_ _L49773_ _L49774_ _L49775_)
                 (cons _L49775_
                       (cons _L49774_
                             (cons _L49773_
                                   (cons _L49771_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5120251203_
               (lambda (_L49696_ _L49698_ _L49699_ _L49700_ _L49701_)
                 (cons _L49701_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L49699_
                                   (cons _L49698_
                                         (cons _L49696_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5119551196_)
              (let ((_e4958049801_ (gx#syntax-e ___stx5119551196_)))
                (let ((_tl4958249808_ (##cdr _e4958049801_))
                      (_hd4958149805_ (##car _e4958049801_)))
                  (if (gx#stx-pair? _tl4958249808_)
                      (let ((_e4958349811_ (gx#syntax-e _tl4958249808_)))
                        (let ((_tl4958549818_ (##cdr _e4958349811_))
                              (_hd4958449815_ (##car _e4958349811_)))
                          (if (gx#stx-pair? _tl4958549818_)
                              (let ((_e4958649821_
                                     (gx#syntax-e _tl4958549818_)))
                                (let ((_tl4958849828_ (##cdr _e4958649821_))
                                      (_hd4958749825_ (##car _e4958649821_)))
                                  (if (gx#stx-pair? _tl4958849828_)
                                      (let ((_e4958949831_
                                             (gx#syntax-e _tl4958849828_)))
                                        (let ((_tl4959149838_
                                               (##cdr _e4958949831_))
                                              (_hd4959049835_
                                               (##car _e4958949831_)))
                                          (if (gx#stx-pair? _tl4959149838_)
                                              (let ((_e4959249841_
                                                     (gx#syntax-e
                                                      _tl4959149838_)))
                                                (let ((_tl4959449848_
                                                       (##cdr _e4959249841_))
                                                      (_hd4959349845_
                                                       (##car _e4959249841_)))
                                                  (if (gx#stx-pair?
                                                       _tl4959449848_)
                                                      (let ((_e4959549851_
                                                             (gx#syntax-e
                                                              _tl4959449848_)))
                                                        (let ((_tl4959749858_
                                                               (##cdr _e4959549851_))
                                                              (_hd4959649855_
                                                               (##car _e4959549851_)))
                                                          (if (gx#stx-null?
                                                               _tl4959749858_)
                                                              (___kont5119851199_
                                                               _hd4959649855_
                                                               _hd4959349845_
                                                               _hd4959049835_
                                                               _hd4958749825_
                                                               _hd4958449815_)
                                                              (_g4957349639_))))
                                                      (if (gx#stx-null?
                                                           _tl4959449848_)
                                                          (___kont5120251203_
                                                           _hd4959349845_
                                                           _hd4959049835_
                                                           _hd4958749825_
                                                           _hd4958449815_
                                                           _hd4958149805_)
                                                          (_g4957349639_)))))
                                              (if (gx#stx-null? _tl4959149838_)
                                                  (___kont5120051201_
                                                   _hd4959049835_
                                                   _hd4958749825_
                                                   _hd4958449815_
                                                   _hd4958149805_)
                                                  (_g4957349639_)))))
                                      (_g4957349639_))))
                              (_g4957349639_))))
                      (_g4957349639_))))
              (_g4957349639_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx49894_)
      (let* ((___stx5130351304_ _$stx49894_)
             (_g4989949952_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5130351304_))))
        (let ((___kont5130651307_
               (lambda (_L50120_ _L50122_ _L50123_ _L50124_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50124_ '()))
                             (cons '#f
                                   (cons _L50123_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50122_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50120_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5130851309_
               (lambda (_L50019_ _L50021_ _L50022_ _L50023_ _L50024_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50023_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax__0
                                                '#f
                                                'xfields)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'and)
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'super-type)
                         (cons (cons (gx#datum->syntax__0 '#f 'alet)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'xfields)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-xfields)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'fx+)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'xfields)
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '!struct-type-fields)
                                 (cons (gx#datum->syntax__0 '#f 'super-type)
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'xtor)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'or)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L50021_ '()))
                               (cons (cons (gx#datum->syntax__0 '#f 'if)
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  'super-type)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-ctor)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               (cons '#!void '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          'make-!struct-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'quote)
                                                     (cons _L50024_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50023_ '()))
                                                     (cons _L50022_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L50019_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5130351304_)
              (let ((_e4990550056_ (gx#syntax-e ___stx5130351304_)))
                (let ((_tl4990750063_ (##cdr _e4990550056_))
                      (_hd4990650060_ (##car _e4990550056_)))
                  (if (gx#stx-pair? _tl4990750063_)
                      (let ((_e4990850066_ (gx#syntax-e _tl4990750063_)))
                        (let ((_tl4991050073_ (##cdr _e4990850066_))
                              (_hd4990950070_ (##car _e4990850066_)))
                          (if (gx#stx-pair? _tl4991050073_)
                              (let ((_e4991150076_
                                     (gx#syntax-e _tl4991050073_)))
                                (let ((_tl4991350083_ (##cdr _e4991150076_))
                                      (_hd4991250080_ (##car _e4991150076_)))
                                  (if (gx#stx-datum? _hd4991250080_)
                                      (let ((_e4991450086_
                                             (gx#stx-e _hd4991250080_)))
                                        (if (equal? _e4991450086_ '#f)
                                            (if (gx#stx-pair? _tl4991350083_)
                                                (let ((_e4991550090_
                                                       (gx#syntax-e
                                                        _tl4991350083_)))
                                                  (let ((_tl4991750097_
                                                         (##cdr _e4991550090_))
                                                        (_hd4991650094_
                                                         (##car _e4991550090_)))
                                                    (if (gx#stx-pair?
                                                         _tl4991750097_)
                                                        (let ((_e4991850100_
                                                               (gx#syntax-e
                                                                _tl4991750097_)))
                                                          (let ((_tl4992050107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4991850100_))
                        (_hd4991950104_ (##car _e4991850100_)))
                    (if (gx#stx-pair? _tl4992050107_)
                        (let ((_e4992150110_ (gx#syntax-e _tl4992050107_)))
                          (let ((_tl4992350117_ (##cdr _e4992150110_))
                                (_hd4992250114_ (##car _e4992150110_)))
                            (if (gx#stx-null? _tl4992350117_)
                                (___kont5130651307_
                                 _hd4992250114_
                                 _hd4991950104_
                                 _hd4991650094_
                                 _hd4990950070_)
                                (_g4989949952_))))
                        (_g4989949952_))))
                (_g4989949952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4989949952_))
                                            (if (gx#stx-pair? _tl4991350083_)
                                                (let ((_e4993849989_
                                                       (gx#syntax-e
                                                        _tl4991350083_)))
                                                  (let ((_tl4994049996_
                                                         (##cdr _e4993849989_))
                                                        (_hd4993949993_
                                                         (##car _e4993849989_)))
                                                    (if (gx#stx-pair?
                                                         _tl4994049996_)
                                                        (let ((_e4994149999_
                                                               (gx#syntax-e
                                                                _tl4994049996_)))
                                                          (let ((_tl4994350006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4994149999_))
                        (_hd4994250003_ (##car _e4994149999_)))
                    (if (gx#stx-pair? _tl4994350006_)
                        (let ((_e4994450009_ (gx#syntax-e _tl4994350006_)))
                          (let ((_tl4994650016_ (##cdr _e4994450009_))
                                (_hd4994550013_ (##car _e4994450009_)))
                            (if (gx#stx-null? _tl4994650016_)
                                (___kont5130851309_
                                 _hd4994550013_
                                 _hd4994250003_
                                 _hd4993949993_
                                 _hd4991250080_
                                 _hd4990950070_)
                                (_g4989949952_))))
                        (_g4989949952_))))
                (_g4989949952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4989949952_))))
                                      (if (gx#stx-pair? _tl4991350083_)
                                          (let ((_e4993849989_
                                                 (gx#syntax-e _tl4991350083_)))
                                            (let ((_tl4994049996_
                                                   (##cdr _e4993849989_))
                                                  (_hd4993949993_
                                                   (##car _e4993849989_)))
                                              (if (gx#stx-pair? _tl4994049996_)
                                                  (let ((_e4994149999_
                                                         (gx#syntax-e
                                                          _tl4994049996_)))
                                                    (let ((_tl4994350006_
                                                           (##cdr _e4994149999_))
                                                          (_hd4994250003_
                                                           (##car _e4994149999_)))
                                                      (if (gx#stx-pair?
                                                           _tl4994350006_)
                                                          (let ((_e4994450009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4994350006_)))
                    (let ((_tl4994650016_ (##cdr _e4994450009_))
                          (_hd4994550013_ (##car _e4994450009_)))
                      (if (gx#stx-null? _tl4994650016_)
                          (___kont5130851309_
                           _hd4994550013_
                           _hd4994250003_
                           _hd4993949993_
                           _hd4991250080_
                           _hd4990950070_)
                          (_g4989949952_))))
                  (_g4989949952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4989949952_))))
                                          (_g4989949952_)))))
                              (_g4989949952_))))
                      (_g4989949952_))))
              (_g4989949952_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx50152_)
      (let* ((_g5015650170_
              (lambda (_g5015750166_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5015750166_)))
             (_g5015550211_
              (lambda (_g5015750174_)
                (if (gx#stx-pair? _g5015750174_)
                    (let ((_e5015950177_ (gx#syntax-e _g5015750174_)))
                      (let ((_hd5016050181_ (##car _e5015950177_))
                            (_tl5016150184_ (##cdr _e5015950177_)))
                        (if (gx#stx-pair? _tl5016150184_)
                            (let ((_e5016250187_ (gx#syntax-e _tl5016150184_)))
                              (let ((_hd5016350191_ (##car _e5016250187_))
                                    (_tl5016450194_ (##cdr _e5016250187_)))
                                (if (gx#stx-null? _tl5016450194_)
                                    ((lambda (_L50197_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50197_ '()))
                                                   '())))
                                     _hd5016350191_)
                                    (_g5015650170_ _g5015750174_))))
                            (_g5015650170_ _g5015750174_))))
                    (_g5015650170_ _g5015750174_)))))
        (_g5015550211_ _$stx50152_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx50215_)
      (let* ((_g5021950233_
              (lambda (_g5022050229_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5022050229_)))
             (_g5021850274_
              (lambda (_g5022050237_)
                (if (gx#stx-pair? _g5022050237_)
                    (let ((_e5022250240_ (gx#syntax-e _g5022050237_)))
                      (let ((_hd5022350244_ (##car _e5022250240_))
                            (_tl5022450247_ (##cdr _e5022250240_)))
                        (if (gx#stx-pair? _tl5022450247_)
                            (let ((_e5022550250_ (gx#syntax-e _tl5022450247_)))
                              (let ((_hd5022650254_ (##car _e5022550250_))
                                    (_tl5022750257_ (##cdr _e5022550250_)))
                                (if (gx#stx-null? _tl5022750257_)
                                    ((lambda (_L50260_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50260_ '()))
                                                   '())))
                                     _hd5022650254_)
                                    (_g5021950233_ _g5022050237_))))
                            (_g5021950233_ _g5022050237_))))
                    (_g5021950233_ _g5022050237_)))))
        (_g5021850274_ _$stx50215_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx50278_)
      (let* ((___stx5139551396_ _$stx50278_)
             (_g5028350316_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5139551396_))))
        (let ((___kont5139851399_
               (lambda (_L50418_ _L50420_ _L50421_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50421_ '()))
                             (cons _L50420_ (cons _L50418_ '()))))))
              (___kont5140051401_
               (lambda (_L50353_ _L50355_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50355_ '()))
                             (cons _L50353_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5139551396_)
              (let ((_e5028850378_ (gx#syntax-e ___stx5139551396_)))
                (let ((_tl5029050385_ (##cdr _e5028850378_))
                      (_hd5028950382_ (##car _e5028850378_)))
                  (if (gx#stx-pair? _tl5029050385_)
                      (let ((_e5029150388_ (gx#syntax-e _tl5029050385_)))
                        (let ((_tl5029350395_ (##cdr _e5029150388_))
                              (_hd5029250392_ (##car _e5029150388_)))
                          (if (gx#stx-pair? _tl5029350395_)
                              (let ((_e5029450398_
                                     (gx#syntax-e _tl5029350395_)))
                                (let ((_tl5029650405_ (##cdr _e5029450398_))
                                      (_hd5029550402_ (##car _e5029450398_)))
                                  (if (gx#stx-pair? _tl5029650405_)
                                      (let ((_e5029750408_
                                             (gx#syntax-e _tl5029650405_)))
                                        (let ((_tl5029950415_
                                               (##cdr _e5029750408_))
                                              (_hd5029850412_
                                               (##car _e5029750408_)))
                                          (if (gx#stx-null? _tl5029950415_)
                                              (___kont5139851399_
                                               _hd5029850412_
                                               _hd5029550402_
                                               _hd5029250392_)
                                              (_g5028350316_))))
                                      (if (gx#stx-null? _tl5029650405_)
                                          (___kont5140051401_
                                           _hd5029550402_
                                           _hd5029250392_)
                                          (_g5028350316_)))))
                              (_g5028350316_))))
                      (_g5028350316_))))
              (_g5028350316_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx50443_)
      (let* ((___stx5145151452_ _$stx50443_)
             (_g5044850481_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5145151452_))))
        (let ((___kont5145451455_
               (lambda (_L50583_ _L50585_ _L50586_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50586_ '()))
                             (cons _L50585_ (cons _L50583_ '()))))))
              (___kont5145651457_
               (lambda (_L50518_ _L50520_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50520_ '()))
                             (cons _L50518_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5145151452_)
              (let ((_e5045350543_ (gx#syntax-e ___stx5145151452_)))
                (let ((_tl5045550550_ (##cdr _e5045350543_))
                      (_hd5045450547_ (##car _e5045350543_)))
                  (if (gx#stx-pair? _tl5045550550_)
                      (let ((_e5045650553_ (gx#syntax-e _tl5045550550_)))
                        (let ((_tl5045850560_ (##cdr _e5045650553_))
                              (_hd5045750557_ (##car _e5045650553_)))
                          (if (gx#stx-pair? _tl5045850560_)
                              (let ((_e5045950563_
                                     (gx#syntax-e _tl5045850560_)))
                                (let ((_tl5046150570_ (##cdr _e5045950563_))
                                      (_hd5046050567_ (##car _e5045950563_)))
                                  (if (gx#stx-pair? _tl5046150570_)
                                      (let ((_e5046250573_
                                             (gx#syntax-e _tl5046150570_)))
                                        (let ((_tl5046450580_
                                               (##cdr _e5046250573_))
                                              (_hd5046350577_
                                               (##car _e5046250573_)))
                                          (if (gx#stx-null? _tl5046450580_)
                                              (___kont5145451455_
                                               _hd5046350577_
                                               _hd5046050567_
                                               _hd5045750557_)
                                              (_g5044850481_))))
                                      (if (gx#stx-null? _tl5046150570_)
                                          (___kont5145651457_
                                           _hd5046050567_
                                           _hd5045750557_)
                                          (_g5044850481_)))))
                              (_g5044850481_))))
                      (_g5044850481_))))
              (_g5044850481_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx50608_)
      (let* ((___stx5150751508_ _$stx50608_)
             (_g5061450655_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5150751508_))))
        (let ((___kont5151051511_
               (lambda (_L50803_ _L50805_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50805_ '()))
                                   (cons '#f
                                         (cons _L50803_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50803_ '()))
                                                     '()))))))))
              (___kont5151251513_
               (lambda (_L50735_ _L50737_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50737_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50735_ '()))
                                         '()))))))
              (___kont5151451515_
               (lambda (_L50682_ _L50684_)
                 (cons _L50684_ (cons _L50682_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5150751508_)
              (let ((_e5061850759_ (gx#syntax-e ___stx5150751508_)))
                (let ((_tl5062050766_ (##cdr _e5061850759_))
                      (_hd5061950763_ (##car _e5061850759_)))
                  (if (gx#stx-pair? _tl5062050766_)
                      (let ((_e5062150769_ (gx#syntax-e _tl5062050766_)))
                        (let ((_tl5062350776_ (##cdr _e5062150769_))
                              (_hd5062250773_ (##car _e5062150769_)))
                          (if (gx#stx-pair? _tl5062350776_)
                              (let ((_e5062450779_
                                     (gx#syntax-e _tl5062350776_)))
                                (let ((_tl5062650786_ (##cdr _e5062450779_))
                                      (_hd5062550783_ (##car _e5062450779_)))
                                  (if (gx#stx-datum? _hd5062550783_)
                                      (let ((_e5062750789_
                                             (gx#stx-e _hd5062550783_)))
                                        (if (equal? _e5062750789_ 'inline:)
                                            (if (gx#stx-pair? _tl5062650786_)
                                                (let ((_e5062850793_
                                                       (gx#syntax-e
                                                        _tl5062650786_)))
                                                  (let ((_tl5063050800_
                                                         (##cdr _e5062850793_))
                                                        (_hd5062950797_
                                                         (##car _e5062850793_)))
                                                    (if (gx#stx-null?
                                                         _tl5063050800_)
                                                        (___kont5151051511_
                                                         _hd5062950797_
                                                         _hd5062250773_)
                                                        (_g5061450655_))))
                                                (if (gx#stx-null?
                                                     _tl5062650786_)
                                                    (___kont5151251513_
                                                     _hd5062550783_
                                                     _hd5062250773_)
                                                    (_g5061450655_)))
                                            (if (gx#stx-null? _tl5062650786_)
                                                (___kont5151251513_
                                                 _hd5062550783_
                                                 _hd5062250773_)
                                                (_g5061450655_))))
                                      (if (gx#stx-null? _tl5062650786_)
                                          (___kont5151251513_
                                           _hd5062550783_
                                           _hd5062250773_)
                                          (_g5061450655_)))))
                              (if (gx#stx-null? _tl5062350776_)
                                  (___kont5151451515_
                                   _hd5062250773_
                                   _hd5061950763_)
                                  (_g5061450655_)))))
                      (_g5061450655_))))
              (_g5061450655_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx50827_)
      (let* ((_g5083150860_
              (lambda (_g5083250856_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5083250856_)))
             (_g5083050960_
              (lambda (_g5083250864_)
                (if (gx#stx-pair? _g5083250864_)
                    (let ((_e5083550867_ (gx#syntax-e _g5083250864_)))
                      (let ((_hd5083650871_ (##car _e5083550867_))
                            (_tl5083750874_ (##cdr _e5083550867_)))
                        (if (gx#stx-pair/null? _tl5083750874_)
                            (let ((_g51590_
                                   (gx#syntax-split-splice _tl5083750874_ '0)))
                              (begin
                                (let ((_g51591_
                                       (if (##values? _g51590_)
                                           (##vector-length _g51590_)
                                           1)))
                                  (if (not (##fx= _g51591_ 2))
                                      (error "Context expects 2 values"
                                             _g51591_)))
                                (let ((_target5083850877_
                                       (##vector-ref _g51590_ 0))
                                      (_tl5084050880_
                                       (##vector-ref _g51590_ 1)))
                                  (if (gx#stx-null? _tl5084050880_)
                                      (letrec ((_loop5084150883_
                                                (lambda (_hd5083950887_
                                                         _dispatch5084550890_
                                                         _arity5084650892_)
                                                  (if (gx#stx-pair?
                                                       _hd5083950887_)
                                                      (let ((_e5084250895_
                                                             (gx#syntax-e
                                                              _hd5083950887_)))
                                                        (let ((_lp-hd5084350899_
                                                               (##car _e5084250895_))
                                                              (_lp-tl5084450902_
                                                               (##cdr _e5084250895_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5084350899_)
                                                              (let ((_e5084950905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5084350899_)))
                        (let ((_hd5085050909_ (##car _e5084950905_))
                              (_tl5085150912_ (##cdr _e5084950905_)))
                          (if (gx#stx-pair? _tl5085150912_)
                              (let ((_e5085250915_
                                     (gx#syntax-e _tl5085150912_)))
                                (let ((_hd5085350919_ (##car _e5085250915_))
                                      (_tl5085450922_ (##cdr _e5085250915_)))
                                  (if (gx#stx-null? _tl5085450922_)
                                      (_loop5084150883_
                                       _lp-tl5084450902_
                                       (cons _hd5085350919_
                                             _dispatch5084550890_)
                                       (cons _hd5085050909_ _arity5084650892_))
                                      (_g5083150860_ _g5083250864_))))
                              (_g5083150860_ _g5083250864_))))
                      (_g5083150860_ _g5083250864_))))
              (let ((_dispatch5084750925_ (reverse _dispatch5084550890_))
                    (_arity5084850928_ (reverse _arity5084650892_)))
                ((lambda (_L50931_ _L50933_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L50931_
                                              _L50933_)
                                             (foldr2 (lambda (_g5094850952_
                                                              _g5094950955_
                                                              _g5095050957_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5094950955_ (cons _g5094850952_ '())))
                     _g5095050957_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L50931_
                                                     _L50933_)))
                                     '()))))
                 _dispatch5084750925_
                 _arity5084850928_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5084150883_
                                         _target5083850877_
                                         '()
                                         '()))
                                      (_g5083150860_ _g5083250864_)))))
                            (_g5083150860_ _g5083250864_))))
                    (_g5083150860_ _g5083250864_)))))
        (_g5083050960_ _$stx50827_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx50965_)
      (let* ((_g5096950987_
              (lambda (_g5097050983_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5097050983_)))
             (_g5096851042_
              (lambda (_g5097050991_)
                (if (gx#stx-pair? _g5097050991_)
                    (let ((_e5097350994_ (gx#syntax-e _g5097050991_)))
                      (let ((_hd5097450998_ (##car _e5097350994_))
                            (_tl5097551001_ (##cdr _e5097350994_)))
                        (if (gx#stx-pair? _tl5097551001_)
                            (let ((_e5097651004_ (gx#syntax-e _tl5097551001_)))
                              (let ((_hd5097751008_ (##car _e5097651004_))
                                    (_tl5097851011_ (##cdr _e5097651004_)))
                                (if (gx#stx-pair? _tl5097851011_)
                                    (let ((_e5097951014_
                                           (gx#syntax-e _tl5097851011_)))
                                      (let ((_hd5098051018_
                                             (##car _e5097951014_))
                                            (_tl5098151021_
                                             (##cdr _e5097951014_)))
                                        (if (gx#stx-null? _tl5098151021_)
                                            ((lambda (_L51024_ _L51026_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51026_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51024_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5098051018_
                                             _hd5097751008_)
                                            (_g5096950987_ _g5097050991_))))
                                    (_g5096950987_ _g5097050991_))))
                            (_g5096950987_ _g5097050991_))))
                    (_g5096950987_ _g5097050991_)))))
        (_g5096851042_ _$stx50965_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx51046_)
      (let* ((_g5105051068_
              (lambda (_g5105151064_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5105151064_)))
             (_g5104951123_
              (lambda (_g5105151072_)
                (if (gx#stx-pair? _g5105151072_)
                    (let ((_e5105451075_ (gx#syntax-e _g5105151072_)))
                      (let ((_hd5105551079_ (##car _e5105451075_))
                            (_tl5105651082_ (##cdr _e5105451075_)))
                        (if (gx#stx-pair? _tl5105651082_)
                            (let ((_e5105751085_ (gx#syntax-e _tl5105651082_)))
                              (let ((_hd5105851089_ (##car _e5105751085_))
                                    (_tl5105951092_ (##cdr _e5105751085_)))
                                (if (gx#stx-pair? _tl5105951092_)
                                    (let ((_e5106051095_
                                           (gx#syntax-e _tl5105951092_)))
                                      (let ((_hd5106151099_
                                             (##car _e5106051095_))
                                            (_tl5106251102_
                                             (##cdr _e5106051095_)))
                                        (if (gx#stx-null? _tl5106251102_)
                                            ((lambda (_L51105_ _L51107_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda-primary)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda-dispatch)
                               '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51107_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51105_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5106151099_
                                             _hd5105851089_)
                                            (_g5105051068_ _g5105151072_))))
                                    (_g5105051068_ _g5105151072_))))
                            (_g5105051068_ _g5105151072_))))
                    (_g5105051068_ _g5105151072_)))))
        (_g5104951123_ _$stx51046_)))))
