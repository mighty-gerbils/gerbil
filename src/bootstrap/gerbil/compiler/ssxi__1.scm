(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx49081_)
      (let* ((_g4908549103_
              (lambda (_g4908649099_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4908649099_)))
             (_g4908449158_
              (lambda (_g4908649107_)
                (if (gx#stx-pair? _g4908649107_)
                    (let ((_e4908949110_ (gx#syntax-e _g4908649107_)))
                      (let ((_hd4909049114_ (##car _e4908949110_))
                            (_tl4909149117_ (##cdr _e4908949110_)))
                        (if (gx#stx-pair? _tl4909149117_)
                            (let ((_e4909249120_ (gx#syntax-e _tl4909149117_)))
                              (let ((_hd4909349124_ (##car _e4909249120_))
                                    (_tl4909449127_ (##cdr _e4909249120_)))
                                (if (gx#stx-pair? _tl4909449127_)
                                    (let ((_e4909549130_
                                           (gx#syntax-e _tl4909449127_)))
                                      (let ((_hd4909649134_
                                             (##car _e4909549130_))
                                            (_tl4909749137_
                                             (##cdr _e4909549130_)))
                                        (if (gx#stx-null? _tl4909749137_)
                                            ((lambda (_L49140_ _L49142_)
                                               (if (gx#identifier? _L49142_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L49142_ '()))
                       (cons _L49140_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4908549103_
                                                    _g4908649107_)))
                                             _hd4909649134_
                                             _hd4909349124_)
                                            (_g4908549103_ _g4908649107_))))
                                    (_g4908549103_ _g4908649107_))))
                            (_g4908549103_ _g4908649107_))))
                    (_g4908549103_ _g4908649107_)))))
        (_g4908449158_ _$stx49081_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx49162_)
      (let* ((_g4916649195_
              (lambda (_g4916749191_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4916749191_)))
             (_g4916549295_
              (lambda (_g4916749199_)
                (if (gx#stx-pair? _g4916749199_)
                    (let ((_e4917049202_ (gx#syntax-e _g4916749199_)))
                      (let ((_hd4917149206_ (##car _e4917049202_))
                            (_tl4917249209_ (##cdr _e4917049202_)))
                        (if (gx#stx-pair/null? _tl4917249209_)
                            (let ((_g51903_
                                   (gx#syntax-split-splice _tl4917249209_ '0)))
                              (begin
                                (let ((_g51904_
                                       (if (##values? _g51903_)
                                           (##vector-length _g51903_)
                                           1)))
                                  (if (not (##fx= _g51904_ 2))
                                      (error "Context expects 2 values"
                                             _g51904_)))
                                (let ((_target4917349212_
                                       (##vector-ref _g51903_ 0))
                                      (_tl4917549215_
                                       (##vector-ref _g51903_ 1)))
                                  (if (gx#stx-null? _tl4917549215_)
                                      (letrec ((_loop4917649218_
                                                (lambda (_hd4917449222_
                                                         _type4918049225_
                                                         _symbol4918149227_)
                                                  (if (gx#stx-pair?
                                                       _hd4917449222_)
                                                      (let ((_e4917749230_
                                                             (gx#syntax-e
                                                              _hd4917449222_)))
                                                        (let ((_lp-hd4917849234_
                                                               (##car _e4917749230_))
                                                              (_lp-tl4917949237_
                                                               (##cdr _e4917749230_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4917849234_)
                                                              (let ((_e4918449240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4917849234_)))
                        (let ((_hd4918549244_ (##car _e4918449240_))
                              (_tl4918649247_ (##cdr _e4918449240_)))
                          (if (gx#stx-pair? _tl4918649247_)
                              (let ((_e4918749250_
                                     (gx#syntax-e _tl4918649247_)))
                                (let ((_hd4918849254_ (##car _e4918749250_))
                                      (_tl4918949257_ (##cdr _e4918749250_)))
                                  (if (gx#stx-null? _tl4918949257_)
                                      (_loop4917649218_
                                       _lp-tl4917949237_
                                       (cons _hd4918849254_ _type4918049225_)
                                       (cons _hd4918549244_
                                             _symbol4918149227_))
                                      (_g4916649195_ _g4916749199_))))
                              (_g4916649195_ _g4916749199_))))
                      (_g4916649195_ _g4916749199_))))
              (let ((_type4918249260_ (reverse _type4918049225_))
                    (_symbol4918349263_ (reverse _symbol4918149227_)))
                ((lambda (_L49266_ _L49268_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L49266_ _L49268_)
                           (foldr2 (lambda (_g4928349287_
                                            _g4928449290_
                                            _g4928549292_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g4928449290_
                                                       (cons _g4928349287_
                                                             '())))
                                           _g4928549292_))
                                   '()
                                   _L49266_
                                   _L49268_))))
                 _type4918249260_
                 _symbol4918349263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4917649218_
                                         _target4917349212_
                                         '()
                                         '()))
                                      (_g4916649195_ _g4916749199_)))))
                            (_g4916649195_ _g4916749199_))))
                    (_g4916649195_ _g4916749199_)))))
        (_g4916549295_ _$stx49162_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx49300_)
      (let* ((___stx5144651447_ _$stx49300_)
             (_g4930549347_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5144651447_))))
        (let ((___kont5144951450_
               (lambda (_L49475_ _L49477_ _L49478_ _L49479_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L49479_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L49478_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L49477_ '()))
                                         (cons _L49475_ '())))))))
              (___kont5145151452_
               (lambda (_L49394_ _L49396_ _L49397_ _L49398_)
                 (cons _L49398_
                       (cons _L49397_
                             (cons _L49396_
                                   (cons _L49394_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5148551486_
                 (lambda (_e4931149425_
                          _hd4931249429_
                          _tl4931349432_
                          _e4931449435_
                          _hd4931549439_
                          _tl4931649442_
                          _e4931749445_
                          _hd4931849449_
                          _tl4931949452_
                          _e4932049455_
                          _hd4932149459_
                          _tl4932249462_
                          _e4932349465_
                          _hd4932449469_
                          _tl4932549472_)
                   (let ((_L49475_ _hd4932449469_)
                         (_L49477_ _hd4932149459_)
                         (_L49478_ _hd4931849449_)
                         (_L49479_ _hd4931549439_))
                     (if (if (gx#identifier? _L49479_)
                             (if (gx#identifier? _L49478_)
                                 (gx#identifier? _L49477_)
                                 '#f)
                             '#f)
                         (___kont5144951450_
                          _L49475_
                          _L49477_
                          _L49478_
                          _L49479_)
                         (_g4930549347_))))))
            (if (gx#stx-pair? ___stx5144651447_)
                (let ((_e4931149425_ (gx#syntax-e ___stx5144651447_)))
                  (let ((_tl4931349432_ (##cdr _e4931149425_))
                        (_hd4931249429_ (##car _e4931149425_)))
                    (if (gx#stx-pair? _tl4931349432_)
                        (let ((_e4931449435_ (gx#syntax-e _tl4931349432_)))
                          (let ((_tl4931649442_ (##cdr _e4931449435_))
                                (_hd4931549439_ (##car _e4931449435_)))
                            (if (gx#stx-pair? _tl4931649442_)
                                (let ((_e4931749445_
                                       (gx#syntax-e _tl4931649442_)))
                                  (let ((_tl4931949452_ (##cdr _e4931749445_))
                                        (_hd4931849449_ (##car _e4931749445_)))
                                    (if (gx#stx-pair? _tl4931949452_)
                                        (let ((_e4932049455_
                                               (gx#syntax-e _tl4931949452_)))
                                          (let ((_tl4932249462_
                                                 (##cdr _e4932049455_))
                                                (_hd4932149459_
                                                 (##car _e4932049455_)))
                                            (if (gx#stx-pair? _tl4932249462_)
                                                (let ((_e4932349465_
                                                       (gx#syntax-e
                                                        _tl4932249462_)))
                                                  (let ((_tl4932549472_
                                                         (##cdr _e4932349465_))
                                                        (_hd4932449469_
                                                         (##car _e4932349465_)))
                                                    (if (gx#stx-null?
                                                         _tl4932549472_)
                                                        (___match5148551486_
                                                         _e4931149425_
                                                         _hd4931249429_
                                                         _tl4931349432_
                                                         _e4931449435_
                                                         _hd4931549439_
                                                         _tl4931649442_
                                                         _e4931749445_
                                                         _hd4931849449_
                                                         _tl4931949452_
                                                         _e4932049455_
                                                         _hd4932149459_
                                                         _tl4932249462_
                                                         _e4932349465_
                                                         _hd4932449469_
                                                         _tl4932549472_)
                                                        (_g4930549347_))))
                                                (if (gx#stx-null?
                                                     _tl4932249462_)
                                                    (___kont5145151452_
                                                     _hd4932149459_
                                                     _hd4931849449_
                                                     _hd4931549439_
                                                     _hd4931249429_)
                                                    (_g4930549347_)))))
                                        (_g4930549347_))))
                                (_g4930549347_))))
                        (_g4930549347_))))
                (_g4930549347_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx49504_)
      (let* ((_g4950849543_
              (lambda (_g4950949539_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4950949539_)))
             (_g4950749662_
              (lambda (_g4950949547_)
                (if (gx#stx-pair? _g4950949547_)
                    (let ((_e4951349550_ (gx#syntax-e _g4950949547_)))
                      (let ((_hd4951449554_ (##car _e4951349550_))
                            (_tl4951549557_ (##cdr _e4951349550_)))
                        (if (gx#stx-pair/null? _tl4951549557_)
                            (let ((_g51905_
                                   (gx#syntax-split-splice _tl4951549557_ '0)))
                              (begin
                                (let ((_g51906_
                                       (if (##values? _g51905_)
                                           (##vector-length _g51905_)
                                           1)))
                                  (if (not (##fx= _g51906_ 2))
                                      (error "Context expects 2 values"
                                             _g51906_)))
                                (let ((_target4951649560_
                                       (##vector-ref _g51905_ 0))
                                      (_tl4951849563_
                                       (##vector-ref _g51905_ 1)))
                                  (if (gx#stx-null? _tl4951849563_)
                                      (letrec ((_loop4951949566_
                                                (lambda (_hd4951749570_
                                                         _symbol4952349573_
                                                         _method4952449575_
                                                         _type-t4952549577_)
                                                  (if (gx#stx-pair?
                                                       _hd4951749570_)
                                                      (let ((_e4952049580_
                                                             (gx#syntax-e
                                                              _hd4951749570_)))
                                                        (let ((_lp-hd4952149584_
                                                               (##car _e4952049580_))
                                                              (_lp-tl4952249587_
                                                               (##cdr _e4952049580_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4952149584_)
                                                              (let ((_e4952949590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4952149584_)))
                        (let ((_hd4953049594_ (##car _e4952949590_))
                              (_tl4953149597_ (##cdr _e4952949590_)))
                          (if (gx#stx-pair? _tl4953149597_)
                              (let ((_e4953249600_
                                     (gx#syntax-e _tl4953149597_)))
                                (let ((_hd4953349604_ (##car _e4953249600_))
                                      (_tl4953449607_ (##cdr _e4953249600_)))
                                  (if (gx#stx-pair? _tl4953449607_)
                                      (let ((_e4953549610_
                                             (gx#syntax-e _tl4953449607_)))
                                        (let ((_hd4953649614_
                                               (##car _e4953549610_))
                                              (_tl4953749617_
                                               (##cdr _e4953549610_)))
                                          (if (gx#stx-null? _tl4953749617_)
                                              (_loop4951949566_
                                               _lp-tl4952249587_
                                               (cons _hd4953649614_
                                                     _symbol4952349573_)
                                               (cons _hd4953349604_
                                                     _method4952449575_)
                                               (cons _hd4953049594_
                                                     _type-t4952549577_))
                                              (_g4950849543_ _g4950949547_))))
                                      (_g4950849543_ _g4950949547_))))
                              (_g4950849543_ _g4950949547_))))
                      (_g4950849543_ _g4950949547_))))
              (let ((_symbol4952649620_ (reverse _symbol4952349573_))
                    (_method4952749623_ (reverse _method4952449575_))
                    (_type-t4952849625_ (reverse _type-t4952549577_)))
                ((lambda (_L49628_ _L49630_ _L49631_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L49628_
                            _L49630_
                            _L49631_)
                           (foldr (lambda (_g4964749652_
                                           _g4964849655_
                                           _g4964949657_
                                           _g4965049659_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g4964949657_
                                                      (cons _g4964849655_
                                                            (cons _g4964749652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g4965049659_))
                                  '()
                                  _L49628_
                                  _L49630_
                                  _L49631_))))
                 _symbol4952649620_
                 _method4952749623_
                 _type-t4952849625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4951949566_
                                         _target4951649560_
                                         '()
                                         '()
                                         '()))
                                      (_g4950849543_ _g4950949547_)))))
                            (_g4950849543_ _g4950949547_))))
                    (_g4950849543_ _g4950949547_)))))
        (_g4950749662_ _$stx49504_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx49667_)
      (let* ((_g4967149704_
              (lambda (_g4967249700_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4967249700_)))
             (_g4967049818_
              (lambda (_g4967249708_)
                (if (gx#stx-pair? _g4967249708_)
                    (let ((_e4967649711_ (gx#syntax-e _g4967249708_)))
                      (let ((_hd4967749715_ (##car _e4967649711_))
                            (_tl4967849718_ (##cdr _e4967649711_)))
                        (if (gx#stx-pair? _tl4967849718_)
                            (let ((_e4967949721_ (gx#syntax-e _tl4967849718_)))
                              (let ((_hd4968049725_ (##car _e4967949721_))
                                    (_tl4968149728_ (##cdr _e4967949721_)))
                                (if (gx#stx-pair/null? _tl4968149728_)
                                    (let ((_g51907_
                                           (gx#syntax-split-splice
                                            _tl4968149728_
                                            '0)))
                                      (begin
                                        (let ((_g51908_
                                               (if (##values? _g51907_)
                                                   (##vector-length _g51907_)
                                                   1)))
                                          (if (not (##fx= _g51908_ 2))
                                              (error "Context expects 2 values"
                                                     _g51908_)))
                                        (let ((_target4968249731_
                                               (##vector-ref _g51907_ 0))
                                              (_tl4968449734_
                                               (##vector-ref _g51907_ 1)))
                                          (if (gx#stx-null? _tl4968449734_)
                                              (letrec ((_loop4968549737_
                                                        (lambda (_hd4968349741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol4968949744_
                         _method4969049746_)
                  (if (gx#stx-pair? _hd4968349741_)
                      (let ((_e4968649749_ (gx#syntax-e _hd4968349741_)))
                        (let ((_lp-hd4968749753_ (##car _e4968649749_))
                              (_lp-tl4968849756_ (##cdr _e4968649749_)))
                          (if (gx#stx-pair? _lp-hd4968749753_)
                              (let ((_e4969349759_
                                     (gx#syntax-e _lp-hd4968749753_)))
                                (let ((_hd4969449763_ (##car _e4969349759_))
                                      (_tl4969549766_ (##cdr _e4969349759_)))
                                  (if (gx#stx-pair? _tl4969549766_)
                                      (let ((_e4969649769_
                                             (gx#syntax-e _tl4969549766_)))
                                        (let ((_hd4969749773_
                                               (##car _e4969649769_))
                                              (_tl4969849776_
                                               (##cdr _e4969649769_)))
                                          (if (gx#stx-null? _tl4969849776_)
                                              (_loop4968549737_
                                               _lp-tl4968849756_
                                               (cons _hd4969749773_
                                                     _symbol4968949744_)
                                               (cons _hd4969449763_
                                                     _method4969049746_))
                                              (_g4967149704_ _g4967249708_))))
                                      (_g4967149704_ _g4967249708_))))
                              (_g4967149704_ _g4967249708_))))
                      (let ((_symbol4969149779_ (reverse _symbol4968949744_))
                            (_method4969249782_ (reverse _method4969049746_)))
                        ((lambda (_L49785_ _L49787_ _L49788_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L49785_
                                    _L49787_)
                                   (foldr2 (lambda (_g4980649810_
                                                    _g4980749813_
                                                    _g4980849815_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L49788_
                                                               (cons _g4980749813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g4980649810_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4980849815_))
                                           '()
                                           _L49785_
                                           _L49787_))))
                         _symbol4969149779_
                         _method4969249782_
                         _hd4968049725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4968549737_
                                                 _target4968249731_
                                                 '()
                                                 '()))
                                              (_g4967149704_ _g4967249708_)))))
                                    (_g4967149704_ _g4967249708_))))
                            (_g4967149704_ _g4967249708_))))
                    (_g4967149704_ _g4967249708_)))))
        (_g4967049818_ _$stx49667_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx49823_)
      (let* ((_g4982749841_
              (lambda (_g4982849837_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4982849837_)))
             (_g4982649882_
              (lambda (_g4982849845_)
                (if (gx#stx-pair? _g4982849845_)
                    (let ((_e4983049848_ (gx#syntax-e _g4982849845_)))
                      (let ((_hd4983149852_ (##car _e4983049848_))
                            (_tl4983249855_ (##cdr _e4983049848_)))
                        (if (gx#stx-pair? _tl4983249855_)
                            (let ((_e4983349858_ (gx#syntax-e _tl4983249855_)))
                              (let ((_hd4983449862_ (##car _e4983349858_))
                                    (_tl4983549865_ (##cdr _e4983349858_)))
                                (if (gx#stx-null? _tl4983549865_)
                                    ((lambda (_L49868_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L49868_ '()))
                                                   '())))
                                     _hd4983449862_)
                                    (_g4982749841_ _g4982849845_))))
                            (_g4982749841_ _g4982849845_))))
                    (_g4982749841_ _g4982849845_)))))
        (_g4982649882_ _$stx49823_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx49886_)
      (let* ((___stx5151451515_ _$stx49886_)
             (_g4989249958_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5151451515_))))
        (let ((___kont5151751518_
               (lambda (_L50180_ _L50182_ _L50183_ _L50184_ _L50185_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L50185_
                             (cons _L50184_
                                   (cons _L50183_
                                         (cons _L50182_
                                               (cons _L50180_ '()))))))))
              (___kont5151951520_
               (lambda (_L50090_ _L50092_ _L50093_ _L50094_)
                 (cons _L50094_
                       (cons _L50093_
                             (cons _L50092_
                                   (cons _L50090_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5152151522_
               (lambda (_L50015_ _L50017_ _L50018_ _L50019_ _L50020_)
                 (cons _L50020_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L50018_
                                   (cons _L50017_
                                         (cons _L50015_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5151451515_)
              (let ((_e4989950120_ (gx#syntax-e ___stx5151451515_)))
                (let ((_tl4990150127_ (##cdr _e4989950120_))
                      (_hd4990050124_ (##car _e4989950120_)))
                  (if (gx#stx-pair? _tl4990150127_)
                      (let ((_e4990250130_ (gx#syntax-e _tl4990150127_)))
                        (let ((_tl4990450137_ (##cdr _e4990250130_))
                              (_hd4990350134_ (##car _e4990250130_)))
                          (if (gx#stx-pair? _tl4990450137_)
                              (let ((_e4990550140_
                                     (gx#syntax-e _tl4990450137_)))
                                (let ((_tl4990750147_ (##cdr _e4990550140_))
                                      (_hd4990650144_ (##car _e4990550140_)))
                                  (if (gx#stx-pair? _tl4990750147_)
                                      (let ((_e4990850150_
                                             (gx#syntax-e _tl4990750147_)))
                                        (let ((_tl4991050157_
                                               (##cdr _e4990850150_))
                                              (_hd4990950154_
                                               (##car _e4990850150_)))
                                          (if (gx#stx-pair? _tl4991050157_)
                                              (let ((_e4991150160_
                                                     (gx#syntax-e
                                                      _tl4991050157_)))
                                                (let ((_tl4991350167_
                                                       (##cdr _e4991150160_))
                                                      (_hd4991250164_
                                                       (##car _e4991150160_)))
                                                  (if (gx#stx-pair?
                                                       _tl4991350167_)
                                                      (let ((_e4991450170_
                                                             (gx#syntax-e
                                                              _tl4991350167_)))
                                                        (let ((_tl4991650177_
                                                               (##cdr _e4991450170_))
                                                              (_hd4991550174_
                                                               (##car _e4991450170_)))
                                                          (if (gx#stx-null?
                                                               _tl4991650177_)
                                                              (___kont5151751518_
                                                               _hd4991550174_
                                                               _hd4991250164_
                                                               _hd4990950154_
                                                               _hd4990650144_
                                                               _hd4990350134_)
                                                              (_g4989249958_))))
                                                      (if (gx#stx-null?
                                                           _tl4991350167_)
                                                          (___kont5152151522_
                                                           _hd4991250164_
                                                           _hd4990950154_
                                                           _hd4990650144_
                                                           _hd4990350134_
                                                           _hd4990050124_)
                                                          (_g4989249958_)))))
                                              (if (gx#stx-null? _tl4991050157_)
                                                  (___kont5151951520_
                                                   _hd4990950154_
                                                   _hd4990650144_
                                                   _hd4990350134_
                                                   _hd4990050124_)
                                                  (_g4989249958_)))))
                                      (_g4989249958_))))
                              (_g4989249958_))))
                      (_g4989249958_))))
              (_g4989249958_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx50213_)
      (let* ((___stx5162251623_ _$stx50213_)
             (_g5021850271_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5162251623_))))
        (let ((___kont5162551626_
               (lambda (_L50439_ _L50441_ _L50442_ _L50443_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50443_ '()))
                             (cons '#f
                                   (cons _L50442_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50441_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50439_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5162751628_
               (lambda (_L50338_ _L50340_ _L50341_ _L50342_ _L50343_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50342_ '()))
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
                                     (cons _L50340_ '()))
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
                                                     (cons _L50343_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50342_ '()))
                                                     (cons _L50341_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L50338_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5162251623_)
              (let ((_e5022450375_ (gx#syntax-e ___stx5162251623_)))
                (let ((_tl5022650382_ (##cdr _e5022450375_))
                      (_hd5022550379_ (##car _e5022450375_)))
                  (if (gx#stx-pair? _tl5022650382_)
                      (let ((_e5022750385_ (gx#syntax-e _tl5022650382_)))
                        (let ((_tl5022950392_ (##cdr _e5022750385_))
                              (_hd5022850389_ (##car _e5022750385_)))
                          (if (gx#stx-pair? _tl5022950392_)
                              (let ((_e5023050395_
                                     (gx#syntax-e _tl5022950392_)))
                                (let ((_tl5023250402_ (##cdr _e5023050395_))
                                      (_hd5023150399_ (##car _e5023050395_)))
                                  (if (gx#stx-datum? _hd5023150399_)
                                      (let ((_e5023350405_
                                             (gx#stx-e _hd5023150399_)))
                                        (if (equal? _e5023350405_ '#f)
                                            (if (gx#stx-pair? _tl5023250402_)
                                                (let ((_e5023450409_
                                                       (gx#syntax-e
                                                        _tl5023250402_)))
                                                  (let ((_tl5023650416_
                                                         (##cdr _e5023450409_))
                                                        (_hd5023550413_
                                                         (##car _e5023450409_)))
                                                    (if (gx#stx-pair?
                                                         _tl5023650416_)
                                                        (let ((_e5023750419_
                                                               (gx#syntax-e
                                                                _tl5023650416_)))
                                                          (let ((_tl5023950426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5023750419_))
                        (_hd5023850423_ (##car _e5023750419_)))
                    (if (gx#stx-pair? _tl5023950426_)
                        (let ((_e5024050429_ (gx#syntax-e _tl5023950426_)))
                          (let ((_tl5024250436_ (##cdr _e5024050429_))
                                (_hd5024150433_ (##car _e5024050429_)))
                            (if (gx#stx-null? _tl5024250436_)
                                (___kont5162551626_
                                 _hd5024150433_
                                 _hd5023850423_
                                 _hd5023550413_
                                 _hd5022850389_)
                                (_g5021850271_))))
                        (_g5021850271_))))
                (_g5021850271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5021850271_))
                                            (if (gx#stx-pair? _tl5023250402_)
                                                (let ((_e5025750308_
                                                       (gx#syntax-e
                                                        _tl5023250402_)))
                                                  (let ((_tl5025950315_
                                                         (##cdr _e5025750308_))
                                                        (_hd5025850312_
                                                         (##car _e5025750308_)))
                                                    (if (gx#stx-pair?
                                                         _tl5025950315_)
                                                        (let ((_e5026050318_
                                                               (gx#syntax-e
                                                                _tl5025950315_)))
                                                          (let ((_tl5026250325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5026050318_))
                        (_hd5026150322_ (##car _e5026050318_)))
                    (if (gx#stx-pair? _tl5026250325_)
                        (let ((_e5026350328_ (gx#syntax-e _tl5026250325_)))
                          (let ((_tl5026550335_ (##cdr _e5026350328_))
                                (_hd5026450332_ (##car _e5026350328_)))
                            (if (gx#stx-null? _tl5026550335_)
                                (___kont5162751628_
                                 _hd5026450332_
                                 _hd5026150322_
                                 _hd5025850312_
                                 _hd5023150399_
                                 _hd5022850389_)
                                (_g5021850271_))))
                        (_g5021850271_))))
                (_g5021850271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5021850271_))))
                                      (if (gx#stx-pair? _tl5023250402_)
                                          (let ((_e5025750308_
                                                 (gx#syntax-e _tl5023250402_)))
                                            (let ((_tl5025950315_
                                                   (##cdr _e5025750308_))
                                                  (_hd5025850312_
                                                   (##car _e5025750308_)))
                                              (if (gx#stx-pair? _tl5025950315_)
                                                  (let ((_e5026050318_
                                                         (gx#syntax-e
                                                          _tl5025950315_)))
                                                    (let ((_tl5026250325_
                                                           (##cdr _e5026050318_))
                                                          (_hd5026150322_
                                                           (##car _e5026050318_)))
                                                      (if (gx#stx-pair?
                                                           _tl5026250325_)
                                                          (let ((_e5026350328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5026250325_)))
                    (let ((_tl5026550335_ (##cdr _e5026350328_))
                          (_hd5026450332_ (##car _e5026350328_)))
                      (if (gx#stx-null? _tl5026550335_)
                          (___kont5162751628_
                           _hd5026450332_
                           _hd5026150322_
                           _hd5025850312_
                           _hd5023150399_
                           _hd5022850389_)
                          (_g5021850271_))))
                  (_g5021850271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5021850271_))))
                                          (_g5021850271_)))))
                              (_g5021850271_))))
                      (_g5021850271_))))
              (_g5021850271_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx50471_)
      (let* ((_g5047550489_
              (lambda (_g5047650485_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5047650485_)))
             (_g5047450530_
              (lambda (_g5047650493_)
                (if (gx#stx-pair? _g5047650493_)
                    (let ((_e5047850496_ (gx#syntax-e _g5047650493_)))
                      (let ((_hd5047950500_ (##car _e5047850496_))
                            (_tl5048050503_ (##cdr _e5047850496_)))
                        (if (gx#stx-pair? _tl5048050503_)
                            (let ((_e5048150506_ (gx#syntax-e _tl5048050503_)))
                              (let ((_hd5048250510_ (##car _e5048150506_))
                                    (_tl5048350513_ (##cdr _e5048150506_)))
                                (if (gx#stx-null? _tl5048350513_)
                                    ((lambda (_L50516_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50516_ '()))
                                                   '())))
                                     _hd5048250510_)
                                    (_g5047550489_ _g5047650493_))))
                            (_g5047550489_ _g5047650493_))))
                    (_g5047550489_ _g5047650493_)))))
        (_g5047450530_ _$stx50471_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx50534_)
      (let* ((_g5053850552_
              (lambda (_g5053950548_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5053950548_)))
             (_g5053750593_
              (lambda (_g5053950556_)
                (if (gx#stx-pair? _g5053950556_)
                    (let ((_e5054150559_ (gx#syntax-e _g5053950556_)))
                      (let ((_hd5054250563_ (##car _e5054150559_))
                            (_tl5054350566_ (##cdr _e5054150559_)))
                        (if (gx#stx-pair? _tl5054350566_)
                            (let ((_e5054450569_ (gx#syntax-e _tl5054350566_)))
                              (let ((_hd5054550573_ (##car _e5054450569_))
                                    (_tl5054650576_ (##cdr _e5054450569_)))
                                (if (gx#stx-null? _tl5054650576_)
                                    ((lambda (_L50579_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50579_ '()))
                                                   '())))
                                     _hd5054550573_)
                                    (_g5053850552_ _g5053950556_))))
                            (_g5053850552_ _g5053950556_))))
                    (_g5053850552_ _g5053950556_)))))
        (_g5053750593_ _$stx50534_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx50597_)
      (let* ((___stx5171451715_ _$stx50597_)
             (_g5060250635_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5171451715_))))
        (let ((___kont5171751718_
               (lambda (_L50737_ _L50739_ _L50740_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50740_ '()))
                             (cons _L50739_ (cons _L50737_ '()))))))
              (___kont5171951720_
               (lambda (_L50672_ _L50674_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50674_ '()))
                             (cons _L50672_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5171451715_)
              (let ((_e5060750697_ (gx#syntax-e ___stx5171451715_)))
                (let ((_tl5060950704_ (##cdr _e5060750697_))
                      (_hd5060850701_ (##car _e5060750697_)))
                  (if (gx#stx-pair? _tl5060950704_)
                      (let ((_e5061050707_ (gx#syntax-e _tl5060950704_)))
                        (let ((_tl5061250714_ (##cdr _e5061050707_))
                              (_hd5061150711_ (##car _e5061050707_)))
                          (if (gx#stx-pair? _tl5061250714_)
                              (let ((_e5061350717_
                                     (gx#syntax-e _tl5061250714_)))
                                (let ((_tl5061550724_ (##cdr _e5061350717_))
                                      (_hd5061450721_ (##car _e5061350717_)))
                                  (if (gx#stx-pair? _tl5061550724_)
                                      (let ((_e5061650727_
                                             (gx#syntax-e _tl5061550724_)))
                                        (let ((_tl5061850734_
                                               (##cdr _e5061650727_))
                                              (_hd5061750731_
                                               (##car _e5061650727_)))
                                          (if (gx#stx-null? _tl5061850734_)
                                              (___kont5171751718_
                                               _hd5061750731_
                                               _hd5061450721_
                                               _hd5061150711_)
                                              (_g5060250635_))))
                                      (if (gx#stx-null? _tl5061550724_)
                                          (___kont5171951720_
                                           _hd5061450721_
                                           _hd5061150711_)
                                          (_g5060250635_)))))
                              (_g5060250635_))))
                      (_g5060250635_))))
              (_g5060250635_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx50762_)
      (let* ((___stx5177051771_ _$stx50762_)
             (_g5076750800_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5177051771_))))
        (let ((___kont5177351774_
               (lambda (_L50902_ _L50904_ _L50905_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50905_ '()))
                             (cons _L50904_ (cons _L50902_ '()))))))
              (___kont5177551776_
               (lambda (_L50837_ _L50839_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50839_ '()))
                             (cons _L50837_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5177051771_)
              (let ((_e5077250862_ (gx#syntax-e ___stx5177051771_)))
                (let ((_tl5077450869_ (##cdr _e5077250862_))
                      (_hd5077350866_ (##car _e5077250862_)))
                  (if (gx#stx-pair? _tl5077450869_)
                      (let ((_e5077550872_ (gx#syntax-e _tl5077450869_)))
                        (let ((_tl5077750879_ (##cdr _e5077550872_))
                              (_hd5077650876_ (##car _e5077550872_)))
                          (if (gx#stx-pair? _tl5077750879_)
                              (let ((_e5077850882_
                                     (gx#syntax-e _tl5077750879_)))
                                (let ((_tl5078050889_ (##cdr _e5077850882_))
                                      (_hd5077950886_ (##car _e5077850882_)))
                                  (if (gx#stx-pair? _tl5078050889_)
                                      (let ((_e5078150892_
                                             (gx#syntax-e _tl5078050889_)))
                                        (let ((_tl5078350899_
                                               (##cdr _e5078150892_))
                                              (_hd5078250896_
                                               (##car _e5078150892_)))
                                          (if (gx#stx-null? _tl5078350899_)
                                              (___kont5177351774_
                                               _hd5078250896_
                                               _hd5077950886_
                                               _hd5077650876_)
                                              (_g5076750800_))))
                                      (if (gx#stx-null? _tl5078050889_)
                                          (___kont5177551776_
                                           _hd5077950886_
                                           _hd5077650876_)
                                          (_g5076750800_)))))
                              (_g5076750800_))))
                      (_g5076750800_))))
              (_g5076750800_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx50927_)
      (let* ((___stx5182651827_ _$stx50927_)
             (_g5093350974_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5182651827_))))
        (let ((___kont5182951830_
               (lambda (_L51122_ _L51124_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L51124_ '()))
                                   (cons '#f
                                         (cons _L51122_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51122_ '()))
                                                     '()))))))))
              (___kont5183151832_
               (lambda (_L51054_ _L51056_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L51056_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L51054_ '()))
                                         '()))))))
              (___kont5183351834_
               (lambda (_L51001_ _L51003_)
                 (cons _L51003_ (cons _L51001_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5182651827_)
              (let ((_e5093751078_ (gx#syntax-e ___stx5182651827_)))
                (let ((_tl5093951085_ (##cdr _e5093751078_))
                      (_hd5093851082_ (##car _e5093751078_)))
                  (if (gx#stx-pair? _tl5093951085_)
                      (let ((_e5094051088_ (gx#syntax-e _tl5093951085_)))
                        (let ((_tl5094251095_ (##cdr _e5094051088_))
                              (_hd5094151092_ (##car _e5094051088_)))
                          (if (gx#stx-pair? _tl5094251095_)
                              (let ((_e5094351098_
                                     (gx#syntax-e _tl5094251095_)))
                                (let ((_tl5094551105_ (##cdr _e5094351098_))
                                      (_hd5094451102_ (##car _e5094351098_)))
                                  (if (gx#stx-datum? _hd5094451102_)
                                      (let ((_e5094651108_
                                             (gx#stx-e _hd5094451102_)))
                                        (if (equal? _e5094651108_ 'inline:)
                                            (if (gx#stx-pair? _tl5094551105_)
                                                (let ((_e5094751112_
                                                       (gx#syntax-e
                                                        _tl5094551105_)))
                                                  (let ((_tl5094951119_
                                                         (##cdr _e5094751112_))
                                                        (_hd5094851116_
                                                         (##car _e5094751112_)))
                                                    (if (gx#stx-null?
                                                         _tl5094951119_)
                                                        (___kont5182951830_
                                                         _hd5094851116_
                                                         _hd5094151092_)
                                                        (_g5093350974_))))
                                                (if (gx#stx-null?
                                                     _tl5094551105_)
                                                    (___kont5183151832_
                                                     _hd5094451102_
                                                     _hd5094151092_)
                                                    (_g5093350974_)))
                                            (if (gx#stx-null? _tl5094551105_)
                                                (___kont5183151832_
                                                 _hd5094451102_
                                                 _hd5094151092_)
                                                (_g5093350974_))))
                                      (if (gx#stx-null? _tl5094551105_)
                                          (___kont5183151832_
                                           _hd5094451102_
                                           _hd5094151092_)
                                          (_g5093350974_)))))
                              (if (gx#stx-null? _tl5094251095_)
                                  (___kont5183351834_
                                   _hd5094151092_
                                   _hd5093851082_)
                                  (_g5093350974_)))))
                      (_g5093350974_))))
              (_g5093350974_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx51146_)
      (let* ((_g5115051179_
              (lambda (_g5115151175_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5115151175_)))
             (_g5114951279_
              (lambda (_g5115151183_)
                (if (gx#stx-pair? _g5115151183_)
                    (let ((_e5115451186_ (gx#syntax-e _g5115151183_)))
                      (let ((_hd5115551190_ (##car _e5115451186_))
                            (_tl5115651193_ (##cdr _e5115451186_)))
                        (if (gx#stx-pair/null? _tl5115651193_)
                            (let ((_g51909_
                                   (gx#syntax-split-splice _tl5115651193_ '0)))
                              (begin
                                (let ((_g51910_
                                       (if (##values? _g51909_)
                                           (##vector-length _g51909_)
                                           1)))
                                  (if (not (##fx= _g51910_ 2))
                                      (error "Context expects 2 values"
                                             _g51910_)))
                                (let ((_target5115751196_
                                       (##vector-ref _g51909_ 0))
                                      (_tl5115951199_
                                       (##vector-ref _g51909_ 1)))
                                  (if (gx#stx-null? _tl5115951199_)
                                      (letrec ((_loop5116051202_
                                                (lambda (_hd5115851206_
                                                         _dispatch5116451209_
                                                         _arity5116551211_)
                                                  (if (gx#stx-pair?
                                                       _hd5115851206_)
                                                      (let ((_e5116151214_
                                                             (gx#syntax-e
                                                              _hd5115851206_)))
                                                        (let ((_lp-hd5116251218_
                                                               (##car _e5116151214_))
                                                              (_lp-tl5116351221_
                                                               (##cdr _e5116151214_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5116251218_)
                                                              (let ((_e5116851224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5116251218_)))
                        (let ((_hd5116951228_ (##car _e5116851224_))
                              (_tl5117051231_ (##cdr _e5116851224_)))
                          (if (gx#stx-pair? _tl5117051231_)
                              (let ((_e5117151234_
                                     (gx#syntax-e _tl5117051231_)))
                                (let ((_hd5117251238_ (##car _e5117151234_))
                                      (_tl5117351241_ (##cdr _e5117151234_)))
                                  (if (gx#stx-null? _tl5117351241_)
                                      (_loop5116051202_
                                       _lp-tl5116351221_
                                       (cons _hd5117251238_
                                             _dispatch5116451209_)
                                       (cons _hd5116951228_ _arity5116551211_))
                                      (_g5115051179_ _g5115151183_))))
                              (_g5115051179_ _g5115151183_))))
                      (_g5115051179_ _g5115151183_))))
              (let ((_dispatch5116651244_ (reverse _dispatch5116451209_))
                    (_arity5116751247_ (reverse _arity5116551211_)))
                ((lambda (_L51250_ _L51252_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L51250_
                                              _L51252_)
                                             (foldr2 (lambda (_g5126751271_
                                                              _g5126851274_
                                                              _g5126951276_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5126851274_ (cons _g5126751271_ '())))
                     _g5126951276_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L51250_
                                                     _L51252_)))
                                     '()))))
                 _dispatch5116651244_
                 _arity5116751247_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5116051202_
                                         _target5115751196_
                                         '()
                                         '()))
                                      (_g5115051179_ _g5115151183_)))))
                            (_g5115051179_ _g5115151183_))))
                    (_g5115051179_ _g5115151183_)))))
        (_g5114951279_ _$stx51146_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx51284_)
      (let* ((_g5128851306_
              (lambda (_g5128951302_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5128951302_)))
             (_g5128751361_
              (lambda (_g5128951310_)
                (if (gx#stx-pair? _g5128951310_)
                    (let ((_e5129251313_ (gx#syntax-e _g5128951310_)))
                      (let ((_hd5129351317_ (##car _e5129251313_))
                            (_tl5129451320_ (##cdr _e5129251313_)))
                        (if (gx#stx-pair? _tl5129451320_)
                            (let ((_e5129551323_ (gx#syntax-e _tl5129451320_)))
                              (let ((_hd5129651327_ (##car _e5129551323_))
                                    (_tl5129751330_ (##cdr _e5129551323_)))
                                (if (gx#stx-pair? _tl5129751330_)
                                    (let ((_e5129851333_
                                           (gx#syntax-e _tl5129751330_)))
                                      (let ((_hd5129951337_
                                             (##car _e5129851333_))
                                            (_tl5130051340_
                                             (##cdr _e5129851333_)))
                                        (if (gx#stx-null? _tl5130051340_)
                                            ((lambda (_L51343_ _L51345_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51345_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51343_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5129951337_
                                             _hd5129651327_)
                                            (_g5128851306_ _g5128951310_))))
                                    (_g5128851306_ _g5128951310_))))
                            (_g5128851306_ _g5128951310_))))
                    (_g5128851306_ _g5128951310_)))))
        (_g5128751361_ _$stx51284_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx51365_)
      (let* ((_g5136951387_
              (lambda (_g5137051383_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5137051383_)))
             (_g5136851442_
              (lambda (_g5137051391_)
                (if (gx#stx-pair? _g5137051391_)
                    (let ((_e5137351394_ (gx#syntax-e _g5137051391_)))
                      (let ((_hd5137451398_ (##car _e5137351394_))
                            (_tl5137551401_ (##cdr _e5137351394_)))
                        (if (gx#stx-pair? _tl5137551401_)
                            (let ((_e5137651404_ (gx#syntax-e _tl5137551401_)))
                              (let ((_hd5137751408_ (##car _e5137651404_))
                                    (_tl5137851411_ (##cdr _e5137651404_)))
                                (if (gx#stx-pair? _tl5137851411_)
                                    (let ((_e5137951414_
                                           (gx#syntax-e _tl5137851411_)))
                                      (let ((_hd5138051418_
                                             (##car _e5137951414_))
                                            (_tl5138151421_
                                             (##cdr _e5137951414_)))
                                        (if (gx#stx-null? _tl5138151421_)
                                            ((lambda (_L51424_ _L51426_)
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
                               (cons _L51426_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51424_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5138051418_
                                             _hd5137751408_)
                                            (_g5136951387_ _g5137051391_))))
                                    (_g5136951387_ _g5137051391_))))
                            (_g5136951387_ _g5137051391_))))
                    (_g5136951387_ _g5137051391_)))))
        (_g5136851442_ _$stx51365_)))))
