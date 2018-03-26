(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx48794_)
      (let* ((_g4879848816_
              (lambda (_g4879948812_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4879948812_)))
             (_g4879748871_
              (lambda (_g4879948820_)
                (if (gx#stx-pair? _g4879948820_)
                    (let ((_e4880248823_ (gx#syntax-e _g4879948820_)))
                      (let ((_hd4880348827_ (##car _e4880248823_))
                            (_tl4880448830_ (##cdr _e4880248823_)))
                        (if (gx#stx-pair? _tl4880448830_)
                            (let ((_e4880548833_ (gx#syntax-e _tl4880448830_)))
                              (let ((_hd4880648837_ (##car _e4880548833_))
                                    (_tl4880748840_ (##cdr _e4880548833_)))
                                (if (gx#stx-pair? _tl4880748840_)
                                    (let ((_e4880848843_
                                           (gx#syntax-e _tl4880748840_)))
                                      (let ((_hd4880948847_
                                             (##car _e4880848843_))
                                            (_tl4881048850_
                                             (##cdr _e4880848843_)))
                                        (if (gx#stx-null? _tl4881048850_)
                                            ((lambda (_L48853_ _L48855_)
                                               (if (gx#identifier? _L48855_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L48855_ '()))
                       (cons _L48853_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4879848816_
                                                    _g4879948820_)))
                                             _hd4880948847_
                                             _hd4880648837_)
                                            (_g4879848816_ _g4879948820_))))
                                    (_g4879848816_ _g4879948820_))))
                            (_g4879848816_ _g4879948820_))))
                    (_g4879848816_ _g4879948820_)))))
        (_g4879748871_ _$stx48794_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx48875_)
      (let* ((_g4887948908_
              (lambda (_g4888048904_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4888048904_)))
             (_g4887849008_
              (lambda (_g4888048912_)
                (if (gx#stx-pair? _g4888048912_)
                    (let ((_e4888348915_ (gx#syntax-e _g4888048912_)))
                      (let ((_hd4888448919_ (##car _e4888348915_))
                            (_tl4888548922_ (##cdr _e4888348915_)))
                        (if (gx#stx-pair/null? _tl4888548922_)
                            (let ((_g51616_
                                   (gx#syntax-split-splice _tl4888548922_ '0)))
                              (begin
                                (let ((_g51617_
                                       (if (##values? _g51616_)
                                           (##vector-length _g51616_)
                                           1)))
                                  (if (not (##fx= _g51617_ 2))
                                      (error "Context expects 2 values"
                                             _g51617_)))
                                (let ((_target4888648925_
                                       (##vector-ref _g51616_ 0))
                                      (_tl4888848928_
                                       (##vector-ref _g51616_ 1)))
                                  (if (gx#stx-null? _tl4888848928_)
                                      (letrec ((_loop4888948931_
                                                (lambda (_hd4888748935_
                                                         _type4889348938_
                                                         _symbol4889448940_)
                                                  (if (gx#stx-pair?
                                                       _hd4888748935_)
                                                      (let ((_e4889048943_
                                                             (gx#syntax-e
                                                              _hd4888748935_)))
                                                        (let ((_lp-hd4889148947_
                                                               (##car _e4889048943_))
                                                              (_lp-tl4889248950_
                                                               (##cdr _e4889048943_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4889148947_)
                                                              (let ((_e4889748953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4889148947_)))
                        (let ((_hd4889848957_ (##car _e4889748953_))
                              (_tl4889948960_ (##cdr _e4889748953_)))
                          (if (gx#stx-pair? _tl4889948960_)
                              (let ((_e4890048963_
                                     (gx#syntax-e _tl4889948960_)))
                                (let ((_hd4890148967_ (##car _e4890048963_))
                                      (_tl4890248970_ (##cdr _e4890048963_)))
                                  (if (gx#stx-null? _tl4890248970_)
                                      (_loop4888948931_
                                       _lp-tl4889248950_
                                       (cons _hd4890148967_ _type4889348938_)
                                       (cons _hd4889848957_
                                             _symbol4889448940_))
                                      (_g4887948908_ _g4888048912_))))
                              (_g4887948908_ _g4888048912_))))
                      (_g4887948908_ _g4888048912_))))
              (let ((_type4889548973_ (reverse _type4889348938_))
                    (_symbol4889648976_ (reverse _symbol4889448940_)))
                ((lambda (_L48979_ _L48981_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L48979_ _L48981_)
                           (foldr2 (lambda (_g4899649000_
                                            _g4899749003_
                                            _g4899849005_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g4899749003_
                                                       (cons _g4899649000_
                                                             '())))
                                           _g4899849005_))
                                   '()
                                   _L48979_
                                   _L48981_))))
                 _type4889548973_
                 _symbol4889648976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4888948931_
                                         _target4888648925_
                                         '()
                                         '()))
                                      (_g4887948908_ _g4888048912_)))))
                            (_g4887948908_ _g4888048912_))))
                    (_g4887948908_ _g4888048912_)))))
        (_g4887849008_ _$stx48875_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx49013_)
      (let* ((___stx5115951160_ _$stx49013_)
             (_g4901849060_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5115951160_))))
        (let ((___kont5116251163_
               (lambda (_L49188_ _L49190_ _L49191_ _L49192_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L49192_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L49191_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L49190_ '()))
                                         (cons _L49188_ '())))))))
              (___kont5116451165_
               (lambda (_L49107_ _L49109_ _L49110_ _L49111_)
                 (cons _L49111_
                       (cons _L49110_
                             (cons _L49109_
                                   (cons _L49107_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5119851199_
                 (lambda (_e4902449138_
                          _hd4902549142_
                          _tl4902649145_
                          _e4902749148_
                          _hd4902849152_
                          _tl4902949155_
                          _e4903049158_
                          _hd4903149162_
                          _tl4903249165_
                          _e4903349168_
                          _hd4903449172_
                          _tl4903549175_
                          _e4903649178_
                          _hd4903749182_
                          _tl4903849185_)
                   (let ((_L49188_ _hd4903749182_)
                         (_L49190_ _hd4903449172_)
                         (_L49191_ _hd4903149162_)
                         (_L49192_ _hd4902849152_))
                     (if (if (gx#identifier? _L49192_)
                             (if (gx#identifier? _L49191_)
                                 (gx#identifier? _L49190_)
                                 '#f)
                             '#f)
                         (___kont5116251163_
                          _L49188_
                          _L49190_
                          _L49191_
                          _L49192_)
                         (_g4901849060_))))))
            (if (gx#stx-pair? ___stx5115951160_)
                (let ((_e4902449138_ (gx#syntax-e ___stx5115951160_)))
                  (let ((_tl4902649145_ (##cdr _e4902449138_))
                        (_hd4902549142_ (##car _e4902449138_)))
                    (if (gx#stx-pair? _tl4902649145_)
                        (let ((_e4902749148_ (gx#syntax-e _tl4902649145_)))
                          (let ((_tl4902949155_ (##cdr _e4902749148_))
                                (_hd4902849152_ (##car _e4902749148_)))
                            (if (gx#stx-pair? _tl4902949155_)
                                (let ((_e4903049158_
                                       (gx#syntax-e _tl4902949155_)))
                                  (let ((_tl4903249165_ (##cdr _e4903049158_))
                                        (_hd4903149162_ (##car _e4903049158_)))
                                    (if (gx#stx-pair? _tl4903249165_)
                                        (let ((_e4903349168_
                                               (gx#syntax-e _tl4903249165_)))
                                          (let ((_tl4903549175_
                                                 (##cdr _e4903349168_))
                                                (_hd4903449172_
                                                 (##car _e4903349168_)))
                                            (if (gx#stx-pair? _tl4903549175_)
                                                (let ((_e4903649178_
                                                       (gx#syntax-e
                                                        _tl4903549175_)))
                                                  (let ((_tl4903849185_
                                                         (##cdr _e4903649178_))
                                                        (_hd4903749182_
                                                         (##car _e4903649178_)))
                                                    (if (gx#stx-null?
                                                         _tl4903849185_)
                                                        (___match5119851199_
                                                         _e4902449138_
                                                         _hd4902549142_
                                                         _tl4902649145_
                                                         _e4902749148_
                                                         _hd4902849152_
                                                         _tl4902949155_
                                                         _e4903049158_
                                                         _hd4903149162_
                                                         _tl4903249165_
                                                         _e4903349168_
                                                         _hd4903449172_
                                                         _tl4903549175_
                                                         _e4903649178_
                                                         _hd4903749182_
                                                         _tl4903849185_)
                                                        (_g4901849060_))))
                                                (if (gx#stx-null?
                                                     _tl4903549175_)
                                                    (___kont5116451165_
                                                     _hd4903449172_
                                                     _hd4903149162_
                                                     _hd4902849152_
                                                     _hd4902549142_)
                                                    (_g4901849060_)))))
                                        (_g4901849060_))))
                                (_g4901849060_))))
                        (_g4901849060_))))
                (_g4901849060_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx49217_)
      (let* ((_g4922149256_
              (lambda (_g4922249252_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4922249252_)))
             (_g4922049375_
              (lambda (_g4922249260_)
                (if (gx#stx-pair? _g4922249260_)
                    (let ((_e4922649263_ (gx#syntax-e _g4922249260_)))
                      (let ((_hd4922749267_ (##car _e4922649263_))
                            (_tl4922849270_ (##cdr _e4922649263_)))
                        (if (gx#stx-pair/null? _tl4922849270_)
                            (let ((_g51618_
                                   (gx#syntax-split-splice _tl4922849270_ '0)))
                              (begin
                                (let ((_g51619_
                                       (if (##values? _g51618_)
                                           (##vector-length _g51618_)
                                           1)))
                                  (if (not (##fx= _g51619_ 2))
                                      (error "Context expects 2 values"
                                             _g51619_)))
                                (let ((_target4922949273_
                                       (##vector-ref _g51618_ 0))
                                      (_tl4923149276_
                                       (##vector-ref _g51618_ 1)))
                                  (if (gx#stx-null? _tl4923149276_)
                                      (letrec ((_loop4923249279_
                                                (lambda (_hd4923049283_
                                                         _symbol4923649286_
                                                         _method4923749288_
                                                         _type-t4923849290_)
                                                  (if (gx#stx-pair?
                                                       _hd4923049283_)
                                                      (let ((_e4923349293_
                                                             (gx#syntax-e
                                                              _hd4923049283_)))
                                                        (let ((_lp-hd4923449297_
                                                               (##car _e4923349293_))
                                                              (_lp-tl4923549300_
                                                               (##cdr _e4923349293_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4923449297_)
                                                              (let ((_e4924249303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4923449297_)))
                        (let ((_hd4924349307_ (##car _e4924249303_))
                              (_tl4924449310_ (##cdr _e4924249303_)))
                          (if (gx#stx-pair? _tl4924449310_)
                              (let ((_e4924549313_
                                     (gx#syntax-e _tl4924449310_)))
                                (let ((_hd4924649317_ (##car _e4924549313_))
                                      (_tl4924749320_ (##cdr _e4924549313_)))
                                  (if (gx#stx-pair? _tl4924749320_)
                                      (let ((_e4924849323_
                                             (gx#syntax-e _tl4924749320_)))
                                        (let ((_hd4924949327_
                                               (##car _e4924849323_))
                                              (_tl4925049330_
                                               (##cdr _e4924849323_)))
                                          (if (gx#stx-null? _tl4925049330_)
                                              (_loop4923249279_
                                               _lp-tl4923549300_
                                               (cons _hd4924949327_
                                                     _symbol4923649286_)
                                               (cons _hd4924649317_
                                                     _method4923749288_)
                                               (cons _hd4924349307_
                                                     _type-t4923849290_))
                                              (_g4922149256_ _g4922249260_))))
                                      (_g4922149256_ _g4922249260_))))
                              (_g4922149256_ _g4922249260_))))
                      (_g4922149256_ _g4922249260_))))
              (let ((_symbol4923949333_ (reverse _symbol4923649286_))
                    (_method4924049336_ (reverse _method4923749288_))
                    (_type-t4924149338_ (reverse _type-t4923849290_)))
                ((lambda (_L49341_ _L49343_ _L49344_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L49341_
                            _L49343_
                            _L49344_)
                           (foldr (lambda (_g4936049365_
                                           _g4936149368_
                                           _g4936249370_
                                           _g4936349372_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g4936249370_
                                                      (cons _g4936149368_
                                                            (cons _g4936049365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g4936349372_))
                                  '()
                                  _L49341_
                                  _L49343_
                                  _L49344_))))
                 _symbol4923949333_
                 _method4924049336_
                 _type-t4924149338_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4923249279_
                                         _target4922949273_
                                         '()
                                         '()
                                         '()))
                                      (_g4922149256_ _g4922249260_)))))
                            (_g4922149256_ _g4922249260_))))
                    (_g4922149256_ _g4922249260_)))))
        (_g4922049375_ _$stx49217_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx49380_)
      (let* ((_g4938449417_
              (lambda (_g4938549413_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4938549413_)))
             (_g4938349531_
              (lambda (_g4938549421_)
                (if (gx#stx-pair? _g4938549421_)
                    (let ((_e4938949424_ (gx#syntax-e _g4938549421_)))
                      (let ((_hd4939049428_ (##car _e4938949424_))
                            (_tl4939149431_ (##cdr _e4938949424_)))
                        (if (gx#stx-pair? _tl4939149431_)
                            (let ((_e4939249434_ (gx#syntax-e _tl4939149431_)))
                              (let ((_hd4939349438_ (##car _e4939249434_))
                                    (_tl4939449441_ (##cdr _e4939249434_)))
                                (if (gx#stx-pair/null? _tl4939449441_)
                                    (let ((_g51620_
                                           (gx#syntax-split-splice
                                            _tl4939449441_
                                            '0)))
                                      (begin
                                        (let ((_g51621_
                                               (if (##values? _g51620_)
                                                   (##vector-length _g51620_)
                                                   1)))
                                          (if (not (##fx= _g51621_ 2))
                                              (error "Context expects 2 values"
                                                     _g51621_)))
                                        (let ((_target4939549444_
                                               (##vector-ref _g51620_ 0))
                                              (_tl4939749447_
                                               (##vector-ref _g51620_ 1)))
                                          (if (gx#stx-null? _tl4939749447_)
                                              (letrec ((_loop4939849450_
                                                        (lambda (_hd4939649454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol4940249457_
                         _method4940349459_)
                  (if (gx#stx-pair? _hd4939649454_)
                      (let ((_e4939949462_ (gx#syntax-e _hd4939649454_)))
                        (let ((_lp-hd4940049466_ (##car _e4939949462_))
                              (_lp-tl4940149469_ (##cdr _e4939949462_)))
                          (if (gx#stx-pair? _lp-hd4940049466_)
                              (let ((_e4940649472_
                                     (gx#syntax-e _lp-hd4940049466_)))
                                (let ((_hd4940749476_ (##car _e4940649472_))
                                      (_tl4940849479_ (##cdr _e4940649472_)))
                                  (if (gx#stx-pair? _tl4940849479_)
                                      (let ((_e4940949482_
                                             (gx#syntax-e _tl4940849479_)))
                                        (let ((_hd4941049486_
                                               (##car _e4940949482_))
                                              (_tl4941149489_
                                               (##cdr _e4940949482_)))
                                          (if (gx#stx-null? _tl4941149489_)
                                              (_loop4939849450_
                                               _lp-tl4940149469_
                                               (cons _hd4941049486_
                                                     _symbol4940249457_)
                                               (cons _hd4940749476_
                                                     _method4940349459_))
                                              (_g4938449417_ _g4938549421_))))
                                      (_g4938449417_ _g4938549421_))))
                              (_g4938449417_ _g4938549421_))))
                      (let ((_symbol4940449492_ (reverse _symbol4940249457_))
                            (_method4940549495_ (reverse _method4940349459_)))
                        ((lambda (_L49498_ _L49500_ _L49501_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L49498_
                                    _L49500_)
                                   (foldr2 (lambda (_g4951949523_
                                                    _g4952049526_
                                                    _g4952149528_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L49501_
                                                               (cons _g4952049526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g4951949523_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4952149528_))
                                           '()
                                           _L49498_
                                           _L49500_))))
                         _symbol4940449492_
                         _method4940549495_
                         _hd4939349438_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4939849450_
                                                 _target4939549444_
                                                 '()
                                                 '()))
                                              (_g4938449417_ _g4938549421_)))))
                                    (_g4938449417_ _g4938549421_))))
                            (_g4938449417_ _g4938549421_))))
                    (_g4938449417_ _g4938549421_)))))
        (_g4938349531_ _$stx49380_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx49536_)
      (let* ((_g4954049554_
              (lambda (_g4954149550_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4954149550_)))
             (_g4953949595_
              (lambda (_g4954149558_)
                (if (gx#stx-pair? _g4954149558_)
                    (let ((_e4954349561_ (gx#syntax-e _g4954149558_)))
                      (let ((_hd4954449565_ (##car _e4954349561_))
                            (_tl4954549568_ (##cdr _e4954349561_)))
                        (if (gx#stx-pair? _tl4954549568_)
                            (let ((_e4954649571_ (gx#syntax-e _tl4954549568_)))
                              (let ((_hd4954749575_ (##car _e4954649571_))
                                    (_tl4954849578_ (##cdr _e4954649571_)))
                                (if (gx#stx-null? _tl4954849578_)
                                    ((lambda (_L49581_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L49581_ '()))
                                                   '())))
                                     _hd4954749575_)
                                    (_g4954049554_ _g4954149558_))))
                            (_g4954049554_ _g4954149558_))))
                    (_g4954049554_ _g4954149558_)))))
        (_g4953949595_ _$stx49536_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx49599_)
      (let* ((___stx5122751228_ _$stx49599_)
             (_g4960549671_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5122751228_))))
        (let ((___kont5123051231_
               (lambda (_L49893_ _L49895_ _L49896_ _L49897_ _L49898_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L49898_
                             (cons _L49897_
                                   (cons _L49896_
                                         (cons _L49895_
                                               (cons _L49893_ '()))))))))
              (___kont5123251233_
               (lambda (_L49803_ _L49805_ _L49806_ _L49807_)
                 (cons _L49807_
                       (cons _L49806_
                             (cons _L49805_
                                   (cons _L49803_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5123451235_
               (lambda (_L49728_ _L49730_ _L49731_ _L49732_ _L49733_)
                 (cons _L49733_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L49731_
                                   (cons _L49730_
                                         (cons _L49728_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5122751228_)
              (let ((_e4961249833_ (gx#syntax-e ___stx5122751228_)))
                (let ((_tl4961449840_ (##cdr _e4961249833_))
                      (_hd4961349837_ (##car _e4961249833_)))
                  (if (gx#stx-pair? _tl4961449840_)
                      (let ((_e4961549843_ (gx#syntax-e _tl4961449840_)))
                        (let ((_tl4961749850_ (##cdr _e4961549843_))
                              (_hd4961649847_ (##car _e4961549843_)))
                          (if (gx#stx-pair? _tl4961749850_)
                              (let ((_e4961849853_
                                     (gx#syntax-e _tl4961749850_)))
                                (let ((_tl4962049860_ (##cdr _e4961849853_))
                                      (_hd4961949857_ (##car _e4961849853_)))
                                  (if (gx#stx-pair? _tl4962049860_)
                                      (let ((_e4962149863_
                                             (gx#syntax-e _tl4962049860_)))
                                        (let ((_tl4962349870_
                                               (##cdr _e4962149863_))
                                              (_hd4962249867_
                                               (##car _e4962149863_)))
                                          (if (gx#stx-pair? _tl4962349870_)
                                              (let ((_e4962449873_
                                                     (gx#syntax-e
                                                      _tl4962349870_)))
                                                (let ((_tl4962649880_
                                                       (##cdr _e4962449873_))
                                                      (_hd4962549877_
                                                       (##car _e4962449873_)))
                                                  (if (gx#stx-pair?
                                                       _tl4962649880_)
                                                      (let ((_e4962749883_
                                                             (gx#syntax-e
                                                              _tl4962649880_)))
                                                        (let ((_tl4962949890_
                                                               (##cdr _e4962749883_))
                                                              (_hd4962849887_
                                                               (##car _e4962749883_)))
                                                          (if (gx#stx-null?
                                                               _tl4962949890_)
                                                              (___kont5123051231_
                                                               _hd4962849887_
                                                               _hd4962549877_
                                                               _hd4962249867_
                                                               _hd4961949857_
                                                               _hd4961649847_)
                                                              (_g4960549671_))))
                                                      (if (gx#stx-null?
                                                           _tl4962649880_)
                                                          (___kont5123451235_
                                                           _hd4962549877_
                                                           _hd4962249867_
                                                           _hd4961949857_
                                                           _hd4961649847_
                                                           _hd4961349837_)
                                                          (_g4960549671_)))))
                                              (if (gx#stx-null? _tl4962349870_)
                                                  (___kont5123251233_
                                                   _hd4962249867_
                                                   _hd4961949857_
                                                   _hd4961649847_
                                                   _hd4961349837_)
                                                  (_g4960549671_)))))
                                      (_g4960549671_))))
                              (_g4960549671_))))
                      (_g4960549671_))))
              (_g4960549671_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx49926_)
      (let* ((___stx5133551336_ _$stx49926_)
             (_g4993149984_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5133551336_))))
        (let ((___kont5133851339_
               (lambda (_L50152_ _L50154_ _L50155_ _L50156_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50156_ '()))
                             (cons '#f
                                   (cons _L50155_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50154_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50152_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5134051341_
               (lambda (_L50051_ _L50053_ _L50054_ _L50055_ _L50056_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50055_ '()))
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
                                     (cons _L50053_ '()))
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
                                                     (cons _L50056_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50055_ '()))
                                                     (cons _L50054_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L50051_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5133551336_)
              (let ((_e4993750088_ (gx#syntax-e ___stx5133551336_)))
                (let ((_tl4993950095_ (##cdr _e4993750088_))
                      (_hd4993850092_ (##car _e4993750088_)))
                  (if (gx#stx-pair? _tl4993950095_)
                      (let ((_e4994050098_ (gx#syntax-e _tl4993950095_)))
                        (let ((_tl4994250105_ (##cdr _e4994050098_))
                              (_hd4994150102_ (##car _e4994050098_)))
                          (if (gx#stx-pair? _tl4994250105_)
                              (let ((_e4994350108_
                                     (gx#syntax-e _tl4994250105_)))
                                (let ((_tl4994550115_ (##cdr _e4994350108_))
                                      (_hd4994450112_ (##car _e4994350108_)))
                                  (if (gx#stx-datum? _hd4994450112_)
                                      (let ((_e4994650118_
                                             (gx#stx-e _hd4994450112_)))
                                        (if (equal? _e4994650118_ '#f)
                                            (if (gx#stx-pair? _tl4994550115_)
                                                (let ((_e4994750122_
                                                       (gx#syntax-e
                                                        _tl4994550115_)))
                                                  (let ((_tl4994950129_
                                                         (##cdr _e4994750122_))
                                                        (_hd4994850126_
                                                         (##car _e4994750122_)))
                                                    (if (gx#stx-pair?
                                                         _tl4994950129_)
                                                        (let ((_e4995050132_
                                                               (gx#syntax-e
                                                                _tl4994950129_)))
                                                          (let ((_tl4995250139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4995050132_))
                        (_hd4995150136_ (##car _e4995050132_)))
                    (if (gx#stx-pair? _tl4995250139_)
                        (let ((_e4995350142_ (gx#syntax-e _tl4995250139_)))
                          (let ((_tl4995550149_ (##cdr _e4995350142_))
                                (_hd4995450146_ (##car _e4995350142_)))
                            (if (gx#stx-null? _tl4995550149_)
                                (___kont5133851339_
                                 _hd4995450146_
                                 _hd4995150136_
                                 _hd4994850126_
                                 _hd4994150102_)
                                (_g4993149984_))))
                        (_g4993149984_))))
                (_g4993149984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4993149984_))
                                            (if (gx#stx-pair? _tl4994550115_)
                                                (let ((_e4997050021_
                                                       (gx#syntax-e
                                                        _tl4994550115_)))
                                                  (let ((_tl4997250028_
                                                         (##cdr _e4997050021_))
                                                        (_hd4997150025_
                                                         (##car _e4997050021_)))
                                                    (if (gx#stx-pair?
                                                         _tl4997250028_)
                                                        (let ((_e4997350031_
                                                               (gx#syntax-e
                                                                _tl4997250028_)))
                                                          (let ((_tl4997550038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4997350031_))
                        (_hd4997450035_ (##car _e4997350031_)))
                    (if (gx#stx-pair? _tl4997550038_)
                        (let ((_e4997650041_ (gx#syntax-e _tl4997550038_)))
                          (let ((_tl4997850048_ (##cdr _e4997650041_))
                                (_hd4997750045_ (##car _e4997650041_)))
                            (if (gx#stx-null? _tl4997850048_)
                                (___kont5134051341_
                                 _hd4997750045_
                                 _hd4997450035_
                                 _hd4997150025_
                                 _hd4994450112_
                                 _hd4994150102_)
                                (_g4993149984_))))
                        (_g4993149984_))))
                (_g4993149984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4993149984_))))
                                      (if (gx#stx-pair? _tl4994550115_)
                                          (let ((_e4997050021_
                                                 (gx#syntax-e _tl4994550115_)))
                                            (let ((_tl4997250028_
                                                   (##cdr _e4997050021_))
                                                  (_hd4997150025_
                                                   (##car _e4997050021_)))
                                              (if (gx#stx-pair? _tl4997250028_)
                                                  (let ((_e4997350031_
                                                         (gx#syntax-e
                                                          _tl4997250028_)))
                                                    (let ((_tl4997550038_
                                                           (##cdr _e4997350031_))
                                                          (_hd4997450035_
                                                           (##car _e4997350031_)))
                                                      (if (gx#stx-pair?
                                                           _tl4997550038_)
                                                          (let ((_e4997650041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4997550038_)))
                    (let ((_tl4997850048_ (##cdr _e4997650041_))
                          (_hd4997750045_ (##car _e4997650041_)))
                      (if (gx#stx-null? _tl4997850048_)
                          (___kont5134051341_
                           _hd4997750045_
                           _hd4997450035_
                           _hd4997150025_
                           _hd4994450112_
                           _hd4994150102_)
                          (_g4993149984_))))
                  (_g4993149984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4993149984_))))
                                          (_g4993149984_)))))
                              (_g4993149984_))))
                      (_g4993149984_))))
              (_g4993149984_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx50184_)
      (let* ((_g5018850202_
              (lambda (_g5018950198_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5018950198_)))
             (_g5018750243_
              (lambda (_g5018950206_)
                (if (gx#stx-pair? _g5018950206_)
                    (let ((_e5019150209_ (gx#syntax-e _g5018950206_)))
                      (let ((_hd5019250213_ (##car _e5019150209_))
                            (_tl5019350216_ (##cdr _e5019150209_)))
                        (if (gx#stx-pair? _tl5019350216_)
                            (let ((_e5019450219_ (gx#syntax-e _tl5019350216_)))
                              (let ((_hd5019550223_ (##car _e5019450219_))
                                    (_tl5019650226_ (##cdr _e5019450219_)))
                                (if (gx#stx-null? _tl5019650226_)
                                    ((lambda (_L50229_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50229_ '()))
                                                   '())))
                                     _hd5019550223_)
                                    (_g5018850202_ _g5018950206_))))
                            (_g5018850202_ _g5018950206_))))
                    (_g5018850202_ _g5018950206_)))))
        (_g5018750243_ _$stx50184_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx50247_)
      (let* ((_g5025150265_
              (lambda (_g5025250261_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5025250261_)))
             (_g5025050306_
              (lambda (_g5025250269_)
                (if (gx#stx-pair? _g5025250269_)
                    (let ((_e5025450272_ (gx#syntax-e _g5025250269_)))
                      (let ((_hd5025550276_ (##car _e5025450272_))
                            (_tl5025650279_ (##cdr _e5025450272_)))
                        (if (gx#stx-pair? _tl5025650279_)
                            (let ((_e5025750282_ (gx#syntax-e _tl5025650279_)))
                              (let ((_hd5025850286_ (##car _e5025750282_))
                                    (_tl5025950289_ (##cdr _e5025750282_)))
                                (if (gx#stx-null? _tl5025950289_)
                                    ((lambda (_L50292_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50292_ '()))
                                                   '())))
                                     _hd5025850286_)
                                    (_g5025150265_ _g5025250269_))))
                            (_g5025150265_ _g5025250269_))))
                    (_g5025150265_ _g5025250269_)))))
        (_g5025050306_ _$stx50247_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx50310_)
      (let* ((___stx5142751428_ _$stx50310_)
             (_g5031550348_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5142751428_))))
        (let ((___kont5143051431_
               (lambda (_L50450_ _L50452_ _L50453_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50453_ '()))
                             (cons _L50452_ (cons _L50450_ '()))))))
              (___kont5143251433_
               (lambda (_L50385_ _L50387_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50387_ '()))
                             (cons _L50385_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5142751428_)
              (let ((_e5032050410_ (gx#syntax-e ___stx5142751428_)))
                (let ((_tl5032250417_ (##cdr _e5032050410_))
                      (_hd5032150414_ (##car _e5032050410_)))
                  (if (gx#stx-pair? _tl5032250417_)
                      (let ((_e5032350420_ (gx#syntax-e _tl5032250417_)))
                        (let ((_tl5032550427_ (##cdr _e5032350420_))
                              (_hd5032450424_ (##car _e5032350420_)))
                          (if (gx#stx-pair? _tl5032550427_)
                              (let ((_e5032650430_
                                     (gx#syntax-e _tl5032550427_)))
                                (let ((_tl5032850437_ (##cdr _e5032650430_))
                                      (_hd5032750434_ (##car _e5032650430_)))
                                  (if (gx#stx-pair? _tl5032850437_)
                                      (let ((_e5032950440_
                                             (gx#syntax-e _tl5032850437_)))
                                        (let ((_tl5033150447_
                                               (##cdr _e5032950440_))
                                              (_hd5033050444_
                                               (##car _e5032950440_)))
                                          (if (gx#stx-null? _tl5033150447_)
                                              (___kont5143051431_
                                               _hd5033050444_
                                               _hd5032750434_
                                               _hd5032450424_)
                                              (_g5031550348_))))
                                      (if (gx#stx-null? _tl5032850437_)
                                          (___kont5143251433_
                                           _hd5032750434_
                                           _hd5032450424_)
                                          (_g5031550348_)))))
                              (_g5031550348_))))
                      (_g5031550348_))))
              (_g5031550348_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx50475_)
      (let* ((___stx5148351484_ _$stx50475_)
             (_g5048050513_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5148351484_))))
        (let ((___kont5148651487_
               (lambda (_L50615_ _L50617_ _L50618_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50618_ '()))
                             (cons _L50617_ (cons _L50615_ '()))))))
              (___kont5148851489_
               (lambda (_L50550_ _L50552_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50552_ '()))
                             (cons _L50550_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5148351484_)
              (let ((_e5048550575_ (gx#syntax-e ___stx5148351484_)))
                (let ((_tl5048750582_ (##cdr _e5048550575_))
                      (_hd5048650579_ (##car _e5048550575_)))
                  (if (gx#stx-pair? _tl5048750582_)
                      (let ((_e5048850585_ (gx#syntax-e _tl5048750582_)))
                        (let ((_tl5049050592_ (##cdr _e5048850585_))
                              (_hd5048950589_ (##car _e5048850585_)))
                          (if (gx#stx-pair? _tl5049050592_)
                              (let ((_e5049150595_
                                     (gx#syntax-e _tl5049050592_)))
                                (let ((_tl5049350602_ (##cdr _e5049150595_))
                                      (_hd5049250599_ (##car _e5049150595_)))
                                  (if (gx#stx-pair? _tl5049350602_)
                                      (let ((_e5049450605_
                                             (gx#syntax-e _tl5049350602_)))
                                        (let ((_tl5049650612_
                                               (##cdr _e5049450605_))
                                              (_hd5049550609_
                                               (##car _e5049450605_)))
                                          (if (gx#stx-null? _tl5049650612_)
                                              (___kont5148651487_
                                               _hd5049550609_
                                               _hd5049250599_
                                               _hd5048950589_)
                                              (_g5048050513_))))
                                      (if (gx#stx-null? _tl5049350602_)
                                          (___kont5148851489_
                                           _hd5049250599_
                                           _hd5048950589_)
                                          (_g5048050513_)))))
                              (_g5048050513_))))
                      (_g5048050513_))))
              (_g5048050513_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx50640_)
      (let* ((___stx5153951540_ _$stx50640_)
             (_g5064650687_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5153951540_))))
        (let ((___kont5154251543_
               (lambda (_L50835_ _L50837_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50837_ '()))
                                   (cons '#f
                                         (cons _L50835_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50835_ '()))
                                                     '()))))))))
              (___kont5154451545_
               (lambda (_L50767_ _L50769_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50769_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50767_ '()))
                                         '()))))))
              (___kont5154651547_
               (lambda (_L50714_ _L50716_)
                 (cons _L50716_ (cons _L50714_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5153951540_)
              (let ((_e5065050791_ (gx#syntax-e ___stx5153951540_)))
                (let ((_tl5065250798_ (##cdr _e5065050791_))
                      (_hd5065150795_ (##car _e5065050791_)))
                  (if (gx#stx-pair? _tl5065250798_)
                      (let ((_e5065350801_ (gx#syntax-e _tl5065250798_)))
                        (let ((_tl5065550808_ (##cdr _e5065350801_))
                              (_hd5065450805_ (##car _e5065350801_)))
                          (if (gx#stx-pair? _tl5065550808_)
                              (let ((_e5065650811_
                                     (gx#syntax-e _tl5065550808_)))
                                (let ((_tl5065850818_ (##cdr _e5065650811_))
                                      (_hd5065750815_ (##car _e5065650811_)))
                                  (if (gx#stx-datum? _hd5065750815_)
                                      (let ((_e5065950821_
                                             (gx#stx-e _hd5065750815_)))
                                        (if (equal? _e5065950821_ 'inline:)
                                            (if (gx#stx-pair? _tl5065850818_)
                                                (let ((_e5066050825_
                                                       (gx#syntax-e
                                                        _tl5065850818_)))
                                                  (let ((_tl5066250832_
                                                         (##cdr _e5066050825_))
                                                        (_hd5066150829_
                                                         (##car _e5066050825_)))
                                                    (if (gx#stx-null?
                                                         _tl5066250832_)
                                                        (___kont5154251543_
                                                         _hd5066150829_
                                                         _hd5065450805_)
                                                        (_g5064650687_))))
                                                (if (gx#stx-null?
                                                     _tl5065850818_)
                                                    (___kont5154451545_
                                                     _hd5065750815_
                                                     _hd5065450805_)
                                                    (_g5064650687_)))
                                            (if (gx#stx-null? _tl5065850818_)
                                                (___kont5154451545_
                                                 _hd5065750815_
                                                 _hd5065450805_)
                                                (_g5064650687_))))
                                      (if (gx#stx-null? _tl5065850818_)
                                          (___kont5154451545_
                                           _hd5065750815_
                                           _hd5065450805_)
                                          (_g5064650687_)))))
                              (if (gx#stx-null? _tl5065550808_)
                                  (___kont5154651547_
                                   _hd5065450805_
                                   _hd5065150795_)
                                  (_g5064650687_)))))
                      (_g5064650687_))))
              (_g5064650687_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx50859_)
      (let* ((_g5086350892_
              (lambda (_g5086450888_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5086450888_)))
             (_g5086250992_
              (lambda (_g5086450896_)
                (if (gx#stx-pair? _g5086450896_)
                    (let ((_e5086750899_ (gx#syntax-e _g5086450896_)))
                      (let ((_hd5086850903_ (##car _e5086750899_))
                            (_tl5086950906_ (##cdr _e5086750899_)))
                        (if (gx#stx-pair/null? _tl5086950906_)
                            (let ((_g51622_
                                   (gx#syntax-split-splice _tl5086950906_ '0)))
                              (begin
                                (let ((_g51623_
                                       (if (##values? _g51622_)
                                           (##vector-length _g51622_)
                                           1)))
                                  (if (not (##fx= _g51623_ 2))
                                      (error "Context expects 2 values"
                                             _g51623_)))
                                (let ((_target5087050909_
                                       (##vector-ref _g51622_ 0))
                                      (_tl5087250912_
                                       (##vector-ref _g51622_ 1)))
                                  (if (gx#stx-null? _tl5087250912_)
                                      (letrec ((_loop5087350915_
                                                (lambda (_hd5087150919_
                                                         _dispatch5087750922_
                                                         _arity5087850924_)
                                                  (if (gx#stx-pair?
                                                       _hd5087150919_)
                                                      (let ((_e5087450927_
                                                             (gx#syntax-e
                                                              _hd5087150919_)))
                                                        (let ((_lp-hd5087550931_
                                                               (##car _e5087450927_))
                                                              (_lp-tl5087650934_
                                                               (##cdr _e5087450927_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5087550931_)
                                                              (let ((_e5088150937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5087550931_)))
                        (let ((_hd5088250941_ (##car _e5088150937_))
                              (_tl5088350944_ (##cdr _e5088150937_)))
                          (if (gx#stx-pair? _tl5088350944_)
                              (let ((_e5088450947_
                                     (gx#syntax-e _tl5088350944_)))
                                (let ((_hd5088550951_ (##car _e5088450947_))
                                      (_tl5088650954_ (##cdr _e5088450947_)))
                                  (if (gx#stx-null? _tl5088650954_)
                                      (_loop5087350915_
                                       _lp-tl5087650934_
                                       (cons _hd5088550951_
                                             _dispatch5087750922_)
                                       (cons _hd5088250941_ _arity5087850924_))
                                      (_g5086350892_ _g5086450896_))))
                              (_g5086350892_ _g5086450896_))))
                      (_g5086350892_ _g5086450896_))))
              (let ((_dispatch5087950957_ (reverse _dispatch5087750922_))
                    (_arity5088050960_ (reverse _arity5087850924_)))
                ((lambda (_L50963_ _L50965_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L50963_
                                              _L50965_)
                                             (foldr2 (lambda (_g5098050984_
                                                              _g5098150987_
                                                              _g5098250989_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5098150987_ (cons _g5098050984_ '())))
                     _g5098250989_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L50963_
                                                     _L50965_)))
                                     '()))))
                 _dispatch5087950957_
                 _arity5088050960_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5087350915_
                                         _target5087050909_
                                         '()
                                         '()))
                                      (_g5086350892_ _g5086450896_)))))
                            (_g5086350892_ _g5086450896_))))
                    (_g5086350892_ _g5086450896_)))))
        (_g5086250992_ _$stx50859_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx50997_)
      (let* ((_g5100151019_
              (lambda (_g5100251015_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5100251015_)))
             (_g5100051074_
              (lambda (_g5100251023_)
                (if (gx#stx-pair? _g5100251023_)
                    (let ((_e5100551026_ (gx#syntax-e _g5100251023_)))
                      (let ((_hd5100651030_ (##car _e5100551026_))
                            (_tl5100751033_ (##cdr _e5100551026_)))
                        (if (gx#stx-pair? _tl5100751033_)
                            (let ((_e5100851036_ (gx#syntax-e _tl5100751033_)))
                              (let ((_hd5100951040_ (##car _e5100851036_))
                                    (_tl5101051043_ (##cdr _e5100851036_)))
                                (if (gx#stx-pair? _tl5101051043_)
                                    (let ((_e5101151046_
                                           (gx#syntax-e _tl5101051043_)))
                                      (let ((_hd5101251050_
                                             (##car _e5101151046_))
                                            (_tl5101351053_
                                             (##cdr _e5101151046_)))
                                        (if (gx#stx-null? _tl5101351053_)
                                            ((lambda (_L51056_ _L51058_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51058_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51056_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5101251050_
                                             _hd5100951040_)
                                            (_g5100151019_ _g5100251023_))))
                                    (_g5100151019_ _g5100251023_))))
                            (_g5100151019_ _g5100251023_))))
                    (_g5100151019_ _g5100251023_)))))
        (_g5100051074_ _$stx50997_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx51078_)
      (let* ((_g5108251100_
              (lambda (_g5108351096_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5108351096_)))
             (_g5108151155_
              (lambda (_g5108351104_)
                (if (gx#stx-pair? _g5108351104_)
                    (let ((_e5108651107_ (gx#syntax-e _g5108351104_)))
                      (let ((_hd5108751111_ (##car _e5108651107_))
                            (_tl5108851114_ (##cdr _e5108651107_)))
                        (if (gx#stx-pair? _tl5108851114_)
                            (let ((_e5108951117_ (gx#syntax-e _tl5108851114_)))
                              (let ((_hd5109051121_ (##car _e5108951117_))
                                    (_tl5109151124_ (##cdr _e5108951117_)))
                                (if (gx#stx-pair? _tl5109151124_)
                                    (let ((_e5109251127_
                                           (gx#syntax-e _tl5109151124_)))
                                      (let ((_hd5109351131_
                                             (##car _e5109251127_))
                                            (_tl5109451134_
                                             (##cdr _e5109251127_)))
                                        (if (gx#stx-null? _tl5109451134_)
                                            ((lambda (_L51137_ _L51139_)
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
                               (cons _L51139_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51137_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5109351131_
                                             _hd5109051121_)
                                            (_g5108251100_ _g5108351104_))))
                                    (_g5108251100_ _g5108351104_))))
                            (_g5108251100_ _g5108351104_))))
                    (_g5108251100_ _g5108351104_)))))
        (_g5108151155_ _$stx51078_)))))
