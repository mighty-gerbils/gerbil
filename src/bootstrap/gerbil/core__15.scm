(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27121_)
      (let ((_g2712627145_
             (lambda (_g2712727141_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2712727141_))))
        (let ((_g2712527191_
               (lambda (_g2712727149_)
                 (if (gx#stx-pair? _g2712727149_)
                     (let ((_e2713427152_ (gx#syntax-e _g2712727149_)))
                       (let ((_hd2713527156_ (##car _e2713427152_))
                             (_tl2713627159_ (##cdr _e2713427152_)))
                         (if (gx#stx-pair? _tl2713627159_)
                             (let ((_e2713727162_
                                    (gx#syntax-e _tl2713627159_)))
                               (let ((_hd2713827166_ (##car _e2713727162_))
                                     (_tl2713927169_ (##cdr _e2713727162_)))
                                 ((lambda (_L27172_ _L27174_ _L27175_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27174_
                                                      (cons (cons _L27175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27172_)
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
                                      (cons _L27174_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2713927169_
                                  _hd2713827166_
                                  _hd2713527156_)))
                             (_g2712627145_ _g2712727149_))))
                     (_g2712627145_ _g2712727149_)))))
          (let ((_g2712427212_
                 (lambda (_g2712727195_)
                   (if (gx#stx-pair? _g2712727195_)
                       (let ((_e2712827198_ (gx#syntax-e _g2712727195_)))
                         (let ((_hd2712927202_ (##car _e2712827198_))
                               (_tl2713027205_ (##cdr _e2712827198_)))
                           (if (gx#stx-null? _tl2713027205_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2712527191_ _g2712727195_))))
                       (_g2712527191_ _g2712727195_)))))
            (_g2712427212_ _$stx27121_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27216_)
      (let ((_g2722127261_
             (lambda (_g2722227257_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2722227257_))))
        (let ((_g2722027362_
               (lambda (_g2722227265_)
                 (if (gx#stx-pair? _g2722227265_)
                     (let ((_e2723827268_ (gx#syntax-e _g2722227265_)))
                       (let ((_hd2723927272_ (##car _e2723827268_))
                             (_tl2724027275_ (##cdr _e2723827268_)))
                         (if (gx#stx-pair? _tl2724027275_)
                             (let ((_e2724127278_
                                    (gx#syntax-e _tl2724027275_)))
                               (let ((_hd2724227282_ (##car _e2724127278_))
                                     (_tl2724327285_ (##cdr _e2724127278_)))
                                 (if (gx#stx-pair? _hd2724227282_)
                                     (let ((_e2724427288_
                                            (gx#syntax-e _hd2724227282_)))
                                       (let ((_hd2724527292_
                                              (##car _e2724427288_))
                                             (_tl2724627295_
                                              (##cdr _e2724427288_)))
                                         (if (gx#stx-pair/null? _tl2724327285_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2724327285_)
                                                       '0)
                                                 (let ((_g28476_
                                                        (gx#syntax-split-splice
                                                         _tl2724327285_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28477_
                                                            (values-count
                                                             _g28476_)))
                                                       (if (not (fx= _g28477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28477_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2724727298_
                                                            (values-ref
                                                             _g28476_
                                                             0))
                                                           (_tl2724927301_
                                                            (values-ref
                                                             _g28476_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2724927301_)
                                                           (letrec ((_loop2725027304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2724827308_ _body2725427311_)
                               (if (gx#stx-pair? _hd2724827308_)
                                   (let ((_e2725127314_
                                          (gx#syntax-e _hd2724827308_)))
                                     (let ((_lp-hd2725227318_
                                            (##car _e2725127314_))
                                           (_lp-tl2725327321_
                                            (##cdr _e2725127314_)))
                                       (_loop2725027304_
                                        _lp-tl2725327321_
                                        (cons _lp-hd2725227318_
                                              _body2725427311_))))
                                   (let ((_body2725527324_
                                          (reverse _body2725427311_)))
                                     ((lambda (_L27328_
                                               _L27330_
                                               _L27331_
                                               _L27332_)
                                        (if (gx#identifier? _L27331_)
                                            (cons _L27332_
                                                  (cons _L27331_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27330_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2735327356_
                                                    _g2735427359_)
                                             (cons _g2735327356_
                                                   _g2735427359_))
                                           '()
                                           _L27328_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2722127261_ _g2722227265_)))
                                      _body2725527324_
                                      _tl2724627295_
                                      _hd2724527292_
                                      _hd2723927272_))))))
                     (_loop2725027304_ _target2724727298_ '()))
                   (_g2722127261_ _g2722227265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2722127261_ _g2722227265_))
                                             (_g2722127261_ _g2722227265_))))
                                     (_g2722127261_ _g2722227265_))))
                             (_g2722127261_ _g2722227265_))))
                     (_g2722127261_ _g2722227265_)))))
          (let ((_g2721927416_
                 (lambda (_g2722227366_)
                   (if (gx#stx-pair? _g2722227366_)
                       (let ((_e2722527369_ (gx#syntax-e _g2722227366_)))
                         (let ((_hd2722627373_ (##car _e2722527369_))
                               (_tl2722727376_ (##cdr _e2722527369_)))
                           (if (gx#stx-pair? _tl2722727376_)
                               (let ((_e2722827379_
                                      (gx#syntax-e _tl2722727376_)))
                                 (let ((_hd2722927383_ (##car _e2722827379_))
                                       (_tl2723027386_ (##cdr _e2722827379_)))
                                   (if (gx#stx-pair? _tl2723027386_)
                                       (let ((_e2723127389_
                                              (gx#syntax-e _tl2723027386_)))
                                         (let ((_hd2723227393_
                                                (##car _e2723127389_))
                                               (_tl2723327396_
                                                (##cdr _e2723127389_)))
                                           (if (gx#stx-null? _tl2723327396_)
                                               ((lambda (_L27399_ _L27401_)
                                                  (if (gx#identifier? _L27401_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27399_ '()))
                                '())))
              (_g2722027362_ _g2722227366_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2723227393_
                                                _hd2722927383_)
                                               (_g2722027362_ _g2722227366_))))
                                       (_g2722027362_ _g2722227366_))))
                               (_g2722027362_ _g2722227366_))))
                       (_g2722027362_ _g2722227366_)))))
            (_g2721927416_ _$stx27216_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27421_)
      (let ((_g2742627466_
             (lambda (_g2742727462_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2742727462_))))
        (let ((_g2742527567_
               (lambda (_g2742727470_)
                 (if (gx#stx-pair? _g2742727470_)
                     (let ((_e2744327473_ (gx#syntax-e _g2742727470_)))
                       (let ((_hd2744427477_ (##car _e2744327473_))
                             (_tl2744527480_ (##cdr _e2744327473_)))
                         (if (gx#stx-pair? _tl2744527480_)
                             (let ((_e2744627483_
                                    (gx#syntax-e _tl2744527480_)))
                               (let ((_hd2744727487_ (##car _e2744627483_))
                                     (_tl2744827490_ (##cdr _e2744627483_)))
                                 (if (gx#stx-pair? _hd2744727487_)
                                     (let ((_e2744927493_
                                            (gx#syntax-e _hd2744727487_)))
                                       (let ((_hd2745027497_
                                              (##car _e2744927493_))
                                             (_tl2745127500_
                                              (##cdr _e2744927493_)))
                                         (if (gx#stx-pair/null? _tl2744827490_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2744827490_)
                                                       '0)
                                                 (let ((_g28478_
                                                        (gx#syntax-split-splice
                                                         _tl2744827490_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28479_
                                                            (values-count
                                                             _g28478_)))
                                                       (if (not (fx= _g28479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28479_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2745227503_
                                                            (values-ref
                                                             _g28478_
                                                             0))
                                                           (_tl2745427506_
                                                            (values-ref
                                                             _g28478_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2745427506_)
                                                           (letrec ((_loop2745527509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2745327513_ _body2745927516_)
                               (if (gx#stx-pair? _hd2745327513_)
                                   (let ((_e2745627519_
                                          (gx#syntax-e _hd2745327513_)))
                                     (let ((_lp-hd2745727523_
                                            (##car _e2745627519_))
                                           (_lp-tl2745827526_
                                            (##cdr _e2745627519_)))
                                       (_loop2745527509_
                                        _lp-tl2745827526_
                                        (cons _lp-hd2745727523_
                                              _body2745927516_))))
                                   (let ((_body2746027529_
                                          (reverse _body2745927516_)))
                                     ((lambda (_L27533_
                                               _L27535_
                                               _L27536_
                                               _L27537_)
                                        (if (gx#identifier? _L27536_)
                                            (cons _L27537_
                                                  (cons _L27536_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27535_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2755827561_
                                                    _g2755927564_)
                                             (cons _g2755827561_
                                                   _g2755927564_))
                                           '()
                                           _L27533_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2742627466_ _g2742727470_)))
                                      _body2746027529_
                                      _tl2745127500_
                                      _hd2745027497_
                                      _hd2744427477_))))))
                     (_loop2745527509_ _target2745227503_ '()))
                   (_g2742627466_ _g2742727470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2742627466_ _g2742727470_))
                                             (_g2742627466_ _g2742727470_))))
                                     (_g2742627466_ _g2742727470_))))
                             (_g2742627466_ _g2742727470_))))
                     (_g2742627466_ _g2742727470_)))))
          (let ((_g2742427621_
                 (lambda (_g2742727571_)
                   (if (gx#stx-pair? _g2742727571_)
                       (let ((_e2743027574_ (gx#syntax-e _g2742727571_)))
                         (let ((_hd2743127578_ (##car _e2743027574_))
                               (_tl2743227581_ (##cdr _e2743027574_)))
                           (if (gx#stx-pair? _tl2743227581_)
                               (let ((_e2743327584_
                                      (gx#syntax-e _tl2743227581_)))
                                 (let ((_hd2743427588_ (##car _e2743327584_))
                                       (_tl2743527591_ (##cdr _e2743327584_)))
                                   (if (gx#stx-pair? _tl2743527591_)
                                       (let ((_e2743627594_
                                              (gx#syntax-e _tl2743527591_)))
                                         (let ((_hd2743727598_
                                                (##car _e2743627594_))
                                               (_tl2743827601_
                                                (##cdr _e2743627594_)))
                                           (if (gx#stx-null? _tl2743827601_)
                                               ((lambda (_L27604_ _L27606_)
                                                  (if (gx#identifier? _L27606_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L27604_ '()))
                                '())))
              (_g2742527567_ _g2742727571_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2743727598_
                                                _hd2743427588_)
                                               (_g2742527567_ _g2742727571_))))
                                       (_g2742527567_ _g2742727571_))))
                               (_g2742527567_ _g2742727571_))))
                       (_g2742527567_ _g2742727571_)))))
            (_g2742427621_ _$stx27421_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx27626_)
       (let ((_g2762927653_
              (lambda (_g2763027649_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2763027649_))))
         (let ((_g2762827775_
                (lambda (_g2763027657_)
                  (if (gx#stx-pair? _g2763027657_)
                      (let ((_e2763327660_ (gx#syntax-e _g2763027657_)))
                        (let ((_hd2763427664_ (##car _e2763327660_))
                              (_tl2763527667_ (##cdr _e2763327660_)))
                          (if (gx#stx-pair? _tl2763527667_)
                              (let ((_e2763627670_
                                     (gx#syntax-e _tl2763527667_)))
                                (let ((_hd2763727674_ (##car _e2763627670_))
                                      (_tl2763827677_ (##cdr _e2763627670_)))
                                  (if (gx#stx-pair/null? _tl2763827677_)
                                      (if (fx>= (gx#stx-length _tl2763827677_)
                                                '0)
                                          (let ((_g28480_
                                                 (gx#syntax-split-splice
                                                  _tl2763827677_
                                                  '0)))
                                            (begin
                                              (let ((_g28481_
                                                     (values-count _g28480_)))
                                                (if (not (fx= _g28481_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28481_)))
                                              (let ((_target2763927680_
                                                     (values-ref _g28480_ 0))
                                                    (_tl2764127683_
                                                     (values-ref _g28480_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2764127683_)
                                                    (letrec ((_loop2764227686_
                                                              (lambda (_hd2764027690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2764627693_)
                        (if (gx#stx-pair? _hd2764027690_)
                            (let ((_e2764327696_ (gx#syntax-e _hd2764027690_)))
                              (let ((_lp-hd2764427700_ (##car _e2764327696_))
                                    (_lp-tl2764527703_ (##cdr _e2764327696_)))
                                (_loop2764227686_
                                 _lp-tl2764527703_
                                 (cons _lp-hd2764427700_ _id2764627693_))))
                            (let ((_id2764727706_ (reverse _id2764627693_)))
                              ((lambda (_L27710_ _L27712_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2772927732_
                                                        _g2773027735_)
                                                 (cons _g2772927732_
                                                       _g2773027735_))
                                               '()
                                               _L27710_)))
                                     (let ((_keys27746_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2773727740_
                                                               _g2773827743_)
                                                        (cons _g2773727740_
                                                              _g2773827743_))
                                                      '()
                                                      _L27710_)))))
                                       (let ((_keytab27757_
                                              (let ((_ht27749_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2775127753_)
                                                     (hash-put!
                                                      _ht27749_
                                                      _g2775127753_
                                                      '#t))
                                                   _keys27746_)
                                                  _ht27749_))))
                                         (let ((_imports27760_
                                                (gx#core-expand-import-source
                                                 _L27712_)))
                                           (let ((_fold-e27770_
                                                  (letrec ((_fold-e27763_
                                                            (lambda (_in27766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r27768_)
                      (if (gx#module-import? _in27766_)
                          (if (hash-get
                               _keytab27757_
                               (gx#module-import-name _in27766_))
                              (cons _in27766_ _r27768_)
                              _r27768_)
                          (if (gx#import-set? _in27766_)
                              (foldl _fold-e27763_
                                     _r27768_
                                     (gx#import-set-imports _in27766_))
                              _r27768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e27763_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e27770_
                                                            '()
                                                            _imports27760_)))))))
                                     (_g2762927653_ _g2763027657_)))
                               _id2764727706_
                               _hd2763727674_))))))
              (_loop2764227686_ _target2763927680_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2762927653_
                                                     _g2763027657_)))))
                                          (_g2762927653_ _g2763027657_))
                                      (_g2762927653_ _g2763027657_))))
                              (_g2762927653_ _g2763027657_))))
                      (_g2762927653_ _g2763027657_)))))
           (_g2762827775_ _stx27626_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx27780_)
       (let ((_g2778327807_
              (lambda (_g2778427803_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2778427803_))))
         (let ((_g2778227929_
                (lambda (_g2778427811_)
                  (if (gx#stx-pair? _g2778427811_)
                      (let ((_e2778727814_ (gx#syntax-e _g2778427811_)))
                        (let ((_hd2778827818_ (##car _e2778727814_))
                              (_tl2778927821_ (##cdr _e2778727814_)))
                          (if (gx#stx-pair? _tl2778927821_)
                              (let ((_e2779027824_
                                     (gx#syntax-e _tl2778927821_)))
                                (let ((_hd2779127828_ (##car _e2779027824_))
                                      (_tl2779227831_ (##cdr _e2779027824_)))
                                  (if (gx#stx-pair/null? _tl2779227831_)
                                      (if (fx>= (gx#stx-length _tl2779227831_)
                                                '0)
                                          (let ((_g28482_
                                                 (gx#syntax-split-splice
                                                  _tl2779227831_
                                                  '0)))
                                            (begin
                                              (let ((_g28483_
                                                     (values-count _g28482_)))
                                                (if (not (fx= _g28483_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28483_)))
                                              (let ((_target2779327834_
                                                     (values-ref _g28482_ 0))
                                                    (_tl2779527837_
                                                     (values-ref _g28482_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2779527837_)
                                                    (letrec ((_loop2779627840_
                                                              (lambda (_hd2779427844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2780027847_)
                        (if (gx#stx-pair? _hd2779427844_)
                            (let ((_e2779727850_ (gx#syntax-e _hd2779427844_)))
                              (let ((_lp-hd2779827854_ (##car _e2779727850_))
                                    (_lp-tl2779927857_ (##cdr _e2779727850_)))
                                (_loop2779627840_
                                 _lp-tl2779927857_
                                 (cons _lp-hd2779827854_ _id2780027847_))))
                            (let ((_id2780127860_ (reverse _id2780027847_)))
                              ((lambda (_L27864_ _L27866_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2788327886_
                                                        _g2788427889_)
                                                 (cons _g2788327886_
                                                       _g2788427889_))
                                               '()
                                               _L27864_)))
                                     (let ((_keys27900_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2789127894_
                                                               _g2789227897_)
                                                        (cons _g2789127894_
                                                              _g2789227897_))
                                                      '()
                                                      _L27864_)))))
                                       (let ((_keytab27911_
                                              (let ((_ht27903_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2790527907_)
                                                     (hash-put!
                                                      _ht27903_
                                                      _g2790527907_
                                                      '#t))
                                                   _keys27900_)
                                                  _ht27903_))))
                                         (let ((_exports27914_
                                                (gx#core-expand-export-source
                                                 _L27866_)))
                                           (let ((_fold-e27924_
                                                  (letrec ((_fold-e27917_
                                                            (lambda (_out27920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r27922_)
                      (if (gx#module-export? _out27920_)
                          (if (hash-get
                               _keytab27911_
                               (gx#module-export-name _out27920_))
                              _r27922_
                              (cons _out27920_ _r27922_))
                          (if (gx#export-set? _out27920_)
                              (foldl _fold-e27917_
                                     _r27922_
                                     (gx#export-set-exports _out27920_))
                              _r27922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e27917_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e27924_
                                                            '()
                                                            _exports27914_)))))))
                                     (_g2778327807_ _g2778427811_)))
                               _id2780127860_
                               _hd2779127828_))))))
              (_loop2779627840_ _target2779327834_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2778327807_
                                                     _g2778427811_)))))
                                          (_g2778327807_ _g2778427811_))
                                      (_g2778327807_ _g2778427811_))))
                              (_g2778327807_ _g2778427811_))))
                      (_g2778327807_ _g2778427811_)))))
           (_g2778227929_ _stx27780_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx27934_)
       (let ((_g2793727957_
              (lambda (_g2793827953_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2793827953_))))
         (let ((_g2793628192_
                (lambda (_g2793827961_)
                  (if (gx#stx-pair? _g2793827961_)
                      (let ((_e2794027964_ (gx#syntax-e _g2793827961_)))
                        (let ((_hd2794127968_ (##car _e2794027964_))
                              (_tl2794227971_ (##cdr _e2794027964_)))
                          (if (gx#stx-pair/null? _tl2794227971_)
                              (if (fx>= (gx#stx-length _tl2794227971_) '0)
                                  (let ((_g28484_
                                         (gx#syntax-split-splice
                                          _tl2794227971_
                                          '0)))
                                    (begin
                                      (let ((_g28485_ (values-count _g28484_)))
                                        (if (not (fx= _g28485_ 2))
                                            (error "Context expects 2 values"
                                                   _g28485_)))
                                      (let ((_target2794327974_
                                             (values-ref _g28484_ 0))
                                            (_tl2794527977_
                                             (values-ref _g28484_ 1)))
                                        (if (gx#stx-null? _tl2794527977_)
                                            (letrec ((_loop2794627980_
                                                      (lambda (_hd2794427984_
                                                               _id2795027987_)
                                                        (if (gx#stx-pair?
                                                             _hd2794427984_)
                                                            (let ((_e2794727990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2794427984_)))
                      (let ((_lp-hd2794827994_ (##car _e2794727990_))
                            (_lp-tl2794927997_ (##cdr _e2794727990_)))
                        (_loop2794627980_
                         _lp-tl2794927997_
                         (cons _lp-hd2794827994_ _id2795027987_))))
                    (let ((_id2795128000_ (reverse _id2795027987_)))
                      ((lambda (_L28004_)
                         ((letrec ((_lp28020_
                                    (lambda (_rest28023_ _ids28025_)
                                      (let ((_g2802828040_
                                             (lambda (_g2802928036_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2802928036_))))
                                        (let ((_g2802728051_
                                               (lambda (_g2802928044_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids28025_))))))
                                          (let ((_g2802628180_
                                                 (lambda (_g2802928055_)
                                                   (if (gx#stx-pair?
                                                        _g2802928055_)
                                                       (let ((_e2803228058_
                                                              (gx#syntax-e
                                                               _g2802928055_)))
                                                         (let ((_hd2803328062_
                                                                (##car _e2803228058_))
                                                               (_tl2803428065_
                                                                (##cdr _e2803228058_)))
                                                           ((lambda (_L28068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28070_)
                      (let ((_info28085_
                             (gx#syntax-local-value _L28070_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info28085_)
                            (let ((_g2808728104_
                                   (slot-ref
                                    _info28085_
                                    'expander-identifiers)))
                              (let ((_E2808928110_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2808728104_))))
                                (let ((_K2809028122_
                                       (lambda (_setf28114_
                                                _getf28116_
                                                _type?28117_
                                                _make-type28118_
                                                _type::t28119_
                                                _super28120_)
                                         (_lp28020_
                                          _L28068_
                                          (cons _L28070_
                                                (cons _type::t28119_
                                                      (cons _make-type28118_
                                                            (cons _type?28117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids28025_ _setf28114_)
                                 _getf28116_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2808728104_)
                                      (let ((_hd2809128126_
                                             (##car _g2808728104_))
                                            (_tl2809228129_
                                             (##cdr _g2808728104_)))
                                        (let ((_super28132_ _hd2809128126_))
                                          (if (##pair? _tl2809228129_)
                                              (let ((_hd2809328135_
                                                     (##car _tl2809228129_))
                                                    (_tl2809428138_
                                                     (##cdr _tl2809228129_)))
                                                (let ((_type::t28141_
                                                       _hd2809328135_))
                                                  (if (##pair? _tl2809428138_)
                                                      (let ((_hd2809528144_
                                                             (##car _tl2809428138_))
                                                            (_tl2809628147_
                                                             (##cdr _tl2809428138_)))
                                                        (let ((_make-type28150_
                                                               _hd2809528144_))
                                                          (if (##pair? _tl2809628147_)
                                                              (let ((_hd2809728153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2809628147_))
                            (_tl2809828156_ (##cdr _tl2809628147_)))
                        (let ((_type?28159_ _hd2809728153_))
                          (if (##pair? _tl2809828156_)
                              (let ((_hd2809928162_ (##car _tl2809828156_))
                                    (_tl2810028165_ (##cdr _tl2809828156_)))
                                (let ((_getf28168_ _hd2809928162_))
                                  (if (##pair? _tl2810028165_)
                                      (let ((_hd2810128171_
                                             (##car _tl2810028165_))
                                            (_tl2810228174_
                                             (##cdr _tl2810028165_)))
                                        (let ((_setf28177_ _hd2810128171_))
                                          (if (##null? _tl2810228174_)
                                              (_K2809028122_
                                               _setf28177_
                                               _getf28168_
                                               _type?28159_
                                               _make-type28150_
                                               _type::t28141_
                                               _super28132_)
                                              (_E2808928110_))))
                                      (_E2808928110_))))
                              (_E2808928110_))))
                      (_E2808928110_))))
              (_E2808928110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2808928110_))))
                                      (_E2808928110_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx27934_
                             _L28070_))))
                    _tl2803428065_
                    _hd2803328062_)))
               (_g2802728051_ _g2802928055_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2802628180_ _rest28023_)))))))
                            _lp28020_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2818328186_ _g2818428189_)
                                     (cons _g2818328186_ _g2818428189_))
                                   '()
                                   _L28004_))
                          '()))
                       _id2795128000_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2794627980_
                                               _target2794327974_
                                               '()))
                                            (_g2793727957_ _g2793827961_)))))
                                  (_g2793727957_ _g2793827961_))
                              (_g2793727957_ _g2793827961_))))
                      (_g2793727957_ _g2793827961_)))))
           (_g2793628192_ _stx27934_)))))))
