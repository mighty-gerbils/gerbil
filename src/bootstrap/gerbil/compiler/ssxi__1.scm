(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx49198_)
      (let* ((_g4920249220_
              (lambda (_g4920349216_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4920349216_)))
             (_g4920149275_
              (lambda (_g4920349224_)
                (if (gx#stx-pair? _g4920349224_)
                    (let ((_e4920649227_ (gx#syntax-e _g4920349224_)))
                      (let ((_hd4920749231_ (##car _e4920649227_))
                            (_tl4920849234_ (##cdr _e4920649227_)))
                        (if (gx#stx-pair? _tl4920849234_)
                            (let ((_e4920949237_ (gx#syntax-e _tl4920849234_)))
                              (let ((_hd4921049241_ (##car _e4920949237_))
                                    (_tl4921149244_ (##cdr _e4920949237_)))
                                (if (gx#stx-pair? _tl4921149244_)
                                    (let ((_e4921249247_
                                           (gx#syntax-e _tl4921149244_)))
                                      (let ((_hd4921349251_
                                             (##car _e4921249247_))
                                            (_tl4921449254_
                                             (##cdr _e4921249247_)))
                                        (if (gx#stx-null? _tl4921449254_)
                                            ((lambda (_L49257_ _L49259_)
                                               (if (gx#identifier? _L49259_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L49259_ '()))
                       (cons _L49257_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4920249220_
                                                    _g4920349224_)))
                                             _hd4921349251_
                                             _hd4921049241_)
                                            (_g4920249220_ _g4920349224_))))
                                    (_g4920249220_ _g4920349224_))))
                            (_g4920249220_ _g4920349224_))))
                    (_g4920249220_ _g4920349224_)))))
        (_g4920149275_ _$stx49198_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx49279_)
      (let* ((_g4928349312_
              (lambda (_g4928449308_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4928449308_)))
             (_g4928249412_
              (lambda (_g4928449316_)
                (if (gx#stx-pair? _g4928449316_)
                    (let ((_e4928749319_ (gx#syntax-e _g4928449316_)))
                      (let ((_hd4928849323_ (##car _e4928749319_))
                            (_tl4928949326_ (##cdr _e4928749319_)))
                        (if (gx#stx-pair/null? _tl4928949326_)
                            (let ((_g52020_
                                   (gx#syntax-split-splice _tl4928949326_ '0)))
                              (begin
                                (let ((_g52021_
                                       (if (##values? _g52020_)
                                           (##vector-length _g52020_)
                                           1)))
                                  (if (not (##fx= _g52021_ 2))
                                      (error "Context expects 2 values"
                                             _g52021_)))
                                (let ((_target4929049329_
                                       (##vector-ref _g52020_ 0))
                                      (_tl4929249332_
                                       (##vector-ref _g52020_ 1)))
                                  (if (gx#stx-null? _tl4929249332_)
                                      (letrec ((_loop4929349335_
                                                (lambda (_hd4929149339_
                                                         _type4929749342_
                                                         _symbol4929849344_)
                                                  (if (gx#stx-pair?
                                                       _hd4929149339_)
                                                      (let ((_e4929449347_
                                                             (gx#syntax-e
                                                              _hd4929149339_)))
                                                        (let ((_lp-hd4929549351_
                                                               (##car _e4929449347_))
                                                              (_lp-tl4929649354_
                                                               (##cdr _e4929449347_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4929549351_)
                                                              (let ((_e4930149357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4929549351_)))
                        (let ((_hd4930249361_ (##car _e4930149357_))
                              (_tl4930349364_ (##cdr _e4930149357_)))
                          (if (gx#stx-pair? _tl4930349364_)
                              (let ((_e4930449367_
                                     (gx#syntax-e _tl4930349364_)))
                                (let ((_hd4930549371_ (##car _e4930449367_))
                                      (_tl4930649374_ (##cdr _e4930449367_)))
                                  (if (gx#stx-null? _tl4930649374_)
                                      (_loop4929349335_
                                       _lp-tl4929649354_
                                       (cons _hd4930549371_ _type4929749342_)
                                       (cons _hd4930249361_
                                             _symbol4929849344_))
                                      (_g4928349312_ _g4928449316_))))
                              (_g4928349312_ _g4928449316_))))
                      (_g4928349312_ _g4928449316_))))
              (let ((_type4929949377_ (reverse _type4929749342_))
                    (_symbol4930049380_ (reverse _symbol4929849344_)))
                ((lambda (_L49383_ _L49385_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L49383_ _L49385_)
                           (foldr2 (lambda (_g4940049404_
                                            _g4940149407_
                                            _g4940249409_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g4940149407_
                                                       (cons _g4940049404_
                                                             '())))
                                           _g4940249409_))
                                   '()
                                   _L49383_
                                   _L49385_))))
                 _type4929949377_
                 _symbol4930049380_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4929349335_
                                         _target4929049329_
                                         '()
                                         '()))
                                      (_g4928349312_ _g4928449316_)))))
                            (_g4928349312_ _g4928449316_))))
                    (_g4928349312_ _g4928449316_)))))
        (_g4928249412_ _$stx49279_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx49417_)
      (let* ((___stx5156351564_ _$stx49417_)
             (_g4942249464_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5156351564_))))
        (let ((___kont5156651567_
               (lambda (_L49592_ _L49594_ _L49595_ _L49596_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L49596_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L49595_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L49594_ '()))
                                         (cons _L49592_ '())))))))
              (___kont5156851569_
               (lambda (_L49511_ _L49513_ _L49514_ _L49515_)
                 (cons _L49515_
                       (cons _L49514_
                             (cons _L49513_
                                   (cons _L49511_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5160251603_
                 (lambda (_e4942849542_
                          _hd4942949546_
                          _tl4943049549_
                          _e4943149552_
                          _hd4943249556_
                          _tl4943349559_
                          _e4943449562_
                          _hd4943549566_
                          _tl4943649569_
                          _e4943749572_
                          _hd4943849576_
                          _tl4943949579_
                          _e4944049582_
                          _hd4944149586_
                          _tl4944249589_)
                   (let ((_L49592_ _hd4944149586_)
                         (_L49594_ _hd4943849576_)
                         (_L49595_ _hd4943549566_)
                         (_L49596_ _hd4943249556_))
                     (if (if (gx#identifier? _L49596_)
                             (if (gx#identifier? _L49595_)
                                 (gx#identifier? _L49594_)
                                 '#f)
                             '#f)
                         (___kont5156651567_
                          _L49592_
                          _L49594_
                          _L49595_
                          _L49596_)
                         (_g4942249464_))))))
            (if (gx#stx-pair? ___stx5156351564_)
                (let ((_e4942849542_ (gx#syntax-e ___stx5156351564_)))
                  (let ((_tl4943049549_ (##cdr _e4942849542_))
                        (_hd4942949546_ (##car _e4942849542_)))
                    (if (gx#stx-pair? _tl4943049549_)
                        (let ((_e4943149552_ (gx#syntax-e _tl4943049549_)))
                          (let ((_tl4943349559_ (##cdr _e4943149552_))
                                (_hd4943249556_ (##car _e4943149552_)))
                            (if (gx#stx-pair? _tl4943349559_)
                                (let ((_e4943449562_
                                       (gx#syntax-e _tl4943349559_)))
                                  (let ((_tl4943649569_ (##cdr _e4943449562_))
                                        (_hd4943549566_ (##car _e4943449562_)))
                                    (if (gx#stx-pair? _tl4943649569_)
                                        (let ((_e4943749572_
                                               (gx#syntax-e _tl4943649569_)))
                                          (let ((_tl4943949579_
                                                 (##cdr _e4943749572_))
                                                (_hd4943849576_
                                                 (##car _e4943749572_)))
                                            (if (gx#stx-pair? _tl4943949579_)
                                                (let ((_e4944049582_
                                                       (gx#syntax-e
                                                        _tl4943949579_)))
                                                  (let ((_tl4944249589_
                                                         (##cdr _e4944049582_))
                                                        (_hd4944149586_
                                                         (##car _e4944049582_)))
                                                    (if (gx#stx-null?
                                                         _tl4944249589_)
                                                        (___match5160251603_
                                                         _e4942849542_
                                                         _hd4942949546_
                                                         _tl4943049549_
                                                         _e4943149552_
                                                         _hd4943249556_
                                                         _tl4943349559_
                                                         _e4943449562_
                                                         _hd4943549566_
                                                         _tl4943649569_
                                                         _e4943749572_
                                                         _hd4943849576_
                                                         _tl4943949579_
                                                         _e4944049582_
                                                         _hd4944149586_
                                                         _tl4944249589_)
                                                        (_g4942249464_))))
                                                (if (gx#stx-null?
                                                     _tl4943949579_)
                                                    (___kont5156851569_
                                                     _hd4943849576_
                                                     _hd4943549566_
                                                     _hd4943249556_
                                                     _hd4942949546_)
                                                    (_g4942249464_)))))
                                        (_g4942249464_))))
                                (_g4942249464_))))
                        (_g4942249464_))))
                (_g4942249464_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx49621_)
      (let* ((_g4962549660_
              (lambda (_g4962649656_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4962649656_)))
             (_g4962449779_
              (lambda (_g4962649664_)
                (if (gx#stx-pair? _g4962649664_)
                    (let ((_e4963049667_ (gx#syntax-e _g4962649664_)))
                      (let ((_hd4963149671_ (##car _e4963049667_))
                            (_tl4963249674_ (##cdr _e4963049667_)))
                        (if (gx#stx-pair/null? _tl4963249674_)
                            (let ((_g52022_
                                   (gx#syntax-split-splice _tl4963249674_ '0)))
                              (begin
                                (let ((_g52023_
                                       (if (##values? _g52022_)
                                           (##vector-length _g52022_)
                                           1)))
                                  (if (not (##fx= _g52023_ 2))
                                      (error "Context expects 2 values"
                                             _g52023_)))
                                (let ((_target4963349677_
                                       (##vector-ref _g52022_ 0))
                                      (_tl4963549680_
                                       (##vector-ref _g52022_ 1)))
                                  (if (gx#stx-null? _tl4963549680_)
                                      (letrec ((_loop4963649683_
                                                (lambda (_hd4963449687_
                                                         _symbol4964049690_
                                                         _method4964149692_
                                                         _type-t4964249694_)
                                                  (if (gx#stx-pair?
                                                       _hd4963449687_)
                                                      (let ((_e4963749697_
                                                             (gx#syntax-e
                                                              _hd4963449687_)))
                                                        (let ((_lp-hd4963849701_
                                                               (##car _e4963749697_))
                                                              (_lp-tl4963949704_
                                                               (##cdr _e4963749697_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4963849701_)
                                                              (let ((_e4964649707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4963849701_)))
                        (let ((_hd4964749711_ (##car _e4964649707_))
                              (_tl4964849714_ (##cdr _e4964649707_)))
                          (if (gx#stx-pair? _tl4964849714_)
                              (let ((_e4964949717_
                                     (gx#syntax-e _tl4964849714_)))
                                (let ((_hd4965049721_ (##car _e4964949717_))
                                      (_tl4965149724_ (##cdr _e4964949717_)))
                                  (if (gx#stx-pair? _tl4965149724_)
                                      (let ((_e4965249727_
                                             (gx#syntax-e _tl4965149724_)))
                                        (let ((_hd4965349731_
                                               (##car _e4965249727_))
                                              (_tl4965449734_
                                               (##cdr _e4965249727_)))
                                          (if (gx#stx-null? _tl4965449734_)
                                              (_loop4963649683_
                                               _lp-tl4963949704_
                                               (cons _hd4965349731_
                                                     _symbol4964049690_)
                                               (cons _hd4965049721_
                                                     _method4964149692_)
                                               (cons _hd4964749711_
                                                     _type-t4964249694_))
                                              (_g4962549660_ _g4962649664_))))
                                      (_g4962549660_ _g4962649664_))))
                              (_g4962549660_ _g4962649664_))))
                      (_g4962549660_ _g4962649664_))))
              (let ((_symbol4964349737_ (reverse _symbol4964049690_))
                    (_method4964449740_ (reverse _method4964149692_))
                    (_type-t4964549742_ (reverse _type-t4964249694_)))
                ((lambda (_L49745_ _L49747_ _L49748_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L49745_
                            _L49747_
                            _L49748_)
                           (foldr (lambda (_g4976449769_
                                           _g4976549772_
                                           _g4976649774_
                                           _g4976749776_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g4976649774_
                                                      (cons _g4976549772_
                                                            (cons _g4976449769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g4976749776_))
                                  '()
                                  _L49745_
                                  _L49747_
                                  _L49748_))))
                 _symbol4964349737_
                 _method4964449740_
                 _type-t4964549742_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4963649683_
                                         _target4963349677_
                                         '()
                                         '()
                                         '()))
                                      (_g4962549660_ _g4962649664_)))))
                            (_g4962549660_ _g4962649664_))))
                    (_g4962549660_ _g4962649664_)))))
        (_g4962449779_ _$stx49621_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx49784_)
      (let* ((_g4978849821_
              (lambda (_g4978949817_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4978949817_)))
             (_g4978749935_
              (lambda (_g4978949825_)
                (if (gx#stx-pair? _g4978949825_)
                    (let ((_e4979349828_ (gx#syntax-e _g4978949825_)))
                      (let ((_hd4979449832_ (##car _e4979349828_))
                            (_tl4979549835_ (##cdr _e4979349828_)))
                        (if (gx#stx-pair? _tl4979549835_)
                            (let ((_e4979649838_ (gx#syntax-e _tl4979549835_)))
                              (let ((_hd4979749842_ (##car _e4979649838_))
                                    (_tl4979849845_ (##cdr _e4979649838_)))
                                (if (gx#stx-pair/null? _tl4979849845_)
                                    (let ((_g52024_
                                           (gx#syntax-split-splice
                                            _tl4979849845_
                                            '0)))
                                      (begin
                                        (let ((_g52025_
                                               (if (##values? _g52024_)
                                                   (##vector-length _g52024_)
                                                   1)))
                                          (if (not (##fx= _g52025_ 2))
                                              (error "Context expects 2 values"
                                                     _g52025_)))
                                        (let ((_target4979949848_
                                               (##vector-ref _g52024_ 0))
                                              (_tl4980149851_
                                               (##vector-ref _g52024_ 1)))
                                          (if (gx#stx-null? _tl4980149851_)
                                              (letrec ((_loop4980249854_
                                                        (lambda (_hd4980049858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol4980649861_
                         _method4980749863_)
                  (if (gx#stx-pair? _hd4980049858_)
                      (let ((_e4980349866_ (gx#syntax-e _hd4980049858_)))
                        (let ((_lp-hd4980449870_ (##car _e4980349866_))
                              (_lp-tl4980549873_ (##cdr _e4980349866_)))
                          (if (gx#stx-pair? _lp-hd4980449870_)
                              (let ((_e4981049876_
                                     (gx#syntax-e _lp-hd4980449870_)))
                                (let ((_hd4981149880_ (##car _e4981049876_))
                                      (_tl4981249883_ (##cdr _e4981049876_)))
                                  (if (gx#stx-pair? _tl4981249883_)
                                      (let ((_e4981349886_
                                             (gx#syntax-e _tl4981249883_)))
                                        (let ((_hd4981449890_
                                               (##car _e4981349886_))
                                              (_tl4981549893_
                                               (##cdr _e4981349886_)))
                                          (if (gx#stx-null? _tl4981549893_)
                                              (_loop4980249854_
                                               _lp-tl4980549873_
                                               (cons _hd4981449890_
                                                     _symbol4980649861_)
                                               (cons _hd4981149880_
                                                     _method4980749863_))
                                              (_g4978849821_ _g4978949825_))))
                                      (_g4978849821_ _g4978949825_))))
                              (_g4978849821_ _g4978949825_))))
                      (let ((_symbol4980849896_ (reverse _symbol4980649861_))
                            (_method4980949899_ (reverse _method4980749863_)))
                        ((lambda (_L49902_ _L49904_ _L49905_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L49902_
                                    _L49904_)
                                   (foldr2 (lambda (_g4992349927_
                                                    _g4992449930_
                                                    _g4992549932_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L49905_
                                                               (cons _g4992449930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g4992349927_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4992549932_))
                                           '()
                                           _L49902_
                                           _L49904_))))
                         _symbol4980849896_
                         _method4980949899_
                         _hd4979749842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4980249854_
                                                 _target4979949848_
                                                 '()
                                                 '()))
                                              (_g4978849821_ _g4978949825_)))))
                                    (_g4978849821_ _g4978949825_))))
                            (_g4978849821_ _g4978949825_))))
                    (_g4978849821_ _g4978949825_)))))
        (_g4978749935_ _$stx49784_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx49940_)
      (let* ((_g4994449958_
              (lambda (_g4994549954_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4994549954_)))
             (_g4994349999_
              (lambda (_g4994549962_)
                (if (gx#stx-pair? _g4994549962_)
                    (let ((_e4994749965_ (gx#syntax-e _g4994549962_)))
                      (let ((_hd4994849969_ (##car _e4994749965_))
                            (_tl4994949972_ (##cdr _e4994749965_)))
                        (if (gx#stx-pair? _tl4994949972_)
                            (let ((_e4995049975_ (gx#syntax-e _tl4994949972_)))
                              (let ((_hd4995149979_ (##car _e4995049975_))
                                    (_tl4995249982_ (##cdr _e4995049975_)))
                                (if (gx#stx-null? _tl4995249982_)
                                    ((lambda (_L49985_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L49985_ '()))
                                                   '())))
                                     _hd4995149979_)
                                    (_g4994449958_ _g4994549962_))))
                            (_g4994449958_ _g4994549962_))))
                    (_g4994449958_ _g4994549962_)))))
        (_g4994349999_ _$stx49940_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx50003_)
      (let* ((___stx5163151632_ _$stx50003_)
             (_g5000950075_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5163151632_))))
        (let ((___kont5163451635_
               (lambda (_L50297_ _L50299_ _L50300_ _L50301_ _L50302_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L50302_
                             (cons _L50301_
                                   (cons _L50300_
                                         (cons _L50299_
                                               (cons _L50297_ '()))))))))
              (___kont5163651637_
               (lambda (_L50207_ _L50209_ _L50210_ _L50211_)
                 (cons _L50211_
                       (cons _L50210_
                             (cons _L50209_
                                   (cons _L50207_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5163851639_
               (lambda (_L50132_ _L50134_ _L50135_ _L50136_ _L50137_)
                 (cons _L50137_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L50135_
                                   (cons _L50134_
                                         (cons _L50132_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5163151632_)
              (let ((_e5001650237_ (gx#syntax-e ___stx5163151632_)))
                (let ((_tl5001850244_ (##cdr _e5001650237_))
                      (_hd5001750241_ (##car _e5001650237_)))
                  (if (gx#stx-pair? _tl5001850244_)
                      (let ((_e5001950247_ (gx#syntax-e _tl5001850244_)))
                        (let ((_tl5002150254_ (##cdr _e5001950247_))
                              (_hd5002050251_ (##car _e5001950247_)))
                          (if (gx#stx-pair? _tl5002150254_)
                              (let ((_e5002250257_
                                     (gx#syntax-e _tl5002150254_)))
                                (let ((_tl5002450264_ (##cdr _e5002250257_))
                                      (_hd5002350261_ (##car _e5002250257_)))
                                  (if (gx#stx-pair? _tl5002450264_)
                                      (let ((_e5002550267_
                                             (gx#syntax-e _tl5002450264_)))
                                        (let ((_tl5002750274_
                                               (##cdr _e5002550267_))
                                              (_hd5002650271_
                                               (##car _e5002550267_)))
                                          (if (gx#stx-pair? _tl5002750274_)
                                              (let ((_e5002850277_
                                                     (gx#syntax-e
                                                      _tl5002750274_)))
                                                (let ((_tl5003050284_
                                                       (##cdr _e5002850277_))
                                                      (_hd5002950281_
                                                       (##car _e5002850277_)))
                                                  (if (gx#stx-pair?
                                                       _tl5003050284_)
                                                      (let ((_e5003150287_
                                                             (gx#syntax-e
                                                              _tl5003050284_)))
                                                        (let ((_tl5003350294_
                                                               (##cdr _e5003150287_))
                                                              (_hd5003250291_
                                                               (##car _e5003150287_)))
                                                          (if (gx#stx-null?
                                                               _tl5003350294_)
                                                              (___kont5163451635_
                                                               _hd5003250291_
                                                               _hd5002950281_
                                                               _hd5002650271_
                                                               _hd5002350261_
                                                               _hd5002050251_)
                                                              (_g5000950075_))))
                                                      (if (gx#stx-null?
                                                           _tl5003050284_)
                                                          (___kont5163851639_
                                                           _hd5002950281_
                                                           _hd5002650271_
                                                           _hd5002350261_
                                                           _hd5002050251_
                                                           _hd5001750241_)
                                                          (_g5000950075_)))))
                                              (if (gx#stx-null? _tl5002750274_)
                                                  (___kont5163651637_
                                                   _hd5002650271_
                                                   _hd5002350261_
                                                   _hd5002050251_
                                                   _hd5001750241_)
                                                  (_g5000950075_)))))
                                      (_g5000950075_))))
                              (_g5000950075_))))
                      (_g5000950075_))))
              (_g5000950075_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx50330_)
      (let* ((___stx5173951740_ _$stx50330_)
             (_g5033550388_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5173951740_))))
        (let ((___kont5174251743_
               (lambda (_L50556_ _L50558_ _L50559_ _L50560_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50560_ '()))
                             (cons '#f
                                   (cons _L50559_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50558_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50556_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5174451745_
               (lambda (_L50455_ _L50457_ _L50458_ _L50459_ _L50460_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50459_ '()))
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
                                     (cons _L50457_ '()))
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
                                                     (cons _L50460_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50459_ '()))
                                                     (cons _L50458_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L50455_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5173951740_)
              (let ((_e5034150492_ (gx#syntax-e ___stx5173951740_)))
                (let ((_tl5034350499_ (##cdr _e5034150492_))
                      (_hd5034250496_ (##car _e5034150492_)))
                  (if (gx#stx-pair? _tl5034350499_)
                      (let ((_e5034450502_ (gx#syntax-e _tl5034350499_)))
                        (let ((_tl5034650509_ (##cdr _e5034450502_))
                              (_hd5034550506_ (##car _e5034450502_)))
                          (if (gx#stx-pair? _tl5034650509_)
                              (let ((_e5034750512_
                                     (gx#syntax-e _tl5034650509_)))
                                (let ((_tl5034950519_ (##cdr _e5034750512_))
                                      (_hd5034850516_ (##car _e5034750512_)))
                                  (if (gx#stx-datum? _hd5034850516_)
                                      (let ((_e5035050522_
                                             (gx#stx-e _hd5034850516_)))
                                        (if (equal? _e5035050522_ '#f)
                                            (if (gx#stx-pair? _tl5034950519_)
                                                (let ((_e5035150526_
                                                       (gx#syntax-e
                                                        _tl5034950519_)))
                                                  (let ((_tl5035350533_
                                                         (##cdr _e5035150526_))
                                                        (_hd5035250530_
                                                         (##car _e5035150526_)))
                                                    (if (gx#stx-pair?
                                                         _tl5035350533_)
                                                        (let ((_e5035450536_
                                                               (gx#syntax-e
                                                                _tl5035350533_)))
                                                          (let ((_tl5035650543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5035450536_))
                        (_hd5035550540_ (##car _e5035450536_)))
                    (if (gx#stx-pair? _tl5035650543_)
                        (let ((_e5035750546_ (gx#syntax-e _tl5035650543_)))
                          (let ((_tl5035950553_ (##cdr _e5035750546_))
                                (_hd5035850550_ (##car _e5035750546_)))
                            (if (gx#stx-null? _tl5035950553_)
                                (___kont5174251743_
                                 _hd5035850550_
                                 _hd5035550540_
                                 _hd5035250530_
                                 _hd5034550506_)
                                (_g5033550388_))))
                        (_g5033550388_))))
                (_g5033550388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5033550388_))
                                            (if (gx#stx-pair? _tl5034950519_)
                                                (let ((_e5037450425_
                                                       (gx#syntax-e
                                                        _tl5034950519_)))
                                                  (let ((_tl5037650432_
                                                         (##cdr _e5037450425_))
                                                        (_hd5037550429_
                                                         (##car _e5037450425_)))
                                                    (if (gx#stx-pair?
                                                         _tl5037650432_)
                                                        (let ((_e5037750435_
                                                               (gx#syntax-e
                                                                _tl5037650432_)))
                                                          (let ((_tl5037950442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5037750435_))
                        (_hd5037850439_ (##car _e5037750435_)))
                    (if (gx#stx-pair? _tl5037950442_)
                        (let ((_e5038050445_ (gx#syntax-e _tl5037950442_)))
                          (let ((_tl5038250452_ (##cdr _e5038050445_))
                                (_hd5038150449_ (##car _e5038050445_)))
                            (if (gx#stx-null? _tl5038250452_)
                                (___kont5174451745_
                                 _hd5038150449_
                                 _hd5037850439_
                                 _hd5037550429_
                                 _hd5034850516_
                                 _hd5034550506_)
                                (_g5033550388_))))
                        (_g5033550388_))))
                (_g5033550388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5033550388_))))
                                      (if (gx#stx-pair? _tl5034950519_)
                                          (let ((_e5037450425_
                                                 (gx#syntax-e _tl5034950519_)))
                                            (let ((_tl5037650432_
                                                   (##cdr _e5037450425_))
                                                  (_hd5037550429_
                                                   (##car _e5037450425_)))
                                              (if (gx#stx-pair? _tl5037650432_)
                                                  (let ((_e5037750435_
                                                         (gx#syntax-e
                                                          _tl5037650432_)))
                                                    (let ((_tl5037950442_
                                                           (##cdr _e5037750435_))
                                                          (_hd5037850439_
                                                           (##car _e5037750435_)))
                                                      (if (gx#stx-pair?
                                                           _tl5037950442_)
                                                          (let ((_e5038050445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5037950442_)))
                    (let ((_tl5038250452_ (##cdr _e5038050445_))
                          (_hd5038150449_ (##car _e5038050445_)))
                      (if (gx#stx-null? _tl5038250452_)
                          (___kont5174451745_
                           _hd5038150449_
                           _hd5037850439_
                           _hd5037550429_
                           _hd5034850516_
                           _hd5034550506_)
                          (_g5033550388_))))
                  (_g5033550388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5033550388_))))
                                          (_g5033550388_)))))
                              (_g5033550388_))))
                      (_g5033550388_))))
              (_g5033550388_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx50588_)
      (let* ((_g5059250606_
              (lambda (_g5059350602_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5059350602_)))
             (_g5059150647_
              (lambda (_g5059350610_)
                (if (gx#stx-pair? _g5059350610_)
                    (let ((_e5059550613_ (gx#syntax-e _g5059350610_)))
                      (let ((_hd5059650617_ (##car _e5059550613_))
                            (_tl5059750620_ (##cdr _e5059550613_)))
                        (if (gx#stx-pair? _tl5059750620_)
                            (let ((_e5059850623_ (gx#syntax-e _tl5059750620_)))
                              (let ((_hd5059950627_ (##car _e5059850623_))
                                    (_tl5060050630_ (##cdr _e5059850623_)))
                                (if (gx#stx-null? _tl5060050630_)
                                    ((lambda (_L50633_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50633_ '()))
                                                   '())))
                                     _hd5059950627_)
                                    (_g5059250606_ _g5059350610_))))
                            (_g5059250606_ _g5059350610_))))
                    (_g5059250606_ _g5059350610_)))))
        (_g5059150647_ _$stx50588_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx50651_)
      (let* ((_g5065550669_
              (lambda (_g5065650665_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5065650665_)))
             (_g5065450710_
              (lambda (_g5065650673_)
                (if (gx#stx-pair? _g5065650673_)
                    (let ((_e5065850676_ (gx#syntax-e _g5065650673_)))
                      (let ((_hd5065950680_ (##car _e5065850676_))
                            (_tl5066050683_ (##cdr _e5065850676_)))
                        (if (gx#stx-pair? _tl5066050683_)
                            (let ((_e5066150686_ (gx#syntax-e _tl5066050683_)))
                              (let ((_hd5066250690_ (##car _e5066150686_))
                                    (_tl5066350693_ (##cdr _e5066150686_)))
                                (if (gx#stx-null? _tl5066350693_)
                                    ((lambda (_L50696_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50696_ '()))
                                                   '())))
                                     _hd5066250690_)
                                    (_g5065550669_ _g5065650673_))))
                            (_g5065550669_ _g5065650673_))))
                    (_g5065550669_ _g5065650673_)))))
        (_g5065450710_ _$stx50651_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx50714_)
      (let* ((___stx5183151832_ _$stx50714_)
             (_g5071950752_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5183151832_))))
        (let ((___kont5183451835_
               (lambda (_L50854_ _L50856_ _L50857_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50857_ '()))
                             (cons _L50856_ (cons _L50854_ '()))))))
              (___kont5183651837_
               (lambda (_L50789_ _L50791_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50791_ '()))
                             (cons _L50789_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5183151832_)
              (let ((_e5072450814_ (gx#syntax-e ___stx5183151832_)))
                (let ((_tl5072650821_ (##cdr _e5072450814_))
                      (_hd5072550818_ (##car _e5072450814_)))
                  (if (gx#stx-pair? _tl5072650821_)
                      (let ((_e5072750824_ (gx#syntax-e _tl5072650821_)))
                        (let ((_tl5072950831_ (##cdr _e5072750824_))
                              (_hd5072850828_ (##car _e5072750824_)))
                          (if (gx#stx-pair? _tl5072950831_)
                              (let ((_e5073050834_
                                     (gx#syntax-e _tl5072950831_)))
                                (let ((_tl5073250841_ (##cdr _e5073050834_))
                                      (_hd5073150838_ (##car _e5073050834_)))
                                  (if (gx#stx-pair? _tl5073250841_)
                                      (let ((_e5073350844_
                                             (gx#syntax-e _tl5073250841_)))
                                        (let ((_tl5073550851_
                                               (##cdr _e5073350844_))
                                              (_hd5073450848_
                                               (##car _e5073350844_)))
                                          (if (gx#stx-null? _tl5073550851_)
                                              (___kont5183451835_
                                               _hd5073450848_
                                               _hd5073150838_
                                               _hd5072850828_)
                                              (_g5071950752_))))
                                      (if (gx#stx-null? _tl5073250841_)
                                          (___kont5183651837_
                                           _hd5073150838_
                                           _hd5072850828_)
                                          (_g5071950752_)))))
                              (_g5071950752_))))
                      (_g5071950752_))))
              (_g5071950752_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx50879_)
      (let* ((___stx5188751888_ _$stx50879_)
             (_g5088450917_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5188751888_))))
        (let ((___kont5189051891_
               (lambda (_L51019_ _L51021_ _L51022_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51022_ '()))
                             (cons _L51021_ (cons _L51019_ '()))))))
              (___kont5189251893_
               (lambda (_L50954_ _L50956_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50956_ '()))
                             (cons _L50954_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5188751888_)
              (let ((_e5088950979_ (gx#syntax-e ___stx5188751888_)))
                (let ((_tl5089150986_ (##cdr _e5088950979_))
                      (_hd5089050983_ (##car _e5088950979_)))
                  (if (gx#stx-pair? _tl5089150986_)
                      (let ((_e5089250989_ (gx#syntax-e _tl5089150986_)))
                        (let ((_tl5089450996_ (##cdr _e5089250989_))
                              (_hd5089350993_ (##car _e5089250989_)))
                          (if (gx#stx-pair? _tl5089450996_)
                              (let ((_e5089550999_
                                     (gx#syntax-e _tl5089450996_)))
                                (let ((_tl5089751006_ (##cdr _e5089550999_))
                                      (_hd5089651003_ (##car _e5089550999_)))
                                  (if (gx#stx-pair? _tl5089751006_)
                                      (let ((_e5089851009_
                                             (gx#syntax-e _tl5089751006_)))
                                        (let ((_tl5090051016_
                                               (##cdr _e5089851009_))
                                              (_hd5089951013_
                                               (##car _e5089851009_)))
                                          (if (gx#stx-null? _tl5090051016_)
                                              (___kont5189051891_
                                               _hd5089951013_
                                               _hd5089651003_
                                               _hd5089350993_)
                                              (_g5088450917_))))
                                      (if (gx#stx-null? _tl5089751006_)
                                          (___kont5189251893_
                                           _hd5089651003_
                                           _hd5089350993_)
                                          (_g5088450917_)))))
                              (_g5088450917_))))
                      (_g5088450917_))))
              (_g5088450917_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx51044_)
      (let* ((___stx5194351944_ _$stx51044_)
             (_g5105051091_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5194351944_))))
        (let ((___kont5194651947_
               (lambda (_L51239_ _L51241_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L51241_ '()))
                                   (cons '#f
                                         (cons _L51239_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51239_ '()))
                                                     '()))))))))
              (___kont5194851949_
               (lambda (_L51171_ _L51173_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L51173_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L51171_ '()))
                                         '()))))))
              (___kont5195051951_
               (lambda (_L51118_ _L51120_)
                 (cons _L51120_ (cons _L51118_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5194351944_)
              (let ((_e5105451195_ (gx#syntax-e ___stx5194351944_)))
                (let ((_tl5105651202_ (##cdr _e5105451195_))
                      (_hd5105551199_ (##car _e5105451195_)))
                  (if (gx#stx-pair? _tl5105651202_)
                      (let ((_e5105751205_ (gx#syntax-e _tl5105651202_)))
                        (let ((_tl5105951212_ (##cdr _e5105751205_))
                              (_hd5105851209_ (##car _e5105751205_)))
                          (if (gx#stx-pair? _tl5105951212_)
                              (let ((_e5106051215_
                                     (gx#syntax-e _tl5105951212_)))
                                (let ((_tl5106251222_ (##cdr _e5106051215_))
                                      (_hd5106151219_ (##car _e5106051215_)))
                                  (if (gx#stx-datum? _hd5106151219_)
                                      (let ((_e5106351225_
                                             (gx#stx-e _hd5106151219_)))
                                        (if (equal? _e5106351225_ 'inline:)
                                            (if (gx#stx-pair? _tl5106251222_)
                                                (let ((_e5106451229_
                                                       (gx#syntax-e
                                                        _tl5106251222_)))
                                                  (let ((_tl5106651236_
                                                         (##cdr _e5106451229_))
                                                        (_hd5106551233_
                                                         (##car _e5106451229_)))
                                                    (if (gx#stx-null?
                                                         _tl5106651236_)
                                                        (___kont5194651947_
                                                         _hd5106551233_
                                                         _hd5105851209_)
                                                        (_g5105051091_))))
                                                (if (gx#stx-null?
                                                     _tl5106251222_)
                                                    (___kont5194851949_
                                                     _hd5106151219_
                                                     _hd5105851209_)
                                                    (_g5105051091_)))
                                            (if (gx#stx-null? _tl5106251222_)
                                                (___kont5194851949_
                                                 _hd5106151219_
                                                 _hd5105851209_)
                                                (_g5105051091_))))
                                      (if (gx#stx-null? _tl5106251222_)
                                          (___kont5194851949_
                                           _hd5106151219_
                                           _hd5105851209_)
                                          (_g5105051091_)))))
                              (if (gx#stx-null? _tl5105951212_)
                                  (___kont5195051951_
                                   _hd5105851209_
                                   _hd5105551199_)
                                  (_g5105051091_)))))
                      (_g5105051091_))))
              (_g5105051091_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx51263_)
      (let* ((_g5126751296_
              (lambda (_g5126851292_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5126851292_)))
             (_g5126651396_
              (lambda (_g5126851300_)
                (if (gx#stx-pair? _g5126851300_)
                    (let ((_e5127151303_ (gx#syntax-e _g5126851300_)))
                      (let ((_hd5127251307_ (##car _e5127151303_))
                            (_tl5127351310_ (##cdr _e5127151303_)))
                        (if (gx#stx-pair/null? _tl5127351310_)
                            (let ((_g52026_
                                   (gx#syntax-split-splice _tl5127351310_ '0)))
                              (begin
                                (let ((_g52027_
                                       (if (##values? _g52026_)
                                           (##vector-length _g52026_)
                                           1)))
                                  (if (not (##fx= _g52027_ 2))
                                      (error "Context expects 2 values"
                                             _g52027_)))
                                (let ((_target5127451313_
                                       (##vector-ref _g52026_ 0))
                                      (_tl5127651316_
                                       (##vector-ref _g52026_ 1)))
                                  (if (gx#stx-null? _tl5127651316_)
                                      (letrec ((_loop5127751319_
                                                (lambda (_hd5127551323_
                                                         _dispatch5128151326_
                                                         _arity5128251328_)
                                                  (if (gx#stx-pair?
                                                       _hd5127551323_)
                                                      (let ((_e5127851331_
                                                             (gx#syntax-e
                                                              _hd5127551323_)))
                                                        (let ((_lp-hd5127951335_
                                                               (##car _e5127851331_))
                                                              (_lp-tl5128051338_
                                                               (##cdr _e5127851331_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5127951335_)
                                                              (let ((_e5128551341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5127951335_)))
                        (let ((_hd5128651345_ (##car _e5128551341_))
                              (_tl5128751348_ (##cdr _e5128551341_)))
                          (if (gx#stx-pair? _tl5128751348_)
                              (let ((_e5128851351_
                                     (gx#syntax-e _tl5128751348_)))
                                (let ((_hd5128951355_ (##car _e5128851351_))
                                      (_tl5129051358_ (##cdr _e5128851351_)))
                                  (if (gx#stx-null? _tl5129051358_)
                                      (_loop5127751319_
                                       _lp-tl5128051338_
                                       (cons _hd5128951355_
                                             _dispatch5128151326_)
                                       (cons _hd5128651345_ _arity5128251328_))
                                      (_g5126751296_ _g5126851300_))))
                              (_g5126751296_ _g5126851300_))))
                      (_g5126751296_ _g5126851300_))))
              (let ((_dispatch5128351361_ (reverse _dispatch5128151326_))
                    (_arity5128451364_ (reverse _arity5128251328_)))
                ((lambda (_L51367_ _L51369_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L51367_
                                              _L51369_)
                                             (foldr2 (lambda (_g5138451388_
                                                              _g5138551391_
                                                              _g5138651393_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5138551391_ (cons _g5138451388_ '())))
                     _g5138651393_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L51367_
                                                     _L51369_)))
                                     '()))))
                 _dispatch5128351361_
                 _arity5128451364_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5127751319_
                                         _target5127451313_
                                         '()
                                         '()))
                                      (_g5126751296_ _g5126851300_)))))
                            (_g5126751296_ _g5126851300_))))
                    (_g5126751296_ _g5126851300_)))))
        (_g5126651396_ _$stx51263_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx51401_)
      (let* ((_g5140551423_
              (lambda (_g5140651419_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5140651419_)))
             (_g5140451478_
              (lambda (_g5140651427_)
                (if (gx#stx-pair? _g5140651427_)
                    (let ((_e5140951430_ (gx#syntax-e _g5140651427_)))
                      (let ((_hd5141051434_ (##car _e5140951430_))
                            (_tl5141151437_ (##cdr _e5140951430_)))
                        (if (gx#stx-pair? _tl5141151437_)
                            (let ((_e5141251440_ (gx#syntax-e _tl5141151437_)))
                              (let ((_hd5141351444_ (##car _e5141251440_))
                                    (_tl5141451447_ (##cdr _e5141251440_)))
                                (if (gx#stx-pair? _tl5141451447_)
                                    (let ((_e5141551450_
                                           (gx#syntax-e _tl5141451447_)))
                                      (let ((_hd5141651454_
                                             (##car _e5141551450_))
                                            (_tl5141751457_
                                             (##cdr _e5141551450_)))
                                        (if (gx#stx-null? _tl5141751457_)
                                            ((lambda (_L51460_ _L51462_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51462_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51460_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5141651454_
                                             _hd5141351444_)
                                            (_g5140551423_ _g5140651427_))))
                                    (_g5140551423_ _g5140651427_))))
                            (_g5140551423_ _g5140651427_))))
                    (_g5140551423_ _g5140651427_)))))
        (_g5140451478_ _$stx51401_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx51482_)
      (let* ((_g5148651504_
              (lambda (_g5148751500_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5148751500_)))
             (_g5148551559_
              (lambda (_g5148751508_)
                (if (gx#stx-pair? _g5148751508_)
                    (let ((_e5149051511_ (gx#syntax-e _g5148751508_)))
                      (let ((_hd5149151515_ (##car _e5149051511_))
                            (_tl5149251518_ (##cdr _e5149051511_)))
                        (if (gx#stx-pair? _tl5149251518_)
                            (let ((_e5149351521_ (gx#syntax-e _tl5149251518_)))
                              (let ((_hd5149451525_ (##car _e5149351521_))
                                    (_tl5149551528_ (##cdr _e5149351521_)))
                                (if (gx#stx-pair? _tl5149551528_)
                                    (let ((_e5149651531_
                                           (gx#syntax-e _tl5149551528_)))
                                      (let ((_hd5149751535_
                                             (##car _e5149651531_))
                                            (_tl5149851538_
                                             (##cdr _e5149651531_)))
                                        (if (gx#stx-null? _tl5149851538_)
                                            ((lambda (_L51541_ _L51543_)
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
                               (cons _L51543_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51541_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5149751535_
                                             _hd5149451525_)
                                            (_g5148651504_ _g5148751508_))))
                                    (_g5148651504_ _g5148751508_))))
                            (_g5148651504_ _g5148751508_))))
                    (_g5148651504_ _g5148751508_)))))
        (_g5148551559_ _$stx51482_)))))
