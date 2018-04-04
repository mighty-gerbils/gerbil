(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx50442_)
      (let* ((_g5044650464_
              (lambda (_g5044750460_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5044750460_)))
             (_g5044550519_
              (lambda (_g5044750468_)
                (if (gx#stx-pair? _g5044750468_)
                    (let ((_e5045050471_ (gx#syntax-e _g5044750468_)))
                      (let ((_hd5045150475_ (##car _e5045050471_))
                            (_tl5045250478_ (##cdr _e5045050471_)))
                        (if (gx#stx-pair? _tl5045250478_)
                            (let ((_e5045350481_ (gx#syntax-e _tl5045250478_)))
                              (let ((_hd5045450485_ (##car _e5045350481_))
                                    (_tl5045550488_ (##cdr _e5045350481_)))
                                (if (gx#stx-pair? _tl5045550488_)
                                    (let ((_e5045650491_
                                           (gx#syntax-e _tl5045550488_)))
                                      (let ((_hd5045750495_
                                             (##car _e5045650491_))
                                            (_tl5045850498_
                                             (##cdr _e5045650491_)))
                                        (if (gx#stx-null? _tl5045850498_)
                                            ((lambda (_L50501_ _L50503_)
                                               (if (gx#identifier? _L50503_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L50503_ '()))
                       (cons _L50501_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5044650464_
                                                    _g5044750468_)))
                                             _hd5045750495_
                                             _hd5045450485_)
                                            (_g5044650464_ _g5044750468_))))
                                    (_g5044650464_ _g5044750468_))))
                            (_g5044650464_ _g5044750468_))))
                    (_g5044650464_ _g5044750468_)))))
        (_g5044550519_ _$stx50442_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx50523_)
      (let* ((_g5052750556_
              (lambda (_g5052850552_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5052850552_)))
             (_g5052650656_
              (lambda (_g5052850560_)
                (if (gx#stx-pair? _g5052850560_)
                    (let ((_e5053150563_ (gx#syntax-e _g5052850560_)))
                      (let ((_hd5053250567_ (##car _e5053150563_))
                            (_tl5053350570_ (##cdr _e5053150563_)))
                        (if (gx#stx-pair/null? _tl5053350570_)
                            (let ((_g53673_
                                   (gx#syntax-split-splice _tl5053350570_ '0)))
                              (begin
                                (let ((_g53674_
                                       (if (##values? _g53673_)
                                           (##vector-length _g53673_)
                                           1)))
                                  (if (not (##fx= _g53674_ 2))
                                      (error "Context expects 2 values"
                                             _g53674_)))
                                (let ((_target5053450573_
                                       (##vector-ref _g53673_ 0))
                                      (_tl5053650576_
                                       (##vector-ref _g53673_ 1)))
                                  (if (gx#stx-null? _tl5053650576_)
                                      (letrec ((_loop5053750579_
                                                (lambda (_hd5053550583_
                                                         _type5054150586_
                                                         _symbol5054250588_)
                                                  (if (gx#stx-pair?
                                                       _hd5053550583_)
                                                      (let ((_e5053850591_
                                                             (gx#syntax-e
                                                              _hd5053550583_)))
                                                        (let ((_lp-hd5053950595_
                                                               (##car _e5053850591_))
                                                              (_lp-tl5054050598_
                                                               (##cdr _e5053850591_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5053950595_)
                                                              (let ((_e5054550601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5053950595_)))
                        (let ((_hd5054650605_ (##car _e5054550601_))
                              (_tl5054750608_ (##cdr _e5054550601_)))
                          (if (gx#stx-pair? _tl5054750608_)
                              (let ((_e5054850611_
                                     (gx#syntax-e _tl5054750608_)))
                                (let ((_hd5054950615_ (##car _e5054850611_))
                                      (_tl5055050618_ (##cdr _e5054850611_)))
                                  (if (gx#stx-null? _tl5055050618_)
                                      (_loop5053750579_
                                       _lp-tl5054050598_
                                       (cons _hd5054950615_ _type5054150586_)
                                       (cons _hd5054650605_
                                             _symbol5054250588_))
                                      (_g5052750556_ _g5052850560_))))
                              (_g5052750556_ _g5052850560_))))
                      (_g5052750556_ _g5052850560_))))
              (let ((_type5054350621_ (reverse _type5054150586_))
                    (_symbol5054450624_ (reverse _symbol5054250588_)))
                ((lambda (_L50627_ _L50629_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L50627_ _L50629_)
                           (foldr2 (lambda (_g5064450648_
                                            _g5064550651_
                                            _g5064650653_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g5064550651_
                                                       (cons _g5064450648_
                                                             '())))
                                           _g5064650653_))
                                   '()
                                   _L50627_
                                   _L50629_))))
                 _type5054350621_
                 _symbol5054450624_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5053750579_
                                         _target5053450573_
                                         '()
                                         '()))
                                      (_g5052750556_ _g5052850560_)))))
                            (_g5052750556_ _g5052850560_))))
                    (_g5052750556_ _g5052850560_)))))
        (_g5052650656_ _$stx50523_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx50661_)
      (let* ((___stx5316453165_ _$stx50661_)
             (_g5066650708_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5316453165_))))
        (let ((___kont5316753168_
               (lambda (_L50836_ _L50838_ _L50839_ _L50840_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50840_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50839_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50838_ '()))
                                         (cons _L50836_ '())))))))
              (___kont5316953170_
               (lambda (_L50755_ _L50757_ _L50758_ _L50759_)
                 (cons _L50759_
                       (cons _L50758_
                             (cons _L50757_
                                   (cons _L50755_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5320353204_
                 (lambda (_e5067250786_
                          _hd5067350790_
                          _tl5067450793_
                          _e5067550796_
                          _hd5067650800_
                          _tl5067750803_
                          _e5067850806_
                          _hd5067950810_
                          _tl5068050813_
                          _e5068150816_
                          _hd5068250820_
                          _tl5068350823_
                          _e5068450826_
                          _hd5068550830_
                          _tl5068650833_)
                   (let ((_L50836_ _hd5068550830_)
                         (_L50838_ _hd5068250820_)
                         (_L50839_ _hd5067950810_)
                         (_L50840_ _hd5067650800_))
                     (if (if (gx#identifier? _L50840_)
                             (if (gx#identifier? _L50839_)
                                 (gx#identifier? _L50838_)
                                 '#f)
                             '#f)
                         (___kont5316753168_
                          _L50836_
                          _L50838_
                          _L50839_
                          _L50840_)
                         (_g5066650708_))))))
            (if (gx#stx-pair? ___stx5316453165_)
                (let ((_e5067250786_ (gx#syntax-e ___stx5316453165_)))
                  (let ((_tl5067450793_ (##cdr _e5067250786_))
                        (_hd5067350790_ (##car _e5067250786_)))
                    (if (gx#stx-pair? _tl5067450793_)
                        (let ((_e5067550796_ (gx#syntax-e _tl5067450793_)))
                          (let ((_tl5067750803_ (##cdr _e5067550796_))
                                (_hd5067650800_ (##car _e5067550796_)))
                            (if (gx#stx-pair? _tl5067750803_)
                                (let ((_e5067850806_
                                       (gx#syntax-e _tl5067750803_)))
                                  (let ((_tl5068050813_ (##cdr _e5067850806_))
                                        (_hd5067950810_ (##car _e5067850806_)))
                                    (if (gx#stx-pair? _tl5068050813_)
                                        (let ((_e5068150816_
                                               (gx#syntax-e _tl5068050813_)))
                                          (let ((_tl5068350823_
                                                 (##cdr _e5068150816_))
                                                (_hd5068250820_
                                                 (##car _e5068150816_)))
                                            (if (gx#stx-pair? _tl5068350823_)
                                                (let ((_e5068450826_
                                                       (gx#syntax-e
                                                        _tl5068350823_)))
                                                  (let ((_tl5068650833_
                                                         (##cdr _e5068450826_))
                                                        (_hd5068550830_
                                                         (##car _e5068450826_)))
                                                    (if (gx#stx-null?
                                                         _tl5068650833_)
                                                        (___match5320353204_
                                                         _e5067250786_
                                                         _hd5067350790_
                                                         _tl5067450793_
                                                         _e5067550796_
                                                         _hd5067650800_
                                                         _tl5067750803_
                                                         _e5067850806_
                                                         _hd5067950810_
                                                         _tl5068050813_
                                                         _e5068150816_
                                                         _hd5068250820_
                                                         _tl5068350823_
                                                         _e5068450826_
                                                         _hd5068550830_
                                                         _tl5068650833_)
                                                        (_g5066650708_))))
                                                (if (gx#stx-null?
                                                     _tl5068350823_)
                                                    (___kont5316953170_
                                                     _hd5068250820_
                                                     _hd5067950810_
                                                     _hd5067650800_
                                                     _hd5067350790_)
                                                    (_g5066650708_)))))
                                        (_g5066650708_))))
                                (_g5066650708_))))
                        (_g5066650708_))))
                (_g5066650708_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx50865_)
      (let* ((_g5086950904_
              (lambda (_g5087050900_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5087050900_)))
             (_g5086851023_
              (lambda (_g5087050908_)
                (if (gx#stx-pair? _g5087050908_)
                    (let ((_e5087450911_ (gx#syntax-e _g5087050908_)))
                      (let ((_hd5087550915_ (##car _e5087450911_))
                            (_tl5087650918_ (##cdr _e5087450911_)))
                        (if (gx#stx-pair/null? _tl5087650918_)
                            (let ((_g53675_
                                   (gx#syntax-split-splice _tl5087650918_ '0)))
                              (begin
                                (let ((_g53676_
                                       (if (##values? _g53675_)
                                           (##vector-length _g53675_)
                                           1)))
                                  (if (not (##fx= _g53676_ 2))
                                      (error "Context expects 2 values"
                                             _g53676_)))
                                (let ((_target5087750921_
                                       (##vector-ref _g53675_ 0))
                                      (_tl5087950924_
                                       (##vector-ref _g53675_ 1)))
                                  (if (gx#stx-null? _tl5087950924_)
                                      (letrec ((_loop5088050927_
                                                (lambda (_hd5087850931_
                                                         _symbol5088450934_
                                                         _method5088550936_
                                                         _type-t5088650938_)
                                                  (if (gx#stx-pair?
                                                       _hd5087850931_)
                                                      (let ((_e5088150941_
                                                             (gx#syntax-e
                                                              _hd5087850931_)))
                                                        (let ((_lp-hd5088250945_
                                                               (##car _e5088150941_))
                                                              (_lp-tl5088350948_
                                                               (##cdr _e5088150941_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5088250945_)
                                                              (let ((_e5089050951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5088250945_)))
                        (let ((_hd5089150955_ (##car _e5089050951_))
                              (_tl5089250958_ (##cdr _e5089050951_)))
                          (if (gx#stx-pair? _tl5089250958_)
                              (let ((_e5089350961_
                                     (gx#syntax-e _tl5089250958_)))
                                (let ((_hd5089450965_ (##car _e5089350961_))
                                      (_tl5089550968_ (##cdr _e5089350961_)))
                                  (if (gx#stx-pair? _tl5089550968_)
                                      (let ((_e5089650971_
                                             (gx#syntax-e _tl5089550968_)))
                                        (let ((_hd5089750975_
                                               (##car _e5089650971_))
                                              (_tl5089850978_
                                               (##cdr _e5089650971_)))
                                          (if (gx#stx-null? _tl5089850978_)
                                              (_loop5088050927_
                                               _lp-tl5088350948_
                                               (cons _hd5089750975_
                                                     _symbol5088450934_)
                                               (cons _hd5089450965_
                                                     _method5088550936_)
                                               (cons _hd5089150955_
                                                     _type-t5088650938_))
                                              (_g5086950904_ _g5087050908_))))
                                      (_g5086950904_ _g5087050908_))))
                              (_g5086950904_ _g5087050908_))))
                      (_g5086950904_ _g5087050908_))))
              (let ((_symbol5088750981_ (reverse _symbol5088450934_))
                    (_method5088850984_ (reverse _method5088550936_))
                    (_type-t5088950986_ (reverse _type-t5088650938_)))
                ((lambda (_L50989_ _L50991_ _L50992_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L50989_
                            _L50991_
                            _L50992_)
                           (foldr (lambda (_g5100851013_
                                           _g5100951016_
                                           _g5101051018_
                                           _g5101151020_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g5101051018_
                                                      (cons _g5100951016_
                                                            (cons _g5100851013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g5101151020_))
                                  '()
                                  _L50989_
                                  _L50991_
                                  _L50992_))))
                 _symbol5088750981_
                 _method5088850984_
                 _type-t5088950986_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5088050927_
                                         _target5087750921_
                                         '()
                                         '()
                                         '()))
                                      (_g5086950904_ _g5087050908_)))))
                            (_g5086950904_ _g5087050908_))))
                    (_g5086950904_ _g5087050908_)))))
        (_g5086851023_ _$stx50865_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx51028_)
      (let* ((_g5103251065_
              (lambda (_g5103351061_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5103351061_)))
             (_g5103151179_
              (lambda (_g5103351069_)
                (if (gx#stx-pair? _g5103351069_)
                    (let ((_e5103751072_ (gx#syntax-e _g5103351069_)))
                      (let ((_hd5103851076_ (##car _e5103751072_))
                            (_tl5103951079_ (##cdr _e5103751072_)))
                        (if (gx#stx-pair? _tl5103951079_)
                            (let ((_e5104051082_ (gx#syntax-e _tl5103951079_)))
                              (let ((_hd5104151086_ (##car _e5104051082_))
                                    (_tl5104251089_ (##cdr _e5104051082_)))
                                (if (gx#stx-pair/null? _tl5104251089_)
                                    (let ((_g53677_
                                           (gx#syntax-split-splice
                                            _tl5104251089_
                                            '0)))
                                      (begin
                                        (let ((_g53678_
                                               (if (##values? _g53677_)
                                                   (##vector-length _g53677_)
                                                   1)))
                                          (if (not (##fx= _g53678_ 2))
                                              (error "Context expects 2 values"
                                                     _g53678_)))
                                        (let ((_target5104351092_
                                               (##vector-ref _g53677_ 0))
                                              (_tl5104551095_
                                               (##vector-ref _g53677_ 1)))
                                          (if (gx#stx-null? _tl5104551095_)
                                              (letrec ((_loop5104651098_
                                                        (lambda (_hd5104451102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol5105051105_
                         _method5105151107_)
                  (if (gx#stx-pair? _hd5104451102_)
                      (let ((_e5104751110_ (gx#syntax-e _hd5104451102_)))
                        (let ((_lp-hd5104851114_ (##car _e5104751110_))
                              (_lp-tl5104951117_ (##cdr _e5104751110_)))
                          (if (gx#stx-pair? _lp-hd5104851114_)
                              (let ((_e5105451120_
                                     (gx#syntax-e _lp-hd5104851114_)))
                                (let ((_hd5105551124_ (##car _e5105451120_))
                                      (_tl5105651127_ (##cdr _e5105451120_)))
                                  (if (gx#stx-pair? _tl5105651127_)
                                      (let ((_e5105751130_
                                             (gx#syntax-e _tl5105651127_)))
                                        (let ((_hd5105851134_
                                               (##car _e5105751130_))
                                              (_tl5105951137_
                                               (##cdr _e5105751130_)))
                                          (if (gx#stx-null? _tl5105951137_)
                                              (_loop5104651098_
                                               _lp-tl5104951117_
                                               (cons _hd5105851134_
                                                     _symbol5105051105_)
                                               (cons _hd5105551124_
                                                     _method5105151107_))
                                              (_g5103251065_ _g5103351069_))))
                                      (_g5103251065_ _g5103351069_))))
                              (_g5103251065_ _g5103351069_))))
                      (let ((_symbol5105251140_ (reverse _symbol5105051105_))
                            (_method5105351143_ (reverse _method5105151107_)))
                        ((lambda (_L51146_ _L51148_ _L51149_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L51146_
                                    _L51148_)
                                   (foldr2 (lambda (_g5116751171_
                                                    _g5116851174_
                                                    _g5116951176_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L51149_
                                                               (cons _g5116851174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g5116751171_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g5116951176_))
                                           '()
                                           _L51146_
                                           _L51148_))))
                         _symbol5105251140_
                         _method5105351143_
                         _hd5104151086_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop5104651098_
                                                 _target5104351092_
                                                 '()
                                                 '()))
                                              (_g5103251065_ _g5103351069_)))))
                                    (_g5103251065_ _g5103351069_))))
                            (_g5103251065_ _g5103351069_))))
                    (_g5103251065_ _g5103351069_)))))
        (_g5103151179_ _$stx51028_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx51184_)
      (let* ((_g5118851202_
              (lambda (_g5118951198_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5118951198_)))
             (_g5118751243_
              (lambda (_g5118951206_)
                (if (gx#stx-pair? _g5118951206_)
                    (let ((_e5119151209_ (gx#syntax-e _g5118951206_)))
                      (let ((_hd5119251213_ (##car _e5119151209_))
                            (_tl5119351216_ (##cdr _e5119151209_)))
                        (if (gx#stx-pair? _tl5119351216_)
                            (let ((_e5119451219_ (gx#syntax-e _tl5119351216_)))
                              (let ((_hd5119551223_ (##car _e5119451219_))
                                    (_tl5119651226_ (##cdr _e5119451219_)))
                                (if (gx#stx-null? _tl5119651226_)
                                    ((lambda (_L51229_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51229_ '()))
                                                   '())))
                                     _hd5119551223_)
                                    (_g5118851202_ _g5118951206_))))
                            (_g5118851202_ _g5118951206_))))
                    (_g5118851202_ _g5118951206_)))))
        (_g5118751243_ _$stx51184_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx51247_)
      (let* ((___stx5323253233_ _$stx51247_)
             (_g5125351319_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5323253233_))))
        (let ((___kont5323553236_
               (lambda (_L51541_ _L51543_ _L51544_ _L51545_ _L51546_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L51546_
                             (cons _L51545_
                                   (cons _L51544_
                                         (cons _L51543_
                                               (cons _L51541_ '()))))))))
              (___kont5323753238_
               (lambda (_L51451_ _L51453_ _L51454_ _L51455_)
                 (cons _L51455_
                       (cons _L51454_
                             (cons _L51453_
                                   (cons _L51451_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5323953240_
               (lambda (_L51376_ _L51378_ _L51379_ _L51380_ _L51381_)
                 (cons _L51381_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L51379_
                                   (cons _L51378_
                                         (cons _L51376_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5323253233_)
              (let ((_e5126051481_ (gx#syntax-e ___stx5323253233_)))
                (let ((_tl5126251488_ (##cdr _e5126051481_))
                      (_hd5126151485_ (##car _e5126051481_)))
                  (if (gx#stx-pair? _tl5126251488_)
                      (let ((_e5126351491_ (gx#syntax-e _tl5126251488_)))
                        (let ((_tl5126551498_ (##cdr _e5126351491_))
                              (_hd5126451495_ (##car _e5126351491_)))
                          (if (gx#stx-pair? _tl5126551498_)
                              (let ((_e5126651501_
                                     (gx#syntax-e _tl5126551498_)))
                                (let ((_tl5126851508_ (##cdr _e5126651501_))
                                      (_hd5126751505_ (##car _e5126651501_)))
                                  (if (gx#stx-pair? _tl5126851508_)
                                      (let ((_e5126951511_
                                             (gx#syntax-e _tl5126851508_)))
                                        (let ((_tl5127151518_
                                               (##cdr _e5126951511_))
                                              (_hd5127051515_
                                               (##car _e5126951511_)))
                                          (if (gx#stx-pair? _tl5127151518_)
                                              (let ((_e5127251521_
                                                     (gx#syntax-e
                                                      _tl5127151518_)))
                                                (let ((_tl5127451528_
                                                       (##cdr _e5127251521_))
                                                      (_hd5127351525_
                                                       (##car _e5127251521_)))
                                                  (if (gx#stx-pair?
                                                       _tl5127451528_)
                                                      (let ((_e5127551531_
                                                             (gx#syntax-e
                                                              _tl5127451528_)))
                                                        (let ((_tl5127751538_
                                                               (##cdr _e5127551531_))
                                                              (_hd5127651535_
                                                               (##car _e5127551531_)))
                                                          (if (gx#stx-null?
                                                               _tl5127751538_)
                                                              (___kont5323553236_
                                                               _hd5127651535_
                                                               _hd5127351525_
                                                               _hd5127051515_
                                                               _hd5126751505_
                                                               _hd5126451495_)
                                                              (_g5125351319_))))
                                                      (if (gx#stx-null?
                                                           _tl5127451528_)
                                                          (___kont5323953240_
                                                           _hd5127351525_
                                                           _hd5127051515_
                                                           _hd5126751505_
                                                           _hd5126451495_
                                                           _hd5126151485_)
                                                          (_g5125351319_)))))
                                              (if (gx#stx-null? _tl5127151518_)
                                                  (___kont5323753238_
                                                   _hd5127051515_
                                                   _hd5126751505_
                                                   _hd5126451495_
                                                   _hd5126151485_)
                                                  (_g5125351319_)))))
                                      (_g5125351319_))))
                              (_g5125351319_))))
                      (_g5125351319_))))
              (_g5125351319_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx51574_)
      (let* ((___stx5334053341_ _$stx51574_)
             (_g5157951632_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5334053341_))))
        (let ((___kont5334353344_
               (lambda (_L51800_ _L51802_ _L51803_ _L51804_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51804_ '()))
                             (cons '#f
                                   (cons _L51803_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51802_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L51800_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5334553346_
               (lambda (_L51699_ _L51701_ _L51702_ _L51703_ _L51704_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L51703_ '()))
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
                                     (cons _L51701_ '()))
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
                                                     (cons _L51704_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51703_ '()))
                                                     (cons _L51702_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L51699_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5334053341_)
              (let ((_e5158551736_ (gx#syntax-e ___stx5334053341_)))
                (let ((_tl5158751743_ (##cdr _e5158551736_))
                      (_hd5158651740_ (##car _e5158551736_)))
                  (if (gx#stx-pair? _tl5158751743_)
                      (let ((_e5158851746_ (gx#syntax-e _tl5158751743_)))
                        (let ((_tl5159051753_ (##cdr _e5158851746_))
                              (_hd5158951750_ (##car _e5158851746_)))
                          (if (gx#stx-pair? _tl5159051753_)
                              (let ((_e5159151756_
                                     (gx#syntax-e _tl5159051753_)))
                                (let ((_tl5159351763_ (##cdr _e5159151756_))
                                      (_hd5159251760_ (##car _e5159151756_)))
                                  (if (gx#stx-datum? _hd5159251760_)
                                      (let ((_e5159451766_
                                             (gx#stx-e _hd5159251760_)))
                                        (if (equal? _e5159451766_ '#f)
                                            (if (gx#stx-pair? _tl5159351763_)
                                                (let ((_e5159551770_
                                                       (gx#syntax-e
                                                        _tl5159351763_)))
                                                  (let ((_tl5159751777_
                                                         (##cdr _e5159551770_))
                                                        (_hd5159651774_
                                                         (##car _e5159551770_)))
                                                    (if (gx#stx-pair?
                                                         _tl5159751777_)
                                                        (let ((_e5159851780_
                                                               (gx#syntax-e
                                                                _tl5159751777_)))
                                                          (let ((_tl5160051787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5159851780_))
                        (_hd5159951784_ (##car _e5159851780_)))
                    (if (gx#stx-pair? _tl5160051787_)
                        (let ((_e5160151790_ (gx#syntax-e _tl5160051787_)))
                          (let ((_tl5160351797_ (##cdr _e5160151790_))
                                (_hd5160251794_ (##car _e5160151790_)))
                            (if (gx#stx-null? _tl5160351797_)
                                (___kont5334353344_
                                 _hd5160251794_
                                 _hd5159951784_
                                 _hd5159651774_
                                 _hd5158951750_)
                                (_g5157951632_))))
                        (_g5157951632_))))
                (_g5157951632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5157951632_))
                                            (if (gx#stx-pair? _tl5159351763_)
                                                (let ((_e5161851669_
                                                       (gx#syntax-e
                                                        _tl5159351763_)))
                                                  (let ((_tl5162051676_
                                                         (##cdr _e5161851669_))
                                                        (_hd5161951673_
                                                         (##car _e5161851669_)))
                                                    (if (gx#stx-pair?
                                                         _tl5162051676_)
                                                        (let ((_e5162151679_
                                                               (gx#syntax-e
                                                                _tl5162051676_)))
                                                          (let ((_tl5162351686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5162151679_))
                        (_hd5162251683_ (##car _e5162151679_)))
                    (if (gx#stx-pair? _tl5162351686_)
                        (let ((_e5162451689_ (gx#syntax-e _tl5162351686_)))
                          (let ((_tl5162651696_ (##cdr _e5162451689_))
                                (_hd5162551693_ (##car _e5162451689_)))
                            (if (gx#stx-null? _tl5162651696_)
                                (___kont5334553346_
                                 _hd5162551693_
                                 _hd5162251683_
                                 _hd5161951673_
                                 _hd5159251760_
                                 _hd5158951750_)
                                (_g5157951632_))))
                        (_g5157951632_))))
                (_g5157951632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5157951632_))))
                                      (if (gx#stx-pair? _tl5159351763_)
                                          (let ((_e5161851669_
                                                 (gx#syntax-e _tl5159351763_)))
                                            (let ((_tl5162051676_
                                                   (##cdr _e5161851669_))
                                                  (_hd5161951673_
                                                   (##car _e5161851669_)))
                                              (if (gx#stx-pair? _tl5162051676_)
                                                  (let ((_e5162151679_
                                                         (gx#syntax-e
                                                          _tl5162051676_)))
                                                    (let ((_tl5162351686_
                                                           (##cdr _e5162151679_))
                                                          (_hd5162251683_
                                                           (##car _e5162151679_)))
                                                      (if (gx#stx-pair?
                                                           _tl5162351686_)
                                                          (let ((_e5162451689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5162351686_)))
                    (let ((_tl5162651696_ (##cdr _e5162451689_))
                          (_hd5162551693_ (##car _e5162451689_)))
                      (if (gx#stx-null? _tl5162651696_)
                          (___kont5334553346_
                           _hd5162551693_
                           _hd5162251683_
                           _hd5161951673_
                           _hd5159251760_
                           _hd5158951750_)
                          (_g5157951632_))))
                  (_g5157951632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5157951632_))))
                                          (_g5157951632_)))))
                              (_g5157951632_))))
                      (_g5157951632_))))
              (_g5157951632_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx51832_)
      (let* ((_g5183651850_
              (lambda (_g5183751846_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5183751846_)))
             (_g5183551891_
              (lambda (_g5183751854_)
                (if (gx#stx-pair? _g5183751854_)
                    (let ((_e5183951857_ (gx#syntax-e _g5183751854_)))
                      (let ((_hd5184051861_ (##car _e5183951857_))
                            (_tl5184151864_ (##cdr _e5183951857_)))
                        (if (gx#stx-pair? _tl5184151864_)
                            (let ((_e5184251867_ (gx#syntax-e _tl5184151864_)))
                              (let ((_hd5184351871_ (##car _e5184251867_))
                                    (_tl5184451874_ (##cdr _e5184251867_)))
                                (if (gx#stx-null? _tl5184451874_)
                                    ((lambda (_L51877_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51877_ '()))
                                                   '())))
                                     _hd5184351871_)
                                    (_g5183651850_ _g5183751854_))))
                            (_g5183651850_ _g5183751854_))))
                    (_g5183651850_ _g5183751854_)))))
        (_g5183551891_ _$stx51832_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx51895_)
      (let* ((_g5189951913_
              (lambda (_g5190051909_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5190051909_)))
             (_g5189851954_
              (lambda (_g5190051917_)
                (if (gx#stx-pair? _g5190051917_)
                    (let ((_e5190251920_ (gx#syntax-e _g5190051917_)))
                      (let ((_hd5190351924_ (##car _e5190251920_))
                            (_tl5190451927_ (##cdr _e5190251920_)))
                        (if (gx#stx-pair? _tl5190451927_)
                            (let ((_e5190551930_ (gx#syntax-e _tl5190451927_)))
                              (let ((_hd5190651934_ (##car _e5190551930_))
                                    (_tl5190751937_ (##cdr _e5190551930_)))
                                (if (gx#stx-null? _tl5190751937_)
                                    ((lambda (_L51940_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51940_ '()))
                                                   '())))
                                     _hd5190651934_)
                                    (_g5189951913_ _g5190051917_))))
                            (_g5189951913_ _g5190051917_))))
                    (_g5189951913_ _g5190051917_)))))
        (_g5189851954_ _$stx51895_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx51958_)
      (let* ((___stx5343253433_ _$stx51958_)
             (_g5196351996_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5343253433_))))
        (let ((___kont5343553436_
               (lambda (_L52098_ _L52100_ _L52101_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52101_ '()))
                             (cons _L52100_ (cons _L52098_ '()))))))
              (___kont5343753438_
               (lambda (_L52033_ _L52035_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52035_ '()))
                             (cons _L52033_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5343253433_)
              (let ((_e5196852058_ (gx#syntax-e ___stx5343253433_)))
                (let ((_tl5197052065_ (##cdr _e5196852058_))
                      (_hd5196952062_ (##car _e5196852058_)))
                  (if (gx#stx-pair? _tl5197052065_)
                      (let ((_e5197152068_ (gx#syntax-e _tl5197052065_)))
                        (let ((_tl5197352075_ (##cdr _e5197152068_))
                              (_hd5197252072_ (##car _e5197152068_)))
                          (if (gx#stx-pair? _tl5197352075_)
                              (let ((_e5197452078_
                                     (gx#syntax-e _tl5197352075_)))
                                (let ((_tl5197652085_ (##cdr _e5197452078_))
                                      (_hd5197552082_ (##car _e5197452078_)))
                                  (if (gx#stx-pair? _tl5197652085_)
                                      (let ((_e5197752088_
                                             (gx#syntax-e _tl5197652085_)))
                                        (let ((_tl5197952095_
                                               (##cdr _e5197752088_))
                                              (_hd5197852092_
                                               (##car _e5197752088_)))
                                          (if (gx#stx-null? _tl5197952095_)
                                              (___kont5343553436_
                                               _hd5197852092_
                                               _hd5197552082_
                                               _hd5197252072_)
                                              (_g5196351996_))))
                                      (if (gx#stx-null? _tl5197652085_)
                                          (___kont5343753438_
                                           _hd5197552082_
                                           _hd5197252072_)
                                          (_g5196351996_)))))
                              (_g5196351996_))))
                      (_g5196351996_))))
              (_g5196351996_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx52123_)
      (let* ((___stx5348853489_ _$stx52123_)
             (_g5212852161_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5348853489_))))
        (let ((___kont5349153492_
               (lambda (_L52263_ _L52265_ _L52266_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52266_ '()))
                             (cons _L52265_ (cons _L52263_ '()))))))
              (___kont5349353494_
               (lambda (_L52198_ _L52200_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52200_ '()))
                             (cons _L52198_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5348853489_)
              (let ((_e5213352223_ (gx#syntax-e ___stx5348853489_)))
                (let ((_tl5213552230_ (##cdr _e5213352223_))
                      (_hd5213452227_ (##car _e5213352223_)))
                  (if (gx#stx-pair? _tl5213552230_)
                      (let ((_e5213652233_ (gx#syntax-e _tl5213552230_)))
                        (let ((_tl5213852240_ (##cdr _e5213652233_))
                              (_hd5213752237_ (##car _e5213652233_)))
                          (if (gx#stx-pair? _tl5213852240_)
                              (let ((_e5213952243_
                                     (gx#syntax-e _tl5213852240_)))
                                (let ((_tl5214152250_ (##cdr _e5213952243_))
                                      (_hd5214052247_ (##car _e5213952243_)))
                                  (if (gx#stx-pair? _tl5214152250_)
                                      (let ((_e5214252253_
                                             (gx#syntax-e _tl5214152250_)))
                                        (let ((_tl5214452260_
                                               (##cdr _e5214252253_))
                                              (_hd5214352257_
                                               (##car _e5214252253_)))
                                          (if (gx#stx-null? _tl5214452260_)
                                              (___kont5349153492_
                                               _hd5214352257_
                                               _hd5214052247_
                                               _hd5213752237_)
                                              (_g5212852161_))))
                                      (if (gx#stx-null? _tl5214152250_)
                                          (___kont5349353494_
                                           _hd5214052247_
                                           _hd5213752237_)
                                          (_g5212852161_)))))
                              (_g5212852161_))))
                      (_g5212852161_))))
              (_g5212852161_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx52288_)
      (let* ((___stx5354453545_ _$stx52288_)
             (_g5229452335_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5354453545_))))
        (let ((___kont5354753548_
               (lambda (_L52483_ _L52485_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L52485_ '()))
                                   (cons '#f
                                         (cons _L52483_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L52483_ '()))
                                                     '()))))))))
              (___kont5354953550_
               (lambda (_L52415_ _L52417_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L52417_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L52415_ '()))
                                         '()))))))
              (___kont5355153552_
               (lambda (_L52362_ _L52364_)
                 (cons _L52364_ (cons _L52362_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5354453545_)
              (let ((_e5229852439_ (gx#syntax-e ___stx5354453545_)))
                (let ((_tl5230052446_ (##cdr _e5229852439_))
                      (_hd5229952443_ (##car _e5229852439_)))
                  (if (gx#stx-pair? _tl5230052446_)
                      (let ((_e5230152449_ (gx#syntax-e _tl5230052446_)))
                        (let ((_tl5230352456_ (##cdr _e5230152449_))
                              (_hd5230252453_ (##car _e5230152449_)))
                          (if (gx#stx-pair? _tl5230352456_)
                              (let ((_e5230452459_
                                     (gx#syntax-e _tl5230352456_)))
                                (let ((_tl5230652466_ (##cdr _e5230452459_))
                                      (_hd5230552463_ (##car _e5230452459_)))
                                  (if (gx#stx-datum? _hd5230552463_)
                                      (let ((_e5230752469_
                                             (gx#stx-e _hd5230552463_)))
                                        (if (equal? _e5230752469_ 'inline:)
                                            (if (gx#stx-pair? _tl5230652466_)
                                                (let ((_e5230852473_
                                                       (gx#syntax-e
                                                        _tl5230652466_)))
                                                  (let ((_tl5231052480_
                                                         (##cdr _e5230852473_))
                                                        (_hd5230952477_
                                                         (##car _e5230852473_)))
                                                    (if (gx#stx-null?
                                                         _tl5231052480_)
                                                        (___kont5354753548_
                                                         _hd5230952477_
                                                         _hd5230252453_)
                                                        (_g5229452335_))))
                                                (if (gx#stx-null?
                                                     _tl5230652466_)
                                                    (___kont5354953550_
                                                     _hd5230552463_
                                                     _hd5230252453_)
                                                    (_g5229452335_)))
                                            (if (gx#stx-null? _tl5230652466_)
                                                (___kont5354953550_
                                                 _hd5230552463_
                                                 _hd5230252453_)
                                                (_g5229452335_))))
                                      (if (gx#stx-null? _tl5230652466_)
                                          (___kont5354953550_
                                           _hd5230552463_
                                           _hd5230252453_)
                                          (_g5229452335_)))))
                              (if (gx#stx-null? _tl5230352456_)
                                  (___kont5355153552_
                                   _hd5230252453_
                                   _hd5229952443_)
                                  (_g5229452335_)))))
                      (_g5229452335_))))
              (_g5229452335_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx52507_)
      (let* ((_g5251152540_
              (lambda (_g5251252536_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5251252536_)))
             (_g5251052640_
              (lambda (_g5251252544_)
                (if (gx#stx-pair? _g5251252544_)
                    (let ((_e5251552547_ (gx#syntax-e _g5251252544_)))
                      (let ((_hd5251652551_ (##car _e5251552547_))
                            (_tl5251752554_ (##cdr _e5251552547_)))
                        (if (gx#stx-pair/null? _tl5251752554_)
                            (let ((_g53679_
                                   (gx#syntax-split-splice _tl5251752554_ '0)))
                              (begin
                                (let ((_g53680_
                                       (if (##values? _g53679_)
                                           (##vector-length _g53679_)
                                           1)))
                                  (if (not (##fx= _g53680_ 2))
                                      (error "Context expects 2 values"
                                             _g53680_)))
                                (let ((_target5251852557_
                                       (##vector-ref _g53679_ 0))
                                      (_tl5252052560_
                                       (##vector-ref _g53679_ 1)))
                                  (if (gx#stx-null? _tl5252052560_)
                                      (letrec ((_loop5252152563_
                                                (lambda (_hd5251952567_
                                                         _dispatch5252552570_
                                                         _arity5252652572_)
                                                  (if (gx#stx-pair?
                                                       _hd5251952567_)
                                                      (let ((_e5252252575_
                                                             (gx#syntax-e
                                                              _hd5251952567_)))
                                                        (let ((_lp-hd5252352579_
                                                               (##car _e5252252575_))
                                                              (_lp-tl5252452582_
                                                               (##cdr _e5252252575_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5252352579_)
                                                              (let ((_e5252952585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5252352579_)))
                        (let ((_hd5253052589_ (##car _e5252952585_))
                              (_tl5253152592_ (##cdr _e5252952585_)))
                          (if (gx#stx-pair? _tl5253152592_)
                              (let ((_e5253252595_
                                     (gx#syntax-e _tl5253152592_)))
                                (let ((_hd5253352599_ (##car _e5253252595_))
                                      (_tl5253452602_ (##cdr _e5253252595_)))
                                  (if (gx#stx-null? _tl5253452602_)
                                      (_loop5252152563_
                                       _lp-tl5252452582_
                                       (cons _hd5253352599_
                                             _dispatch5252552570_)
                                       (cons _hd5253052589_ _arity5252652572_))
                                      (_g5251152540_ _g5251252544_))))
                              (_g5251152540_ _g5251252544_))))
                      (_g5251152540_ _g5251252544_))))
              (let ((_dispatch5252752605_ (reverse _dispatch5252552570_))
                    (_arity5252852608_ (reverse _arity5252652572_)))
                ((lambda (_L52611_ _L52613_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L52611_
                                              _L52613_)
                                             (foldr2 (lambda (_g5262852632_
                                                              _g5262952635_
                                                              _g5263052637_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5262952635_ (cons _g5262852632_ '())))
                     _g5263052637_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L52611_
                                                     _L52613_)))
                                     '()))))
                 _dispatch5252752605_
                 _arity5252852608_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5252152563_
                                         _target5251852557_
                                         '()
                                         '()))
                                      (_g5251152540_ _g5251252544_)))))
                            (_g5251152540_ _g5251252544_))))
                    (_g5251152540_ _g5251252544_)))))
        (_g5251052640_ _$stx52507_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx52645_)
      (let* ((_g5264952667_
              (lambda (_g5265052663_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5265052663_)))
             (_g5264852722_
              (lambda (_g5265052671_)
                (if (gx#stx-pair? _g5265052671_)
                    (let ((_e5265352674_ (gx#syntax-e _g5265052671_)))
                      (let ((_hd5265452678_ (##car _e5265352674_))
                            (_tl5265552681_ (##cdr _e5265352674_)))
                        (if (gx#stx-pair? _tl5265552681_)
                            (let ((_e5265652684_ (gx#syntax-e _tl5265552681_)))
                              (let ((_hd5265752688_ (##car _e5265652684_))
                                    (_tl5265852691_ (##cdr _e5265652684_)))
                                (if (gx#stx-pair? _tl5265852691_)
                                    (let ((_e5265952694_
                                           (gx#syntax-e _tl5265852691_)))
                                      (let ((_hd5266052698_
                                             (##car _e5265952694_))
                                            (_tl5266152701_
                                             (##cdr _e5265952694_)))
                                        (if (gx#stx-null? _tl5266152701_)
                                            ((lambda (_L52704_ _L52706_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L52706_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L52704_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5266052698_
                                             _hd5265752688_)
                                            (_g5264952667_ _g5265052671_))))
                                    (_g5264952667_ _g5265052671_))))
                            (_g5264952667_ _g5265052671_))))
                    (_g5264952667_ _g5265052671_)))))
        (_g5264852722_ _$stx52645_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx52726_)
      (let* ((_g5273052748_
              (lambda (_g5273152744_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5273152744_)))
             (_g5272952803_
              (lambda (_g5273152752_)
                (if (gx#stx-pair? _g5273152752_)
                    (let ((_e5273452755_ (gx#syntax-e _g5273152752_)))
                      (let ((_hd5273552759_ (##car _e5273452755_))
                            (_tl5273652762_ (##cdr _e5273452755_)))
                        (if (gx#stx-pair? _tl5273652762_)
                            (let ((_e5273752765_ (gx#syntax-e _tl5273652762_)))
                              (let ((_hd5273852769_ (##car _e5273752765_))
                                    (_tl5273952772_ (##cdr _e5273752765_)))
                                (if (gx#stx-pair? _tl5273952772_)
                                    (let ((_e5274052775_
                                           (gx#syntax-e _tl5273952772_)))
                                      (let ((_hd5274152779_
                                             (##car _e5274052775_))
                                            (_tl5274252782_
                                             (##cdr _e5274052775_)))
                                        (if (gx#stx-null? _tl5274252782_)
                                            ((lambda (_L52785_ _L52787_)
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
                               (cons _L52787_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L52785_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5274152779_
                                             _hd5273852769_)
                                            (_g5273052748_ _g5273152752_))))
                                    (_g5273052748_ _g5273152752_))))
                            (_g5273052748_ _g5273152752_))))
                    (_g5273052748_ _g5273152752_)))))
        (_g5272952803_ _$stx52726_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx52807_)
      (let* ((___stx5362253623_ _$stx52807_)
             (_g5281252847_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5362253623_))))
        (let ((___kont5362553626_
               (lambda (_L52969_ _L52971_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L52971_
                             (cons (cons (gx#datum->syntax__0 '#f '@lambda)
                                         (cons _L52969_ '()))
                                   '())))))
              (___kont5362753628_
               (lambda (_L52904_ _L52906_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L52906_
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          '@case-lambda)
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g5292352926_
                                                            _g5292452929_)
                                                     (cons (cons _g5292352926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '#f '()))
                   _g5292452929_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L52904_)))
                                   '()))))))
          (let ((___match5367153672_
                 (lambda (_e5282752854_
                          _hd5282852858_
                          _tl5282952861_
                          _e5283052864_
                          _hd5283152868_
                          _tl5283252871_
                          ___splice5362953630_
                          _target5283352874_
                          _tl5283552877_)
                   (letrec ((_loop5283652880_
                             (lambda (_hd5283452884_ _arity5284052887_)
                               (if (gx#stx-pair? _hd5283452884_)
                                   (let ((_e5283752890_
                                          (gx#syntax-e _hd5283452884_)))
                                     (let ((_lp-tl5283952897_
                                            (##cdr _e5283752890_))
                                           (_lp-hd5283852894_
                                            (##car _e5283752890_)))
                                       (_loop5283652880_
                                        _lp-tl5283952897_
                                        (cons _lp-hd5283852894_
                                              _arity5284052887_))))
                                   (let ((_arity5284152900_
                                          (reverse _arity5284052887_)))
                                     (___kont5362753628_
                                      _arity5284152900_
                                      _hd5283152868_))))))
                     (_loop5283652880_ _target5283352874_ '())))))
            (if (gx#stx-pair? ___stx5362253623_)
                (let ((_e5281652939_ (gx#syntax-e ___stx5362253623_)))
                  (let ((_tl5281852946_ (##cdr _e5281652939_))
                        (_hd5281752943_ (##car _e5281652939_)))
                    (if (gx#stx-pair? _tl5281852946_)
                        (let ((_e5281952949_ (gx#syntax-e _tl5281852946_)))
                          (let ((_tl5282152956_ (##cdr _e5281952949_))
                                (_hd5282052953_ (##car _e5281952949_)))
                            (if (gx#stx-pair? _tl5282152956_)
                                (let ((_e5282252959_
                                       (gx#syntax-e _tl5282152956_)))
                                  (let ((_tl5282452966_ (##cdr _e5282252959_))
                                        (_hd5282352963_ (##car _e5282252959_)))
                                    (if (gx#stx-null? _tl5282452966_)
                                        (___kont5362553626_
                                         _hd5282352963_
                                         _hd5282052953_)
                                        (if (gx#stx-pair/null? _tl5282152956_)
                                            (let ((___splice5362953630_
                                                   (gx#syntax-split-splice
                                                    _tl5282152956_
                                                    '0)))
                                              (let ((_tl5283552877_
                                                     (##vector-ref
                                                      ___splice5362953630_
                                                      '1))
                                                    (_target5283352874_
                                                     (##vector-ref
                                                      ___splice5362953630_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl5283552877_)
                                                    (___match5367153672_
                                                     _e5281652939_
                                                     _hd5281752943_
                                                     _tl5281852946_
                                                     _e5281952949_
                                                     _hd5282052953_
                                                     _tl5282152956_
                                                     ___splice5362953630_
                                                     _target5283352874_
                                                     _tl5283552877_)
                                                    (_g5281252847_))))
                                            (_g5281252847_)))))
                                (if (gx#stx-pair/null? _tl5282152956_)
                                    (let ((___splice5362953630_
                                           (gx#syntax-split-splice
                                            _tl5282152956_
                                            '0)))
                                      (let ((_tl5283552877_
                                             (##vector-ref
                                              ___splice5362953630_
                                              '1))
                                            (_target5283352874_
                                             (##vector-ref
                                              ___splice5362953630_
                                              '0)))
                                        (if (gx#stx-null? _tl5283552877_)
                                            (___match5367153672_
                                             _e5281652939_
                                             _hd5281752943_
                                             _tl5281852946_
                                             _e5281952949_
                                             _hd5282052953_
                                             _tl5282152956_
                                             ___splice5362953630_
                                             _target5283352874_
                                             _tl5283552877_)
                                            (_g5281252847_))))
                                    (_g5281252847_)))))
                        (_g5281252847_))))
                (_g5281252847_)))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx52991_)
      (let* ((_g5299553030_
              (lambda (_g5299653026_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5299653026_)))
             (_g5299453158_
              (lambda (_g5299653034_)
                (if (gx#stx-pair? _g5299653034_)
                    (let ((_e5299953037_ (gx#syntax-e _g5299653034_)))
                      (let ((_hd5300053041_ (##car _e5299953037_))
                            (_tl5300153044_ (##cdr _e5299953037_)))
                        (if (gx#stx-pair/null? _tl5300153044_)
                            (let ((_g53681_
                                   (gx#syntax-split-splice _tl5300153044_ '0)))
                              (begin
                                (let ((_g53682_
                                       (if (##values? _g53681_)
                                           (##vector-length _g53681_)
                                           1)))
                                  (if (not (##fx= _g53682_ 2))
                                      (error "Context expects 2 values"
                                             _g53682_)))
                                (let ((_target5300253047_
                                       (##vector-ref _g53681_ 0))
                                      (_tl5300453050_
                                       (##vector-ref _g53681_ 1)))
                                  (if (gx#stx-null? _tl5300453050_)
                                      (letrec ((_loop5300553053_
                                                (lambda (_hd5300353057_
                                                         _arity5300953060_
                                                         _prim5301053062_)
                                                  (if (gx#stx-pair?
                                                       _hd5300353057_)
                                                      (let ((_e5300653065_
                                                             (gx#syntax-e
                                                              _hd5300353057_)))
                                                        (let ((_lp-hd5300753069_
                                                               (##car _e5300653065_))
                                                              (_lp-tl5300853072_
                                                               (##cdr _e5300653065_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5300753069_)
                                                              (let ((_e5301353075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5300753069_)))
                        (let ((_hd5301453079_ (##car _e5301353075_))
                              (_tl5301553082_ (##cdr _e5301353075_)))
                          (if (gx#stx-pair/null? _tl5301553082_)
                              (let ((_g53683_
                                     (gx#syntax-split-splice
                                      _tl5301553082_
                                      '0)))
                                (begin
                                  (let ((_g53684_
                                         (if (##values? _g53683_)
                                             (##vector-length _g53683_)
                                             1)))
                                    (if (not (##fx= _g53684_ 2))
                                        (error "Context expects 2 values"
                                               _g53684_)))
                                  (let ((_target5301653085_
                                         (##vector-ref _g53683_ 0))
                                        (_tl5301853088_
                                         (##vector-ref _g53683_ 1)))
                                    (if (gx#stx-null? _tl5301853088_)
                                        (letrec ((_loop5301953091_
                                                  (lambda (_hd5301753095_
                                                           _arity5302353098_)
                                                    (if (gx#stx-pair?
                                                         _hd5301753095_)
                                                        (let ((_e5302053101_
                                                               (gx#syntax-e
                                                                _hd5301753095_)))
                                                          (let ((_lp-hd5302153105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e5302053101_))
                        (_lp-tl5302253108_ (##cdr _e5302053101_)))
                    (_loop5301953091_
                     _lp-tl5302253108_
                     (cons _lp-hd5302153105_ _arity5302353098_))))
                (let ((_arity5302453111_ (reverse _arity5302353098_)))
                  (_loop5300553053_
                   _lp-tl5300853072_
                   (cons _arity5302453111_ _arity5300953060_)
                   (cons _hd5301453079_ _prim5301053062_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop5301953091_
                                           _target5301653085_
                                           '()))
                                        (_g5299553030_ _g5299653034_)))))
                              (_g5299553030_ _g5299653034_))))
                      (_g5299553030_ _g5299653034_))))
              (let ((_arity5301153115_ (reverse _arity5300953060_))
                    (_prim5301253118_ (reverse _prim5301053062_)))
                ((lambda (_L53121_ _L53123_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L53121_ _L53123_)
                           (foldr2 (lambda (_g5313853144_
                                            _g5313953147_
                                            _g5314053149_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-primitive)
                                                 (cons _g5313953147_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g5314153152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g5314253155_)
                           (cons _g5314153152_ _g5314253155_))
                         '()
                         _g5313853144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g5314053149_))
                                   '()
                                   _L53121_
                                   _L53123_))))
                 _arity5301153115_
                 _prim5301253118_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5300553053_
                                         _target5300253047_
                                         '()
                                         '()))
                                      (_g5299553030_ _g5299653034_)))))
                            (_g5299553030_ _g5299653034_))))
                    (_g5299553030_ _g5299653034_)))))
        (_g5299453158_ _$stx52991_)))))
