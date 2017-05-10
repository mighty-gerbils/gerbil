(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g1450_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g1451_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g1454_| (gx#core-quote-syntax 'else))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g1450_|))
    (define |gx[:0:]#AST|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g1451_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx231_)
        (let ((_generate234_
               (lambda (_tgt386_ _kws388_ _clauses389_)
                 (let ((_generate1393_
                        (lambda (_where779_
                                 _hd781_
                                 _fender782_
                                 _body783_
                                 _E784_)
                          (letrec ((_recur786_
                                    (lambda (_hd789_ _tgt791_ _K792_)
                                      (let ((_g795807_
                                             (lambda (_g796803_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g796803_))))
                                        (let ((_g7941074_
                                               (lambda (_g796811_)
                                                 ((lambda ()
                                                    (if (gx#identifier?
                                                         _hd789_)
                                                        (if (gx#underscore?
                                                             _hd789_)
                                                            _K792_
                                                            (if (find (lambda (_g817819_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#bound-identifier=? _g817819_ _hd789_))
                              _kws388_)
                        (let ((_g823838_
                               (lambda (_g824834_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g824834_))))
                          (let ((_g822889_
                                 (lambda (_g824842_)
                                   (if (gx#stx-pair? _g824842_)
                                       (let ((_e827845_
                                              (gx#syntax-e _g824842_)))
                                         (let ((_hd828849_ (##car _e827845_))
                                               (_tl829852_ (##cdr _e827845_)))
                                           (if (gx#stx-pair? _tl829852_)
                                               (let ((_e830855_
                                                      (gx#syntax-e
                                                       _tl829852_)))
                                                 (let ((_hd831859_
                                                        (##car _e830855_))
                                                       (_tl832862_
                                                        (##cdr _e830855_)))
                                                   (if (gx#stx-null?
                                                        _tl832862_)
                                                       ((lambda (_L865_ _L867_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _L867_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _L867_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L865_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _K792_ (cons _E784_ '()))))))
                _hd831859_
                _hd828849_)
               (_g823838_ _g824842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g823838_ _g824842_))))
                                       (_g823838_ _g824842_)))))
                            (_g822889_ (list _tgt791_ _hd789_))))
                        (let ((_g893908_
                               (lambda (_g894904_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g894904_))))
                          (let ((_g892952_
                                 (lambda (_g894912_)
                                   (if (gx#stx-pair? _g894912_)
                                       (let ((_e897915_
                                              (gx#syntax-e _g894912_)))
                                         (let ((_hd898919_ (##car _e897915_))
                                               (_tl899922_ (##cdr _e897915_)))
                                           (if (gx#stx-pair? _tl899922_)
                                               (let ((_e900925_
                                                      (gx#syntax-e
                                                       _tl899922_)))
                                                 (let ((_hd901929_
                                                        (##car _e900925_))
                                                       (_tl902932_
                                                        (##cdr _e900925_)))
                                                   (if (gx#stx-null?
                                                        _tl902932_)
                                                       ((lambda (_L935_ _L937_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L935_ (cons _L937_ '())) '())
                                (cons _K792_ '())))))
                _hd901929_
                _hd898919_)
               (_g893908_ _g894912_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g893908_ _g894912_))))
                                       (_g893908_ _g894912_)))))
                            (_g892952_ (list _tgt791_ _hd789_))))))
                (if (gx#stx-null? _hd789_)
                    (let ((_g956964_
                           (lambda (_g957960_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g957960_))))
                      (let ((_g955982_
                             (lambda (_g957968_)
                               ((lambda (_L971_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _L971_ '()))
                                                (cons _K792_
                                                      (cons _E784_ '()))))))
                                _g957968_))))
                        (_g955982_ _tgt791_)))
                    (if (gx#stx-datum? _hd789_)
                        (let ((_g9861005_
                               (lambda (_g9871001_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g9871001_))))
                          (let ((_g9851063_
                                 (lambda (_g9871009_)
                                   (if (gx#stx-pair? _g9871009_)
                                       (let ((_e9911012_
                                              (gx#syntax-e _g9871009_)))
                                         (let ((_hd9921016_ (##car _e9911012_))
                                               (_tl9931019_
                                                (##cdr _e9911012_)))
                                           (if (gx#stx-pair? _tl9931019_)
                                               (let ((_e9941022_
                                                      (gx#syntax-e
                                                       _tl9931019_)))
                                                 (let ((_hd9951026_
                                                        (##car _e9941022_))
                                                       (_tl9961029_
                                                        (##cdr _e9941022_)))
                                                   (if (gx#stx-pair?
                                                        _tl9961029_)
                                                       (let ((_e9971032_
                                                              (gx#syntax-e
                                                               _tl9961029_)))
                                                         (let ((_hd9981036_
                                                                (##car _e9971032_))
                                                               (_tl9991039_
                                                                (##cdr _e9971032_)))
                                                           (if (gx#stx-null?
                                                                _tl9991039_)
                                                               ((lambda (_L1042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1044_
                                 _L1045_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L1042_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _L1045_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L1044_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _K792_ (cons _E784_ '()))))))
                        _hd9981036_
                        _hd9951026_
                        _hd9921016_)
                       (_g9861005_ _g9871009_))))
               (_g9861005_ _g9871009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9861005_ _g9871009_))))
                                       (_g9861005_ _g9871009_)))))
                            (_g9851063_
                             (list _tgt791_
                                   _hd789_
                                   (let ((_e1067_ (gx#stx-e _hd789_)))
                                     (if (let ((_$e1070_ (keyword? _e1067_)))
                                           (if _$e1070_
                                               _$e1070_
                                               (immediate? _e1067_)))
                                         (gx#datum->syntax '#f 'eq?)
                                         (if (number? _e1067_)
                                             (gx#datum->syntax '#f 'eqv?)
                                             (gx#datum->syntax
                                              '#f
                                              'equal?))))))))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx231_
                         _where779_
                         _hd789_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g7931297_
                                                 (lambda (_g7961078_)
                                                   (if (gx#stx-pair?
                                                        _g7961078_)
                                                       (let ((_e7991081_
                                                              (gx#syntax-e
                                                               _g7961078_)))
                                                         (let ((_hd8001085_
                                                                (##car _e7991081_))
                                                               (_tl8011088_
                                                                (##cdr _e7991081_)))
                                                           ((lambda (_L1091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1093_)
                      (let ((_g11041112_
                             (lambda (_g11051108_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g11051108_))))
                        (let ((_g11031293_
                               (lambda (_g11051116_)
                                 ((lambda (_L1119_)
                                    (let ()
                                      (let ((_g11311139_
                                             (lambda (_g11321135_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g11321135_))))
                                        (let ((_g11301289_
                                               (lambda (_g11321143_)
                                                 ((lambda (_L1146_)
                                                    (let ()
                                                      (let ((_g11591167_
                                                             (lambda (_g11601163_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g11601163_))))
                                                        (let ((_g11581285_
                                                               (lambda (_g11601171_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L1174_)
                            (let ()
                              (let ((_g11871195_
                                     (lambda (_g11881191_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g11881191_))))
                                (let ((_g11861281_
                                       (lambda (_g11881199_)
                                         ((lambda (_L1202_)
                                            (let ()
                                              (let ((_g12151223_
                                                     (lambda (_g12161219_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g12161219_))))
                                                (let ((_g12141277_
                                                       (lambda (_g12161227_)
                                                         ((lambda (_L1230_)
                                                            (let ()
                                                              (let ((_g12431251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g12441247_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g12441247_))))
                        (let ((_g12421273_
                               (lambda (_g12441255_)
                                 ((lambda (_L1258_)
                                    (let ()
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-pair?)
                                                          (cons _L1119_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (cons _L1146_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax-e)
                                                      (cons _L1119_ '()))
                                                '()))
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L1174_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##car)
                                (cons _L1146_ '()))
                          '()))
              (cons (cons _L1202_
                          (cons (cons (gx#datum->syntax '#f '##cdr)
                                      (cons _L1146_ '()))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L1230_ '())))
                                    '())))
                  (cons _L1258_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g12441255_))))
                          (_g12421273_ _E784_)))))
                  _g12161227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g12141277_
                                                   (_recur786_
                                                    _L1093_
                                                    _L1174_
                                                    (_recur786_
                                                     _L1091_
                                                     _L1202_
                                                     _K792_)))))))
                                          _g11881199_))))
                                  (_g11861281_ (gx#genident 'tl))))))
                          _g11601171_))))
                  (_g11581285_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g11321143_))))
                                          (_g11301289_ (gx#genident 'e))))))
                                  _g11051116_))))
                          (_g11031293_ _tgt791_))))
                    _tl8011088_
                    _hd8001085_)))
               (_g7941074_ _g7961078_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g7931297_ _hd789_)))))))
                            (_recur786_
                             _hd781_
                             _tgt386_
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _fender782_
                                         (cons _body783_
                                               (cons _E784_ '())))))))))
                   (let ((_generate-clause391_
                          (lambda (_hd1301_ _E1303_)
                            (let ((_g13071334_
                                   (lambda (_g13081330_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g13081330_))))
                              (let ((_g13061345_
                                     (lambda (_g13081338_)
                                       ((lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx231_
                                           _hd1301_))))))
                                (let ((_g13051403_
                                       (lambda (_g13081349_)
                                         (if (gx#stx-pair? _g13081349_)
                                             (let ((_e13201352_
                                                    (gx#syntax-e _g13081349_)))
                                               (let ((_hd13211356_
                                                      (##car _e13201352_))
                                                     (_tl13221359_
                                                      (##cdr _e13201352_)))
                                                 (if (gx#stx-pair?
                                                      _tl13221359_)
                                                     (let ((_e13231362_
                                                            (gx#syntax-e
                                                             _tl13221359_)))
                                                       (let ((_hd13241366_
                                                              (##car _e13231362_))
                                                             (_tl13251369_
                                                              (##cdr _e13231362_)))
                                                         (if (gx#stx-pair?
                                                              _tl13251369_)
                                                             (let ((_e13261372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl13251369_)))
                       (let ((_hd13271376_ (##car _e13261372_))
                             (_tl13281379_ (##cdr _e13261372_)))
                         (if (gx#stx-null? _tl13281379_)
                             ((lambda (_L1382_ _L1384_ _L1385_)
                                (_generate1393_
                                 _hd1301_
                                 _L1385_
                                 _L1384_
                                 _L1382_
                                 _E1303_))
                              _hd13271376_
                              _hd13241366_
                              _hd13211356_)
                             (_g13061345_ _g13081349_))))
                     (_g13061345_ _g13081349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g13061345_
                                                      _g13081349_))))
                                             (_g13061345_ _g13081349_)))))
                                  (let ((_g13041445_
                                         (lambda (_g13081407_)
                                           (if (gx#stx-pair? _g13081407_)
                                               (let ((_e13111410_
                                                      (gx#syntax-e
                                                       _g13081407_)))
                                                 (let ((_hd13121414_
                                                        (##car _e13111410_))
                                                       (_tl13131417_
                                                        (##cdr _e13111410_)))
                                                   (if (gx#stx-pair?
                                                        _tl13131417_)
                                                       (let ((_e13141420_
                                                              (gx#syntax-e
                                                               _tl13131417_)))
                                                         (let ((_hd13151424_
                                                                (##car _e13141420_))
                                                               (_tl13161427_
                                                                (##cdr _e13141420_)))
                                                           (if (gx#stx-null?
                                                                _tl13161427_)
                                                               ((lambda (_L1430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1432_)
                          (_generate1393_
                           _hd1301_
                           _L1432_
                           '#t
                           _L1430_
                           _E1303_))
                        _hd13151424_
                        _hd13121414_)
                       (_g13051403_ _g13081407_))))
               (_g13051403_ _g13081407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g13051403_ _g13081407_)))))
                                    (_g13041445_ _hd1301_))))))))
                     (let ((_generate-clauses394_
                            (lambda (_clauses517_)
                              ((letrec ((_lp520_ (lambda (_rest523_
                                                          _E525_
                                                          _r526_)
                                                   (let ((_g529541_
                                                          (lambda (_g530537_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g530537_))))
                                                     (let ((_g528589_
                                                            (lambda (_g530545_)
                                                              ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g552560_
                                (lambda (_g553556_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g553556_))))
                           (let ((_g551585_
                                  (lambda (_g553564_)
                                    ((lambda (_L567_)
                                       (let ()
                                         (cons (cons _E525_
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
                                                        (cons _L567_ '()))))
                                      '())))
                    (gx#stx-source _stx231_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _r526_)))
                                     _g553564_))))
                             (_g551585_ _tgt386_))))))))
               (let ((_g527775_
                      (lambda (_g530593_)
                        (if (gx#stx-pair? _g530593_)
                            (let ((_e533596_ (gx#syntax-e _g530593_)))
                              (let ((_hd534600_ (##car _e533596_))
                                    (_tl535603_ (##cdr _e533596_)))
                                ((lambda (_L606_ _L608_)
                                   (let ((_g620631_
                                          (lambda (_g621627_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g621627_))))
                                     (let ((_g619743_
                                            (lambda (_g621635_)
                                              ((lambda ()
                                                 (let ((_g642650_
                                                        (lambda (_g643646_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g643646_))))
                                                   (let ((_g641739_
                                                          (lambda (_g643654_)
                                                            ((lambda (_L657_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g673681_
                                (lambda (_g674677_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g674677_))))
                           (let ((_g672735_
                                  (lambda (_g674685_)
                                    ((lambda (_L688_)
                                       (let ()
                                         (let ((_g701709_
                                                (lambda (_g702705_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g702705_))))
                                           (let ((_g700731_
                                                  (lambda (_g702713_)
                                                    ((lambda (_L716_)
                                                       (let ()
                                                         (let ()
                                                           (_lp520_ _L606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L657_
                            (cons (cons _E525_ (cons _L716_ '())) _r526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g702713_))))
                                             (_g700731_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L688_ '())))
                                               (gx#stx-source _L608_)))))))
                                     _g674685_))))
                             (_g672735_
                              (_generate-clause391_
                               _L608_
                               (cons _L657_ '())))))))
                     _g643654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g641739_
                                                      (gx#genident 'E)))))))))
                                       (let ((_g618771_
                                              (lambda (_g621747_)
                                                (if (gx#stx-pair? _g621747_)
                                                    (let ((_e623750_
                                                           (gx#syntax-e
                                                            _g621747_)))
                                                      (let ((_hd624754_
                                                             (##car _e623750_))
                                                            (_tl625757_
                                                             (##cdr _e623750_)))
                                                        (if (gx#identifier?
                                                             _hd624754_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gx[1]#_g1454_|
                         _hd624754_)
                        ((lambda (_L760_)
                           (if (gx#stx-null? _L606_)
                               (if (if (gx#stx-list? _L760_)
                                       (not (gx#stx-null? _L760_))
                                       '#f)
                                   (cons (cons _E525_
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin) _L760_)
                                '())))
              (gx#stx-source _L608_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _r526_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx231_
                                    _L608_))
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; misplaced else"
                                _stx231_
                                _L608_)))
                         _tl625757_)
                        (_g619743_ _g621747_))
                    (_g619743_ _g621747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g619743_ _g621747_)))))
                                         (_g618771_ _L608_)))))
                                 _tl535603_
                                 _hd534600_)))
                            (_g528589_ _g530593_)))))
                 (_g527775_ _rest523_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp520_)
                               _clauses517_
                               (gx#genident 'E)
                               '()))))
                       (let ((_bind396_ (_generate-clauses394_ _clauses389_)))
                         (let ((_g399416_
                                (lambda (_g400412_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g400412_))))
                           (let ((_g398513_
                                  (lambda (_g400420_)
                                    (if (gx#stx-pair/null? _g400420_)
                                        (if (fx>= (gx#stx-length _g400420_) '0)
                                            (let ((_g1452_ (gx#syntax-split-splice
                                                            _g400420_
                                                            '0)))
                                              (begin
                                                (let ((_g1453_ (values-count
                                                                _g1452_)))
                                                  (if (not (fx= _g1453_ 2))
                                                      (error "Context expects 2 values"
                                                             _g1453_)))
                                                (let ((_target402423_
                                                       (values-ref _g1452_ 0))
                                                      (_tl404426_
                                                       (values-ref _g1452_ 1)))
                                                  (if (gx#stx-null? _tl404426_)
                                                      (letrec ((_loop405429_
                                                                (lambda (_hd403433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bind-try409436_)
                          (if (gx#stx-pair? _hd403433_)
                              (let ((_e406439_ (gx#syntax-e _hd403433_)))
                                (let ((_lp-hd407443_ (##car _e406439_))
                                      (_lp-tl408446_ (##cdr _e406439_)))
                                  (_loop405429_
                                   _lp-tl408446_
                                   (cons _lp-hd407443_ _bind-try409436_))))
                              (let ((_bind-try410449_
                                     (reverse _bind-try409436_)))
                                ((lambda (_L453_)
                                   (let ()
                                     (let ((_g471479_
                                            (lambda (_g472475_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g472475_))))
                                       (let ((_g470509_
                                              (lambda (_g472483_)
                                                ((lambda (_L486_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g500503_ _g501506_)
                                      (cons _g500503_ _g501506_))
                                    '()
                                    _L453_))
                           (cons (cons _L486_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g472483_))))
                                         (_g470509_ (car (last _bind396_)))))))
                                 _bind-try410449_))))))
                (_loop405429_ _target402423_ '()))
              (_g399416_ _g400420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g399416_ _g400420_))
                                        (_g399416_ _g400420_)))))
                             (_g398513_ _bind396_))))))))))
          (let ((_g237256_
                 (lambda (_g238252_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g238252_))))
            (let ((_g236382_
                   (lambda (_g238260_)
                     (if (gx#stx-pair? _g238260_)
                         (let ((_e242263_ (gx#syntax-e _g238260_)))
                           (let ((_hd243267_ (##car _e242263_))
                                 (_tl244270_ (##cdr _e242263_)))
                             (if (gx#stx-pair? _tl244270_)
                                 (let ((_e245273_ (gx#syntax-e _tl244270_)))
                                   (let ((_hd246277_ (##car _e245273_))
                                         (_tl247280_ (##cdr _e245273_)))
                                     (if (gx#stx-pair? _tl247280_)
                                         (let ((_e248283_
                                                (gx#syntax-e _tl247280_)))
                                           (let ((_hd249287_ (##car _e248283_))
                                                 (_tl250290_
                                                  (##cdr _e248283_)))
                                             ((lambda (_L293_ _L295_ _L296_)
                                                (if (if (gx#identifier-list?
                                                         _L295_)
                                                        (gx#stx-list? _L293_)
                                                        '#f)
                                                    (let ((_g317325_
                                                           (lambda (_g318321_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g318321_))))
                                                      (let ((_g316378_
                                                             (lambda (_g318329_)
                                                               ((lambda (_L332_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g344352_
                                   (lambda (_g345348_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g345348_))))
                              (let ((_g343374_
                                     (lambda (_g345356_)
                                       ((lambda (_L359_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L296_ '()))
                        '())
                  (cons _L359_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g345356_))))
                                (_g343374_
                                 (_generate234_
                                  _L332_
                                  (gx#syntax->list _L295_)
                                  _L293_))))))
                        _g318329_))))
                (_g316378_ (gx#genident 'e))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g237256_ _g238260_)))
                                              _tl250290_
                                              _hd249287_
                                              _hd246277_)))
                                         (_g237256_ _g238260_))))
                                 (_g237256_ _g238260_))))
                         (_g237256_ _g238260_)))))
              (_g236382_ _stx231_))))))))
