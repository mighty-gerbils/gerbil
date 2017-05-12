(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g2260_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g2261_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2264_| (gx#core-quote-syntax 'else))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2260_|))
    (define |gx[:0:]#AST|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2261_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx233_)
        (let ((_generate236_
               (lambda (_tgt388_ _kws390_ _clauses391_)
                 (let ((_generate1395_
                        (lambda (_where781_
                                 _hd783_
                                 _fender784_
                                 _body785_
                                 _E786_)
                          (letrec ((_recur788_
                                    (lambda (_hd791_ _tgt793_ _K794_)
                                      (let ((_g797809_
                                             (lambda (_g798805_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g798805_))))
                                        (let ((_g7961076_
                                               (lambda (_g798813_)
                                                 ((lambda ()
                                                    (if (gx#identifier?
                                                         _hd791_)
                                                        (if (gx#underscore?
                                                             _hd791_)
                                                            _K794_
                                                            (if (find (lambda (_g819821_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#bound-identifier=? _g819821_ _hd791_))
                              _kws390_)
                        (let ((_g825840_
                               (lambda (_g826836_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g826836_))))
                          (let ((_g824891_
                                 (lambda (_g826844_)
                                   (if (gx#stx-pair? _g826844_)
                                       (let ((_e829847_
                                              (gx#syntax-e _g826844_)))
                                         (let ((_hd830851_ (##car _e829847_))
                                               (_tl831854_ (##cdr _e829847_)))
                                           (if (gx#stx-pair? _tl831854_)
                                               (let ((_e832857_
                                                      (gx#syntax-e
                                                       _tl831854_)))
                                                 (let ((_hd833861_
                                                        (##car _e832857_))
                                                       (_tl834864_
                                                        (##cdr _e832857_)))
                                                   (if (gx#stx-null?
                                                        _tl834864_)
                                                       ((lambda (_L867_ _L869_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _L869_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _L869_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L867_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _K794_ (cons _E786_ '()))))))
                _hd833861_
                _hd830851_)
               (_g825840_ _g826844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g825840_ _g826844_))))
                                       (_g825840_ _g826844_)))))
                            (_g824891_ (list _tgt793_ _hd791_))))
                        (let ((_g895910_
                               (lambda (_g896906_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g896906_))))
                          (let ((_g894954_
                                 (lambda (_g896914_)
                                   (if (gx#stx-pair? _g896914_)
                                       (let ((_e899917_
                                              (gx#syntax-e _g896914_)))
                                         (let ((_hd900921_ (##car _e899917_))
                                               (_tl901924_ (##cdr _e899917_)))
                                           (if (gx#stx-pair? _tl901924_)
                                               (let ((_e902927_
                                                      (gx#syntax-e
                                                       _tl901924_)))
                                                 (let ((_hd903931_
                                                        (##car _e902927_))
                                                       (_tl904934_
                                                        (##cdr _e902927_)))
                                                   (if (gx#stx-null?
                                                        _tl904934_)
                                                       ((lambda (_L937_ _L939_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L937_ (cons _L939_ '())) '())
                                (cons _K794_ '())))))
                _hd903931_
                _hd900921_)
               (_g895910_ _g896914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g895910_ _g896914_))))
                                       (_g895910_ _g896914_)))))
                            (_g894954_ (list _tgt793_ _hd791_))))))
                (if (gx#stx-null? _hd791_)
                    (let ((_g958966_
                           (lambda (_g959962_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g959962_))))
                      (let ((_g957984_
                             (lambda (_g959970_)
                               ((lambda (_L973_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _L973_ '()))
                                                (cons _K794_
                                                      (cons _E786_ '()))))))
                                _g959970_))))
                        (_g957984_ _tgt793_)))
                    (if (gx#stx-datum? _hd791_)
                        (let ((_g9881007_
                               (lambda (_g9891003_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g9891003_))))
                          (let ((_g9871065_
                                 (lambda (_g9891011_)
                                   (if (gx#stx-pair? _g9891011_)
                                       (let ((_e9931014_
                                              (gx#syntax-e _g9891011_)))
                                         (let ((_hd9941018_ (##car _e9931014_))
                                               (_tl9951021_
                                                (##cdr _e9931014_)))
                                           (if (gx#stx-pair? _tl9951021_)
                                               (let ((_e9961024_
                                                      (gx#syntax-e
                                                       _tl9951021_)))
                                                 (let ((_hd9971028_
                                                        (##car _e9961024_))
                                                       (_tl9981031_
                                                        (##cdr _e9961024_)))
                                                   (if (gx#stx-pair?
                                                        _tl9981031_)
                                                       (let ((_e9991034_
                                                              (gx#syntax-e
                                                               _tl9981031_)))
                                                         (let ((_hd10001038_
                                                                (##car _e9991034_))
                                                               (_tl10011041_
                                                                (##cdr _e9991034_)))
                                                           (if (gx#stx-null?
                                                                _tl10011041_)
                                                               ((lambda (_L1044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1046_
                                 _L1047_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L1044_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _L1047_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L1046_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _K794_ (cons _E786_ '()))))))
                        _hd10001038_
                        _hd9971028_
                        _hd9941018_)
                       (_g9881007_ _g9891011_))))
               (_g9881007_ _g9891011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9881007_ _g9891011_))))
                                       (_g9881007_ _g9891011_)))))
                            (_g9871065_
                             (list _tgt793_
                                   _hd791_
                                   (let ((_e1069_ (gx#stx-e _hd791_)))
                                     (if (let ((_$e1072_ (keyword? _e1069_)))
                                           (if _$e1072_
                                               _$e1072_
                                               (immediate? _e1069_)))
                                         (gx#datum->syntax '#f 'eq?)
                                         (if (number? _e1069_)
                                             (gx#datum->syntax '#f 'eqv?)
                                             (gx#datum->syntax
                                              '#f
                                              'equal?))))))))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx233_
                         _where781_
                         _hd791_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g7951299_
                                                 (lambda (_g7981080_)
                                                   (if (gx#stx-pair?
                                                        _g7981080_)
                                                       (let ((_e8011083_
                                                              (gx#syntax-e
                                                               _g7981080_)))
                                                         (let ((_hd8021087_
                                                                (##car _e8011083_))
                                                               (_tl8031090_
                                                                (##cdr _e8011083_)))
                                                           ((lambda (_L1093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1095_)
                      (let ((_g11061114_
                             (lambda (_g11071110_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g11071110_))))
                        (let ((_g11051295_
                               (lambda (_g11071118_)
                                 ((lambda (_L1121_)
                                    (let ()
                                      (let ((_g11331141_
                                             (lambda (_g11341137_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g11341137_))))
                                        (let ((_g11321291_
                                               (lambda (_g11341145_)
                                                 ((lambda (_L1148_)
                                                    (let ()
                                                      (let ((_g11611169_
                                                             (lambda (_g11621165_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g11621165_))))
                                                        (let ((_g11601287_
                                                               (lambda (_g11621173_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L1176_)
                            (let ()
                              (let ((_g11891197_
                                     (lambda (_g11901193_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g11901193_))))
                                (let ((_g11881283_
                                       (lambda (_g11901201_)
                                         ((lambda (_L1204_)
                                            (let ()
                                              (let ((_g12171225_
                                                     (lambda (_g12181221_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g12181221_))))
                                                (let ((_g12161279_
                                                       (lambda (_g12181229_)
                                                         ((lambda (_L1232_)
                                                            (let ()
                                                              (let ((_g12451253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g12461249_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g12461249_))))
                        (let ((_g12441275_
                               (lambda (_g12461257_)
                                 ((lambda (_L1260_)
                                    (let ()
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-pair?)
                                                          (cons _L1121_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (cons _L1148_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax-e)
                                                      (cons _L1121_ '()))
                                                '()))
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L1176_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##car)
                                (cons _L1148_ '()))
                          '()))
              (cons (cons _L1204_
                          (cons (cons (gx#datum->syntax '#f '##cdr)
                                      (cons _L1148_ '()))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L1232_ '())))
                                    '())))
                  (cons _L1260_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g12461257_))))
                          (_g12441275_ _E786_)))))
                  _g12181229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g12161279_
                                                   (_recur788_
                                                    _L1095_
                                                    _L1176_
                                                    (_recur788_
                                                     _L1093_
                                                     _L1204_
                                                     _K794_)))))))
                                          _g11901201_))))
                                  (_g11881283_ (gx#genident 'tl))))))
                          _g11621173_))))
                  (_g11601287_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g11341145_))))
                                          (_g11321291_ (gx#genident 'e))))))
                                  _g11071118_))))
                          (_g11051295_ _tgt793_))))
                    _tl8031090_
                    _hd8021087_)))
               (_g7961076_ _g7981080_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g7951299_ _hd791_)))))))
                            (_recur788_
                             _hd783_
                             _tgt388_
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _fender784_
                                         (cons _body785_
                                               (cons _E786_ '())))))))))
                   (let ((_generate-clause393_
                          (lambda (_hd1303_ _E1305_)
                            (let ((_g13091336_
                                   (lambda (_g13101332_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g13101332_))))
                              (let ((_g13081347_
                                     (lambda (_g13101340_)
                                       ((lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx233_
                                           _hd1303_))))))
                                (let ((_g13071405_
                                       (lambda (_g13101351_)
                                         (if (gx#stx-pair? _g13101351_)
                                             (let ((_e13221354_
                                                    (gx#syntax-e _g13101351_)))
                                               (let ((_hd13231358_
                                                      (##car _e13221354_))
                                                     (_tl13241361_
                                                      (##cdr _e13221354_)))
                                                 (if (gx#stx-pair?
                                                      _tl13241361_)
                                                     (let ((_e13251364_
                                                            (gx#syntax-e
                                                             _tl13241361_)))
                                                       (let ((_hd13261368_
                                                              (##car _e13251364_))
                                                             (_tl13271371_
                                                              (##cdr _e13251364_)))
                                                         (if (gx#stx-pair?
                                                              _tl13271371_)
                                                             (let ((_e13281374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl13271371_)))
                       (let ((_hd13291378_ (##car _e13281374_))
                             (_tl13301381_ (##cdr _e13281374_)))
                         (if (gx#stx-null? _tl13301381_)
                             ((lambda (_L1384_ _L1386_ _L1387_)
                                (_generate1395_
                                 _hd1303_
                                 _L1387_
                                 _L1386_
                                 _L1384_
                                 _E1305_))
                              _hd13291378_
                              _hd13261368_
                              _hd13231358_)
                             (_g13081347_ _g13101351_))))
                     (_g13081347_ _g13101351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g13081347_
                                                      _g13101351_))))
                                             (_g13081347_ _g13101351_)))))
                                  (let ((_g13061447_
                                         (lambda (_g13101409_)
                                           (if (gx#stx-pair? _g13101409_)
                                               (let ((_e13131412_
                                                      (gx#syntax-e
                                                       _g13101409_)))
                                                 (let ((_hd13141416_
                                                        (##car _e13131412_))
                                                       (_tl13151419_
                                                        (##cdr _e13131412_)))
                                                   (if (gx#stx-pair?
                                                        _tl13151419_)
                                                       (let ((_e13161422_
                                                              (gx#syntax-e
                                                               _tl13151419_)))
                                                         (let ((_hd13171426_
                                                                (##car _e13161422_))
                                                               (_tl13181429_
                                                                (##cdr _e13161422_)))
                                                           (if (gx#stx-null?
                                                                _tl13181429_)
                                                               ((lambda (_L1432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1434_)
                          (_generate1395_
                           _hd1303_
                           _L1434_
                           '#t
                           _L1432_
                           _E1305_))
                        _hd13171426_
                        _hd13141416_)
                       (_g13071405_ _g13101409_))))
               (_g13071405_ _g13101409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g13071405_ _g13101409_)))))
                                    (_g13061447_ _hd1303_))))))))
                     (let ((_generate-clauses396_
                            (lambda (_clauses519_)
                              ((letrec ((_lp522_ (lambda (_rest525_
                                                          _E527_
                                                          _r528_)
                                                   (let ((_g531543_
                                                          (lambda (_g532539_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g532539_))))
                                                     (let ((_g530591_
                                                            (lambda (_g532547_)
                                                              ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g554562_
                                (lambda (_g555558_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g555558_))))
                           (let ((_g553587_
                                  (lambda (_g555566_)
                                    ((lambda (_L569_)
                                       (let ()
                                         (cons (cons _E527_
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
                                                        (cons _L569_ '()))))
                                      '())))
                    (gx#stx-source _stx233_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _r528_)))
                                     _g555566_))))
                             (_g553587_ _tgt388_))))))))
               (let ((_g529777_
                      (lambda (_g532595_)
                        (if (gx#stx-pair? _g532595_)
                            (let ((_e535598_ (gx#syntax-e _g532595_)))
                              (let ((_hd536602_ (##car _e535598_))
                                    (_tl537605_ (##cdr _e535598_)))
                                ((lambda (_L608_ _L610_)
                                   (let ((_g622633_
                                          (lambda (_g623629_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g623629_))))
                                     (let ((_g621745_
                                            (lambda (_g623637_)
                                              ((lambda ()
                                                 (let ((_g644652_
                                                        (lambda (_g645648_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g645648_))))
                                                   (let ((_g643741_
                                                          (lambda (_g645656_)
                                                            ((lambda (_L659_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g675683_
                                (lambda (_g676679_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g676679_))))
                           (let ((_g674737_
                                  (lambda (_g676687_)
                                    ((lambda (_L690_)
                                       (let ()
                                         (let ((_g703711_
                                                (lambda (_g704707_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g704707_))))
                                           (let ((_g702733_
                                                  (lambda (_g704715_)
                                                    ((lambda (_L718_)
                                                       (let ()
                                                         (let ()
                                                           (_lp522_ _L608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L659_
                            (cons (cons _E527_ (cons _L718_ '())) _r528_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g704715_))))
                                             (_g702733_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L690_ '())))
                                               (gx#stx-source _L610_)))))))
                                     _g676687_))))
                             (_g674737_
                              (_generate-clause393_
                               _L610_
                               (cons _L659_ '())))))))
                     _g645656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g643741_
                                                      (gx#genident 'E)))))))))
                                       (let ((_g620773_
                                              (lambda (_g623749_)
                                                (if (gx#stx-pair? _g623749_)
                                                    (let ((_e625752_
                                                           (gx#syntax-e
                                                            _g623749_)))
                                                      (let ((_hd626756_
                                                             (##car _e625752_))
                                                            (_tl627759_
                                                             (##cdr _e625752_)))
                                                        (if (gx#identifier?
                                                             _hd626756_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gx[1]#_g2264_|
                         _hd626756_)
                        ((lambda (_L762_)
                           (if (gx#stx-null? _L608_)
                               (if (if (gx#stx-list? _L762_)
                                       (not (gx#stx-null? _L762_))
                                       '#f)
                                   (cons (cons _E527_
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin) _L762_)
                                '())))
              (gx#stx-source _L610_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _r528_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx233_
                                    _L610_))
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; misplaced else"
                                _stx233_
                                _L610_)))
                         _tl627759_)
                        (_g621745_ _g623749_))
                    (_g621745_ _g623749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g621745_ _g623749_)))))
                                         (_g620773_ _L610_)))))
                                 _tl537605_
                                 _hd536602_)))
                            (_g530591_ _g532595_)))))
                 (_g529777_ _rest525_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp522_)
                               _clauses519_
                               (gx#genident 'E)
                               '()))))
                       (let ((_bind398_ (_generate-clauses396_ _clauses391_)))
                         (let ((_g401418_
                                (lambda (_g402414_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g402414_))))
                           (let ((_g400515_
                                  (lambda (_g402422_)
                                    (if (gx#stx-pair/null? _g402422_)
                                        (if (fx>= (gx#stx-length _g402422_) '0)
                                            (let ((_g2262_ (gx#syntax-split-splice
                                                            _g402422_
                                                            '0)))
                                              (begin
                                                (let ((_g2263_ (values-count
                                                                _g2262_)))
                                                  (if (not (fx= _g2263_ 2))
                                                      (error "Context expects 2 values"
                                                             _g2263_)))
                                                (let ((_target404425_
                                                       (values-ref _g2262_ 0))
                                                      (_tl406428_
                                                       (values-ref _g2262_ 1)))
                                                  (if (gx#stx-null? _tl406428_)
                                                      (letrec ((_loop407431_
                                                                (lambda (_hd405435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bind-try411438_)
                          (if (gx#stx-pair? _hd405435_)
                              (let ((_e408441_ (gx#syntax-e _hd405435_)))
                                (let ((_lp-hd409445_ (##car _e408441_))
                                      (_lp-tl410448_ (##cdr _e408441_)))
                                  (_loop407431_
                                   _lp-tl410448_
                                   (cons _lp-hd409445_ _bind-try411438_))))
                              (let ((_bind-try412451_
                                     (reverse _bind-try411438_)))
                                ((lambda (_L455_)
                                   (let ()
                                     (let ((_g473481_
                                            (lambda (_g474477_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g474477_))))
                                       (let ((_g472511_
                                              (lambda (_g474485_)
                                                ((lambda (_L488_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g502505_ _g503508_)
                                      (cons _g502505_ _g503508_))
                                    '()
                                    _L455_))
                           (cons (cons _L488_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g474485_))))
                                         (_g472511_ (car (last _bind398_)))))))
                                 _bind-try412451_))))))
                (_loop407431_ _target404425_ '()))
              (_g401418_ _g402422_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g401418_ _g402422_))
                                        (_g401418_ _g402422_)))))
                             (_g400515_ _bind398_))))))))))
          (let ((_g239258_
                 (lambda (_g240254_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g240254_))))
            (let ((_g238384_
                   (lambda (_g240262_)
                     (if (gx#stx-pair? _g240262_)
                         (let ((_e244265_ (gx#syntax-e _g240262_)))
                           (let ((_hd245269_ (##car _e244265_))
                                 (_tl246272_ (##cdr _e244265_)))
                             (if (gx#stx-pair? _tl246272_)
                                 (let ((_e247275_ (gx#syntax-e _tl246272_)))
                                   (let ((_hd248279_ (##car _e247275_))
                                         (_tl249282_ (##cdr _e247275_)))
                                     (if (gx#stx-pair? _tl249282_)
                                         (let ((_e250285_
                                                (gx#syntax-e _tl249282_)))
                                           (let ((_hd251289_ (##car _e250285_))
                                                 (_tl252292_
                                                  (##cdr _e250285_)))
                                             ((lambda (_L295_ _L297_ _L298_)
                                                (if (if (gx#identifier-list?
                                                         _L297_)
                                                        (gx#stx-list? _L295_)
                                                        '#f)
                                                    (let ((_g319327_
                                                           (lambda (_g320323_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g320323_))))
                                                      (let ((_g318380_
                                                             (lambda (_g320331_)
                                                               ((lambda (_L334_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g346354_
                                   (lambda (_g347350_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g347350_))))
                              (let ((_g345376_
                                     (lambda (_g347358_)
                                       ((lambda (_L361_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L298_ '()))
                        '())
                  (cons _L361_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g347358_))))
                                (_g345376_
                                 (_generate236_
                                  _L334_
                                  (gx#syntax->list _L297_)
                                  _L295_))))))
                        _g320331_))))
                (_g318380_ (gx#genident 'e))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g239258_ _g240262_)))
                                              _tl252292_
                                              _hd251289_
                                              _hd248279_)))
                                         (_g239258_ _g240262_))))
                                 (_g239258_ _g240262_))))
                         (_g239258_ _g240262_)))))
              (_g238384_ _stx233_))))))))
