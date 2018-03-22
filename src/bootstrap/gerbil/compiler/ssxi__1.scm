(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx49193_)
      (let* ((_g4919749215_
              (lambda (_g4919849211_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4919849211_)))
             (_g4919649270_
              (lambda (_g4919849219_)
                (if (gx#stx-pair? _g4919849219_)
                    (let ((_e4920149222_ (gx#syntax-e _g4919849219_)))
                      (let ((_hd4920249226_ (##car _e4920149222_))
                            (_tl4920349229_ (##cdr _e4920149222_)))
                        (if (gx#stx-pair? _tl4920349229_)
                            (let ((_e4920449232_ (gx#syntax-e _tl4920349229_)))
                              (let ((_hd4920549236_ (##car _e4920449232_))
                                    (_tl4920649239_ (##cdr _e4920449232_)))
                                (if (gx#stx-pair? _tl4920649239_)
                                    (let ((_e4920749242_
                                           (gx#syntax-e _tl4920649239_)))
                                      (let ((_hd4920849246_
                                             (##car _e4920749242_))
                                            (_tl4920949249_
                                             (##cdr _e4920749242_)))
                                        (if (gx#stx-null? _tl4920949249_)
                                            ((lambda (_L49252_ _L49254_)
                                               (if (gx#identifier? _L49254_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L49254_ '()))
                       (cons _L49252_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4919749215_
                                                    _g4919849219_)))
                                             _hd4920849246_
                                             _hd4920549236_)
                                            (_g4919749215_ _g4919849219_))))
                                    (_g4919749215_ _g4919849219_))))
                            (_g4919749215_ _g4919849219_))))
                    (_g4919749215_ _g4919849219_)))))
        (_g4919649270_ _$stx49193_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx49274_)
      (let* ((_g4927849307_
              (lambda (_g4927949303_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4927949303_)))
             (_g4927749407_
              (lambda (_g4927949311_)
                (if (gx#stx-pair? _g4927949311_)
                    (let ((_e4928249314_ (gx#syntax-e _g4927949311_)))
                      (let ((_hd4928349318_ (##car _e4928249314_))
                            (_tl4928449321_ (##cdr _e4928249314_)))
                        (if (gx#stx-pair/null? _tl4928449321_)
                            (let ((_g52015_
                                   (gx#syntax-split-splice _tl4928449321_ '0)))
                              (begin
                                (let ((_g52016_
                                       (if (##values? _g52015_)
                                           (##vector-length _g52015_)
                                           1)))
                                  (if (not (##fx= _g52016_ 2))
                                      (error "Context expects 2 values"
                                             _g52016_)))
                                (let ((_target4928549324_
                                       (##vector-ref _g52015_ 0))
                                      (_tl4928749327_
                                       (##vector-ref _g52015_ 1)))
                                  (if (gx#stx-null? _tl4928749327_)
                                      (letrec ((_loop4928849330_
                                                (lambda (_hd4928649334_
                                                         _type4929249337_
                                                         _symbol4929349339_)
                                                  (if (gx#stx-pair?
                                                       _hd4928649334_)
                                                      (let ((_e4928949342_
                                                             (gx#syntax-e
                                                              _hd4928649334_)))
                                                        (let ((_lp-hd4929049346_
                                                               (##car _e4928949342_))
                                                              (_lp-tl4929149349_
                                                               (##cdr _e4928949342_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4929049346_)
                                                              (let ((_e4929649352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4929049346_)))
                        (let ((_hd4929749356_ (##car _e4929649352_))
                              (_tl4929849359_ (##cdr _e4929649352_)))
                          (if (gx#stx-pair? _tl4929849359_)
                              (let ((_e4929949362_
                                     (gx#syntax-e _tl4929849359_)))
                                (let ((_hd4930049366_ (##car _e4929949362_))
                                      (_tl4930149369_ (##cdr _e4929949362_)))
                                  (if (gx#stx-null? _tl4930149369_)
                                      (_loop4928849330_
                                       _lp-tl4929149349_
                                       (cons _hd4930049366_ _type4929249337_)
                                       (cons _hd4929749356_
                                             _symbol4929349339_))
                                      (_g4927849307_ _g4927949311_))))
                              (_g4927849307_ _g4927949311_))))
                      (_g4927849307_ _g4927949311_))))
              (let ((_type4929449372_ (reverse _type4929249337_))
                    (_symbol4929549375_ (reverse _symbol4929349339_)))
                ((lambda (_L49378_ _L49380_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L49378_ _L49380_)
                           (foldr2 (lambda (_g4939549399_
                                            _g4939649402_
                                            _g4939749404_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g4939649402_
                                                       (cons _g4939549399_
                                                             '())))
                                           _g4939749404_))
                                   '()
                                   _L49378_
                                   _L49380_))))
                 _type4929449372_
                 _symbol4929549375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4928849330_
                                         _target4928549324_
                                         '()
                                         '()))
                                      (_g4927849307_ _g4927949311_)))))
                            (_g4927849307_ _g4927949311_))))
                    (_g4927849307_ _g4927949311_)))))
        (_g4927749407_ _$stx49274_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx49412_)
      (let* ((___stx5155851559_ _$stx49412_)
             (_g4941749459_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5155851559_))))
        (let ((___kont5156151562_
               (lambda (_L49587_ _L49589_ _L49590_ _L49591_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L49591_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L49590_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L49589_ '()))
                                         (cons _L49587_ '())))))))
              (___kont5156351564_
               (lambda (_L49506_ _L49508_ _L49509_ _L49510_)
                 (cons _L49510_
                       (cons _L49509_
                             (cons _L49508_
                                   (cons _L49506_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5159751598_
                 (lambda (_e4942349537_
                          _hd4942449541_
                          _tl4942549544_
                          _e4942649547_
                          _hd4942749551_
                          _tl4942849554_
                          _e4942949557_
                          _hd4943049561_
                          _tl4943149564_
                          _e4943249567_
                          _hd4943349571_
                          _tl4943449574_
                          _e4943549577_
                          _hd4943649581_
                          _tl4943749584_)
                   (let ((_L49587_ _hd4943649581_)
                         (_L49589_ _hd4943349571_)
                         (_L49590_ _hd4943049561_)
                         (_L49591_ _hd4942749551_))
                     (if (if (gx#identifier? _L49591_)
                             (if (gx#identifier? _L49590_)
                                 (gx#identifier? _L49589_)
                                 '#f)
                             '#f)
                         (___kont5156151562_
                          _L49587_
                          _L49589_
                          _L49590_
                          _L49591_)
                         (_g4941749459_))))))
            (if (gx#stx-pair? ___stx5155851559_)
                (let ((_e4942349537_ (gx#syntax-e ___stx5155851559_)))
                  (let ((_tl4942549544_ (##cdr _e4942349537_))
                        (_hd4942449541_ (##car _e4942349537_)))
                    (if (gx#stx-pair? _tl4942549544_)
                        (let ((_e4942649547_ (gx#syntax-e _tl4942549544_)))
                          (let ((_tl4942849554_ (##cdr _e4942649547_))
                                (_hd4942749551_ (##car _e4942649547_)))
                            (if (gx#stx-pair? _tl4942849554_)
                                (let ((_e4942949557_
                                       (gx#syntax-e _tl4942849554_)))
                                  (let ((_tl4943149564_ (##cdr _e4942949557_))
                                        (_hd4943049561_ (##car _e4942949557_)))
                                    (if (gx#stx-pair? _tl4943149564_)
                                        (let ((_e4943249567_
                                               (gx#syntax-e _tl4943149564_)))
                                          (let ((_tl4943449574_
                                                 (##cdr _e4943249567_))
                                                (_hd4943349571_
                                                 (##car _e4943249567_)))
                                            (if (gx#stx-pair? _tl4943449574_)
                                                (let ((_e4943549577_
                                                       (gx#syntax-e
                                                        _tl4943449574_)))
                                                  (let ((_tl4943749584_
                                                         (##cdr _e4943549577_))
                                                        (_hd4943649581_
                                                         (##car _e4943549577_)))
                                                    (if (gx#stx-null?
                                                         _tl4943749584_)
                                                        (___match5159751598_
                                                         _e4942349537_
                                                         _hd4942449541_
                                                         _tl4942549544_
                                                         _e4942649547_
                                                         _hd4942749551_
                                                         _tl4942849554_
                                                         _e4942949557_
                                                         _hd4943049561_
                                                         _tl4943149564_
                                                         _e4943249567_
                                                         _hd4943349571_
                                                         _tl4943449574_
                                                         _e4943549577_
                                                         _hd4943649581_
                                                         _tl4943749584_)
                                                        (_g4941749459_))))
                                                (if (gx#stx-null?
                                                     _tl4943449574_)
                                                    (___kont5156351564_
                                                     _hd4943349571_
                                                     _hd4943049561_
                                                     _hd4942749551_
                                                     _hd4942449541_)
                                                    (_g4941749459_)))))
                                        (_g4941749459_))))
                                (_g4941749459_))))
                        (_g4941749459_))))
                (_g4941749459_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx49616_)
      (let* ((_g4962049655_
              (lambda (_g4962149651_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4962149651_)))
             (_g4961949774_
              (lambda (_g4962149659_)
                (if (gx#stx-pair? _g4962149659_)
                    (let ((_e4962549662_ (gx#syntax-e _g4962149659_)))
                      (let ((_hd4962649666_ (##car _e4962549662_))
                            (_tl4962749669_ (##cdr _e4962549662_)))
                        (if (gx#stx-pair/null? _tl4962749669_)
                            (let ((_g52017_
                                   (gx#syntax-split-splice _tl4962749669_ '0)))
                              (begin
                                (let ((_g52018_
                                       (if (##values? _g52017_)
                                           (##vector-length _g52017_)
                                           1)))
                                  (if (not (##fx= _g52018_ 2))
                                      (error "Context expects 2 values"
                                             _g52018_)))
                                (let ((_target4962849672_
                                       (##vector-ref _g52017_ 0))
                                      (_tl4963049675_
                                       (##vector-ref _g52017_ 1)))
                                  (if (gx#stx-null? _tl4963049675_)
                                      (letrec ((_loop4963149678_
                                                (lambda (_hd4962949682_
                                                         _symbol4963549685_
                                                         _method4963649687_
                                                         _type-t4963749689_)
                                                  (if (gx#stx-pair?
                                                       _hd4962949682_)
                                                      (let ((_e4963249692_
                                                             (gx#syntax-e
                                                              _hd4962949682_)))
                                                        (let ((_lp-hd4963349696_
                                                               (##car _e4963249692_))
                                                              (_lp-tl4963449699_
                                                               (##cdr _e4963249692_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4963349696_)
                                                              (let ((_e4964149702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4963349696_)))
                        (let ((_hd4964249706_ (##car _e4964149702_))
                              (_tl4964349709_ (##cdr _e4964149702_)))
                          (if (gx#stx-pair? _tl4964349709_)
                              (let ((_e4964449712_
                                     (gx#syntax-e _tl4964349709_)))
                                (let ((_hd4964549716_ (##car _e4964449712_))
                                      (_tl4964649719_ (##cdr _e4964449712_)))
                                  (if (gx#stx-pair? _tl4964649719_)
                                      (let ((_e4964749722_
                                             (gx#syntax-e _tl4964649719_)))
                                        (let ((_hd4964849726_
                                               (##car _e4964749722_))
                                              (_tl4964949729_
                                               (##cdr _e4964749722_)))
                                          (if (gx#stx-null? _tl4964949729_)
                                              (_loop4963149678_
                                               _lp-tl4963449699_
                                               (cons _hd4964849726_
                                                     _symbol4963549685_)
                                               (cons _hd4964549716_
                                                     _method4963649687_)
                                               (cons _hd4964249706_
                                                     _type-t4963749689_))
                                              (_g4962049655_ _g4962149659_))))
                                      (_g4962049655_ _g4962149659_))))
                              (_g4962049655_ _g4962149659_))))
                      (_g4962049655_ _g4962149659_))))
              (let ((_symbol4963849732_ (reverse _symbol4963549685_))
                    (_method4963949735_ (reverse _method4963649687_))
                    (_type-t4964049737_ (reverse _type-t4963749689_)))
                ((lambda (_L49740_ _L49742_ _L49743_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L49740_
                            _L49742_
                            _L49743_)
                           (foldr (lambda (_g4975949764_
                                           _g4976049767_
                                           _g4976149769_
                                           _g4976249771_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g4976149769_
                                                      (cons _g4976049767_
                                                            (cons _g4975949764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g4976249771_))
                                  '()
                                  _L49740_
                                  _L49742_
                                  _L49743_))))
                 _symbol4963849732_
                 _method4963949735_
                 _type-t4964049737_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4963149678_
                                         _target4962849672_
                                         '()
                                         '()
                                         '()))
                                      (_g4962049655_ _g4962149659_)))))
                            (_g4962049655_ _g4962149659_))))
                    (_g4962049655_ _g4962149659_)))))
        (_g4961949774_ _$stx49616_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx49779_)
      (let* ((_g4978349816_
              (lambda (_g4978449812_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4978449812_)))
             (_g4978249930_
              (lambda (_g4978449820_)
                (if (gx#stx-pair? _g4978449820_)
                    (let ((_e4978849823_ (gx#syntax-e _g4978449820_)))
                      (let ((_hd4978949827_ (##car _e4978849823_))
                            (_tl4979049830_ (##cdr _e4978849823_)))
                        (if (gx#stx-pair? _tl4979049830_)
                            (let ((_e4979149833_ (gx#syntax-e _tl4979049830_)))
                              (let ((_hd4979249837_ (##car _e4979149833_))
                                    (_tl4979349840_ (##cdr _e4979149833_)))
                                (if (gx#stx-pair/null? _tl4979349840_)
                                    (let ((_g52019_
                                           (gx#syntax-split-splice
                                            _tl4979349840_
                                            '0)))
                                      (begin
                                        (let ((_g52020_
                                               (if (##values? _g52019_)
                                                   (##vector-length _g52019_)
                                                   1)))
                                          (if (not (##fx= _g52020_ 2))
                                              (error "Context expects 2 values"
                                                     _g52020_)))
                                        (let ((_target4979449843_
                                               (##vector-ref _g52019_ 0))
                                              (_tl4979649846_
                                               (##vector-ref _g52019_ 1)))
                                          (if (gx#stx-null? _tl4979649846_)
                                              (letrec ((_loop4979749849_
                                                        (lambda (_hd4979549853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol4980149856_
                         _method4980249858_)
                  (if (gx#stx-pair? _hd4979549853_)
                      (let ((_e4979849861_ (gx#syntax-e _hd4979549853_)))
                        (let ((_lp-hd4979949865_ (##car _e4979849861_))
                              (_lp-tl4980049868_ (##cdr _e4979849861_)))
                          (if (gx#stx-pair? _lp-hd4979949865_)
                              (let ((_e4980549871_
                                     (gx#syntax-e _lp-hd4979949865_)))
                                (let ((_hd4980649875_ (##car _e4980549871_))
                                      (_tl4980749878_ (##cdr _e4980549871_)))
                                  (if (gx#stx-pair? _tl4980749878_)
                                      (let ((_e4980849881_
                                             (gx#syntax-e _tl4980749878_)))
                                        (let ((_hd4980949885_
                                               (##car _e4980849881_))
                                              (_tl4981049888_
                                               (##cdr _e4980849881_)))
                                          (if (gx#stx-null? _tl4981049888_)
                                              (_loop4979749849_
                                               _lp-tl4980049868_
                                               (cons _hd4980949885_
                                                     _symbol4980149856_)
                                               (cons _hd4980649875_
                                                     _method4980249858_))
                                              (_g4978349816_ _g4978449820_))))
                                      (_g4978349816_ _g4978449820_))))
                              (_g4978349816_ _g4978449820_))))
                      (let ((_symbol4980349891_ (reverse _symbol4980149856_))
                            (_method4980449894_ (reverse _method4980249858_)))
                        ((lambda (_L49897_ _L49899_ _L49900_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L49897_
                                    _L49899_)
                                   (foldr2 (lambda (_g4991849922_
                                                    _g4991949925_
                                                    _g4992049927_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L49900_
                                                               (cons _g4991949925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g4991849922_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4992049927_))
                                           '()
                                           _L49897_
                                           _L49899_))))
                         _symbol4980349891_
                         _method4980449894_
                         _hd4979249837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4979749849_
                                                 _target4979449843_
                                                 '()
                                                 '()))
                                              (_g4978349816_ _g4978449820_)))))
                                    (_g4978349816_ _g4978449820_))))
                            (_g4978349816_ _g4978449820_))))
                    (_g4978349816_ _g4978449820_)))))
        (_g4978249930_ _$stx49779_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx49935_)
      (let* ((_g4993949953_
              (lambda (_g4994049949_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4994049949_)))
             (_g4993849994_
              (lambda (_g4994049957_)
                (if (gx#stx-pair? _g4994049957_)
                    (let ((_e4994249960_ (gx#syntax-e _g4994049957_)))
                      (let ((_hd4994349964_ (##car _e4994249960_))
                            (_tl4994449967_ (##cdr _e4994249960_)))
                        (if (gx#stx-pair? _tl4994449967_)
                            (let ((_e4994549970_ (gx#syntax-e _tl4994449967_)))
                              (let ((_hd4994649974_ (##car _e4994549970_))
                                    (_tl4994749977_ (##cdr _e4994549970_)))
                                (if (gx#stx-null? _tl4994749977_)
                                    ((lambda (_L49980_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L49980_ '()))
                                                   '())))
                                     _hd4994649974_)
                                    (_g4993949953_ _g4994049957_))))
                            (_g4993949953_ _g4994049957_))))
                    (_g4993949953_ _g4994049957_)))))
        (_g4993849994_ _$stx49935_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx49998_)
      (let* ((___stx5162651627_ _$stx49998_)
             (_g5000450070_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5162651627_))))
        (let ((___kont5162951630_
               (lambda (_L50292_ _L50294_ _L50295_ _L50296_ _L50297_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L50297_
                             (cons _L50296_
                                   (cons _L50295_
                                         (cons _L50294_
                                               (cons _L50292_ '()))))))))
              (___kont5163151632_
               (lambda (_L50202_ _L50204_ _L50205_ _L50206_)
                 (cons _L50206_
                       (cons _L50205_
                             (cons _L50204_
                                   (cons _L50202_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5163351634_
               (lambda (_L50127_ _L50129_ _L50130_ _L50131_ _L50132_)
                 (cons _L50132_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L50130_
                                   (cons _L50129_
                                         (cons _L50127_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5162651627_)
              (let ((_e5001150232_ (gx#syntax-e ___stx5162651627_)))
                (let ((_tl5001350239_ (##cdr _e5001150232_))
                      (_hd5001250236_ (##car _e5001150232_)))
                  (if (gx#stx-pair? _tl5001350239_)
                      (let ((_e5001450242_ (gx#syntax-e _tl5001350239_)))
                        (let ((_tl5001650249_ (##cdr _e5001450242_))
                              (_hd5001550246_ (##car _e5001450242_)))
                          (if (gx#stx-pair? _tl5001650249_)
                              (let ((_e5001750252_
                                     (gx#syntax-e _tl5001650249_)))
                                (let ((_tl5001950259_ (##cdr _e5001750252_))
                                      (_hd5001850256_ (##car _e5001750252_)))
                                  (if (gx#stx-pair? _tl5001950259_)
                                      (let ((_e5002050262_
                                             (gx#syntax-e _tl5001950259_)))
                                        (let ((_tl5002250269_
                                               (##cdr _e5002050262_))
                                              (_hd5002150266_
                                               (##car _e5002050262_)))
                                          (if (gx#stx-pair? _tl5002250269_)
                                              (let ((_e5002350272_
                                                     (gx#syntax-e
                                                      _tl5002250269_)))
                                                (let ((_tl5002550279_
                                                       (##cdr _e5002350272_))
                                                      (_hd5002450276_
                                                       (##car _e5002350272_)))
                                                  (if (gx#stx-pair?
                                                       _tl5002550279_)
                                                      (let ((_e5002650282_
                                                             (gx#syntax-e
                                                              _tl5002550279_)))
                                                        (let ((_tl5002850289_
                                                               (##cdr _e5002650282_))
                                                              (_hd5002750286_
                                                               (##car _e5002650282_)))
                                                          (if (gx#stx-null?
                                                               _tl5002850289_)
                                                              (___kont5162951630_
                                                               _hd5002750286_
                                                               _hd5002450276_
                                                               _hd5002150266_
                                                               _hd5001850256_
                                                               _hd5001550246_)
                                                              (_g5000450070_))))
                                                      (if (gx#stx-null?
                                                           _tl5002550279_)
                                                          (___kont5163351634_
                                                           _hd5002450276_
                                                           _hd5002150266_
                                                           _hd5001850256_
                                                           _hd5001550246_
                                                           _hd5001250236_)
                                                          (_g5000450070_)))))
                                              (if (gx#stx-null? _tl5002250269_)
                                                  (___kont5163151632_
                                                   _hd5002150266_
                                                   _hd5001850256_
                                                   _hd5001550246_
                                                   _hd5001250236_)
                                                  (_g5000450070_)))))
                                      (_g5000450070_))))
                              (_g5000450070_))))
                      (_g5000450070_))))
              (_g5000450070_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx50325_)
      (let* ((___stx5173451735_ _$stx50325_)
             (_g5033050383_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5173451735_))))
        (let ((___kont5173751738_
               (lambda (_L50551_ _L50553_ _L50554_ _L50555_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50555_ '()))
                             (cons '#f
                                   (cons _L50554_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50553_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50551_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5173951740_
               (lambda (_L50450_ _L50452_ _L50453_ _L50454_ _L50455_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50454_ '()))
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
                                     (cons _L50452_ '()))
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
                                                     (cons _L50455_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50454_ '()))
                                                     (cons _L50453_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L50450_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5173451735_)
              (let ((_e5033650487_ (gx#syntax-e ___stx5173451735_)))
                (let ((_tl5033850494_ (##cdr _e5033650487_))
                      (_hd5033750491_ (##car _e5033650487_)))
                  (if (gx#stx-pair? _tl5033850494_)
                      (let ((_e5033950497_ (gx#syntax-e _tl5033850494_)))
                        (let ((_tl5034150504_ (##cdr _e5033950497_))
                              (_hd5034050501_ (##car _e5033950497_)))
                          (if (gx#stx-pair? _tl5034150504_)
                              (let ((_e5034250507_
                                     (gx#syntax-e _tl5034150504_)))
                                (let ((_tl5034450514_ (##cdr _e5034250507_))
                                      (_hd5034350511_ (##car _e5034250507_)))
                                  (if (gx#stx-datum? _hd5034350511_)
                                      (let ((_e5034550517_
                                             (gx#stx-e _hd5034350511_)))
                                        (if (equal? _e5034550517_ '#f)
                                            (if (gx#stx-pair? _tl5034450514_)
                                                (let ((_e5034650521_
                                                       (gx#syntax-e
                                                        _tl5034450514_)))
                                                  (let ((_tl5034850528_
                                                         (##cdr _e5034650521_))
                                                        (_hd5034750525_
                                                         (##car _e5034650521_)))
                                                    (if (gx#stx-pair?
                                                         _tl5034850528_)
                                                        (let ((_e5034950531_
                                                               (gx#syntax-e
                                                                _tl5034850528_)))
                                                          (let ((_tl5035150538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5034950531_))
                        (_hd5035050535_ (##car _e5034950531_)))
                    (if (gx#stx-pair? _tl5035150538_)
                        (let ((_e5035250541_ (gx#syntax-e _tl5035150538_)))
                          (let ((_tl5035450548_ (##cdr _e5035250541_))
                                (_hd5035350545_ (##car _e5035250541_)))
                            (if (gx#stx-null? _tl5035450548_)
                                (___kont5173751738_
                                 _hd5035350545_
                                 _hd5035050535_
                                 _hd5034750525_
                                 _hd5034050501_)
                                (_g5033050383_))))
                        (_g5033050383_))))
                (_g5033050383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5033050383_))
                                            (if (gx#stx-pair? _tl5034450514_)
                                                (let ((_e5036950420_
                                                       (gx#syntax-e
                                                        _tl5034450514_)))
                                                  (let ((_tl5037150427_
                                                         (##cdr _e5036950420_))
                                                        (_hd5037050424_
                                                         (##car _e5036950420_)))
                                                    (if (gx#stx-pair?
                                                         _tl5037150427_)
                                                        (let ((_e5037250430_
                                                               (gx#syntax-e
                                                                _tl5037150427_)))
                                                          (let ((_tl5037450437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5037250430_))
                        (_hd5037350434_ (##car _e5037250430_)))
                    (if (gx#stx-pair? _tl5037450437_)
                        (let ((_e5037550440_ (gx#syntax-e _tl5037450437_)))
                          (let ((_tl5037750447_ (##cdr _e5037550440_))
                                (_hd5037650444_ (##car _e5037550440_)))
                            (if (gx#stx-null? _tl5037750447_)
                                (___kont5173951740_
                                 _hd5037650444_
                                 _hd5037350434_
                                 _hd5037050424_
                                 _hd5034350511_
                                 _hd5034050501_)
                                (_g5033050383_))))
                        (_g5033050383_))))
                (_g5033050383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5033050383_))))
                                      (if (gx#stx-pair? _tl5034450514_)
                                          (let ((_e5036950420_
                                                 (gx#syntax-e _tl5034450514_)))
                                            (let ((_tl5037150427_
                                                   (##cdr _e5036950420_))
                                                  (_hd5037050424_
                                                   (##car _e5036950420_)))
                                              (if (gx#stx-pair? _tl5037150427_)
                                                  (let ((_e5037250430_
                                                         (gx#syntax-e
                                                          _tl5037150427_)))
                                                    (let ((_tl5037450437_
                                                           (##cdr _e5037250430_))
                                                          (_hd5037350434_
                                                           (##car _e5037250430_)))
                                                      (if (gx#stx-pair?
                                                           _tl5037450437_)
                                                          (let ((_e5037550440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5037450437_)))
                    (let ((_tl5037750447_ (##cdr _e5037550440_))
                          (_hd5037650444_ (##car _e5037550440_)))
                      (if (gx#stx-null? _tl5037750447_)
                          (___kont5173951740_
                           _hd5037650444_
                           _hd5037350434_
                           _hd5037050424_
                           _hd5034350511_
                           _hd5034050501_)
                          (_g5033050383_))))
                  (_g5033050383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5033050383_))))
                                          (_g5033050383_)))))
                              (_g5033050383_))))
                      (_g5033050383_))))
              (_g5033050383_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx50583_)
      (let* ((_g5058750601_
              (lambda (_g5058850597_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5058850597_)))
             (_g5058650642_
              (lambda (_g5058850605_)
                (if (gx#stx-pair? _g5058850605_)
                    (let ((_e5059050608_ (gx#syntax-e _g5058850605_)))
                      (let ((_hd5059150612_ (##car _e5059050608_))
                            (_tl5059250615_ (##cdr _e5059050608_)))
                        (if (gx#stx-pair? _tl5059250615_)
                            (let ((_e5059350618_ (gx#syntax-e _tl5059250615_)))
                              (let ((_hd5059450622_ (##car _e5059350618_))
                                    (_tl5059550625_ (##cdr _e5059350618_)))
                                (if (gx#stx-null? _tl5059550625_)
                                    ((lambda (_L50628_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50628_ '()))
                                                   '())))
                                     _hd5059450622_)
                                    (_g5058750601_ _g5058850605_))))
                            (_g5058750601_ _g5058850605_))))
                    (_g5058750601_ _g5058850605_)))))
        (_g5058650642_ _$stx50583_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx50646_)
      (let* ((_g5065050664_
              (lambda (_g5065150660_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5065150660_)))
             (_g5064950705_
              (lambda (_g5065150668_)
                (if (gx#stx-pair? _g5065150668_)
                    (let ((_e5065350671_ (gx#syntax-e _g5065150668_)))
                      (let ((_hd5065450675_ (##car _e5065350671_))
                            (_tl5065550678_ (##cdr _e5065350671_)))
                        (if (gx#stx-pair? _tl5065550678_)
                            (let ((_e5065650681_ (gx#syntax-e _tl5065550678_)))
                              (let ((_hd5065750685_ (##car _e5065650681_))
                                    (_tl5065850688_ (##cdr _e5065650681_)))
                                (if (gx#stx-null? _tl5065850688_)
                                    ((lambda (_L50691_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50691_ '()))
                                                   '())))
                                     _hd5065750685_)
                                    (_g5065050664_ _g5065150668_))))
                            (_g5065050664_ _g5065150668_))))
                    (_g5065050664_ _g5065150668_)))))
        (_g5064950705_ _$stx50646_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx50709_)
      (let* ((___stx5182651827_ _$stx50709_)
             (_g5071450747_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5182651827_))))
        (let ((___kont5182951830_
               (lambda (_L50849_ _L50851_ _L50852_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50852_ '()))
                             (cons _L50851_ (cons _L50849_ '()))))))
              (___kont5183151832_
               (lambda (_L50784_ _L50786_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50786_ '()))
                             (cons _L50784_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5182651827_)
              (let ((_e5071950809_ (gx#syntax-e ___stx5182651827_)))
                (let ((_tl5072150816_ (##cdr _e5071950809_))
                      (_hd5072050813_ (##car _e5071950809_)))
                  (if (gx#stx-pair? _tl5072150816_)
                      (let ((_e5072250819_ (gx#syntax-e _tl5072150816_)))
                        (let ((_tl5072450826_ (##cdr _e5072250819_))
                              (_hd5072350823_ (##car _e5072250819_)))
                          (if (gx#stx-pair? _tl5072450826_)
                              (let ((_e5072550829_
                                     (gx#syntax-e _tl5072450826_)))
                                (let ((_tl5072750836_ (##cdr _e5072550829_))
                                      (_hd5072650833_ (##car _e5072550829_)))
                                  (if (gx#stx-pair? _tl5072750836_)
                                      (let ((_e5072850839_
                                             (gx#syntax-e _tl5072750836_)))
                                        (let ((_tl5073050846_
                                               (##cdr _e5072850839_))
                                              (_hd5072950843_
                                               (##car _e5072850839_)))
                                          (if (gx#stx-null? _tl5073050846_)
                                              (___kont5182951830_
                                               _hd5072950843_
                                               _hd5072650833_
                                               _hd5072350823_)
                                              (_g5071450747_))))
                                      (if (gx#stx-null? _tl5072750836_)
                                          (___kont5183151832_
                                           _hd5072650833_
                                           _hd5072350823_)
                                          (_g5071450747_)))))
                              (_g5071450747_))))
                      (_g5071450747_))))
              (_g5071450747_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx50874_)
      (let* ((___stx5188251883_ _$stx50874_)
             (_g5087950912_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5188251883_))))
        (let ((___kont5188551886_
               (lambda (_L51014_ _L51016_ _L51017_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51017_ '()))
                             (cons _L51016_ (cons _L51014_ '()))))))
              (___kont5188751888_
               (lambda (_L50949_ _L50951_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50951_ '()))
                             (cons _L50949_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5188251883_)
              (let ((_e5088450974_ (gx#syntax-e ___stx5188251883_)))
                (let ((_tl5088650981_ (##cdr _e5088450974_))
                      (_hd5088550978_ (##car _e5088450974_)))
                  (if (gx#stx-pair? _tl5088650981_)
                      (let ((_e5088750984_ (gx#syntax-e _tl5088650981_)))
                        (let ((_tl5088950991_ (##cdr _e5088750984_))
                              (_hd5088850988_ (##car _e5088750984_)))
                          (if (gx#stx-pair? _tl5088950991_)
                              (let ((_e5089050994_
                                     (gx#syntax-e _tl5088950991_)))
                                (let ((_tl5089251001_ (##cdr _e5089050994_))
                                      (_hd5089150998_ (##car _e5089050994_)))
                                  (if (gx#stx-pair? _tl5089251001_)
                                      (let ((_e5089351004_
                                             (gx#syntax-e _tl5089251001_)))
                                        (let ((_tl5089551011_
                                               (##cdr _e5089351004_))
                                              (_hd5089451008_
                                               (##car _e5089351004_)))
                                          (if (gx#stx-null? _tl5089551011_)
                                              (___kont5188551886_
                                               _hd5089451008_
                                               _hd5089150998_
                                               _hd5088850988_)
                                              (_g5087950912_))))
                                      (if (gx#stx-null? _tl5089251001_)
                                          (___kont5188751888_
                                           _hd5089150998_
                                           _hd5088850988_)
                                          (_g5087950912_)))))
                              (_g5087950912_))))
                      (_g5087950912_))))
              (_g5087950912_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx51039_)
      (let* ((___stx5193851939_ _$stx51039_)
             (_g5104551086_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5193851939_))))
        (let ((___kont5194151942_
               (lambda (_L51234_ _L51236_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L51236_ '()))
                                   (cons '#f
                                         (cons _L51234_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51234_ '()))
                                                     '()))))))))
              (___kont5194351944_
               (lambda (_L51166_ _L51168_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L51168_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L51166_ '()))
                                         '()))))))
              (___kont5194551946_
               (lambda (_L51113_ _L51115_)
                 (cons _L51115_ (cons _L51113_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5193851939_)
              (let ((_e5104951190_ (gx#syntax-e ___stx5193851939_)))
                (let ((_tl5105151197_ (##cdr _e5104951190_))
                      (_hd5105051194_ (##car _e5104951190_)))
                  (if (gx#stx-pair? _tl5105151197_)
                      (let ((_e5105251200_ (gx#syntax-e _tl5105151197_)))
                        (let ((_tl5105451207_ (##cdr _e5105251200_))
                              (_hd5105351204_ (##car _e5105251200_)))
                          (if (gx#stx-pair? _tl5105451207_)
                              (let ((_e5105551210_
                                     (gx#syntax-e _tl5105451207_)))
                                (let ((_tl5105751217_ (##cdr _e5105551210_))
                                      (_hd5105651214_ (##car _e5105551210_)))
                                  (if (gx#stx-datum? _hd5105651214_)
                                      (let ((_e5105851220_
                                             (gx#stx-e _hd5105651214_)))
                                        (if (equal? _e5105851220_ 'inline:)
                                            (if (gx#stx-pair? _tl5105751217_)
                                                (let ((_e5105951224_
                                                       (gx#syntax-e
                                                        _tl5105751217_)))
                                                  (let ((_tl5106151231_
                                                         (##cdr _e5105951224_))
                                                        (_hd5106051228_
                                                         (##car _e5105951224_)))
                                                    (if (gx#stx-null?
                                                         _tl5106151231_)
                                                        (___kont5194151942_
                                                         _hd5106051228_
                                                         _hd5105351204_)
                                                        (_g5104551086_))))
                                                (if (gx#stx-null?
                                                     _tl5105751217_)
                                                    (___kont5194351944_
                                                     _hd5105651214_
                                                     _hd5105351204_)
                                                    (_g5104551086_)))
                                            (if (gx#stx-null? _tl5105751217_)
                                                (___kont5194351944_
                                                 _hd5105651214_
                                                 _hd5105351204_)
                                                (_g5104551086_))))
                                      (if (gx#stx-null? _tl5105751217_)
                                          (___kont5194351944_
                                           _hd5105651214_
                                           _hd5105351204_)
                                          (_g5104551086_)))))
                              (if (gx#stx-null? _tl5105451207_)
                                  (___kont5194551946_
                                   _hd5105351204_
                                   _hd5105051194_)
                                  (_g5104551086_)))))
                      (_g5104551086_))))
              (_g5104551086_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx51258_)
      (let* ((_g5126251291_
              (lambda (_g5126351287_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5126351287_)))
             (_g5126151391_
              (lambda (_g5126351295_)
                (if (gx#stx-pair? _g5126351295_)
                    (let ((_e5126651298_ (gx#syntax-e _g5126351295_)))
                      (let ((_hd5126751302_ (##car _e5126651298_))
                            (_tl5126851305_ (##cdr _e5126651298_)))
                        (if (gx#stx-pair/null? _tl5126851305_)
                            (let ((_g52021_
                                   (gx#syntax-split-splice _tl5126851305_ '0)))
                              (begin
                                (let ((_g52022_
                                       (if (##values? _g52021_)
                                           (##vector-length _g52021_)
                                           1)))
                                  (if (not (##fx= _g52022_ 2))
                                      (error "Context expects 2 values"
                                             _g52022_)))
                                (let ((_target5126951308_
                                       (##vector-ref _g52021_ 0))
                                      (_tl5127151311_
                                       (##vector-ref _g52021_ 1)))
                                  (if (gx#stx-null? _tl5127151311_)
                                      (letrec ((_loop5127251314_
                                                (lambda (_hd5127051318_
                                                         _dispatch5127651321_
                                                         _arity5127751323_)
                                                  (if (gx#stx-pair?
                                                       _hd5127051318_)
                                                      (let ((_e5127351326_
                                                             (gx#syntax-e
                                                              _hd5127051318_)))
                                                        (let ((_lp-hd5127451330_
                                                               (##car _e5127351326_))
                                                              (_lp-tl5127551333_
                                                               (##cdr _e5127351326_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5127451330_)
                                                              (let ((_e5128051336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5127451330_)))
                        (let ((_hd5128151340_ (##car _e5128051336_))
                              (_tl5128251343_ (##cdr _e5128051336_)))
                          (if (gx#stx-pair? _tl5128251343_)
                              (let ((_e5128351346_
                                     (gx#syntax-e _tl5128251343_)))
                                (let ((_hd5128451350_ (##car _e5128351346_))
                                      (_tl5128551353_ (##cdr _e5128351346_)))
                                  (if (gx#stx-null? _tl5128551353_)
                                      (_loop5127251314_
                                       _lp-tl5127551333_
                                       (cons _hd5128451350_
                                             _dispatch5127651321_)
                                       (cons _hd5128151340_ _arity5127751323_))
                                      (_g5126251291_ _g5126351295_))))
                              (_g5126251291_ _g5126351295_))))
                      (_g5126251291_ _g5126351295_))))
              (let ((_dispatch5127851356_ (reverse _dispatch5127651321_))
                    (_arity5127951359_ (reverse _arity5127751323_)))
                ((lambda (_L51362_ _L51364_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L51362_
                                              _L51364_)
                                             (foldr2 (lambda (_g5137951383_
                                                              _g5138051386_
                                                              _g5138151388_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5138051386_ (cons _g5137951383_ '())))
                     _g5138151388_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L51362_
                                                     _L51364_)))
                                     '()))))
                 _dispatch5127851356_
                 _arity5127951359_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5127251314_
                                         _target5126951308_
                                         '()
                                         '()))
                                      (_g5126251291_ _g5126351295_)))))
                            (_g5126251291_ _g5126351295_))))
                    (_g5126251291_ _g5126351295_)))))
        (_g5126151391_ _$stx51258_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx51396_)
      (let* ((_g5140051418_
              (lambda (_g5140151414_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5140151414_)))
             (_g5139951473_
              (lambda (_g5140151422_)
                (if (gx#stx-pair? _g5140151422_)
                    (let ((_e5140451425_ (gx#syntax-e _g5140151422_)))
                      (let ((_hd5140551429_ (##car _e5140451425_))
                            (_tl5140651432_ (##cdr _e5140451425_)))
                        (if (gx#stx-pair? _tl5140651432_)
                            (let ((_e5140751435_ (gx#syntax-e _tl5140651432_)))
                              (let ((_hd5140851439_ (##car _e5140751435_))
                                    (_tl5140951442_ (##cdr _e5140751435_)))
                                (if (gx#stx-pair? _tl5140951442_)
                                    (let ((_e5141051445_
                                           (gx#syntax-e _tl5140951442_)))
                                      (let ((_hd5141151449_
                                             (##car _e5141051445_))
                                            (_tl5141251452_
                                             (##cdr _e5141051445_)))
                                        (if (gx#stx-null? _tl5141251452_)
                                            ((lambda (_L51455_ _L51457_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51457_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51455_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5141151449_
                                             _hd5140851439_)
                                            (_g5140051418_ _g5140151422_))))
                                    (_g5140051418_ _g5140151422_))))
                            (_g5140051418_ _g5140151422_))))
                    (_g5140051418_ _g5140151422_)))))
        (_g5139951473_ _$stx51396_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx51477_)
      (let* ((_g5148151499_
              (lambda (_g5148251495_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5148251495_)))
             (_g5148051554_
              (lambda (_g5148251503_)
                (if (gx#stx-pair? _g5148251503_)
                    (let ((_e5148551506_ (gx#syntax-e _g5148251503_)))
                      (let ((_hd5148651510_ (##car _e5148551506_))
                            (_tl5148751513_ (##cdr _e5148551506_)))
                        (if (gx#stx-pair? _tl5148751513_)
                            (let ((_e5148851516_ (gx#syntax-e _tl5148751513_)))
                              (let ((_hd5148951520_ (##car _e5148851516_))
                                    (_tl5149051523_ (##cdr _e5148851516_)))
                                (if (gx#stx-pair? _tl5149051523_)
                                    (let ((_e5149151526_
                                           (gx#syntax-e _tl5149051523_)))
                                      (let ((_hd5149251530_
                                             (##car _e5149151526_))
                                            (_tl5149351533_
                                             (##cdr _e5149151526_)))
                                        (if (gx#stx-null? _tl5149351533_)
                                            ((lambda (_L51536_ _L51538_)
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
                               (cons _L51538_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51536_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5149251530_
                                             _hd5148951520_)
                                            (_g5148151499_ _g5148251503_))))
                                    (_g5148151499_ _g5148251503_))))
                            (_g5148151499_ _g5148251503_))))
                    (_g5148151499_ _g5148251503_)))))
        (_g5148051554_ _$stx51477_)))))
