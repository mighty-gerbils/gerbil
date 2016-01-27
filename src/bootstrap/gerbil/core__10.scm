(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g47041_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g47042_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g47045_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g47046_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g47047_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g47048_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g47049_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g47050_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g47051_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g47052_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g47053_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g47054_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g47055_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g47056_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g47057_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g47070_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g47071_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g47072_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g47073_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g47090_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g47091_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g47092_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g47093_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g47096_| (gx#core-quote-syntax 'and))
  (begin
    (define |gerbil/core::<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core::<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core::<match>[1]#match-macro::t|))
    (define |gerbil/core::<match>[1]#make-match-macro|
      (lambda _$args42272_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args42272_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx42269_)
        (if (gx#identifier? _stx42269_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx42269_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda4065142255_
             (lambda (_stx40653_ _match-stx40655_)
               (let ((_parse-qq40663_
                      (lambda (_hd40669_)
                        (let ((_g4067140678_
                               (lambda (_g4067240674_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g4067240674_))))
                          (_g4067140678_ _hd40669_)))))
                 (let ((_parse-error40664_
                        (lambda (_hd40666_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx40655_
                                     (cons _match-stx40655_
                                           (cons _stx40653_
                                                 (cons _hd40666_ '())))
                                     (cons _stx40653_
                                           (cons _hd40666_ '())))))))
                   (letrec ((_parse140657_
                             (lambda (_hd41004_)
                               (let ((_g4102941160_
                                      (lambda (_g4103041156_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g4103041156_))))
                                 (let ((_g4102841171_
                                        (lambda (_g4103041164_)
                                          ((lambda ()
                                             (_parse-error40664_
                                              _hd41004_))))))
                                   (let ((_g4102741189_
                                          (lambda (_g4103041175_)
                                            ((lambda (_L41178_)
                                               (if (gx#stx-datum? _L41178_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L41178_)
                                                               '()))
                                                   (_g4102841171_
                                                    _g4103041175_)))
                                             _g4103041175_))))
                                     (let ((_g4102641205_
                                            (lambda (_g4103041193_)
                                              ((lambda (_L41196_)
                                                 (if (if (gx#identifier?
                                                          _L41196_)
                                                         (not (gx#ellipsis?
                                                               _L41196_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L41196_ '()))
                                                     (_g4102741189_
                                                      _g4103041193_)))
                                               _g4103041193_))))
                                       (let ((_g4102541221_
                                              (lambda (_g4103041209_)
                                                ((lambda (_L41212_)
                                                   (if (gx#underscore?
                                                        _L41212_)
                                                       (cons 'any: '())
                                                       (_g4102641205_
                                                        _g4103041209_)))
                                                 _g4103041209_))))
                                         (let ((_g4102441253_
                                                (lambda (_g4103041225_)
                                                  (if (gx#stx-pair?
                                                       _g4103041225_)
                                                      (let ((_e4114941228_
                                                             (gx#syntax-e
                                                              _g4103041225_)))
                                                        (let ((_hd4115041232_
                                                               (##car _e4114941228_))
                                                              (_tl4115141235_
                                                               (##cdr _e4114941228_)))
                                                          ((lambda (_L41238_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L41238_)
                         (_parse140657_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L41238_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd41004_)
                            (let ((_$e41249_ (gx#stx-source _hd41004_)))
                              (if _$e41249_
                                  _$e41249_
                                  (gx#stx-source _stx40653_))))))
                         (_g4102541221_ _g4103041225_)))
                   _hd4115041232_)))
              (_g4102541221_ _g4103041225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g4102341293_
                                                  (lambda (_g4103041257_)
                                                    (if (gx#stx-pair?
                                                         _g4103041257_)
                                                        (let ((_e4114241260_
                                                               (gx#syntax-e
                                                                _g4103041257_)))
                                                          (let ((_hd4114341264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e4114241260_))
                        (_tl4114441267_ (##cdr _e4114241260_)))
                    (if (gx#identifier? _hd4114341264_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g47041_|
                             _hd4114341264_)
                            (if (gx#stx-pair? _tl4114441267_)
                                (let ((_e4114541270_
                                       (gx#syntax-e _tl4114441267_)))
                                  (let ((_hd4114641274_ (##car _e4114541270_))
                                        (_tl4114741277_ (##cdr _e4114541270_)))
                                    (if (gx#stx-null? _tl4114741277_)
                                        ((lambda (_L41280_)
                                           (_parse-qq40663_ _L41280_))
                                         _hd4114641274_)
                                        (_g4102441253_ _g4103041257_))))
                                (_g4102441253_ _g4103041257_))
                            (_g4102441253_ _g4103041257_))
                        (_g4102441253_ _g4103041257_))))
                (_g4102441253_ _g4103041257_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g4102241333_
                                                    (lambda (_g4103041297_)
                                                      (if (gx#stx-pair?
                                                           _g4103041297_)
                                                          (let ((_e4113541300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g4103041297_)))
                    (let ((_hd4113641304_ (##car _e4113541300_))
                          (_tl4113741307_ (##cdr _e4113541300_)))
                      (if (gx#identifier? _hd4113641304_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g47042_|
                               _hd4113641304_)
                              (if (gx#stx-pair? _tl4113741307_)
                                  (let ((_e4113841310_
                                         (gx#syntax-e _tl4113741307_)))
                                    (let ((_hd4113941314_
                                           (##car _e4113841310_))
                                          (_tl4114041317_
                                           (##cdr _e4113841310_)))
                                      (if (gx#stx-null? _tl4114041317_)
                                          ((lambda (_L41320_)
                                             (cons 'datum:
                                                   (cons (gx#stx-e _L41320_)
                                                         '())))
                                           _hd4113941314_)
                                          (_g4102341293_ _g4103041297_))))
                                  (_g4102341293_ _g4103041297_))
                              (_g4102341293_ _g4103041297_))
                          (_g4102341293_ _g4103041297_))))
                  (_g4102341293_ _g4103041297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g4102141383_
                                                      (lambda (_g4103041337_)
                                                        (if (gx#stx-pair?
                                                             _g4103041337_)
                                                            (let ((_e4112841340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g4103041337_)))
                      (let ((_hd4112941344_ (##car _e4112841340_))
                            (_tl4113041347_ (##cdr _e4112841340_)))
                        (if (gx#stx-pair? _tl4113041347_)
                            (let ((_e4113141350_ (gx#syntax-e _tl4113041347_)))
                              (let ((_hd4113241354_ (##car _e4113141350_))
                                    (_tl4113341357_ (##cdr _e4113141350_)))
                                (if (gx#stx-null? _tl4113341357_)
                                    ((lambda (_L41360_ _L41362_)
                                       (if (if (gx#identifier? _L41362_)
                                               (let ((_$e41375_
                                                      (gx#free-identifier=?
                                                       _L41362_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'eq?))))
                                                 (if _$e41375_
                                                     _$e41375_
                                                     (let ((_$e41379_
                                                            (gx#free-identifier=?
                                                             _L41362_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'eqv?))))
                                                       (if _$e41379_
                                                           _$e41379_
                                                           (gx#free-identifier=?
                                                            _L41362_
                                                            (gx#datum->syntax
                                                             '#f
                                                             'equal?))))))
                                               '#f)
                                           (cons '?:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'cut)
                                                             (cons _L41362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '<>)
                                 (cons _L41360_ '()))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g4102241333_ _g4103041337_)))
                                     _hd4113241354_
                                     _hd4112941344_)
                                    (_g4102241333_ _g4103041337_))))
                            (_g4102241333_ _g4103041337_))))
                    (_g4102241333_ _g4103041337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g4102041413_
                                                        (lambda (_g4103041387_)
                                                          (if (gx#stx-pair?
                                                               _g4103041387_)
                                                              (let ((_e4112341390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g4103041387_)))
                        (let ((_hd4112441394_ (##car _e4112341390_))
                              (_tl4112541397_ (##cdr _e4112341390_)))
                          ((lambda (_L41400_ _L41402_)
                             (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                  _L41402_)
                                 (cons 'class:
                                       (cons (gx#syntax-local-value _L41402_)
                                             (cons (_parse-class-body40662_
                                                    _L41400_)
                                                   '())))
                                 (_g4102141383_ _g4103041387_)))
                           _tl4112541397_
                           _hd4112441394_)))
                      (_g4102141383_ _g4103041387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g4101941443_
                                                          (lambda (_g4103041417_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g4103041417_)
                        (let ((_e4111841420_ (gx#syntax-e _g4103041417_)))
                          (let ((_hd4111941424_ (##car _e4111841420_))
                                (_tl4112041427_ (##cdr _e4111841420_)))
                            ((lambda (_L41430_ _L41432_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                    _L41432_)
                                   (cons 'struct:
                                         (cons (gx#syntax-local-value _L41432_)
                                               (cons (_parse-vector40660_
                                                      _L41430_)
                                                     '())))
                                   (_g4102041413_ _g4103041417_)))
                             _tl4112041427_
                             _hd4111941424_)))
                        (_g4102041413_ _g4103041417_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g4101841506_
                                                            (lambda (_g4103041447_)
                                                              (if (gx#stx-vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g4103041447_)
                          (let ((_e4110641450_
                                 (vector->list (gx#syntax-e _g4103041447_))))
                            (if (gx#stx-pair/null? _e4110641450_)
                                (if (fx>= (gx#stx-length _e4110641450_) '0)
                                    (let ((_g47043_
                                           (gx#syntax-split-splice
                                            _e4110641450_
                                            '0)))
                                      (begin
                                        (let ((_g47044_
                                               (values-count _g47043_)))
                                          (if (not (fx= _g47044_ 2))
                                              (error "Context expects 2 values"
                                                     _g47044_)))
                                        (let ((_target4110741454_
                                               (values-ref _g47043_ 0))
                                              (_tl4110941457_
                                               (values-ref _g47043_ 1)))
                                          (if (gx#stx-null? _tl4110941457_)
                                              (letrec ((_loop4111041460_
                                                        (lambda (_hd4110841464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body4111441467_)
                  (if (gx#stx-pair? _hd4110841464_)
                      (let ((_e4111141470_ (gx#syntax-e _hd4110841464_)))
                        (let ((_lp-hd4111241474_ (##car _e4111141470_))
                              (_lp-tl4111341477_ (##cdr _e4111141470_)))
                          (_loop4111041460_
                           _lp-tl4111341477_
                           (cons _lp-hd4111241474_ _body4111441467_))))
                      (let ((_body4111541480_ (reverse _body4111441467_)))
                        ((lambda (_L41484_)
                           (cons 'vector:
                                 (cons (_parse-vector40660_
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g4149741500_
                                                          _g4149841503_)
                                                   (cons _g4149741500_
                                                         _g4149841503_))
                                                 '()
                                                 _L41484_)))
                                       '())))
                         _body4111541480_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4111041460_
                                                 _target4110741454_
                                                 '()))
                                              (_g4101941443_ _g4103041447_)))))
                                    (_g4101941443_ _g4103041447_))
                                (_g4101941443_ _g4103041447_)))
                          (_g4101941443_ _g4103041447_)))))
               (let ((_g4101741534_
                      (lambda (_g4103041510_)
                        (if (gx#stx-pair? _g4103041510_)
                            (let ((_e4110241513_ (gx#syntax-e _g4103041510_)))
                              (let ((_hd4110341517_ (##car _e4110241513_))
                                    (_tl4110441520_ (##cdr _e4110241513_)))
                                (if (gx#identifier? _hd4110341517_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core::<match>[1]#_g47045_|
                                         _hd4110341517_)
                                        ((lambda (_L41523_)
                                           (cons 'vector:
                                                 (cons (_parse-vector40660_
                                                        _L41523_)
                                                       '())))
                                         _tl4110441520_)
                                        (_g4101841506_ _g4103041510_))
                                    (_g4101841506_ _g4103041510_))))
                            (_g4101841506_ _g4103041510_)))))
                 (let ((_g4101641562_
                        (lambda (_g4103041538_)
                          (if (gx#stx-pair? _g4103041538_)
                              (let ((_e4109841541_
                                     (gx#syntax-e _g4103041538_)))
                                (let ((_hd4109941545_ (##car _e4109841541_))
                                      (_tl4110041548_ (##cdr _e4109841541_)))
                                  (if (gx#identifier? _hd4109941545_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g47046_|
                                           _hd4109941545_)
                                          ((lambda (_L41551_)
                                             (cons 'values:
                                                   (cons (_parse-vector40660_
                                                          _L41551_)
                                                         '())))
                                           _tl4110041548_)
                                          (_g4101741534_ _g4103041538_))
                                      (_g4101741534_ _g4103041538_))))
                              (_g4101741534_ _g4103041538_)))))
                   (let ((_g4101541602_
                          (lambda (_g4103041566_)
                            (if (gx#stx-pair? _g4103041566_)
                                (let ((_e4109141569_
                                       (gx#syntax-e _g4103041566_)))
                                  (let ((_hd4109241573_ (##car _e4109141569_))
                                        (_tl4109341576_ (##cdr _e4109141569_)))
                                    (if (gx#identifier? _hd4109241573_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g47047_|
                                             _hd4109241573_)
                                            (if (gx#stx-pair? _tl4109341576_)
                                                (let ((_e4109441579_
                                                       (gx#syntax-e
                                                        _tl4109341576_)))
                                                  (let ((_hd4109541583_
                                                         (##car _e4109441579_))
                                                        (_tl4109641586_
                                                         (##cdr _e4109441579_)))
                                                    (if (gx#stx-null?
                                                         _tl4109641586_)
                                                        ((lambda (_L41589_)
                                                           (_parse140657_
                                                            _L41589_))
                                                         _hd4109541583_)
                                                        (_g4101641562_
                                                         _g4103041566_))))
                                                (_g4101641562_ _g4103041566_))
                                            (_g4101641562_ _g4103041566_))
                                        (_g4101641562_ _g4103041566_))))
                                (_g4101641562_ _g4103041566_)))))
                     (let ((_g4101441623_
                            (lambda (_g4103041606_)
                              (if (gx#stx-box? _g4103041606_)
                                  (let ((_e4108941609_
                                         (unbox (gx#syntax-e _g4103041606_))))
                                    ((lambda (_L41613_)
                                       (cons 'box:
                                             (cons (_parse140657_ _L41613_)
                                                   '())))
                                     _e4108941609_))
                                  (_g4101541602_ _g4103041606_)))))
                       (let ((_g4101341663_
                              (lambda (_g4103041627_)
                                (if (gx#stx-pair? _g4103041627_)
                                    (let ((_e4108241630_
                                           (gx#syntax-e _g4103041627_)))
                                      (let ((_hd4108341634_
                                             (##car _e4108241630_))
                                            (_tl4108441637_
                                             (##cdr _e4108241630_)))
                                        (if (gx#identifier? _hd4108341634_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g47048_|
                                                 _hd4108341634_)
                                                (if (gx#stx-pair?
                                                     _tl4108441637_)
                                                    (let ((_e4108541640_
                                                           (gx#syntax-e
                                                            _tl4108441637_)))
                                                      (let ((_hd4108641644_
                                                             (##car _e4108541640_))
                                                            (_tl4108741647_
                                                             (##cdr _e4108541640_)))
                                                        (if (gx#stx-null?
                                                             _tl4108741647_)
                                                            ((lambda (_L41650_)
                                                               (cons 'box:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_parse140657_ _L41650_) '())))
                     _hd4108641644_)
                    (_g4101441623_ _g4103041627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4101441623_
                                                     _g4103041627_))
                                                (_g4101441623_ _g4103041627_))
                                            (_g4101441623_ _g4103041627_))))
                                    (_g4101441623_ _g4103041627_)))))
                         (let ((_g4101241691_
                                (lambda (_g4103041667_)
                                  (if (gx#stx-pair? _g4103041667_)
                                      (let ((_e4107841670_
                                             (gx#syntax-e _g4103041667_)))
                                        (let ((_hd4107941674_
                                               (##car _e4107841670_))
                                              (_tl4108041677_
                                               (##cdr _e4107841670_)))
                                          (if (gx#identifier? _hd4107941674_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g47049_|
                                                   _hd4107941674_)
                                                  ((lambda (_L41680_)
                                                     (_parse-list40659_
                                                      _L41680_))
                                                   _tl4108041677_)
                                                  (_g4101341663_
                                                   _g4103041667_))
                                              (_g4101341663_ _g4103041667_))))
                                      (_g4101341663_ _g4103041667_)))))
                           (let ((_g4101141747_
                                  (lambda (_g4103041695_)
                                    (if (gx#stx-pair? _g4103041695_)
                                        (let ((_e4106841698_
                                               (gx#syntax-e _g4103041695_)))
                                          (let ((_hd4106941702_
                                                 (##car _e4106841698_))
                                                (_tl4107041705_
                                                 (##cdr _e4106841698_)))
                                            (if (gx#identifier? _hd4106941702_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g47050_|
                                                     _hd4106941702_)
                                                    (if (gx#stx-pair?
                                                         _tl4107041705_)
                                                        (let ((_e4107141708_
                                                               (gx#syntax-e
                                                                _tl4107041705_)))
                                                          (let ((_hd4107241712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e4107141708_))
                        (_tl4107341715_ (##cdr _e4107141708_)))
                    (if (gx#stx-pair? _tl4107341715_)
                        (let ((_e4107441718_ (gx#syntax-e _tl4107341715_)))
                          (let ((_hd4107541722_ (##car _e4107441718_))
                                (_tl4107641725_ (##cdr _e4107441718_)))
                            ((lambda (_L41728_ _L41730_ _L41731_)
                               (if (gx#stx-null? _L41728_)
                                   (cons 'cons:
                                         (cons (_parse140657_ _L41731_)
                                               (cons (_parse140657_ _L41730_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse140657_ _L41731_)
                                               (cons (_parse140657_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L41730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L41728_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             _tl4107641725_
                             _hd4107541722_
                             _hd4107241712_)))
                        (_g4101241691_ _g4103041695_))))
                (_g4101241691_ _g4103041695_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4101241691_
                                                     _g4103041695_))
                                                (_g4101241691_
                                                 _g4103041695_))))
                                        (_g4101241691_ _g4103041695_)))))
                             (let ((_g4101041801_
                                    (lambda (_g4103041751_)
                                      (if (gx#stx-pair? _g4103041751_)
                                          (let ((_e4105641754_
                                                 (gx#syntax-e _g4103041751_)))
                                            (let ((_hd4105741758_
                                                   (##car _e4105641754_))
                                                  (_tl4105841761_
                                                   (##cdr _e4105641754_)))
                                              (if (gx#identifier?
                                                   _hd4105741758_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g47051_|
                                                       _hd4105741758_)
                                                      (if (gx#stx-pair?
                                                           _tl4105841761_)
                                                          (let ((_e4105941764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4105841761_)))
                    (let ((_hd4106041768_ (##car _e4105941764_))
                          (_tl4106141771_ (##cdr _e4105941764_)))
                      (if (gx#stx-pair? _tl4106141771_)
                          (let ((_e4106241774_ (gx#syntax-e _tl4106141771_)))
                            (let ((_hd4106341778_ (##car _e4106241774_))
                                  (_tl4106441781_ (##cdr _e4106241774_)))
                              (if (gx#stx-null? _tl4106441781_)
                                  ((lambda (_L41784_ _L41786_)
                                     (cons 'cons:
                                           (cons (_parse140657_ _L41786_)
                                                 (cons (_parse140657_ _L41784_)
                                                       '()))))
                                   _hd4106341778_
                                   _hd4106041768_)
                                  (_g4101141747_ _g4103041751_))))
                          (_g4101141747_ _g4103041751_))))
                  (_g4101141747_ _g4103041751_))
              (_g4101141747_ _g4103041751_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4101141747_
                                                   _g4103041751_))))
                                          (_g4101141747_ _g4103041751_)))))
                               (let ((_g4100941841_
                                      (lambda (_g4103041805_)
                                        (if (gx#stx-pair? _g4103041805_)
                                            (let ((_e4104841808_
                                                   (gx#syntax-e
                                                    _g4103041805_)))
                                              (let ((_hd4104941812_
                                                     (##car _e4104841808_))
                                                    (_tl4105041815_
                                                     (##cdr _e4104841808_)))
                                                (if (gx#identifier?
                                                     _hd4104941812_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g47052_|
                                                         _hd4104941812_)
                                                        (if (gx#stx-pair?
                                                             _tl4105041815_)
                                                            (let ((_e4105141818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4105041815_)))
                      (let ((_hd4105241822_ (##car _e4105141818_))
                            (_tl4105341825_ (##cdr _e4105141818_)))
                        (if (gx#stx-null? _tl4105341825_)
                            ((lambda (_L41828_)
                               (cons 'not:
                                     (cons (_parse140657_ _L41828_) '())))
                             _hd4105241822_)
                            (_g4101041801_ _g4103041805_))))
                    (_g4101041801_ _g4103041805_))
                (_g4101041801_ _g4103041805_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4101041801_
                                                     _g4103041805_))))
                                            (_g4101041801_ _g4103041805_)))))
                                 (let ((_g4100841926_
                                        (lambda (_g4103041845_)
                                          (if (gx#stx-pair? _g4103041845_)
                                              (let ((_e4104441848_
                                                     (gx#syntax-e
                                                      _g4103041845_)))
                                                (let ((_hd4104541852_
                                                       (##car _e4104441848_))
                                                      (_tl4104641855_
                                                       (##cdr _e4104441848_)))
                                                  (if (gx#identifier?
                                                       _hd4104541852_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g47053_|
                                                           _hd4104541852_)
                                                          ((lambda (_L41858_)
                                                             (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L41858_)
                         (let ((_g4187041881_
                                (lambda (_g4187141877_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g4187141877_))))
                           (let ((_g4186941892_
                                  (lambda (_g4187141885_)
                                    ((lambda ()
                                       (cons 'or:
                                             (gx#stx-map
                                              _parse140657_
                                              _L41858_)))))))
                             (let ((_g4186841922_
                                    (lambda (_g4187141896_)
                                      (if (gx#stx-pair? _g4187141896_)
                                          (let ((_e4187341899_
                                                 (gx#syntax-e _g4187141896_)))
                                            (let ((_hd4187441903_
                                                   (##car _e4187341899_))
                                                  (_tl4187541906_
                                                   (##cdr _e4187341899_)))
                                              (if (gx#stx-null? _tl4187541906_)
                                                  ((lambda (_L41909_)
                                                     (_parse140657_ _L41909_))
                                                   _hd4187441903_)
                                                  (_g4186941892_
                                                   _g4187141896_))))
                                          (_g4186941892_ _g4187141896_)))))
                               (_g4186841922_ _L41858_))))
                         (_g4100941841_ _g4103041845_)))
                   _tl4104641855_)
                  (_g4100941841_ _g4103041845_))
              (_g4100941841_ _g4103041845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4100941841_ _g4103041845_)))))
                                   (let ((_g4100742011_
                                          (lambda (_g4103041930_)
                                            (if (gx#stx-pair? _g4103041930_)
                                                (let ((_e4104041933_
                                                       (gx#syntax-e
                                                        _g4103041930_)))
                                                  (let ((_hd4104141937_
                                                         (##car _e4104041933_))
                                                        (_tl4104241940_
                                                         (##cdr _e4104041933_)))
                                                    (if (gx#identifier?
                                                         _hd4104141937_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g47054_|
                                                             _hd4104141937_)
                                                            ((lambda (_L41943_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L41943_)
                           (let ((_g4195541966_
                                  (lambda (_g4195641962_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g4195641962_))))
                             (let ((_g4195441977_
                                    (lambda (_g4195641970_)
                                      ((lambda ()
                                         (cons 'and:
                                               (gx#stx-map
                                                _parse140657_
                                                _L41943_)))))))
                               (let ((_g4195342007_
                                      (lambda (_g4195641981_)
                                        (if (gx#stx-pair? _g4195641981_)
                                            (let ((_e4195841984_
                                                   (gx#syntax-e
                                                    _g4195641981_)))
                                              (let ((_hd4195941988_
                                                     (##car _e4195841984_))
                                                    (_tl4196041991_
                                                     (##cdr _e4195841984_)))
                                                (if (gx#stx-null?
                                                     _tl4196041991_)
                                                    ((lambda (_L41994_)
                                                       (_parse140657_
                                                        _L41994_))
                                                     _hd4195941988_)
                                                    (_g4195441977_
                                                     _g4195641981_))))
                                            (_g4195441977_ _g4195641981_)))))
                                 (_g4195342007_ _L41943_))))
                           (_g4100841926_ _g4103041930_)))
                     _tl4104241940_)
                    (_g4100841926_ _g4103041930_))
                (_g4100841926_ _g4103041930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4100841926_
                                                 _g4103041930_)))))
                                     (let ((_g4100642251_
                                            (lambda (_g4103042015_)
                                              (if (gx#stx-pair? _g4103042015_)
                                                  (let ((_e4103342018_
                                                         (gx#syntax-e
                                                          _g4103042015_)))
                                                    (let ((_hd4103442022_
                                                           (##car _e4103342018_))
                                                          (_tl4103542025_
                                                           (##cdr _e4103342018_)))
                                                      (if (gx#identifier?
                                                           _hd4103442022_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g47055_|
                                                               _hd4103442022_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4103542025_)
                          (let ((_e4103642028_ (gx#syntax-e _tl4103542025_)))
                            (let ((_hd4103742032_ (##car _e4103642028_))
                                  (_tl4103842035_ (##cdr _e4103642028_)))
                              ((lambda (_L42038_ _L42040_)
                                 (let ((_g4205742089_
                                        (lambda (_g4205842085_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g4205842085_))))
                                   (let ((_g4205642100_
                                          (lambda (_g4205842093_)
                                            ((lambda ()
                                               (_parse-error40664_
                                                _hd41004_))))))
                                     (let ((_g4205542168_
                                            (lambda (_g4205842104_)
                                              (if (gx#stx-pair? _g4205842104_)
                                                  (let ((_e4207242107_
                                                         (gx#syntax-e
                                                          _g4205842104_)))
                                                    (let ((_hd4207342111_
                                                           (##car _e4207242107_))
                                                          (_tl4207442114_
                                                           (##cdr _e4207242107_)))
                                                      (if (gx#stx-datum?
                                                           _hd4207342111_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd4207342111_)
                              '::)
                      (if (gx#stx-pair? _tl4207442114_)
                          (let ((_e4207542117_ (gx#syntax-e _tl4207442114_)))
                            (let ((_hd4207642121_ (##car _e4207542117_))
                                  (_tl4207742124_ (##cdr _e4207542117_)))
                              (if (gx#stx-pair? _tl4207742124_)
                                  (let ((_e4207842127_
                                         (gx#syntax-e _tl4207742124_)))
                                    (let ((_hd4207942131_
                                           (##car _e4207842127_))
                                          (_tl4208042134_
                                           (##cdr _e4207842127_)))
                                      (if (gx#identifier? _hd4207942131_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g47056_|
                                               _hd4207942131_)
                                              (if (gx#stx-pair? _tl4208042134_)
                                                  (let ((_e4208142137_
                                                         (gx#syntax-e
                                                          _tl4208042134_)))
                                                    (let ((_hd4208242141_
                                                           (##car _e4208142137_))
                                                          (_tl4208342144_
                                                           (##cdr _e4208142137_)))
                                                      (if (gx#stx-null?
                                                           _tl4208342144_)
                                                          ((lambda (_L42147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L42149_)
                     (cons '?:
                           (cons _L42040_
                                 (cons '::
                                       (cons _L42149_
                                             (cons '=>:
                                                   (cons (_parse140657_
                                                          _L42147_)
                                                         '())))))))
                   _hd4208242141_
                   _hd4207642121_)
                  (_g4205642100_ _g4205842104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4205642100_
                                                   _g4205842104_))
                                              (_g4205642100_ _g4205842104_))
                                          (_g4205642100_ _g4205842104_))))
                                  (_g4205642100_ _g4205842104_))))
                          (_g4205642100_ _g4205842104_))
                      (_g4205642100_ _g4205842104_))
                  (_g4205642100_ _g4205842104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4205642100_
                                                   _g4205842104_)))))
                                       (let ((_g4205442208_
                                              (lambda (_g4205842172_)
                                                (if (gx#stx-pair?
                                                     _g4205842172_)
                                                    (let ((_e4206442175_
                                                           (gx#syntax-e
                                                            _g4205842172_)))
                                                      (let ((_hd4206542179_
                                                             (##car _e4206442175_))
                                                            (_tl4206642182_
                                                             (##cdr _e4206442175_)))
                                                        (if (gx#identifier?
                                                             _hd4206542179_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g47057_|
                         _hd4206542179_)
                        (if (gx#stx-pair? _tl4206642182_)
                            (let ((_e4206742185_ (gx#syntax-e _tl4206642182_)))
                              (let ((_hd4206842189_ (##car _e4206742185_))
                                    (_tl4206942192_ (##cdr _e4206742185_)))
                                (if (gx#stx-null? _tl4206942192_)
                                    ((lambda (_L42195_)
                                       (cons '?:
                                             (cons _L42040_
                                                   (cons '=>:
                                                         (cons (_parse140657_
                                                                _L42195_)
                                                               '())))))
                                     _hd4206842189_)
                                    (_g4205542168_ _g4205842172_))))
                            (_g4205542168_ _g4205842172_))
                        (_g4205542168_ _g4205842172_))
                    (_g4205542168_ _g4205842172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4205542168_
                                                     _g4205842172_)))))
                                         (let ((_g4205342236_
                                                (lambda (_g4205842212_)
                                                  (if (gx#stx-pair?
                                                       _g4205842212_)
                                                      (let ((_e4206042215_
                                                             (gx#syntax-e
                                                              _g4205842212_)))
                                                        (let ((_hd4206142219_
                                                               (##car _e4206042215_))
                                                              (_tl4206242222_
                                                               (##cdr _e4206042215_)))
                                                          (if (gx#stx-null?
                                                               _tl4206242222_)
                                                              ((lambda (_L42225_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L42040_
                                     (cons (_parse140657_ _L42225_) '()))))
                       _hd4206142219_)
                      (_g4205442208_ _g4205842212_))))
              (_g4205442208_ _g4205842212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g4205242247_
                                                  (lambda (_g4205842240_)
                                                    (if (gx#stx-null?
                                                         _g4205842240_)
                                                        ((lambda ()
                                                           (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L42040_ '()))))
                (_g4205342236_ _g4205842240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g4205242247_ _L42038_))))))))
                               _tl4103842035_
                               _hd4103742032_)))
                          (_g4100742011_ _g4103042015_))
                      (_g4100742011_ _g4103042015_))
                  (_g4100742011_ _g4103042015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4100742011_
                                                   _g4103042015_)))))
                                       (_g4100642251_
                                        _hd41004_)))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list40659_
                             (lambda (_body40839_)
                               (let ((_g4084540873_
                                      (lambda (_g4084640869_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g4084640869_))))
                                 (let ((_g4084440884_
                                        (lambda (_g4084640877_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body40839_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body40839_))
                                                     (_parse140657_
                                                      _body40839_)
                                                     (_parse-error40664_
                                                      _body40839_))))))))
                                   (let ((_g4084340916_
                                          (lambda (_g4084640888_)
                                            (if (gx#stx-pair? _g4084640888_)
                                                (let ((_e4086540891_
                                                       (gx#syntax-e
                                                        _g4084640888_)))
                                                  (let ((_hd4086640895_
                                                         (##car _e4086540891_))
                                                        (_tl4086740898_
                                                         (##cdr _e4086540891_)))
                                                    ((lambda (_L40901_
                                                              _L40903_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L40903_))
                   (cons 'cons:
                         (cons (_parse140657_ _L40903_)
                               (cons (_parse-list40659_ _L40901_) '())))
                   (_g4084440884_ _g4084640888_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl4086740898_
                                                     _hd4086640895_)))
                                                (_g4084440884_
                                                 _g4084640888_)))))
                                     (let ((_g4084240960_
                                            (lambda (_g4084640920_)
                                              (if (gx#stx-pair? _g4084640920_)
                                                  (let ((_e4085740923_
                                                         (gx#syntax-e
                                                          _g4084640920_)))
                                                    (let ((_hd4085840927_
                                                           (##car _e4085740923_))
                                                          (_tl4085940930_
                                                           (##cdr _e4085740923_)))
                                                      (if (gx#stx-pair?
                                                           _tl4085940930_)
                                                          (let ((_e4086040933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4085940930_)))
                    (let ((_hd4086140937_ (##car _e4086040933_))
                          (_tl4086240940_ (##cdr _e4086040933_)))
                      ((lambda (_L40943_ _L40945_ _L40946_)
                         (if (gx#ellipsis? _L40945_)
                             (cons 'splice:
                                   (cons (_parse140657_ _L40946_)
                                         (cons (_parse-list40659_ _L40943_)
                                               '())))
                             (_g4084340916_ _g4084640920_)))
                       _tl4086240940_
                       _hd4086140937_
                       _hd4085840927_)))
                  (_g4084340916_ _g4084640920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4084340916_
                                                   _g4084640920_)))))
                                       (let ((_g4084141000_
                                              (lambda (_g4084640964_)
                                                (if (gx#stx-pair?
                                                     _g4084640964_)
                                                    (let ((_e4084840967_
                                                           (gx#syntax-e
                                                            _g4084640964_)))
                                                      (let ((_hd4084940971_
                                                             (##car _e4084840967_))
                                                            (_tl4085040974_
                                                             (##cdr _e4084840967_)))
                                                        (if (gx#stx-datum?
                                                             _hd4084940971_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd4084940971_)
                                '::)
                        (if (gx#stx-pair? _tl4085040974_)
                            (let ((_e4085140977_ (gx#syntax-e _tl4085040974_)))
                              (let ((_hd4085240981_ (##car _e4085140977_))
                                    (_tl4085340984_ (##cdr _e4085140977_)))
                                (if (gx#stx-null? _tl4085340984_)
                                    ((lambda (_L40987_)
                                       (_parse140657_ _L40987_))
                                     _hd4085240981_)
                                    (_g4084240960_ _g4084640964_))))
                            (_g4084240960_ _g4084640964_))
                        (_g4084240960_ _g4084640964_))
                    (_g4084240960_ _g4084640964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4084240960_
                                                     _g4084640964_)))))
                                         (_g4084141000_ _body40839_))))))))
                            (_parse-vector40660_
                             (lambda (_body40836_)
                               (if (_simple-vector?40661_ _body40836_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse140657_
                                                _body40836_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list40659_ _body40836_)
                                               '())))))
                            (_simple-vector?40661_
                             (lambda (_body40773_)
                               (let ((_g4077740789_
                                      (lambda (_g4077840785_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g4077840785_))))
                                 (let ((_g4077640800_
                                        (lambda (_g4077840793_)
                                          ((lambda ()
                                             (gx#stx-null? _body40773_))))))
                                   (let ((_g4077540832_
                                          (lambda (_g4077840804_)
                                            (if (gx#stx-pair? _g4077840804_)
                                                (let ((_e4078140807_
                                                       (gx#syntax-e
                                                        _g4077840804_)))
                                                  (let ((_hd4078240811_
                                                         (##car _e4078140807_))
                                                        (_tl4078340814_
                                                         (##cdr _e4078140807_)))
                                                    ((lambda (_L40817_
                                                              _L40819_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L40819_))
                   (_simple-vector?40661_ _L40817_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl4078340814_
                                                     _hd4078240811_)))
                                                (_g4077640800_
                                                 _g4077840804_)))))
                                     (_g4077540832_ _body40773_))))))
                            (_parse-class-body40662_
                             (lambda (_body40682_)
                               ((letrec ((_recur40685_
                                          (lambda (_rest40688_)
                                            (let ((_g4069240708_
                                                   (lambda (_g4069340704_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4069340704_))))
                                              (let ((_g4069140719_
                                                     (lambda (_g4069340712_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest40688_)
                                                              '()
                                                              (_parse-error40664_
                                                               _rest40688_)))))))
                                                (let ((_g4069040769_
                                                       (lambda (_g4069340723_)
                                                         (if (gx#stx-pair?
                                                              _g4069340723_)
                                                             (let ((_e4069740726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g4069340723_)))
                       (let ((_hd4069840730_ (##car _e4069740726_))
                             (_tl4069940733_ (##cdr _e4069740726_)))
                         (if (gx#stx-pair? _tl4069940733_)
                             (let ((_e4070040736_
                                    (gx#syntax-e _tl4069940733_)))
                               (let ((_hd4070140740_ (##car _e4070040736_))
                                     (_tl4070240743_ (##cdr _e4070040736_)))
                                 ((lambda (_L40746_ _L40748_ _L40749_)
                                    (if (gx#stx-keyword? _L40749_)
                                        (cons* _L40749_
                                               (_parse140657_ _L40748_)
                                               (_recur40685_ _L40746_))
                                        (_g4069140719_ _g4069340723_)))
                                  _tl4070240743_
                                  _hd4070140740_
                                  _hd4069840730_)))
                             (_g4069140719_ _g4069340723_))))
                     (_g4069140719_ _g4069340723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4069040769_
                                                   _rest40688_)))))))
                                  _recur40685_)
                                _body40682_))))
                     (_parse140657_ _stx40653_)))))))
        (lambda _g47059_
          (let ((_g47058_ (length _g47059_)))
            (cond ((fx= _g47058_ 1)
                   (apply (lambda (_stx42259_)
                            (let ((_match-stx42262_ '#f))
                              (_opt-lambda4065142255_
                               _stx42259_
                               _match-stx42262_)))
                          _g47059_))
                  ((fx= _g47058_ 2)
                   (apply (lambda (_stx42265_ _match-stx42267_)
                            (_opt-lambda4065142255_
                             _stx42265_
                             _match-stx42267_))
                          _g47059_))
                  (else (error "No clause matching arguments" _g47059_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx40637_)
        (call-with-escape
         (lambda (_E40641_)
           (with-exception-handler
            (let ((_E!40644_ (current-exception-handler)))
              (lambda (_e40647_)
                (if (gx#syntax-error? _e40647_)
                    (_E40641_ '#f)
                    (_E!40644_ _e40647_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx40637_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree39492_)
        (letrec ((_loop39495_
                  (lambda (_ptree39770_ _vars39772_ _K39773_)
                    (let ((_g3978539875_
                           (lambda (_g3978639871_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3978639871_))))
                      (let ((_g3978439886_
                             (lambda (_g3978639879_)
                               ((lambda () (_K39773_ _vars39772_))))))
                        (let ((_g3978339933_
                               (lambda (_g3978639890_)
                                 (if (gx#stx-pair? _g3978639890_)
                                     (let ((_e3986439893_
                                            (gx#syntax-e _g3978639890_)))
                                       (let ((_hd3986539897_
                                              (##car _e3986439893_))
                                             (_tl3986639900_
                                              (##cdr _e3986439893_)))
                                         (if (gx#stx-datum? _hd3986539897_)
                                             (if (equal? (gx#stx-e
                                                          _hd3986539897_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl3986639900_)
                                                     (let ((_e3986739903_
                                                            (gx#syntax-e
                                                             _tl3986639900_)))
                                                       (let ((_hd3986839907_
                                                              (##car _e3986739903_))
                                                             (_tl3986939910_
                                                              (##cdr _e3986739903_)))
                                                         (if (gx#stx-null?
                                                              _tl3986939910_)
                                                             ((lambda (_L39913_)
                                                                (if (find (lambda (_g3992739929_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g3992739929_
                                     _L39913_))
                                  _vars39772_)
                            (_K39773_ _vars39772_)
                            (_K39773_ (cons _L39913_ _vars39772_))))
                      _hd3986839907_)
                     (_g3978439886_ _g3978639890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3978439886_
                                                      _g3978639890_))
                                                 (_g3978439886_ _g3978639890_))
                                             (_g3978439886_ _g3978639890_))))
                                     (_g3978439886_ _g3978639890_)))))
                          (let ((_g3978239985_
                                 (lambda (_g3978639937_)
                                   (if (gx#stx-pair? _g3978639937_)
                                       (let ((_e3985439940_
                                              (gx#syntax-e _g3978639937_)))
                                         (let ((_hd3985539944_
                                                (##car _e3985439940_))
                                               (_tl3985639947_
                                                (##cdr _e3985439940_)))
                                           (if (gx#stx-datum? _hd3985539944_)
                                               (if (equal? (gx#stx-e
                                                            _hd3985539944_)
                                                           'class:)
                                                   (if (gx#stx-pair?
                                                        _tl3985639947_)
                                                       (let ((_e3985739950_
                                                              (gx#syntax-e
                                                               _tl3985639947_)))
                                                         (let ((_hd3985839954_
                                                                (##car _e3985739950_))
                                                               (_tl3985939957_
                                                                (##cdr _e3985739950_)))
                                                           (if (gx#stx-pair?
                                                                _tl3985939957_)
                                                               (let ((_e3986039960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl3985939957_)))
                         (let ((_hd3986139964_ (##car _e3986039960_))
                               (_tl3986239967_ (##cdr _e3986039960_)))
                           (if (gx#stx-null? _tl3986239967_)
                               ((lambda (_L39970_)
                                  (_loop-class-list39499_
                                   _L39970_
                                   _vars39772_
                                   _K39773_))
                                _hd3986139964_)
                               (_g3978339933_ _g3978639937_))))
                       (_g3978339933_ _g3978639937_))))
               (_g3978339933_ _g3978639937_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3978339933_
                                                    _g3978639937_))
                                               (_g3978339933_ _g3978639937_))))
                                       (_g3978339933_ _g3978639937_)))))
                            (let ((_g3978140037_
                                   (lambda (_g3978639989_)
                                     (if (gx#stx-pair? _g3978639989_)
                                         (let ((_e3984439992_
                                                (gx#syntax-e _g3978639989_)))
                                           (let ((_hd3984539996_
                                                  (##car _e3984439992_))
                                                 (_tl3984639999_
                                                  (##cdr _e3984439992_)))
                                             (if (gx#stx-datum? _hd3984539996_)
                                                 (if (equal? (gx#stx-e
                                                              _hd3984539996_)
                                                             'struct:)
                                                     (if (gx#stx-pair?
                                                          _tl3984639999_)
                                                         (let ((_e3984740002_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3984639999_)))
                   (let ((_hd3984840006_ (##car _e3984740002_))
                         (_tl3984940009_ (##cdr _e3984740002_)))
                     (if (gx#stx-pair? _tl3984940009_)
                         (let ((_e3985040012_ (gx#syntax-e _tl3984940009_)))
                           (let ((_hd3985140016_ (##car _e3985040012_))
                                 (_tl3985240019_ (##cdr _e3985040012_)))
                             (if (gx#stx-null? _tl3985240019_)
                                 ((lambda (_L40022_)
                                    (_loop-vector39497_
                                     _L40022_
                                     _vars39772_
                                     _K39773_))
                                  _hd3985140016_)
                                 (_g3978239985_ _g3978639989_))))
                         (_g3978239985_ _g3978639989_))))
                 (_g3978239985_ _g3978639989_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3978239985_
                                                      _g3978639989_))
                                                 (_g3978239985_
                                                  _g3978639989_))))
                                         (_g3978239985_ _g3978639989_)))))
                              (let ((_g3978040083_
                                     (lambda (_g3978640041_)
                                       (if (gx#stx-pair? _g3978640041_)
                                           (let ((_e3983740044_
                                                  (gx#syntax-e _g3978640041_)))
                                             (let ((_hd3983840048_
                                                    (##car _e3983740044_))
                                                   (_tl3983940051_
                                                    (##cdr _e3983740044_)))
                                               (if (gx#stx-pair?
                                                    _tl3983940051_)
                                                   (let ((_e3984040054_
                                                          (gx#syntax-e
                                                           _tl3983940051_)))
                                                     (let ((_hd3984140058_
                                                            (##car _e3984040054_))
                                                           (_tl3984240061_
                                                            (##cdr _e3984040054_)))
                                                       (if (gx#stx-null?
                                                            _tl3984240061_)
                                                           ((lambda (_L40064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L40066_)
                      (if (let ((_$e40079_ (gx#stx-eq? 'values: _L40066_)))
                            (if _$e40079_
                                _$e40079_
                                (gx#stx-eq? 'vector: _L40066_)))
                          (_loop-vector39497_ _L40064_ _vars39772_ _K39773_)
                          (_g3978140037_ _g3978640041_)))
                    _hd3984140058_
                    _hd3983840048_)
                   (_g3978140037_ _g3978640041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3978140037_
                                                    _g3978640041_))))
                                           (_g3978140037_ _g3978640041_)))))
                                (let ((_g3977940123_
                                       (lambda (_g3978640087_)
                                         (if (gx#stx-pair? _g3978640087_)
                                             (let ((_e3982940090_
                                                    (gx#syntax-e
                                                     _g3978640087_)))
                                               (let ((_hd3983040094_
                                                      (##car _e3982940090_))
                                                     (_tl3983140097_
                                                      (##cdr _e3982940090_)))
                                                 (if (gx#stx-datum?
                                                      _hd3983040094_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd3983040094_)
                         'box:)
                 (if (gx#stx-pair? _tl3983140097_)
                     (let ((_e3983240100_ (gx#syntax-e _tl3983140097_)))
                       (let ((_hd3983340104_ (##car _e3983240100_))
                             (_tl3983440107_ (##cdr _e3983240100_)))
                         (if (gx#stx-null? _tl3983440107_)
                             ((lambda (_L40110_)
                                (_loop39495_ _L40110_ _vars39772_ _K39773_))
                              _hd3983340104_)
                             (_g3978040083_ _g3978640087_))))
                     (_g3978040083_ _g3978640087_))
                 (_g3978040083_ _g3978640087_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3978040083_
                                                      _g3978640087_))))
                                             (_g3978040083_ _g3978640087_)))))
                                  (let ((_g3977840182_
                                         (lambda (_g3978640127_)
                                           (if (gx#stx-pair? _g3978640127_)
                                               (let ((_e3981940130_
                                                      (gx#syntax-e
                                                       _g3978640127_)))
                                                 (let ((_hd3982040134_
                                                        (##car _e3981940130_))
                                                       (_tl3982140137_
                                                        (##cdr _e3981940130_)))
                                                   (if (gx#stx-datum?
                                                        _hd3982040134_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd3982040134_)
                           'splice:)
                   (if (gx#stx-pair? _tl3982140137_)
                       (let ((_e3982240140_ (gx#syntax-e _tl3982140137_)))
                         (let ((_hd3982340144_ (##car _e3982240140_))
                               (_tl3982440147_ (##cdr _e3982240140_)))
                           (if (gx#stx-pair? _tl3982440147_)
                               (let ((_e3982540150_
                                      (gx#syntax-e _tl3982440147_)))
                                 (let ((_hd3982640154_ (##car _e3982540150_))
                                       (_tl3982740157_ (##cdr _e3982540150_)))
                                   (if (gx#stx-null? _tl3982740157_)
                                       ((lambda (_L40160_ _L40162_)
                                          (_loop39495_
                                           _L40162_
                                           _vars39772_
                                           (lambda (_g4017640178_)
                                             (_loop39495_
                                              _L40160_
                                              _g4017640178_
                                              _K39773_))))
                                        _hd3982640154_
                                        _hd3982340144_)
                                       (_g3977940123_ _g3978640127_))))
                               (_g3977940123_ _g3978640127_))))
                       (_g3977940123_ _g3978640127_))
                   (_g3977940123_ _g3978640127_))
               (_g3977940123_ _g3978640127_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3977940123_
                                                _g3978640127_)))))
                                    (let ((_g3977740241_
                                           (lambda (_g3978640186_)
                                             (if (gx#stx-pair? _g3978640186_)
                                                 (let ((_e3980840189_
                                                        (gx#syntax-e
                                                         _g3978640186_)))
                                                   (let ((_hd3980940193_
                                                          (##car _e3980840189_))
                                                         (_tl3981040196_
                                                          (##cdr _e3980840189_)))
                                                     (if (gx#stx-datum?
                                                          _hd3980940193_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd3980940193_)
                             'cons:)
                     (if (gx#stx-pair? _tl3981040196_)
                         (let ((_e3981140199_ (gx#syntax-e _tl3981040196_)))
                           (let ((_hd3981240203_ (##car _e3981140199_))
                                 (_tl3981340206_ (##cdr _e3981140199_)))
                             (if (gx#stx-pair? _tl3981340206_)
                                 (let ((_e3981440209_
                                        (gx#syntax-e _tl3981340206_)))
                                   (let ((_hd3981540213_ (##car _e3981440209_))
                                         (_tl3981640216_
                                          (##cdr _e3981440209_)))
                                     (if (gx#stx-null? _tl3981640216_)
                                         ((lambda (_L40219_ _L40221_)
                                            (_loop39495_
                                             _L40221_
                                             _vars39772_
                                             (lambda (_g4023540237_)
                                               (_loop39495_
                                                _L40219_
                                                _g4023540237_
                                                _K39773_))))
                                          _hd3981540213_
                                          _hd3981240203_)
                                         (_g3977840182_ _g3978640186_))))
                                 (_g3977840182_ _g3978640186_))))
                         (_g3977840182_ _g3978640186_))
                     (_g3977840182_ _g3978640186_))
                 (_g3977840182_ _g3978640186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3977840182_
                                                  _g3978640186_)))))
                                      (let ((_g3977640281_
                                             (lambda (_g3978640245_)
                                               (if (gx#stx-pair? _g3978640245_)
                                                   (let ((_e3980040248_
                                                          (gx#syntax-e
                                                           _g3978640245_)))
                                                     (let ((_hd3980140252_
                                                            (##car _e3980040248_))
                                                           (_tl3980240255_
                                                            (##cdr _e3980040248_)))
                                                       (if (gx#stx-datum?
                                                            _hd3980140252_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd3980140252_)
                               'not:)
                       (if (gx#stx-pair? _tl3980240255_)
                           (let ((_e3980340258_ (gx#syntax-e _tl3980240255_)))
                             (let ((_hd3980440262_ (##car _e3980340258_))
                                   (_tl3980540265_ (##cdr _e3980340258_)))
                               (if (gx#stx-null? _tl3980540265_)
                                   ((lambda (_L40268_)
                                      (_loop39495_
                                       _L40268_
                                       _vars39772_
                                       _K39773_))
                                    _hd3980440262_)
                                   (_g3977740241_ _g3978640245_))))
                           (_g3977740241_ _g3978640245_))
                       (_g3977740241_ _g3978640245_))
                   (_g3977740241_ _g3978640245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3977740241_
                                                    _g3978640245_)))))
                                        (let ((_g3977540380_
                                               (lambda (_g3978640285_)
                                                 (if (gx#stx-pair?
                                                      _g3978640285_)
                                                     (let ((_e3979640288_
                                                            (gx#syntax-e
                                                             _g3978640285_)))
                                                       (let ((_hd3979740292_
                                                              (##car _e3979640288_))
                                                             (_tl3979840295_
                                                              (##cdr _e3979640288_)))
                                                         ((lambda (_L40298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L40300_)
                    (if (let ((_$e40311_ (gx#stx-eq? 'and: _L40300_)))
                          (if _$e40311_ _$e40311_ (gx#stx-eq? 'or: _L40300_)))
                        (let ((_g4031640328_
                               (lambda (_g4031740324_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g4031740324_))))
                          (let ((_g4031540339_
                                 (lambda (_g4031740332_)
                                   ((lambda () (_K39773_ _vars39772_))))))
                            (let ((_g4031440376_
                                   (lambda (_g4031740343_)
                                     (if (gx#stx-pair? _g4031740343_)
                                         (let ((_e4032040346_
                                                (gx#syntax-e _g4031740343_)))
                                           (let ((_hd4032140350_
                                                  (##car _e4032040346_))
                                                 (_tl4032240353_
                                                  (##cdr _e4032040346_)))
                                             ((lambda (_L40356_ _L40358_)
                                                (_loop39495_
                                                 _L40358_
                                                 _vars39772_
                                                 (lambda (_g4037040372_)
                                                   (_loop39495_
                                                    (cons _L40300_ _L40356_)
                                                    _g4037040372_
                                                    _K39773_))))
                                              _tl4032240353_
                                              _hd4032140350_)))
                                         (_g4031540339_ _g4031740343_)))))
                              (_g4031440376_ _L40298_))))
                        (_g3977640281_ _g3978640285_)))
                  _tl3979840295_
                  _hd3979740292_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3977640281_
                                                      _g3978640285_)))))
                                          (let ((_g3977440633_
                                                 (lambda (_g3978640384_)
                                                   (if (gx#stx-pair?
                                                        _g3978640384_)
                                                       (let ((_e3978840387_
                                                              (gx#syntax-e
                                                               _g3978640384_)))
                                                         (let ((_hd3978940391_
                                                                (##car _e3978840387_))
                                                               (_tl3979040394_
                                                                (##cdr _e3978840387_)))
                                                           (if (gx#stx-datum?
                                                                _hd3978940391_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd3978940391_)
                                   '?:)
                           (if (gx#stx-pair? _tl3979040394_)
                               (let ((_e3979140397_
                                      (gx#syntax-e _tl3979040394_)))
                                 (let ((_hd3979240401_ (##car _e3979140397_))
                                       (_tl3979340404_ (##cdr _e3979140397_)))
                                   ((lambda (_L40407_)
                                      (let ((_g4042340460_
                                             (lambda (_g4042440456_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g4042440456_))))
                                        (let ((_g4042240471_
                                               (lambda (_g4042440464_)
                                                 ((lambda ()
                                                    (_K39773_ _vars39772_))))))
                                          (let ((_g4042140549_
                                                 (lambda (_g4042440475_)
                                                   (if (gx#stx-pair?
                                                        _g4042440475_)
                                                       (let ((_e4044040478_
                                                              (gx#syntax-e
                                                               _g4042440475_)))
                                                         (let ((_hd4044140482_
                                                                (##car _e4044040478_))
                                                               (_tl4044240485_
                                                                (##cdr _e4044040478_)))
                                                           (if (gx#stx-pair?
                                                                _tl4044240485_)
                                                               (let ((_e4044340488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl4044240485_)))
                         (let ((_hd4044440492_ (##car _e4044340488_))
                               (_tl4044540495_ (##cdr _e4044340488_)))
                           (if (gx#stx-datum? _hd4044440492_)
                               (if (equal? (gx#stx-e _hd4044440492_) '::)
                                   (if (gx#stx-pair? _tl4044540495_)
                                       (let ((_e4044640498_
                                              (gx#syntax-e _tl4044540495_)))
                                         (let ((_hd4044740502_
                                                (##car _e4044640498_))
                                               (_tl4044840505_
                                                (##cdr _e4044640498_)))
                                           (if (gx#stx-pair? _tl4044840505_)
                                               (let ((_e4044940508_
                                                      (gx#syntax-e
                                                       _tl4044840505_)))
                                                 (let ((_hd4045040512_
                                                        (##car _e4044940508_))
                                                       (_tl4045140515_
                                                        (##cdr _e4044940508_)))
                                                   (if (gx#stx-datum?
                                                        _hd4045040512_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd4045040512_)
                           '=>:)
                   (if (gx#stx-pair? _tl4045140515_)
                       (let ((_e4045240518_ (gx#syntax-e _tl4045140515_)))
                         (let ((_hd4045340522_ (##car _e4045240518_))
                               (_tl4045440525_ (##cdr _e4045240518_)))
                           (if (gx#stx-null? _tl4045440525_)
                               ((lambda (_L40528_)
                                  (_loop39495_ _L40528_ _vars39772_ _K39773_))
                                _hd4045340522_)
                               (_g4042240471_ _g4042440475_))))
                       (_g4042240471_ _g4042440475_))
                   (_g4042240471_ _g4042440475_))
               (_g4042240471_ _g4042440475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4042240471_ _g4042440475_))))
                                       (_g4042240471_ _g4042440475_))
                                   (_g4042240471_ _g4042440475_))
                               (_g4042240471_ _g4042440475_))))
                       (_g4042240471_ _g4042440475_))))
               (_g4042240471_ _g4042440475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g4042040601_
                                                   (lambda (_g4042440553_)
                                                     (if (gx#stx-pair?
                                                          _g4042440553_)
                                                         (let ((_e4043040556_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g4042440553_)))
                   (let ((_hd4043140560_ (##car _e4043040556_))
                         (_tl4043240563_ (##cdr _e4043040556_)))
                     (if (gx#stx-pair? _tl4043240563_)
                         (let ((_e4043340566_ (gx#syntax-e _tl4043240563_)))
                           (let ((_hd4043440570_ (##car _e4043340566_))
                                 (_tl4043540573_ (##cdr _e4043340566_)))
                             (if (gx#stx-datum? _hd4043440570_)
                                 (if (equal? (gx#stx-e _hd4043440570_) '=>:)
                                     (if (gx#stx-pair? _tl4043540573_)
                                         (let ((_e4043640576_
                                                (gx#syntax-e _tl4043540573_)))
                                           (let ((_hd4043740580_
                                                  (##car _e4043640576_))
                                                 (_tl4043840583_
                                                  (##cdr _e4043640576_)))
                                             (if (gx#stx-null? _tl4043840583_)
                                                 ((lambda (_L40586_)
                                                    (_loop39495_
                                                     _L40586_
                                                     _vars39772_
                                                     _K39773_))
                                                  _hd4043740580_)
                                                 (_g4042140549_
                                                  _g4042440553_))))
                                         (_g4042140549_ _g4042440553_))
                                     (_g4042140549_ _g4042440553_))
                                 (_g4042140549_ _g4042440553_))))
                         (_g4042140549_ _g4042440553_))))
                 (_g4042140549_ _g4042440553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g4041940629_
                                                     (lambda (_g4042440605_)
                                                       (if (gx#stx-pair?
                                                            _g4042440605_)
                                                           (let ((_e4042640608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g4042440605_)))
                     (let ((_hd4042740612_ (##car _e4042640608_))
                           (_tl4042840615_ (##cdr _e4042640608_)))
                       (if (gx#stx-null? _tl4042840615_)
                           ((lambda (_L40618_)
                              (_loop39495_ _L40618_ _vars39772_ _K39773_))
                            _hd4042740612_)
                           (_g4042040601_ _g4042440605_))))
                   (_g4042040601_ _g4042440605_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4041940629_ _L40407_)))))))
                                    _tl3979340404_)))
                               (_g3977540380_ _g3978640384_))
                           (_g3977540380_ _g3978640384_))
                       (_g3977540380_ _g3978640384_))))
               (_g3977540380_ _g3978640384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3977440633_
                                             _ptree39770_)))))))))))))))
                 (_loop-vector39497_
                  (lambda (_body39658_ _vars39660_ _K39661_)
                    (let ((_g3966439685_
                           (lambda (_g3966539681_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3966539681_))))
                      (let ((_g3966339726_
                             (lambda (_g3966539689_)
                               (if (gx#stx-pair? _g3966539689_)
                                   (let ((_e3967439692_
                                          (gx#syntax-e _g3966539689_)))
                                     (let ((_hd3967539696_
                                            (##car _e3967439692_))
                                           (_tl3967639699_
                                            (##cdr _e3967439692_)))
                                       (if (gx#stx-datum? _hd3967539696_)
                                           (if (equal? (gx#stx-e
                                                        _hd3967539696_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl3967639699_)
                                                   (let ((_e3967739702_
                                                          (gx#syntax-e
                                                           _tl3967639699_)))
                                                     (let ((_hd3967839706_
                                                            (##car _e3967739702_))
                                                           (_tl3967939709_
                                                            (##cdr _e3967739702_)))
                                                       (if (gx#stx-null?
                                                            _tl3967939709_)
                                                           ((lambda (_L39712_)
                                                              (_loop39495_
                                                               _L39712_
                                                               _vars39660_
                                                               _K39661_))
                                                            _hd3967839706_)
                                                           (_g3966439685_
                                                            _g3966539689_))))
                                                   (_g3966439685_
                                                    _g3966539689_))
                                               (_g3966439685_ _g3966539689_))
                                           (_g3966439685_ _g3966539689_))))
                                   (_g3966439685_ _g3966539689_)))))
                        (let ((_g3966239766_
                               (lambda (_g3966539730_)
                                 (if (gx#stx-pair? _g3966539730_)
                                     (let ((_e3966739733_
                                            (gx#syntax-e _g3966539730_)))
                                       (let ((_hd3966839737_
                                              (##car _e3966739733_))
                                             (_tl3966939740_
                                              (##cdr _e3966739733_)))
                                         (if (gx#stx-datum? _hd3966839737_)
                                             (if (equal? (gx#stx-e
                                                          _hd3966839737_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl3966939740_)
                                                     (let ((_e3967039743_
                                                            (gx#syntax-e
                                                             _tl3966939740_)))
                                                       (let ((_hd3967139747_
                                                              (##car _e3967039743_))
                                                             (_tl3967239750_
                                                              (##cdr _e3967039743_)))
                                                         (if (gx#stx-null?
                                                              _tl3967239750_)
                                                             ((lambda (_L39753_)
                                                                (_loop-list39498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L39753_
                         _vars39660_
                         _K39661_))
                      _hd3967139747_)
                     (_g3966339726_ _g3966539730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3966339726_
                                                      _g3966539730_))
                                                 (_g3966339726_ _g3966539730_))
                                             (_g3966339726_ _g3966539730_))))
                                     (_g3966339726_ _g3966539730_)))))
                          (_g3966239766_ _body39658_))))))
                 (_loop-list39498_
                  (lambda (_rest39588_ _vars39590_ _K39591_)
                    (let ((_g3959439606_
                           (lambda (_g3959539602_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3959539602_))))
                      (let ((_g3959339617_
                             (lambda (_g3959539610_)
                               ((lambda () (_K39591_ _vars39590_))))))
                        (let ((_g3959239654_
                               (lambda (_g3959539621_)
                                 (if (gx#stx-pair? _g3959539621_)
                                     (let ((_e3959839624_
                                            (gx#syntax-e _g3959539621_)))
                                       (let ((_hd3959939628_
                                              (##car _e3959839624_))
                                             (_tl3960039631_
                                              (##cdr _e3959839624_)))
                                         ((lambda (_L39634_ _L39636_)
                                            (_loop39495_
                                             _L39636_
                                             _vars39590_
                                             (lambda (_g3964839650_)
                                               (_loop-list39498_
                                                _L39634_
                                                _g3964839650_
                                                _K39591_))))
                                          _tl3960039631_
                                          _hd3959939628_)))
                                     (_g3959339617_ _g3959539621_)))))
                          (_g3959239654_ _rest39588_))))))
                 (_loop-class-list39499_
                  (lambda (_rest39501_ _vars39503_ _K39504_)
                    (let ((_g3950739522_
                           (lambda (_g3950839518_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3950839518_))))
                      (let ((_g3950639533_
                             (lambda (_g3950839526_)
                               ((lambda () (_K39504_ _vars39503_))))))
                        (let ((_g3950539584_
                               (lambda (_g3950839537_)
                                 (if (gx#stx-pair? _g3950839537_)
                                     (let ((_e3951139540_
                                            (gx#syntax-e _g3950839537_)))
                                       (let ((_hd3951239544_
                                              (##car _e3951139540_))
                                             (_tl3951339547_
                                              (##cdr _e3951139540_)))
                                         (if (gx#stx-pair? _tl3951339547_)
                                             (let ((_e3951439550_
                                                    (gx#syntax-e
                                                     _tl3951339547_)))
                                               (let ((_hd3951539554_
                                                      (##car _e3951439550_))
                                                     (_tl3951639557_
                                                      (##cdr _e3951439550_)))
                                                 ((lambda (_L39560_ _L39562_)
                                                    (_loop39495_
                                                     _L39562_
                                                     _vars39503_
                                                     (lambda (_g3957839580_)
                                                       (_loop-class-list39499_
                                                        _L39560_
                                                        _g3957839580_
                                                        _K39504_))))
                                                  _tl3951639557_
                                                  _hd3951539554_)))
                                             (_g3950639533_ _g3950839537_))))
                                     (_g3950639533_ _g3950839537_)))))
                          (_g3950539584_ _rest39501_)))))))
          (_loop39495_ _ptree39492_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx36405_ _tgt36407_ _ptree36408_ _K36409_ _E36410_)
        (letrec ((_generate136412_
                  (lambda (_tgt37942_ _ptree37944_ _K37945_ _E37946_)
                    (let ((_g3794837956_
                           (lambda (_g3794937952_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3794937952_))))
                      (let ((_g3794739488_
                             (lambda (_g3794937960_)
                               ((lambda (_L37963_)
                                  (let ()
                                    (let ((_g3798938104_
                                           (lambda (_g3799038100_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g3799038100_))))
                                      (let ((_g3798838125_
                                             (lambda (_g3799038108_)
                                               (if (gx#stx-pair? _g3799038108_)
                                                   (let ((_e3809638111_
                                                          (gx#syntax-e
                                                           _g3799038108_)))
                                                     (let ((_hd3809738115_
                                                            (##car _e3809638111_))
                                                           (_tl3809838118_
                                                            (##cdr _e3809638111_)))
                                                       (if (gx#stx-datum?
                                                            _hd3809738115_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd3809738115_)
                               'any:)
                       (if (gx#stx-null? _tl3809838118_)
                           ((lambda () _K37945_))
                           (_g3798938104_ _g3799038108_))
                       (_g3798938104_ _g3799038108_))
                   (_g3798938104_ _g3799038108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3798938104_
                                                    _g3799038108_)))))
                                        (let ((_g3798738168_
                                               (lambda (_g3799038129_)
                                                 (if (gx#stx-pair?
                                                      _g3799038129_)
                                                     (let ((_e3809038132_
                                                            (gx#syntax-e
                                                             _g3799038129_)))
                                                       (let ((_hd3809138136_
                                                              (##car _e3809038132_))
                                                             (_tl3809238139_
                                                              (##cdr _e3809038132_)))
                                                         (if (gx#stx-datum?
                                                              _hd3809138136_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd3809138136_)
                                 'var:)
                         (if (gx#stx-pair? _tl3809238139_)
                             (let ((_e3809338142_
                                    (gx#syntax-e _tl3809238139_)))
                               (let ((_hd3809438146_ (##car _e3809338142_))
                                     (_tl3809538149_ (##cdr _e3809338142_)))
                                 (if (gx#stx-null? _tl3809538149_)
                                     ((lambda (_L38152_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L38152_
                                                                (cons _L37963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K37945_ '()))))
                                      _hd3809438146_)
                                     (_g3798838125_ _g3799038129_))))
                             (_g3798838125_ _g3799038129_))
                         (_g3798838125_ _g3799038129_))
                     (_g3798838125_ _g3799038129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3798838125_
                                                      _g3799038129_)))))
                                          (let ((_g3798638250_
                                                 (lambda (_g3799038172_)
                                                   (if (gx#stx-pair?
                                                        _g3799038172_)
                                                       (let ((_e3808338175_
                                                              (gx#syntax-e
                                                               _g3799038172_)))
                                                         (let ((_hd3808438179_
                                                                (##car _e3808338175_))
                                                               (_tl3808538182_
                                                                (##cdr _e3808338175_)))
                                                           (if (gx#stx-datum?
                                                                _hd3808438179_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd3808438179_)
                                   'datum:)
                           (if (gx#stx-pair? _tl3808538182_)
                               (let ((_e3808638185_
                                      (gx#syntax-e _tl3808538182_)))
                                 (let ((_hd3808738189_ (##car _e3808638185_))
                                       (_tl3808838192_ (##cdr _e3808638185_)))
                                   (if (gx#stx-null? _tl3808838192_)
                                       ((lambda (_L38195_)
                                          (let ((_g3820838216_
                                                 (lambda (_g3820938212_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g3820938212_))))
                                            (let ((_g3820738235_
                                                   (lambda (_g3820938220_)
                                                     ((lambda (_L38223_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons _L38223_
                                    (cons _L37963_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L38195_ '()))
                                                '())))
                              (cons _K37945_ (cons _E37946_ '()))))))
              _g3820938220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3820738235_
                                               (let ((_e38239_
                                                      (gx#stx-e _L38195_)))
                                                 (if (let ((_$e38242_
                                                            (symbol? _e38239_)))
                                                       (if _$e38242_
                                                           _$e38242_
                                                           (let ((_$e38246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword? _e38239_)))
                     (if _$e38246_ _$e38246_ (immediate? _e38239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##eq?)
                                                     (if (number? _e38239_)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eqv?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))))
                                        _hd3808738189_)
                                       (_g3798738168_ _g3799038172_))))
                               (_g3798738168_ _g3799038172_))
                           (_g3798738168_ _g3799038172_))
                       (_g3798738168_ _g3799038172_))))
               (_g3798738168_ _g3799038172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g3798538304_
                                                   (lambda (_g3799038254_)
                                                     (if (gx#stx-pair?
                                                          _g3799038254_)
                                                         (let ((_e3807338257_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3799038254_)))
                   (let ((_hd3807438261_ (##car _e3807338257_))
                         (_tl3807538264_ (##cdr _e3807338257_)))
                     (if (gx#stx-datum? _hd3807438261_)
                         (if (equal? (gx#stx-e _hd3807438261_) 'class:)
                             (if (gx#stx-pair? _tl3807538264_)
                                 (let ((_e3807638267_
                                        (gx#syntax-e _tl3807538264_)))
                                   (let ((_hd3807738271_ (##car _e3807638267_))
                                         (_tl3807838274_
                                          (##cdr _e3807638267_)))
                                     (if (gx#stx-pair? _tl3807838274_)
                                         (let ((_e3807938277_
                                                (gx#syntax-e _tl3807838274_)))
                                           (let ((_hd3808038281_
                                                  (##car _e3807938277_))
                                                 (_tl3808138284_
                                                  (##cdr _e3807938277_)))
                                             (if (gx#stx-null? _tl3808138284_)
                                                 ((lambda (_L38287_ _L38289_)
                                                    (_generate-class36418_
                                                     (gx#stx-e _L38289_)
                                                     _tgt37942_
                                                     _L38287_
                                                     _K37945_
                                                     _E37946_))
                                                  _hd3808038281_
                                                  _hd3807738271_)
                                                 (_g3798638250_
                                                  _g3799038254_))))
                                         (_g3798638250_ _g3799038254_))))
                                 (_g3798638250_ _g3799038254_))
                             (_g3798638250_ _g3799038254_))
                         (_g3798638250_ _g3799038254_))))
                 (_g3798638250_ _g3799038254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g3798438358_
                                                     (lambda (_g3799038308_)
                                                       (if (gx#stx-pair?
                                                            _g3799038308_)
                                                           (let ((_e3806238311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g3799038308_)))
                     (let ((_hd3806338315_ (##car _e3806238311_))
                           (_tl3806438318_ (##cdr _e3806238311_)))
                       (if (gx#stx-datum? _hd3806338315_)
                           (if (equal? (gx#stx-e _hd3806338315_) 'struct:)
                               (if (gx#stx-pair? _tl3806438318_)
                                   (let ((_e3806538321_
                                          (gx#syntax-e _tl3806438318_)))
                                     (let ((_hd3806638325_
                                            (##car _e3806538321_))
                                           (_tl3806738328_
                                            (##cdr _e3806538321_)))
                                       (if (gx#stx-pair? _tl3806738328_)
                                           (let ((_e3806838331_
                                                  (gx#syntax-e
                                                   _tl3806738328_)))
                                             (let ((_hd3806938335_
                                                    (##car _e3806838331_))
                                                   (_tl3807038338_
                                                    (##cdr _e3806838331_)))
                                               (if (gx#stx-null?
                                                    _tl3807038338_)
                                                   ((lambda (_L38341_ _L38343_)
                                                      (_generate-struct36417_
                                                       (gx#stx-e _L38343_)
                                                       _tgt37942_
                                                       _L38341_
                                                       _K37945_
                                                       _E37946_))
                                                    _hd3806938335_
                                                    _hd3806638325_)
                                                   (_g3798538304_
                                                    _g3799038308_))))
                                           (_g3798538304_ _g3799038308_))))
                                   (_g3798538304_ _g3799038308_))
                               (_g3798538304_ _g3799038308_))
                           (_g3798538304_ _g3799038308_))))
                   (_g3798538304_ _g3799038308_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g3798338536_
                                                       (lambda (_g3799038362_)
                                                         (if (gx#stx-pair?
                                                              _g3799038362_)
                                                             (let ((_e3805438365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g3799038362_)))
                       (let ((_hd3805538369_ (##car _e3805438365_))
                             (_tl3805638372_ (##cdr _e3805438365_)))
                         (if (gx#stx-datum? _hd3805538369_)
                             (if (equal? (gx#stx-e _hd3805538369_) 'vector:)
                                 (if (gx#stx-pair? _tl3805638372_)
                                     (let ((_e3805738375_
                                            (gx#syntax-e _tl3805638372_)))
                                       (let ((_hd3805838379_
                                              (##car _e3805738375_))
                                             (_tl3805938382_
                                              (##cdr _e3805738375_)))
                                         (if (gx#stx-null? _tl3805938382_)
                                             ((lambda (_L38385_)
                                                (let ((_g3839938420_
                                                       (lambda (_g3840038416_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g3840038416_))))
                                                  (let ((_g3839838461_
                                                         (lambda (_g3840038424_)
                                                           (if (gx#stx-pair?
                                                                _g3840038424_)
                                                               (let ((_e3840938427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g3840038424_)))
                         (let ((_hd3841038431_ (##car _e3840938427_))
                               (_tl3841138434_ (##cdr _e3840938427_)))
                           (if (gx#stx-datum? _hd3841038431_)
                               (if (equal? (gx#stx-e _hd3841038431_) 'list:)
                                   (if (gx#stx-pair? _tl3841138434_)
                                       (let ((_e3841238437_
                                              (gx#syntax-e _tl3841138434_)))
                                         (let ((_hd3841338441_
                                                (##car _e3841238437_))
                                               (_tl3841438444_
                                                (##cdr _e3841238437_)))
                                           (if (gx#stx-null? _tl3841438444_)
                                               ((lambda (_L38447_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector?)
                            (cons _L37963_ '()))
                      (cons (_generate-list-vector36416_
                             _tgt37942_
                             _L38447_
                             (gx#datum->syntax '#f 'subvector->list)
                             '0
                             _K37945_
                             _E37946_)
                            (cons _E37946_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd3841338441_)
                                               (_g3839938420_ _g3840038424_))))
                                       (_g3839938420_ _g3840038424_))
                                   (_g3839938420_ _g3840038424_))
                               (_g3839938420_ _g3840038424_))))
                       (_g3839938420_ _g3840038424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g3839738532_
                                                           (lambda (_g3840038465_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3840038465_)
                         (let ((_e3840238468_ (gx#syntax-e _g3840038465_)))
                           (let ((_hd3840338472_ (##car _e3840238468_))
                                 (_tl3840438475_ (##cdr _e3840238468_)))
                             (if (gx#stx-datum? _hd3840338472_)
                                 (if (equal? (gx#stx-e _hd3840338472_)
                                             'simple:)
                                     (if (gx#stx-pair? _tl3840438475_)
                                         (let ((_e3840538478_
                                                (gx#syntax-e _tl3840438475_)))
                                           (let ((_hd3840638482_
                                                  (##car _e3840538478_))
                                                 (_tl3840738485_
                                                  (##cdr _e3840538478_)))
                                             (if (gx#stx-null? _tl3840738485_)
                                                 ((lambda (_L38488_)
                                                    (let ((_g3850138509_
                                                           (lambda (_g3850238505_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g3850238505_))))
                                                      (let ((_g3850038528_
                                                             (lambda (_g3850238513_)
                                                               ((lambda (_L38516_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector?)
                                                          (cons _L37963_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _L37963_ '()))
                              (cons _L38516_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (_generate-simple-vector36415_
                                               _tgt37942_
                                               _L38488_
                                               '0
                                               _K37945_
                                               _E37946_)
                                              (cons _E37946_ '()))))))
                        _g3850238513_))))
                (_g3850038528_ (gx#stx-length _L38488_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd3840638482_)
                                                 (_g3839838461_
                                                  _g3840038465_))))
                                         (_g3839838461_ _g3840038465_))
                                     (_g3839838461_ _g3840038465_))
                                 (_g3839838461_ _g3840038465_))))
                         (_g3839838461_ _g3840038465_)))))
              (_g3839738532_ _L38385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd3805838379_)
                                             (_g3798438358_ _g3799038362_))))
                                     (_g3798438358_ _g3799038362_))
                                 (_g3798438358_ _g3799038362_))
                             (_g3798438358_ _g3799038362_))))
                     (_g3798438358_ _g3799038362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g3798238714_
                                                         (lambda (_g3799038540_)
                                                           (if (gx#stx-pair?
                                                                _g3799038540_)
                                                               (let ((_e3804738543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g3799038540_)))
                         (let ((_hd3804838547_ (##car _e3804738543_))
                               (_tl3804938550_ (##cdr _e3804738543_)))
                           (if (gx#stx-datum? _hd3804838547_)
                               (if (equal? (gx#stx-e _hd3804838547_) 'values:)
                                   (if (gx#stx-pair? _tl3804938550_)
                                       (let ((_e3805038553_
                                              (gx#syntax-e _tl3804938550_)))
                                         (let ((_hd3805138557_
                                                (##car _e3805038553_))
                                               (_tl3805238560_
                                                (##cdr _e3805038553_)))
                                           (if (gx#stx-null? _tl3805238560_)
                                               ((lambda (_L38563_)
                                                  (let ((_g3857738598_
                                                         (lambda (_g3857838594_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g3857838594_))))
                                                    (let ((_g3857638639_
                                                           (lambda (_g3857838602_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3857838602_)
                         (let ((_e3858738605_ (gx#syntax-e _g3857838602_)))
                           (let ((_hd3858838609_ (##car _e3858738605_))
                                 (_tl3858938612_ (##cdr _e3858738605_)))
                             (if (gx#stx-datum? _hd3858838609_)
                                 (if (equal? (gx#stx-e _hd3858838609_) 'list:)
                                     (if (gx#stx-pair? _tl3858938612_)
                                         (let ((_e3859038615_
                                                (gx#syntax-e _tl3858938612_)))
                                           (let ((_hd3859138619_
                                                  (##car _e3859038615_))
                                                 (_tl3859238622_
                                                  (##cdr _e3859038615_)))
                                             (if (gx#stx-null? _tl3859238622_)
                                                 ((lambda (_L38625_)
                                                    (_generate-list-vector36416_
                                                     _tgt37942_
                                                     _L38625_
                                                     (gx#datum->syntax
                                                      '#f
                                                      'values->list)
                                                     '0
                                                     _K37945_
                                                     _E37946_))
                                                  _hd3859138619_)
                                                 (_g3857738598_
                                                  _g3857838602_))))
                                         (_g3857738598_ _g3857838602_))
                                     (_g3857738598_ _g3857838602_))
                                 (_g3857738598_ _g3857838602_))))
                         (_g3857738598_ _g3857838602_)))))
              (let ((_g3857538710_
                     (lambda (_g3857838643_)
                       (if (gx#stx-pair? _g3857838643_)
                           (let ((_e3858038646_ (gx#syntax-e _g3857838643_)))
                             (let ((_hd3858138650_ (##car _e3858038646_))
                                   (_tl3858238653_ (##cdr _e3858038646_)))
                               (if (gx#stx-datum? _hd3858138650_)
                                   (if (equal? (gx#stx-e _hd3858138650_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl3858238653_)
                                           (let ((_e3858338656_
                                                  (gx#syntax-e
                                                   _tl3858238653_)))
                                             (let ((_hd3858438660_
                                                    (##car _e3858338656_))
                                                   (_tl3858538663_
                                                    (##cdr _e3858338656_)))
                                               (if (gx#stx-null?
                                                    _tl3858538663_)
                                                   ((lambda (_L38666_)
                                                      (let ((_g3867938687_
                                                             (lambda (_g3868038683_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g3868038683_))))
                                                        (let ((_g3867838706_
                                                               (lambda (_g3868038691_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L38694_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'values-count)
                                                            (cons _L37963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L38694_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector36415_
                                                 _tgt37942_
                                                 _L38666_
                                                 '0
                                                 _K37945_
                                                 _E37946_)
                                                (cons _E37946_ '()))))))
                          _g3868038691_))))
                  (_g3867838706_ (gx#stx-length _L38666_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3858438660_)
                                                   (_g3857638639_
                                                    _g3857838643_))))
                                           (_g3857638639_ _g3857838643_))
                                       (_g3857638639_ _g3857838643_))
                                   (_g3857638639_ _g3857838643_))))
                           (_g3857638639_ _g3857838643_)))))
                (_g3857538710_ _L38563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd3805138557_)
                                               (_g3798338536_ _g3799038540_))))
                                       (_g3798338536_ _g3799038540_))
                                   (_g3798338536_ _g3799038540_))
                               (_g3798338536_ _g3799038540_))))
                       (_g3798338536_ _g3799038540_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g3798138785_
                                                           (lambda (_g3799038718_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3799038718_)
                         (let ((_e3804038721_ (gx#syntax-e _g3799038718_)))
                           (let ((_hd3804138725_ (##car _e3804038721_))
                                 (_tl3804238728_ (##cdr _e3804038721_)))
                             (if (gx#stx-datum? _hd3804138725_)
                                 (if (equal? (gx#stx-e _hd3804138725_) 'box:)
                                     (if (gx#stx-pair? _tl3804238728_)
                                         (let ((_e3804338731_
                                                (gx#syntax-e _tl3804238728_)))
                                           (let ((_hd3804438735_
                                                  (##car _e3804338731_))
                                                 (_tl3804538738_
                                                  (##cdr _e3804338731_)))
                                             (if (gx#stx-null? _tl3804538738_)
                                                 ((lambda (_L38741_)
                                                    (let ((_g3875438762_
                                                           (lambda (_g3875538758_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g3875538758_))))
                                                      (let ((_g3875338781_
                                                             (lambda (_g3875538766_)
                                                               ((lambda (_L38769_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##box?)
                                              (cons _L37963_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L38769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##unbox)
                                          (cons _L37963_ '()))
                                    '()))
                        '())
                  (cons (_generate136412_ _L38769_ _L38741_ _K37945_ _E37946_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _E37946_ '()))))))
                        _g3875538766_))))
                (_g3875338781_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd3804438735_)
                                                 (_g3798238714_
                                                  _g3799038718_))))
                                         (_g3798238714_ _g3799038718_))
                                     (_g3798238714_ _g3799038718_))
                                 (_g3798238714_ _g3799038718_))))
                         (_g3798238714_ _g3799038718_)))))
              (let ((_g3798038839_
                     (lambda (_g3799038789_)
                       (if (gx#stx-pair? _g3799038789_)
                           (let ((_e3803038792_ (gx#syntax-e _g3799038789_)))
                             (let ((_hd3803138796_ (##car _e3803038792_))
                                   (_tl3803238799_ (##cdr _e3803038792_)))
                               (if (gx#stx-datum? _hd3803138796_)
                                   (if (equal? (gx#stx-e _hd3803138796_)
                                               'splice:)
                                       (if (gx#stx-pair? _tl3803238799_)
                                           (let ((_e3803338802_
                                                  (gx#syntax-e
                                                   _tl3803238799_)))
                                             (let ((_hd3803438806_
                                                    (##car _e3803338802_))
                                                   (_tl3803538809_
                                                    (##cdr _e3803338802_)))
                                               (if (gx#stx-pair?
                                                    _tl3803538809_)
                                                   (let ((_e3803638812_
                                                          (gx#syntax-e
                                                           _tl3803538809_)))
                                                     (let ((_hd3803738816_
                                                            (##car _e3803638812_))
                                                           (_tl3803838819_
                                                            (##cdr _e3803638812_)))
                                                       (if (gx#stx-null?
                                                            _tl3803838819_)
                                                           ((lambda (_L38822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L38824_)
                      (_generate-splice36414_
                       _tgt37942_
                       _L38824_
                       _L38822_
                       _K37945_
                       _E37946_))
                    _hd3803738816_
                    _hd3803438806_)
                   (_g3798138785_ _g3799038789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3798138785_
                                                    _g3799038789_))))
                                           (_g3798138785_ _g3799038789_))
                                       (_g3798138785_ _g3799038789_))
                                   (_g3798138785_ _g3799038789_))))
                           (_g3798138785_ _g3799038789_)))))
                (let ((_g3797938860_
                       (lambda (_g3799038843_)
                         (if (gx#stx-pair? _g3799038843_)
                             (let ((_e3802538846_ (gx#syntax-e _g3799038843_)))
                               (let ((_hd3802638850_ (##car _e3802538846_))
                                     (_tl3802738853_ (##cdr _e3802538846_)))
                                 (if (gx#stx-datum? _hd3802638850_)
                                     (if (equal? (gx#stx-e _hd3802638850_)
                                                 'null:)
                                         (if (gx#stx-null? _tl3802738853_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##null?)
                          (cons _L37963_ '()))
                    (cons _K37945_ (cons _E37946_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3798038839_ _g3799038843_))
                                         (_g3798038839_ _g3799038843_))
                                     (_g3798038839_ _g3799038843_))))
                             (_g3798038839_ _g3799038843_)))))
                  (let ((_g3797838979_
                         (lambda (_g3799038864_)
                           (if (gx#stx-pair? _g3799038864_)
                               (let ((_e3801638867_
                                      (gx#syntax-e _g3799038864_)))
                                 (let ((_hd3801738871_ (##car _e3801638867_))
                                       (_tl3801838874_ (##cdr _e3801638867_)))
                                   (if (gx#stx-datum? _hd3801738871_)
                                       (if (equal? (gx#stx-e _hd3801738871_)
                                                   'cons:)
                                           (if (gx#stx-pair? _tl3801838874_)
                                               (let ((_e3801938877_
                                                      (gx#syntax-e
                                                       _tl3801838874_)))
                                                 (let ((_hd3802038881_
                                                        (##car _e3801938877_))
                                                       (_tl3802138884_
                                                        (##cdr _e3801938877_)))
                                                   (if (gx#stx-pair?
                                                        _tl3802138884_)
                                                       (let ((_e3802238887_
                                                              (gx#syntax-e
                                                               _tl3802138884_)))
                                                         (let ((_hd3802338891_
                                                                (##car _e3802238887_))
                                                               (_tl3802438894_
                                                                (##cdr _e3802238887_)))
                                                           (if (gx#stx-null?
                                                                _tl3802438894_)
                                                               ((lambda (_L38897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L38899_)
                          (let ((_g3891538930_
                                 (lambda (_g3891638926_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g3891638926_))))
                            (let ((_g3891438975_
                                   (lambda (_g3891638934_)
                                     (if (gx#stx-pair? _g3891638934_)
                                         (let ((_e3891938937_
                                                (gx#syntax-e _g3891638934_)))
                                           (let ((_hd3892038941_
                                                  (##car _e3891938937_))
                                                 (_tl3892138944_
                                                  (##cdr _e3891938937_)))
                                             (if (gx#stx-pair? _tl3892138944_)
                                                 (let ((_e3892238947_
                                                        (gx#syntax-e
                                                         _tl3892138944_)))
                                                   (let ((_hd3892338951_
                                                          (##car _e3892238947_))
                                                         (_tl3892438954_
                                                          (##cdr _e3892238947_)))
                                                     (if (gx#stx-null?
                                                          _tl3892438954_)
                                                         ((lambda (_L38957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L38959_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f '##pair?)
                                        (cons _L37963_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L38959_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##car)
                                    (cons _L37963_ '()))
                              '()))
                  (cons (cons _L38957_
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons _L37963_ '()))
                                    '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_generate136412_
                                                           _L38959_
                                                           _L38899_
                                                           (_generate136412_
                                                            _L38957_
                                                            _L38897_
                                                            _K37945_
                                                            _E37946_)
                                                           _E37946_)
                                                          '())))
                                        (cons _E37946_ '()))))))
                  _hd3892338951_
                  _hd3892038941_)
                 (_g3891538930_ _g3891638934_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3891538930_
                                                  _g3891638934_))))
                                         (_g3891538930_ _g3891638934_)))))
                              (_g3891438975_
                               (list (gx#genident 'hd) (gx#genident 'tl))))))
                        _hd3802338891_
                        _hd3802038881_)
                       (_g3797938860_ _g3799038864_))))
               (_g3797938860_ _g3799038864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3797938860_ _g3799038864_))
                                           (_g3797938860_ _g3799038864_))
                                       (_g3797938860_ _g3799038864_))))
                               (_g3797938860_ _g3799038864_)))))
                    (let ((_g3797739019_
                           (lambda (_g3799038983_)
                             (if (gx#stx-pair? _g3799038983_)
                                 (let ((_e3800838986_
                                        (gx#syntax-e _g3799038983_)))
                                   (let ((_hd3800938990_ (##car _e3800838986_))
                                         (_tl3801038993_
                                          (##cdr _e3800838986_)))
                                     (if (gx#stx-datum? _hd3800938990_)
                                         (if (equal? (gx#stx-e _hd3800938990_)
                                                     'not:)
                                             (if (gx#stx-pair? _tl3801038993_)
                                                 (let ((_e3801138996_
                                                        (gx#syntax-e
                                                         _tl3801038993_)))
                                                   (let ((_hd3801239000_
                                                          (##car _e3801138996_))
                                                         (_tl3801339003_
                                                          (##cdr _e3801138996_)))
                                                     (if (gx#stx-null?
                                                          _tl3801339003_)
                                                         ((lambda (_L39006_)
                                                            (_generate136412_
                                                             _tgt37942_
                                                             _L39006_
                                                             _E37946_
                                                             _K37945_))
                                                          _hd3801239000_)
                                                         (_g3797838979_
                                                          _g3799038983_))))
                                                 (_g3797838979_ _g3799038983_))
                                             (_g3797838979_ _g3799038983_))
                                         (_g3797838979_ _g3799038983_))))
                                 (_g3797838979_ _g3799038983_)))))
                      (let ((_g3797639107_
                             (lambda (_g3799039023_)
                               (if (gx#stx-pair? _g3799039023_)
                                   (let ((_e3800439026_
                                          (gx#syntax-e _g3799039023_)))
                                     (let ((_hd3800539030_
                                            (##car _e3800439026_))
                                           (_tl3800639033_
                                            (##cdr _e3800439026_)))
                                       (if (gx#stx-datum? _hd3800539030_)
                                           (if (equal? (gx#stx-e
                                                        _hd3800539030_)
                                                       'or:)
                                               ((lambda (_L39036_)
                                                  (let ((_g3904839060_
                                                         (lambda (_g3904939056_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g3904939056_))))
                                                    (let ((_g3904739071_
                                                           (lambda (_g3904939064_)
                                                             ((lambda ()
                                                                _E37946_)))))
                                                      (let ((_g3904639103_
                                                             (lambda (_g3904939075_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3904939075_)
                           (let ((_e3905239078_ (gx#syntax-e _g3904939075_)))
                             (let ((_hd3905339082_ (##car _e3905239078_))
                                   (_tl3905439085_ (##cdr _e3905239078_)))
                               ((lambda (_L39088_ _L39090_)
                                  (_generate136412_
                                   _tgt37942_
                                   _L39090_
                                   _K37945_
                                   (_generate136412_
                                    _tgt37942_
                                    (cons 'or: _L39088_)
                                    _K37945_
                                    _E37946_)))
                                _tl3905439085_
                                _hd3905339082_)))
                           (_g3904739071_ _g3904939075_)))))
                (_g3904639103_ _L39036_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl3800639033_)
                                               (_g3797739019_ _g3799039023_))
                                           (_g3797739019_ _g3799039023_))))
                                   (_g3797739019_ _g3799039023_)))))
                        (let ((_g3797539195_
                               (lambda (_g3799039111_)
                                 (if (gx#stx-pair? _g3799039111_)
                                     (let ((_e3800039114_
                                            (gx#syntax-e _g3799039111_)))
                                       (let ((_hd3800139118_
                                              (##car _e3800039114_))
                                             (_tl3800239121_
                                              (##cdr _e3800039114_)))
                                         (if (gx#stx-datum? _hd3800139118_)
                                             (if (equal? (gx#stx-e
                                                          _hd3800139118_)
                                                         'and:)
                                                 ((lambda (_L39124_)
                                                    (let ((_g3913639148_
                                                           (lambda (_g3913739144_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g3913739144_))))
                                                      (let ((_g3913539159_
                                                             (lambda (_g3913739152_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K37945_)))))
                (let ((_g3913439191_
                       (lambda (_g3913739163_)
                         (if (gx#stx-pair? _g3913739163_)
                             (let ((_e3914039166_ (gx#syntax-e _g3913739163_)))
                               (let ((_hd3914139170_ (##car _e3914039166_))
                                     (_tl3914239173_ (##cdr _e3914039166_)))
                                 ((lambda (_L39176_ _L39178_)
                                    (_generate136412_
                                     _tgt37942_
                                     _L39178_
                                     (_generate136412_
                                      _tgt37942_
                                      (cons 'and: _L39176_)
                                      _K37945_
                                      _E37946_)
                                     _E37946_))
                                  _tl3914239173_
                                  _hd3914139170_)))
                             (_g3913539159_ _g3913739163_)))))
                  (_g3913439191_ _L39124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl3800239121_)
                                                 (_g3797639107_ _g3799039111_))
                                             (_g3797639107_ _g3799039111_))))
                                     (_g3797639107_ _g3799039111_)))))
                          (let ((_g3797439484_
                                 (lambda (_g3799039199_)
                                   (if (gx#stx-pair? _g3799039199_)
                                       (let ((_e3799339202_
                                              (gx#syntax-e _g3799039199_)))
                                         (let ((_hd3799439206_
                                                (##car _e3799339202_))
                                               (_tl3799539209_
                                                (##cdr _e3799339202_)))
                                           (if (gx#stx-datum? _hd3799439206_)
                                               (if (equal? (gx#stx-e
                                                            _hd3799439206_)
                                                           '?:)
                                                   (if (gx#stx-pair?
                                                        _tl3799539209_)
                                                       (let ((_e3799639212_
                                                              (gx#syntax-e
                                                               _tl3799539209_)))
                                                         (let ((_hd3799739216_
                                                                (##car _e3799639212_))
                                                               (_tl3799839219_
                                                                (##cdr _e3799639212_)))
                                                           ((lambda (_L39222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L39224_)
                      (let ((_g3924039272_
                             (lambda (_g3924139268_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3924139268_))))
                        (let ((_g3923939370_
                               (lambda (_g3924139276_)
                                 (if (gx#stx-pair? _g3924139276_)
                                     (let ((_e3925539279_
                                            (gx#syntax-e _g3924139276_)))
                                       (let ((_hd3925639283_
                                              (##car _e3925539279_))
                                             (_tl3925739286_
                                              (##cdr _e3925539279_)))
                                         (if (gx#stx-datum? _hd3925639283_)
                                             (if (equal? (gx#stx-e
                                                          _hd3925639283_)
                                                         '::)
                                                 (if (gx#stx-pair?
                                                      _tl3925739286_)
                                                     (let ((_e3925839289_
                                                            (gx#syntax-e
                                                             _tl3925739286_)))
                                                       (let ((_hd3925939293_
                                                              (##car _e3925839289_))
                                                             (_tl3926039296_
                                                              (##cdr _e3925839289_)))
                                                         (if (gx#stx-pair?
                                                              _tl3926039296_)
                                                             (let ((_e3926139299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl3926039296_)))
                       (let ((_hd3926239303_ (##car _e3926139299_))
                             (_tl3926339306_ (##cdr _e3926139299_)))
                         (if (gx#stx-datum? _hd3926239303_)
                             (if (equal? (gx#stx-e _hd3926239303_) '=>:)
                                 (if (gx#stx-pair? _tl3926339306_)
                                     (let ((_e3926439309_
                                            (gx#syntax-e _tl3926339306_)))
                                       (let ((_hd3926539313_
                                              (##car _e3926439309_))
                                             (_tl3926639316_
                                              (##cdr _e3926439309_)))
                                         (if (gx#stx-null? _tl3926639316_)
                                             ((lambda (_L39319_ _L39321_)
                                                (let ((_g3933939347_
                                                       (lambda (_g3934039343_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g3934039343_))))
                                                  (let ((_g3933839366_
                                                         (lambda (_g3934039351_)
                                                           ((lambda (_L39354_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'if)
                              (cons (cons (gx#datum->syntax '#f '?)
                                          (cons _L39224_ (cons _L37963_ '())))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L39354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L39321_ (cons _L37963_ '())) '()))
                    '())
              (cons (_generate136412_ _L39354_ _L39319_ _K37945_ _E37946_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E37946_ '()))))))
                    _g3934039351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3933839366_
                                                     (gx#genident 'e)))))
                                              _hd3926539313_
                                              _hd3925939293_)
                                             (_g3924039272_ _g3924139276_))))
                                     (_g3924039272_ _g3924139276_))
                                 (_g3924039272_ _g3924139276_))
                             (_g3924039272_ _g3924139276_))))
                     (_g3924039272_ _g3924139276_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3924039272_
                                                      _g3924139276_))
                                                 (_g3924039272_ _g3924139276_))
                                             (_g3924039272_ _g3924139276_))))
                                     (_g3924039272_ _g3924139276_)))))
                          (let ((_g3923839441_
                                 (lambda (_g3924139374_)
                                   (if (gx#stx-pair? _g3924139374_)
                                       (let ((_e3924739377_
                                              (gx#syntax-e _g3924139374_)))
                                         (let ((_hd3924839381_
                                                (##car _e3924739377_))
                                               (_tl3924939384_
                                                (##cdr _e3924739377_)))
                                           (if (gx#stx-datum? _hd3924839381_)
                                               (if (equal? (gx#stx-e
                                                            _hd3924839381_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl3924939384_)
                                                       (let ((_e3925039387_
                                                              (gx#syntax-e
                                                               _tl3924939384_)))
                                                         (let ((_hd3925139391_
                                                                (##car _e3925039387_))
                                                               (_tl3925239394_
                                                                (##cdr _e3925039387_)))
                                                           (if (gx#stx-null?
                                                                _tl3925239394_)
                                                               ((lambda (_L39397_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g3941039418_
                                 (lambda (_g3941139414_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g3941139414_))))
                            (let ((_g3940939437_
                                   (lambda (_g3941139422_)
                                     ((lambda (_L39425_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L39425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L39224_ (cons _L37963_ '())) '()))
                    '())
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons _L39425_
                                (cons (_generate136412_
                                       _L39425_
                                       _L39397_
                                       _K37945_
                                       _E37946_)
                                      (cons _E37946_ '()))))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g3941139422_))))
                              (_g3940939437_ (gx#genident 'e)))))
                        _hd3925139391_)
                       (_g3923939370_ _g3924139374_))))
               (_g3923939370_ _g3924139374_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3923939370_
                                                    _g3924139374_))
                                               (_g3923939370_ _g3924139374_))))
                                       (_g3923939370_ _g3924139374_)))))
                            (let ((_g3923739469_
                                   (lambda (_g3924139445_)
                                     (if (gx#stx-pair? _g3924139445_)
                                         (let ((_e3924339448_
                                                (gx#syntax-e _g3924139445_)))
                                           (let ((_hd3924439452_
                                                  (##car _e3924339448_))
                                                 (_tl3924539455_
                                                  (##cdr _e3924339448_)))
                                             (if (gx#stx-null? _tl3924539455_)
                                                 ((lambda (_L39458_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _L39224_ (cons _L37963_ '())))
                        (cons (_generate136412_
                               _tgt37942_
                               _L39458_
                               _K37945_
                               _E37946_)
                              (cons _E37946_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd3924439452_)
                                                 (_g3923839441_
                                                  _g3924139445_))))
                                         (_g3923839441_ _g3924139445_)))))
                              (let ((_g3923639480_
                                     (lambda (_g3924139473_)
                                       (if (gx#stx-null? _g3924139473_)
                                           ((lambda ()
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '?)
                        (cons _L39224_ (cons _L37963_ '())))
                  (cons _K37945_ (cons _E37946_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g3923739469_ _g3924139473_)))))
                                (_g3923639480_ _L39222_)))))))
                    _tl3799839219_
                    _hd3799739216_)))
               (_g3797539195_ _g3799039199_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3797539195_
                                                    _g3799039199_))
                                               (_g3797539195_ _g3799039199_))))
                                       (_g3797539195_ _g3799039199_)))))
                            (_g3797439484_ _ptree37944_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g3794937960_))))
                        (_g3794739488_ _tgt37942_)))))
                 (_generate-splice36414_
                  (lambda (_tgt37314_ _hd37316_ _rest37317_ _K37318_ _E37319_)
                    (let ((_g3732137338_
                           (lambda (_g3732237334_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3732237334_))))
                      (let ((_g3732037938_
                             (lambda (_g3732237342_)
                               (if (gx#stx-pair/null? _g3732237342_)
                                   (if (fx>= (gx#stx-length _g3732237342_) '0)
                                       (let ((_g47060_
                                              (gx#syntax-split-splice
                                               _g3732237342_
                                               '0)))
                                         (begin
                                           (let ((_g47061_
                                                  (values-count _g47060_)))
                                             (if (not (fx= _g47061_ 2))
                                                 (error "Context expects 2 values"
                                                        _g47061_)))
                                           (let ((_target3732437345_
                                                  (values-ref _g47060_ 0))
                                                 (_tl3732637348_
                                                  (values-ref _g47060_ 1)))
                                             (if (gx#stx-null? _tl3732637348_)
                                                 (letrec ((_loop3732737351_
                                                           (lambda (_hd3732537355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var3733137358_)
                     (if (gx#stx-pair? _hd3732537355_)
                         (let ((_e3732837361_ (gx#syntax-e _hd3732537355_)))
                           (let ((_lp-hd3732937365_ (##car _e3732837361_))
                                 (_lp-tl3733037368_ (##cdr _e3732837361_)))
                             (_loop3732737351_
                              _lp-tl3733037368_
                              (cons _lp-hd3732937365_ _var3733137358_))))
                         (let ((_var3733237371_ (reverse _var3733137358_)))
                           ((lambda (_L37375_)
                              (let ()
                                (let ((_g3739137408_
                                       (lambda (_g3739237404_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3739237404_))))
                                  (let ((_g3739037926_
                                         (lambda (_g3739237412_)
                                           (if (gx#stx-pair/null?
                                                _g3739237412_)
                                               (if (fx>= (gx#stx-length
                                                          _g3739237412_)
                                                         '0)
                                                   (let ((_g47062_
                                                          (gx#syntax-split-splice
                                                           _g3739237412_
                                                           '0)))
                                                     (begin
                                                       (let ((_g47063_
                                                              (values-count
                                                               _g47062_)))
                                                         (if (not (fx= _g47063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g47063_)))
               (let ((_target3739437415_ (values-ref _g47062_ 0))
                     (_tl3739637418_ (values-ref _g47062_ 1)))
                 (if (gx#stx-null? _tl3739637418_)
                     (letrec ((_loop3739737421_
                               (lambda (_hd3739537425_ _var-r3740137428_)
                                 (if (gx#stx-pair? _hd3739537425_)
                                     (let ((_e3739837431_
                                            (gx#syntax-e _hd3739537425_)))
                                       (let ((_lp-hd3739937435_
                                              (##car _e3739837431_))
                                             (_lp-tl3740037438_
                                              (##cdr _e3739837431_)))
                                         (_loop3739737421_
                                          _lp-tl3740037438_
                                          (cons _lp-hd3739937435_
                                                _var-r3740137428_))))
                                     (let ((_var-r3740237441_
                                            (reverse _var-r3740137428_)))
                                       ((lambda (_L37445_)
                                          (let ()
                                            (let ((_g3746237479_
                                                   (lambda (_g3746337475_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g3746337475_))))
                                              (let ((_g3746137914_
                                                     (lambda (_g3746337483_)
                                                       (if (gx#stx-pair/null?
                                                            _g3746337483_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3746337483_)
                             '0)
                       (let ((_g47064_
                              (gx#syntax-split-splice _g3746337483_ '0)))
                         (begin
                           (let ((_g47065_ (values-count _g47064_)))
                             (if (not (fx= _g47065_ 2))
                                 (error "Context expects 2 values" _g47065_)))
                           (let ((_target3746537486_ (values-ref _g47064_ 0))
                                 (_tl3746737489_ (values-ref _g47064_ 1)))
                             (if (gx#stx-null? _tl3746737489_)
                                 (letrec ((_loop3746837492_
                                           (lambda (_hd3746637496_
                                                    _init3747237499_)
                                             (if (gx#stx-pair? _hd3746637496_)
                                                 (let ((_e3746937502_
                                                        (gx#syntax-e
                                                         _hd3746637496_)))
                                                   (let ((_lp-hd3747037506_
                                                          (##car _e3746937502_))
                                                         (_lp-tl3747137509_
                                                          (##cdr _e3746937502_)))
                                                     (_loop3746837492_
                                                      _lp-tl3747137509_
                                                      (cons _lp-hd3747037506_
                                                            _init3747237499_))))
                                                 (let ((_init3747337512_
                                                        (reverse _init3747237499_)))
                                                   ((lambda (_L37516_)
                                                      (let ()
                                                        (let ((_g3753337541_
                                                               (lambda (_g3753437537_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3753437537_))))
                  (let ((_g3753237910_
                         (lambda (_g3753437545_)
                           ((lambda (_L37548_)
                              (let ()
                                (let ((_g3756137569_
                                       (lambda (_g3756237565_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3756237565_))))
                                  (let ((_g3756037906_
                                         (lambda (_g3756237573_)
                                           ((lambda (_L37576_)
                                              (let ()
                                                (let ((_g3758937597_
                                                       (lambda (_g3759037593_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g3759037593_))))
                                                  (let ((_g3758837902_
                                                         (lambda (_g3759037601_)
                                                           ((lambda (_L37604_)
                                                              (let ()
                                                                (let ((_g3761737625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g3761837621_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g3761837621_))))
                          (let ((_g3761637898_
                                 (lambda (_g3761837629_)
                                   ((lambda (_L37632_)
                                      (let ()
                                        (let ((_g3764537653_
                                               (lambda (_g3764637649_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g3764637649_))))
                                          (let ((_g3764437894_
                                                 (lambda (_g3764637657_)
                                                   ((lambda (_L37660_)
                                                      (let ()
                                                        (let ((_g3767337681_
                                                               (lambda (_g3767437677_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3767437677_))))
                  (let ((_g3767237890_
                         (lambda (_g3767437685_)
                           ((lambda (_L37688_)
                              (let ()
                                (let ((_g3770137709_
                                       (lambda (_g3770237705_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3770237705_))))
                                  (let ((_g3770037886_
                                         (lambda (_g3770237713_)
                                           ((lambda (_L37716_)
                                              (let ()
                                                (let ((_g3772937737_
                                                       (lambda (_g3773037733_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g3773037733_))))
                                                  (let ((_g3772837871_
                                                         (lambda (_g3773037741_)
                                                           ((lambda (_L37744_)
                                                              (let ()
                                                                (let ((_g3775737765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g3775837761_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g3775837761_))))
                          (let ((_g3775637859_
                                 (lambda (_g3775837769_)
                                   ((lambda (_L37772_)
                                      (let ()
                                        (let ((_g3778537793_
                                               (lambda (_g3778637789_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g3778637789_))))
                                          (let ((_g3778437855_
                                                 (lambda (_g3778637797_)
                                                   ((lambda (_L37800_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L37576_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L37688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g3781437825_ _g3781537828_)
                                     (cons _g3781437825_ _g3781537828_))
                                   '()
                                   _L37375_)))
                    (cons _L37716_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L37632_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L37660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L37688_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g3781637831_
                                                        _g3781737834_)
                                                 (cons _g3781637831_
                                                       _g3781737834_))
                                               '()
                                               _L37445_))))
                          (cons _L37800_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L37604_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L37688_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g3781837837_
                                                        _g3781937840_)
                                                 (cons _g3781837837_
                                                       _g3781937840_))
                                               '()
                                               _L37445_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L37688_ '()))
                                                  (cons (cons _L37632_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L37688_ '()))
                            (cons _L37688_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g3782037843_
                                                    _g3782137846_)
                                             (cons _g3782037843_
                                                   _g3782137846_))
                                           '()
                                           _L37445_)))))
                (cons _L37772_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L37604_
                                          (cons _L37548_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g3782237849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3782337852_)
                   (cons _g3782237849_ _g3782337852_))
                 '()
                 _L37516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3778637797_))))
                                            (_g3778437855_
                                             (_generate136412_
                                              _L37660_
                                              _hd37316_
                                              _L37744_
                                              _L37772_))))))
                                    _g3775837769_))))
                            (_g3775637859_
                             (cons _L37576_
                                   (cons _L37688_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g3786237865_
                                                           _g3786337868_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g3786237865_ '()))
                  _g3786337868_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L37445_)))))))))
                    _g3773037741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3772837871_
                                                     (cons _L37604_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L37688_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L37445_ _L37375_)
                           (foldr (lambda (_g3787437878_
                                           _g3787537881_
                                           _g3787637883_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g3787537881_
                                                      (cons _g3787437878_
                                                            '())))
                                          _g3787637883_))
                                  '()
                                  _L37445_
                                  _L37375_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g3770237713_))))
                                    (_g3770037886_
                                     (_generate136412_
                                      _L37688_
                                      _rest37317_
                                      _K37318_
                                      _E37319_))))))
                            _g3767437685_))))
                    (_g3767237890_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3764637657_))))
                                            (_g3764437894_
                                             (gx#genident 'hd))))))
                                    _g3761837629_))))
                            (_g3761637898_ (gx#genident 'splice-try))))))
                    _g3759037601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3758837902_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g3756237573_))))
                                    (_g3756037906_
                                     (gx#genident 'splice-rest))))))
                            _g3753437545_))))
                    (_g3753237910_ _tgt37314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init3747337512_))))))
                                   (_loop3746837492_ _target3746537486_ '()))
                                 (_g3746237479_ _g3746337483_)))))
                       (_g3746237479_ _g3746337483_))
                   (_g3746237479_ _g3746337483_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3746137914_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g3791737920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3791837923_)
                      (cons _g3791737920_ _g3791837923_))
                    '()
                    _L37375_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r3740237441_))))))
                       (_loop3739737421_ _target3739437415_ '()))
                     (_g3739137408_ _g3739237412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3739137408_
                                                    _g3739237412_))
                                               (_g3739137408_
                                                _g3739237412_)))))
                                    (_g3739037926_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g3792937932_
                                                        _g3793037935_)
                                                 (cons _g3792937932_
                                                       _g3793037935_))
                                               '()
                                               _L37375_))))))))
                            _var3733237371_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop3732737351_
                                                    _target3732437345_
                                                    '()))
                                                 (_g3732137338_
                                                  _g3732237342_)))))
                                       (_g3732137338_ _g3732237342_))
                                   (_g3732137338_ _g3732237342_)))))
                        (_g3732037938_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd37316_))))))
                 (_generate-simple-vector36415_
                  (lambda (_tgt37156_
                           _body37158_
                           _start37159_
                           _K37160_
                           _E37161_)
                    ((letrec ((_recur37163_
                               (lambda (_rest37166_ _off37168_)
                                 (let ((_g3717137183_
                                        (lambda (_g3717237179_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3717237179_))))
                                   (let ((_g3717037194_
                                          (lambda (_g3717237187_)
                                            ((lambda () _K37160_)))))
                                     (let ((_g3716937310_
                                            (lambda (_g3717237198_)
                                              (if (gx#stx-pair? _g3717237198_)
                                                  (let ((_e3717537201_
                                                         (gx#syntax-e
                                                          _g3717237198_)))
                                                    (let ((_hd3717637205_
                                                           (##car _e3717537201_))
                                                          (_tl3717737208_
                                                           (##cdr _e3717537201_)))
                                                      ((lambda (_L37211_
                                                                _L37213_)
                                                         (let ((_g3722837247_
                                                                (lambda (_g3722937243_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g3722937243_))))
                   (let ((_g3722737306_
                          (lambda (_g3722937251_)
                            (if (gx#stx-pair? _g3722937251_)
                                (let ((_e3723337254_
                                       (gx#syntax-e _g3722937251_)))
                                  (let ((_hd3723437258_ (##car _e3723337254_))
                                        (_tl3723537261_ (##cdr _e3723337254_)))
                                    (if (gx#stx-pair? _tl3723537261_)
                                        (let ((_e3723637264_
                                               (gx#syntax-e _tl3723537261_)))
                                          (let ((_hd3723737268_
                                                 (##car _e3723637264_))
                                                (_tl3723837271_
                                                 (##cdr _e3723637264_)))
                                            (if (gx#stx-pair? _tl3723837271_)
                                                (let ((_e3723937274_
                                                       (gx#syntax-e
                                                        _tl3723837271_)))
                                                  (let ((_hd3724037278_
                                                         (##car _e3723937274_))
                                                        (_tl3724137281_
                                                         (##cdr _e3723937274_)))
                                                    (if (gx#stx-null?
                                                         _tl3724137281_)
                                                        ((lambda (_L37284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L37286_
                          _L37287_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L37287_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L37286_
                                                               (cons _L37284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate136412_
                                        _L37287_
                                        _L37213_
                                        (_recur37163_
                                         _L37211_
                                         (fx1+ _off37168_))
                                        _E37161_)
                                       '())))))
                 _hd3724037278_
                 _hd3723737268_
                 _hd3723437258_)
                (_g3722837247_ _g3722937251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3722837247_
                                                 _g3722937251_))))
                                        (_g3722837247_ _g3722937251_))))
                                (_g3722837247_ _g3722937251_)))))
                     (_g3722737306_
                      (list (gx#genident 'e) _tgt37156_ _off37168_)))))
               _tl3717737208_
               _hd3717637205_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3717037194_
                                                   _g3717237198_)))))
                                       (_g3716937310_ _rest37166_)))))))
                       _recur37163_)
                     _body37158_
                     _start37159_)))
                 (_generate-list-vector36416_
                  (lambda (_tgt37066_
                           _body37068_
                           _tgt->list37069_
                           _start37070_
                           _K37071_
                           _E37072_)
                    (let ((_g3707437093_
                           (lambda (_g3707537089_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3707537089_))))
                      (let ((_g3707337152_
                             (lambda (_g3707537097_)
                               (if (gx#stx-pair? _g3707537097_)
                                   (let ((_e3707937100_
                                          (gx#syntax-e _g3707537097_)))
                                     (let ((_hd3708037104_
                                            (##car _e3707937100_))
                                           (_tl3708137107_
                                            (##cdr _e3707937100_)))
                                       (if (gx#stx-pair? _tl3708137107_)
                                           (let ((_e3708237110_
                                                  (gx#syntax-e
                                                   _tl3708137107_)))
                                             (let ((_hd3708337114_
                                                    (##car _e3708237110_))
                                                   (_tl3708437117_
                                                    (##cdr _e3708237110_)))
                                               (if (gx#stx-pair?
                                                    _tl3708437117_)
                                                   (let ((_e3708537120_
                                                          (gx#syntax-e
                                                           _tl3708437117_)))
                                                     (let ((_hd3708637124_
                                                            (##car _e3708537120_))
                                                           (_tl3708737127_
                                                            (##cdr _e3708537120_)))
                                                       (if (gx#stx-null?
                                                            _tl3708737127_)
                                                           ((lambda (_L37130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L37132_
                             _L37133_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L37133_
                                                (cons (cons _L37130_
                                                            (cons _L37132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate136412_
                                           _L37133_
                                           _body37068_
                                           _K37071_
                                           _E37072_)
                                          '())))))
                    _hd3708637124_
                    _hd3708337114_
                    _hd3708037104_)
                   (_g3707437093_ _g3707537097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3707437093_
                                                    _g3707537097_))))
                                           (_g3707437093_ _g3707537097_))))
                                   (_g3707437093_ _g3707537097_)))))
                        (_g3707337152_
                         (list (gx#genident 'e)
                               _tgt37066_
                               _tgt->list37069_))))))
                 (_generate-struct36417_
                  (lambda (_info36799_
                           _tgt36801_
                           _body36802_
                           _K36803_
                           _E36804_)
                    (let ((_rtd36806_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info36799_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info36799_)
                               '#f)))
                      (let ((_fields36816_
                             ((letrec ((_lp36809_
                                        (lambda (_rtd36812_ _k36814_)
                                          (if _rtd36812_
                                              (_lp36809_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd36812_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd36812_))
                                                    _k36814_))
                                              _k36814_))))
                                _lp36809_)
                              _rtd36806_
                              '0)))
                        (let ((_final?36819_
                               (if _rtd36806_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd36806_))
                                   '#f)))
                          (let ((_g3682236830_
                                 (lambda (_g3682336826_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g3682336826_))))
                            (let ((_g3682137062_
                                   (lambda (_g3682336834_)
                                     ((lambda (_L36837_)
                                        (let ()
                                          (let ((_g3685236860_
                                                 (lambda (_g3685336856_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g3685336856_))))
                                            (let ((_g3685137058_
                                                   (lambda (_g3685336864_)
                                                     ((lambda (_L36867_)
                                                        (let ()
                                                          (let ((_g3688036888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3688136884_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3688136884_))))
                    (let ((_g3687937054_
                           (lambda (_g3688136892_)
                             ((lambda (_L36895_)
                                (let ()
                                  (let ()
                                    (let ((_g3691136932_
                                           (lambda (_g3691236928_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g3691236928_))))
                                      (let ((_g3691036975_
                                             (lambda (_g3691236936_)
                                               (if (gx#stx-pair? _g3691236936_)
                                                   (let ((_e3692136939_
                                                          (gx#syntax-e
                                                           _g3691236936_)))
                                                     (let ((_hd3692236943_
                                                            (##car _e3692136939_))
                                                           (_tl3692336946_
                                                            (##cdr _e3692136939_)))
                                                       (if (gx#stx-datum?
                                                            _hd3692236943_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd3692236943_)
                               'list:)
                       (if (gx#stx-pair? _tl3692336946_)
                           (let ((_e3692436949_ (gx#syntax-e _tl3692336946_)))
                             (let ((_hd3692536953_ (##car _e3692436949_))
                                   (_tl3692636956_ (##cdr _e3692436949_)))
                               (if (gx#stx-null? _tl3692636956_)
                                   ((lambda (_L36959_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L36895_
                                                        (cons _L36867_
                                                              (cons _L36837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector36416_
                                                         _tgt36801_
                                                         _L36959_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K36803_
                                                         _E36804_)
                                                        (cons _E36804_ '())))))
                                    _hd3692536953_)
                                   (_g3691136932_ _g3691236936_))))
                           (_g3691136932_ _g3691236936_))
                       (_g3691136932_ _g3691236936_))
                   (_g3691136932_ _g3691236936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3691136932_
                                                    _g3691236936_)))))
                                        (let ((_g3690937050_
                                               (lambda (_g3691236979_)
                                                 (if (gx#stx-pair?
                                                      _g3691236979_)
                                                     (let ((_e3691436982_
                                                            (gx#syntax-e
                                                             _g3691236979_)))
                                                       (let ((_hd3691536986_
                                                              (##car _e3691436982_))
                                                             (_tl3691636989_
                                                              (##cdr _e3691436982_)))
                                                         (if (gx#stx-datum?
                                                              _hd3691536986_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd3691536986_)
                                 'simple:)
                         (if (gx#stx-pair? _tl3691636989_)
                             (let ((_e3691736992_
                                    (gx#syntax-e _tl3691636989_)))
                               (let ((_hd3691836996_ (##car _e3691736992_))
                                     (_tl3691936999_ (##cdr _e3691736992_)))
                                 (if (gx#stx-null? _tl3691936999_)
                                     ((lambda (_L37002_)
                                        (let ((_K37015_
                                               (_generate-simple-vector36415_
                                                _tgt36801_
                                                _L37002_
                                                '1
                                                _K36803_
                                                _E36804_)))
                                          (if (if _rtd36806_
                                                  (fx<= (gx#stx-length
                                                         _L37002_)
                                                        _fields36816_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L36895_
                                                                (cons _L36867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L36837_ '())))
                  (cons _K37015_ (cons _E36804_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g3701837026_
                                                     (lambda (_g3701937022_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g3701937022_))))
                                                (let ((_g3701737046_
                                                       (lambda (_g3701937030_)
                                                         ((lambda (_L37033_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L36895_
                                                    (cons _L36867_
                                                          (cons _L36837_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L37033_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L36837_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K37015_ (cons _E36804_ '()))))))
                  _g3701937030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3701737046_
                                                   (gx#stx-length
                                                    _L37002_)))))))
                                      _hd3691836996_)
                                     (_g3691036975_ _g3691236979_))))
                             (_g3691036975_ _g3691236979_))
                         (_g3691036975_ _g3691236979_))
                     (_g3691036975_ _g3691236979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3691036975_
                                                      _g3691236979_)))))
                                          (_g3690937050_ _body36802_)))))))
                              _g3688136892_))))
                      (_g3687937054_
                       (if _final?36819_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g3685336864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3685137058_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info36799_))))))
                                      _g3682336834_))))
                              (_g3682137062_ _tgt36801_))))))))
                 (_generate-class36418_
                  (lambda (_info36420_
                           _tgt36422_
                           _body36423_
                           _K36424_
                           _E36425_)
                    (let ((_rtd36427_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info36420_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info36420_)
                               '#f)))
                      (let ((_known-slot?36429_ #!void))
                        (letrec ((_rtd-known-slot?36431_
                                  (lambda (_rtd36780_ _slot36782_)
                                    (if _rtd36780_
                                        (let ((_$e36784_
                                               (memq _slot36782_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd36780_))))
                                          (if _$e36784_
                                              _$e36784_
                                              (ormap (lambda (_g3678736789_)
                                                       (_rtd-known-slot?36431_
                                                        _g3678736789_
                                                        _slot36782_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd36780_)))))
                                        '#f)))
                                 (_recur36432_
                                  (lambda (_klass36566_ _rest36568_)
                                    (let ((_g3657136587_
                                           (lambda (_g3657236583_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g3657236583_))))
                                      (let ((_g3657036598_
                                             (lambda (_g3657236591_)
                                               ((lambda () _K36424_)))))
                                        (let ((_g3656936776_
                                               (lambda (_g3657236602_)
                                                 (if (gx#stx-pair?
                                                      _g3657236602_)
                                                     (let ((_e3657636605_
                                                            (gx#syntax-e
                                                             _g3657236602_)))
                                                       (let ((_hd3657736609_
                                                              (##car _e3657636605_))
                                                             (_tl3657836612_
                                                              (##cdr _e3657636605_)))
                                                         (if (gx#stx-pair?
                                                              _tl3657836612_)
                                                             (let ((_e3657936615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl3657836612_)))
                       (let ((_hd3658036619_ (##car _e3657936615_))
                             (_tl3658136622_ (##cdr _e3657936615_)))
                         ((lambda (_L36625_ _L36627_ _L36628_)
                            (let ((_g3664436652_
                                   (lambda (_g3664536648_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3664536648_))))
                              (let ((_g3664336772_
                                     (lambda (_g3664536656_)
                                       ((lambda (_L36659_)
                                          (let ()
                                            (let ((_g3667136679_
                                                   (lambda (_g3667236675_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g3667236675_))))
                                              (let ((_g3667036768_
                                                     (lambda (_g3667236683_)
                                                       ((lambda (_L36686_)
                                                          (let ()
                                                            (let ((_g3669936707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g3670036703_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3670036703_))))
                      (let ((_g3669836764_
                             (lambda (_g3670036711_)
                               ((lambda (_L36714_)
                                  (let ()
                                    (let ((_g3672736735_
                                           (lambda (_g3672836731_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g3672836731_))))
                                      (let ((_g3672636760_
                                             (lambda (_g3672836739_)
                                               ((lambda (_L36742_)
                                                  (let ()
                                                    (let ((_K36755_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L36742_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L36659_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L36714_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate136412_
                                      _L36742_
                                      _L36627_
                                      (_recur36432_ _klass36566_ _L36625_)
                                      _E36425_)
                                     '())))))
              (let ()
                (if (_known-slot?36429_ _L36628_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L36714_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L36686_
                                                              (cons _L36628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K36755_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L36714_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L36686_
                                                              (cons _L36628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L36714_
                                                  (cons _K36755_
                                                        (cons _E36425_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3672836739_))))
                                        (_g3672636760_ (gx#genident 'e))))))
                                _g3670036711_))))
                        (_g3669836764_ (gx#genident 'slot))))))
                _g3667236683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3667036768_
                                                 _klass36566_)))))
                                        _g3664536656_))))
                                (_g3664336772_ _tgt36422_))))
                          _tl3658136622_
                          _hd3658036619_
                          _hd3657736609_)))
                     (_g3657036598_ _g3657236602_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3657036598_
                                                      _g3657236602_)))))
                                          (_g3656936776_ _rest36568_)))))))
                          (begin
                            (set! _known-slot?36429_
                                  (if _rtd36427_
                                      (lambda (_key36793_)
                                        (let ((_slot36796_
                                               (keyword->symbol
                                                (gx#stx-e _key36793_))))
                                          (_rtd-known-slot?36431_
                                           _rtd36427_
                                           _slot36796_)))
                                      false))
                            (let ((_final?36430_
                                   (if _rtd36427_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd36427_))
                                       '#f)))
                              (let ((_g3643436442_
                                     (lambda (_g3643536438_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3643536438_))))
                                (let ((_g3643336562_
                                       (lambda (_g3643536446_)
                                         ((lambda (_L36449_)
                                            (let ()
                                              (let ((_g3646436472_
                                                     (lambda (_g3646536468_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g3646536468_))))
                                                (let ((_g3646336558_
                                                       (lambda (_g3646536476_)
                                                         ((lambda (_L36479_)
                                                            (let ()
                                                              (let ((_g3649236500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g3649336496_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3649336496_))))
                        (let ((_g3649136554_
                               (lambda (_g3649336504_)
                                 ((lambda (_L36507_)
                                    (let ()
                                      (let ((_g3652036528_
                                             (lambda (_g3652136524_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g3652136524_))))
                                        (let ((_g3651936550_
                                               (lambda (_g3652136532_)
                                                 ((lambda (_L36535_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L36535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L36507_ (cons _L36479_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L36449_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L36479_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur36432_
                                                     _L36449_
                                                     _body36423_)
                                                    '())))
                                  (cons _E36425_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g3652136532_))))
                                          (_g3651936550_
                                           (if _final?36430_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g3649336504_))))
                          (_g3649136554_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info36420_))))))
                  _g3646536476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3646336558_
                                                   _tgt36422_)))))
                                          _g3643536446_))))
                                  (_g3643336562_
                                   (gx#genident 'class))))))))))))
          (_generate136412_ _tgt36407_ _ptree36408_ _K36409_ _E36410_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx35404_ _tgt-lst35406_ _clauses35407_)
        (let ((_parse-body35409_
               (lambda (_hd-len36227_)
                 ((letrec ((_lp36230_
                            (lambda (_rest36233_ _r36235_)
                              (let ((_g3623836250_
                                     (lambda (_g3623936246_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3623936246_))))
                                (let ((_g3623736261_
                                       (lambda (_g3623936254_)
                                         ((lambda () _r36235_)))))
                                  (let ((_g3623636401_
                                         (lambda (_g3623936265_)
                                           (if (gx#stx-pair? _g3623936265_)
                                               (let ((_e3624236268_
                                                      (gx#syntax-e
                                                       _g3623936265_)))
                                                 (let ((_hd3624336272_
                                                        (##car _e3624236268_))
                                                       (_tl3624436275_
                                                        (##cdr _e3624236268_)))
                                                   ((lambda (_L36278_ _L36280_)
                                                      (let ((_g3629736313_
                                                             (lambda (_g3629836309_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g3629836309_))))
                                                        (let ((_g3629636324_
                                                               (lambda (_g3629836317_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx35404_
                             _L36280_))))))
                  (let ((_g3629536365_
                         (lambda (_g3629836328_)
                           (if (gx#stx-pair? _g3629836328_)
                               (let ((_e3630536331_
                                      (gx#syntax-e _g3629836328_)))
                                 (let ((_hd3630636335_ (##car _e3630536331_))
                                       (_tl3630736338_ (##cdr _e3630536331_)))
                                   ((lambda (_L36341_ _L36343_)
                                      (if (if (gx#stx-list? _L36343_)
                                              (if (fx= (gx#stx-length _L36343_)
                                                       _hd-len36227_)
                                                  (if (gx#stx-list? _L36341_)
                                                      (not (gx#stx-null?
                                                            _L36341_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp36230_
                                           _L36278_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g3635536357_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3635536357_
                         _stx35404_))
                      _L36343_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L36341_)
                            (let ((_$e36361_ (gx#stx-source _L36280_)))
                              (if _$e36361_
                                  _$e36361_
                                  (gx#stx-source _stx35404_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r36235_))
                                          (_g3629636324_ _g3629836328_)))
                                    _tl3630736338_
                                    _hd3630636335_)))
                               (_g3629636324_ _g3629836328_)))))
                    (let ((_g3629436397_
                           (lambda (_g3629836369_)
                             (if (gx#stx-pair? _g3629836369_)
                                 (let ((_e3630036372_
                                        (gx#syntax-e _g3629836369_)))
                                   (let ((_hd3630136376_ (##car _e3630036372_))
                                         (_tl3630236379_
                                          (##cdr _e3630036372_)))
                                     (if (gx#identifier? _hd3630136376_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g47070_|
                                              _hd3630136376_)
                                             ((lambda (_L36382_)
                                                (if (if (gx#stx-list? _L36382_)
                                                        (not (gx#stx-null?
                                                              _L36382_))
                                                        '#f)
                                                    (if (gx#stx-null? _L36278_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L36382_)
                                         (let ((_$e36393_
                                                (gx#stx-source _L36280_)))
                                           (if _$e36393_
                                               _$e36393_
                                               (gx#stx-source _stx35404_))))
                                        '())))
                      _r36235_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx35404_
                 _L36280_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3629536365_
                                                     _g3629836369_)))
                                              _tl3630236379_)
                                             (_g3629536365_ _g3629836369_))
                                         (_g3629536365_ _g3629836369_))))
                                 (_g3629536365_ _g3629836369_)))))
                      (_g3629436397_ _L36280_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl3624436275_
                                                    _hd3624336272_)))
                                               (_g3623736261_
                                                _g3623936265_)))))
                                    (_g3623636401_ _rest36233_)))))))
                    _lp36230_)
                  _clauses35407_
                  '()))))
          (let ((_generate135413_
                 (lambda (_clause35415_ _body35417_ _E35418_)
                   ((letrec ((_recur35420_
                              (lambda (_rest35423_ _rest-targets35425_)
                                (let ((_g3542835440_
                                       (lambda (_g3542935436_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3542935436_))))
                                  (let ((_g3542735451_
                                         (lambda (_g3542935444_)
                                           ((lambda () _body35417_)))))
                                    (let ((_g3542635722_
                                           (lambda (_g3542935455_)
                                             (if (gx#stx-pair? _g3542935455_)
                                                 (let ((_e3543235458_
                                                        (gx#syntax-e
                                                         _g3542935455_)))
                                                   (let ((_hd3543335462_
                                                          (##car _e3543235458_))
                                                         (_tl3543435465_
                                                          (##cdr _e3543235458_)))
                                                     ((lambda (_L35468_
                                                               _L35470_)
                                                        (let ((_g3548735499_
                                                               (lambda (_g3548835495_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3548835495_))))
                  (let ((_g3548635718_
                         (lambda (_g3548835503_)
                           (if (gx#stx-pair? _g3548835503_)
                               (let ((_e3549135506_
                                      (gx#syntax-e _g3548835503_)))
                                 (let ((_hd3549235510_ (##car _e3549135506_))
                                       (_tl3549335513_ (##cdr _e3549135506_)))
                                   ((lambda (_L35516_ _L35518_)
                                      (let ((_g3553035538_
                                             (lambda (_g3553135534_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g3553135534_))))
                                        (let ((_g3552935714_
                                               (lambda (_g3553135542_)
                                                 ((lambda (_L35545_)
                                                    (let ()
                                                      (let ((_g3555735574_
                                                             (lambda (_g3555835570_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g3555835570_))))
                                                        (let ((_g3555635710_
                                                               (lambda (_g3555835578_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g3555835578_)
                             (if (fx>= (gx#stx-length _g3555835578_) '0)
                                 (let ((_g47068_
                                        (gx#syntax-split-splice
                                         _g3555835578_
                                         '0)))
                                   (begin
                                     (let ((_g47069_ (values-count _g47068_)))
                                       (if (not (fx= _g47069_ 2))
                                           (error "Context expects 2 values"
                                                  _g47069_)))
                                     (let ((_target3556035581_
                                            (values-ref _g47068_ 0))
                                           (_tl3556235584_
                                            (values-ref _g47068_ 1)))
                                       (if (gx#stx-null? _tl3556235584_)
                                           (letrec ((_loop3556335587_
                                                     (lambda (_hd3556135591_
                                                              _var3556735594_)
                                                       (if (gx#stx-pair?
                                                            _hd3556135591_)
                                                           (let ((_e3556435597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd3556135591_)))
                     (let ((_lp-hd3556535601_ (##car _e3556435597_))
                           (_lp-tl3556635604_ (##cdr _e3556435597_)))
                       (_loop3556335587_
                        _lp-tl3556635604_
                        (cons _lp-hd3556535601_ _var3556735594_))))
                   (let ((_var3556835607_ (reverse _var3556735594_)))
                     ((lambda (_L35611_)
                        (let ()
                          (let ((_g3562835636_
                                 (lambda (_g3562935632_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g3562935632_))))
                            (let ((_g3562735706_
                                   (lambda (_g3562935640_)
                                     ((lambda (_L35643_)
                                        (let ()
                                          (let ((_g3565635664_
                                                 (lambda (_g3565735660_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g3565735660_))))
                                            (let ((_g3565535694_
                                                   (lambda (_g3565735668_)
                                                     ((lambda (_L35671_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L35545_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g3568535688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g3568635691_)
                                 (cons _g3568535688_ _g3568635691_))
                               '()
                               _L35611_))
                      (cons _L35643_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L35671_ '()))))))
              _g3565735668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3565535694_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx35404_
                                                _L35518_
                                                _L35470_
                                                (cons _L35545_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g3569735700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3569835703_)
                         (cons _g3569735700_ _g3569835703_))
                       '()
                       _L35611_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E35418_))))))
                                      _g3562935640_))))
                              (_g3562735706_
                               (_recur35420_ _L35468_ _L35516_))))))
                      _var3556835607_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop3556335587_
                                              _target3556035581_
                                              '()))
                                           (_g3555735574_ _g3555835578_)))))
                                 (_g3555735574_ _g3555835578_))
                             (_g3555735574_ _g3555835578_)))))
                  (_g3555635710_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L35470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g3553135542_))))
                                          (_g3552935714_ (gx#genident 'K)))))
                                    _tl3549335513_
                                    _hd3549235510_)))
                               (_g3548735499_ _g3548835503_)))))
                    (_g3548635718_ _rest-targets35425_))))
              _tl3543435465_
              _hd3543335462_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3542735451_
                                                  _g3542935455_)))))
                                      (_g3542635722_ _rest35423_)))))))
                      _recur35420_)
                    _clause35415_
                    _tgt-lst35406_))))
            (letrec ((_generate-clauses35412_
                      (lambda (_rest35726_ _E35728_)
                        (let ((_g3573235748_
                               (lambda (_g3573335744_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g3573335744_))))
                          (let ((_g3573135759_
                                 (lambda (_g3573335752_)
                                   ((lambda () _E35728_)))))
                            (let ((_g3573035935_
                                   (lambda (_g3573335763_)
                                     (if (gx#stx-pair? _g3573335763_)
                                         (let ((_e3574035766_
                                                (gx#syntax-e _g3573335763_)))
                                           (let ((_hd3574135770_
                                                  (##car _e3574035766_))
                                                 (_tl3574235773_
                                                  (##cdr _e3574035766_)))
                                             ((lambda (_L35776_ _L35778_)
                                                (let ((_g3579135810_
                                                       (lambda (_g3579235806_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g3579235806_))))
                                                  (let ((_g3579035931_
                                                         (lambda (_g3579235814_)
                                                           (if (gx#stx-pair?
                                                                _g3579235814_)
                                                               (let ((_e3579635817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g3579235814_)))
                         (let ((_hd3579735821_ (##car _e3579635817_))
                               (_tl3579835824_ (##cdr _e3579635817_)))
                           (if (gx#stx-pair? _tl3579835824_)
                               (let ((_e3579935827_
                                      (gx#syntax-e _tl3579835824_)))
                                 (let ((_hd3580035831_ (##car _e3579935827_))
                                       (_tl3580135834_ (##cdr _e3579935827_)))
                                   (if (gx#stx-pair? _tl3580135834_)
                                       (let ((_e3580235837_
                                              (gx#syntax-e _tl3580135834_)))
                                         (let ((_hd3580335841_
                                                (##car _e3580235837_))
                                               (_tl3580435844_
                                                (##cdr _e3580235837_)))
                                           (if (gx#stx-null? _tl3580435844_)
                                               ((lambda (_L35847_
                                                         _L35849_
                                                         _L35850_)
                                                  (let ((_g3586735882_
                                                         (lambda (_g3586835878_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g3586835878_))))
                                                    (let ((_g3586635927_
                                                           (lambda (_g3586835886_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3586835886_)
                         (let ((_e3587135889_ (gx#syntax-e _g3586835886_)))
                           (let ((_hd3587235893_ (##car _e3587135889_))
                                 (_tl3587335896_ (##cdr _e3587135889_)))
                             (if (gx#stx-pair? _tl3587335896_)
                                 (let ((_e3587435899_
                                        (gx#syntax-e _tl3587335896_)))
                                   (let ((_hd3587535903_ (##car _e3587435899_))
                                         (_tl3587635906_
                                          (##cdr _e3587435899_)))
                                     (if (gx#stx-null? _tl3587635906_)
                                         ((lambda (_L35909_ _L35911_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L35850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L35911_ '())))
                                    '()))
                        '())
                  (cons _L35909_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd3587535903_
                                          _hd3587235893_)
                                         (_g3586735882_ _g3586835886_))))
                                 (_g3586735882_ _g3586835886_))))
                         (_g3586735882_ _g3586835886_)))))
              (_g3586635927_
               (list (if (gx#stx-e _L35849_)
                         (_generate135413_ _L35849_ _L35847_ _E35728_)
                         _L35847_)
                     (_generate-clauses35412_
                      _L35776_
                      (cons _L35850_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd3580335841_
                                                _hd3580035831_
                                                _hd3579735821_)
                                               (_g3579135810_ _g3579235814_))))
                                       (_g3579135810_ _g3579235814_))))
                               (_g3579135810_ _g3579235814_))))
                       (_g3579135810_ _g3579235814_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3579035931_ _L35778_))))
                                              _tl3574235773_
                                              _hd3574135770_)))
                                         (_g3573135759_ _g3573335763_)))))
                              (let ((_g3572936040_
                                     (lambda (_g3573335939_)
                                       (if (gx#stx-pair? _g3573335939_)
                                           (let ((_e3573535942_
                                                  (gx#syntax-e _g3573335939_)))
                                             (let ((_hd3573635946_
                                                    (##car _e3573535942_))
                                                   (_tl3573735949_
                                                    (##cdr _e3573535942_)))
                                               (if (gx#stx-null?
                                                    _tl3573735949_)
                                                   ((lambda (_L35952_)
                                                      (let ((_g3596335981_
                                                             (lambda (_g3596435977_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g3596435977_))))
                                                        (let ((_g3596236036_
                                                               (lambda (_g3596435985_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g3596435985_)
                             (let ((_e3596735988_ (gx#syntax-e _g3596435985_)))
                               (let ((_hd3596835992_ (##car _e3596735988_))
                                     (_tl3596935995_ (##cdr _e3596735988_)))
                                 (if (gx#stx-pair? _tl3596935995_)
                                     (let ((_e3597035998_
                                            (gx#syntax-e _tl3596935995_)))
                                       (let ((_hd3597136002_
                                              (##car _e3597035998_))
                                             (_tl3597236005_
                                              (##cdr _e3597035998_)))
                                         (if (gx#stx-pair? _tl3597236005_)
                                             (let ((_e3597336008_
                                                    (gx#syntax-e
                                                     _tl3597236005_)))
                                               (let ((_hd3597436012_
                                                      (##car _e3597336008_))
                                                     (_tl3597536015_
                                                      (##cdr _e3597336008_)))
                                                 (if (gx#stx-null?
                                                      _tl3597536015_)
                                                     ((lambda (_L36018_
                                                               _L36020_)
                                                        (if (gx#stx-e _L36020_)
                                                            (_generate135413_
                                                             _L36020_
                                                             _L36018_
                                                             _E35728_)
                                                            _L36018_))
                                                      _hd3597436012_
                                                      _hd3597136002_)
                                                     (_g3596335981_
                                                      _g3596435985_))))
                                             (_g3596335981_ _g3596435985_))))
                                     (_g3596335981_ _g3596435985_))))
                             (_g3596335981_ _g3596435985_)))))
                  (_g3596236036_ _L35952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3573635946_)
                                                   (_g3573035935_
                                                    _g3573335939_))))
                                           (_g3573035935_ _g3573335939_)))))
                                (_g3572936040_ _rest35726_))))))))
              (let ((_generate-body35411_
                     (lambda (_body36044_)
                       (let ((_g3604736055_
                              (lambda (_g3604836051_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g3604836051_))))
                         (let ((_g3604636223_
                                (lambda (_g3604836059_)
                                  ((lambda (_L36062_)
                                     (let ()
                                       (let ((_g3607436091_
                                              (lambda (_g3607536087_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g3607536087_))))
                                         (let ((_g3607336219_
                                                (lambda (_g3607536095_)
                                                  (if (gx#stx-pair/null?
                                                       _g3607536095_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3607536095_)
                        '0)
                  (let ((_g47066_ (gx#syntax-split-splice _g3607536095_ '0)))
                    (begin
                      (let ((_g47067_ (values-count _g47066_)))
                        (if (not (fx= _g47067_ 2))
                            (error "Context expects 2 values" _g47067_)))
                      (let ((_target3607736098_ (values-ref _g47066_ 0))
                            (_tl3607936101_ (values-ref _g47066_ 1)))
                        (if (gx#stx-null? _tl3607936101_)
                            (letrec ((_loop3608036104_
                                      (lambda (_hd3607836108_
                                               _target3608436111_)
                                        (if (gx#stx-pair? _hd3607836108_)
                                            (let ((_e3608136114_
                                                   (gx#syntax-e
                                                    _hd3607836108_)))
                                              (let ((_lp-hd3608236118_
                                                     (##car _e3608136114_))
                                                    (_lp-tl3608336121_
                                                     (##cdr _e3608136114_)))
                                                (_loop3608036104_
                                                 _lp-tl3608336121_
                                                 (cons _lp-hd3608236118_
                                                       _target3608436111_))))
                                            (let ((_target3608536124_
                                                   (reverse _target3608436111_)))
                                              ((lambda (_L36128_)
                                                 (let ()
                                                   (let ((_g3614536153_
                                                          (lambda (_g3614636149_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g3614636149_))))
                                                     (let ((_g3614436207_
                                                            (lambda (_g3614636157_)
                                                              ((lambda (_L36160_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g3617336181_
                                  (lambda (_g3617436177_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g3617436177_))))
                             (let ((_g3617236203_
                                    (lambda (_g3617436185_)
                                      ((lambda (_L36188_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L36062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L36160_ '()))
                       '())
                 (cons _L36188_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g3617436185_))))
                               (_g3617236203_
                                (_generate-clauses35412_
                                 _body36044_
                                 (cons _L36062_ '())))))))
                       _g3614636157_))))
               (_g3614436207_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g3621036213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3621136216_)
                  (cons _g3621036213_ _g3621136216_))
                '()
                _L36128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx35404_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target3608536124_))))))
                              (_loop3608036104_ _target3607736098_ '()))
                            (_g3607436091_ _g3607536095_)))))
                  (_g3607436091_ _g3607536095_))
              (_g3607436091_ _g3607536095_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g3607336219_ _tgt-lst35406_)))))
                                   _g3604836059_))))
                           (_g3604636223_ (gx#genident 'E)))))))
                (_generate-body35411_
                 (_parse-body35409_ (gx#stx-length _tgt-lst35406_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx35306_ _tgt35308_ _clauses35309_)
        (let ((_reclause35311_
               (lambda (_clause35314_)
                 (let ((_g3531935334_
                        (lambda (_g3532035330_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g3532035330_))))
                   (let ((_g3531835345_
                          (lambda (_g3532035338_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx35306_
                                _clause35314_))))))
                     (let ((_g3531735379_
                            (lambda (_g3532035349_)
                              (if (gx#stx-pair? _g3532035349_)
                                  (let ((_e3532635352_
                                         (gx#syntax-e _g3532035349_)))
                                    (let ((_hd3532735356_
                                           (##car _e3532635352_))
                                          (_tl3532835359_
                                           (##cdr _e3532635352_)))
                                      ((lambda (_L35362_ _L35364_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L35364_ '()) _L35362_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl3532835359_
                                       _hd3532735356_)))
                                  (_g3531835345_ _g3532035349_)))))
                       (let ((_g3531635400_
                              (lambda (_g3532035383_)
                                (if (gx#stx-pair? _g3532035383_)
                                    (let ((_e3532135386_
                                           (gx#syntax-e _g3532035383_)))
                                      (let ((_hd3532235390_
                                             (##car _e3532135386_))
                                            (_tl3532335393_
                                             (##cdr _e3532135386_)))
                                        (if (gx#identifier? _hd3532235390_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g47071_|
                                                 _hd3532235390_)
                                                ((lambda () _clause35314_))
                                                (_g3531735379_ _g3532035383_))
                                            (_g3531735379_ _g3532035383_))))
                                    (_g3531735379_ _g3532035383_)))))
                         (_g3531635400_ _clause35314_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx35306_
           (cons _tgt35308_ '())
           (gx#stx-map _reclause35311_ _clauses35309_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx42284_)
        (let ((_g4228942318_
               (lambda (_g4229042314_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4229042314_))))
          (let ((_g4228842426_
                 (lambda (_g4229042322_)
                   (if (gx#stx-pair? _g4229042322_)
                       (let ((_e4230742325_ (gx#syntax-e _g4229042322_)))
                         (let ((_hd4230842329_ (##car _e4230742325_))
                               (_tl4230942332_ (##cdr _e4230742325_)))
                           (if (gx#stx-pair? _tl4230942332_)
                               (let ((_e4231042335_
                                      (gx#syntax-e _tl4230942332_)))
                                 (let ((_hd4231142339_ (##car _e4231042335_))
                                       (_tl4231242342_ (##cdr _e4231042335_)))
                                   ((lambda (_L42345_ _L42347_)
                                      (if (gx#stx-list? _L42345_)
                                          (let ((_g4236142369_
                                                 (lambda (_g4236242365_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g4236242365_))))
                                            (let ((_g4236042422_
                                                   (lambda (_g4236242373_)
                                                     ((lambda (_L42376_)
                                                        (let ()
                                                          (let ((_g4238842396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g4238942392_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g4238942392_))))
                    (let ((_g4238742418_
                           (lambda (_g4238942400_)
                             ((lambda (_L42403_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L42376_
                                                            (cons _L42347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L42403_ '()))))))
                              _g4238942400_))))
                      (_g4238742418_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx42284_
                        _L42376_
                        _L42345_))))))
              _g4236242373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4236042422_
                                               (gx#genident _L42347_))))
                                          (_g4228942318_ _g4229042322_)))
                                    _tl4231242342_
                                    _hd4231142339_)))
                               (_g4228942318_ _g4229042322_))))
                       (_g4228942318_ _g4229042322_)))))
            (let ((_g4228742531_
                   (lambda (_g4229042430_)
                     (if (gx#stx-pair? _g4229042430_)
                         (let ((_e4229942433_ (gx#syntax-e _g4229042430_)))
                           (let ((_hd4230042437_ (##car _e4229942433_))
                                 (_tl4230142440_ (##cdr _e4229942433_)))
                             (if (gx#stx-pair? _tl4230142440_)
                                 (let ((_e4230242443_
                                        (gx#syntax-e _tl4230142440_)))
                                   (let ((_hd4230342447_ (##car _e4230242443_))
                                         (_tl4230442450_
                                          (##cdr _e4230242443_)))
                                     (if (gx#identifier? _hd4230342447_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g47072_|
                                              _hd4230342447_)
                                             ((lambda (_L42453_)
                                                (if (gx#stx-list? _L42453_)
                                                    (let ((_g4246642474_
                                                           (lambda (_g4246742470_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g4246742470_))))
                                                      (let ((_g4246542527_
                                                             (lambda (_g4246742478_)
                                                               ((lambda (_L42481_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g4249342501_
                                   (lambda (_g4249442497_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g4249442497_))))
                              (let ((_g4249242523_
                                     (lambda (_g4249442505_)
                                       ((lambda (_L42508_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L42481_
                                                          (cons _L42508_
                                                                '()))))))
                                        _g4249442505_))))
                                (_g4249242523_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L42481_ _L42453_))
                                  (gx#stx-source _stx42284_)))))))
                        _g4246742478_))))
                (_g4246542527_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4228842426_
                                                     _g4229042430_)))
                                              _tl4230442450_)
                                             (_g4228842426_ _g4229042430_))
                                         (_g4228842426_ _g4229042430_))))
                                 (_g4228842426_ _g4229042430_))))
                         (_g4228842426_ _g4229042430_)))))
              (let ((_g4228642636_
                     (lambda (_g4229042535_)
                       (if (gx#stx-pair? _g4229042535_)
                           (let ((_e4229242538_ (gx#syntax-e _g4229042535_)))
                             (let ((_hd4229342542_ (##car _e4229242538_))
                                   (_tl4229442545_ (##cdr _e4229242538_)))
                               (if (gx#stx-pair? _tl4229442545_)
                                   (let ((_e4229542548_
                                          (gx#syntax-e _tl4229442545_)))
                                     (let ((_hd4229642552_
                                            (##car _e4229542548_))
                                           (_tl4229742555_
                                            (##cdr _e4229542548_)))
                                       (if (gx#identifier? _hd4229642552_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g47073_|
                                                _hd4229642552_)
                                               ((lambda (_L42558_)
                                                  (if (gx#stx-list? _L42558_)
                                                      (let ((_g4257142579_
                                                             (lambda (_g4257242575_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g4257242575_))))
                                                        (let ((_g4257042632_
                                                               (lambda (_g4257242583_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L42586_)
                            (let ()
                              (let ((_g4259842606_
                                     (lambda (_g4259942602_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g4259942602_))))
                                (let ((_g4259742628_
                                       (lambda (_g4259942610_)
                                         ((lambda (_L42613_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L42586_ '())
                                                            (cons _L42613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g4259942610_))))
                                  (_g4259742628_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L42586_ _L42558_))
                                    (gx#stx-source _stx42284_)))))))
                          _g4257242583_))))
                  (_g4257042632_ (gx#genident 'e))))
              (_g4228742531_ _g4229042535_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl4229742555_)
                                               (_g4228742531_ _g4229042535_))
                                           (_g4228742531_ _g4229042535_))))
                                   (_g4228742531_ _g4229042535_))))
                           (_g4228742531_ _g4229042535_)))))
                (_g4228642636_ _stx42284_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx42640_)
        (let ((_g4264342667_
               (lambda (_g4264442663_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4264442663_))))
          (let ((_g4264242879_
                 (lambda (_g4264442671_)
                   (if (gx#stx-pair? _g4264442671_)
                       (let ((_e4264742674_ (gx#syntax-e _g4264442671_)))
                         (let ((_hd4264842678_ (##car _e4264742674_))
                               (_tl4264942681_ (##cdr _e4264742674_)))
                           (if (gx#stx-pair? _tl4264942681_)
                               (let ((_e4265042684_
                                      (gx#syntax-e _tl4264942681_)))
                                 (let ((_hd4265142688_ (##car _e4265042684_))
                                       (_tl4265242691_ (##cdr _e4265042684_)))
                                   (if (gx#stx-pair/null? _hd4265142688_)
                                       (if (fx>= (gx#stx-length _hd4265142688_)
                                                 '0)
                                           (let ((_g47074_
                                                  (gx#syntax-split-splice
                                                   _hd4265142688_
                                                   '0)))
                                             (begin
                                               (let ((_g47075_
                                                      (values-count _g47074_)))
                                                 (if (not (fx= _g47075_ 2))
                                                     (error "Context expects 2 values"
                                                            _g47075_)))
                                               (let ((_target4265342694_
                                                      (values-ref _g47074_ 0))
                                                     (_tl4265542697_
                                                      (values-ref _g47074_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl4265542697_)
                                                     (letrec ((_loop4265642700_
                                                               (lambda (_hd4265442704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e4266042707_)
                         (if (gx#stx-pair? _hd4265442704_)
                             (let ((_e4265742710_
                                    (gx#syntax-e _hd4265442704_)))
                               (let ((_lp-hd4265842714_ (##car _e4265742710_))
                                     (_lp-tl4265942717_ (##cdr _e4265742710_)))
                                 (_loop4265642700_
                                  _lp-tl4265942717_
                                  (cons _lp-hd4265842714_ _e4266042707_))))
                             (let ((_e4266142720_ (reverse _e4266042707_)))
                               ((lambda (_L42724_ _L42726_)
                                  (if (gx#stx-list? _L42724_)
                                      (let ((_g4274442761_
                                             (lambda (_g4274542757_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g4274542757_))))
                                        (let ((_g4274342867_
                                               (lambda (_g4274542765_)
                                                 (if (gx#stx-pair/null?
                                                      _g4274542765_)
                                                     (if (fx>= (gx#stx-length
                                                                _g4274542765_)
                                                               '0)
                                                         (let ((_g47076_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g4274542765_
                         '0)))
                   (begin
                     (let ((_g47077_ (values-count _g47076_)))
                       (if (not (fx= _g47077_ 2))
                           (error "Context expects 2 values" _g47077_)))
                     (let ((_target4274742768_ (values-ref _g47076_ 0))
                           (_tl4274942771_ (values-ref _g47076_ 1)))
                       (if (gx#stx-null? _tl4274942771_)
                           (letrec ((_loop4275042774_
                                     (lambda (_hd4274842778_ _$e4275442781_)
                                       (if (gx#stx-pair? _hd4274842778_)
                                           (let ((_e4275142784_
                                                  (gx#syntax-e
                                                   _hd4274842778_)))
                                             (let ((_lp-hd4275242788_
                                                    (##car _e4275142784_))
                                                   (_lp-tl4275342791_
                                                    (##cdr _e4275142784_)))
                                               (_loop4275042774_
                                                _lp-tl4275342791_
                                                (cons _lp-hd4275242788_
                                                      _$e4275442781_))))
                                           (let ((_$e4275542794_
                                                  (reverse _$e4275442781_)))
                                             ((lambda (_L42798_)
                                                (let ()
                                                  (let ((_g4281442822_
                                                         (lambda (_g4281542818_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g4281542818_))))
                                                    (let ((_g4281342855_
                                                           (lambda (_g4281542826_)
                                                             ((lambda (_L42829_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L42726_
                                           _L42798_)
                                          (foldr (lambda (_g4284342847_
                                                          _g4284442850_
                                                          _g4284542852_)
                                                   (cons (cons _g4284442850_
                                                               (cons _g4284342847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g4284542852_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L42726_
                                                 _L42798_))
                                        (cons _L42829_ '()))))))
                      _g4281542826_))))
              (_g4281342855_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx42640_
                (begin
                  '#!void
                  (foldr (lambda (_g4285842861_ _g4285942864_)
                           (cons _g4285842861_ _g4285942864_))
                         '()
                         _L42798_))
                _L42724_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e4275542794_))))))
                             (_loop4275042774_ _target4274742768_ '()))
                           (_g4274442761_ _g4274542765_)))))
                 (_g4274442761_ _g4274542765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4274442761_
                                                      _g4274542765_)))))
                                          (_g4274342867_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g4287042873_
                                                              _g4287142876_)
                                                       (cons _g4287042873_
                                                             _g4287142876_))
                                                     '()
                                                     _L42726_))))))
                                      (_g4264342667_ _g4264442671_)))
                                _tl4265242691_
                                _e4266142720_))))))
               (_loop4265642700_ _target4265342694_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4264342667_
                                                      _g4264442671_)))))
                                           (_g4264342667_ _g4264442671_))
                                       (_g4264342667_ _g4264442671_))))
                               (_g4264342667_ _g4264442671_))))
                       (_g4264342667_ _g4264442671_)))))
            (_g4264242879_ _stx42640_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx42885_)
        (let ((_g4289142974_
               (lambda (_g4289242970_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4289242970_))))
          (let ((_g4289043135_
                 (lambda (_g4289242978_)
                   (if (gx#stx-pair? _g4289242978_)
                       (let ((_e4293742981_ (gx#syntax-e _g4289242978_)))
                         (let ((_hd4293842985_ (##car _e4293742981_))
                               (_tl4293942988_ (##cdr _e4293742981_)))
                           (if (gx#stx-pair? _tl4293942988_)
                               (let ((_e4294042991_
                                      (gx#syntax-e _tl4293942988_)))
                                 (let ((_hd4294142995_ (##car _e4294042991_))
                                       (_tl4294242998_ (##cdr _e4294042991_)))
                                   (if (gx#stx-pair/null? _hd4294142995_)
                                       (if (fx>= (gx#stx-length _hd4294142995_)
                                                 '0)
                                           (let ((_g47078_
                                                  (gx#syntax-split-splice
                                                   _hd4294142995_
                                                   '0)))
                                             (begin
                                               (let ((_g47079_
                                                      (values-count _g47078_)))
                                                 (if (not (fx= _g47079_ 2))
                                                     (error "Context expects 2 values"
                                                            _g47079_)))
                                               (let ((_target4294343001_
                                                      (values-ref _g47078_ 0))
                                                     (_tl4294543004_
                                                      (values-ref _g47078_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl4294543004_)
                                                     (letrec ((_loop4294643007_
                                                               (lambda (_hd4294443011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr4295043014_
                                _hd4295143016_)
                         (if (gx#stx-pair? _hd4294443011_)
                             (let ((_e4294743019_
                                    (gx#syntax-e _hd4294443011_)))
                               (let ((_lp-hd4294843023_ (##car _e4294743019_))
                                     (_lp-tl4294943026_ (##cdr _e4294743019_)))
                                 (if (gx#stx-pair? _lp-hd4294843023_)
                                     (let ((_e4295443029_
                                            (gx#syntax-e _lp-hd4294843023_)))
                                       (let ((_hd4295543033_
                                              (##car _e4295443029_))
                                             (_tl4295643036_
                                              (##cdr _e4295443029_)))
                                         (if (gx#stx-pair? _tl4295643036_)
                                             (let ((_e4295743039_
                                                    (gx#syntax-e
                                                     _tl4295643036_)))
                                               (let ((_hd4295843043_
                                                      (##car _e4295743039_))
                                                     (_tl4295943046_
                                                      (##cdr _e4295743039_)))
                                                 (if (gx#stx-null?
                                                      _tl4295943046_)
                                                     (_loop4294643007_
                                                      _lp-tl4294943026_
                                                      (cons _hd4295843043_
                                                            _expr4295043014_)
                                                      (cons _hd4295543033_
                                                            _hd4295143016_))
                                                     (_g4289142974_
                                                      _g4289242978_))))
                                             (_g4289142974_ _g4289242978_))))
                                     (_g4289142974_ _g4289242978_))))
                             (let ((_expr4295243049_
                                    (reverse _expr4295043014_))
                                   (_hd4295343052_ (reverse _hd4295143016_)))
                               (if (gx#stx-pair/null? _tl4294242998_)
                                   (if (fx>= (gx#stx-length _tl4294242998_) '0)
                                       (let ((_g47080_
                                              (gx#syntax-split-splice
                                               _tl4294242998_
                                               '0)))
                                         (begin
                                           (let ((_g47081_
                                                  (values-count _g47080_)))
                                             (if (not (fx= _g47081_ 2))
                                                 (error "Context expects 2 values"
                                                        _g47081_)))
                                           (let ((_target4296043055_
                                                  (values-ref _g47080_ 0))
                                                 (_tl4296243058_
                                                  (values-ref _g47080_ 1)))
                                             (if (gx#stx-null? _tl4296243058_)
                                                 (letrec ((_loop4296343061_
                                                           (lambda (_hd4296143065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body4296743068_)
                     (if (gx#stx-pair? _hd4296143065_)
                         (let ((_e4296443071_ (gx#syntax-e _hd4296143065_)))
                           (let ((_lp-hd4296543075_ (##car _e4296443071_))
                                 (_lp-tl4296643078_ (##cdr _e4296443071_)))
                             (_loop4296343061_
                              _lp-tl4296643078_
                              (cons _lp-hd4296543075_ _body4296743068_))))
                         (let ((_body4296843081_ (reverse _body4296743068_)))
                           ((lambda (_L43085_ _L43087_ _L43088_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g4311043117_
                                                            _g4311143120_)
                                                     (cons _g4311043117_
                                                           _g4311143120_))
                                                   '()
                                                   _L43087_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g4311243123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g4311343126_)
                         (cons _g4311243123_ _g4311343126_))
                       '()
                       _L43088_))
              (begin
                '#!void
                (foldr (lambda (_g4311443129_ _g4311543132_)
                         (cons _g4311443129_ _g4311543132_))
                       '()
                       _L43085_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body4296843081_
                            _expr4295243049_
                            _hd4295343052_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop4296343061_
                                                    _target4296043055_
                                                    '()))
                                                 (_g4289142974_
                                                  _g4289242978_)))))
                                       (_g4289142974_ _g4289242978_))
                                   (_g4289142974_ _g4289242978_)))))))
               (_loop4294643007_ _target4294343001_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4289142974_
                                                      _g4289242978_)))))
                                           (_g4289142974_ _g4289242978_))
                                       (_g4289142974_ _g4289242978_))))
                               (_g4289142974_ _g4289242978_))))
                       (_g4289142974_ _g4289242978_)))))
            (let ((_g4288943247_
                   (lambda (_g4289243139_)
                     (if (gx#stx-pair? _g4289243139_)
                         (let ((_e4291343142_ (gx#syntax-e _g4289243139_)))
                           (let ((_hd4291443146_ (##car _e4291343142_))
                                 (_tl4291543149_ (##cdr _e4291343142_)))
                             (if (gx#stx-pair? _tl4291543149_)
                                 (let ((_e4291643152_
                                        (gx#syntax-e _tl4291543149_)))
                                   (let ((_hd4291743156_ (##car _e4291643152_))
                                         (_tl4291843159_
                                          (##cdr _e4291643152_)))
                                     (if (gx#stx-pair? _hd4291743156_)
                                         (let ((_e4291943162_
                                                (gx#syntax-e _hd4291743156_)))
                                           (let ((_hd4292043166_
                                                  (##car _e4291943162_))
                                                 (_tl4292143169_
                                                  (##cdr _e4291943162_)))
                                             (if (gx#stx-pair? _tl4292143169_)
                                                 (let ((_e4292243172_
                                                        (gx#syntax-e
                                                         _tl4292143169_)))
                                                   (let ((_hd4292343176_
                                                          (##car _e4292243172_))
                                                         (_tl4292443179_
                                                          (##cdr _e4292243172_)))
                                                     (if (gx#stx-null?
                                                          _tl4292443179_)
                                                         (if (gx#stx-pair/null?
                                                              _tl4291843159_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl4291843159_)
                               '0)
                         (let ((_g47082_
                                (gx#syntax-split-splice _tl4291843159_ '0)))
                           (begin
                             (let ((_g47083_ (values-count _g47082_)))
                               (if (not (fx= _g47083_ 2))
                                   (error "Context expects 2 values"
                                          _g47083_)))
                             (let ((_target4292543182_ (values-ref _g47082_ 0))
                                   (_tl4292743185_ (values-ref _g47082_ 1)))
                               (if (gx#stx-null? _tl4292743185_)
                                   (letrec ((_loop4292843188_
                                             (lambda (_hd4292643192_
                                                      _body4293243195_)
                                               (if (gx#stx-pair?
                                                    _hd4292643192_)
                                                   (let ((_e4292943198_
                                                          (gx#syntax-e
                                                           _hd4292643192_)))
                                                     (let ((_lp-hd4293043202_
                                                            (##car _e4292943198_))
                                                           (_lp-tl4293143205_
                                                            (##cdr _e4292943198_)))
                                                       (_loop4292843188_
                                                        _lp-tl4293143205_
                                                        (cons _lp-hd4293043202_
                                                              _body4293243195_))))
                                                   (let ((_body4293343208_
                                                          (reverse _body4293243195_)))
                                                     ((lambda (_L43212_
                                                               _L43214_
                                                               _L43215_
                                                               _L43216_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L43215_)
                                                            (cons _L43216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L43215_ (cons _L43214_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g4323843241_ _g4323943244_)
                                           (cons _g4323843241_ _g4323943244_))
                                         '()
                                         _L43212_))))
                    (_g4289043135_ _g4289243139_)))
              _body4293343208_
              _hd4292343176_
              _hd4292043166_
              _hd4291443146_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop4292843188_ _target4292543182_ '()))
                                   (_g4289043135_ _g4289243139_)))))
                         (_g4289043135_ _g4289243139_))
                     (_g4289043135_ _g4289243139_))
                 (_g4289043135_ _g4289243139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4289043135_
                                                  _g4289243139_))))
                                         (_g4289043135_ _g4289243139_))))
                                 (_g4289043135_ _g4289243139_))))
                         (_g4289043135_ _g4289243139_)))))
              (let ((_g4288843329_
                     (lambda (_g4289243251_)
                       (if (gx#stx-pair? _g4289243251_)
                           (let ((_e4289443254_ (gx#syntax-e _g4289243251_)))
                             (let ((_hd4289543258_ (##car _e4289443254_))
                                   (_tl4289643261_ (##cdr _e4289443254_)))
                               (if (gx#stx-pair? _tl4289643261_)
                                   (let ((_e4289743264_
                                          (gx#syntax-e _tl4289643261_)))
                                     (let ((_hd4289843268_
                                            (##car _e4289743264_))
                                           (_tl4289943271_
                                            (##cdr _e4289743264_)))
                                       (if (gx#stx-null? _hd4289843268_)
                                           (if (gx#stx-pair/null?
                                                _tl4289943271_)
                                               (if (fx>= (gx#stx-length
                                                          _tl4289943271_)
                                                         '0)
                                                   (let ((_g47084_
                                                          (gx#syntax-split-splice
                                                           _tl4289943271_
                                                           '0)))
                                                     (begin
                                                       (let ((_g47085_
                                                              (values-count
                                                               _g47084_)))
                                                         (if (not (fx= _g47085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g47085_)))
               (let ((_target4290043274_ (values-ref _g47084_ 0))
                     (_tl4290243277_ (values-ref _g47084_ 1)))
                 (if (gx#stx-null? _tl4290243277_)
                     (letrec ((_loop4290343280_
                               (lambda (_hd4290143284_ _body4290743287_)
                                 (if (gx#stx-pair? _hd4290143284_)
                                     (let ((_e4290443290_
                                            (gx#syntax-e _hd4290143284_)))
                                       (let ((_lp-hd4290543294_
                                              (##car _e4290443290_))
                                             (_lp-tl4290643297_
                                              (##cdr _e4290443290_)))
                                         (_loop4290343280_
                                          _lp-tl4290643297_
                                          (cons _lp-hd4290543294_
                                                _body4290743287_))))
                                     (let ((_body4290843300_
                                            (reverse _body4290743287_)))
                                       ((lambda (_L43304_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g4332043323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g4332143326_)
                         (cons _g4332043323_ _g4332143326_))
                       '()
                       _L43304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body4290843300_))))))
                       (_loop4290343280_ _target4290043274_ '()))
                     (_g4288943247_ _g4289243251_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4288943247_
                                                    _g4289243251_))
                                               (_g4288943247_ _g4289243251_))
                                           (_g4288943247_ _g4289243251_))))
                                   (_g4288943247_ _g4289243251_))))
                           (_g4288943247_ _g4289243251_)))))
                (_g4288843329_ _$stx42885_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx43337_)
        (let ((_g4334243394_
               (lambda (_g4334343390_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4334343390_))))
          (let ((_g4334143477_
                 (lambda (_g4334343398_)
                   (if (gx#stx-pair? _g4334343398_)
                       (let ((_e4337443401_ (gx#syntax-e _g4334343398_)))
                         (let ((_hd4337543405_ (##car _e4337443401_))
                               (_tl4337643408_ (##cdr _e4337443401_)))
                           (if (gx#stx-pair? _tl4337643408_)
                               (let ((_e4337743411_
                                      (gx#syntax-e _tl4337643408_)))
                                 (let ((_hd4337843415_ (##car _e4337743411_))
                                       (_tl4337943418_ (##cdr _e4337743411_)))
                                   (if (gx#stx-null? _hd4337843415_)
                                       (if (gx#stx-pair/null? _tl4337943418_)
                                           (if (fx>= (gx#stx-length
                                                      _tl4337943418_)
                                                     '0)
                                               (let ((_g47086_
                                                      (gx#syntax-split-splice
                                                       _tl4337943418_
                                                       '0)))
                                                 (begin
                                                   (let ((_g47087_
                                                          (values-count
                                                           _g47086_)))
                                                     (if (not (fx= _g47087_ 2))
                                                         (error "Context expects 2 values"
                                                                _g47087_)))
                                                   (let ((_target4338043421_
                                                          (values-ref
                                                           _g47086_
                                                           0))
                                                         (_tl4338243424_
                                                          (values-ref
                                                           _g47086_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl4338243424_)
                                                         (letrec ((_loop4338343427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd4338143431_ _body4338743434_)
                             (if (gx#stx-pair? _hd4338143431_)
                                 (let ((_e4338443437_
                                        (gx#syntax-e _hd4338143431_)))
                                   (let ((_lp-hd4338543441_
                                          (##car _e4338443437_))
                                         (_lp-tl4338643444_
                                          (##cdr _e4338443437_)))
                                     (_loop4338343427_
                                      _lp-tl4338643444_
                                      (cons _lp-hd4338543441_
                                            _body4338743434_))))
                                 (let ((_body4338843447_
                                        (reverse _body4338743434_)))
                                   ((lambda (_L43451_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g4346843471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4346943474_)
                     (cons _g4346843471_ _g4346943474_))
                   '()
                   _L43451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body4338843447_))))))
                   (_loop4338343427_ _target4338043421_ '()))
                 (_g4334243394_ _g4334343398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4334243394_ _g4334343398_))
                                           (_g4334243394_ _g4334343398_))
                                       (_g4334243394_ _g4334343398_))))
                               (_g4334243394_ _g4334343398_))))
                       (_g4334243394_ _g4334343398_)))))
            (let ((_g4334043603_
                   (lambda (_g4334343481_)
                     (if (gx#stx-pair? _g4334343481_)
                         (let ((_e4334943484_ (gx#syntax-e _g4334343481_)))
                           (let ((_hd4335043488_ (##car _e4334943484_))
                                 (_tl4335143491_ (##cdr _e4334943484_)))
                             (if (gx#stx-pair? _tl4335143491_)
                                 (let ((_e4335243494_
                                        (gx#syntax-e _tl4335143491_)))
                                   (let ((_hd4335343498_ (##car _e4335243494_))
                                         (_tl4335443501_
                                          (##cdr _e4335243494_)))
                                     (if (gx#stx-pair? _hd4335343498_)
                                         (let ((_e4335543504_
                                                (gx#syntax-e _hd4335343498_)))
                                           (let ((_hd4335643508_
                                                  (##car _e4335543504_))
                                                 (_tl4335743511_
                                                  (##cdr _e4335543504_)))
                                             (if (gx#stx-pair? _hd4335643508_)
                                                 (let ((_e4335843514_
                                                        (gx#syntax-e
                                                         _hd4335643508_)))
                                                   (let ((_hd4335943518_
                                                          (##car _e4335843514_))
                                                         (_tl4336043521_
                                                          (##cdr _e4335843514_)))
                                                     (if (gx#stx-pair?
                                                          _tl4336043521_)
                                                         (let ((_e4336143524_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4336043521_)))
                   (let ((_hd4336243528_ (##car _e4336143524_))
                         (_tl4336343531_ (##cdr _e4336143524_)))
                     (if (gx#stx-null? _tl4336343531_)
                         (if (gx#stx-pair/null? _tl4335443501_)
                             (if (fx>= (gx#stx-length _tl4335443501_) '0)
                                 (let ((_g47088_
                                        (gx#syntax-split-splice
                                         _tl4335443501_
                                         '0)))
                                   (begin
                                     (let ((_g47089_ (values-count _g47088_)))
                                       (if (not (fx= _g47089_ 2))
                                           (error "Context expects 2 values"
                                                  _g47089_)))
                                     (let ((_target4336443534_
                                            (values-ref _g47088_ 0))
                                           (_tl4336643537_
                                            (values-ref _g47088_ 1)))
                                       (if (gx#stx-null? _tl4336643537_)
                                           (letrec ((_loop4336743540_
                                                     (lambda (_hd4336543544_
                                                              _body4337143547_)
                                                       (if (gx#stx-pair?
                                                            _hd4336543544_)
                                                           (let ((_e4336843550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd4336543544_)))
                     (let ((_lp-hd4336943554_ (##car _e4336843550_))
                           (_lp-tl4337043557_ (##cdr _e4336843550_)))
                       (_loop4336743540_
                        _lp-tl4337043557_
                        (cons _lp-hd4336943554_ _body4337143547_))))
                   (let ((_body4337243560_ (reverse _body4337143547_)))
                     ((lambda (_L43564_ _L43566_ _L43567_ _L43568_ _L43569_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L43568_ (cons _L43567_ '()))
                                          '())
                                    (cons (cons _L43569_
                                                (cons _L43566_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g4359443597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g4359543600_)
                         (cons _g4359443597_ _g4359543600_))
                       '()
                       _L43564_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body4337243560_
                      _tl4335743511_
                      _hd4336243528_
                      _hd4335943518_
                      _hd4335043488_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop4336743540_
                                              _target4336443534_
                                              '()))
                                           (_g4334143477_ _g4334343481_)))))
                                 (_g4334143477_ _g4334343481_))
                             (_g4334143477_ _g4334343481_))
                         (_g4334143477_ _g4334343481_))))
                 (_g4334143477_ _g4334343481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4334143477_
                                                  _g4334343481_))))
                                         (_g4334143477_ _g4334343481_))))
                                 (_g4334143477_ _g4334343481_))))
                         (_g4334143477_ _g4334343481_)))))
              (_g4334043603_ _$stx43337_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx43609_)
        (let ((_g4362043764_
               (lambda (_g4362143760_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4362143760_))))
          (let ((_g4361943859_
                 (lambda (_g4362143768_)
                   (if (gx#stx-pair? _g4362143768_)
                       (let ((_e4374143771_ (gx#syntax-e _g4362143768_)))
                         (let ((_hd4374243775_ (##car _e4374143771_))
                               (_tl4374343778_ (##cdr _e4374143771_)))
                           (if (gx#stx-pair? _tl4374343778_)
                               (let ((_e4374443781_
                                      (gx#syntax-e _tl4374343778_)))
                                 (let ((_hd4374543785_ (##car _e4374443781_))
                                       (_tl4374643788_ (##cdr _e4374443781_)))
                                   (if (gx#stx-pair? _tl4374643788_)
                                       (let ((_e4374743791_
                                              (gx#syntax-e _tl4374643788_)))
                                         (let ((_hd4374843795_
                                                (##car _e4374743791_))
                                               (_tl4374943798_
                                                (##cdr _e4374743791_)))
                                           (if (gx#stx-datum? _hd4374843795_)
                                               (if (equal? (gx#stx-e
                                                            _hd4374843795_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl4374943798_)
                                                       (let ((_e4375043801_
                                                              (gx#syntax-e
                                                               _tl4374943798_)))
                                                         (let ((_hd4375143805_
                                                                (##car _e4375043801_))
                                                               (_tl4375243808_
                                                                (##cdr _e4375043801_)))
                                                           (if (gx#stx-pair?
                                                                _tl4375243808_)
                                                               (let ((_e4375343811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl4375243808_)))
                         (let ((_hd4375443815_ (##car _e4375343811_))
                               (_tl4375543818_ (##cdr _e4375343811_)))
                           (if (gx#identifier? _hd4375443815_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g47090_|
                                    _hd4375443815_)
                                   (if (gx#stx-pair? _tl4375543818_)
                                       (let ((_e4375643821_
                                              (gx#syntax-e _tl4375543818_)))
                                         (let ((_hd4375743825_
                                                (##car _e4375643821_))
                                               (_tl4375843828_
                                                (##cdr _e4375643821_)))
                                           (if (gx#stx-null? _tl4375843828_)
                                               ((lambda (_L43831_
                                                         _L43833_
                                                         _L43834_
                                                         _L43835_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L43835_
                                              (cons _L43834_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L43831_
                                                    (cons (cons _L43833_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '$obj)
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd4375743825_
                                                _hd4375143805_
                                                _hd4374543785_
                                                _hd4374243775_)
                                               (_g4362043764_ _g4362143768_))))
                                       (_g4362043764_ _g4362143768_))
                                   (_g4362043764_ _g4362143768_))
                               (_g4362043764_ _g4362143768_))))
                       (_g4362043764_ _g4362143768_))))
               (_g4362043764_ _g4362143768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4362043764_
                                                    _g4362143768_))
                                               (_g4362043764_ _g4362143768_))))
                                       (_g4362043764_ _g4362143768_))))
                               (_g4362043764_ _g4362143768_))))
                       (_g4362043764_ _g4362143768_)))))
            (let ((_g4361843927_
                   (lambda (_g4362143863_)
                     (if (gx#stx-pair? _g4362143863_)
                         (let ((_e4372543866_ (gx#syntax-e _g4362143863_)))
                           (let ((_hd4372643870_ (##car _e4372543866_))
                                 (_tl4372743873_ (##cdr _e4372543866_)))
                             (if (gx#stx-pair? _tl4372743873_)
                                 (let ((_e4372843876_
                                        (gx#syntax-e _tl4372743873_)))
                                   (let ((_hd4372943880_ (##car _e4372843876_))
                                         (_tl4373043883_
                                          (##cdr _e4372843876_)))
                                     (if (gx#stx-pair? _tl4373043883_)
                                         (let ((_e4373143886_
                                                (gx#syntax-e _tl4373043883_)))
                                           (let ((_hd4373243890_
                                                  (##car _e4373143886_))
                                                 (_tl4373343893_
                                                  (##cdr _e4373143886_)))
                                             (if (gx#stx-datum? _hd4373243890_)
                                                 (if (equal? (gx#stx-e
                                                              _hd4373243890_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl4373343893_)
                                                         (let ((_e4373443896_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4373343893_)))
                   (let ((_hd4373543900_ (##car _e4373443896_))
                         (_tl4373643903_ (##cdr _e4373443896_)))
                     (if (gx#stx-null? _tl4373643903_)
                         ((lambda (_L43906_ _L43908_ _L43909_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L43909_
                                    (cons _L43908_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L43906_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd4373543900_
                          _hd4372943880_
                          _hd4372643870_)
                         (_g4361943859_ _g4362143863_))))
                 (_g4361943859_ _g4362143863_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4361943859_
                                                      _g4362143863_))
                                                 (_g4361943859_
                                                  _g4362143863_))))
                                         (_g4361943859_ _g4362143863_))))
                                 (_g4361943859_ _g4362143863_))))
                         (_g4361943859_ _g4362143863_)))))
              (let ((_g4361743995_
                     (lambda (_g4362143931_)
                       (if (gx#stx-pair? _g4362143931_)
                           (let ((_e4371043934_ (gx#syntax-e _g4362143931_)))
                             (let ((_hd4371143938_ (##car _e4371043934_))
                                   (_tl4371243941_ (##cdr _e4371043934_)))
                               (if (gx#stx-pair? _tl4371243941_)
                                   (let ((_e4371343944_
                                          (gx#syntax-e _tl4371243941_)))
                                     (let ((_hd4371443948_
                                            (##car _e4371343944_))
                                           (_tl4371543951_
                                            (##cdr _e4371343944_)))
                                       (if (gx#stx-pair? _tl4371543951_)
                                           (let ((_e4371643954_
                                                  (gx#syntax-e
                                                   _tl4371543951_)))
                                             (let ((_hd4371743958_
                                                    (##car _e4371643954_))
                                                   (_tl4371843961_
                                                    (##cdr _e4371643954_)))
                                               (if (gx#identifier?
                                                    _hd4371743958_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g47091_|
                                                        _hd4371743958_)
                                                       (if (gx#stx-pair?
                                                            _tl4371843961_)
                                                           (let ((_e4371943964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl4371843961_)))
                     (let ((_hd4372043968_ (##car _e4371943964_))
                           (_tl4372143971_ (##cdr _e4371943964_)))
                       (if (gx#stx-null? _tl4372143971_)
                           ((lambda (_L43974_ _L43976_ _L43977_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L43977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L43976_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L43974_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd4372043968_
                            _hd4371443948_
                            _hd4371143938_)
                           (_g4361843927_ _g4362143931_))))
                   (_g4361843927_ _g4362143931_))
               (_g4361843927_ _g4362143931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4361843927_
                                                    _g4362143931_))))
                                           (_g4361843927_ _g4362143931_))))
                                   (_g4361843927_ _g4362143931_))))
                           (_g4361843927_ _g4362143931_)))))
                (let ((_g4361644037_
                       (lambda (_g4362143999_)
                         (if (gx#stx-pair? _g4362143999_)
                             (let ((_e4370144002_ (gx#syntax-e _g4362143999_)))
                               (let ((_hd4370244006_ (##car _e4370144002_))
                                     (_tl4370344009_ (##cdr _e4370144002_)))
                                 (if (gx#stx-pair? _tl4370344009_)
                                     (let ((_e4370444012_
                                            (gx#syntax-e _tl4370344009_)))
                                       (let ((_hd4370544016_
                                              (##car _e4370444012_))
                                             (_tl4370644019_
                                              (##cdr _e4370444012_)))
                                         (if (gx#stx-null? _tl4370644019_)
                                             ((lambda (_L44022_ _L44024_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L44024_
                                (cons _L44022_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd4370544016_
                                              _hd4370244006_)
                                             (_g4361743995_ _g4362143999_))))
                                     (_g4361743995_ _g4362143999_))))
                             (_g4361743995_ _g4362143999_)))))
                  (let ((_g4361544091_
                         (lambda (_g4362144041_)
                           (if (gx#stx-pair? _g4362144041_)
                               (let ((_e4369044044_
                                      (gx#syntax-e _g4362144041_)))
                                 (let ((_hd4369144048_ (##car _e4369044044_))
                                       (_tl4369244051_ (##cdr _e4369044044_)))
                                   (if (gx#stx-pair? _tl4369244051_)
                                       (let ((_e4369344054_
                                              (gx#syntax-e _tl4369244051_)))
                                         (let ((_hd4369444058_
                                                (##car _e4369344054_))
                                               (_tl4369544061_
                                                (##cdr _e4369344054_)))
                                           (if (gx#stx-pair? _tl4369544061_)
                                               (let ((_e4369644064_
                                                      (gx#syntax-e
                                                       _tl4369544061_)))
                                                 (let ((_hd4369744068_
                                                        (##car _e4369644064_))
                                                       (_tl4369844071_
                                                        (##cdr _e4369644064_)))
                                                   (if (gx#stx-null?
                                                        _tl4369844071_)
                                                       ((lambda (_L44074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L44076_)
                  (cons _L44076_ (cons _L44074_ '())))
                _hd4369744068_
                _hd4369444058_)
               (_g4361644037_ _g4362144041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4361644037_ _g4362144041_))))
                                       (_g4361644037_ _g4362144041_))))
                               (_g4361644037_ _g4362144041_)))))
                    (let ((_g4361444171_
                           (lambda (_g4362144095_)
                             (if (gx#stx-pair? _g4362144095_)
                                 (let ((_e4367344098_
                                        (gx#syntax-e _g4362144095_)))
                                   (let ((_hd4367444102_ (##car _e4367344098_))
                                         (_tl4367544105_
                                          (##cdr _e4367344098_)))
                                     (if (gx#stx-pair? _tl4367544105_)
                                         (let ((_e4367644108_
                                                (gx#syntax-e _tl4367544105_)))
                                           (let ((_hd4367744112_
                                                  (##car _e4367644108_))
                                                 (_tl4367844115_
                                                  (##cdr _e4367644108_)))
                                             (if (gx#stx-pair? _hd4367744112_)
                                                 (let ((_e4367944118_
                                                        (gx#syntax-e
                                                         _hd4367744112_)))
                                                   (let ((_hd4368044122_
                                                          (##car _e4367944118_))
                                                         (_tl4368144125_
                                                          (##cdr _e4367944118_)))
                                                     (if (gx#identifier?
                                                          _hd4368044122_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g47092_|
                                                              _hd4368044122_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl4368144125_)
                         (let ((_e4368244128_ (gx#syntax-e _tl4368144125_)))
                           (let ((_hd4368344132_ (##car _e4368244128_))
                                 (_tl4368444135_ (##cdr _e4368244128_)))
                             (if (gx#stx-null? _tl4368444135_)
                                 (if (gx#stx-pair? _tl4367844115_)
                                     (let ((_e4368544138_
                                            (gx#syntax-e _tl4367844115_)))
                                       (let ((_hd4368644142_
                                              (##car _e4368544138_))
                                             (_tl4368744145_
                                              (##cdr _e4368544138_)))
                                         (if (gx#stx-null? _tl4368744145_)
                                             ((lambda (_L44148_
                                                       _L44150_
                                                       _L44151_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L44151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L44150_ (cons _L44148_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd4368644142_
                                              _hd4368344132_
                                              _hd4367444102_)
                                             (_g4361544091_ _g4362144095_))))
                                     (_g4361544091_ _g4362144095_))
                                 (_g4361544091_ _g4362144095_))))
                         (_g4361544091_ _g4362144095_))
                     (_g4361544091_ _g4362144095_))
                 (_g4361544091_ _g4362144095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4361544091_
                                                  _g4362144095_))))
                                         (_g4361544091_ _g4362144095_))))
                                 (_g4361544091_ _g4362144095_)))))
                      (let ((_g4361344281_
                             (lambda (_g4362144175_)
                               (if (gx#stx-pair? _g4362144175_)
                                   (let ((_e4364944178_
                                          (gx#syntax-e _g4362144175_)))
                                     (let ((_hd4365044182_
                                            (##car _e4364944178_))
                                           (_tl4365144185_
                                            (##cdr _e4364944178_)))
                                       (if (gx#stx-pair? _tl4365144185_)
                                           (let ((_e4365244188_
                                                  (gx#syntax-e
                                                   _tl4365144185_)))
                                             (let ((_hd4365344192_
                                                    (##car _e4365244188_))
                                                   (_tl4365444195_
                                                    (##cdr _e4365244188_)))
                                               (if (gx#stx-pair?
                                                    _hd4365344192_)
                                                   (let ((_e4365544198_
                                                          (gx#syntax-e
                                                           _hd4365344192_)))
                                                     (let ((_hd4365644202_
                                                            (##car _e4365544198_))
                                                           (_tl4365744205_
                                                            (##cdr _e4365544198_)))
                                                       (if (gx#identifier?
                                                            _hd4365644202_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g47093_|
                                                                _hd4365644202_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl4365744205_)
                           (if (fx>= (gx#stx-length _tl4365744205_) '0)
                               (let ((_g47094_
                                      (gx#syntax-split-splice
                                       _tl4365744205_
                                       '0)))
                                 (begin
                                   (let ((_g47095_ (values-count _g47094_)))
                                     (if (not (fx= _g47095_ 2))
                                         (error "Context expects 2 values"
                                                _g47095_)))
                                   (let ((_target4365844208_
                                          (values-ref _g47094_ 0))
                                         (_tl4366044211_
                                          (values-ref _g47094_ 1)))
                                     (if (gx#stx-null? _tl4366044211_)
                                         (letrec ((_loop4366144214_
                                                   (lambda (_hd4365944218_
                                                            _pred4366544221_)
                                                     (if (gx#stx-pair?
                                                          _hd4365944218_)
                                                         (let ((_e4366244224_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4365944218_)))
                   (let ((_lp-hd4366344228_ (##car _e4366244224_))
                         (_lp-tl4366444231_ (##cdr _e4366244224_)))
                     (_loop4366144214_
                      _lp-tl4366444231_
                      (cons _lp-hd4366344228_ _pred4366544221_))))
                 (let ((_pred4366644234_ (reverse _pred4366544221_)))
                   (if (gx#stx-pair? _tl4365444195_)
                       (let ((_e4366744238_ (gx#syntax-e _tl4365444195_)))
                         (let ((_hd4366844242_ (##car _e4366744238_))
                               (_tl4366944245_ (##cdr _e4366744238_)))
                           (if (gx#stx-null? _tl4366944245_)
                               ((lambda (_L44248_ _L44250_ _L44251_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g4427244275_
                                                          _g4427344278_)
                                                   (cons (cons _L44251_
                                                               (cons _g4427244275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L44248_ '())))
                 _g4427344278_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L44250_))))
                                _hd4366844242_
                                _pred4366644234_
                                _hd4365044182_)
                               (_g4361444171_ _g4362144175_))))
                       (_g4361444171_ _g4362144175_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop4366144214_
                                            _target4365844208_
                                            '()))
                                         (_g4361444171_ _g4362144175_)))))
                               (_g4361444171_ _g4362144175_))
                           (_g4361444171_ _g4362144175_))
                       (_g4361444171_ _g4362144175_))
                   (_g4361444171_ _g4362144175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4361444171_
                                                    _g4362144175_))))
                                           (_g4361444171_ _g4362144175_))))
                                   (_g4361444171_ _g4362144175_)))))
                        (let ((_g4361244391_
                               (lambda (_g4362144285_)
                                 (if (gx#stx-pair? _g4362144285_)
                                     (let ((_e4362544288_
                                            (gx#syntax-e _g4362144285_)))
                                       (let ((_hd4362644292_
                                              (##car _e4362544288_))
                                             (_tl4362744295_
                                              (##cdr _e4362544288_)))
                                         (if (gx#stx-pair? _tl4362744295_)
                                             (let ((_e4362844298_
                                                    (gx#syntax-e
                                                     _tl4362744295_)))
                                               (let ((_hd4362944302_
                                                      (##car _e4362844298_))
                                                     (_tl4363044305_
                                                      (##cdr _e4362844298_)))
                                                 (if (gx#stx-pair?
                                                      _hd4362944302_)
                                                     (let ((_e4363144308_
                                                            (gx#syntax-e
                                                             _hd4362944302_)))
                                                       (let ((_hd4363244312_
                                                              (##car _e4363144308_))
                                                             (_tl4363344315_
                                                              (##cdr _e4363144308_)))
                                                         (if (gx#identifier?
                                                              _hd4363244312_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g47096_|
                          _hd4363244312_)
                         (if (gx#stx-pair/null? _tl4363344315_)
                             (if (fx>= (gx#stx-length _tl4363344315_) '0)
                                 (let ((_g47097_
                                        (gx#syntax-split-splice
                                         _tl4363344315_
                                         '0)))
                                   (begin
                                     (let ((_g47098_ (values-count _g47097_)))
                                       (if (not (fx= _g47098_ 2))
                                           (error "Context expects 2 values"
                                                  _g47098_)))
                                     (let ((_target4363444318_
                                            (values-ref _g47097_ 0))
                                           (_tl4363644321_
                                            (values-ref _g47097_ 1)))
                                       (if (gx#stx-null? _tl4363644321_)
                                           (letrec ((_loop4363744324_
                                                     (lambda (_hd4363544328_
                                                              _pred4364144331_)
                                                       (if (gx#stx-pair?
                                                            _hd4363544328_)
                                                           (let ((_e4363844334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd4363544328_)))
                     (let ((_lp-hd4363944338_ (##car _e4363844334_))
                           (_lp-tl4364044341_ (##cdr _e4363844334_)))
                       (_loop4363744324_
                        _lp-tl4364044341_
                        (cons _lp-hd4363944338_ _pred4364144331_))))
                   (let ((_pred4364244344_ (reverse _pred4364144331_)))
                     (if (gx#stx-pair? _tl4363044305_)
                         (let ((_e4364344348_ (gx#syntax-e _tl4363044305_)))
                           (let ((_hd4364444352_ (##car _e4364344348_))
                                 (_tl4364544355_ (##cdr _e4364344348_)))
                             (if (gx#stx-null? _tl4364544355_)
                                 ((lambda (_L44358_ _L44360_ _L44361_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g4438244385_
                                                            _g4438344388_)
                                                     (cons (cons _L44361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g4438244385_ (cons _L44358_ '())))
                   _g4438344388_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L44360_))))
                                  _hd4364444352_
                                  _pred4364244344_
                                  _hd4362644292_)
                                 (_g4361344281_ _g4362144285_))))
                         (_g4361344281_ _g4362144285_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop4363744324_
                                              _target4363444318_
                                              '()))
                                           (_g4361344281_ _g4362144285_)))))
                                 (_g4361344281_ _g4362144285_))
                             (_g4361344281_ _g4362144285_))
                         (_g4361344281_ _g4362144285_))
                     (_g4361344281_ _g4362144285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4361344281_
                                                      _g4362144285_))))
                                             (_g4361344281_ _g4362144285_))))
                                     (_g4361344281_ _g4362144285_)))))
                          (_g4361244391_ _$stx43609_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx44397_)
        (let ((_g4440244436_
               (lambda (_g4440344432_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4440344432_))))
          (let ((_g4440144493_
                 (lambda (_g4440344440_)
                   (if (gx#stx-pair? _g4440344440_)
                       (let ((_e4442244443_ (gx#syntax-e _g4440344440_)))
                         (let ((_hd4442344447_ (##car _e4442244443_))
                               (_tl4442444450_ (##cdr _e4442244443_)))
                           (if (gx#stx-pair? _tl4442444450_)
                               (let ((_e4442544453_
                                      (gx#syntax-e _tl4442444450_)))
                                 (let ((_hd4442644457_ (##car _e4442544453_))
                                       (_tl4442744460_ (##cdr _e4442544453_)))
                                   (if (gx#stx-pair? _tl4442744460_)
                                       (let ((_e4442844463_
                                              (gx#syntax-e _tl4442744460_)))
                                         (let ((_hd4442944467_
                                                (##car _e4442844463_))
                                               (_tl4443044470_
                                                (##cdr _e4442844463_)))
                                           (if (gx#stx-null? _tl4443044470_)
                                               ((lambda (_L44473_
                                                         _L44475_
                                                         _L44476_)
                                                  (cons _L44476_
                                                        (cons _L44475_
                                                              (cons _L44473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '$stx)
                                                    '())
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$stx) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd4442944467_
                                                _hd4442644457_
                                                _hd4442344447_)
                                               (_g4440244436_ _g4440344440_))))
                                       (_g4440244436_ _g4440344440_))))
                               (_g4440244436_ _g4440344440_))))
                       (_g4440244436_ _g4440344440_)))))
            (let ((_g4440044561_
                   (lambda (_g4440344497_)
                     (if (gx#stx-pair? _g4440344497_)
                         (let ((_e4440744500_ (gx#syntax-e _g4440344497_)))
                           (let ((_hd4440844504_ (##car _e4440744500_))
                                 (_tl4440944507_ (##cdr _e4440744500_)))
                             (if (gx#stx-pair? _tl4440944507_)
                                 (let ((_e4441044510_
                                        (gx#syntax-e _tl4440944507_)))
                                   (let ((_hd4441144514_ (##car _e4441044510_))
                                         (_tl4441244517_
                                          (##cdr _e4441044510_)))
                                     (if (gx#stx-pair? _tl4441244517_)
                                         (let ((_e4441344520_
                                                (gx#syntax-e _tl4441244517_)))
                                           (let ((_hd4441444524_
                                                  (##car _e4441344520_))
                                                 (_tl4441544527_
                                                  (##cdr _e4441344520_)))
                                             (if (gx#stx-pair? _tl4441544527_)
                                                 (let ((_e4441644530_
                                                        (gx#syntax-e
                                                         _tl4441544527_)))
                                                   (let ((_hd4441744534_
                                                          (##car _e4441644530_))
                                                         (_tl4441844537_
                                                          (##cdr _e4441644530_)))
                                                     (if (gx#stx-null?
                                                          _tl4441844537_)
                                                         ((lambda (_L44540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L44542_
                           _L44543_)
                    (if (gx#identifier? _L44543_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L44543_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L44542_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L44540_ '()))
                                            '()))
                                (cons (cons (gx#datum->syntax '#f 'lambda)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons '()
                                  (cons (cons (cons 'match:
                                                    (gx#datum->syntax
                                                     '#f
                                                     'body))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'core-apply-expander)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$match-e)
                        (cons (cons (gx#datum->syntax '#f 'stx-wrap-source)
                                    (cons (cons (gx#datum->syntax '#f 'syntax)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'body)
                                                      '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-source)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             '$stx)
                                                            '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f '_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-apply-expander)
                        (cons (gx#datum->syntax '#f '$macro-e)
                              (cons (gx#datum->syntax '#f '$stx) '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (_g4440144493_ _g4440344497_)))
                  _hd4441744534_
                  _hd4441444524_
                  _hd4441144514_)
                 (_g4440144493_ _g4440344497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4440144493_
                                                  _g4440344497_))))
                                         (_g4440144493_ _g4440344497_))))
                                 (_g4440144493_ _g4440344497_))))
                         (_g4440144493_ _g4440344497_)))))
              (_g4440044561_ _$stx44397_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx44565_)
        (let ((_g4456944584_
               (lambda (_g4457044580_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4457044580_))))
          (let ((_g4456844627_
                 (lambda (_g4457044588_)
                   (if (gx#stx-pair? _g4457044588_)
                       (let ((_e4457344591_ (gx#syntax-e _g4457044588_)))
                         (let ((_hd4457444595_ (##car _e4457344591_))
                               (_tl4457544598_ (##cdr _e4457344591_)))
                           (if (gx#stx-pair? _tl4457544598_)
                               (let ((_e4457644601_
                                      (gx#syntax-e _tl4457544598_)))
                                 (let ((_hd4457744605_ (##car _e4457644601_))
                                       (_tl4457844608_ (##cdr _e4457644601_)))
                                   ((lambda (_L44611_ _L44613_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L44613_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L44611_)
                                                        '()))))
                                    _tl4457844608_
                                    _hd4457744605_)))
                               (_g4456944584_ _g4457044588_))))
                       (_g4456944584_ _g4457044588_)))))
            (_g4456844627_ _$stx44565_)))))))
