(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27637_)
      (let ((_g2764227661_
             (lambda (_g2764327657_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2764327657_))))
        (let ((_g2764127707_
               (lambda (_g2764327665_)
                 (if (gx#stx-pair? _g2764327665_)
                     (let ((_e2765027668_ (gx#syntax-e _g2764327665_)))
                       (let ((_hd2765127672_ (##car _e2765027668_))
                             (_tl2765227675_ (##cdr _e2765027668_)))
                         (if (gx#stx-pair? _tl2765227675_)
                             (let ((_e2765327678_
                                    (gx#syntax-e _tl2765227675_)))
                               (let ((_hd2765427682_ (##car _e2765327678_))
                                     (_tl2765527685_ (##cdr _e2765327678_)))
                                 ((lambda (_L27688_ _L27690_ _L27691_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27690_
                                                      (cons (cons _L27691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27688_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'else)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax-error)
                                (cons '"Missing required feature"
                                      (cons _L27690_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2765527685_
                                  _hd2765427682_
                                  _hd2765127672_)))
                             (_g2764227661_ _g2764327665_))))
                     (_g2764227661_ _g2764327665_)))))
          (let ((_g2764027728_
                 (lambda (_g2764327711_)
                   (if (gx#stx-pair? _g2764327711_)
                       (let ((_e2764427714_ (gx#syntax-e _g2764327711_)))
                         (let ((_hd2764527718_ (##car _e2764427714_))
                               (_tl2764627721_ (##cdr _e2764427714_)))
                           (if (gx#stx-null? _tl2764627721_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2764127707_ _g2764327711_))))
                       (_g2764127707_ _g2764327711_)))))
            (_g2764027728_ _$stx27637_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27732_)
      (let ((_g2773727777_
             (lambda (_g2773827773_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2773827773_))))
        (let ((_g2773627878_
               (lambda (_g2773827781_)
                 (if (gx#stx-pair? _g2773827781_)
                     (let ((_e2775427784_ (gx#syntax-e _g2773827781_)))
                       (let ((_hd2775527788_ (##car _e2775427784_))
                             (_tl2775627791_ (##cdr _e2775427784_)))
                         (if (gx#stx-pair? _tl2775627791_)
                             (let ((_e2775727794_
                                    (gx#syntax-e _tl2775627791_)))
                               (let ((_hd2775827798_ (##car _e2775727794_))
                                     (_tl2775927801_ (##cdr _e2775727794_)))
                                 (if (gx#stx-pair? _hd2775827798_)
                                     (let ((_e2776027804_
                                            (gx#syntax-e _hd2775827798_)))
                                       (let ((_hd2776127808_
                                              (##car _e2776027804_))
                                             (_tl2776227811_
                                              (##cdr _e2776027804_)))
                                         (if (gx#stx-pair/null? _tl2775927801_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2775927801_)
                                                       '0)
                                                 (let ((_g29866_
                                                        (gx#syntax-split-splice
                                                         _tl2775927801_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29867_
                                                            (values-count
                                                             _g29866_)))
                                                       (if (not (fx= _g29867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29867_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2776327814_
                                                            (values-ref
                                                             _g29866_
                                                             0))
                                                           (_tl2776527817_
                                                            (values-ref
                                                             _g29866_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2776527817_)
                                                           (letrec ((_loop2776627820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2776427824_ _body2777027827_)
                               (if (gx#stx-pair? _hd2776427824_)
                                   (let ((_e2776727830_
                                          (gx#syntax-e _hd2776427824_)))
                                     (let ((_lp-hd2776827834_
                                            (##car _e2776727830_))
                                           (_lp-tl2776927837_
                                            (##cdr _e2776727830_)))
                                       (_loop2776627820_
                                        _lp-tl2776927837_
                                        (cons _lp-hd2776827834_
                                              _body2777027827_))))
                                   (let ((_body2777127840_
                                          (reverse _body2777027827_)))
                                     ((lambda (_L27844_
                                               _L27846_
                                               _L27847_
                                               _L27848_)
                                        (if (gx#identifier? _L27847_)
                                            (cons _L27848_
                                                  (cons _L27847_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27846_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2786927872_
                                                    _g2787027875_)
                                             (cons _g2786927872_
                                                   _g2787027875_))
                                           '()
                                           _L27844_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2773727777_ _g2773827781_)))
                                      _body2777127840_
                                      _tl2776227811_
                                      _hd2776127808_
                                      _hd2775527788_))))))
                     (_loop2776627820_ _target2776327814_ '()))
                   (_g2773727777_ _g2773827781_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2773727777_ _g2773827781_))
                                             (_g2773727777_ _g2773827781_))))
                                     (_g2773727777_ _g2773827781_))))
                             (_g2773727777_ _g2773827781_))))
                     (_g2773727777_ _g2773827781_)))))
          (let ((_g2773527932_
                 (lambda (_g2773827882_)
                   (if (gx#stx-pair? _g2773827882_)
                       (let ((_e2774127885_ (gx#syntax-e _g2773827882_)))
                         (let ((_hd2774227889_ (##car _e2774127885_))
                               (_tl2774327892_ (##cdr _e2774127885_)))
                           (if (gx#stx-pair? _tl2774327892_)
                               (let ((_e2774427895_
                                      (gx#syntax-e _tl2774327892_)))
                                 (let ((_hd2774527899_ (##car _e2774427895_))
                                       (_tl2774627902_ (##cdr _e2774427895_)))
                                   (if (gx#stx-pair? _tl2774627902_)
                                       (let ((_e2774727905_
                                              (gx#syntax-e _tl2774627902_)))
                                         (let ((_hd2774827909_
                                                (##car _e2774727905_))
                                               (_tl2774927912_
                                                (##cdr _e2774727905_)))
                                           (if (gx#stx-null? _tl2774927912_)
                                               ((lambda (_L27915_ _L27917_)
                                                  (if (gx#identifier? _L27917_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27915_ '()))
                                '())))
              (_g2773627878_ _g2773827882_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2774827909_
                                                _hd2774527899_)
                                               (_g2773627878_ _g2773827882_))))
                                       (_g2773627878_ _g2773827882_))))
                               (_g2773627878_ _g2773827882_))))
                       (_g2773627878_ _g2773827882_)))))
            (_g2773527932_ _$stx27732_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27937_)
      (let ((_g2794227982_
             (lambda (_g2794327978_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2794327978_))))
        (let ((_g2794128083_
               (lambda (_g2794327986_)
                 (if (gx#stx-pair? _g2794327986_)
                     (let ((_e2795927989_ (gx#syntax-e _g2794327986_)))
                       (let ((_hd2796027993_ (##car _e2795927989_))
                             (_tl2796127996_ (##cdr _e2795927989_)))
                         (if (gx#stx-pair? _tl2796127996_)
                             (let ((_e2796227999_
                                    (gx#syntax-e _tl2796127996_)))
                               (let ((_hd2796328003_ (##car _e2796227999_))
                                     (_tl2796428006_ (##cdr _e2796227999_)))
                                 (if (gx#stx-pair? _hd2796328003_)
                                     (let ((_e2796528009_
                                            (gx#syntax-e _hd2796328003_)))
                                       (let ((_hd2796628013_
                                              (##car _e2796528009_))
                                             (_tl2796728016_
                                              (##cdr _e2796528009_)))
                                         (if (gx#stx-pair/null? _tl2796428006_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2796428006_)
                                                       '0)
                                                 (let ((_g29868_
                                                        (gx#syntax-split-splice
                                                         _tl2796428006_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29869_
                                                            (values-count
                                                             _g29868_)))
                                                       (if (not (fx= _g29869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29869_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2796828019_
                                                            (values-ref
                                                             _g29868_
                                                             0))
                                                           (_tl2797028022_
                                                            (values-ref
                                                             _g29868_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2797028022_)
                                                           (letrec ((_loop2797128025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2796928029_ _body2797528032_)
                               (if (gx#stx-pair? _hd2796928029_)
                                   (let ((_e2797228035_
                                          (gx#syntax-e _hd2796928029_)))
                                     (let ((_lp-hd2797328039_
                                            (##car _e2797228035_))
                                           (_lp-tl2797428042_
                                            (##cdr _e2797228035_)))
                                       (_loop2797128025_
                                        _lp-tl2797428042_
                                        (cons _lp-hd2797328039_
                                              _body2797528032_))))
                                   (let ((_body2797628045_
                                          (reverse _body2797528032_)))
                                     ((lambda (_L28049_
                                               _L28051_
                                               _L28052_
                                               _L28053_)
                                        (if (gx#identifier? _L28052_)
                                            (cons _L28053_
                                                  (cons _L28052_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L28051_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2807428077_
                                                    _g2807528080_)
                                             (cons _g2807428077_
                                                   _g2807528080_))
                                           '()
                                           _L28049_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2794227982_ _g2794327986_)))
                                      _body2797628045_
                                      _tl2796728016_
                                      _hd2796628013_
                                      _hd2796027993_))))))
                     (_loop2797128025_ _target2796828019_ '()))
                   (_g2794227982_ _g2794327986_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2794227982_ _g2794327986_))
                                             (_g2794227982_ _g2794327986_))))
                                     (_g2794227982_ _g2794327986_))))
                             (_g2794227982_ _g2794327986_))))
                     (_g2794227982_ _g2794327986_)))))
          (let ((_g2794028137_
                 (lambda (_g2794328087_)
                   (if (gx#stx-pair? _g2794328087_)
                       (let ((_e2794628090_ (gx#syntax-e _g2794328087_)))
                         (let ((_hd2794728094_ (##car _e2794628090_))
                               (_tl2794828097_ (##cdr _e2794628090_)))
                           (if (gx#stx-pair? _tl2794828097_)
                               (let ((_e2794928100_
                                      (gx#syntax-e _tl2794828097_)))
                                 (let ((_hd2795028104_ (##car _e2794928100_))
                                       (_tl2795128107_ (##cdr _e2794928100_)))
                                   (if (gx#stx-pair? _tl2795128107_)
                                       (let ((_e2795228110_
                                              (gx#syntax-e _tl2795128107_)))
                                         (let ((_hd2795328114_
                                                (##car _e2795228110_))
                                               (_tl2795428117_
                                                (##cdr _e2795228110_)))
                                           (if (gx#stx-null? _tl2795428117_)
                                               ((lambda (_L28120_ _L28122_)
                                                  (if (gx#identifier? _L28122_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L28122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L28120_ '()))
                                '())))
              (_g2794128083_ _g2794328087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2795328114_
                                                _hd2795028104_)
                                               (_g2794128083_ _g2794328087_))))
                                       (_g2794128083_ _g2794328087_))))
                               (_g2794128083_ _g2794328087_))))
                       (_g2794128083_ _g2794328087_)))))
            (_g2794028137_ _$stx27937_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx28142_)
       (let ((_g2814528169_
              (lambda (_g2814628165_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2814628165_))))
         (let ((_g2814428291_
                (lambda (_g2814628173_)
                  (if (gx#stx-pair? _g2814628173_)
                      (let ((_e2814928176_ (gx#syntax-e _g2814628173_)))
                        (let ((_hd2815028180_ (##car _e2814928176_))
                              (_tl2815128183_ (##cdr _e2814928176_)))
                          (if (gx#stx-pair? _tl2815128183_)
                              (let ((_e2815228186_
                                     (gx#syntax-e _tl2815128183_)))
                                (let ((_hd2815328190_ (##car _e2815228186_))
                                      (_tl2815428193_ (##cdr _e2815228186_)))
                                  (if (gx#stx-pair/null? _tl2815428193_)
                                      (if (fx>= (gx#stx-length _tl2815428193_)
                                                '0)
                                          (let ((_g29870_
                                                 (gx#syntax-split-splice
                                                  _tl2815428193_
                                                  '0)))
                                            (begin
                                              (let ((_g29871_
                                                     (values-count _g29870_)))
                                                (if (not (fx= _g29871_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29871_)))
                                              (let ((_target2815528196_
                                                     (values-ref _g29870_ 0))
                                                    (_tl2815728199_
                                                     (values-ref _g29870_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2815728199_)
                                                    (letrec ((_loop2815828202_
                                                              (lambda (_hd2815628206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2816228209_)
                        (if (gx#stx-pair? _hd2815628206_)
                            (let ((_e2815928212_ (gx#syntax-e _hd2815628206_)))
                              (let ((_lp-hd2816028216_ (##car _e2815928212_))
                                    (_lp-tl2816128219_ (##cdr _e2815928212_)))
                                (_loop2815828202_
                                 _lp-tl2816128219_
                                 (cons _lp-hd2816028216_ _id2816228209_))))
                            (let ((_id2816328222_ (reverse _id2816228209_)))
                              ((lambda (_L28226_ _L28228_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2824528248_
                                                        _g2824628251_)
                                                 (cons _g2824528248_
                                                       _g2824628251_))
                                               '()
                                               _L28226_)))
                                     (let ((_keys28262_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2825328256_
                                                               _g2825428259_)
                                                        (cons _g2825328256_
                                                              _g2825428259_))
                                                      '()
                                                      _L28226_)))))
                                       (let ((_keytab28273_
                                              (let ((_ht28265_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2826728269_)
                                                     (hash-put!
                                                      _ht28265_
                                                      _g2826728269_
                                                      '#t))
                                                   _keys28262_)
                                                  _ht28265_))))
                                         (let ((_imports28276_
                                                (gx#core-expand-import-source
                                                 _L28228_)))
                                           (let ((_fold-e28286_
                                                  (letrec ((_fold-e28279_
                                                            (lambda (_in28282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28284_)
                      (if (gx#module-import? _in28282_)
                          (if (hash-get
                               _keytab28273_
                               (gx#module-import-name _in28282_))
                              (cons _in28282_ _r28284_)
                              _r28284_)
                          (if (gx#import-set? _in28282_)
                              (foldl _fold-e28279_
                                     _r28284_
                                     (gx#import-set-imports _in28282_))
                              _r28284_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28279_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28286_
                                                            '()
                                                            _imports28276_)))))))
                                     (_g2814528169_ _g2814628173_)))
                               _id2816328222_
                               _hd2815328190_))))))
              (_loop2815828202_ _target2815528196_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2814528169_
                                                     _g2814628173_)))))
                                          (_g2814528169_ _g2814628173_))
                                      (_g2814528169_ _g2814628173_))))
                              (_g2814528169_ _g2814628173_))))
                      (_g2814528169_ _g2814628173_)))))
           (_g2814428291_ _stx28142_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx28296_)
       (let ((_g2829928323_
              (lambda (_g2830028319_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2830028319_))))
         (let ((_g2829828445_
                (lambda (_g2830028327_)
                  (if (gx#stx-pair? _g2830028327_)
                      (let ((_e2830328330_ (gx#syntax-e _g2830028327_)))
                        (let ((_hd2830428334_ (##car _e2830328330_))
                              (_tl2830528337_ (##cdr _e2830328330_)))
                          (if (gx#stx-pair? _tl2830528337_)
                              (let ((_e2830628340_
                                     (gx#syntax-e _tl2830528337_)))
                                (let ((_hd2830728344_ (##car _e2830628340_))
                                      (_tl2830828347_ (##cdr _e2830628340_)))
                                  (if (gx#stx-pair/null? _tl2830828347_)
                                      (if (fx>= (gx#stx-length _tl2830828347_)
                                                '0)
                                          (let ((_g29872_
                                                 (gx#syntax-split-splice
                                                  _tl2830828347_
                                                  '0)))
                                            (begin
                                              (let ((_g29873_
                                                     (values-count _g29872_)))
                                                (if (not (fx= _g29873_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29873_)))
                                              (let ((_target2830928350_
                                                     (values-ref _g29872_ 0))
                                                    (_tl2831128353_
                                                     (values-ref _g29872_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2831128353_)
                                                    (letrec ((_loop2831228356_
                                                              (lambda (_hd2831028360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2831628363_)
                        (if (gx#stx-pair? _hd2831028360_)
                            (let ((_e2831328366_ (gx#syntax-e _hd2831028360_)))
                              (let ((_lp-hd2831428370_ (##car _e2831328366_))
                                    (_lp-tl2831528373_ (##cdr _e2831328366_)))
                                (_loop2831228356_
                                 _lp-tl2831528373_
                                 (cons _lp-hd2831428370_ _id2831628363_))))
                            (let ((_id2831728376_ (reverse _id2831628363_)))
                              ((lambda (_L28380_ _L28382_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2839928402_
                                                        _g2840028405_)
                                                 (cons _g2839928402_
                                                       _g2840028405_))
                                               '()
                                               _L28380_)))
                                     (let ((_keys28416_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2840728410_
                                                               _g2840828413_)
                                                        (cons _g2840728410_
                                                              _g2840828413_))
                                                      '()
                                                      _L28380_)))))
                                       (let ((_keytab28427_
                                              (let ((_ht28419_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2842128423_)
                                                     (hash-put!
                                                      _ht28419_
                                                      _g2842128423_
                                                      '#t))
                                                   _keys28416_)
                                                  _ht28419_))))
                                         (let ((_imports28430_
                                                (gx#core-expand-import-source
                                                 _L28382_)))
                                           (let ((_fold-e28440_
                                                  (letrec ((_fold-e28433_
                                                            (lambda (_in28436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28438_)
                      (if (gx#module-import? _in28436_)
                          (if (hash-get
                               _keytab28427_
                               (gx#module-import-name _in28436_))
                              _r28438_
                              (cons _in28436_ _r28438_))
                          (if (gx#import-set? _in28436_)
                              (foldl _fold-e28433_
                                     _r28438_
                                     (gx#import-set-imports _in28436_))
                              (cons _in28436_ _r28438_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28433_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28440_
                                                            '()
                                                            _imports28430_)))))))
                                     (_g2829928323_ _g2830028327_)))
                               _id2831728376_
                               _hd2830728344_))))))
              (_loop2831228356_ _target2830928350_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2829928323_
                                                     _g2830028327_)))))
                                          (_g2829928323_ _g2830028327_))
                                      (_g2829928323_ _g2830028327_))))
                              (_g2829928323_ _g2830028327_))))
                      (_g2829928323_ _g2830028327_)))))
           (_g2829828445_ _stx28296_))))))
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in28497_ _rename28499_)
      (gx#make-module-import
       (gx#module-import-source _in28497_)
       _rename28499_
       (gx#module-import-phi _in28497_)
       (gx#module-import-weak? _in28497_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name28450_ _pre28452_)
      (let ((_name2845328461_ _name28450_))
        (let ((_E2845628467_
               (lambda () (error '"No clause matching" _name2845328461_))))
          (let ((_else2845528473_
                 (lambda () (make-symbol _pre28452_ _name28450_))))
            (let ((_K2845728481_
                   (lambda (_mark28477_ _id28479_)
                     (cons (make-symbol _pre28452_ _id28479_) _mark28477_))))
              (if (##pair? _name2845328461_)
                  (let ((_hd2845828485_ (##car _name2845328461_))
                        (_tl2845928488_ (##cdr _name2845328461_)))
                    (let ((_id28491_ _hd2845828485_))
                      (let ((_mark28494_ _tl2845928488_))
                        (_K2845728481_ _mark28494_ _id28491_))))
                  (_else2845528473_))))))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx28501_)
       (let ((_g2850428537_
              (lambda (_g2850528533_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2850528533_))))
         (let ((_g2850328723_
                (lambda (_g2850528541_)
                  (if (gx#stx-pair? _g2850528541_)
                      (let ((_e2850928544_ (gx#syntax-e _g2850528541_)))
                        (let ((_hd2851028548_ (##car _e2850928544_))
                              (_tl2851128551_ (##cdr _e2850928544_)))
                          (if (gx#stx-pair? _tl2851128551_)
                              (let ((_e2851228554_
                                     (gx#syntax-e _tl2851128551_)))
                                (let ((_hd2851328558_ (##car _e2851228554_))
                                      (_tl2851428561_ (##cdr _e2851228554_)))
                                  (if (gx#stx-pair/null? _tl2851428561_)
                                      (if (fx>= (gx#stx-length _tl2851428561_)
                                                '0)
                                          (let ((_g29874_
                                                 (gx#syntax-split-splice
                                                  _tl2851428561_
                                                  '0)))
                                            (begin
                                              (let ((_g29875_
                                                     (values-count _g29874_)))
                                                (if (not (fx= _g29875_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29875_)))
                                              (let ((_target2851528564_
                                                     (values-ref _g29874_ 0))
                                                    (_tl2851728567_
                                                     (values-ref _g29874_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2851728567_)
                                                    (letrec ((_loop2851828570_
                                                              (lambda (_hd2851628574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2852228577_
                               _id2852328579_)
                        (if (gx#stx-pair? _hd2851628574_)
                            (let ((_e2851928582_ (gx#syntax-e _hd2851628574_)))
                              (let ((_lp-hd2852028586_ (##car _e2851928582_))
                                    (_lp-tl2852128589_ (##cdr _e2851928582_)))
                                (if (gx#stx-pair? _lp-hd2852028586_)
                                    (let ((_e2852628592_
                                           (gx#syntax-e _lp-hd2852028586_)))
                                      (let ((_hd2852728596_
                                             (##car _e2852628592_))
                                            (_tl2852828599_
                                             (##cdr _e2852628592_)))
                                        (if (gx#stx-pair? _tl2852828599_)
                                            (let ((_e2852928602_
                                                   (gx#syntax-e
                                                    _tl2852828599_)))
                                              (let ((_hd2853028606_
                                                     (##car _e2852928602_))
                                                    (_tl2853128609_
                                                     (##cdr _e2852928602_)))
                                                (if (gx#stx-null?
                                                     _tl2853128609_)
                                                    (_loop2851828570_
                                                     _lp-tl2852128589_
                                                     (cons _hd2853028606_
                                                           _new-id2852228577_)
                                                     (cons _hd2852728596_
                                                           _id2852328579_))
                                                    (_g2850428537_
                                                     _g2850528541_))))
                                            (_g2850428537_ _g2850528541_))))
                                    (_g2850428537_ _g2850528541_))))
                            (let ((_new-id2852428612_
                                   (reverse _new-id2852228577_))
                                  (_id2852528615_ (reverse _id2852328579_)))
                              ((lambda (_L28618_ _L28620_ _L28621_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2863928642_
                                                            _g2864028645_)
                                                     (cons _g2863928642_
                                                           _g2864028645_))
                                                   '()
                                                   _L28620_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2864728650_
                                                            _g2864828653_)
                                                     (cons _g2864728650_
                                                           _g2864828653_))
                                                   '()
                                                   _L28618_)))
                                         '#f)
                                     (let ((_keytab28656_ (make-hash-table)))
                                       (let ((_found28659_ (make-hash-table)))
                                         (let ((_g29876_
                                                (for-each
                                                 (lambda (_id28662_
                                                          _new-id28664_)
                                                   (hash-put!
                                                    _keytab28656_
                                                    (gx#core-identifier-key
                                                     _id28662_)
                                                    (gx#core-identifier-key
                                                     _new-id28664_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2866528668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2866628671_)
                    (cons _g2866528668_ _g2866628671_))
                  '()
                  _L28620_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2867328676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2867428679_)
                    (cons _g2867328676_ _g2867428679_))
                  '()
                  _L28618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_imports28684_
                                                  (gx#core-expand-import-source
                                                   _L28621_)))
                                             (let ((_fold-e28704_
                                                    (letrec ((_fold-e28687_
                                                              (lambda (_in28690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28692_)
                        (if (gx#module-import? _in28690_)
                            (let ((_name28694_
                                   (gx#module-import-name _in28690_)))
                              (let ((_$e28697_
                                     (hash-get _keytab28656_ _name28694_)))
                                (if _$e28697_
                                    ((lambda (_rename28701_)
                                       (begin
                                         (hash-put!
                                          _found28659_
                                          _name28694_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                _in28690_
                                                _rename28701_)
                                               _r28692_)))
                                     _$e28697_)
                                    (cons _in28690_ _r28692_))))
                            (if (gx#import-set? _in28690_)
                                (foldl _fold-e28687_
                                       _r28692_
                                       (gx#import-set-imports _in28690_))
                                (cons _in28690_ _r28692_))))))
              _fold-e28687_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-imports28707_
                                                      (foldl _fold-e28704_
                                                             '()
                                                             _imports28684_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28712_)
                                                        (if (hash-get
                                                             _found28659_
                                                             (gx#core-identifier-key
                                                              _id28712_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the import set"
                                                             _stx28501_
                                                             _id28712_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2871428717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2871528720_)
                         (cons _g2871428717_ _g2871528720_))
                       '()
                       _L28620_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-imports28707_)))))))))
                                     (_g2850428537_ _g2850528541_)))
                               _new-id2852428612_
                               _id2852528615_
                               _hd2851328558_))))))
              (_loop2851828570_ _target2851528564_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2850428537_
                                                     _g2850528541_)))))
                                          (_g2850428537_ _g2850528541_))
                                      (_g2850428537_ _g2850528541_))))
                              (_g2850428537_ _g2850528541_))))
                      (_g2850428537_ _g2850528541_)))))
           (_g2850328723_ _stx28501_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx28729_)
       (let ((_g2873228750_
              (lambda (_g2873328746_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2873328746_))))
         (let ((_g2873128829_
                (lambda (_g2873328754_)
                  (if (gx#stx-pair? _g2873328754_)
                      (let ((_e2873628757_ (gx#syntax-e _g2873328754_)))
                        (let ((_hd2873728761_ (##car _e2873628757_))
                              (_tl2873828764_ (##cdr _e2873628757_)))
                          (if (gx#stx-pair? _tl2873828764_)
                              (let ((_e2873928767_
                                     (gx#syntax-e _tl2873828764_)))
                                (let ((_hd2874028771_ (##car _e2873928767_))
                                      (_tl2874128774_ (##cdr _e2873928767_)))
                                  (if (gx#stx-pair? _tl2874128774_)
                                      (let ((_e2874228777_
                                             (gx#syntax-e _tl2874128774_)))
                                        (let ((_hd2874328781_
                                               (##car _e2874228777_))
                                              (_tl2874428784_
                                               (##cdr _e2874228777_)))
                                          (if (gx#stx-null? _tl2874428784_)
                                              ((lambda (_L28787_ _L28789_)
                                                 (if (gx#identifier? _L28787_)
                                                     (let ((_pre28805_
                                                            (gx#stx-e
                                                             _L28787_)))
                                                       (let ((_imports28808_
                                                              (gx#core-expand-import-source
                                                               _L28789_)))
                                                         (let ((_rename-e28814_
                                                                (lambda (_name28811_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name28811_
                           _pre28805_))))
                   (let ((_fold-e28824_
                          (letrec ((_fold-e28817_
                                    (lambda (_in28820_ _r28822_)
                                      (if (gx#module-import? _in28820_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                 _in28820_
                                                 (_rename-e28814_
                                                  (gx#module-import-name
                                                   _in28820_)))
                                                _r28822_)
                                          (if (gx#import-set? _in28820_)
                                              (foldl _fold-e28817_
                                                     _r28822_
                                                     (gx#import-set-imports
                                                      _in28820_))
                                              (cons _in28820_ _r28822_))))))
                            _fold-e28817_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e28824_ '() _imports28808_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2873228750_
                                                      _g2873328754_)))
                                               _hd2874328781_
                                               _hd2874028771_)
                                              (_g2873228750_ _g2873328754_))))
                                      (_g2873228750_ _g2873328754_))))
                              (_g2873228750_ _g2873328754_))))
                      (_g2873228750_ _g2873328754_)))))
           (_g2873128829_ _stx28729_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx28833_)
       (let ((_g2883628860_
              (lambda (_g2883728856_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2883728856_))))
         (let ((_g2883528982_
                (lambda (_g2883728864_)
                  (if (gx#stx-pair? _g2883728864_)
                      (let ((_e2884028867_ (gx#syntax-e _g2883728864_)))
                        (let ((_hd2884128871_ (##car _e2884028867_))
                              (_tl2884228874_ (##cdr _e2884028867_)))
                          (if (gx#stx-pair? _tl2884228874_)
                              (let ((_e2884328877_
                                     (gx#syntax-e _tl2884228874_)))
                                (let ((_hd2884428881_ (##car _e2884328877_))
                                      (_tl2884528884_ (##cdr _e2884328877_)))
                                  (if (gx#stx-pair/null? _tl2884528884_)
                                      (if (fx>= (gx#stx-length _tl2884528884_)
                                                '0)
                                          (let ((_g29877_
                                                 (gx#syntax-split-splice
                                                  _tl2884528884_
                                                  '0)))
                                            (begin
                                              (let ((_g29878_
                                                     (values-count _g29877_)))
                                                (if (not (fx= _g29878_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29878_)))
                                              (let ((_target2884628887_
                                                     (values-ref _g29877_ 0))
                                                    (_tl2884828890_
                                                     (values-ref _g29877_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2884828890_)
                                                    (letrec ((_loop2884928893_
                                                              (lambda (_hd2884728897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2885328900_)
                        (if (gx#stx-pair? _hd2884728897_)
                            (let ((_e2885028903_ (gx#syntax-e _hd2884728897_)))
                              (let ((_lp-hd2885128907_ (##car _e2885028903_))
                                    (_lp-tl2885228910_ (##cdr _e2885028903_)))
                                (_loop2884928893_
                                 _lp-tl2885228910_
                                 (cons _lp-hd2885128907_ _id2885328900_))))
                            (let ((_id2885428913_ (reverse _id2885328900_)))
                              ((lambda (_L28917_ _L28919_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2893628939_
                                                        _g2893728942_)
                                                 (cons _g2893628939_
                                                       _g2893728942_))
                                               '()
                                               _L28917_)))
                                     (let ((_keys28953_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2894428947_
                                                               _g2894528950_)
                                                        (cons _g2894428947_
                                                              _g2894528950_))
                                                      '()
                                                      _L28917_)))))
                                       (let ((_keytab28964_
                                              (let ((_ht28956_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2895828960_)
                                                     (hash-put!
                                                      _ht28956_
                                                      _g2895828960_
                                                      '#t))
                                                   _keys28953_)
                                                  _ht28956_))))
                                         (let ((_exports28967_
                                                (gx#core-expand-export-source
                                                 _L28919_)))
                                           (let ((_fold-e28977_
                                                  (letrec ((_fold-e28970_
                                                            (lambda (_out28973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28975_)
                      (if (gx#module-export? _out28973_)
                          (if (hash-get
                               _keytab28964_
                               (gx#module-export-name _out28973_))
                              _r28975_
                              (cons _out28973_ _r28975_))
                          (if (gx#export-set? _out28973_)
                              (foldl _fold-e28970_
                                     _r28975_
                                     (gx#export-set-exports _out28973_))
                              _r28975_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28970_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28977_
                                                            '()
                                                            _exports28967_)))))))
                                     (_g2883628860_ _g2883728864_)))
                               _id2885428913_
                               _hd2884428881_))))))
              (_loop2884928893_ _target2884628887_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2883628860_
                                                     _g2883728864_)))))
                                          (_g2883628860_ _g2883728864_))
                                      (_g2883628860_ _g2883728864_))))
                              (_g2883628860_ _g2883728864_))))
                      (_g2883628860_ _g2883728864_)))))
           (_g2883528982_ _stx28833_))))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out28987_ _rename28989_)
      (gx#make-module-export
       (gx#module-export-context _out28987_)
       (gx#module-export-key _out28987_)
       (gx#module-export-phi _out28987_)
       _rename28989_
       (gx#module-export-weak? _out28987_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx28991_)
       (let ((_g2899429027_
              (lambda (_g2899529023_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2899529023_))))
         (let ((_g2899329213_
                (lambda (_g2899529031_)
                  (if (gx#stx-pair? _g2899529031_)
                      (let ((_e2899929034_ (gx#syntax-e _g2899529031_)))
                        (let ((_hd2900029038_ (##car _e2899929034_))
                              (_tl2900129041_ (##cdr _e2899929034_)))
                          (if (gx#stx-pair? _tl2900129041_)
                              (let ((_e2900229044_
                                     (gx#syntax-e _tl2900129041_)))
                                (let ((_hd2900329048_ (##car _e2900229044_))
                                      (_tl2900429051_ (##cdr _e2900229044_)))
                                  (if (gx#stx-pair/null? _tl2900429051_)
                                      (if (fx>= (gx#stx-length _tl2900429051_)
                                                '0)
                                          (let ((_g29879_
                                                 (gx#syntax-split-splice
                                                  _tl2900429051_
                                                  '0)))
                                            (begin
                                              (let ((_g29880_
                                                     (values-count _g29879_)))
                                                (if (not (fx= _g29880_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29880_)))
                                              (let ((_target2900529054_
                                                     (values-ref _g29879_ 0))
                                                    (_tl2900729057_
                                                     (values-ref _g29879_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2900729057_)
                                                    (letrec ((_loop2900829060_
                                                              (lambda (_hd2900629064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2901229067_
                               _id2901329069_)
                        (if (gx#stx-pair? _hd2900629064_)
                            (let ((_e2900929072_ (gx#syntax-e _hd2900629064_)))
                              (let ((_lp-hd2901029076_ (##car _e2900929072_))
                                    (_lp-tl2901129079_ (##cdr _e2900929072_)))
                                (if (gx#stx-pair? _lp-hd2901029076_)
                                    (let ((_e2901629082_
                                           (gx#syntax-e _lp-hd2901029076_)))
                                      (let ((_hd2901729086_
                                             (##car _e2901629082_))
                                            (_tl2901829089_
                                             (##cdr _e2901629082_)))
                                        (if (gx#stx-pair? _tl2901829089_)
                                            (let ((_e2901929092_
                                                   (gx#syntax-e
                                                    _tl2901829089_)))
                                              (let ((_hd2902029096_
                                                     (##car _e2901929092_))
                                                    (_tl2902129099_
                                                     (##cdr _e2901929092_)))
                                                (if (gx#stx-null?
                                                     _tl2902129099_)
                                                    (_loop2900829060_
                                                     _lp-tl2901129079_
                                                     (cons _hd2902029096_
                                                           _new-id2901229067_)
                                                     (cons _hd2901729086_
                                                           _id2901329069_))
                                                    (_g2899429027_
                                                     _g2899529031_))))
                                            (_g2899429027_ _g2899529031_))))
                                    (_g2899429027_ _g2899529031_))))
                            (let ((_new-id2901429102_
                                   (reverse _new-id2901229067_))
                                  (_id2901529105_ (reverse _id2901329069_)))
                              ((lambda (_L29108_ _L29110_ _L29111_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2912929132_
                                                            _g2913029135_)
                                                     (cons _g2912929132_
                                                           _g2913029135_))
                                                   '()
                                                   _L29110_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2913729140_
                                                            _g2913829143_)
                                                     (cons _g2913729140_
                                                           _g2913829143_))
                                                   '()
                                                   _L29108_)))
                                         '#f)
                                     (let ((_keytab29146_ (make-hash-table)))
                                       (let ((_found29149_ (make-hash-table)))
                                         (let ((_g29881_
                                                (for-each
                                                 (lambda (_id29152_
                                                          _new-id29154_)
                                                   (hash-put!
                                                    _keytab29146_
                                                    (gx#core-identifier-key
                                                     _id29152_)
                                                    (gx#core-identifier-key
                                                     _new-id29154_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2915529158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2915629161_)
                    (cons _g2915529158_ _g2915629161_))
                  '()
                  _L29110_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2916329166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2916429169_)
                    (cons _g2916329166_ _g2916429169_))
                  '()
                  _L29108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_exports29174_
                                                  (gx#core-expand-export-source
                                                   _L29111_)))
                                             (let ((_fold-e29194_
                                                    (letrec ((_fold-e29177_
                                                              (lambda (_out29180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r29182_)
                        (if (gx#module-export? _out29180_)
                            (let ((_name29184_
                                   (gx#module-export-name _out29180_)))
                              (let ((_$e29187_
                                     (hash-get _keytab29146_ _name29184_)))
                                (if _$e29187_
                                    ((lambda (_rename29191_)
                                       (begin
                                         (hash-put!
                                          _found29149_
                                          _name29184_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                _out29180_
                                                _rename29191_)
                                               _r29182_)))
                                     _$e29187_)
                                    (cons _out29180_ _r29182_))))
                            (if (gx#export-set? _out29180_)
                                (foldl _fold-e29177_
                                       _r29182_
                                       (gx#export-set-exports _out29180_))
                                (cons _out29180_ _r29182_))))))
              _fold-e29177_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-exports29197_
                                                      (foldl _fold-e29194_
                                                             '()
                                                             _exports29174_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id29202_)
                                                        (if (hash-get
                                                             _found29149_
                                                             (gx#core-identifier-key
                                                              _id29202_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the export set"
                                                             _stx28991_
                                                             _id29202_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2920429207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2920529210_)
                         (cons _g2920429207_ _g2920529210_))
                       '()
                       _L29110_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-exports29197_)))))))))
                                     (_g2899429027_ _g2899529031_)))
                               _new-id2901429102_
                               _id2901529105_
                               _hd2900329048_))))))
              (_loop2900829060_ _target2900529054_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2899429027_
                                                     _g2899529031_)))))
                                          (_g2899429027_ _g2899529031_))
                                      (_g2899429027_ _g2899529031_))))
                              (_g2899429027_ _g2899529031_))))
                      (_g2899429027_ _g2899529031_)))))
           (_g2899329213_ _stx28991_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx29219_)
       (let ((_g2922229240_
              (lambda (_g2922329236_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2922329236_))))
         (let ((_g2922129319_
                (lambda (_g2922329244_)
                  (if (gx#stx-pair? _g2922329244_)
                      (let ((_e2922629247_ (gx#syntax-e _g2922329244_)))
                        (let ((_hd2922729251_ (##car _e2922629247_))
                              (_tl2922829254_ (##cdr _e2922629247_)))
                          (if (gx#stx-pair? _tl2922829254_)
                              (let ((_e2922929257_
                                     (gx#syntax-e _tl2922829254_)))
                                (let ((_hd2923029261_ (##car _e2922929257_))
                                      (_tl2923129264_ (##cdr _e2922929257_)))
                                  (if (gx#stx-pair? _tl2923129264_)
                                      (let ((_e2923229267_
                                             (gx#syntax-e _tl2923129264_)))
                                        (let ((_hd2923329271_
                                               (##car _e2923229267_))
                                              (_tl2923429274_
                                               (##cdr _e2923229267_)))
                                          (if (gx#stx-null? _tl2923429274_)
                                              ((lambda (_L29277_ _L29279_)
                                                 (if (gx#identifier? _L29277_)
                                                     (let ((_pre29295_
                                                            (gx#stx-e
                                                             _L29277_)))
                                                       (let ((_exports29298_
                                                              (gx#core-expand-export-source
                                                               _L29279_)))
                                                         (let ((_rename-e29304_
                                                                (lambda (_name29301_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name29301_
                           _pre29295_))))
                   (let ((_fold-e29314_
                          (letrec ((_fold-e29307_
                                    (lambda (_out29310_ _r29312_)
                                      (if (gx#module-export? _out29310_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                 _out29310_
                                                 (_rename-e29304_
                                                  (gx#module-export-name
                                                   _out29310_)))
                                                _r29312_)
                                          (if (gx#export-set? _out29310_)
                                              (foldl _fold-e29307_
                                                     _r29312_
                                                     (gx#export-set-exports
                                                      _out29310_))
                                              (cons _out29310_ _r29312_))))))
                            _fold-e29307_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29314_ '() _exports29298_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2922229240_
                                                      _g2922329244_)))
                                               _hd2923329271_
                                               _hd2923029261_)
                                              (_g2922229240_ _g2922329244_))))
                                      (_g2922229240_ _g2922329244_))))
                              (_g2922229240_ _g2922329244_))))
                      (_g2922229240_ _g2922329244_)))))
           (_g2922129319_ _stx29219_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx29323_)
       (let ((_g2932629346_
              (lambda (_g2932729342_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2932729342_))))
         (let ((_g2932529581_
                (lambda (_g2932729350_)
                  (if (gx#stx-pair? _g2932729350_)
                      (let ((_e2932929353_ (gx#syntax-e _g2932729350_)))
                        (let ((_hd2933029357_ (##car _e2932929353_))
                              (_tl2933129360_ (##cdr _e2932929353_)))
                          (if (gx#stx-pair/null? _tl2933129360_)
                              (if (fx>= (gx#stx-length _tl2933129360_) '0)
                                  (let ((_g29882_
                                         (gx#syntax-split-splice
                                          _tl2933129360_
                                          '0)))
                                    (begin
                                      (let ((_g29883_ (values-count _g29882_)))
                                        (if (not (fx= _g29883_ 2))
                                            (error "Context expects 2 values"
                                                   _g29883_)))
                                      (let ((_target2933229363_
                                             (values-ref _g29882_ 0))
                                            (_tl2933429366_
                                             (values-ref _g29882_ 1)))
                                        (if (gx#stx-null? _tl2933429366_)
                                            (letrec ((_loop2933529369_
                                                      (lambda (_hd2933329373_
                                                               _id2933929376_)
                                                        (if (gx#stx-pair?
                                                             _hd2933329373_)
                                                            (let ((_e2933629379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2933329373_)))
                      (let ((_lp-hd2933729383_ (##car _e2933629379_))
                            (_lp-tl2933829386_ (##cdr _e2933629379_)))
                        (_loop2933529369_
                         _lp-tl2933829386_
                         (cons _lp-hd2933729383_ _id2933929376_))))
                    (let ((_id2934029389_ (reverse _id2933929376_)))
                      ((lambda (_L29393_)
                         ((letrec ((_lp29409_
                                    (lambda (_rest29412_ _ids29414_)
                                      (let ((_g2941729429_
                                             (lambda (_g2941829425_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2941829425_))))
                                        (let ((_g2941629440_
                                               (lambda (_g2941829433_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids29414_))))))
                                          (let ((_g2941529569_
                                                 (lambda (_g2941829444_)
                                                   (if (gx#stx-pair?
                                                        _g2941829444_)
                                                       (let ((_e2942129447_
                                                              (gx#syntax-e
                                                               _g2941829444_)))
                                                         (let ((_hd2942229451_
                                                                (##car _e2942129447_))
                                                               (_tl2942329454_
                                                                (##cdr _e2942129447_)))
                                                           ((lambda (_L29457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L29459_)
                      (let ((_info29474_
                             (gx#syntax-local-value _L29459_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info29474_)
                            (let ((_g2947629493_
                                   (slot-ref
                                    _info29474_
                                    'expander-identifiers)))
                              (let ((_E2947829499_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2947629493_))))
                                (let ((_K2947929511_
                                       (lambda (_setf29503_
                                                _getf29505_
                                                _type?29506_
                                                _make-type29507_
                                                _type::t29508_
                                                _super29509_)
                                         (_lp29409_
                                          _L29457_
                                          (cons _L29459_
                                                (cons _type::t29508_
                                                      (cons _make-type29507_
                                                            (cons _type?29506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids29414_ _setf29503_)
                                 _getf29505_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2947629493_)
                                      (let ((_hd2948029515_
                                             (##car _g2947629493_))
                                            (_tl2948129518_
                                             (##cdr _g2947629493_)))
                                        (let ((_super29521_ _hd2948029515_))
                                          (if (##pair? _tl2948129518_)
                                              (let ((_hd2948229524_
                                                     (##car _tl2948129518_))
                                                    (_tl2948329527_
                                                     (##cdr _tl2948129518_)))
                                                (let ((_type::t29530_
                                                       _hd2948229524_))
                                                  (if (##pair? _tl2948329527_)
                                                      (let ((_hd2948429533_
                                                             (##car _tl2948329527_))
                                                            (_tl2948529536_
                                                             (##cdr _tl2948329527_)))
                                                        (let ((_make-type29539_
                                                               _hd2948429533_))
                                                          (if (##pair? _tl2948529536_)
                                                              (let ((_hd2948629542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2948529536_))
                            (_tl2948729545_ (##cdr _tl2948529536_)))
                        (let ((_type?29548_ _hd2948629542_))
                          (if (##pair? _tl2948729545_)
                              (let ((_hd2948829551_ (##car _tl2948729545_))
                                    (_tl2948929554_ (##cdr _tl2948729545_)))
                                (let ((_getf29557_ _hd2948829551_))
                                  (if (##pair? _tl2948929554_)
                                      (let ((_hd2949029560_
                                             (##car _tl2948929554_))
                                            (_tl2949129563_
                                             (##cdr _tl2948929554_)))
                                        (let ((_setf29566_ _hd2949029560_))
                                          (if (##null? _tl2949129563_)
                                              (_K2947929511_
                                               _setf29566_
                                               _getf29557_
                                               _type?29548_
                                               _make-type29539_
                                               _type::t29530_
                                               _super29521_)
                                              (_E2947829499_))))
                                      (_E2947829499_))))
                              (_E2947829499_))))
                      (_E2947829499_))))
              (_E2947829499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2947829499_))))
                                      (_E2947829499_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx29323_
                             _L29459_))))
                    _tl2942329454_
                    _hd2942229451_)))
               (_g2941629440_ _g2941829444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2941529569_ _rest29412_)))))))
                            _lp29409_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2957229575_ _g2957329578_)
                                     (cons _g2957229575_ _g2957329578_))
                                   '()
                                   _L29393_))
                          '()))
                       _id2934029389_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2933529369_
                                               _target2933229363_
                                               '()))
                                            (_g2932629346_ _g2932729350_)))))
                                  (_g2932629346_ _g2932729350_))
                              (_g2932629346_ _g2932729350_))))
                      (_g2932629346_ _g2932729350_)))))
           (_g2932529581_ _stx29323_)))))))
