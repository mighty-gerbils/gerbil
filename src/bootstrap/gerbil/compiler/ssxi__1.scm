(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx51185_)
      (let* ((_g5118951207_
              (lambda (_g5119051203_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5119051203_)))
             (_g5118851262_
              (lambda (_g5119051211_)
                (if (gx#stx-pair? _g5119051211_)
                    (let ((_e5119351214_ (gx#syntax-e _g5119051211_)))
                      (let ((_hd5119451218_ (##car _e5119351214_))
                            (_tl5119551221_ (##cdr _e5119351214_)))
                        (if (gx#stx-pair? _tl5119551221_)
                            (let ((_e5119651224_ (gx#syntax-e _tl5119551221_)))
                              (let ((_hd5119751228_ (##car _e5119651224_))
                                    (_tl5119851231_ (##cdr _e5119651224_)))
                                (if (gx#stx-pair? _tl5119851231_)
                                    (let ((_e5119951234_
                                           (gx#syntax-e _tl5119851231_)))
                                      (let ((_hd5120051238_
                                             (##car _e5119951234_))
                                            (_tl5120151241_
                                             (##cdr _e5119951234_)))
                                        (if (gx#stx-null? _tl5120151241_)
                                            ((lambda (_L51244_ _L51246_)
                                               (if (gx#identifier? _L51246_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L51246_ '()))
                       (cons _L51244_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5118951207_
                                                    _g5119051211_)))
                                             _hd5120051238_
                                             _hd5119751228_)
                                            (_g5118951207_ _g5119051211_))))
                                    (_g5118951207_ _g5119051211_))))
                            (_g5118951207_ _g5119051211_))))
                    (_g5118951207_ _g5119051211_)))))
        (_g5118851262_ _$stx51185_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx51266_)
      (let* ((_g5127051299_
              (lambda (_g5127151295_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5127151295_)))
             (_g5126951399_
              (lambda (_g5127151303_)
                (if (gx#stx-pair? _g5127151303_)
                    (let ((_e5127451306_ (gx#syntax-e _g5127151303_)))
                      (let ((_hd5127551310_ (##car _e5127451306_))
                            (_tl5127651313_ (##cdr _e5127451306_)))
                        (if (gx#stx-pair/null? _tl5127651313_)
                            (let ((_g54416_
                                   (gx#syntax-split-splice _tl5127651313_ '0)))
                              (begin
                                (let ((_g54417_
                                       (if (##values? _g54416_)
                                           (##vector-length _g54416_)
                                           1)))
                                  (if (not (##fx= _g54417_ 2))
                                      (error "Context expects 2 values"
                                             _g54417_)))
                                (let ((_target5127751316_
                                       (##vector-ref _g54416_ 0))
                                      (_tl5127951319_
                                       (##vector-ref _g54416_ 1)))
                                  (if (gx#stx-null? _tl5127951319_)
                                      (letrec ((_loop5128051322_
                                                (lambda (_hd5127851326_
                                                         _type5128451329_
                                                         _symbol5128551331_)
                                                  (if (gx#stx-pair?
                                                       _hd5127851326_)
                                                      (let ((_e5128151334_
                                                             (gx#syntax-e
                                                              _hd5127851326_)))
                                                        (let ((_lp-hd5128251338_
                                                               (##car _e5128151334_))
                                                              (_lp-tl5128351341_
                                                               (##cdr _e5128151334_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5128251338_)
                                                              (let ((_e5128851344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5128251338_)))
                        (let ((_hd5128951348_ (##car _e5128851344_))
                              (_tl5129051351_ (##cdr _e5128851344_)))
                          (if (gx#stx-pair? _tl5129051351_)
                              (let ((_e5129151354_
                                     (gx#syntax-e _tl5129051351_)))
                                (let ((_hd5129251358_ (##car _e5129151354_))
                                      (_tl5129351361_ (##cdr _e5129151354_)))
                                  (if (gx#stx-null? _tl5129351361_)
                                      (_loop5128051322_
                                       _lp-tl5128351341_
                                       (cons _hd5129251358_ _type5128451329_)
                                       (cons _hd5128951348_
                                             _symbol5128551331_))
                                      (_g5127051299_ _g5127151303_))))
                              (_g5127051299_ _g5127151303_))))
                      (_g5127051299_ _g5127151303_))))
              (let ((_type5128651364_ (reverse _type5128451329_))
                    (_symbol5128751367_ (reverse _symbol5128551331_)))
                ((lambda (_L51370_ _L51372_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L51370_ _L51372_)
                           (foldr2 (lambda (_g5138751391_
                                            _g5138851394_
                                            _g5138951396_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g5138851394_
                                                       (cons _g5138751391_
                                                             '())))
                                           _g5138951396_))
                                   '()
                                   _L51370_
                                   _L51372_))))
                 _type5128651364_
                 _symbol5128751367_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5128051322_
                                         _target5127751316_
                                         '()
                                         '()))
                                      (_g5127051299_ _g5127151303_)))))
                            (_g5127051299_ _g5127151303_))))
                    (_g5127051299_ _g5127151303_)))))
        (_g5126951399_ _$stx51266_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx51404_)
      (let* ((___stx5390753908_ _$stx51404_)
             (_g5140951451_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5390753908_))))
        (let ((___kont5391053911_
               (lambda (_L51579_ _L51581_ _L51582_ _L51583_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51583_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L51582_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L51581_ '()))
                                         (cons _L51579_ '())))))))
              (___kont5391253913_
               (lambda (_L51498_ _L51500_ _L51501_ _L51502_)
                 (cons _L51502_
                       (cons _L51501_
                             (cons _L51500_
                                   (cons _L51498_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5394653947_
                 (lambda (_e5141551529_
                          _hd5141651533_
                          _tl5141751536_
                          _e5141851539_
                          _hd5141951543_
                          _tl5142051546_
                          _e5142151549_
                          _hd5142251553_
                          _tl5142351556_
                          _e5142451559_
                          _hd5142551563_
                          _tl5142651566_
                          _e5142751569_
                          _hd5142851573_
                          _tl5142951576_)
                   (let ((_L51579_ _hd5142851573_)
                         (_L51581_ _hd5142551563_)
                         (_L51582_ _hd5142251553_)
                         (_L51583_ _hd5141951543_))
                     (if (and (gx#identifier? _L51583_)
                              (gx#identifier? _L51582_)
                              (gx#identifier? _L51581_))
                         (___kont5391053911_
                          _L51579_
                          _L51581_
                          _L51582_
                          _L51583_)
                         (_g5140951451_))))))
            (if (gx#stx-pair? ___stx5390753908_)
                (let ((_e5141551529_ (gx#syntax-e ___stx5390753908_)))
                  (let ((_tl5141751536_ (##cdr _e5141551529_))
                        (_hd5141651533_ (##car _e5141551529_)))
                    (if (gx#stx-pair? _tl5141751536_)
                        (let ((_e5141851539_ (gx#syntax-e _tl5141751536_)))
                          (let ((_tl5142051546_ (##cdr _e5141851539_))
                                (_hd5141951543_ (##car _e5141851539_)))
                            (if (gx#stx-pair? _tl5142051546_)
                                (let ((_e5142151549_
                                       (gx#syntax-e _tl5142051546_)))
                                  (let ((_tl5142351556_ (##cdr _e5142151549_))
                                        (_hd5142251553_ (##car _e5142151549_)))
                                    (if (gx#stx-pair? _tl5142351556_)
                                        (let ((_e5142451559_
                                               (gx#syntax-e _tl5142351556_)))
                                          (let ((_tl5142651566_
                                                 (##cdr _e5142451559_))
                                                (_hd5142551563_
                                                 (##car _e5142451559_)))
                                            (if (gx#stx-pair? _tl5142651566_)
                                                (let ((_e5142751569_
                                                       (gx#syntax-e
                                                        _tl5142651566_)))
                                                  (let ((_tl5142951576_
                                                         (##cdr _e5142751569_))
                                                        (_hd5142851573_
                                                         (##car _e5142751569_)))
                                                    (if (gx#stx-null?
                                                         _tl5142951576_)
                                                        (___match5394653947_
                                                         _e5141551529_
                                                         _hd5141651533_
                                                         _tl5141751536_
                                                         _e5141851539_
                                                         _hd5141951543_
                                                         _tl5142051546_
                                                         _e5142151549_
                                                         _hd5142251553_
                                                         _tl5142351556_
                                                         _e5142451559_
                                                         _hd5142551563_
                                                         _tl5142651566_
                                                         _e5142751569_
                                                         _hd5142851573_
                                                         _tl5142951576_)
                                                        (_g5140951451_))))
                                                (if (gx#stx-null?
                                                     _tl5142651566_)
                                                    (___kont5391253913_
                                                     _hd5142551563_
                                                     _hd5142251553_
                                                     _hd5141951543_
                                                     _hd5141651533_)
                                                    (_g5140951451_)))))
                                        (_g5140951451_))))
                                (_g5140951451_))))
                        (_g5140951451_))))
                (_g5140951451_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx51608_)
      (let* ((_g5161251647_
              (lambda (_g5161351643_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5161351643_)))
             (_g5161151766_
              (lambda (_g5161351651_)
                (if (gx#stx-pair? _g5161351651_)
                    (let ((_e5161751654_ (gx#syntax-e _g5161351651_)))
                      (let ((_hd5161851658_ (##car _e5161751654_))
                            (_tl5161951661_ (##cdr _e5161751654_)))
                        (if (gx#stx-pair/null? _tl5161951661_)
                            (let ((_g54418_
                                   (gx#syntax-split-splice _tl5161951661_ '0)))
                              (begin
                                (let ((_g54419_
                                       (if (##values? _g54418_)
                                           (##vector-length _g54418_)
                                           1)))
                                  (if (not (##fx= _g54419_ 2))
                                      (error "Context expects 2 values"
                                             _g54419_)))
                                (let ((_target5162051664_
                                       (##vector-ref _g54418_ 0))
                                      (_tl5162251667_
                                       (##vector-ref _g54418_ 1)))
                                  (if (gx#stx-null? _tl5162251667_)
                                      (letrec ((_loop5162351670_
                                                (lambda (_hd5162151674_
                                                         _symbol5162751677_
                                                         _method5162851679_
                                                         _type-t5162951681_)
                                                  (if (gx#stx-pair?
                                                       _hd5162151674_)
                                                      (let ((_e5162451684_
                                                             (gx#syntax-e
                                                              _hd5162151674_)))
                                                        (let ((_lp-hd5162551688_
                                                               (##car _e5162451684_))
                                                              (_lp-tl5162651691_
                                                               (##cdr _e5162451684_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5162551688_)
                                                              (let ((_e5163351694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5162551688_)))
                        (let ((_hd5163451698_ (##car _e5163351694_))
                              (_tl5163551701_ (##cdr _e5163351694_)))
                          (if (gx#stx-pair? _tl5163551701_)
                              (let ((_e5163651704_
                                     (gx#syntax-e _tl5163551701_)))
                                (let ((_hd5163751708_ (##car _e5163651704_))
                                      (_tl5163851711_ (##cdr _e5163651704_)))
                                  (if (gx#stx-pair? _tl5163851711_)
                                      (let ((_e5163951714_
                                             (gx#syntax-e _tl5163851711_)))
                                        (let ((_hd5164051718_
                                               (##car _e5163951714_))
                                              (_tl5164151721_
                                               (##cdr _e5163951714_)))
                                          (if (gx#stx-null? _tl5164151721_)
                                              (_loop5162351670_
                                               _lp-tl5162651691_
                                               (cons _hd5164051718_
                                                     _symbol5162751677_)
                                               (cons _hd5163751708_
                                                     _method5162851679_)
                                               (cons _hd5163451698_
                                                     _type-t5162951681_))
                                              (_g5161251647_ _g5161351651_))))
                                      (_g5161251647_ _g5161351651_))))
                              (_g5161251647_ _g5161351651_))))
                      (_g5161251647_ _g5161351651_))))
              (let ((_symbol5163051724_ (reverse _symbol5162751677_))
                    (_method5163151727_ (reverse _method5162851679_))
                    (_type-t5163251729_ (reverse _type-t5162951681_)))
                ((lambda (_L51732_ _L51734_ _L51735_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L51732_
                            _L51734_
                            _L51735_)
                           (foldr (lambda (_g5175151756_
                                           _g5175251759_
                                           _g5175351761_
                                           _g5175451763_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g5175351761_
                                                      (cons _g5175251759_
                                                            (cons _g5175151756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g5175451763_))
                                  '()
                                  _L51732_
                                  _L51734_
                                  _L51735_))))
                 _symbol5163051724_
                 _method5163151727_
                 _type-t5163251729_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5162351670_
                                         _target5162051664_
                                         '()
                                         '()
                                         '()))
                                      (_g5161251647_ _g5161351651_)))))
                            (_g5161251647_ _g5161351651_))))
                    (_g5161251647_ _g5161351651_)))))
        (_g5161151766_ _$stx51608_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx51771_)
      (let* ((_g5177551808_
              (lambda (_g5177651804_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5177651804_)))
             (_g5177451922_
              (lambda (_g5177651812_)
                (if (gx#stx-pair? _g5177651812_)
                    (let ((_e5178051815_ (gx#syntax-e _g5177651812_)))
                      (let ((_hd5178151819_ (##car _e5178051815_))
                            (_tl5178251822_ (##cdr _e5178051815_)))
                        (if (gx#stx-pair? _tl5178251822_)
                            (let ((_e5178351825_ (gx#syntax-e _tl5178251822_)))
                              (let ((_hd5178451829_ (##car _e5178351825_))
                                    (_tl5178551832_ (##cdr _e5178351825_)))
                                (if (gx#stx-pair/null? _tl5178551832_)
                                    (let ((_g54420_
                                           (gx#syntax-split-splice
                                            _tl5178551832_
                                            '0)))
                                      (begin
                                        (let ((_g54421_
                                               (if (##values? _g54420_)
                                                   (##vector-length _g54420_)
                                                   1)))
                                          (if (not (##fx= _g54421_ 2))
                                              (error "Context expects 2 values"
                                                     _g54421_)))
                                        (let ((_target5178651835_
                                               (##vector-ref _g54420_ 0))
                                              (_tl5178851838_
                                               (##vector-ref _g54420_ 1)))
                                          (if (gx#stx-null? _tl5178851838_)
                                              (letrec ((_loop5178951841_
                                                        (lambda (_hd5178751845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol5179351848_
                         _method5179451850_)
                  (if (gx#stx-pair? _hd5178751845_)
                      (let ((_e5179051853_ (gx#syntax-e _hd5178751845_)))
                        (let ((_lp-hd5179151857_ (##car _e5179051853_))
                              (_lp-tl5179251860_ (##cdr _e5179051853_)))
                          (if (gx#stx-pair? _lp-hd5179151857_)
                              (let ((_e5179751863_
                                     (gx#syntax-e _lp-hd5179151857_)))
                                (let ((_hd5179851867_ (##car _e5179751863_))
                                      (_tl5179951870_ (##cdr _e5179751863_)))
                                  (if (gx#stx-pair? _tl5179951870_)
                                      (let ((_e5180051873_
                                             (gx#syntax-e _tl5179951870_)))
                                        (let ((_hd5180151877_
                                               (##car _e5180051873_))
                                              (_tl5180251880_
                                               (##cdr _e5180051873_)))
                                          (if (gx#stx-null? _tl5180251880_)
                                              (_loop5178951841_
                                               _lp-tl5179251860_
                                               (cons _hd5180151877_
                                                     _symbol5179351848_)
                                               (cons _hd5179851867_
                                                     _method5179451850_))
                                              (_g5177551808_ _g5177651812_))))
                                      (_g5177551808_ _g5177651812_))))
                              (_g5177551808_ _g5177651812_))))
                      (let ((_symbol5179551883_ (reverse _symbol5179351848_))
                            (_method5179651886_ (reverse _method5179451850_)))
                        ((lambda (_L51889_ _L51891_ _L51892_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L51889_
                                    _L51891_)
                                   (foldr2 (lambda (_g5191051914_
                                                    _g5191151917_
                                                    _g5191251919_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L51892_
                                                               (cons _g5191151917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g5191051914_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g5191251919_))
                                           '()
                                           _L51889_
                                           _L51891_))))
                         _symbol5179551883_
                         _method5179651886_
                         _hd5178451829_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop5178951841_
                                                 _target5178651835_
                                                 '()
                                                 '()))
                                              (_g5177551808_ _g5177651812_)))))
                                    (_g5177551808_ _g5177651812_))))
                            (_g5177551808_ _g5177651812_))))
                    (_g5177551808_ _g5177651812_)))))
        (_g5177451922_ _$stx51771_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx51927_)
      (let* ((_g5193151945_
              (lambda (_g5193251941_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5193251941_)))
             (_g5193051986_
              (lambda (_g5193251949_)
                (if (gx#stx-pair? _g5193251949_)
                    (let ((_e5193451952_ (gx#syntax-e _g5193251949_)))
                      (let ((_hd5193551956_ (##car _e5193451952_))
                            (_tl5193651959_ (##cdr _e5193451952_)))
                        (if (gx#stx-pair? _tl5193651959_)
                            (let ((_e5193751962_ (gx#syntax-e _tl5193651959_)))
                              (let ((_hd5193851966_ (##car _e5193751962_))
                                    (_tl5193951969_ (##cdr _e5193751962_)))
                                (if (gx#stx-null? _tl5193951969_)
                                    ((lambda (_L51972_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51972_ '()))
                                                   '())))
                                     _hd5193851966_)
                                    (_g5193151945_ _g5193251949_))))
                            (_g5193151945_ _g5193251949_))))
                    (_g5193151945_ _g5193251949_)))))
        (_g5193051986_ _$stx51927_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx51990_)
      (let* ((___stx5397553976_ _$stx51990_)
             (_g5199652062_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5397553976_))))
        (let ((___kont5397853979_
               (lambda (_L52284_ _L52286_ _L52287_ _L52288_ _L52289_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L52289_
                             (cons _L52288_
                                   (cons _L52287_
                                         (cons _L52286_
                                               (cons _L52284_ '()))))))))
              (___kont5398053981_
               (lambda (_L52194_ _L52196_ _L52197_ _L52198_)
                 (cons _L52198_
                       (cons _L52197_
                             (cons _L52196_
                                   (cons _L52194_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5398253983_
               (lambda (_L52119_ _L52121_ _L52122_ _L52123_ _L52124_)
                 (cons _L52124_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L52122_
                                   (cons _L52121_
                                         (cons _L52119_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5397553976_)
              (let ((_e5200352224_ (gx#syntax-e ___stx5397553976_)))
                (let ((_tl5200552231_ (##cdr _e5200352224_))
                      (_hd5200452228_ (##car _e5200352224_)))
                  (if (gx#stx-pair? _tl5200552231_)
                      (let ((_e5200652234_ (gx#syntax-e _tl5200552231_)))
                        (let ((_tl5200852241_ (##cdr _e5200652234_))
                              (_hd5200752238_ (##car _e5200652234_)))
                          (if (gx#stx-pair? _tl5200852241_)
                              (let ((_e5200952244_
                                     (gx#syntax-e _tl5200852241_)))
                                (let ((_tl5201152251_ (##cdr _e5200952244_))
                                      (_hd5201052248_ (##car _e5200952244_)))
                                  (if (gx#stx-pair? _tl5201152251_)
                                      (let ((_e5201252254_
                                             (gx#syntax-e _tl5201152251_)))
                                        (let ((_tl5201452261_
                                               (##cdr _e5201252254_))
                                              (_hd5201352258_
                                               (##car _e5201252254_)))
                                          (if (gx#stx-pair? _tl5201452261_)
                                              (let ((_e5201552264_
                                                     (gx#syntax-e
                                                      _tl5201452261_)))
                                                (let ((_tl5201752271_
                                                       (##cdr _e5201552264_))
                                                      (_hd5201652268_
                                                       (##car _e5201552264_)))
                                                  (if (gx#stx-pair?
                                                       _tl5201752271_)
                                                      (let ((_e5201852274_
                                                             (gx#syntax-e
                                                              _tl5201752271_)))
                                                        (let ((_tl5202052281_
                                                               (##cdr _e5201852274_))
                                                              (_hd5201952278_
                                                               (##car _e5201852274_)))
                                                          (if (gx#stx-null?
                                                               _tl5202052281_)
                                                              (___kont5397853979_
                                                               _hd5201952278_
                                                               _hd5201652268_
                                                               _hd5201352258_
                                                               _hd5201052248_
                                                               _hd5200752238_)
                                                              (_g5199652062_))))
                                                      (if (gx#stx-null?
                                                           _tl5201752271_)
                                                          (___kont5398253983_
                                                           _hd5201652268_
                                                           _hd5201352258_
                                                           _hd5201052248_
                                                           _hd5200752238_
                                                           _hd5200452228_)
                                                          (_g5199652062_)))))
                                              (if (gx#stx-null? _tl5201452261_)
                                                  (___kont5398053981_
                                                   _hd5201352258_
                                                   _hd5201052248_
                                                   _hd5200752238_
                                                   _hd5200452228_)
                                                  (_g5199652062_)))))
                                      (_g5199652062_))))
                              (_g5199652062_))))
                      (_g5199652062_))))
              (_g5199652062_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx52317_)
      (let* ((___stx5408354084_ _$stx52317_)
             (_g5232252375_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5408354084_))))
        (let ((___kont5408654087_
               (lambda (_L52543_ _L52545_ _L52546_ _L52547_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52547_ '()))
                             (cons '#f
                                   (cons _L52546_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L52545_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L52543_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5408854089_
               (lambda (_L52442_ _L52444_ _L52445_ _L52446_ _L52447_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L52446_ '()))
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
                                     (cons _L52444_ '()))
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
                                                     (cons _L52447_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L52446_ '()))
                                                     (cons _L52445_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L52442_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5408354084_)
              (let ((_e5232852479_ (gx#syntax-e ___stx5408354084_)))
                (let ((_tl5233052486_ (##cdr _e5232852479_))
                      (_hd5232952483_ (##car _e5232852479_)))
                  (if (gx#stx-pair? _tl5233052486_)
                      (let ((_e5233152489_ (gx#syntax-e _tl5233052486_)))
                        (let ((_tl5233352496_ (##cdr _e5233152489_))
                              (_hd5233252493_ (##car _e5233152489_)))
                          (if (gx#stx-pair? _tl5233352496_)
                              (let ((_e5233452499_
                                     (gx#syntax-e _tl5233352496_)))
                                (let ((_tl5233652506_ (##cdr _e5233452499_))
                                      (_hd5233552503_ (##car _e5233452499_)))
                                  (if (gx#stx-datum? _hd5233552503_)
                                      (let ((_e5233752509_
                                             (gx#stx-e _hd5233552503_)))
                                        (if (equal? _e5233752509_ '#f)
                                            (if (gx#stx-pair? _tl5233652506_)
                                                (let ((_e5233852513_
                                                       (gx#syntax-e
                                                        _tl5233652506_)))
                                                  (let ((_tl5234052520_
                                                         (##cdr _e5233852513_))
                                                        (_hd5233952517_
                                                         (##car _e5233852513_)))
                                                    (if (gx#stx-pair?
                                                         _tl5234052520_)
                                                        (let ((_e5234152523_
                                                               (gx#syntax-e
                                                                _tl5234052520_)))
                                                          (let ((_tl5234352530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5234152523_))
                        (_hd5234252527_ (##car _e5234152523_)))
                    (if (gx#stx-pair? _tl5234352530_)
                        (let ((_e5234452533_ (gx#syntax-e _tl5234352530_)))
                          (let ((_tl5234652540_ (##cdr _e5234452533_))
                                (_hd5234552537_ (##car _e5234452533_)))
                            (if (gx#stx-null? _tl5234652540_)
                                (___kont5408654087_
                                 _hd5234552537_
                                 _hd5234252527_
                                 _hd5233952517_
                                 _hd5233252493_)
                                (_g5232252375_))))
                        (_g5232252375_))))
                (_g5232252375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5232252375_))
                                            (if (gx#stx-pair? _tl5233652506_)
                                                (let ((_e5236152412_
                                                       (gx#syntax-e
                                                        _tl5233652506_)))
                                                  (let ((_tl5236352419_
                                                         (##cdr _e5236152412_))
                                                        (_hd5236252416_
                                                         (##car _e5236152412_)))
                                                    (if (gx#stx-pair?
                                                         _tl5236352419_)
                                                        (let ((_e5236452422_
                                                               (gx#syntax-e
                                                                _tl5236352419_)))
                                                          (let ((_tl5236652429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5236452422_))
                        (_hd5236552426_ (##car _e5236452422_)))
                    (if (gx#stx-pair? _tl5236652429_)
                        (let ((_e5236752432_ (gx#syntax-e _tl5236652429_)))
                          (let ((_tl5236952439_ (##cdr _e5236752432_))
                                (_hd5236852436_ (##car _e5236752432_)))
                            (if (gx#stx-null? _tl5236952439_)
                                (___kont5408854089_
                                 _hd5236852436_
                                 _hd5236552426_
                                 _hd5236252416_
                                 _hd5233552503_
                                 _hd5233252493_)
                                (_g5232252375_))))
                        (_g5232252375_))))
                (_g5232252375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5232252375_))))
                                      (if (gx#stx-pair? _tl5233652506_)
                                          (let ((_e5236152412_
                                                 (gx#syntax-e _tl5233652506_)))
                                            (let ((_tl5236352419_
                                                   (##cdr _e5236152412_))
                                                  (_hd5236252416_
                                                   (##car _e5236152412_)))
                                              (if (gx#stx-pair? _tl5236352419_)
                                                  (let ((_e5236452422_
                                                         (gx#syntax-e
                                                          _tl5236352419_)))
                                                    (let ((_tl5236652429_
                                                           (##cdr _e5236452422_))
                                                          (_hd5236552426_
                                                           (##car _e5236452422_)))
                                                      (if (gx#stx-pair?
                                                           _tl5236652429_)
                                                          (let ((_e5236752432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5236652429_)))
                    (let ((_tl5236952439_ (##cdr _e5236752432_))
                          (_hd5236852436_ (##car _e5236752432_)))
                      (if (gx#stx-null? _tl5236952439_)
                          (___kont5408854089_
                           _hd5236852436_
                           _hd5236552426_
                           _hd5236252416_
                           _hd5233552503_
                           _hd5233252493_)
                          (_g5232252375_))))
                  (_g5232252375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5232252375_))))
                                          (_g5232252375_)))))
                              (_g5232252375_))))
                      (_g5232252375_))))
              (_g5232252375_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx52575_)
      (let* ((_g5257952593_
              (lambda (_g5258052589_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5258052589_)))
             (_g5257852634_
              (lambda (_g5258052597_)
                (if (gx#stx-pair? _g5258052597_)
                    (let ((_e5258252600_ (gx#syntax-e _g5258052597_)))
                      (let ((_hd5258352604_ (##car _e5258252600_))
                            (_tl5258452607_ (##cdr _e5258252600_)))
                        (if (gx#stx-pair? _tl5258452607_)
                            (let ((_e5258552610_ (gx#syntax-e _tl5258452607_)))
                              (let ((_hd5258652614_ (##car _e5258552610_))
                                    (_tl5258752617_ (##cdr _e5258552610_)))
                                (if (gx#stx-null? _tl5258752617_)
                                    ((lambda (_L52620_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L52620_ '()))
                                                   '())))
                                     _hd5258652614_)
                                    (_g5257952593_ _g5258052597_))))
                            (_g5257952593_ _g5258052597_))))
                    (_g5257952593_ _g5258052597_)))))
        (_g5257852634_ _$stx52575_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx52638_)
      (let* ((_g5264252656_
              (lambda (_g5264352652_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5264352652_)))
             (_g5264152697_
              (lambda (_g5264352660_)
                (if (gx#stx-pair? _g5264352660_)
                    (let ((_e5264552663_ (gx#syntax-e _g5264352660_)))
                      (let ((_hd5264652667_ (##car _e5264552663_))
                            (_tl5264752670_ (##cdr _e5264552663_)))
                        (if (gx#stx-pair? _tl5264752670_)
                            (let ((_e5264852673_ (gx#syntax-e _tl5264752670_)))
                              (let ((_hd5264952677_ (##car _e5264852673_))
                                    (_tl5265052680_ (##cdr _e5264852673_)))
                                (if (gx#stx-null? _tl5265052680_)
                                    ((lambda (_L52683_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L52683_ '()))
                                                   '())))
                                     _hd5264952677_)
                                    (_g5264252656_ _g5264352660_))))
                            (_g5264252656_ _g5264352660_))))
                    (_g5264252656_ _g5264352660_)))))
        (_g5264152697_ _$stx52638_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx52701_)
      (let* ((___stx5417554176_ _$stx52701_)
             (_g5270652739_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5417554176_))))
        (let ((___kont5417854179_
               (lambda (_L52841_ _L52843_ _L52844_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52844_ '()))
                             (cons _L52843_ (cons _L52841_ '()))))))
              (___kont5418054181_
               (lambda (_L52776_ _L52778_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52778_ '()))
                             (cons _L52776_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5417554176_)
              (let ((_e5271152801_ (gx#syntax-e ___stx5417554176_)))
                (let ((_tl5271352808_ (##cdr _e5271152801_))
                      (_hd5271252805_ (##car _e5271152801_)))
                  (if (gx#stx-pair? _tl5271352808_)
                      (let ((_e5271452811_ (gx#syntax-e _tl5271352808_)))
                        (let ((_tl5271652818_ (##cdr _e5271452811_))
                              (_hd5271552815_ (##car _e5271452811_)))
                          (if (gx#stx-pair? _tl5271652818_)
                              (let ((_e5271752821_
                                     (gx#syntax-e _tl5271652818_)))
                                (let ((_tl5271952828_ (##cdr _e5271752821_))
                                      (_hd5271852825_ (##car _e5271752821_)))
                                  (if (gx#stx-pair? _tl5271952828_)
                                      (let ((_e5272052831_
                                             (gx#syntax-e _tl5271952828_)))
                                        (let ((_tl5272252838_
                                               (##cdr _e5272052831_))
                                              (_hd5272152835_
                                               (##car _e5272052831_)))
                                          (if (gx#stx-null? _tl5272252838_)
                                              (___kont5417854179_
                                               _hd5272152835_
                                               _hd5271852825_
                                               _hd5271552815_)
                                              (_g5270652739_))))
                                      (if (gx#stx-null? _tl5271952828_)
                                          (___kont5418054181_
                                           _hd5271852825_
                                           _hd5271552815_)
                                          (_g5270652739_)))))
                              (_g5270652739_))))
                      (_g5270652739_))))
              (_g5270652739_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx52866_)
      (let* ((___stx5423154232_ _$stx52866_)
             (_g5287152904_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5423154232_))))
        (let ((___kont5423454235_
               (lambda (_L53006_ _L53008_ _L53009_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L53009_ '()))
                             (cons _L53008_ (cons _L53006_ '()))))))
              (___kont5423654237_
               (lambda (_L52941_ _L52943_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52943_ '()))
                             (cons _L52941_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5423154232_)
              (let ((_e5287652966_ (gx#syntax-e ___stx5423154232_)))
                (let ((_tl5287852973_ (##cdr _e5287652966_))
                      (_hd5287752970_ (##car _e5287652966_)))
                  (if (gx#stx-pair? _tl5287852973_)
                      (let ((_e5287952976_ (gx#syntax-e _tl5287852973_)))
                        (let ((_tl5288152983_ (##cdr _e5287952976_))
                              (_hd5288052980_ (##car _e5287952976_)))
                          (if (gx#stx-pair? _tl5288152983_)
                              (let ((_e5288252986_
                                     (gx#syntax-e _tl5288152983_)))
                                (let ((_tl5288452993_ (##cdr _e5288252986_))
                                      (_hd5288352990_ (##car _e5288252986_)))
                                  (if (gx#stx-pair? _tl5288452993_)
                                      (let ((_e5288552996_
                                             (gx#syntax-e _tl5288452993_)))
                                        (let ((_tl5288753003_
                                               (##cdr _e5288552996_))
                                              (_hd5288653000_
                                               (##car _e5288552996_)))
                                          (if (gx#stx-null? _tl5288753003_)
                                              (___kont5423454235_
                                               _hd5288653000_
                                               _hd5288352990_
                                               _hd5288052980_)
                                              (_g5287152904_))))
                                      (if (gx#stx-null? _tl5288452993_)
                                          (___kont5423654237_
                                           _hd5288352990_
                                           _hd5288052980_)
                                          (_g5287152904_)))))
                              (_g5287152904_))))
                      (_g5287152904_))))
              (_g5287152904_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx53031_)
      (let* ((___stx5428754288_ _$stx53031_)
             (_g5303753078_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5428754288_))))
        (let ((___kont5429054291_
               (lambda (_L53226_ _L53228_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L53228_ '()))
                                   (cons '#f
                                         (cons _L53226_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L53226_ '()))
                                                     '()))))))))
              (___kont5429254293_
               (lambda (_L53158_ _L53160_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L53160_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L53158_ '()))
                                         '()))))))
              (___kont5429454295_
               (lambda (_L53105_ _L53107_)
                 (cons _L53107_ (cons _L53105_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5428754288_)
              (let ((_e5304153182_ (gx#syntax-e ___stx5428754288_)))
                (let ((_tl5304353189_ (##cdr _e5304153182_))
                      (_hd5304253186_ (##car _e5304153182_)))
                  (if (gx#stx-pair? _tl5304353189_)
                      (let ((_e5304453192_ (gx#syntax-e _tl5304353189_)))
                        (let ((_tl5304653199_ (##cdr _e5304453192_))
                              (_hd5304553196_ (##car _e5304453192_)))
                          (if (gx#stx-pair? _tl5304653199_)
                              (let ((_e5304753202_
                                     (gx#syntax-e _tl5304653199_)))
                                (let ((_tl5304953209_ (##cdr _e5304753202_))
                                      (_hd5304853206_ (##car _e5304753202_)))
                                  (if (gx#stx-datum? _hd5304853206_)
                                      (let ((_e5305053212_
                                             (gx#stx-e _hd5304853206_)))
                                        (if (equal? _e5305053212_ 'inline:)
                                            (if (gx#stx-pair? _tl5304953209_)
                                                (let ((_e5305153216_
                                                       (gx#syntax-e
                                                        _tl5304953209_)))
                                                  (let ((_tl5305353223_
                                                         (##cdr _e5305153216_))
                                                        (_hd5305253220_
                                                         (##car _e5305153216_)))
                                                    (if (gx#stx-null?
                                                         _tl5305353223_)
                                                        (___kont5429054291_
                                                         _hd5305253220_
                                                         _hd5304553196_)
                                                        (_g5303753078_))))
                                                (if (gx#stx-null?
                                                     _tl5304953209_)
                                                    (___kont5429254293_
                                                     _hd5304853206_
                                                     _hd5304553196_)
                                                    (_g5303753078_)))
                                            (if (gx#stx-null? _tl5304953209_)
                                                (___kont5429254293_
                                                 _hd5304853206_
                                                 _hd5304553196_)
                                                (_g5303753078_))))
                                      (if (gx#stx-null? _tl5304953209_)
                                          (___kont5429254293_
                                           _hd5304853206_
                                           _hd5304553196_)
                                          (_g5303753078_)))))
                              (if (gx#stx-null? _tl5304653199_)
                                  (___kont5429454295_
                                   _hd5304553196_
                                   _hd5304253186_)
                                  (_g5303753078_)))))
                      (_g5303753078_))))
              (_g5303753078_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx53250_)
      (let* ((_g5325453283_
              (lambda (_g5325553279_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5325553279_)))
             (_g5325353383_
              (lambda (_g5325553287_)
                (if (gx#stx-pair? _g5325553287_)
                    (let ((_e5325853290_ (gx#syntax-e _g5325553287_)))
                      (let ((_hd5325953294_ (##car _e5325853290_))
                            (_tl5326053297_ (##cdr _e5325853290_)))
                        (if (gx#stx-pair/null? _tl5326053297_)
                            (let ((_g54422_
                                   (gx#syntax-split-splice _tl5326053297_ '0)))
                              (begin
                                (let ((_g54423_
                                       (if (##values? _g54422_)
                                           (##vector-length _g54422_)
                                           1)))
                                  (if (not (##fx= _g54423_ 2))
                                      (error "Context expects 2 values"
                                             _g54423_)))
                                (let ((_target5326153300_
                                       (##vector-ref _g54422_ 0))
                                      (_tl5326353303_
                                       (##vector-ref _g54422_ 1)))
                                  (if (gx#stx-null? _tl5326353303_)
                                      (letrec ((_loop5326453306_
                                                (lambda (_hd5326253310_
                                                         _dispatch5326853313_
                                                         _arity5326953315_)
                                                  (if (gx#stx-pair?
                                                       _hd5326253310_)
                                                      (let ((_e5326553318_
                                                             (gx#syntax-e
                                                              _hd5326253310_)))
                                                        (let ((_lp-hd5326653322_
                                                               (##car _e5326553318_))
                                                              (_lp-tl5326753325_
                                                               (##cdr _e5326553318_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5326653322_)
                                                              (let ((_e5327253328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5326653322_)))
                        (let ((_hd5327353332_ (##car _e5327253328_))
                              (_tl5327453335_ (##cdr _e5327253328_)))
                          (if (gx#stx-pair? _tl5327453335_)
                              (let ((_e5327553338_
                                     (gx#syntax-e _tl5327453335_)))
                                (let ((_hd5327653342_ (##car _e5327553338_))
                                      (_tl5327753345_ (##cdr _e5327553338_)))
                                  (if (gx#stx-null? _tl5327753345_)
                                      (_loop5326453306_
                                       _lp-tl5326753325_
                                       (cons _hd5327653342_
                                             _dispatch5326853313_)
                                       (cons _hd5327353332_ _arity5326953315_))
                                      (_g5325453283_ _g5325553287_))))
                              (_g5325453283_ _g5325553287_))))
                      (_g5325453283_ _g5325553287_))))
              (let ((_dispatch5327053348_ (reverse _dispatch5326853313_))
                    (_arity5327153351_ (reverse _arity5326953315_)))
                ((lambda (_L53354_ _L53356_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L53354_
                                              _L53356_)
                                             (foldr2 (lambda (_g5337153375_
                                                              _g5337253378_
                                                              _g5337353380_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5337253378_ (cons _g5337153375_ '())))
                     _g5337353380_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L53354_
                                                     _L53356_)))
                                     '()))))
                 _dispatch5327053348_
                 _arity5327153351_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5326453306_
                                         _target5326153300_
                                         '()
                                         '()))
                                      (_g5325453283_ _g5325553287_)))))
                            (_g5325453283_ _g5325553287_))))
                    (_g5325453283_ _g5325553287_)))))
        (_g5325353383_ _$stx53250_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx53388_)
      (let* ((_g5339253410_
              (lambda (_g5339353406_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5339353406_)))
             (_g5339153465_
              (lambda (_g5339353414_)
                (if (gx#stx-pair? _g5339353414_)
                    (let ((_e5339653417_ (gx#syntax-e _g5339353414_)))
                      (let ((_hd5339753421_ (##car _e5339653417_))
                            (_tl5339853424_ (##cdr _e5339653417_)))
                        (if (gx#stx-pair? _tl5339853424_)
                            (let ((_e5339953427_ (gx#syntax-e _tl5339853424_)))
                              (let ((_hd5340053431_ (##car _e5339953427_))
                                    (_tl5340153434_ (##cdr _e5339953427_)))
                                (if (gx#stx-pair? _tl5340153434_)
                                    (let ((_e5340253437_
                                           (gx#syntax-e _tl5340153434_)))
                                      (let ((_hd5340353441_
                                             (##car _e5340253437_))
                                            (_tl5340453444_
                                             (##cdr _e5340253437_)))
                                        (if (gx#stx-null? _tl5340453444_)
                                            ((lambda (_L53447_ _L53449_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L53449_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L53447_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5340353441_
                                             _hd5340053431_)
                                            (_g5339253410_ _g5339353414_))))
                                    (_g5339253410_ _g5339353414_))))
                            (_g5339253410_ _g5339353414_))))
                    (_g5339253410_ _g5339353414_)))))
        (_g5339153465_ _$stx53388_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx53469_)
      (let* ((_g5347353491_
              (lambda (_g5347453487_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5347453487_)))
             (_g5347253546_
              (lambda (_g5347453495_)
                (if (gx#stx-pair? _g5347453495_)
                    (let ((_e5347753498_ (gx#syntax-e _g5347453495_)))
                      (let ((_hd5347853502_ (##car _e5347753498_))
                            (_tl5347953505_ (##cdr _e5347753498_)))
                        (if (gx#stx-pair? _tl5347953505_)
                            (let ((_e5348053508_ (gx#syntax-e _tl5347953505_)))
                              (let ((_hd5348153512_ (##car _e5348053508_))
                                    (_tl5348253515_ (##cdr _e5348053508_)))
                                (if (gx#stx-pair? _tl5348253515_)
                                    (let ((_e5348353518_
                                           (gx#syntax-e _tl5348253515_)))
                                      (let ((_hd5348453522_
                                             (##car _e5348353518_))
                                            (_tl5348553525_
                                             (##cdr _e5348353518_)))
                                        (if (gx#stx-null? _tl5348553525_)
                                            ((lambda (_L53528_ _L53530_)
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
                               (cons _L53530_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L53528_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5348453522_
                                             _hd5348153512_)
                                            (_g5347353491_ _g5347453495_))))
                                    (_g5347353491_ _g5347453495_))))
                            (_g5347353491_ _g5347453495_))))
                    (_g5347353491_ _g5347453495_)))))
        (_g5347253546_ _$stx53469_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx53550_)
      (let* ((___stx5436554366_ _$stx53550_)
             (_g5355553590_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5436554366_))))
        (let ((___kont5436854369_
               (lambda (_L53712_ _L53714_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L53714_
                             (cons (cons (gx#datum->syntax__0 '#f '@lambda)
                                         (cons _L53712_ '()))
                                   '())))))
              (___kont5437054371_
               (lambda (_L53647_ _L53649_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L53649_
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          '@case-lambda)
                                         (foldr1 (lambda (_g5366653669_
                                                          _g5366753672_)
                                                   (cons (cons _g5366653669_
                                                               (cons '#f '()))
                                                         _g5366753672_))
                                                 '()
                                                 _L53647_))
                                   '()))))))
          (let ((___match5441454415_
                 (lambda (_e5357053597_
                          _hd5357153601_
                          _tl5357253604_
                          _e5357353607_
                          _hd5357453611_
                          _tl5357553614_
                          ___splice5437254373_
                          _target5357653617_
                          _tl5357853620_)
                   (letrec ((_loop5357953623_
                             (lambda (_hd5357753627_ _arity5358353630_)
                               (if (gx#stx-pair? _hd5357753627_)
                                   (let ((_e5358053633_
                                          (gx#syntax-e _hd5357753627_)))
                                     (let ((_lp-tl5358253640_
                                            (##cdr _e5358053633_))
                                           (_lp-hd5358153637_
                                            (##car _e5358053633_)))
                                       (_loop5357953623_
                                        _lp-tl5358253640_
                                        (cons _lp-hd5358153637_
                                              _arity5358353630_))))
                                   (let ((_arity5358453643_
                                          (reverse _arity5358353630_)))
                                     (___kont5437054371_
                                      _arity5358453643_
                                      _hd5357453611_))))))
                     (_loop5357953623_ _target5357653617_ '())))))
            (if (gx#stx-pair? ___stx5436554366_)
                (let ((_e5355953682_ (gx#syntax-e ___stx5436554366_)))
                  (let ((_tl5356153689_ (##cdr _e5355953682_))
                        (_hd5356053686_ (##car _e5355953682_)))
                    (if (gx#stx-pair? _tl5356153689_)
                        (let ((_e5356253692_ (gx#syntax-e _tl5356153689_)))
                          (let ((_tl5356453699_ (##cdr _e5356253692_))
                                (_hd5356353696_ (##car _e5356253692_)))
                            (if (gx#stx-pair? _tl5356453699_)
                                (let ((_e5356553702_
                                       (gx#syntax-e _tl5356453699_)))
                                  (let ((_tl5356753709_ (##cdr _e5356553702_))
                                        (_hd5356653706_ (##car _e5356553702_)))
                                    (if (gx#stx-null? _tl5356753709_)
                                        (___kont5436854369_
                                         _hd5356653706_
                                         _hd5356353696_)
                                        (if (gx#stx-pair/null? _tl5356453699_)
                                            (let ((___splice5437254373_
                                                   (gx#syntax-split-splice
                                                    _tl5356453699_
                                                    '0)))
                                              (let ((_tl5357853620_
                                                     (##vector-ref
                                                      ___splice5437254373_
                                                      '1))
                                                    (_target5357653617_
                                                     (##vector-ref
                                                      ___splice5437254373_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl5357853620_)
                                                    (___match5441454415_
                                                     _e5355953682_
                                                     _hd5356053686_
                                                     _tl5356153689_
                                                     _e5356253692_
                                                     _hd5356353696_
                                                     _tl5356453699_
                                                     ___splice5437254373_
                                                     _target5357653617_
                                                     _tl5357853620_)
                                                    (_g5355553590_))))
                                            (_g5355553590_)))))
                                (if (gx#stx-pair/null? _tl5356453699_)
                                    (let ((___splice5437254373_
                                           (gx#syntax-split-splice
                                            _tl5356453699_
                                            '0)))
                                      (let ((_tl5357853620_
                                             (##vector-ref
                                              ___splice5437254373_
                                              '1))
                                            (_target5357653617_
                                             (##vector-ref
                                              ___splice5437254373_
                                              '0)))
                                        (if (gx#stx-null? _tl5357853620_)
                                            (___match5441454415_
                                             _e5355953682_
                                             _hd5356053686_
                                             _tl5356153689_
                                             _e5356253692_
                                             _hd5356353696_
                                             _tl5356453699_
                                             ___splice5437254373_
                                             _target5357653617_
                                             _tl5357853620_)
                                            (_g5355553590_))))
                                    (_g5355553590_)))))
                        (_g5355553590_))))
                (_g5355553590_)))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx53734_)
      (let* ((_g5373853773_
              (lambda (_g5373953769_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5373953769_)))
             (_g5373753901_
              (lambda (_g5373953777_)
                (if (gx#stx-pair? _g5373953777_)
                    (let ((_e5374253780_ (gx#syntax-e _g5373953777_)))
                      (let ((_hd5374353784_ (##car _e5374253780_))
                            (_tl5374453787_ (##cdr _e5374253780_)))
                        (if (gx#stx-pair/null? _tl5374453787_)
                            (let ((_g54424_
                                   (gx#syntax-split-splice _tl5374453787_ '0)))
                              (begin
                                (let ((_g54425_
                                       (if (##values? _g54424_)
                                           (##vector-length _g54424_)
                                           1)))
                                  (if (not (##fx= _g54425_ 2))
                                      (error "Context expects 2 values"
                                             _g54425_)))
                                (let ((_target5374553790_
                                       (##vector-ref _g54424_ 0))
                                      (_tl5374753793_
                                       (##vector-ref _g54424_ 1)))
                                  (if (gx#stx-null? _tl5374753793_)
                                      (letrec ((_loop5374853796_
                                                (lambda (_hd5374653800_
                                                         _arity5375253803_
                                                         _prim5375353805_)
                                                  (if (gx#stx-pair?
                                                       _hd5374653800_)
                                                      (let ((_e5374953808_
                                                             (gx#syntax-e
                                                              _hd5374653800_)))
                                                        (let ((_lp-hd5375053812_
                                                               (##car _e5374953808_))
                                                              (_lp-tl5375153815_
                                                               (##cdr _e5374953808_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5375053812_)
                                                              (let ((_e5375653818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5375053812_)))
                        (let ((_hd5375753822_ (##car _e5375653818_))
                              (_tl5375853825_ (##cdr _e5375653818_)))
                          (if (gx#stx-pair/null? _tl5375853825_)
                              (let ((_g54426_
                                     (gx#syntax-split-splice
                                      _tl5375853825_
                                      '0)))
                                (begin
                                  (let ((_g54427_
                                         (if (##values? _g54426_)
                                             (##vector-length _g54426_)
                                             1)))
                                    (if (not (##fx= _g54427_ 2))
                                        (error "Context expects 2 values"
                                               _g54427_)))
                                  (let ((_target5375953828_
                                         (##vector-ref _g54426_ 0))
                                        (_tl5376153831_
                                         (##vector-ref _g54426_ 1)))
                                    (if (gx#stx-null? _tl5376153831_)
                                        (letrec ((_loop5376253834_
                                                  (lambda (_hd5376053838_
                                                           _arity5376653841_)
                                                    (if (gx#stx-pair?
                                                         _hd5376053838_)
                                                        (let ((_e5376353844_
                                                               (gx#syntax-e
                                                                _hd5376053838_)))
                                                          (let ((_lp-hd5376453848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e5376353844_))
                        (_lp-tl5376553851_ (##cdr _e5376353844_)))
                    (_loop5376253834_
                     _lp-tl5376553851_
                     (cons _lp-hd5376453848_ _arity5376653841_))))
                (let ((_arity5376753854_ (reverse _arity5376653841_)))
                  (_loop5374853796_
                   _lp-tl5375153815_
                   (cons _arity5376753854_ _arity5375253803_)
                   (cons _hd5375753822_ _prim5375353805_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop5376253834_
                                           _target5375953828_
                                           '()))
                                        (_g5373853773_ _g5373953777_)))))
                              (_g5373853773_ _g5373953777_))))
                      (_g5373853773_ _g5373953777_))))
              (let ((_arity5375453858_ (reverse _arity5375253803_))
                    (_prim5375553861_ (reverse _prim5375353805_)))
                ((lambda (_L53864_ _L53866_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L53864_ _L53866_)
                           (foldr2 (lambda (_g5388153887_
                                            _g5388253890_
                                            _g5388353892_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-primitive)
                                                 (cons _g5388253890_
                                                       (foldr1 (lambda (_g5388453895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5388553898_)
                         (cons _g5388453895_ _g5388553898_))
                       '()
                       _g5388153887_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g5388353892_))
                                   '()
                                   _L53864_
                                   _L53866_))))
                 _arity5375453858_
                 _prim5375553861_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5374853796_
                                         _target5374553790_
                                         '()
                                         '()))
                                      (_g5373853773_ _g5373953777_)))))
                            (_g5373853773_ _g5373953777_))))
                    (_g5373853773_ _g5373953777_)))))
        (_g5373753901_ _$stx53734_)))))
