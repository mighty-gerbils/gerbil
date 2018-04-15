(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx50296_)
      (let* ((_g5030050318_
              (lambda (_g5030150314_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5030150314_)))
             (_g5029950373_
              (lambda (_g5030150322_)
                (if (gx#stx-pair? _g5030150322_)
                    (let ((_e5030450325_ (gx#syntax-e _g5030150322_)))
                      (let ((_hd5030550329_ (##car _e5030450325_))
                            (_tl5030650332_ (##cdr _e5030450325_)))
                        (if (gx#stx-pair? _tl5030650332_)
                            (let ((_e5030750335_ (gx#syntax-e _tl5030650332_)))
                              (let ((_hd5030850339_ (##car _e5030750335_))
                                    (_tl5030950342_ (##cdr _e5030750335_)))
                                (if (gx#stx-pair? _tl5030950342_)
                                    (let ((_e5031050345_
                                           (gx#syntax-e _tl5030950342_)))
                                      (let ((_hd5031150349_
                                             (##car _e5031050345_))
                                            (_tl5031250352_
                                             (##cdr _e5031050345_)))
                                        (if (gx#stx-null? _tl5031250352_)
                                            ((lambda (_L50355_ _L50357_)
                                               (if (gx#identifier? _L50357_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L50357_ '()))
                       (cons _L50355_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5030050318_
                                                    _g5030150322_)))
                                             _hd5031150349_
                                             _hd5030850339_)
                                            (_g5030050318_ _g5030150322_))))
                                    (_g5030050318_ _g5030150322_))))
                            (_g5030050318_ _g5030150322_))))
                    (_g5030050318_ _g5030150322_)))))
        (_g5029950373_ _$stx50296_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx50377_)
      (let* ((_g5038150410_
              (lambda (_g5038250406_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5038250406_)))
             (_g5038050510_
              (lambda (_g5038250414_)
                (if (gx#stx-pair? _g5038250414_)
                    (let ((_e5038550417_ (gx#syntax-e _g5038250414_)))
                      (let ((_hd5038650421_ (##car _e5038550417_))
                            (_tl5038750424_ (##cdr _e5038550417_)))
                        (if (gx#stx-pair/null? _tl5038750424_)
                            (let ((_g53527_
                                   (gx#syntax-split-splice _tl5038750424_ '0)))
                              (begin
                                (let ((_g53528_
                                       (if (##values? _g53527_)
                                           (##vector-length _g53527_)
                                           1)))
                                  (if (not (##fx= _g53528_ 2))
                                      (error "Context expects 2 values"
                                             _g53528_)))
                                (let ((_target5038850427_
                                       (##vector-ref _g53527_ 0))
                                      (_tl5039050430_
                                       (##vector-ref _g53527_ 1)))
                                  (if (gx#stx-null? _tl5039050430_)
                                      (letrec ((_loop5039150433_
                                                (lambda (_hd5038950437_
                                                         _type5039550440_
                                                         _symbol5039650442_)
                                                  (if (gx#stx-pair?
                                                       _hd5038950437_)
                                                      (let ((_e5039250445_
                                                             (gx#syntax-e
                                                              _hd5038950437_)))
                                                        (let ((_lp-hd5039350449_
                                                               (##car _e5039250445_))
                                                              (_lp-tl5039450452_
                                                               (##cdr _e5039250445_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5039350449_)
                                                              (let ((_e5039950455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5039350449_)))
                        (let ((_hd5040050459_ (##car _e5039950455_))
                              (_tl5040150462_ (##cdr _e5039950455_)))
                          (if (gx#stx-pair? _tl5040150462_)
                              (let ((_e5040250465_
                                     (gx#syntax-e _tl5040150462_)))
                                (let ((_hd5040350469_ (##car _e5040250465_))
                                      (_tl5040450472_ (##cdr _e5040250465_)))
                                  (if (gx#stx-null? _tl5040450472_)
                                      (_loop5039150433_
                                       _lp-tl5039450452_
                                       (cons _hd5040350469_ _type5039550440_)
                                       (cons _hd5040050459_
                                             _symbol5039650442_))
                                      (_g5038150410_ _g5038250414_))))
                              (_g5038150410_ _g5038250414_))))
                      (_g5038150410_ _g5038250414_))))
              (let ((_type5039750475_ (reverse _type5039550440_))
                    (_symbol5039850478_ (reverse _symbol5039650442_)))
                ((lambda (_L50481_ _L50483_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L50481_ _L50483_)
                           (foldr2 (lambda (_g5049850502_
                                            _g5049950505_
                                            _g5050050507_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g5049950505_
                                                       (cons _g5049850502_
                                                             '())))
                                           _g5050050507_))
                                   '()
                                   _L50481_
                                   _L50483_))))
                 _type5039750475_
                 _symbol5039850478_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5039150433_
                                         _target5038850427_
                                         '()
                                         '()))
                                      (_g5038150410_ _g5038250414_)))))
                            (_g5038150410_ _g5038250414_))))
                    (_g5038150410_ _g5038250414_)))))
        (_g5038050510_ _$stx50377_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx50515_)
      (let* ((___stx5301853019_ _$stx50515_)
             (_g5052050562_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5301853019_))))
        (let ((___kont5302153022_
               (lambda (_L50690_ _L50692_ _L50693_ _L50694_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50694_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50693_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50692_ '()))
                                         (cons _L50690_ '())))))))
              (___kont5302353024_
               (lambda (_L50609_ _L50611_ _L50612_ _L50613_)
                 (cons _L50613_
                       (cons _L50612_
                             (cons _L50611_
                                   (cons _L50609_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5305753058_
                 (lambda (_e5052650640_
                          _hd5052750644_
                          _tl5052850647_
                          _e5052950650_
                          _hd5053050654_
                          _tl5053150657_
                          _e5053250660_
                          _hd5053350664_
                          _tl5053450667_
                          _e5053550670_
                          _hd5053650674_
                          _tl5053750677_
                          _e5053850680_
                          _hd5053950684_
                          _tl5054050687_)
                   (let ((_L50690_ _hd5053950684_)
                         (_L50692_ _hd5053650674_)
                         (_L50693_ _hd5053350664_)
                         (_L50694_ _hd5053050654_))
                     (if (and (gx#identifier? _L50694_)
                              (gx#identifier? _L50693_)
                              (gx#identifier? _L50692_))
                         (___kont5302153022_
                          _L50690_
                          _L50692_
                          _L50693_
                          _L50694_)
                         (_g5052050562_))))))
            (if (gx#stx-pair? ___stx5301853019_)
                (let ((_e5052650640_ (gx#syntax-e ___stx5301853019_)))
                  (let ((_tl5052850647_ (##cdr _e5052650640_))
                        (_hd5052750644_ (##car _e5052650640_)))
                    (if (gx#stx-pair? _tl5052850647_)
                        (let ((_e5052950650_ (gx#syntax-e _tl5052850647_)))
                          (let ((_tl5053150657_ (##cdr _e5052950650_))
                                (_hd5053050654_ (##car _e5052950650_)))
                            (if (gx#stx-pair? _tl5053150657_)
                                (let ((_e5053250660_
                                       (gx#syntax-e _tl5053150657_)))
                                  (let ((_tl5053450667_ (##cdr _e5053250660_))
                                        (_hd5053350664_ (##car _e5053250660_)))
                                    (if (gx#stx-pair? _tl5053450667_)
                                        (let ((_e5053550670_
                                               (gx#syntax-e _tl5053450667_)))
                                          (let ((_tl5053750677_
                                                 (##cdr _e5053550670_))
                                                (_hd5053650674_
                                                 (##car _e5053550670_)))
                                            (if (gx#stx-pair? _tl5053750677_)
                                                (let ((_e5053850680_
                                                       (gx#syntax-e
                                                        _tl5053750677_)))
                                                  (let ((_tl5054050687_
                                                         (##cdr _e5053850680_))
                                                        (_hd5053950684_
                                                         (##car _e5053850680_)))
                                                    (if (gx#stx-null?
                                                         _tl5054050687_)
                                                        (___match5305753058_
                                                         _e5052650640_
                                                         _hd5052750644_
                                                         _tl5052850647_
                                                         _e5052950650_
                                                         _hd5053050654_
                                                         _tl5053150657_
                                                         _e5053250660_
                                                         _hd5053350664_
                                                         _tl5053450667_
                                                         _e5053550670_
                                                         _hd5053650674_
                                                         _tl5053750677_
                                                         _e5053850680_
                                                         _hd5053950684_
                                                         _tl5054050687_)
                                                        (_g5052050562_))))
                                                (if (gx#stx-null?
                                                     _tl5053750677_)
                                                    (___kont5302353024_
                                                     _hd5053650674_
                                                     _hd5053350664_
                                                     _hd5053050654_
                                                     _hd5052750644_)
                                                    (_g5052050562_)))))
                                        (_g5052050562_))))
                                (_g5052050562_))))
                        (_g5052050562_))))
                (_g5052050562_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx50719_)
      (let* ((_g5072350758_
              (lambda (_g5072450754_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5072450754_)))
             (_g5072250877_
              (lambda (_g5072450762_)
                (if (gx#stx-pair? _g5072450762_)
                    (let ((_e5072850765_ (gx#syntax-e _g5072450762_)))
                      (let ((_hd5072950769_ (##car _e5072850765_))
                            (_tl5073050772_ (##cdr _e5072850765_)))
                        (if (gx#stx-pair/null? _tl5073050772_)
                            (let ((_g53529_
                                   (gx#syntax-split-splice _tl5073050772_ '0)))
                              (begin
                                (let ((_g53530_
                                       (if (##values? _g53529_)
                                           (##vector-length _g53529_)
                                           1)))
                                  (if (not (##fx= _g53530_ 2))
                                      (error "Context expects 2 values"
                                             _g53530_)))
                                (let ((_target5073150775_
                                       (##vector-ref _g53529_ 0))
                                      (_tl5073350778_
                                       (##vector-ref _g53529_ 1)))
                                  (if (gx#stx-null? _tl5073350778_)
                                      (letrec ((_loop5073450781_
                                                (lambda (_hd5073250785_
                                                         _symbol5073850788_
                                                         _method5073950790_
                                                         _type-t5074050792_)
                                                  (if (gx#stx-pair?
                                                       _hd5073250785_)
                                                      (let ((_e5073550795_
                                                             (gx#syntax-e
                                                              _hd5073250785_)))
                                                        (let ((_lp-hd5073650799_
                                                               (##car _e5073550795_))
                                                              (_lp-tl5073750802_
                                                               (##cdr _e5073550795_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5073650799_)
                                                              (let ((_e5074450805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5073650799_)))
                        (let ((_hd5074550809_ (##car _e5074450805_))
                              (_tl5074650812_ (##cdr _e5074450805_)))
                          (if (gx#stx-pair? _tl5074650812_)
                              (let ((_e5074750815_
                                     (gx#syntax-e _tl5074650812_)))
                                (let ((_hd5074850819_ (##car _e5074750815_))
                                      (_tl5074950822_ (##cdr _e5074750815_)))
                                  (if (gx#stx-pair? _tl5074950822_)
                                      (let ((_e5075050825_
                                             (gx#syntax-e _tl5074950822_)))
                                        (let ((_hd5075150829_
                                               (##car _e5075050825_))
                                              (_tl5075250832_
                                               (##cdr _e5075050825_)))
                                          (if (gx#stx-null? _tl5075250832_)
                                              (_loop5073450781_
                                               _lp-tl5073750802_
                                               (cons _hd5075150829_
                                                     _symbol5073850788_)
                                               (cons _hd5074850819_
                                                     _method5073950790_)
                                               (cons _hd5074550809_
                                                     _type-t5074050792_))
                                              (_g5072350758_ _g5072450762_))))
                                      (_g5072350758_ _g5072450762_))))
                              (_g5072350758_ _g5072450762_))))
                      (_g5072350758_ _g5072450762_))))
              (let ((_symbol5074150835_ (reverse _symbol5073850788_))
                    (_method5074250838_ (reverse _method5073950790_))
                    (_type-t5074350840_ (reverse _type-t5074050792_)))
                ((lambda (_L50843_ _L50845_ _L50846_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L50843_
                            _L50845_
                            _L50846_)
                           (foldr (lambda (_g5086250867_
                                           _g5086350870_
                                           _g5086450872_
                                           _g5086550874_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g5086450872_
                                                      (cons _g5086350870_
                                                            (cons _g5086250867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g5086550874_))
                                  '()
                                  _L50843_
                                  _L50845_
                                  _L50846_))))
                 _symbol5074150835_
                 _method5074250838_
                 _type-t5074350840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5073450781_
                                         _target5073150775_
                                         '()
                                         '()
                                         '()))
                                      (_g5072350758_ _g5072450762_)))))
                            (_g5072350758_ _g5072450762_))))
                    (_g5072350758_ _g5072450762_)))))
        (_g5072250877_ _$stx50719_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx50882_)
      (let* ((_g5088650919_
              (lambda (_g5088750915_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5088750915_)))
             (_g5088551033_
              (lambda (_g5088750923_)
                (if (gx#stx-pair? _g5088750923_)
                    (let ((_e5089150926_ (gx#syntax-e _g5088750923_)))
                      (let ((_hd5089250930_ (##car _e5089150926_))
                            (_tl5089350933_ (##cdr _e5089150926_)))
                        (if (gx#stx-pair? _tl5089350933_)
                            (let ((_e5089450936_ (gx#syntax-e _tl5089350933_)))
                              (let ((_hd5089550940_ (##car _e5089450936_))
                                    (_tl5089650943_ (##cdr _e5089450936_)))
                                (if (gx#stx-pair/null? _tl5089650943_)
                                    (let ((_g53531_
                                           (gx#syntax-split-splice
                                            _tl5089650943_
                                            '0)))
                                      (begin
                                        (let ((_g53532_
                                               (if (##values? _g53531_)
                                                   (##vector-length _g53531_)
                                                   1)))
                                          (if (not (##fx= _g53532_ 2))
                                              (error "Context expects 2 values"
                                                     _g53532_)))
                                        (let ((_target5089750946_
                                               (##vector-ref _g53531_ 0))
                                              (_tl5089950949_
                                               (##vector-ref _g53531_ 1)))
                                          (if (gx#stx-null? _tl5089950949_)
                                              (letrec ((_loop5090050952_
                                                        (lambda (_hd5089850956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol5090450959_
                         _method5090550961_)
                  (if (gx#stx-pair? _hd5089850956_)
                      (let ((_e5090150964_ (gx#syntax-e _hd5089850956_)))
                        (let ((_lp-hd5090250968_ (##car _e5090150964_))
                              (_lp-tl5090350971_ (##cdr _e5090150964_)))
                          (if (gx#stx-pair? _lp-hd5090250968_)
                              (let ((_e5090850974_
                                     (gx#syntax-e _lp-hd5090250968_)))
                                (let ((_hd5090950978_ (##car _e5090850974_))
                                      (_tl5091050981_ (##cdr _e5090850974_)))
                                  (if (gx#stx-pair? _tl5091050981_)
                                      (let ((_e5091150984_
                                             (gx#syntax-e _tl5091050981_)))
                                        (let ((_hd5091250988_
                                               (##car _e5091150984_))
                                              (_tl5091350991_
                                               (##cdr _e5091150984_)))
                                          (if (gx#stx-null? _tl5091350991_)
                                              (_loop5090050952_
                                               _lp-tl5090350971_
                                               (cons _hd5091250988_
                                                     _symbol5090450959_)
                                               (cons _hd5090950978_
                                                     _method5090550961_))
                                              (_g5088650919_ _g5088750923_))))
                                      (_g5088650919_ _g5088750923_))))
                              (_g5088650919_ _g5088750923_))))
                      (let ((_symbol5090650994_ (reverse _symbol5090450959_))
                            (_method5090750997_ (reverse _method5090550961_)))
                        ((lambda (_L51000_ _L51002_ _L51003_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L51000_
                                    _L51002_)
                                   (foldr2 (lambda (_g5102151025_
                                                    _g5102251028_
                                                    _g5102351030_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L51003_
                                                               (cons _g5102251028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g5102151025_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g5102351030_))
                                           '()
                                           _L51000_
                                           _L51002_))))
                         _symbol5090650994_
                         _method5090750997_
                         _hd5089550940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop5090050952_
                                                 _target5089750946_
                                                 '()
                                                 '()))
                                              (_g5088650919_ _g5088750923_)))))
                                    (_g5088650919_ _g5088750923_))))
                            (_g5088650919_ _g5088750923_))))
                    (_g5088650919_ _g5088750923_)))))
        (_g5088551033_ _$stx50882_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx51038_)
      (let* ((_g5104251056_
              (lambda (_g5104351052_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5104351052_)))
             (_g5104151097_
              (lambda (_g5104351060_)
                (if (gx#stx-pair? _g5104351060_)
                    (let ((_e5104551063_ (gx#syntax-e _g5104351060_)))
                      (let ((_hd5104651067_ (##car _e5104551063_))
                            (_tl5104751070_ (##cdr _e5104551063_)))
                        (if (gx#stx-pair? _tl5104751070_)
                            (let ((_e5104851073_ (gx#syntax-e _tl5104751070_)))
                              (let ((_hd5104951077_ (##car _e5104851073_))
                                    (_tl5105051080_ (##cdr _e5104851073_)))
                                (if (gx#stx-null? _tl5105051080_)
                                    ((lambda (_L51083_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51083_ '()))
                                                   '())))
                                     _hd5104951077_)
                                    (_g5104251056_ _g5104351060_))))
                            (_g5104251056_ _g5104351060_))))
                    (_g5104251056_ _g5104351060_)))))
        (_g5104151097_ _$stx51038_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx51101_)
      (let* ((___stx5308653087_ _$stx51101_)
             (_g5110751173_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5308653087_))))
        (let ((___kont5308953090_
               (lambda (_L51395_ _L51397_ _L51398_ _L51399_ _L51400_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L51400_
                             (cons _L51399_
                                   (cons _L51398_
                                         (cons _L51397_
                                               (cons _L51395_ '()))))))))
              (___kont5309153092_
               (lambda (_L51305_ _L51307_ _L51308_ _L51309_)
                 (cons _L51309_
                       (cons _L51308_
                             (cons _L51307_
                                   (cons _L51305_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5309353094_
               (lambda (_L51230_ _L51232_ _L51233_ _L51234_ _L51235_)
                 (cons _L51235_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L51233_
                                   (cons _L51232_
                                         (cons _L51230_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5308653087_)
              (let ((_e5111451335_ (gx#syntax-e ___stx5308653087_)))
                (let ((_tl5111651342_ (##cdr _e5111451335_))
                      (_hd5111551339_ (##car _e5111451335_)))
                  (if (gx#stx-pair? _tl5111651342_)
                      (let ((_e5111751345_ (gx#syntax-e _tl5111651342_)))
                        (let ((_tl5111951352_ (##cdr _e5111751345_))
                              (_hd5111851349_ (##car _e5111751345_)))
                          (if (gx#stx-pair? _tl5111951352_)
                              (let ((_e5112051355_
                                     (gx#syntax-e _tl5111951352_)))
                                (let ((_tl5112251362_ (##cdr _e5112051355_))
                                      (_hd5112151359_ (##car _e5112051355_)))
                                  (if (gx#stx-pair? _tl5112251362_)
                                      (let ((_e5112351365_
                                             (gx#syntax-e _tl5112251362_)))
                                        (let ((_tl5112551372_
                                               (##cdr _e5112351365_))
                                              (_hd5112451369_
                                               (##car _e5112351365_)))
                                          (if (gx#stx-pair? _tl5112551372_)
                                              (let ((_e5112651375_
                                                     (gx#syntax-e
                                                      _tl5112551372_)))
                                                (let ((_tl5112851382_
                                                       (##cdr _e5112651375_))
                                                      (_hd5112751379_
                                                       (##car _e5112651375_)))
                                                  (if (gx#stx-pair?
                                                       _tl5112851382_)
                                                      (let ((_e5112951385_
                                                             (gx#syntax-e
                                                              _tl5112851382_)))
                                                        (let ((_tl5113151392_
                                                               (##cdr _e5112951385_))
                                                              (_hd5113051389_
                                                               (##car _e5112951385_)))
                                                          (if (gx#stx-null?
                                                               _tl5113151392_)
                                                              (___kont5308953090_
                                                               _hd5113051389_
                                                               _hd5112751379_
                                                               _hd5112451369_
                                                               _hd5112151359_
                                                               _hd5111851349_)
                                                              (_g5110751173_))))
                                                      (if (gx#stx-null?
                                                           _tl5112851382_)
                                                          (___kont5309353094_
                                                           _hd5112751379_
                                                           _hd5112451369_
                                                           _hd5112151359_
                                                           _hd5111851349_
                                                           _hd5111551339_)
                                                          (_g5110751173_)))))
                                              (if (gx#stx-null? _tl5112551372_)
                                                  (___kont5309153092_
                                                   _hd5112451369_
                                                   _hd5112151359_
                                                   _hd5111851349_
                                                   _hd5111551339_)
                                                  (_g5110751173_)))))
                                      (_g5110751173_))))
                              (_g5110751173_))))
                      (_g5110751173_))))
              (_g5110751173_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx51428_)
      (let* ((___stx5319453195_ _$stx51428_)
             (_g5143351486_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5319453195_))))
        (let ((___kont5319753198_
               (lambda (_L51654_ _L51656_ _L51657_ _L51658_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51658_ '()))
                             (cons '#f
                                   (cons _L51657_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51656_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L51654_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5319953200_
               (lambda (_L51553_ _L51555_ _L51556_ _L51557_ _L51558_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L51557_ '()))
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
                                     (cons _L51555_ '()))
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
                                                     (cons _L51558_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51557_ '()))
                                                     (cons _L51556_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L51553_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5319453195_)
              (let ((_e5143951590_ (gx#syntax-e ___stx5319453195_)))
                (let ((_tl5144151597_ (##cdr _e5143951590_))
                      (_hd5144051594_ (##car _e5143951590_)))
                  (if (gx#stx-pair? _tl5144151597_)
                      (let ((_e5144251600_ (gx#syntax-e _tl5144151597_)))
                        (let ((_tl5144451607_ (##cdr _e5144251600_))
                              (_hd5144351604_ (##car _e5144251600_)))
                          (if (gx#stx-pair? _tl5144451607_)
                              (let ((_e5144551610_
                                     (gx#syntax-e _tl5144451607_)))
                                (let ((_tl5144751617_ (##cdr _e5144551610_))
                                      (_hd5144651614_ (##car _e5144551610_)))
                                  (if (gx#stx-datum? _hd5144651614_)
                                      (let ((_e5144851620_
                                             (gx#stx-e _hd5144651614_)))
                                        (if (equal? _e5144851620_ '#f)
                                            (if (gx#stx-pair? _tl5144751617_)
                                                (let ((_e5144951624_
                                                       (gx#syntax-e
                                                        _tl5144751617_)))
                                                  (let ((_tl5145151631_
                                                         (##cdr _e5144951624_))
                                                        (_hd5145051628_
                                                         (##car _e5144951624_)))
                                                    (if (gx#stx-pair?
                                                         _tl5145151631_)
                                                        (let ((_e5145251634_
                                                               (gx#syntax-e
                                                                _tl5145151631_)))
                                                          (let ((_tl5145451641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5145251634_))
                        (_hd5145351638_ (##car _e5145251634_)))
                    (if (gx#stx-pair? _tl5145451641_)
                        (let ((_e5145551644_ (gx#syntax-e _tl5145451641_)))
                          (let ((_tl5145751651_ (##cdr _e5145551644_))
                                (_hd5145651648_ (##car _e5145551644_)))
                            (if (gx#stx-null? _tl5145751651_)
                                (___kont5319753198_
                                 _hd5145651648_
                                 _hd5145351638_
                                 _hd5145051628_
                                 _hd5144351604_)
                                (_g5143351486_))))
                        (_g5143351486_))))
                (_g5143351486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5143351486_))
                                            (if (gx#stx-pair? _tl5144751617_)
                                                (let ((_e5147251523_
                                                       (gx#syntax-e
                                                        _tl5144751617_)))
                                                  (let ((_tl5147451530_
                                                         (##cdr _e5147251523_))
                                                        (_hd5147351527_
                                                         (##car _e5147251523_)))
                                                    (if (gx#stx-pair?
                                                         _tl5147451530_)
                                                        (let ((_e5147551533_
                                                               (gx#syntax-e
                                                                _tl5147451530_)))
                                                          (let ((_tl5147751540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5147551533_))
                        (_hd5147651537_ (##car _e5147551533_)))
                    (if (gx#stx-pair? _tl5147751540_)
                        (let ((_e5147851543_ (gx#syntax-e _tl5147751540_)))
                          (let ((_tl5148051550_ (##cdr _e5147851543_))
                                (_hd5147951547_ (##car _e5147851543_)))
                            (if (gx#stx-null? _tl5148051550_)
                                (___kont5319953200_
                                 _hd5147951547_
                                 _hd5147651537_
                                 _hd5147351527_
                                 _hd5144651614_
                                 _hd5144351604_)
                                (_g5143351486_))))
                        (_g5143351486_))))
                (_g5143351486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5143351486_))))
                                      (if (gx#stx-pair? _tl5144751617_)
                                          (let ((_e5147251523_
                                                 (gx#syntax-e _tl5144751617_)))
                                            (let ((_tl5147451530_
                                                   (##cdr _e5147251523_))
                                                  (_hd5147351527_
                                                   (##car _e5147251523_)))
                                              (if (gx#stx-pair? _tl5147451530_)
                                                  (let ((_e5147551533_
                                                         (gx#syntax-e
                                                          _tl5147451530_)))
                                                    (let ((_tl5147751540_
                                                           (##cdr _e5147551533_))
                                                          (_hd5147651537_
                                                           (##car _e5147551533_)))
                                                      (if (gx#stx-pair?
                                                           _tl5147751540_)
                                                          (let ((_e5147851543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5147751540_)))
                    (let ((_tl5148051550_ (##cdr _e5147851543_))
                          (_hd5147951547_ (##car _e5147851543_)))
                      (if (gx#stx-null? _tl5148051550_)
                          (___kont5319953200_
                           _hd5147951547_
                           _hd5147651537_
                           _hd5147351527_
                           _hd5144651614_
                           _hd5144351604_)
                          (_g5143351486_))))
                  (_g5143351486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5143351486_))))
                                          (_g5143351486_)))))
                              (_g5143351486_))))
                      (_g5143351486_))))
              (_g5143351486_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx51686_)
      (let* ((_g5169051704_
              (lambda (_g5169151700_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5169151700_)))
             (_g5168951745_
              (lambda (_g5169151708_)
                (if (gx#stx-pair? _g5169151708_)
                    (let ((_e5169351711_ (gx#syntax-e _g5169151708_)))
                      (let ((_hd5169451715_ (##car _e5169351711_))
                            (_tl5169551718_ (##cdr _e5169351711_)))
                        (if (gx#stx-pair? _tl5169551718_)
                            (let ((_e5169651721_ (gx#syntax-e _tl5169551718_)))
                              (let ((_hd5169751725_ (##car _e5169651721_))
                                    (_tl5169851728_ (##cdr _e5169651721_)))
                                (if (gx#stx-null? _tl5169851728_)
                                    ((lambda (_L51731_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51731_ '()))
                                                   '())))
                                     _hd5169751725_)
                                    (_g5169051704_ _g5169151708_))))
                            (_g5169051704_ _g5169151708_))))
                    (_g5169051704_ _g5169151708_)))))
        (_g5168951745_ _$stx51686_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx51749_)
      (let* ((_g5175351767_
              (lambda (_g5175451763_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5175451763_)))
             (_g5175251808_
              (lambda (_g5175451771_)
                (if (gx#stx-pair? _g5175451771_)
                    (let ((_e5175651774_ (gx#syntax-e _g5175451771_)))
                      (let ((_hd5175751778_ (##car _e5175651774_))
                            (_tl5175851781_ (##cdr _e5175651774_)))
                        (if (gx#stx-pair? _tl5175851781_)
                            (let ((_e5175951784_ (gx#syntax-e _tl5175851781_)))
                              (let ((_hd5176051788_ (##car _e5175951784_))
                                    (_tl5176151791_ (##cdr _e5175951784_)))
                                (if (gx#stx-null? _tl5176151791_)
                                    ((lambda (_L51794_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51794_ '()))
                                                   '())))
                                     _hd5176051788_)
                                    (_g5175351767_ _g5175451771_))))
                            (_g5175351767_ _g5175451771_))))
                    (_g5175351767_ _g5175451771_)))))
        (_g5175251808_ _$stx51749_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx51812_)
      (let* ((___stx5328653287_ _$stx51812_)
             (_g5181751850_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5328653287_))))
        (let ((___kont5328953290_
               (lambda (_L51952_ _L51954_ _L51955_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51955_ '()))
                             (cons _L51954_ (cons _L51952_ '()))))))
              (___kont5329153292_
               (lambda (_L51887_ _L51889_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51889_ '()))
                             (cons _L51887_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5328653287_)
              (let ((_e5182251912_ (gx#syntax-e ___stx5328653287_)))
                (let ((_tl5182451919_ (##cdr _e5182251912_))
                      (_hd5182351916_ (##car _e5182251912_)))
                  (if (gx#stx-pair? _tl5182451919_)
                      (let ((_e5182551922_ (gx#syntax-e _tl5182451919_)))
                        (let ((_tl5182751929_ (##cdr _e5182551922_))
                              (_hd5182651926_ (##car _e5182551922_)))
                          (if (gx#stx-pair? _tl5182751929_)
                              (let ((_e5182851932_
                                     (gx#syntax-e _tl5182751929_)))
                                (let ((_tl5183051939_ (##cdr _e5182851932_))
                                      (_hd5182951936_ (##car _e5182851932_)))
                                  (if (gx#stx-pair? _tl5183051939_)
                                      (let ((_e5183151942_
                                             (gx#syntax-e _tl5183051939_)))
                                        (let ((_tl5183351949_
                                               (##cdr _e5183151942_))
                                              (_hd5183251946_
                                               (##car _e5183151942_)))
                                          (if (gx#stx-null? _tl5183351949_)
                                              (___kont5328953290_
                                               _hd5183251946_
                                               _hd5182951936_
                                               _hd5182651926_)
                                              (_g5181751850_))))
                                      (if (gx#stx-null? _tl5183051939_)
                                          (___kont5329153292_
                                           _hd5182951936_
                                           _hd5182651926_)
                                          (_g5181751850_)))))
                              (_g5181751850_))))
                      (_g5181751850_))))
              (_g5181751850_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx51977_)
      (let* ((___stx5334253343_ _$stx51977_)
             (_g5198252015_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5334253343_))))
        (let ((___kont5334553346_
               (lambda (_L52117_ _L52119_ _L52120_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52120_ '()))
                             (cons _L52119_ (cons _L52117_ '()))))))
              (___kont5334753348_
               (lambda (_L52052_ _L52054_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52054_ '()))
                             (cons _L52052_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5334253343_)
              (let ((_e5198752077_ (gx#syntax-e ___stx5334253343_)))
                (let ((_tl5198952084_ (##cdr _e5198752077_))
                      (_hd5198852081_ (##car _e5198752077_)))
                  (if (gx#stx-pair? _tl5198952084_)
                      (let ((_e5199052087_ (gx#syntax-e _tl5198952084_)))
                        (let ((_tl5199252094_ (##cdr _e5199052087_))
                              (_hd5199152091_ (##car _e5199052087_)))
                          (if (gx#stx-pair? _tl5199252094_)
                              (let ((_e5199352097_
                                     (gx#syntax-e _tl5199252094_)))
                                (let ((_tl5199552104_ (##cdr _e5199352097_))
                                      (_hd5199452101_ (##car _e5199352097_)))
                                  (if (gx#stx-pair? _tl5199552104_)
                                      (let ((_e5199652107_
                                             (gx#syntax-e _tl5199552104_)))
                                        (let ((_tl5199852114_
                                               (##cdr _e5199652107_))
                                              (_hd5199752111_
                                               (##car _e5199652107_)))
                                          (if (gx#stx-null? _tl5199852114_)
                                              (___kont5334553346_
                                               _hd5199752111_
                                               _hd5199452101_
                                               _hd5199152091_)
                                              (_g5198252015_))))
                                      (if (gx#stx-null? _tl5199552104_)
                                          (___kont5334753348_
                                           _hd5199452101_
                                           _hd5199152091_)
                                          (_g5198252015_)))))
                              (_g5198252015_))))
                      (_g5198252015_))))
              (_g5198252015_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx52142_)
      (let* ((___stx5339853399_ _$stx52142_)
             (_g5214852189_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5339853399_))))
        (let ((___kont5340153402_
               (lambda (_L52337_ _L52339_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L52339_ '()))
                                   (cons '#f
                                         (cons _L52337_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L52337_ '()))
                                                     '()))))))))
              (___kont5340353404_
               (lambda (_L52269_ _L52271_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L52271_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L52269_ '()))
                                         '()))))))
              (___kont5340553406_
               (lambda (_L52216_ _L52218_)
                 (cons _L52218_ (cons _L52216_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5339853399_)
              (let ((_e5215252293_ (gx#syntax-e ___stx5339853399_)))
                (let ((_tl5215452300_ (##cdr _e5215252293_))
                      (_hd5215352297_ (##car _e5215252293_)))
                  (if (gx#stx-pair? _tl5215452300_)
                      (let ((_e5215552303_ (gx#syntax-e _tl5215452300_)))
                        (let ((_tl5215752310_ (##cdr _e5215552303_))
                              (_hd5215652307_ (##car _e5215552303_)))
                          (if (gx#stx-pair? _tl5215752310_)
                              (let ((_e5215852313_
                                     (gx#syntax-e _tl5215752310_)))
                                (let ((_tl5216052320_ (##cdr _e5215852313_))
                                      (_hd5215952317_ (##car _e5215852313_)))
                                  (if (gx#stx-datum? _hd5215952317_)
                                      (let ((_e5216152323_
                                             (gx#stx-e _hd5215952317_)))
                                        (if (equal? _e5216152323_ 'inline:)
                                            (if (gx#stx-pair? _tl5216052320_)
                                                (let ((_e5216252327_
                                                       (gx#syntax-e
                                                        _tl5216052320_)))
                                                  (let ((_tl5216452334_
                                                         (##cdr _e5216252327_))
                                                        (_hd5216352331_
                                                         (##car _e5216252327_)))
                                                    (if (gx#stx-null?
                                                         _tl5216452334_)
                                                        (___kont5340153402_
                                                         _hd5216352331_
                                                         _hd5215652307_)
                                                        (_g5214852189_))))
                                                (if (gx#stx-null?
                                                     _tl5216052320_)
                                                    (___kont5340353404_
                                                     _hd5215952317_
                                                     _hd5215652307_)
                                                    (_g5214852189_)))
                                            (if (gx#stx-null? _tl5216052320_)
                                                (___kont5340353404_
                                                 _hd5215952317_
                                                 _hd5215652307_)
                                                (_g5214852189_))))
                                      (if (gx#stx-null? _tl5216052320_)
                                          (___kont5340353404_
                                           _hd5215952317_
                                           _hd5215652307_)
                                          (_g5214852189_)))))
                              (if (gx#stx-null? _tl5215752310_)
                                  (___kont5340553406_
                                   _hd5215652307_
                                   _hd5215352297_)
                                  (_g5214852189_)))))
                      (_g5214852189_))))
              (_g5214852189_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx52361_)
      (let* ((_g5236552394_
              (lambda (_g5236652390_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5236652390_)))
             (_g5236452494_
              (lambda (_g5236652398_)
                (if (gx#stx-pair? _g5236652398_)
                    (let ((_e5236952401_ (gx#syntax-e _g5236652398_)))
                      (let ((_hd5237052405_ (##car _e5236952401_))
                            (_tl5237152408_ (##cdr _e5236952401_)))
                        (if (gx#stx-pair/null? _tl5237152408_)
                            (let ((_g53533_
                                   (gx#syntax-split-splice _tl5237152408_ '0)))
                              (begin
                                (let ((_g53534_
                                       (if (##values? _g53533_)
                                           (##vector-length _g53533_)
                                           1)))
                                  (if (not (##fx= _g53534_ 2))
                                      (error "Context expects 2 values"
                                             _g53534_)))
                                (let ((_target5237252411_
                                       (##vector-ref _g53533_ 0))
                                      (_tl5237452414_
                                       (##vector-ref _g53533_ 1)))
                                  (if (gx#stx-null? _tl5237452414_)
                                      (letrec ((_loop5237552417_
                                                (lambda (_hd5237352421_
                                                         _dispatch5237952424_
                                                         _arity5238052426_)
                                                  (if (gx#stx-pair?
                                                       _hd5237352421_)
                                                      (let ((_e5237652429_
                                                             (gx#syntax-e
                                                              _hd5237352421_)))
                                                        (let ((_lp-hd5237752433_
                                                               (##car _e5237652429_))
                                                              (_lp-tl5237852436_
                                                               (##cdr _e5237652429_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5237752433_)
                                                              (let ((_e5238352439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5237752433_)))
                        (let ((_hd5238452443_ (##car _e5238352439_))
                              (_tl5238552446_ (##cdr _e5238352439_)))
                          (if (gx#stx-pair? _tl5238552446_)
                              (let ((_e5238652449_
                                     (gx#syntax-e _tl5238552446_)))
                                (let ((_hd5238752453_ (##car _e5238652449_))
                                      (_tl5238852456_ (##cdr _e5238652449_)))
                                  (if (gx#stx-null? _tl5238852456_)
                                      (_loop5237552417_
                                       _lp-tl5237852436_
                                       (cons _hd5238752453_
                                             _dispatch5237952424_)
                                       (cons _hd5238452443_ _arity5238052426_))
                                      (_g5236552394_ _g5236652398_))))
                              (_g5236552394_ _g5236652398_))))
                      (_g5236552394_ _g5236652398_))))
              (let ((_dispatch5238152459_ (reverse _dispatch5237952424_))
                    (_arity5238252462_ (reverse _arity5238052426_)))
                ((lambda (_L52465_ _L52467_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L52465_
                                              _L52467_)
                                             (foldr2 (lambda (_g5248252486_
                                                              _g5248352489_
                                                              _g5248452491_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5248352489_ (cons _g5248252486_ '())))
                     _g5248452491_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L52465_
                                                     _L52467_)))
                                     '()))))
                 _dispatch5238152459_
                 _arity5238252462_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5237552417_
                                         _target5237252411_
                                         '()
                                         '()))
                                      (_g5236552394_ _g5236652398_)))))
                            (_g5236552394_ _g5236652398_))))
                    (_g5236552394_ _g5236652398_)))))
        (_g5236452494_ _$stx52361_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx52499_)
      (let* ((_g5250352521_
              (lambda (_g5250452517_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5250452517_)))
             (_g5250252576_
              (lambda (_g5250452525_)
                (if (gx#stx-pair? _g5250452525_)
                    (let ((_e5250752528_ (gx#syntax-e _g5250452525_)))
                      (let ((_hd5250852532_ (##car _e5250752528_))
                            (_tl5250952535_ (##cdr _e5250752528_)))
                        (if (gx#stx-pair? _tl5250952535_)
                            (let ((_e5251052538_ (gx#syntax-e _tl5250952535_)))
                              (let ((_hd5251152542_ (##car _e5251052538_))
                                    (_tl5251252545_ (##cdr _e5251052538_)))
                                (if (gx#stx-pair? _tl5251252545_)
                                    (let ((_e5251352548_
                                           (gx#syntax-e _tl5251252545_)))
                                      (let ((_hd5251452552_
                                             (##car _e5251352548_))
                                            (_tl5251552555_
                                             (##cdr _e5251352548_)))
                                        (if (gx#stx-null? _tl5251552555_)
                                            ((lambda (_L52558_ _L52560_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L52560_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L52558_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5251452552_
                                             _hd5251152542_)
                                            (_g5250352521_ _g5250452525_))))
                                    (_g5250352521_ _g5250452525_))))
                            (_g5250352521_ _g5250452525_))))
                    (_g5250352521_ _g5250452525_)))))
        (_g5250252576_ _$stx52499_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx52580_)
      (let* ((_g5258452602_
              (lambda (_g5258552598_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5258552598_)))
             (_g5258352657_
              (lambda (_g5258552606_)
                (if (gx#stx-pair? _g5258552606_)
                    (let ((_e5258852609_ (gx#syntax-e _g5258552606_)))
                      (let ((_hd5258952613_ (##car _e5258852609_))
                            (_tl5259052616_ (##cdr _e5258852609_)))
                        (if (gx#stx-pair? _tl5259052616_)
                            (let ((_e5259152619_ (gx#syntax-e _tl5259052616_)))
                              (let ((_hd5259252623_ (##car _e5259152619_))
                                    (_tl5259352626_ (##cdr _e5259152619_)))
                                (if (gx#stx-pair? _tl5259352626_)
                                    (let ((_e5259452629_
                                           (gx#syntax-e _tl5259352626_)))
                                      (let ((_hd5259552633_
                                             (##car _e5259452629_))
                                            (_tl5259652636_
                                             (##cdr _e5259452629_)))
                                        (if (gx#stx-null? _tl5259652636_)
                                            ((lambda (_L52639_ _L52641_)
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
                               (cons _L52641_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L52639_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5259552633_
                                             _hd5259252623_)
                                            (_g5258452602_ _g5258552606_))))
                                    (_g5258452602_ _g5258552606_))))
                            (_g5258452602_ _g5258552606_))))
                    (_g5258452602_ _g5258552606_)))))
        (_g5258352657_ _$stx52580_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx52661_)
      (let* ((___stx5347653477_ _$stx52661_)
             (_g5266652701_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5347653477_))))
        (let ((___kont5347953480_
               (lambda (_L52823_ _L52825_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L52825_
                             (cons (cons (gx#datum->syntax__0 '#f '@lambda)
                                         (cons _L52823_ '()))
                                   '())))))
              (___kont5348153482_
               (lambda (_L52758_ _L52760_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L52760_
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          '@case-lambda)
                                         (foldr1 (lambda (_g5277752780_
                                                          _g5277852783_)
                                                   (cons (cons _g5277752780_
                                                               (cons '#f '()))
                                                         _g5277852783_))
                                                 '()
                                                 _L52758_))
                                   '()))))))
          (let ((___match5352553526_
                 (lambda (_e5268152708_
                          _hd5268252712_
                          _tl5268352715_
                          _e5268452718_
                          _hd5268552722_
                          _tl5268652725_
                          ___splice5348353484_
                          _target5268752728_
                          _tl5268952731_)
                   (letrec ((_loop5269052734_
                             (lambda (_hd5268852738_ _arity5269452741_)
                               (if (gx#stx-pair? _hd5268852738_)
                                   (let ((_e5269152744_
                                          (gx#syntax-e _hd5268852738_)))
                                     (let ((_lp-tl5269352751_
                                            (##cdr _e5269152744_))
                                           (_lp-hd5269252748_
                                            (##car _e5269152744_)))
                                       (_loop5269052734_
                                        _lp-tl5269352751_
                                        (cons _lp-hd5269252748_
                                              _arity5269452741_))))
                                   (let ((_arity5269552754_
                                          (reverse _arity5269452741_)))
                                     (___kont5348153482_
                                      _arity5269552754_
                                      _hd5268552722_))))))
                     (_loop5269052734_ _target5268752728_ '())))))
            (if (gx#stx-pair? ___stx5347653477_)
                (let ((_e5267052793_ (gx#syntax-e ___stx5347653477_)))
                  (let ((_tl5267252800_ (##cdr _e5267052793_))
                        (_hd5267152797_ (##car _e5267052793_)))
                    (if (gx#stx-pair? _tl5267252800_)
                        (let ((_e5267352803_ (gx#syntax-e _tl5267252800_)))
                          (let ((_tl5267552810_ (##cdr _e5267352803_))
                                (_hd5267452807_ (##car _e5267352803_)))
                            (if (gx#stx-pair? _tl5267552810_)
                                (let ((_e5267652813_
                                       (gx#syntax-e _tl5267552810_)))
                                  (let ((_tl5267852820_ (##cdr _e5267652813_))
                                        (_hd5267752817_ (##car _e5267652813_)))
                                    (if (gx#stx-null? _tl5267852820_)
                                        (___kont5347953480_
                                         _hd5267752817_
                                         _hd5267452807_)
                                        (if (gx#stx-pair/null? _tl5267552810_)
                                            (let ((___splice5348353484_
                                                   (gx#syntax-split-splice
                                                    _tl5267552810_
                                                    '0)))
                                              (let ((_tl5268952731_
                                                     (##vector-ref
                                                      ___splice5348353484_
                                                      '1))
                                                    (_target5268752728_
                                                     (##vector-ref
                                                      ___splice5348353484_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl5268952731_)
                                                    (___match5352553526_
                                                     _e5267052793_
                                                     _hd5267152797_
                                                     _tl5267252800_
                                                     _e5267352803_
                                                     _hd5267452807_
                                                     _tl5267552810_
                                                     ___splice5348353484_
                                                     _target5268752728_
                                                     _tl5268952731_)
                                                    (_g5266652701_))))
                                            (_g5266652701_)))))
                                (if (gx#stx-pair/null? _tl5267552810_)
                                    (let ((___splice5348353484_
                                           (gx#syntax-split-splice
                                            _tl5267552810_
                                            '0)))
                                      (let ((_tl5268952731_
                                             (##vector-ref
                                              ___splice5348353484_
                                              '1))
                                            (_target5268752728_
                                             (##vector-ref
                                              ___splice5348353484_
                                              '0)))
                                        (if (gx#stx-null? _tl5268952731_)
                                            (___match5352553526_
                                             _e5267052793_
                                             _hd5267152797_
                                             _tl5267252800_
                                             _e5267352803_
                                             _hd5267452807_
                                             _tl5267552810_
                                             ___splice5348353484_
                                             _target5268752728_
                                             _tl5268952731_)
                                            (_g5266652701_))))
                                    (_g5266652701_)))))
                        (_g5266652701_))))
                (_g5266652701_)))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx52845_)
      (let* ((_g5284952884_
              (lambda (_g5285052880_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5285052880_)))
             (_g5284853012_
              (lambda (_g5285052888_)
                (if (gx#stx-pair? _g5285052888_)
                    (let ((_e5285352891_ (gx#syntax-e _g5285052888_)))
                      (let ((_hd5285452895_ (##car _e5285352891_))
                            (_tl5285552898_ (##cdr _e5285352891_)))
                        (if (gx#stx-pair/null? _tl5285552898_)
                            (let ((_g53535_
                                   (gx#syntax-split-splice _tl5285552898_ '0)))
                              (begin
                                (let ((_g53536_
                                       (if (##values? _g53535_)
                                           (##vector-length _g53535_)
                                           1)))
                                  (if (not (##fx= _g53536_ 2))
                                      (error "Context expects 2 values"
                                             _g53536_)))
                                (let ((_target5285652901_
                                       (##vector-ref _g53535_ 0))
                                      (_tl5285852904_
                                       (##vector-ref _g53535_ 1)))
                                  (if (gx#stx-null? _tl5285852904_)
                                      (letrec ((_loop5285952907_
                                                (lambda (_hd5285752911_
                                                         _arity5286352914_
                                                         _prim5286452916_)
                                                  (if (gx#stx-pair?
                                                       _hd5285752911_)
                                                      (let ((_e5286052919_
                                                             (gx#syntax-e
                                                              _hd5285752911_)))
                                                        (let ((_lp-hd5286152923_
                                                               (##car _e5286052919_))
                                                              (_lp-tl5286252926_
                                                               (##cdr _e5286052919_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5286152923_)
                                                              (let ((_e5286752929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5286152923_)))
                        (let ((_hd5286852933_ (##car _e5286752929_))
                              (_tl5286952936_ (##cdr _e5286752929_)))
                          (if (gx#stx-pair/null? _tl5286952936_)
                              (let ((_g53537_
                                     (gx#syntax-split-splice
                                      _tl5286952936_
                                      '0)))
                                (begin
                                  (let ((_g53538_
                                         (if (##values? _g53537_)
                                             (##vector-length _g53537_)
                                             1)))
                                    (if (not (##fx= _g53538_ 2))
                                        (error "Context expects 2 values"
                                               _g53538_)))
                                  (let ((_target5287052939_
                                         (##vector-ref _g53537_ 0))
                                        (_tl5287252942_
                                         (##vector-ref _g53537_ 1)))
                                    (if (gx#stx-null? _tl5287252942_)
                                        (letrec ((_loop5287352945_
                                                  (lambda (_hd5287152949_
                                                           _arity5287752952_)
                                                    (if (gx#stx-pair?
                                                         _hd5287152949_)
                                                        (let ((_e5287452955_
                                                               (gx#syntax-e
                                                                _hd5287152949_)))
                                                          (let ((_lp-hd5287552959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e5287452955_))
                        (_lp-tl5287652962_ (##cdr _e5287452955_)))
                    (_loop5287352945_
                     _lp-tl5287652962_
                     (cons _lp-hd5287552959_ _arity5287752952_))))
                (let ((_arity5287852965_ (reverse _arity5287752952_)))
                  (_loop5285952907_
                   _lp-tl5286252926_
                   (cons _arity5287852965_ _arity5286352914_)
                   (cons _hd5286852933_ _prim5286452916_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop5287352945_
                                           _target5287052939_
                                           '()))
                                        (_g5284952884_ _g5285052888_)))))
                              (_g5284952884_ _g5285052888_))))
                      (_g5284952884_ _g5285052888_))))
              (let ((_arity5286552969_ (reverse _arity5286352914_))
                    (_prim5286652972_ (reverse _prim5286452916_)))
                ((lambda (_L52975_ _L52977_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L52975_ _L52977_)
                           (foldr2 (lambda (_g5299252998_
                                            _g5299353001_
                                            _g5299453003_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-primitive)
                                                 (cons _g5299353001_
                                                       (foldr1 (lambda (_g5299553006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5299653009_)
                         (cons _g5299553006_ _g5299653009_))
                       '()
                       _g5299252998_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g5299453003_))
                                   '()
                                   _L52975_
                                   _L52977_))))
                 _arity5286552969_
                 _prim5286652972_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5285952907_
                                         _target5285652901_
                                         '()
                                         '()))
                                      (_g5284952884_ _g5285052888_)))))
                            (_g5284952884_ _g5285052888_))))
                    (_g5284952884_ _g5285052888_)))))
        (_g5284853012_ _$stx52845_)))))
