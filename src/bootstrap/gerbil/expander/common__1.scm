(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12056_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g12057_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g12060_| (gx#core-quote-syntax 'else))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g12056_|))
    (define |gx[:0:]#AST|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g12057_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx171_)
        (let ((_generate174_
               (lambda (_tgt326_ _kws328_ _clauses329_)
                 (let ((_generate1333_
                        (lambda (_where719_
                                 _hd721_
                                 _fender722_
                                 _body723_
                                 _E724_)
                          (letrec ((_recur726_
                                    (lambda (_hd729_ _tgt731_ _K732_)
                                      (let ((_g735747_
                                             (lambda (_g736743_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g736743_))))
                                        (let ((_g7341014_
                                               (lambda (_g736751_)
                                                 ((lambda ()
                                                    (if (gx#identifier?
                                                         _hd729_)
                                                        (if (gx#underscore?
                                                             _hd729_)
                                                            _K732_
                                                            (if (find (lambda (_g757759_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#bound-identifier=? _g757759_ _hd729_))
                              _kws328_)
                        (let ((_g763778_
                               (lambda (_g764774_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g764774_))))
                          (let ((_g762829_
                                 (lambda (_g764782_)
                                   (if (gx#stx-pair? _g764782_)
                                       (let ((_e767785_
                                              (gx#syntax-e _g764782_)))
                                         (let ((_hd768789_ (##car _e767785_))
                                               (_tl769792_ (##cdr _e767785_)))
                                           (if (gx#stx-pair? _tl769792_)
                                               (let ((_e770795_
                                                      (gx#syntax-e
                                                       _tl769792_)))
                                                 (let ((_hd771799_
                                                        (##car _e770795_))
                                                       (_tl772802_
                                                        (##cdr _e770795_)))
                                                   (if (gx#stx-null?
                                                        _tl772802_)
                                                       ((lambda (_L805_ _L807_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _L807_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _L807_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L805_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _K732_ (cons _E724_ '()))))))
                _hd771799_
                _hd768789_)
               (_g763778_ _g764782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g763778_ _g764782_))))
                                       (_g763778_ _g764782_)))))
                            (_g762829_ (list _tgt731_ _hd729_))))
                        (let ((_g833848_
                               (lambda (_g834844_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g834844_))))
                          (let ((_g832892_
                                 (lambda (_g834852_)
                                   (if (gx#stx-pair? _g834852_)
                                       (let ((_e837855_
                                              (gx#syntax-e _g834852_)))
                                         (let ((_hd838859_ (##car _e837855_))
                                               (_tl839862_ (##cdr _e837855_)))
                                           (if (gx#stx-pair? _tl839862_)
                                               (let ((_e840865_
                                                      (gx#syntax-e
                                                       _tl839862_)))
                                                 (let ((_hd841869_
                                                        (##car _e840865_))
                                                       (_tl842872_
                                                        (##cdr _e840865_)))
                                                   (if (gx#stx-null?
                                                        _tl842872_)
                                                       ((lambda (_L875_ _L877_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L875_ (cons _L877_ '())) '())
                                (cons _K732_ '())))))
                _hd841869_
                _hd838859_)
               (_g833848_ _g834852_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g833848_ _g834852_))))
                                       (_g833848_ _g834852_)))))
                            (_g832892_ (list _tgt731_ _hd729_))))))
                (if (gx#stx-null? _hd729_)
                    (let ((_g896904_
                           (lambda (_g897900_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g897900_))))
                      (let ((_g895922_
                             (lambda (_g897908_)
                               ((lambda (_L911_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _L911_ '()))
                                                (cons _K732_
                                                      (cons _E724_ '()))))))
                                _g897908_))))
                        (_g895922_ _tgt731_)))
                    (if (gx#stx-datum? _hd729_)
                        (let ((_g926945_
                               (lambda (_g927941_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g927941_))))
                          (let ((_g9251003_
                                 (lambda (_g927949_)
                                   (if (gx#stx-pair? _g927949_)
                                       (let ((_e931952_
                                              (gx#syntax-e _g927949_)))
                                         (let ((_hd932956_ (##car _e931952_))
                                               (_tl933959_ (##cdr _e931952_)))
                                           (if (gx#stx-pair? _tl933959_)
                                               (let ((_e934962_
                                                      (gx#syntax-e
                                                       _tl933959_)))
                                                 (let ((_hd935966_
                                                        (##car _e934962_))
                                                       (_tl936969_
                                                        (##cdr _e934962_)))
                                                   (if (gx#stx-pair?
                                                        _tl936969_)
                                                       (let ((_e937972_
                                                              (gx#syntax-e
                                                               _tl936969_)))
                                                         (let ((_hd938976_
                                                                (##car _e937972_))
                                                               (_tl939979_
                                                                (##cdr _e937972_)))
                                                           (if (gx#stx-null?
                                                                _tl939979_)
                                                               ((lambda (_L982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L984_
                                 _L985_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L982_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _L985_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L984_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _K732_ (cons _E724_ '()))))))
                        _hd938976_
                        _hd935966_
                        _hd932956_)
                       (_g926945_ _g927949_))))
               (_g926945_ _g927949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g926945_ _g927949_))))
                                       (_g926945_ _g927949_)))))
                            (_g9251003_
                             (list _tgt731_
                                   _hd729_
                                   (let ((_e1007_ (gx#stx-e _hd729_)))
                                     (if (let ((_$e1010_ (keyword? _e1007_)))
                                           (if _$e1010_
                                               _$e1010_
                                               (immediate? _e1007_)))
                                         (gx#datum->syntax '#f 'eq?)
                                         (if (number? _e1007_)
                                             (gx#datum->syntax '#f 'eqv?)
                                             (gx#datum->syntax
                                              '#f
                                              'equal?))))))))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx171_
                         _where719_
                         _hd729_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g7331237_
                                                 (lambda (_g7361018_)
                                                   (if (gx#stx-pair?
                                                        _g7361018_)
                                                       (let ((_e7391021_
                                                              (gx#syntax-e
                                                               _g7361018_)))
                                                         (let ((_hd7401025_
                                                                (##car _e7391021_))
                                                               (_tl7411028_
                                                                (##cdr _e7391021_)))
                                                           ((lambda (_L1031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1033_)
                      (let ((_g10441052_
                             (lambda (_g10451048_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g10451048_))))
                        (let ((_g10431233_
                               (lambda (_g10451056_)
                                 ((lambda (_L1059_)
                                    (let ()
                                      (let ((_g10711079_
                                             (lambda (_g10721075_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g10721075_))))
                                        (let ((_g10701229_
                                               (lambda (_g10721083_)
                                                 ((lambda (_L1086_)
                                                    (let ()
                                                      (let ((_g10991107_
                                                             (lambda (_g11001103_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g11001103_))))
                                                        (let ((_g10981225_
                                                               (lambda (_g11001111_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L1114_)
                            (let ()
                              (let ((_g11271135_
                                     (lambda (_g11281131_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g11281131_))))
                                (let ((_g11261221_
                                       (lambda (_g11281139_)
                                         ((lambda (_L1142_)
                                            (let ()
                                              (let ((_g11551163_
                                                     (lambda (_g11561159_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g11561159_))))
                                                (let ((_g11541217_
                                                       (lambda (_g11561167_)
                                                         ((lambda (_L1170_)
                                                            (let ()
                                                              (let ((_g11831191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g11841187_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g11841187_))))
                        (let ((_g11821213_
                               (lambda (_g11841195_)
                                 ((lambda (_L1198_)
                                    (let ()
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-pair?)
                                                          (cons _L1059_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (cons _L1086_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax-e)
                                                      (cons _L1059_ '()))
                                                '()))
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L1114_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##car)
                                (cons _L1086_ '()))
                          '()))
              (cons (cons _L1142_
                          (cons (cons (gx#datum->syntax '#f '##cdr)
                                      (cons _L1086_ '()))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L1170_ '())))
                                    '())))
                  (cons _L1198_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g11841195_))))
                          (_g11821213_ _E724_)))))
                  _g11561167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g11541217_
                                                   (_recur726_
                                                    _L1033_
                                                    _L1114_
                                                    (_recur726_
                                                     _L1031_
                                                     _L1142_
                                                     _K732_)))))))
                                          _g11281139_))))
                                  (_g11261221_ (gx#genident 'tl))))))
                          _g11001111_))))
                  (_g10981225_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g10721083_))))
                                          (_g10701229_ (gx#genident 'e))))))
                                  _g10451056_))))
                          (_g10431233_ _tgt731_))))
                    _tl7411028_
                    _hd7401025_)))
               (_g7341014_ _g7361018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g7331237_ _hd729_)))))))
                            (_recur726_
                             _hd721_
                             _tgt326_
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _fender722_
                                         (cons _body723_
                                               (cons _E724_ '())))))))))
                   (let ((_generate-clause331_
                          (lambda (_hd1241_ _E1243_)
                            (let ((_g12471274_
                                   (lambda (_g12481270_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g12481270_))))
                              (let ((_g12461285_
                                     (lambda (_g12481278_)
                                       ((lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx171_
                                           _hd1241_))))))
                                (let ((_g12451343_
                                       (lambda (_g12481289_)
                                         (if (gx#stx-pair? _g12481289_)
                                             (let ((_e12601292_
                                                    (gx#syntax-e _g12481289_)))
                                               (let ((_hd12611296_
                                                      (##car _e12601292_))
                                                     (_tl12621299_
                                                      (##cdr _e12601292_)))
                                                 (if (gx#stx-pair?
                                                      _tl12621299_)
                                                     (let ((_e12631302_
                                                            (gx#syntax-e
                                                             _tl12621299_)))
                                                       (let ((_hd12641306_
                                                              (##car _e12631302_))
                                                             (_tl12651309_
                                                              (##cdr _e12631302_)))
                                                         (if (gx#stx-pair?
                                                              _tl12651309_)
                                                             (let ((_e12661312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl12651309_)))
                       (let ((_hd12671316_ (##car _e12661312_))
                             (_tl12681319_ (##cdr _e12661312_)))
                         (if (gx#stx-null? _tl12681319_)
                             ((lambda (_L1322_ _L1324_ _L1325_)
                                (_generate1333_
                                 _hd1241_
                                 _L1325_
                                 _L1324_
                                 _L1322_
                                 _E1243_))
                              _hd12671316_
                              _hd12641306_
                              _hd12611296_)
                             (_g12461285_ _g12481289_))))
                     (_g12461285_ _g12481289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g12461285_
                                                      _g12481289_))))
                                             (_g12461285_ _g12481289_)))))
                                  (let ((_g12441385_
                                         (lambda (_g12481347_)
                                           (if (gx#stx-pair? _g12481347_)
                                               (let ((_e12511350_
                                                      (gx#syntax-e
                                                       _g12481347_)))
                                                 (let ((_hd12521354_
                                                        (##car _e12511350_))
                                                       (_tl12531357_
                                                        (##cdr _e12511350_)))
                                                   (if (gx#stx-pair?
                                                        _tl12531357_)
                                                       (let ((_e12541360_
                                                              (gx#syntax-e
                                                               _tl12531357_)))
                                                         (let ((_hd12551364_
                                                                (##car _e12541360_))
                                                               (_tl12561367_
                                                                (##cdr _e12541360_)))
                                                           (if (gx#stx-null?
                                                                _tl12561367_)
                                                               ((lambda (_L1370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1372_)
                          (_generate1333_
                           _hd1241_
                           _L1372_
                           '#t
                           _L1370_
                           _E1243_))
                        _hd12551364_
                        _hd12521354_)
                       (_g12451343_ _g12481347_))))
               (_g12451343_ _g12481347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g12451343_ _g12481347_)))))
                                    (_g12441385_ _hd1241_))))))))
                     (let ((_generate-clauses334_
                            (lambda (_clauses457_)
                              ((letrec ((_lp460_ (lambda (_rest463_
                                                          _E465_
                                                          _r466_)
                                                   (let ((_g469481_
                                                          (lambda (_g470477_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g470477_))))
                                                     (let ((_g468529_
                                                            (lambda (_g470485_)
                                                              ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g492500_
                                (lambda (_g493496_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g493496_))))
                           (let ((_g491525_
                                  (lambda (_g493504_)
                                    ((lambda (_L507_)
                                       (let ()
                                         (cons (cons _E465_
                                                     (cons (gx#stx-wrap-source
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '()
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'raise-syntax-error)
                                            (cons '#f
                                                  (cons '"Bad syntax"
                                                        (cons _L507_ '()))))
                                      '())))
                    (gx#stx-source _stx171_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _r466_)))
                                     _g493504_))))
                             (_g491525_ _tgt326_))))))))
               (let ((_g467715_
                      (lambda (_g470533_)
                        (if (gx#stx-pair? _g470533_)
                            (let ((_e473536_ (gx#syntax-e _g470533_)))
                              (let ((_hd474540_ (##car _e473536_))
                                    (_tl475543_ (##cdr _e473536_)))
                                ((lambda (_L546_ _L548_)
                                   (let ((_g560571_
                                          (lambda (_g561567_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g561567_))))
                                     (let ((_g559683_
                                            (lambda (_g561575_)
                                              ((lambda ()
                                                 (let ((_g582590_
                                                        (lambda (_g583586_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g583586_))))
                                                   (let ((_g581679_
                                                          (lambda (_g583594_)
                                                            ((lambda (_L597_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g613621_
                                (lambda (_g614617_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g614617_))))
                           (let ((_g612675_
                                  (lambda (_g614625_)
                                    ((lambda (_L628_)
                                       (let ()
                                         (let ((_g641649_
                                                (lambda (_g642645_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g642645_))))
                                           (let ((_g640671_
                                                  (lambda (_g642653_)
                                                    ((lambda (_L656_)
                                                       (let ()
                                                         (let ()
                                                           (_lp460_ _L546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L597_
                            (cons (cons _E465_ (cons _L656_ '())) _r466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g642653_))))
                                             (_g640671_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L628_ '())))
                                               (gx#stx-source _L548_)))))))
                                     _g614625_))))
                             (_g612675_
                              (_generate-clause331_
                               _L548_
                               (cons _L597_ '())))))))
                     _g583594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g581679_
                                                      (gx#genident 'E)))))))))
                                       (let ((_g558711_
                                              (lambda (_g561687_)
                                                (if (gx#stx-pair? _g561687_)
                                                    (let ((_e563690_
                                                           (gx#syntax-e
                                                            _g561687_)))
                                                      (let ((_hd564694_
                                                             (##car _e563690_))
                                                            (_tl565697_
                                                             (##cdr _e563690_)))
                                                        (if (gx#identifier?
                                                             _hd564694_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gx[1]#_g12060_|
                         _hd564694_)
                        ((lambda (_L700_)
                           (if (gx#stx-null? _L546_)
                               (if (if (gx#stx-list? _L700_)
                                       (not (gx#stx-null? _L700_))
                                       '#f)
                                   (cons (cons _E465_
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin) _L700_)
                                '())))
              (gx#stx-source _L548_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _r466_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx171_
                                    _L548_))
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; misplaced else"
                                _stx171_
                                _L548_)))
                         _tl565697_)
                        (_g559683_ _g561687_))
                    (_g559683_ _g561687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g559683_ _g561687_)))))
                                         (_g558711_ _L548_)))))
                                 _tl475543_
                                 _hd474540_)))
                            (_g468529_ _g470533_)))))
                 (_g467715_ _rest463_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp460_)
                               _clauses457_
                               (gx#genident 'E)
                               '()))))
                       (let ((_bind336_ (_generate-clauses334_ _clauses329_)))
                         (let ((_g339356_
                                (lambda (_g340352_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g340352_))))
                           (let ((_g338453_
                                  (lambda (_g340360_)
                                    (if (gx#stx-pair/null? _g340360_)
                                        (if (fx>= (gx#stx-length _g340360_) '0)
                                            (let ((_g12058_
                                                   (gx#syntax-split-splice
                                                    _g340360_
                                                    '0)))
                                              (begin
                                                (let ((_g12059_
                                                       (values-count
                                                        _g12058_)))
                                                  (if (not (fx= _g12059_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12059_)))
                                                (let ((_target342363_
                                                       (values-ref _g12058_ 0))
                                                      (_tl344366_
                                                       (values-ref
                                                        _g12058_
                                                        1)))
                                                  (if (gx#stx-null? _tl344366_)
                                                      (letrec ((_loop345369_
                                                                (lambda (_hd343373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bind-try349376_)
                          (if (gx#stx-pair? _hd343373_)
                              (let ((_e346379_ (gx#syntax-e _hd343373_)))
                                (let ((_lp-hd347383_ (##car _e346379_))
                                      (_lp-tl348386_ (##cdr _e346379_)))
                                  (_loop345369_
                                   _lp-tl348386_
                                   (cons _lp-hd347383_ _bind-try349376_))))
                              (let ((_bind-try350389_
                                     (reverse _bind-try349376_)))
                                ((lambda (_L393_)
                                   (let ()
                                     (let ((_g411419_
                                            (lambda (_g412415_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g412415_))))
                                       (let ((_g410449_
                                              (lambda (_g412423_)
                                                ((lambda (_L426_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g440443_ _g441446_)
                                      (cons _g440443_ _g441446_))
                                    '()
                                    _L393_))
                           (cons (cons _L426_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g412423_))))
                                         (_g410449_ (car (last _bind336_)))))))
                                 _bind-try350389_))))))
                (_loop345369_ _target342363_ '()))
              (_g339356_ _g340360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g339356_ _g340360_))
                                        (_g339356_ _g340360_)))))
                             (_g338453_ _bind336_))))))))))
          (let ((_g177196_
                 (lambda (_g178192_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g178192_))))
            (let ((_g176322_
                   (lambda (_g178200_)
                     (if (gx#stx-pair? _g178200_)
                         (let ((_e182203_ (gx#syntax-e _g178200_)))
                           (let ((_hd183207_ (##car _e182203_))
                                 (_tl184210_ (##cdr _e182203_)))
                             (if (gx#stx-pair? _tl184210_)
                                 (let ((_e185213_ (gx#syntax-e _tl184210_)))
                                   (let ((_hd186217_ (##car _e185213_))
                                         (_tl187220_ (##cdr _e185213_)))
                                     (if (gx#stx-pair? _tl187220_)
                                         (let ((_e188223_
                                                (gx#syntax-e _tl187220_)))
                                           (let ((_hd189227_ (##car _e188223_))
                                                 (_tl190230_
                                                  (##cdr _e188223_)))
                                             ((lambda (_L233_ _L235_ _L236_)
                                                (if (if (gx#identifier-list?
                                                         _L235_)
                                                        (gx#stx-list? _L233_)
                                                        '#f)
                                                    (let ((_g257265_
                                                           (lambda (_g258261_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g258261_))))
                                                      (let ((_g256318_
                                                             (lambda (_g258269_)
                                                               ((lambda (_L272_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g284292_
                                   (lambda (_g285288_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g285288_))))
                              (let ((_g283314_
                                     (lambda (_g285296_)
                                       ((lambda (_L299_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L236_ '()))
                        '())
                  (cons _L299_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g285296_))))
                                (_g283314_
                                 (_generate174_
                                  _L272_
                                  (gx#syntax->list _L235_)
                                  _L233_))))))
                        _g258269_))))
                (_g256318_ (gx#genident 'e))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g177196_ _g178200_)))
                                              _tl190230_
                                              _hd189227_
                                              _hd186217_)))
                                         (_g177196_ _g178200_))))
                                 (_g177196_ _g178200_))))
                         (_g177196_ _g178200_)))))
              (_g176322_ _stx171_))))))))
