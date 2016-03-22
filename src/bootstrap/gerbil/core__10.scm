(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g28382_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g28383_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g28386_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g28387_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g28388_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g28389_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g28390_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g28391_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g28392_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g28393_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g28394_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g28395_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g28396_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g28397_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28398_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28411_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g28412_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g28413_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g28414_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g28431_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28432_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28433_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g28434_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g28437_| (gx#core-quote-syntax 'and))
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
      (lambda _$args23350_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args23350_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx23347_)
        (if (gx#identifier? _stx23347_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx23347_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2172923333_
             (lambda (_stx21731_ _match-stx21733_)
               (let ((_parse-qq21741_
                      (lambda (_hd21747_)
                        (let ((_g2174921756_
                               (lambda (_g2175021752_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2175021752_))))
                          (_g2174921756_ _hd21747_)))))
                 (let ((_parse-error21742_
                        (lambda (_hd21744_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx21733_
                                     (cons _match-stx21733_
                                           (cons _stx21731_
                                                 (cons _hd21744_ '())))
                                     (cons _stx21731_
                                           (cons _hd21744_ '())))))))
                   (letrec ((_parse121735_
                             (lambda (_hd22082_)
                               (let ((_g2210722238_
                                      (lambda (_g2210822234_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2210822234_))))
                                 (let ((_g2210622249_
                                        (lambda (_g2210822242_)
                                          ((lambda ()
                                             (_parse-error21742_
                                              _hd22082_))))))
                                   (let ((_g2210522267_
                                          (lambda (_g2210822253_)
                                            ((lambda (_L22256_)
                                               (if (gx#stx-datum? _L22256_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22256_)
                                                               '()))
                                                   (_g2210622249_
                                                    _g2210822253_)))
                                             _g2210822253_))))
                                     (let ((_g2210422283_
                                            (lambda (_g2210822271_)
                                              ((lambda (_L22274_)
                                                 (if (if (gx#identifier?
                                                          _L22274_)
                                                         (not (gx#ellipsis?
                                                               _L22274_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22274_ '()))
                                                     (_g2210522267_
                                                      _g2210822271_)))
                                               _g2210822271_))))
                                       (let ((_g2210322299_
                                              (lambda (_g2210822287_)
                                                ((lambda (_L22290_)
                                                   (if (gx#underscore?
                                                        _L22290_)
                                                       (cons 'any: '())
                                                       (_g2210422283_
                                                        _g2210822287_)))
                                                 _g2210822287_))))
                                         (let ((_g2210222331_
                                                (lambda (_g2210822303_)
                                                  (if (gx#stx-pair?
                                                       _g2210822303_)
                                                      (let ((_e2222722306_
                                                             (gx#syntax-e
                                                              _g2210822303_)))
                                                        (let ((_hd2222822310_
                                                               (##car _e2222722306_))
                                                              (_tl2222922313_
                                                               (##cdr _e2222722306_)))
                                                          ((lambda (_L22316_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22316_)
                         (_parse121735_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L22316_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22082_)
                            (let ((_$e22327_ (gx#stx-source _hd22082_)))
                              (if _$e22327_
                                  _$e22327_
                                  (gx#stx-source _stx21731_))))))
                         (_g2210322299_ _g2210822303_)))
                   _hd2222822310_)))
              (_g2210322299_ _g2210822303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2210122371_
                                                  (lambda (_g2210822335_)
                                                    (if (gx#stx-pair?
                                                         _g2210822335_)
                                                        (let ((_e2222022338_
                                                               (gx#syntax-e
                                                                _g2210822335_)))
                                                          (let ((_hd2222122342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2222022338_))
                        (_tl2222222345_ (##cdr _e2222022338_)))
                    (if (gx#identifier? _hd2222122342_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g28382_|
                             _hd2222122342_)
                            (if (gx#stx-pair? _tl2222222345_)
                                (let ((_e2222322348_
                                       (gx#syntax-e _tl2222222345_)))
                                  (let ((_hd2222422352_ (##car _e2222322348_))
                                        (_tl2222522355_ (##cdr _e2222322348_)))
                                    (if (gx#stx-null? _tl2222522355_)
                                        ((lambda (_L22358_)
                                           (_parse-qq21741_ _L22358_))
                                         _hd2222422352_)
                                        (_g2210222331_ _g2210822335_))))
                                (_g2210222331_ _g2210822335_))
                            (_g2210222331_ _g2210822335_))
                        (_g2210222331_ _g2210822335_))))
                (_g2210222331_ _g2210822335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2210022411_
                                                    (lambda (_g2210822375_)
                                                      (if (gx#stx-pair?
                                                           _g2210822375_)
                                                          (let ((_e2221322378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2210822375_)))
                    (let ((_hd2221422382_ (##car _e2221322378_))
                          (_tl2221522385_ (##cdr _e2221322378_)))
                      (if (gx#identifier? _hd2221422382_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g28383_|
                               _hd2221422382_)
                              (if (gx#stx-pair? _tl2221522385_)
                                  (let ((_e2221622388_
                                         (gx#syntax-e _tl2221522385_)))
                                    (let ((_hd2221722392_
                                           (##car _e2221622388_))
                                          (_tl2221822395_
                                           (##cdr _e2221622388_)))
                                      (if (gx#stx-null? _tl2221822395_)
                                          ((lambda (_L22398_)
                                             (cons 'datum:
                                                   (cons (gx#stx-e _L22398_)
                                                         '())))
                                           _hd2221722392_)
                                          (_g2210122371_ _g2210822375_))))
                                  (_g2210122371_ _g2210822375_))
                              (_g2210122371_ _g2210822375_))
                          (_g2210122371_ _g2210822375_))))
                  (_g2210122371_ _g2210822375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2209922461_
                                                      (lambda (_g2210822415_)
                                                        (if (gx#stx-pair?
                                                             _g2210822415_)
                                                            (let ((_e2220622418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2210822415_)))
                      (let ((_hd2220722422_ (##car _e2220622418_))
                            (_tl2220822425_ (##cdr _e2220622418_)))
                        (if (gx#stx-pair? _tl2220822425_)
                            (let ((_e2220922428_ (gx#syntax-e _tl2220822425_)))
                              (let ((_hd2221022432_ (##car _e2220922428_))
                                    (_tl2221122435_ (##cdr _e2220922428_)))
                                (if (gx#stx-null? _tl2221122435_)
                                    ((lambda (_L22438_ _L22440_)
                                       (if (if (gx#identifier? _L22440_)
                                               (let ((_$e22453_
                                                      (gx#free-identifier=?
                                                       _L22440_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'eq?))))
                                                 (if _$e22453_
                                                     _$e22453_
                                                     (let ((_$e22457_
                                                            (gx#free-identifier=?
                                                             _L22440_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'eqv?))))
                                                       (if _$e22457_
                                                           _$e22457_
                                                           (gx#free-identifier=?
                                                            _L22440_
                                                            (gx#datum->syntax
                                                             '#f
                                                             'equal?))))))
                                               '#f)
                                           (cons '?:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'cut)
                                                             (cons _L22440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '<>)
                                 (cons _L22438_ '()))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2210022411_ _g2210822415_)))
                                     _hd2221022432_
                                     _hd2220722422_)
                                    (_g2210022411_ _g2210822415_))))
                            (_g2210022411_ _g2210822415_))))
                    (_g2210022411_ _g2210822415_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2209822491_
                                                        (lambda (_g2210822465_)
                                                          (if (gx#stx-pair?
                                                               _g2210822465_)
                                                              (let ((_e2220122468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2210822465_)))
                        (let ((_hd2220222472_ (##car _e2220122468_))
                              (_tl2220322475_ (##cdr _e2220122468_)))
                          ((lambda (_L22478_ _L22480_)
                             (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                  _L22480_)
                                 (cons 'class:
                                       (cons (gx#syntax-local-value _L22480_)
                                             (cons (_parse-class-body21740_
                                                    _L22478_)
                                                   '())))
                                 (_g2209922461_ _g2210822465_)))
                           _tl2220322475_
                           _hd2220222472_)))
                      (_g2209922461_ _g2210822465_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2209722521_
                                                          (lambda (_g2210822495_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2210822495_)
                        (let ((_e2219622498_ (gx#syntax-e _g2210822495_)))
                          (let ((_hd2219722502_ (##car _e2219622498_))
                                (_tl2219822505_ (##cdr _e2219622498_)))
                            ((lambda (_L22508_ _L22510_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                    _L22510_)
                                   (cons 'struct:
                                         (cons (gx#syntax-local-value _L22510_)
                                               (cons (_parse-vector21738_
                                                      _L22508_)
                                                     '())))
                                   (_g2209822491_ _g2210822495_)))
                             _tl2219822505_
                             _hd2219722502_)))
                        (_g2209822491_ _g2210822495_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2209622584_
                                                            (lambda (_g2210822525_)
                                                              (if (gx#stx-vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2210822525_)
                          (let ((_e2218422528_
                                 (vector->list (gx#syntax-e _g2210822525_))))
                            (if (gx#stx-pair/null? _e2218422528_)
                                (if (fx>= (gx#stx-length _e2218422528_) '0)
                                    (let ((_g28384_
                                           (gx#syntax-split-splice
                                            _e2218422528_
                                            '0)))
                                      (begin
                                        (let ((_g28385_
                                               (values-count _g28384_)))
                                          (if (not (fx= _g28385_ 2))
                                              (error "Context expects 2 values"
                                                     _g28385_)))
                                        (let ((_target2218522532_
                                               (values-ref _g28384_ 0))
                                              (_tl2218722535_
                                               (values-ref _g28384_ 1)))
                                          (if (gx#stx-null? _tl2218722535_)
                                              (letrec ((_loop2218822538_
                                                        (lambda (_hd2218622542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2219222545_)
                  (if (gx#stx-pair? _hd2218622542_)
                      (let ((_e2218922548_ (gx#syntax-e _hd2218622542_)))
                        (let ((_lp-hd2219022552_ (##car _e2218922548_))
                              (_lp-tl2219122555_ (##cdr _e2218922548_)))
                          (_loop2218822538_
                           _lp-tl2219122555_
                           (cons _lp-hd2219022552_ _body2219222545_))))
                      (let ((_body2219322558_ (reverse _body2219222545_)))
                        ((lambda (_L22562_)
                           (cons 'vector:
                                 (cons (_parse-vector21738_
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2257522578_
                                                          _g2257622581_)
                                                   (cons _g2257522578_
                                                         _g2257622581_))
                                                 '()
                                                 _L22562_)))
                                       '())))
                         _body2219322558_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2218822538_
                                                 _target2218522532_
                                                 '()))
                                              (_g2209722521_ _g2210822525_)))))
                                    (_g2209722521_ _g2210822525_))
                                (_g2209722521_ _g2210822525_)))
                          (_g2209722521_ _g2210822525_)))))
               (let ((_g2209522612_
                      (lambda (_g2210822588_)
                        (if (gx#stx-pair? _g2210822588_)
                            (let ((_e2218022591_ (gx#syntax-e _g2210822588_)))
                              (let ((_hd2218122595_ (##car _e2218022591_))
                                    (_tl2218222598_ (##cdr _e2218022591_)))
                                (if (gx#identifier? _hd2218122595_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core::<match>[1]#_g28386_|
                                         _hd2218122595_)
                                        ((lambda (_L22601_)
                                           (cons 'vector:
                                                 (cons (_parse-vector21738_
                                                        _L22601_)
                                                       '())))
                                         _tl2218222598_)
                                        (_g2209622584_ _g2210822588_))
                                    (_g2209622584_ _g2210822588_))))
                            (_g2209622584_ _g2210822588_)))))
                 (let ((_g2209422640_
                        (lambda (_g2210822616_)
                          (if (gx#stx-pair? _g2210822616_)
                              (let ((_e2217622619_
                                     (gx#syntax-e _g2210822616_)))
                                (let ((_hd2217722623_ (##car _e2217622619_))
                                      (_tl2217822626_ (##cdr _e2217622619_)))
                                  (if (gx#identifier? _hd2217722623_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g28387_|
                                           _hd2217722623_)
                                          ((lambda (_L22629_)
                                             (cons 'values:
                                                   (cons (_parse-vector21738_
                                                          _L22629_)
                                                         '())))
                                           _tl2217822626_)
                                          (_g2209522612_ _g2210822616_))
                                      (_g2209522612_ _g2210822616_))))
                              (_g2209522612_ _g2210822616_)))))
                   (let ((_g2209322680_
                          (lambda (_g2210822644_)
                            (if (gx#stx-pair? _g2210822644_)
                                (let ((_e2216922647_
                                       (gx#syntax-e _g2210822644_)))
                                  (let ((_hd2217022651_ (##car _e2216922647_))
                                        (_tl2217122654_ (##cdr _e2216922647_)))
                                    (if (gx#identifier? _hd2217022651_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g28388_|
                                             _hd2217022651_)
                                            (if (gx#stx-pair? _tl2217122654_)
                                                (let ((_e2217222657_
                                                       (gx#syntax-e
                                                        _tl2217122654_)))
                                                  (let ((_hd2217322661_
                                                         (##car _e2217222657_))
                                                        (_tl2217422664_
                                                         (##cdr _e2217222657_)))
                                                    (if (gx#stx-null?
                                                         _tl2217422664_)
                                                        ((lambda (_L22667_)
                                                           (_parse121735_
                                                            _L22667_))
                                                         _hd2217322661_)
                                                        (_g2209422640_
                                                         _g2210822644_))))
                                                (_g2209422640_ _g2210822644_))
                                            (_g2209422640_ _g2210822644_))
                                        (_g2209422640_ _g2210822644_))))
                                (_g2209422640_ _g2210822644_)))))
                     (let ((_g2209222701_
                            (lambda (_g2210822684_)
                              (if (gx#stx-box? _g2210822684_)
                                  (let ((_e2216722687_
                                         (unbox (gx#syntax-e _g2210822684_))))
                                    ((lambda (_L22691_)
                                       (cons 'box:
                                             (cons (_parse121735_ _L22691_)
                                                   '())))
                                     _e2216722687_))
                                  (_g2209322680_ _g2210822684_)))))
                       (let ((_g2209122741_
                              (lambda (_g2210822705_)
                                (if (gx#stx-pair? _g2210822705_)
                                    (let ((_e2216022708_
                                           (gx#syntax-e _g2210822705_)))
                                      (let ((_hd2216122712_
                                             (##car _e2216022708_))
                                            (_tl2216222715_
                                             (##cdr _e2216022708_)))
                                        (if (gx#identifier? _hd2216122712_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g28389_|
                                                 _hd2216122712_)
                                                (if (gx#stx-pair?
                                                     _tl2216222715_)
                                                    (let ((_e2216322718_
                                                           (gx#syntax-e
                                                            _tl2216222715_)))
                                                      (let ((_hd2216422722_
                                                             (##car _e2216322718_))
                                                            (_tl2216522725_
                                                             (##cdr _e2216322718_)))
                                                        (if (gx#stx-null?
                                                             _tl2216522725_)
                                                            ((lambda (_L22728_)
                                                               (cons 'box:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_parse121735_ _L22728_) '())))
                     _hd2216422722_)
                    (_g2209222701_ _g2210822705_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2209222701_
                                                     _g2210822705_))
                                                (_g2209222701_ _g2210822705_))
                                            (_g2209222701_ _g2210822705_))))
                                    (_g2209222701_ _g2210822705_)))))
                         (let ((_g2209022769_
                                (lambda (_g2210822745_)
                                  (if (gx#stx-pair? _g2210822745_)
                                      (let ((_e2215622748_
                                             (gx#syntax-e _g2210822745_)))
                                        (let ((_hd2215722752_
                                               (##car _e2215622748_))
                                              (_tl2215822755_
                                               (##cdr _e2215622748_)))
                                          (if (gx#identifier? _hd2215722752_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g28390_|
                                                   _hd2215722752_)
                                                  ((lambda (_L22758_)
                                                     (_parse-list21737_
                                                      _L22758_))
                                                   _tl2215822755_)
                                                  (_g2209122741_
                                                   _g2210822745_))
                                              (_g2209122741_ _g2210822745_))))
                                      (_g2209122741_ _g2210822745_)))))
                           (let ((_g2208922825_
                                  (lambda (_g2210822773_)
                                    (if (gx#stx-pair? _g2210822773_)
                                        (let ((_e2214622776_
                                               (gx#syntax-e _g2210822773_)))
                                          (let ((_hd2214722780_
                                                 (##car _e2214622776_))
                                                (_tl2214822783_
                                                 (##cdr _e2214622776_)))
                                            (if (gx#identifier? _hd2214722780_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g28391_|
                                                     _hd2214722780_)
                                                    (if (gx#stx-pair?
                                                         _tl2214822783_)
                                                        (let ((_e2214922786_
                                                               (gx#syntax-e
                                                                _tl2214822783_)))
                                                          (let ((_hd2215022790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2214922786_))
                        (_tl2215122793_ (##cdr _e2214922786_)))
                    (if (gx#stx-pair? _tl2215122793_)
                        (let ((_e2215222796_ (gx#syntax-e _tl2215122793_)))
                          (let ((_hd2215322800_ (##car _e2215222796_))
                                (_tl2215422803_ (##cdr _e2215222796_)))
                            ((lambda (_L22806_ _L22808_ _L22809_)
                               (if (gx#stx-null? _L22806_)
                                   (cons 'cons:
                                         (cons (_parse121735_ _L22809_)
                                               (cons (_parse121735_ _L22808_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse121735_ _L22809_)
                                               (cons (_parse121735_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L22808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22806_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             _tl2215422803_
                             _hd2215322800_
                             _hd2215022790_)))
                        (_g2209022769_ _g2210822773_))))
                (_g2209022769_ _g2210822773_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2209022769_
                                                     _g2210822773_))
                                                (_g2209022769_
                                                 _g2210822773_))))
                                        (_g2209022769_ _g2210822773_)))))
                             (let ((_g2208822879_
                                    (lambda (_g2210822829_)
                                      (if (gx#stx-pair? _g2210822829_)
                                          (let ((_e2213422832_
                                                 (gx#syntax-e _g2210822829_)))
                                            (let ((_hd2213522836_
                                                   (##car _e2213422832_))
                                                  (_tl2213622839_
                                                   (##cdr _e2213422832_)))
                                              (if (gx#identifier?
                                                   _hd2213522836_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g28392_|
                                                       _hd2213522836_)
                                                      (if (gx#stx-pair?
                                                           _tl2213622839_)
                                                          (let ((_e2213722842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2213622839_)))
                    (let ((_hd2213822846_ (##car _e2213722842_))
                          (_tl2213922849_ (##cdr _e2213722842_)))
                      (if (gx#stx-pair? _tl2213922849_)
                          (let ((_e2214022852_ (gx#syntax-e _tl2213922849_)))
                            (let ((_hd2214122856_ (##car _e2214022852_))
                                  (_tl2214222859_ (##cdr _e2214022852_)))
                              (if (gx#stx-null? _tl2214222859_)
                                  ((lambda (_L22862_ _L22864_)
                                     (cons 'cons:
                                           (cons (_parse121735_ _L22864_)
                                                 (cons (_parse121735_ _L22862_)
                                                       '()))))
                                   _hd2214122856_
                                   _hd2213822846_)
                                  (_g2208922825_ _g2210822829_))))
                          (_g2208922825_ _g2210822829_))))
                  (_g2208922825_ _g2210822829_))
              (_g2208922825_ _g2210822829_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2208922825_
                                                   _g2210822829_))))
                                          (_g2208922825_ _g2210822829_)))))
                               (let ((_g2208722919_
                                      (lambda (_g2210822883_)
                                        (if (gx#stx-pair? _g2210822883_)
                                            (let ((_e2212622886_
                                                   (gx#syntax-e
                                                    _g2210822883_)))
                                              (let ((_hd2212722890_
                                                     (##car _e2212622886_))
                                                    (_tl2212822893_
                                                     (##cdr _e2212622886_)))
                                                (if (gx#identifier?
                                                     _hd2212722890_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g28393_|
                                                         _hd2212722890_)
                                                        (if (gx#stx-pair?
                                                             _tl2212822893_)
                                                            (let ((_e2212922896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2212822893_)))
                      (let ((_hd2213022900_ (##car _e2212922896_))
                            (_tl2213122903_ (##cdr _e2212922896_)))
                        (if (gx#stx-null? _tl2213122903_)
                            ((lambda (_L22906_)
                               (cons 'not:
                                     (cons (_parse121735_ _L22906_) '())))
                             _hd2213022900_)
                            (_g2208822879_ _g2210822883_))))
                    (_g2208822879_ _g2210822883_))
                (_g2208822879_ _g2210822883_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2208822879_
                                                     _g2210822883_))))
                                            (_g2208822879_ _g2210822883_)))))
                                 (let ((_g2208623004_
                                        (lambda (_g2210822923_)
                                          (if (gx#stx-pair? _g2210822923_)
                                              (let ((_e2212222926_
                                                     (gx#syntax-e
                                                      _g2210822923_)))
                                                (let ((_hd2212322930_
                                                       (##car _e2212222926_))
                                                      (_tl2212422933_
                                                       (##cdr _e2212222926_)))
                                                  (if (gx#identifier?
                                                       _hd2212322930_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g28394_|
                                                           _hd2212322930_)
                                                          ((lambda (_L22936_)
                                                             (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22936_)
                         (let ((_g2294822959_
                                (lambda (_g2294922955_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2294922955_))))
                           (let ((_g2294722970_
                                  (lambda (_g2294922963_)
                                    ((lambda ()
                                       (cons 'or:
                                             (gx#stx-map
                                              _parse121735_
                                              _L22936_)))))))
                             (let ((_g2294623000_
                                    (lambda (_g2294922974_)
                                      (if (gx#stx-pair? _g2294922974_)
                                          (let ((_e2295122977_
                                                 (gx#syntax-e _g2294922974_)))
                                            (let ((_hd2295222981_
                                                   (##car _e2295122977_))
                                                  (_tl2295322984_
                                                   (##cdr _e2295122977_)))
                                              (if (gx#stx-null? _tl2295322984_)
                                                  ((lambda (_L22987_)
                                                     (_parse121735_ _L22987_))
                                                   _hd2295222981_)
                                                  (_g2294722970_
                                                   _g2294922974_))))
                                          (_g2294722970_ _g2294922974_)))))
                               (_g2294623000_ _L22936_))))
                         (_g2208722919_ _g2210822923_)))
                   _tl2212422933_)
                  (_g2208722919_ _g2210822923_))
              (_g2208722919_ _g2210822923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2208722919_ _g2210822923_)))))
                                   (let ((_g2208523089_
                                          (lambda (_g2210823008_)
                                            (if (gx#stx-pair? _g2210823008_)
                                                (let ((_e2211823011_
                                                       (gx#syntax-e
                                                        _g2210823008_)))
                                                  (let ((_hd2211923015_
                                                         (##car _e2211823011_))
                                                        (_tl2212023018_
                                                         (##cdr _e2211823011_)))
                                                    (if (gx#identifier?
                                                         _hd2211923015_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g28395_|
                                                             _hd2211923015_)
                                                            ((lambda (_L23021_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23021_)
                           (let ((_g2303323044_
                                  (lambda (_g2303423040_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2303423040_))))
                             (let ((_g2303223055_
                                    (lambda (_g2303423048_)
                                      ((lambda ()
                                         (cons 'and:
                                               (gx#stx-map
                                                _parse121735_
                                                _L23021_)))))))
                               (let ((_g2303123085_
                                      (lambda (_g2303423059_)
                                        (if (gx#stx-pair? _g2303423059_)
                                            (let ((_e2303623062_
                                                   (gx#syntax-e
                                                    _g2303423059_)))
                                              (let ((_hd2303723066_
                                                     (##car _e2303623062_))
                                                    (_tl2303823069_
                                                     (##cdr _e2303623062_)))
                                                (if (gx#stx-null?
                                                     _tl2303823069_)
                                                    ((lambda (_L23072_)
                                                       (_parse121735_
                                                        _L23072_))
                                                     _hd2303723066_)
                                                    (_g2303223055_
                                                     _g2303423059_))))
                                            (_g2303223055_ _g2303423059_)))))
                                 (_g2303123085_ _L23021_))))
                           (_g2208623004_ _g2210823008_)))
                     _tl2212023018_)
                    (_g2208623004_ _g2210823008_))
                (_g2208623004_ _g2210823008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2208623004_
                                                 _g2210823008_)))))
                                     (let ((_g2208423329_
                                            (lambda (_g2210823093_)
                                              (if (gx#stx-pair? _g2210823093_)
                                                  (let ((_e2211123096_
                                                         (gx#syntax-e
                                                          _g2210823093_)))
                                                    (let ((_hd2211223100_
                                                           (##car _e2211123096_))
                                                          (_tl2211323103_
                                                           (##cdr _e2211123096_)))
                                                      (if (gx#identifier?
                                                           _hd2211223100_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g28396_|
                                                               _hd2211223100_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2211323103_)
                          (let ((_e2211423106_ (gx#syntax-e _tl2211323103_)))
                            (let ((_hd2211523110_ (##car _e2211423106_))
                                  (_tl2211623113_ (##cdr _e2211423106_)))
                              ((lambda (_L23116_ _L23118_)
                                 (let ((_g2313523167_
                                        (lambda (_g2313623163_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2313623163_))))
                                   (let ((_g2313423178_
                                          (lambda (_g2313623171_)
                                            ((lambda ()
                                               (_parse-error21742_
                                                _hd22082_))))))
                                     (let ((_g2313323246_
                                            (lambda (_g2313623182_)
                                              (if (gx#stx-pair? _g2313623182_)
                                                  (let ((_e2315023185_
                                                         (gx#syntax-e
                                                          _g2313623182_)))
                                                    (let ((_hd2315123189_
                                                           (##car _e2315023185_))
                                                          (_tl2315223192_
                                                           (##cdr _e2315023185_)))
                                                      (if (gx#stx-datum?
                                                           _hd2315123189_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2315123189_)
                              '::)
                      (if (gx#stx-pair? _tl2315223192_)
                          (let ((_e2315323195_ (gx#syntax-e _tl2315223192_)))
                            (let ((_hd2315423199_ (##car _e2315323195_))
                                  (_tl2315523202_ (##cdr _e2315323195_)))
                              (if (gx#stx-pair? _tl2315523202_)
                                  (let ((_e2315623205_
                                         (gx#syntax-e _tl2315523202_)))
                                    (let ((_hd2315723209_
                                           (##car _e2315623205_))
                                          (_tl2315823212_
                                           (##cdr _e2315623205_)))
                                      (if (gx#identifier? _hd2315723209_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g28397_|
                                               _hd2315723209_)
                                              (if (gx#stx-pair? _tl2315823212_)
                                                  (let ((_e2315923215_
                                                         (gx#syntax-e
                                                          _tl2315823212_)))
                                                    (let ((_hd2316023219_
                                                           (##car _e2315923215_))
                                                          (_tl2316123222_
                                                           (##cdr _e2315923215_)))
                                                      (if (gx#stx-null?
                                                           _tl2316123222_)
                                                          ((lambda (_L23225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23227_)
                     (cons '?:
                           (cons _L23118_
                                 (cons '::
                                       (cons _L23227_
                                             (cons '=>:
                                                   (cons (_parse121735_
                                                          _L23225_)
                                                         '())))))))
                   _hd2316023219_
                   _hd2315423199_)
                  (_g2313423178_ _g2313623182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2313423178_
                                                   _g2313623182_))
                                              (_g2313423178_ _g2313623182_))
                                          (_g2313423178_ _g2313623182_))))
                                  (_g2313423178_ _g2313623182_))))
                          (_g2313423178_ _g2313623182_))
                      (_g2313423178_ _g2313623182_))
                  (_g2313423178_ _g2313623182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2313423178_
                                                   _g2313623182_)))))
                                       (let ((_g2313223286_
                                              (lambda (_g2313623250_)
                                                (if (gx#stx-pair?
                                                     _g2313623250_)
                                                    (let ((_e2314223253_
                                                           (gx#syntax-e
                                                            _g2313623250_)))
                                                      (let ((_hd2314323257_
                                                             (##car _e2314223253_))
                                                            (_tl2314423260_
                                                             (##cdr _e2314223253_)))
                                                        (if (gx#identifier?
                                                             _hd2314323257_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g28398_|
                         _hd2314323257_)
                        (if (gx#stx-pair? _tl2314423260_)
                            (let ((_e2314523263_ (gx#syntax-e _tl2314423260_)))
                              (let ((_hd2314623267_ (##car _e2314523263_))
                                    (_tl2314723270_ (##cdr _e2314523263_)))
                                (if (gx#stx-null? _tl2314723270_)
                                    ((lambda (_L23273_)
                                       (cons '?:
                                             (cons _L23118_
                                                   (cons '=>:
                                                         (cons (_parse121735_
                                                                _L23273_)
                                                               '())))))
                                     _hd2314623267_)
                                    (_g2313323246_ _g2313623250_))))
                            (_g2313323246_ _g2313623250_))
                        (_g2313323246_ _g2313623250_))
                    (_g2313323246_ _g2313623250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2313323246_
                                                     _g2313623250_)))))
                                         (let ((_g2313123314_
                                                (lambda (_g2313623290_)
                                                  (if (gx#stx-pair?
                                                       _g2313623290_)
                                                      (let ((_e2313823293_
                                                             (gx#syntax-e
                                                              _g2313623290_)))
                                                        (let ((_hd2313923297_
                                                               (##car _e2313823293_))
                                                              (_tl2314023300_
                                                               (##cdr _e2313823293_)))
                                                          (if (gx#stx-null?
                                                               _tl2314023300_)
                                                              ((lambda (_L23303_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L23118_
                                     (cons (_parse121735_ _L23303_) '()))))
                       _hd2313923297_)
                      (_g2313223286_ _g2313623290_))))
              (_g2313223286_ _g2313623290_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2313023325_
                                                  (lambda (_g2313623318_)
                                                    (if (gx#stx-null?
                                                         _g2313623318_)
                                                        ((lambda ()
                                                           (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23118_ '()))))
                (_g2313123314_ _g2313623318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2313023325_ _L23116_))))))))
                               _tl2211623113_
                               _hd2211523110_)))
                          (_g2208523089_ _g2210823093_))
                      (_g2208523089_ _g2210823093_))
                  (_g2208523089_ _g2210823093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2208523089_
                                                   _g2210823093_)))))
                                       (_g2208423329_
                                        _hd22082_)))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list21737_
                             (lambda (_body21917_)
                               (let ((_g2192321951_
                                      (lambda (_g2192421947_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2192421947_))))
                                 (let ((_g2192221962_
                                        (lambda (_g2192421955_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body21917_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body21917_))
                                                     (_parse121735_
                                                      _body21917_)
                                                     (_parse-error21742_
                                                      _body21917_))))))))
                                   (let ((_g2192121994_
                                          (lambda (_g2192421966_)
                                            (if (gx#stx-pair? _g2192421966_)
                                                (let ((_e2194321969_
                                                       (gx#syntax-e
                                                        _g2192421966_)))
                                                  (let ((_hd2194421973_
                                                         (##car _e2194321969_))
                                                        (_tl2194521976_
                                                         (##cdr _e2194321969_)))
                                                    ((lambda (_L21979_
                                                              _L21981_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21981_))
                   (cons 'cons:
                         (cons (_parse121735_ _L21981_)
                               (cons (_parse-list21737_ _L21979_) '())))
                   (_g2192221962_ _g2192421966_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2194521976_
                                                     _hd2194421973_)))
                                                (_g2192221962_
                                                 _g2192421966_)))))
                                     (let ((_g2192022038_
                                            (lambda (_g2192421998_)
                                              (if (gx#stx-pair? _g2192421998_)
                                                  (let ((_e2193522001_
                                                         (gx#syntax-e
                                                          _g2192421998_)))
                                                    (let ((_hd2193622005_
                                                           (##car _e2193522001_))
                                                          (_tl2193722008_
                                                           (##cdr _e2193522001_)))
                                                      (if (gx#stx-pair?
                                                           _tl2193722008_)
                                                          (let ((_e2193822011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2193722008_)))
                    (let ((_hd2193922015_ (##car _e2193822011_))
                          (_tl2194022018_ (##cdr _e2193822011_)))
                      ((lambda (_L22021_ _L22023_ _L22024_)
                         (if (gx#ellipsis? _L22023_)
                             (cons 'splice:
                                   (cons (_parse121735_ _L22024_)
                                         (cons (_parse-list21737_ _L22021_)
                                               '())))
                             (_g2192121994_ _g2192421998_)))
                       _tl2194022018_
                       _hd2193922015_
                       _hd2193622005_)))
                  (_g2192121994_ _g2192421998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2192121994_
                                                   _g2192421998_)))))
                                       (let ((_g2191922078_
                                              (lambda (_g2192422042_)
                                                (if (gx#stx-pair?
                                                     _g2192422042_)
                                                    (let ((_e2192622045_
                                                           (gx#syntax-e
                                                            _g2192422042_)))
                                                      (let ((_hd2192722049_
                                                             (##car _e2192622045_))
                                                            (_tl2192822052_
                                                             (##cdr _e2192622045_)))
                                                        (if (gx#stx-datum?
                                                             _hd2192722049_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2192722049_)
                                '::)
                        (if (gx#stx-pair? _tl2192822052_)
                            (let ((_e2192922055_ (gx#syntax-e _tl2192822052_)))
                              (let ((_hd2193022059_ (##car _e2192922055_))
                                    (_tl2193122062_ (##cdr _e2192922055_)))
                                (if (gx#stx-null? _tl2193122062_)
                                    ((lambda (_L22065_)
                                       (_parse121735_ _L22065_))
                                     _hd2193022059_)
                                    (_g2192022038_ _g2192422042_))))
                            (_g2192022038_ _g2192422042_))
                        (_g2192022038_ _g2192422042_))
                    (_g2192022038_ _g2192422042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2192022038_
                                                     _g2192422042_)))))
                                         (_g2191922078_ _body21917_))))))))
                            (_parse-vector21738_
                             (lambda (_body21914_)
                               (if (_simple-vector?21739_ _body21914_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse121735_
                                                _body21914_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list21737_ _body21914_)
                                               '())))))
                            (_simple-vector?21739_
                             (lambda (_body21851_)
                               (let ((_g2185521867_
                                      (lambda (_g2185621863_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2185621863_))))
                                 (let ((_g2185421878_
                                        (lambda (_g2185621871_)
                                          ((lambda ()
                                             (gx#stx-null? _body21851_))))))
                                   (let ((_g2185321910_
                                          (lambda (_g2185621882_)
                                            (if (gx#stx-pair? _g2185621882_)
                                                (let ((_e2185921885_
                                                       (gx#syntax-e
                                                        _g2185621882_)))
                                                  (let ((_hd2186021889_
                                                         (##car _e2185921885_))
                                                        (_tl2186121892_
                                                         (##cdr _e2185921885_)))
                                                    ((lambda (_L21895_
                                                              _L21897_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21897_))
                   (_simple-vector?21739_ _L21895_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2186121892_
                                                     _hd2186021889_)))
                                                (_g2185421878_
                                                 _g2185621882_)))))
                                     (_g2185321910_ _body21851_))))))
                            (_parse-class-body21740_
                             (lambda (_body21760_)
                               ((letrec ((_recur21763_
                                          (lambda (_rest21766_)
                                            (let ((_g2177021786_
                                                   (lambda (_g2177121782_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2177121782_))))
                                              (let ((_g2176921797_
                                                     (lambda (_g2177121790_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest21766_)
                                                              '()
                                                              (_parse-error21742_
                                                               _rest21766_)))))))
                                                (let ((_g2176821847_
                                                       (lambda (_g2177121801_)
                                                         (if (gx#stx-pair?
                                                              _g2177121801_)
                                                             (let ((_e2177521804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2177121801_)))
                       (let ((_hd2177621808_ (##car _e2177521804_))
                             (_tl2177721811_ (##cdr _e2177521804_)))
                         (if (gx#stx-pair? _tl2177721811_)
                             (let ((_e2177821814_
                                    (gx#syntax-e _tl2177721811_)))
                               (let ((_hd2177921818_ (##car _e2177821814_))
                                     (_tl2178021821_ (##cdr _e2177821814_)))
                                 ((lambda (_L21824_ _L21826_ _L21827_)
                                    (if (gx#stx-keyword? _L21827_)
                                        (cons* _L21827_
                                               (_parse121735_ _L21826_)
                                               (_recur21763_ _L21824_))
                                        (_g2176921797_ _g2177121801_)))
                                  _tl2178021821_
                                  _hd2177921818_
                                  _hd2177621808_)))
                             (_g2176921797_ _g2177121801_))))
                     (_g2176921797_ _g2177121801_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2176821847_
                                                   _rest21766_)))))))
                                  _recur21763_)
                                _body21760_))))
                     (_parse121735_ _stx21731_)))))))
        (lambda _g28400_
          (let ((_g28399_ (length _g28400_)))
            (cond ((fx= _g28399_ 1)
                   (apply (lambda (_stx23337_)
                            (let ((_match-stx23340_ '#f))
                              (_opt-lambda2172923333_
                               _stx23337_
                               _match-stx23340_)))
                          _g28400_))
                  ((fx= _g28399_ 2)
                   (apply (lambda (_stx23343_ _match-stx23345_)
                            (_opt-lambda2172923333_
                             _stx23343_
                             _match-stx23345_))
                          _g28400_))
                  (else (error "No clause matching arguments" _g28400_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx21715_)
        (call-with-escape
         (lambda (_E21719_)
           (with-exception-handler
            (let ((_E!21722_ (current-exception-handler)))
              (lambda (_e21725_)
                (if (gx#syntax-error? _e21725_)
                    (_E21719_ '#f)
                    (_E!21722_ _e21725_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx21715_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree20570_)
        (letrec ((_loop20573_
                  (lambda (_ptree20848_ _vars20850_ _K20851_)
                    (let ((_g2086320953_
                           (lambda (_g2086420949_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2086420949_))))
                      (let ((_g2086220964_
                             (lambda (_g2086420957_)
                               ((lambda () (_K20851_ _vars20850_))))))
                        (let ((_g2086121011_
                               (lambda (_g2086420968_)
                                 (if (gx#stx-pair? _g2086420968_)
                                     (let ((_e2094220971_
                                            (gx#syntax-e _g2086420968_)))
                                       (let ((_hd2094320975_
                                              (##car _e2094220971_))
                                             (_tl2094420978_
                                              (##cdr _e2094220971_)))
                                         (if (gx#stx-datum? _hd2094320975_)
                                             (if (equal? (gx#stx-e
                                                          _hd2094320975_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2094420978_)
                                                     (let ((_e2094520981_
                                                            (gx#syntax-e
                                                             _tl2094420978_)))
                                                       (let ((_hd2094620985_
                                                              (##car _e2094520981_))
                                                             (_tl2094720988_
                                                              (##cdr _e2094520981_)))
                                                         (if (gx#stx-null?
                                                              _tl2094720988_)
                                                             ((lambda (_L20991_)
                                                                (if (find (lambda (_g2100521007_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2100521007_
                                     _L20991_))
                                  _vars20850_)
                            (_K20851_ _vars20850_)
                            (_K20851_ (cons _L20991_ _vars20850_))))
                      _hd2094620985_)
                     (_g2086220964_ _g2086420968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2086220964_
                                                      _g2086420968_))
                                                 (_g2086220964_ _g2086420968_))
                                             (_g2086220964_ _g2086420968_))))
                                     (_g2086220964_ _g2086420968_)))))
                          (let ((_g2086021063_
                                 (lambda (_g2086421015_)
                                   (if (gx#stx-pair? _g2086421015_)
                                       (let ((_e2093221018_
                                              (gx#syntax-e _g2086421015_)))
                                         (let ((_hd2093321022_
                                                (##car _e2093221018_))
                                               (_tl2093421025_
                                                (##cdr _e2093221018_)))
                                           (if (gx#stx-datum? _hd2093321022_)
                                               (if (equal? (gx#stx-e
                                                            _hd2093321022_)
                                                           'class:)
                                                   (if (gx#stx-pair?
                                                        _tl2093421025_)
                                                       (let ((_e2093521028_
                                                              (gx#syntax-e
                                                               _tl2093421025_)))
                                                         (let ((_hd2093621032_
                                                                (##car _e2093521028_))
                                                               (_tl2093721035_
                                                                (##cdr _e2093521028_)))
                                                           (if (gx#stx-pair?
                                                                _tl2093721035_)
                                                               (let ((_e2093821038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2093721035_)))
                         (let ((_hd2093921042_ (##car _e2093821038_))
                               (_tl2094021045_ (##cdr _e2093821038_)))
                           (if (gx#stx-null? _tl2094021045_)
                               ((lambda (_L21048_)
                                  (_loop-class-list20577_
                                   _L21048_
                                   _vars20850_
                                   _K20851_))
                                _hd2093921042_)
                               (_g2086121011_ _g2086421015_))))
                       (_g2086121011_ _g2086421015_))))
               (_g2086121011_ _g2086421015_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2086121011_
                                                    _g2086421015_))
                                               (_g2086121011_ _g2086421015_))))
                                       (_g2086121011_ _g2086421015_)))))
                            (let ((_g2085921115_
                                   (lambda (_g2086421067_)
                                     (if (gx#stx-pair? _g2086421067_)
                                         (let ((_e2092221070_
                                                (gx#syntax-e _g2086421067_)))
                                           (let ((_hd2092321074_
                                                  (##car _e2092221070_))
                                                 (_tl2092421077_
                                                  (##cdr _e2092221070_)))
                                             (if (gx#stx-datum? _hd2092321074_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2092321074_)
                                                             'struct:)
                                                     (if (gx#stx-pair?
                                                          _tl2092421077_)
                                                         (let ((_e2092521080_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2092421077_)))
                   (let ((_hd2092621084_ (##car _e2092521080_))
                         (_tl2092721087_ (##cdr _e2092521080_)))
                     (if (gx#stx-pair? _tl2092721087_)
                         (let ((_e2092821090_ (gx#syntax-e _tl2092721087_)))
                           (let ((_hd2092921094_ (##car _e2092821090_))
                                 (_tl2093021097_ (##cdr _e2092821090_)))
                             (if (gx#stx-null? _tl2093021097_)
                                 ((lambda (_L21100_)
                                    (_loop-vector20575_
                                     _L21100_
                                     _vars20850_
                                     _K20851_))
                                  _hd2092921094_)
                                 (_g2086021063_ _g2086421067_))))
                         (_g2086021063_ _g2086421067_))))
                 (_g2086021063_ _g2086421067_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2086021063_
                                                      _g2086421067_))
                                                 (_g2086021063_
                                                  _g2086421067_))))
                                         (_g2086021063_ _g2086421067_)))))
                              (let ((_g2085821161_
                                     (lambda (_g2086421119_)
                                       (if (gx#stx-pair? _g2086421119_)
                                           (let ((_e2091521122_
                                                  (gx#syntax-e _g2086421119_)))
                                             (let ((_hd2091621126_
                                                    (##car _e2091521122_))
                                                   (_tl2091721129_
                                                    (##cdr _e2091521122_)))
                                               (if (gx#stx-pair?
                                                    _tl2091721129_)
                                                   (let ((_e2091821132_
                                                          (gx#syntax-e
                                                           _tl2091721129_)))
                                                     (let ((_hd2091921136_
                                                            (##car _e2091821132_))
                                                           (_tl2092021139_
                                                            (##cdr _e2091821132_)))
                                                       (if (gx#stx-null?
                                                            _tl2092021139_)
                                                           ((lambda (_L21142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21144_)
                      (if (let ((_$e21157_ (gx#stx-eq? 'values: _L21144_)))
                            (if _$e21157_
                                _$e21157_
                                (gx#stx-eq? 'vector: _L21144_)))
                          (_loop-vector20575_ _L21142_ _vars20850_ _K20851_)
                          (_g2085921115_ _g2086421119_)))
                    _hd2091921136_
                    _hd2091621126_)
                   (_g2085921115_ _g2086421119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2085921115_
                                                    _g2086421119_))))
                                           (_g2085921115_ _g2086421119_)))))
                                (let ((_g2085721201_
                                       (lambda (_g2086421165_)
                                         (if (gx#stx-pair? _g2086421165_)
                                             (let ((_e2090721168_
                                                    (gx#syntax-e
                                                     _g2086421165_)))
                                               (let ((_hd2090821172_
                                                      (##car _e2090721168_))
                                                     (_tl2090921175_
                                                      (##cdr _e2090721168_)))
                                                 (if (gx#stx-datum?
                                                      _hd2090821172_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd2090821172_)
                         'box:)
                 (if (gx#stx-pair? _tl2090921175_)
                     (let ((_e2091021178_ (gx#syntax-e _tl2090921175_)))
                       (let ((_hd2091121182_ (##car _e2091021178_))
                             (_tl2091221185_ (##cdr _e2091021178_)))
                         (if (gx#stx-null? _tl2091221185_)
                             ((lambda (_L21188_)
                                (_loop20573_ _L21188_ _vars20850_ _K20851_))
                              _hd2091121182_)
                             (_g2085821161_ _g2086421165_))))
                     (_g2085821161_ _g2086421165_))
                 (_g2085821161_ _g2086421165_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2085821161_
                                                      _g2086421165_))))
                                             (_g2085821161_ _g2086421165_)))))
                                  (let ((_g2085621260_
                                         (lambda (_g2086421205_)
                                           (if (gx#stx-pair? _g2086421205_)
                                               (let ((_e2089721208_
                                                      (gx#syntax-e
                                                       _g2086421205_)))
                                                 (let ((_hd2089821212_
                                                        (##car _e2089721208_))
                                                       (_tl2089921215_
                                                        (##cdr _e2089721208_)))
                                                   (if (gx#stx-datum?
                                                        _hd2089821212_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2089821212_)
                           'splice:)
                   (if (gx#stx-pair? _tl2089921215_)
                       (let ((_e2090021218_ (gx#syntax-e _tl2089921215_)))
                         (let ((_hd2090121222_ (##car _e2090021218_))
                               (_tl2090221225_ (##cdr _e2090021218_)))
                           (if (gx#stx-pair? _tl2090221225_)
                               (let ((_e2090321228_
                                      (gx#syntax-e _tl2090221225_)))
                                 (let ((_hd2090421232_ (##car _e2090321228_))
                                       (_tl2090521235_ (##cdr _e2090321228_)))
                                   (if (gx#stx-null? _tl2090521235_)
                                       ((lambda (_L21238_ _L21240_)
                                          (_loop20573_
                                           _L21240_
                                           _vars20850_
                                           (lambda (_g2125421256_)
                                             (_loop20573_
                                              _L21238_
                                              _g2125421256_
                                              _K20851_))))
                                        _hd2090421232_
                                        _hd2090121222_)
                                       (_g2085721201_ _g2086421205_))))
                               (_g2085721201_ _g2086421205_))))
                       (_g2085721201_ _g2086421205_))
                   (_g2085721201_ _g2086421205_))
               (_g2085721201_ _g2086421205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2085721201_
                                                _g2086421205_)))))
                                    (let ((_g2085521319_
                                           (lambda (_g2086421264_)
                                             (if (gx#stx-pair? _g2086421264_)
                                                 (let ((_e2088621267_
                                                        (gx#syntax-e
                                                         _g2086421264_)))
                                                   (let ((_hd2088721271_
                                                          (##car _e2088621267_))
                                                         (_tl2088821274_
                                                          (##cdr _e2088621267_)))
                                                     (if (gx#stx-datum?
                                                          _hd2088721271_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2088721271_)
                             'cons:)
                     (if (gx#stx-pair? _tl2088821274_)
                         (let ((_e2088921277_ (gx#syntax-e _tl2088821274_)))
                           (let ((_hd2089021281_ (##car _e2088921277_))
                                 (_tl2089121284_ (##cdr _e2088921277_)))
                             (if (gx#stx-pair? _tl2089121284_)
                                 (let ((_e2089221287_
                                        (gx#syntax-e _tl2089121284_)))
                                   (let ((_hd2089321291_ (##car _e2089221287_))
                                         (_tl2089421294_
                                          (##cdr _e2089221287_)))
                                     (if (gx#stx-null? _tl2089421294_)
                                         ((lambda (_L21297_ _L21299_)
                                            (_loop20573_
                                             _L21299_
                                             _vars20850_
                                             (lambda (_g2131321315_)
                                               (_loop20573_
                                                _L21297_
                                                _g2131321315_
                                                _K20851_))))
                                          _hd2089321291_
                                          _hd2089021281_)
                                         (_g2085621260_ _g2086421264_))))
                                 (_g2085621260_ _g2086421264_))))
                         (_g2085621260_ _g2086421264_))
                     (_g2085621260_ _g2086421264_))
                 (_g2085621260_ _g2086421264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2085621260_
                                                  _g2086421264_)))))
                                      (let ((_g2085421359_
                                             (lambda (_g2086421323_)
                                               (if (gx#stx-pair? _g2086421323_)
                                                   (let ((_e2087821326_
                                                          (gx#syntax-e
                                                           _g2086421323_)))
                                                     (let ((_hd2087921330_
                                                            (##car _e2087821326_))
                                                           (_tl2088021333_
                                                            (##cdr _e2087821326_)))
                                                       (if (gx#stx-datum?
                                                            _hd2087921330_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2087921330_)
                               'not:)
                       (if (gx#stx-pair? _tl2088021333_)
                           (let ((_e2088121336_ (gx#syntax-e _tl2088021333_)))
                             (let ((_hd2088221340_ (##car _e2088121336_))
                                   (_tl2088321343_ (##cdr _e2088121336_)))
                               (if (gx#stx-null? _tl2088321343_)
                                   ((lambda (_L21346_)
                                      (_loop20573_
                                       _L21346_
                                       _vars20850_
                                       _K20851_))
                                    _hd2088221340_)
                                   (_g2085521319_ _g2086421323_))))
                           (_g2085521319_ _g2086421323_))
                       (_g2085521319_ _g2086421323_))
                   (_g2085521319_ _g2086421323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2085521319_
                                                    _g2086421323_)))))
                                        (let ((_g2085321458_
                                               (lambda (_g2086421363_)
                                                 (if (gx#stx-pair?
                                                      _g2086421363_)
                                                     (let ((_e2087421366_
                                                            (gx#syntax-e
                                                             _g2086421363_)))
                                                       (let ((_hd2087521370_
                                                              (##car _e2087421366_))
                                                             (_tl2087621373_
                                                              (##cdr _e2087421366_)))
                                                         ((lambda (_L21376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L21378_)
                    (if (let ((_$e21389_ (gx#stx-eq? 'and: _L21378_)))
                          (if _$e21389_ _$e21389_ (gx#stx-eq? 'or: _L21378_)))
                        (let ((_g2139421406_
                               (lambda (_g2139521402_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2139521402_))))
                          (let ((_g2139321417_
                                 (lambda (_g2139521410_)
                                   ((lambda () (_K20851_ _vars20850_))))))
                            (let ((_g2139221454_
                                   (lambda (_g2139521421_)
                                     (if (gx#stx-pair? _g2139521421_)
                                         (let ((_e2139821424_
                                                (gx#syntax-e _g2139521421_)))
                                           (let ((_hd2139921428_
                                                  (##car _e2139821424_))
                                                 (_tl2140021431_
                                                  (##cdr _e2139821424_)))
                                             ((lambda (_L21434_ _L21436_)
                                                (_loop20573_
                                                 _L21436_
                                                 _vars20850_
                                                 (lambda (_g2144821450_)
                                                   (_loop20573_
                                                    (cons _L21378_ _L21434_)
                                                    _g2144821450_
                                                    _K20851_))))
                                              _tl2140021431_
                                              _hd2139921428_)))
                                         (_g2139321417_ _g2139521421_)))))
                              (_g2139221454_ _L21376_))))
                        (_g2085421359_ _g2086421363_)))
                  _tl2087621373_
                  _hd2087521370_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2085421359_
                                                      _g2086421363_)))))
                                          (let ((_g2085221711_
                                                 (lambda (_g2086421462_)
                                                   (if (gx#stx-pair?
                                                        _g2086421462_)
                                                       (let ((_e2086621465_
                                                              (gx#syntax-e
                                                               _g2086421462_)))
                                                         (let ((_hd2086721469_
                                                                (##car _e2086621465_))
                                                               (_tl2086821472_
                                                                (##cdr _e2086621465_)))
                                                           (if (gx#stx-datum?
                                                                _hd2086721469_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2086721469_)
                                   '?:)
                           (if (gx#stx-pair? _tl2086821472_)
                               (let ((_e2086921475_
                                      (gx#syntax-e _tl2086821472_)))
                                 (let ((_hd2087021479_ (##car _e2086921475_))
                                       (_tl2087121482_ (##cdr _e2086921475_)))
                                   ((lambda (_L21485_)
                                      (let ((_g2150121538_
                                             (lambda (_g2150221534_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2150221534_))))
                                        (let ((_g2150021549_
                                               (lambda (_g2150221542_)
                                                 ((lambda ()
                                                    (_K20851_ _vars20850_))))))
                                          (let ((_g2149921627_
                                                 (lambda (_g2150221553_)
                                                   (if (gx#stx-pair?
                                                        _g2150221553_)
                                                       (let ((_e2151821556_
                                                              (gx#syntax-e
                                                               _g2150221553_)))
                                                         (let ((_hd2151921560_
                                                                (##car _e2151821556_))
                                                               (_tl2152021563_
                                                                (##cdr _e2151821556_)))
                                                           (if (gx#stx-pair?
                                                                _tl2152021563_)
                                                               (let ((_e2152121566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2152021563_)))
                         (let ((_hd2152221570_ (##car _e2152121566_))
                               (_tl2152321573_ (##cdr _e2152121566_)))
                           (if (gx#stx-datum? _hd2152221570_)
                               (if (equal? (gx#stx-e _hd2152221570_) '::)
                                   (if (gx#stx-pair? _tl2152321573_)
                                       (let ((_e2152421576_
                                              (gx#syntax-e _tl2152321573_)))
                                         (let ((_hd2152521580_
                                                (##car _e2152421576_))
                                               (_tl2152621583_
                                                (##cdr _e2152421576_)))
                                           (if (gx#stx-pair? _tl2152621583_)
                                               (let ((_e2152721586_
                                                      (gx#syntax-e
                                                       _tl2152621583_)))
                                                 (let ((_hd2152821590_
                                                        (##car _e2152721586_))
                                                       (_tl2152921593_
                                                        (##cdr _e2152721586_)))
                                                   (if (gx#stx-datum?
                                                        _hd2152821590_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2152821590_)
                           '=>:)
                   (if (gx#stx-pair? _tl2152921593_)
                       (let ((_e2153021596_ (gx#syntax-e _tl2152921593_)))
                         (let ((_hd2153121600_ (##car _e2153021596_))
                               (_tl2153221603_ (##cdr _e2153021596_)))
                           (if (gx#stx-null? _tl2153221603_)
                               ((lambda (_L21606_)
                                  (_loop20573_ _L21606_ _vars20850_ _K20851_))
                                _hd2153121600_)
                               (_g2150021549_ _g2150221553_))))
                       (_g2150021549_ _g2150221553_))
                   (_g2150021549_ _g2150221553_))
               (_g2150021549_ _g2150221553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2150021549_ _g2150221553_))))
                                       (_g2150021549_ _g2150221553_))
                                   (_g2150021549_ _g2150221553_))
                               (_g2150021549_ _g2150221553_))))
                       (_g2150021549_ _g2150221553_))))
               (_g2150021549_ _g2150221553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2149821679_
                                                   (lambda (_g2150221631_)
                                                     (if (gx#stx-pair?
                                                          _g2150221631_)
                                                         (let ((_e2150821634_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2150221631_)))
                   (let ((_hd2150921638_ (##car _e2150821634_))
                         (_tl2151021641_ (##cdr _e2150821634_)))
                     (if (gx#stx-pair? _tl2151021641_)
                         (let ((_e2151121644_ (gx#syntax-e _tl2151021641_)))
                           (let ((_hd2151221648_ (##car _e2151121644_))
                                 (_tl2151321651_ (##cdr _e2151121644_)))
                             (if (gx#stx-datum? _hd2151221648_)
                                 (if (equal? (gx#stx-e _hd2151221648_) '=>:)
                                     (if (gx#stx-pair? _tl2151321651_)
                                         (let ((_e2151421654_
                                                (gx#syntax-e _tl2151321651_)))
                                           (let ((_hd2151521658_
                                                  (##car _e2151421654_))
                                                 (_tl2151621661_
                                                  (##cdr _e2151421654_)))
                                             (if (gx#stx-null? _tl2151621661_)
                                                 ((lambda (_L21664_)
                                                    (_loop20573_
                                                     _L21664_
                                                     _vars20850_
                                                     _K20851_))
                                                  _hd2151521658_)
                                                 (_g2149921627_
                                                  _g2150221631_))))
                                         (_g2149921627_ _g2150221631_))
                                     (_g2149921627_ _g2150221631_))
                                 (_g2149921627_ _g2150221631_))))
                         (_g2149921627_ _g2150221631_))))
                 (_g2149921627_ _g2150221631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2149721707_
                                                     (lambda (_g2150221683_)
                                                       (if (gx#stx-pair?
                                                            _g2150221683_)
                                                           (let ((_e2150421686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2150221683_)))
                     (let ((_hd2150521690_ (##car _e2150421686_))
                           (_tl2150621693_ (##cdr _e2150421686_)))
                       (if (gx#stx-null? _tl2150621693_)
                           ((lambda (_L21696_)
                              (_loop20573_ _L21696_ _vars20850_ _K20851_))
                            _hd2150521690_)
                           (_g2149821679_ _g2150221683_))))
                   (_g2149821679_ _g2150221683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2149721707_ _L21485_)))))))
                                    _tl2087121482_)))
                               (_g2085321458_ _g2086421462_))
                           (_g2085321458_ _g2086421462_))
                       (_g2085321458_ _g2086421462_))))
               (_g2085321458_ _g2086421462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2085221711_
                                             _ptree20848_)))))))))))))))
                 (_loop-vector20575_
                  (lambda (_body20736_ _vars20738_ _K20739_)
                    (let ((_g2074220763_
                           (lambda (_g2074320759_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2074320759_))))
                      (let ((_g2074120804_
                             (lambda (_g2074320767_)
                               (if (gx#stx-pair? _g2074320767_)
                                   (let ((_e2075220770_
                                          (gx#syntax-e _g2074320767_)))
                                     (let ((_hd2075320774_
                                            (##car _e2075220770_))
                                           (_tl2075420777_
                                            (##cdr _e2075220770_)))
                                       (if (gx#stx-datum? _hd2075320774_)
                                           (if (equal? (gx#stx-e
                                                        _hd2075320774_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2075420777_)
                                                   (let ((_e2075520780_
                                                          (gx#syntax-e
                                                           _tl2075420777_)))
                                                     (let ((_hd2075620784_
                                                            (##car _e2075520780_))
                                                           (_tl2075720787_
                                                            (##cdr _e2075520780_)))
                                                       (if (gx#stx-null?
                                                            _tl2075720787_)
                                                           ((lambda (_L20790_)
                                                              (_loop20573_
                                                               _L20790_
                                                               _vars20738_
                                                               _K20739_))
                                                            _hd2075620784_)
                                                           (_g2074220763_
                                                            _g2074320767_))))
                                                   (_g2074220763_
                                                    _g2074320767_))
                                               (_g2074220763_ _g2074320767_))
                                           (_g2074220763_ _g2074320767_))))
                                   (_g2074220763_ _g2074320767_)))))
                        (let ((_g2074020844_
                               (lambda (_g2074320808_)
                                 (if (gx#stx-pair? _g2074320808_)
                                     (let ((_e2074520811_
                                            (gx#syntax-e _g2074320808_)))
                                       (let ((_hd2074620815_
                                              (##car _e2074520811_))
                                             (_tl2074720818_
                                              (##cdr _e2074520811_)))
                                         (if (gx#stx-datum? _hd2074620815_)
                                             (if (equal? (gx#stx-e
                                                          _hd2074620815_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2074720818_)
                                                     (let ((_e2074820821_
                                                            (gx#syntax-e
                                                             _tl2074720818_)))
                                                       (let ((_hd2074920825_
                                                              (##car _e2074820821_))
                                                             (_tl2075020828_
                                                              (##cdr _e2074820821_)))
                                                         (if (gx#stx-null?
                                                              _tl2075020828_)
                                                             ((lambda (_L20831_)
                                                                (_loop-list20576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L20831_
                         _vars20738_
                         _K20739_))
                      _hd2074920825_)
                     (_g2074120804_ _g2074320808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2074120804_
                                                      _g2074320808_))
                                                 (_g2074120804_ _g2074320808_))
                                             (_g2074120804_ _g2074320808_))))
                                     (_g2074120804_ _g2074320808_)))))
                          (_g2074020844_ _body20736_))))))
                 (_loop-list20576_
                  (lambda (_rest20666_ _vars20668_ _K20669_)
                    (let ((_g2067220684_
                           (lambda (_g2067320680_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2067320680_))))
                      (let ((_g2067120695_
                             (lambda (_g2067320688_)
                               ((lambda () (_K20669_ _vars20668_))))))
                        (let ((_g2067020732_
                               (lambda (_g2067320699_)
                                 (if (gx#stx-pair? _g2067320699_)
                                     (let ((_e2067620702_
                                            (gx#syntax-e _g2067320699_)))
                                       (let ((_hd2067720706_
                                              (##car _e2067620702_))
                                             (_tl2067820709_
                                              (##cdr _e2067620702_)))
                                         ((lambda (_L20712_ _L20714_)
                                            (_loop20573_
                                             _L20714_
                                             _vars20668_
                                             (lambda (_g2072620728_)
                                               (_loop-list20576_
                                                _L20712_
                                                _g2072620728_
                                                _K20669_))))
                                          _tl2067820709_
                                          _hd2067720706_)))
                                     (_g2067120695_ _g2067320699_)))))
                          (_g2067020732_ _rest20666_))))))
                 (_loop-class-list20577_
                  (lambda (_rest20579_ _vars20581_ _K20582_)
                    (let ((_g2058520600_
                           (lambda (_g2058620596_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2058620596_))))
                      (let ((_g2058420611_
                             (lambda (_g2058620604_)
                               ((lambda () (_K20582_ _vars20581_))))))
                        (let ((_g2058320662_
                               (lambda (_g2058620615_)
                                 (if (gx#stx-pair? _g2058620615_)
                                     (let ((_e2058920618_
                                            (gx#syntax-e _g2058620615_)))
                                       (let ((_hd2059020622_
                                              (##car _e2058920618_))
                                             (_tl2059120625_
                                              (##cdr _e2058920618_)))
                                         (if (gx#stx-pair? _tl2059120625_)
                                             (let ((_e2059220628_
                                                    (gx#syntax-e
                                                     _tl2059120625_)))
                                               (let ((_hd2059320632_
                                                      (##car _e2059220628_))
                                                     (_tl2059420635_
                                                      (##cdr _e2059220628_)))
                                                 ((lambda (_L20638_ _L20640_)
                                                    (_loop20573_
                                                     _L20640_
                                                     _vars20581_
                                                     (lambda (_g2065620658_)
                                                       (_loop-class-list20577_
                                                        _L20638_
                                                        _g2065620658_
                                                        _K20582_))))
                                                  _tl2059420635_
                                                  _hd2059320632_)))
                                             (_g2058420611_ _g2058620615_))))
                                     (_g2058420611_ _g2058620615_)))))
                          (_g2058320662_ _rest20579_)))))))
          (_loop20573_ _ptree20570_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx17483_ _tgt17485_ _ptree17486_ _K17487_ _E17488_)
        (letrec ((_generate117490_
                  (lambda (_tgt19020_ _ptree19022_ _K19023_ _E19024_)
                    (let ((_g1902619034_
                           (lambda (_g1902719030_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1902719030_))))
                      (let ((_g1902520566_
                             (lambda (_g1902719038_)
                               ((lambda (_L19041_)
                                  (let ()
                                    (let ((_g1906719182_
                                           (lambda (_g1906819178_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1906819178_))))
                                      (let ((_g1906619203_
                                             (lambda (_g1906819186_)
                                               (if (gx#stx-pair? _g1906819186_)
                                                   (let ((_e1917419189_
                                                          (gx#syntax-e
                                                           _g1906819186_)))
                                                     (let ((_hd1917519193_
                                                            (##car _e1917419189_))
                                                           (_tl1917619196_
                                                            (##cdr _e1917419189_)))
                                                       (if (gx#stx-datum?
                                                            _hd1917519193_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1917519193_)
                               'any:)
                       (if (gx#stx-null? _tl1917619196_)
                           ((lambda () _K19023_))
                           (_g1906719182_ _g1906819186_))
                       (_g1906719182_ _g1906819186_))
                   (_g1906719182_ _g1906819186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1906719182_
                                                    _g1906819186_)))))
                                        (let ((_g1906519246_
                                               (lambda (_g1906819207_)
                                                 (if (gx#stx-pair?
                                                      _g1906819207_)
                                                     (let ((_e1916819210_
                                                            (gx#syntax-e
                                                             _g1906819207_)))
                                                       (let ((_hd1916919214_
                                                              (##car _e1916819210_))
                                                             (_tl1917019217_
                                                              (##cdr _e1916819210_)))
                                                         (if (gx#stx-datum?
                                                              _hd1916919214_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1916919214_)
                                 'var:)
                         (if (gx#stx-pair? _tl1917019217_)
                             (let ((_e1917119220_
                                    (gx#syntax-e _tl1917019217_)))
                               (let ((_hd1917219224_ (##car _e1917119220_))
                                     (_tl1917319227_ (##cdr _e1917119220_)))
                                 (if (gx#stx-null? _tl1917319227_)
                                     ((lambda (_L19230_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19230_
                                                                (cons _L19041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19023_ '()))))
                                      _hd1917219224_)
                                     (_g1906619203_ _g1906819207_))))
                             (_g1906619203_ _g1906819207_))
                         (_g1906619203_ _g1906819207_))
                     (_g1906619203_ _g1906819207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1906619203_
                                                      _g1906819207_)))))
                                          (let ((_g1906419328_
                                                 (lambda (_g1906819250_)
                                                   (if (gx#stx-pair?
                                                        _g1906819250_)
                                                       (let ((_e1916119253_
                                                              (gx#syntax-e
                                                               _g1906819250_)))
                                                         (let ((_hd1916219257_
                                                                (##car _e1916119253_))
                                                               (_tl1916319260_
                                                                (##cdr _e1916119253_)))
                                                           (if (gx#stx-datum?
                                                                _hd1916219257_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1916219257_)
                                   'datum:)
                           (if (gx#stx-pair? _tl1916319260_)
                               (let ((_e1916419263_
                                      (gx#syntax-e _tl1916319260_)))
                                 (let ((_hd1916519267_ (##car _e1916419263_))
                                       (_tl1916619270_ (##cdr _e1916419263_)))
                                   (if (gx#stx-null? _tl1916619270_)
                                       ((lambda (_L19273_)
                                          (let ((_g1928619294_
                                                 (lambda (_g1928719290_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1928719290_))))
                                            (let ((_g1928519313_
                                                   (lambda (_g1928719298_)
                                                     ((lambda (_L19301_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons _L19301_
                                    (cons _L19041_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L19273_ '()))
                                                '())))
                              (cons _K19023_ (cons _E19024_ '()))))))
              _g1928719298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1928519313_
                                               (let ((_e19317_
                                                      (gx#stx-e _L19273_)))
                                                 (if (let ((_$e19320_
                                                            (symbol? _e19317_)))
                                                       (if _$e19320_
                                                           _$e19320_
                                                           (let ((_$e19324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword? _e19317_)))
                     (if _$e19324_ _$e19324_ (immediate? _e19317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##eq?)
                                                     (if (number? _e19317_)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eqv?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))))
                                        _hd1916519267_)
                                       (_g1906519246_ _g1906819250_))))
                               (_g1906519246_ _g1906819250_))
                           (_g1906519246_ _g1906819250_))
                       (_g1906519246_ _g1906819250_))))
               (_g1906519246_ _g1906819250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1906319382_
                                                   (lambda (_g1906819332_)
                                                     (if (gx#stx-pair?
                                                          _g1906819332_)
                                                         (let ((_e1915119335_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1906819332_)))
                   (let ((_hd1915219339_ (##car _e1915119335_))
                         (_tl1915319342_ (##cdr _e1915119335_)))
                     (if (gx#stx-datum? _hd1915219339_)
                         (if (equal? (gx#stx-e _hd1915219339_) 'class:)
                             (if (gx#stx-pair? _tl1915319342_)
                                 (let ((_e1915419345_
                                        (gx#syntax-e _tl1915319342_)))
                                   (let ((_hd1915519349_ (##car _e1915419345_))
                                         (_tl1915619352_
                                          (##cdr _e1915419345_)))
                                     (if (gx#stx-pair? _tl1915619352_)
                                         (let ((_e1915719355_
                                                (gx#syntax-e _tl1915619352_)))
                                           (let ((_hd1915819359_
                                                  (##car _e1915719355_))
                                                 (_tl1915919362_
                                                  (##cdr _e1915719355_)))
                                             (if (gx#stx-null? _tl1915919362_)
                                                 ((lambda (_L19365_ _L19367_)
                                                    (_generate-class17496_
                                                     (gx#stx-e _L19367_)
                                                     _tgt19020_
                                                     _L19365_
                                                     _K19023_
                                                     _E19024_))
                                                  _hd1915819359_
                                                  _hd1915519349_)
                                                 (_g1906419328_
                                                  _g1906819332_))))
                                         (_g1906419328_ _g1906819332_))))
                                 (_g1906419328_ _g1906819332_))
                             (_g1906419328_ _g1906819332_))
                         (_g1906419328_ _g1906819332_))))
                 (_g1906419328_ _g1906819332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1906219436_
                                                     (lambda (_g1906819386_)
                                                       (if (gx#stx-pair?
                                                            _g1906819386_)
                                                           (let ((_e1914019389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1906819386_)))
                     (let ((_hd1914119393_ (##car _e1914019389_))
                           (_tl1914219396_ (##cdr _e1914019389_)))
                       (if (gx#stx-datum? _hd1914119393_)
                           (if (equal? (gx#stx-e _hd1914119393_) 'struct:)
                               (if (gx#stx-pair? _tl1914219396_)
                                   (let ((_e1914319399_
                                          (gx#syntax-e _tl1914219396_)))
                                     (let ((_hd1914419403_
                                            (##car _e1914319399_))
                                           (_tl1914519406_
                                            (##cdr _e1914319399_)))
                                       (if (gx#stx-pair? _tl1914519406_)
                                           (let ((_e1914619409_
                                                  (gx#syntax-e
                                                   _tl1914519406_)))
                                             (let ((_hd1914719413_
                                                    (##car _e1914619409_))
                                                   (_tl1914819416_
                                                    (##cdr _e1914619409_)))
                                               (if (gx#stx-null?
                                                    _tl1914819416_)
                                                   ((lambda (_L19419_ _L19421_)
                                                      (_generate-struct17495_
                                                       (gx#stx-e _L19421_)
                                                       _tgt19020_
                                                       _L19419_
                                                       _K19023_
                                                       _E19024_))
                                                    _hd1914719413_
                                                    _hd1914419403_)
                                                   (_g1906319382_
                                                    _g1906819386_))))
                                           (_g1906319382_ _g1906819386_))))
                                   (_g1906319382_ _g1906819386_))
                               (_g1906319382_ _g1906819386_))
                           (_g1906319382_ _g1906819386_))))
                   (_g1906319382_ _g1906819386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1906119614_
                                                       (lambda (_g1906819440_)
                                                         (if (gx#stx-pair?
                                                              _g1906819440_)
                                                             (let ((_e1913219443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1906819440_)))
                       (let ((_hd1913319447_ (##car _e1913219443_))
                             (_tl1913419450_ (##cdr _e1913219443_)))
                         (if (gx#stx-datum? _hd1913319447_)
                             (if (equal? (gx#stx-e _hd1913319447_) 'vector:)
                                 (if (gx#stx-pair? _tl1913419450_)
                                     (let ((_e1913519453_
                                            (gx#syntax-e _tl1913419450_)))
                                       (let ((_hd1913619457_
                                              (##car _e1913519453_))
                                             (_tl1913719460_
                                              (##cdr _e1913519453_)))
                                         (if (gx#stx-null? _tl1913719460_)
                                             ((lambda (_L19463_)
                                                (let ((_g1947719498_
                                                       (lambda (_g1947819494_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1947819494_))))
                                                  (let ((_g1947619539_
                                                         (lambda (_g1947819502_)
                                                           (if (gx#stx-pair?
                                                                _g1947819502_)
                                                               (let ((_e1948719505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1947819502_)))
                         (let ((_hd1948819509_ (##car _e1948719505_))
                               (_tl1948919512_ (##cdr _e1948719505_)))
                           (if (gx#stx-datum? _hd1948819509_)
                               (if (equal? (gx#stx-e _hd1948819509_) 'list:)
                                   (if (gx#stx-pair? _tl1948919512_)
                                       (let ((_e1949019515_
                                              (gx#syntax-e _tl1948919512_)))
                                         (let ((_hd1949119519_
                                                (##car _e1949019515_))
                                               (_tl1949219522_
                                                (##cdr _e1949019515_)))
                                           (if (gx#stx-null? _tl1949219522_)
                                               ((lambda (_L19525_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector?)
                            (cons _L19041_ '()))
                      (cons (_generate-list-vector17494_
                             _tgt19020_
                             _L19525_
                             (gx#datum->syntax '#f 'subvector->list)
                             '0
                             _K19023_
                             _E19024_)
                            (cons _E19024_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1949119519_)
                                               (_g1947719498_ _g1947819502_))))
                                       (_g1947719498_ _g1947819502_))
                                   (_g1947719498_ _g1947819502_))
                               (_g1947719498_ _g1947819502_))))
                       (_g1947719498_ _g1947819502_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1947519610_
                                                           (lambda (_g1947819543_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1947819543_)
                         (let ((_e1948019546_ (gx#syntax-e _g1947819543_)))
                           (let ((_hd1948119550_ (##car _e1948019546_))
                                 (_tl1948219553_ (##cdr _e1948019546_)))
                             (if (gx#stx-datum? _hd1948119550_)
                                 (if (equal? (gx#stx-e _hd1948119550_)
                                             'simple:)
                                     (if (gx#stx-pair? _tl1948219553_)
                                         (let ((_e1948319556_
                                                (gx#syntax-e _tl1948219553_)))
                                           (let ((_hd1948419560_
                                                  (##car _e1948319556_))
                                                 (_tl1948519563_
                                                  (##cdr _e1948319556_)))
                                             (if (gx#stx-null? _tl1948519563_)
                                                 ((lambda (_L19566_)
                                                    (let ((_g1957919587_
                                                           (lambda (_g1958019583_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1958019583_))))
                                                      (let ((_g1957819606_
                                                             (lambda (_g1958019591_)
                                                               ((lambda (_L19594_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector?)
                                                          (cons _L19041_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _L19041_ '()))
                              (cons _L19594_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (_generate-simple-vector17493_
                                               _tgt19020_
                                               _L19566_
                                               '0
                                               _K19023_
                                               _E19024_)
                                              (cons _E19024_ '()))))))
                        _g1958019591_))))
                (_g1957819606_ (gx#stx-length _L19566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1948419560_)
                                                 (_g1947619539_
                                                  _g1947819543_))))
                                         (_g1947619539_ _g1947819543_))
                                     (_g1947619539_ _g1947819543_))
                                 (_g1947619539_ _g1947819543_))))
                         (_g1947619539_ _g1947819543_)))))
              (_g1947519610_ _L19463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1913619457_)
                                             (_g1906219436_ _g1906819440_))))
                                     (_g1906219436_ _g1906819440_))
                                 (_g1906219436_ _g1906819440_))
                             (_g1906219436_ _g1906819440_))))
                     (_g1906219436_ _g1906819440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1906019792_
                                                         (lambda (_g1906819618_)
                                                           (if (gx#stx-pair?
                                                                _g1906819618_)
                                                               (let ((_e1912519621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1906819618_)))
                         (let ((_hd1912619625_ (##car _e1912519621_))
                               (_tl1912719628_ (##cdr _e1912519621_)))
                           (if (gx#stx-datum? _hd1912619625_)
                               (if (equal? (gx#stx-e _hd1912619625_) 'values:)
                                   (if (gx#stx-pair? _tl1912719628_)
                                       (let ((_e1912819631_
                                              (gx#syntax-e _tl1912719628_)))
                                         (let ((_hd1912919635_
                                                (##car _e1912819631_))
                                               (_tl1913019638_
                                                (##cdr _e1912819631_)))
                                           (if (gx#stx-null? _tl1913019638_)
                                               ((lambda (_L19641_)
                                                  (let ((_g1965519676_
                                                         (lambda (_g1965619672_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1965619672_))))
                                                    (let ((_g1965419717_
                                                           (lambda (_g1965619680_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1965619680_)
                         (let ((_e1966519683_ (gx#syntax-e _g1965619680_)))
                           (let ((_hd1966619687_ (##car _e1966519683_))
                                 (_tl1966719690_ (##cdr _e1966519683_)))
                             (if (gx#stx-datum? _hd1966619687_)
                                 (if (equal? (gx#stx-e _hd1966619687_) 'list:)
                                     (if (gx#stx-pair? _tl1966719690_)
                                         (let ((_e1966819693_
                                                (gx#syntax-e _tl1966719690_)))
                                           (let ((_hd1966919697_
                                                  (##car _e1966819693_))
                                                 (_tl1967019700_
                                                  (##cdr _e1966819693_)))
                                             (if (gx#stx-null? _tl1967019700_)
                                                 ((lambda (_L19703_)
                                                    (_generate-list-vector17494_
                                                     _tgt19020_
                                                     _L19703_
                                                     (gx#datum->syntax
                                                      '#f
                                                      'values->list)
                                                     '0
                                                     _K19023_
                                                     _E19024_))
                                                  _hd1966919697_)
                                                 (_g1965519676_
                                                  _g1965619680_))))
                                         (_g1965519676_ _g1965619680_))
                                     (_g1965519676_ _g1965619680_))
                                 (_g1965519676_ _g1965619680_))))
                         (_g1965519676_ _g1965619680_)))))
              (let ((_g1965319788_
                     (lambda (_g1965619721_)
                       (if (gx#stx-pair? _g1965619721_)
                           (let ((_e1965819724_ (gx#syntax-e _g1965619721_)))
                             (let ((_hd1965919728_ (##car _e1965819724_))
                                   (_tl1966019731_ (##cdr _e1965819724_)))
                               (if (gx#stx-datum? _hd1965919728_)
                                   (if (equal? (gx#stx-e _hd1965919728_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl1966019731_)
                                           (let ((_e1966119734_
                                                  (gx#syntax-e
                                                   _tl1966019731_)))
                                             (let ((_hd1966219738_
                                                    (##car _e1966119734_))
                                                   (_tl1966319741_
                                                    (##cdr _e1966119734_)))
                                               (if (gx#stx-null?
                                                    _tl1966319741_)
                                                   ((lambda (_L19744_)
                                                      (let ((_g1975719765_
                                                             (lambda (_g1975819761_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1975819761_))))
                                                        (let ((_g1975619784_
                                                               (lambda (_g1975819769_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L19772_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'values-count)
                                                            (cons _L19041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L19772_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector17493_
                                                 _tgt19020_
                                                 _L19744_
                                                 '0
                                                 _K19023_
                                                 _E19024_)
                                                (cons _E19024_ '()))))))
                          _g1975819769_))))
                  (_g1975619784_ (gx#stx-length _L19744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1966219738_)
                                                   (_g1965419717_
                                                    _g1965619721_))))
                                           (_g1965419717_ _g1965619721_))
                                       (_g1965419717_ _g1965619721_))
                                   (_g1965419717_ _g1965619721_))))
                           (_g1965419717_ _g1965619721_)))))
                (_g1965319788_ _L19641_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1912919635_)
                                               (_g1906119614_ _g1906819618_))))
                                       (_g1906119614_ _g1906819618_))
                                   (_g1906119614_ _g1906819618_))
                               (_g1906119614_ _g1906819618_))))
                       (_g1906119614_ _g1906819618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1905919863_
                                                           (lambda (_g1906819796_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1906819796_)
                         (let ((_e1911819799_ (gx#syntax-e _g1906819796_)))
                           (let ((_hd1911919803_ (##car _e1911819799_))
                                 (_tl1912019806_ (##cdr _e1911819799_)))
                             (if (gx#stx-datum? _hd1911919803_)
                                 (if (equal? (gx#stx-e _hd1911919803_) 'box:)
                                     (if (gx#stx-pair? _tl1912019806_)
                                         (let ((_e1912119809_
                                                (gx#syntax-e _tl1912019806_)))
                                           (let ((_hd1912219813_
                                                  (##car _e1912119809_))
                                                 (_tl1912319816_
                                                  (##cdr _e1912119809_)))
                                             (if (gx#stx-null? _tl1912319816_)
                                                 ((lambda (_L19819_)
                                                    (let ((_g1983219840_
                                                           (lambda (_g1983319836_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1983319836_))))
                                                      (let ((_g1983119859_
                                                             (lambda (_g1983319844_)
                                                               ((lambda (_L19847_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##box?)
                                              (cons _L19041_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L19847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##unbox)
                                          (cons _L19041_ '()))
                                    '()))
                        '())
                  (cons (_generate117490_ _L19847_ _L19819_ _K19023_ _E19024_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _E19024_ '()))))))
                        _g1983319844_))))
                (_g1983119859_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1912219813_)
                                                 (_g1906019792_
                                                  _g1906819796_))))
                                         (_g1906019792_ _g1906819796_))
                                     (_g1906019792_ _g1906819796_))
                                 (_g1906019792_ _g1906819796_))))
                         (_g1906019792_ _g1906819796_)))))
              (let ((_g1905819917_
                     (lambda (_g1906819867_)
                       (if (gx#stx-pair? _g1906819867_)
                           (let ((_e1910819870_ (gx#syntax-e _g1906819867_)))
                             (let ((_hd1910919874_ (##car _e1910819870_))
                                   (_tl1911019877_ (##cdr _e1910819870_)))
                               (if (gx#stx-datum? _hd1910919874_)
                                   (if (equal? (gx#stx-e _hd1910919874_)
                                               'splice:)
                                       (if (gx#stx-pair? _tl1911019877_)
                                           (let ((_e1911119880_
                                                  (gx#syntax-e
                                                   _tl1911019877_)))
                                             (let ((_hd1911219884_
                                                    (##car _e1911119880_))
                                                   (_tl1911319887_
                                                    (##cdr _e1911119880_)))
                                               (if (gx#stx-pair?
                                                    _tl1911319887_)
                                                   (let ((_e1911419890_
                                                          (gx#syntax-e
                                                           _tl1911319887_)))
                                                     (let ((_hd1911519894_
                                                            (##car _e1911419890_))
                                                           (_tl1911619897_
                                                            (##cdr _e1911419890_)))
                                                       (if (gx#stx-null?
                                                            _tl1911619897_)
                                                           ((lambda (_L19900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19902_)
                      (_generate-splice17492_
                       _tgt19020_
                       _L19902_
                       _L19900_
                       _K19023_
                       _E19024_))
                    _hd1911519894_
                    _hd1911219884_)
                   (_g1905919863_ _g1906819867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1905919863_
                                                    _g1906819867_))))
                                           (_g1905919863_ _g1906819867_))
                                       (_g1905919863_ _g1906819867_))
                                   (_g1905919863_ _g1906819867_))))
                           (_g1905919863_ _g1906819867_)))))
                (let ((_g1905719938_
                       (lambda (_g1906819921_)
                         (if (gx#stx-pair? _g1906819921_)
                             (let ((_e1910319924_ (gx#syntax-e _g1906819921_)))
                               (let ((_hd1910419928_ (##car _e1910319924_))
                                     (_tl1910519931_ (##cdr _e1910319924_)))
                                 (if (gx#stx-datum? _hd1910419928_)
                                     (if (equal? (gx#stx-e _hd1910419928_)
                                                 'null:)
                                         (if (gx#stx-null? _tl1910519931_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##null?)
                          (cons _L19041_ '()))
                    (cons _K19023_ (cons _E19024_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1905819917_ _g1906819921_))
                                         (_g1905819917_ _g1906819921_))
                                     (_g1905819917_ _g1906819921_))))
                             (_g1905819917_ _g1906819921_)))))
                  (let ((_g1905620057_
                         (lambda (_g1906819942_)
                           (if (gx#stx-pair? _g1906819942_)
                               (let ((_e1909419945_
                                      (gx#syntax-e _g1906819942_)))
                                 (let ((_hd1909519949_ (##car _e1909419945_))
                                       (_tl1909619952_ (##cdr _e1909419945_)))
                                   (if (gx#stx-datum? _hd1909519949_)
                                       (if (equal? (gx#stx-e _hd1909519949_)
                                                   'cons:)
                                           (if (gx#stx-pair? _tl1909619952_)
                                               (let ((_e1909719955_
                                                      (gx#syntax-e
                                                       _tl1909619952_)))
                                                 (let ((_hd1909819959_
                                                        (##car _e1909719955_))
                                                       (_tl1909919962_
                                                        (##cdr _e1909719955_)))
                                                   (if (gx#stx-pair?
                                                        _tl1909919962_)
                                                       (let ((_e1910019965_
                                                              (gx#syntax-e
                                                               _tl1909919962_)))
                                                         (let ((_hd1910119969_
                                                                (##car _e1910019965_))
                                                               (_tl1910219972_
                                                                (##cdr _e1910019965_)))
                                                           (if (gx#stx-null?
                                                                _tl1910219972_)
                                                               ((lambda (_L19975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L19977_)
                          (let ((_g1999320008_
                                 (lambda (_g1999420004_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1999420004_))))
                            (let ((_g1999220053_
                                   (lambda (_g1999420012_)
                                     (if (gx#stx-pair? _g1999420012_)
                                         (let ((_e1999720015_
                                                (gx#syntax-e _g1999420012_)))
                                           (let ((_hd1999820019_
                                                  (##car _e1999720015_))
                                                 (_tl1999920022_
                                                  (##cdr _e1999720015_)))
                                             (if (gx#stx-pair? _tl1999920022_)
                                                 (let ((_e2000020025_
                                                        (gx#syntax-e
                                                         _tl1999920022_)))
                                                   (let ((_hd2000120029_
                                                          (##car _e2000020025_))
                                                         (_tl2000220032_
                                                          (##cdr _e2000020025_)))
                                                     (if (gx#stx-null?
                                                          _tl2000220032_)
                                                         ((lambda (_L20035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L20037_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f '##pair?)
                                        (cons _L19041_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20037_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##car)
                                    (cons _L19041_ '()))
                              '()))
                  (cons (cons _L20035_
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons _L19041_ '()))
                                    '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_generate117490_
                                                           _L20037_
                                                           _L19977_
                                                           (_generate117490_
                                                            _L20035_
                                                            _L19975_
                                                            _K19023_
                                                            _E19024_)
                                                           _E19024_)
                                                          '())))
                                        (cons _E19024_ '()))))))
                  _hd2000120029_
                  _hd1999820019_)
                 (_g1999320008_ _g1999420012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1999320008_
                                                  _g1999420012_))))
                                         (_g1999320008_ _g1999420012_)))))
                              (_g1999220053_
                               (list (gx#genident 'hd) (gx#genident 'tl))))))
                        _hd1910119969_
                        _hd1909819959_)
                       (_g1905719938_ _g1906819942_))))
               (_g1905719938_ _g1906819942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1905719938_ _g1906819942_))
                                           (_g1905719938_ _g1906819942_))
                                       (_g1905719938_ _g1906819942_))))
                               (_g1905719938_ _g1906819942_)))))
                    (let ((_g1905520097_
                           (lambda (_g1906820061_)
                             (if (gx#stx-pair? _g1906820061_)
                                 (let ((_e1908620064_
                                        (gx#syntax-e _g1906820061_)))
                                   (let ((_hd1908720068_ (##car _e1908620064_))
                                         (_tl1908820071_
                                          (##cdr _e1908620064_)))
                                     (if (gx#stx-datum? _hd1908720068_)
                                         (if (equal? (gx#stx-e _hd1908720068_)
                                                     'not:)
                                             (if (gx#stx-pair? _tl1908820071_)
                                                 (let ((_e1908920074_
                                                        (gx#syntax-e
                                                         _tl1908820071_)))
                                                   (let ((_hd1909020078_
                                                          (##car _e1908920074_))
                                                         (_tl1909120081_
                                                          (##cdr _e1908920074_)))
                                                     (if (gx#stx-null?
                                                          _tl1909120081_)
                                                         ((lambda (_L20084_)
                                                            (_generate117490_
                                                             _tgt19020_
                                                             _L20084_
                                                             _E19024_
                                                             _K19023_))
                                                          _hd1909020078_)
                                                         (_g1905620057_
                                                          _g1906820061_))))
                                                 (_g1905620057_ _g1906820061_))
                                             (_g1905620057_ _g1906820061_))
                                         (_g1905620057_ _g1906820061_))))
                                 (_g1905620057_ _g1906820061_)))))
                      (let ((_g1905420185_
                             (lambda (_g1906820101_)
                               (if (gx#stx-pair? _g1906820101_)
                                   (let ((_e1908220104_
                                          (gx#syntax-e _g1906820101_)))
                                     (let ((_hd1908320108_
                                            (##car _e1908220104_))
                                           (_tl1908420111_
                                            (##cdr _e1908220104_)))
                                       (if (gx#stx-datum? _hd1908320108_)
                                           (if (equal? (gx#stx-e
                                                        _hd1908320108_)
                                                       'or:)
                                               ((lambda (_L20114_)
                                                  (let ((_g2012620138_
                                                         (lambda (_g2012720134_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2012720134_))))
                                                    (let ((_g2012520149_
                                                           (lambda (_g2012720142_)
                                                             ((lambda ()
                                                                _E19024_)))))
                                                      (let ((_g2012420181_
                                                             (lambda (_g2012720153_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2012720153_)
                           (let ((_e2013020156_ (gx#syntax-e _g2012720153_)))
                             (let ((_hd2013120160_ (##car _e2013020156_))
                                   (_tl2013220163_ (##cdr _e2013020156_)))
                               ((lambda (_L20166_ _L20168_)
                                  (_generate117490_
                                   _tgt19020_
                                   _L20168_
                                   _K19023_
                                   (_generate117490_
                                    _tgt19020_
                                    (cons 'or: _L20166_)
                                    _K19023_
                                    _E19024_)))
                                _tl2013220163_
                                _hd2013120160_)))
                           (_g2012520149_ _g2012720153_)))))
                (_g2012420181_ _L20114_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1908420111_)
                                               (_g1905520097_ _g1906820101_))
                                           (_g1905520097_ _g1906820101_))))
                                   (_g1905520097_ _g1906820101_)))))
                        (let ((_g1905320273_
                               (lambda (_g1906820189_)
                                 (if (gx#stx-pair? _g1906820189_)
                                     (let ((_e1907820192_
                                            (gx#syntax-e _g1906820189_)))
                                       (let ((_hd1907920196_
                                              (##car _e1907820192_))
                                             (_tl1908020199_
                                              (##cdr _e1907820192_)))
                                         (if (gx#stx-datum? _hd1907920196_)
                                             (if (equal? (gx#stx-e
                                                          _hd1907920196_)
                                                         'and:)
                                                 ((lambda (_L20202_)
                                                    (let ((_g2021420226_
                                                           (lambda (_g2021520222_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2021520222_))))
                                                      (let ((_g2021320237_
                                                             (lambda (_g2021520230_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K19023_)))))
                (let ((_g2021220269_
                       (lambda (_g2021520241_)
                         (if (gx#stx-pair? _g2021520241_)
                             (let ((_e2021820244_ (gx#syntax-e _g2021520241_)))
                               (let ((_hd2021920248_ (##car _e2021820244_))
                                     (_tl2022020251_ (##cdr _e2021820244_)))
                                 ((lambda (_L20254_ _L20256_)
                                    (_generate117490_
                                     _tgt19020_
                                     _L20256_
                                     (_generate117490_
                                      _tgt19020_
                                      (cons 'and: _L20254_)
                                      _K19023_
                                      _E19024_)
                                     _E19024_))
                                  _tl2022020251_
                                  _hd2021920248_)))
                             (_g2021320237_ _g2021520241_)))))
                  (_g2021220269_ _L20202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1908020199_)
                                                 (_g1905420185_ _g1906820189_))
                                             (_g1905420185_ _g1906820189_))))
                                     (_g1905420185_ _g1906820189_)))))
                          (let ((_g1905220562_
                                 (lambda (_g1906820277_)
                                   (if (gx#stx-pair? _g1906820277_)
                                       (let ((_e1907120280_
                                              (gx#syntax-e _g1906820277_)))
                                         (let ((_hd1907220284_
                                                (##car _e1907120280_))
                                               (_tl1907320287_
                                                (##cdr _e1907120280_)))
                                           (if (gx#stx-datum? _hd1907220284_)
                                               (if (equal? (gx#stx-e
                                                            _hd1907220284_)
                                                           '?:)
                                                   (if (gx#stx-pair?
                                                        _tl1907320287_)
                                                       (let ((_e1907420290_
                                                              (gx#syntax-e
                                                               _tl1907320287_)))
                                                         (let ((_hd1907520294_
                                                                (##car _e1907420290_))
                                                               (_tl1907620297_
                                                                (##cdr _e1907420290_)))
                                                           ((lambda (_L20300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20302_)
                      (let ((_g2031820350_
                             (lambda (_g2031920346_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2031920346_))))
                        (let ((_g2031720448_
                               (lambda (_g2031920354_)
                                 (if (gx#stx-pair? _g2031920354_)
                                     (let ((_e2033320357_
                                            (gx#syntax-e _g2031920354_)))
                                       (let ((_hd2033420361_
                                              (##car _e2033320357_))
                                             (_tl2033520364_
                                              (##cdr _e2033320357_)))
                                         (if (gx#stx-datum? _hd2033420361_)
                                             (if (equal? (gx#stx-e
                                                          _hd2033420361_)
                                                         '::)
                                                 (if (gx#stx-pair?
                                                      _tl2033520364_)
                                                     (let ((_e2033620367_
                                                            (gx#syntax-e
                                                             _tl2033520364_)))
                                                       (let ((_hd2033720371_
                                                              (##car _e2033620367_))
                                                             (_tl2033820374_
                                                              (##cdr _e2033620367_)))
                                                         (if (gx#stx-pair?
                                                              _tl2033820374_)
                                                             (let ((_e2033920377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2033820374_)))
                       (let ((_hd2034020381_ (##car _e2033920377_))
                             (_tl2034120384_ (##cdr _e2033920377_)))
                         (if (gx#stx-datum? _hd2034020381_)
                             (if (equal? (gx#stx-e _hd2034020381_) '=>:)
                                 (if (gx#stx-pair? _tl2034120384_)
                                     (let ((_e2034220387_
                                            (gx#syntax-e _tl2034120384_)))
                                       (let ((_hd2034320391_
                                              (##car _e2034220387_))
                                             (_tl2034420394_
                                              (##cdr _e2034220387_)))
                                         (if (gx#stx-null? _tl2034420394_)
                                             ((lambda (_L20397_ _L20399_)
                                                (let ((_g2041720425_
                                                       (lambda (_g2041820421_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2041820421_))))
                                                  (let ((_g2041620444_
                                                         (lambda (_g2041820429_)
                                                           ((lambda (_L20432_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'if)
                              (cons (cons (gx#datum->syntax '#f '?)
                                          (cons _L20302_ (cons _L19041_ '())))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20399_ (cons _L19041_ '())) '()))
                    '())
              (cons (_generate117490_ _L20432_ _L20397_ _K19023_ _E19024_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19024_ '()))))))
                    _g2041820429_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2041620444_
                                                     (gx#genident 'e)))))
                                              _hd2034320391_
                                              _hd2033720371_)
                                             (_g2031820350_ _g2031920354_))))
                                     (_g2031820350_ _g2031920354_))
                                 (_g2031820350_ _g2031920354_))
                             (_g2031820350_ _g2031920354_))))
                     (_g2031820350_ _g2031920354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2031820350_
                                                      _g2031920354_))
                                                 (_g2031820350_ _g2031920354_))
                                             (_g2031820350_ _g2031920354_))))
                                     (_g2031820350_ _g2031920354_)))))
                          (let ((_g2031620519_
                                 (lambda (_g2031920452_)
                                   (if (gx#stx-pair? _g2031920452_)
                                       (let ((_e2032520455_
                                              (gx#syntax-e _g2031920452_)))
                                         (let ((_hd2032620459_
                                                (##car _e2032520455_))
                                               (_tl2032720462_
                                                (##cdr _e2032520455_)))
                                           (if (gx#stx-datum? _hd2032620459_)
                                               (if (equal? (gx#stx-e
                                                            _hd2032620459_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2032720462_)
                                                       (let ((_e2032820465_
                                                              (gx#syntax-e
                                                               _tl2032720462_)))
                                                         (let ((_hd2032920469_
                                                                (##car _e2032820465_))
                                                               (_tl2033020472_
                                                                (##cdr _e2032820465_)))
                                                           (if (gx#stx-null?
                                                                _tl2033020472_)
                                                               ((lambda (_L20475_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g2048820496_
                                 (lambda (_g2048920492_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2048920492_))))
                            (let ((_g2048720515_
                                   (lambda (_g2048920500_)
                                     ((lambda (_L20503_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20302_ (cons _L19041_ '())) '()))
                    '())
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons _L20503_
                                (cons (_generate117490_
                                       _L20503_
                                       _L20475_
                                       _K19023_
                                       _E19024_)
                                      (cons _E19024_ '()))))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2048920500_))))
                              (_g2048720515_ (gx#genident 'e)))))
                        _hd2032920469_)
                       (_g2031720448_ _g2031920452_))))
               (_g2031720448_ _g2031920452_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2031720448_
                                                    _g2031920452_))
                                               (_g2031720448_ _g2031920452_))))
                                       (_g2031720448_ _g2031920452_)))))
                            (let ((_g2031520547_
                                   (lambda (_g2031920523_)
                                     (if (gx#stx-pair? _g2031920523_)
                                         (let ((_e2032120526_
                                                (gx#syntax-e _g2031920523_)))
                                           (let ((_hd2032220530_
                                                  (##car _e2032120526_))
                                                 (_tl2032320533_
                                                  (##cdr _e2032120526_)))
                                             (if (gx#stx-null? _tl2032320533_)
                                                 ((lambda (_L20536_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _L20302_ (cons _L19041_ '())))
                        (cons (_generate117490_
                               _tgt19020_
                               _L20536_
                               _K19023_
                               _E19024_)
                              (cons _E19024_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2032220530_)
                                                 (_g2031620519_
                                                  _g2031920523_))))
                                         (_g2031620519_ _g2031920523_)))))
                              (let ((_g2031420558_
                                     (lambda (_g2031920551_)
                                       (if (gx#stx-null? _g2031920551_)
                                           ((lambda ()
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '?)
                        (cons _L20302_ (cons _L19041_ '())))
                  (cons _K19023_ (cons _E19024_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2031520547_ _g2031920551_)))))
                                (_g2031420558_ _L20300_)))))))
                    _tl1907620297_
                    _hd1907520294_)))
               (_g1905320273_ _g1906820277_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1905320273_
                                                    _g1906820277_))
                                               (_g1905320273_ _g1906820277_))))
                                       (_g1905320273_ _g1906820277_)))))
                            (_g1905220562_ _ptree19022_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1902719038_))))
                        (_g1902520566_ _tgt19020_)))))
                 (_generate-splice17492_
                  (lambda (_tgt18392_ _hd18394_ _rest18395_ _K18396_ _E18397_)
                    (let ((_g1839918416_
                           (lambda (_g1840018412_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1840018412_))))
                      (let ((_g1839819016_
                             (lambda (_g1840018420_)
                               (if (gx#stx-pair/null? _g1840018420_)
                                   (if (fx>= (gx#stx-length _g1840018420_) '0)
                                       (let ((_g28401_
                                              (gx#syntax-split-splice
                                               _g1840018420_
                                               '0)))
                                         (begin
                                           (let ((_g28402_
                                                  (values-count _g28401_)))
                                             (if (not (fx= _g28402_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28402_)))
                                           (let ((_target1840218423_
                                                  (values-ref _g28401_ 0))
                                                 (_tl1840418426_
                                                  (values-ref _g28401_ 1)))
                                             (if (gx#stx-null? _tl1840418426_)
                                                 (letrec ((_loop1840518429_
                                                           (lambda (_hd1840318433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1840918436_)
                     (if (gx#stx-pair? _hd1840318433_)
                         (let ((_e1840618439_ (gx#syntax-e _hd1840318433_)))
                           (let ((_lp-hd1840718443_ (##car _e1840618439_))
                                 (_lp-tl1840818446_ (##cdr _e1840618439_)))
                             (_loop1840518429_
                              _lp-tl1840818446_
                              (cons _lp-hd1840718443_ _var1840918436_))))
                         (let ((_var1841018449_ (reverse _var1840918436_)))
                           ((lambda (_L18453_)
                              (let ()
                                (let ((_g1846918486_
                                       (lambda (_g1847018482_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1847018482_))))
                                  (let ((_g1846819004_
                                         (lambda (_g1847018490_)
                                           (if (gx#stx-pair/null?
                                                _g1847018490_)
                                               (if (fx>= (gx#stx-length
                                                          _g1847018490_)
                                                         '0)
                                                   (let ((_g28403_
                                                          (gx#syntax-split-splice
                                                           _g1847018490_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28404_
                                                              (values-count
                                                               _g28403_)))
                                                         (if (not (fx= _g28404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28404_)))
               (let ((_target1847218493_ (values-ref _g28403_ 0))
                     (_tl1847418496_ (values-ref _g28403_ 1)))
                 (if (gx#stx-null? _tl1847418496_)
                     (letrec ((_loop1847518499_
                               (lambda (_hd1847318503_ _var-r1847918506_)
                                 (if (gx#stx-pair? _hd1847318503_)
                                     (let ((_e1847618509_
                                            (gx#syntax-e _hd1847318503_)))
                                       (let ((_lp-hd1847718513_
                                              (##car _e1847618509_))
                                             (_lp-tl1847818516_
                                              (##cdr _e1847618509_)))
                                         (_loop1847518499_
                                          _lp-tl1847818516_
                                          (cons _lp-hd1847718513_
                                                _var-r1847918506_))))
                                     (let ((_var-r1848018519_
                                            (reverse _var-r1847918506_)))
                                       ((lambda (_L18523_)
                                          (let ()
                                            (let ((_g1854018557_
                                                   (lambda (_g1854118553_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1854118553_))))
                                              (let ((_g1853918992_
                                                     (lambda (_g1854118561_)
                                                       (if (gx#stx-pair/null?
                                                            _g1854118561_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1854118561_)
                             '0)
                       (let ((_g28405_
                              (gx#syntax-split-splice _g1854118561_ '0)))
                         (begin
                           (let ((_g28406_ (values-count _g28405_)))
                             (if (not (fx= _g28406_ 2))
                                 (error "Context expects 2 values" _g28406_)))
                           (let ((_target1854318564_ (values-ref _g28405_ 0))
                                 (_tl1854518567_ (values-ref _g28405_ 1)))
                             (if (gx#stx-null? _tl1854518567_)
                                 (letrec ((_loop1854618570_
                                           (lambda (_hd1854418574_
                                                    _init1855018577_)
                                             (if (gx#stx-pair? _hd1854418574_)
                                                 (let ((_e1854718580_
                                                        (gx#syntax-e
                                                         _hd1854418574_)))
                                                   (let ((_lp-hd1854818584_
                                                          (##car _e1854718580_))
                                                         (_lp-tl1854918587_
                                                          (##cdr _e1854718580_)))
                                                     (_loop1854618570_
                                                      _lp-tl1854918587_
                                                      (cons _lp-hd1854818584_
                                                            _init1855018577_))))
                                                 (let ((_init1855118590_
                                                        (reverse _init1855018577_)))
                                                   ((lambda (_L18594_)
                                                      (let ()
                                                        (let ((_g1861118619_
                                                               (lambda (_g1861218615_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1861218615_))))
                  (let ((_g1861018988_
                         (lambda (_g1861218623_)
                           ((lambda (_L18626_)
                              (let ()
                                (let ((_g1863918647_
                                       (lambda (_g1864018643_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1864018643_))))
                                  (let ((_g1863818984_
                                         (lambda (_g1864018651_)
                                           ((lambda (_L18654_)
                                              (let ()
                                                (let ((_g1866718675_
                                                       (lambda (_g1866818671_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1866818671_))))
                                                  (let ((_g1866618980_
                                                         (lambda (_g1866818679_)
                                                           ((lambda (_L18682_)
                                                              (let ()
                                                                (let ((_g1869518703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1869618699_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1869618699_))))
                          (let ((_g1869418976_
                                 (lambda (_g1869618707_)
                                   ((lambda (_L18710_)
                                      (let ()
                                        (let ((_g1872318731_
                                               (lambda (_g1872418727_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1872418727_))))
                                          (let ((_g1872218972_
                                                 (lambda (_g1872418735_)
                                                   ((lambda (_L18738_)
                                                      (let ()
                                                        (let ((_g1875118759_
                                                               (lambda (_g1875218755_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1875218755_))))
                  (let ((_g1875018968_
                         (lambda (_g1875218763_)
                           ((lambda (_L18766_)
                              (let ()
                                (let ((_g1877918787_
                                       (lambda (_g1878018783_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1878018783_))))
                                  (let ((_g1877818964_
                                         (lambda (_g1878018791_)
                                           ((lambda (_L18794_)
                                              (let ()
                                                (let ((_g1880718815_
                                                       (lambda (_g1880818811_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1880818811_))))
                                                  (let ((_g1880618949_
                                                         (lambda (_g1880818819_)
                                                           ((lambda (_L18822_)
                                                              (let ()
                                                                (let ((_g1883518843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1883618839_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1883618839_))))
                          (let ((_g1883418937_
                                 (lambda (_g1883618847_)
                                   ((lambda (_L18850_)
                                      (let ()
                                        (let ((_g1886318871_
                                               (lambda (_g1886418867_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1886418867_))))
                                          (let ((_g1886218933_
                                                 (lambda (_g1886418875_)
                                                   ((lambda (_L18878_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L18654_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L18766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1889218903_ _g1889318906_)
                                     (cons _g1889218903_ _g1889318906_))
                                   '()
                                   _L18453_)))
                    (cons _L18794_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L18710_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L18738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L18766_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1889418909_
                                                        _g1889518912_)
                                                 (cons _g1889418909_
                                                       _g1889518912_))
                                               '()
                                               _L18523_))))
                          (cons _L18878_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L18682_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L18766_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1889618915_
                                                        _g1889718918_)
                                                 (cons _g1889618915_
                                                       _g1889718918_))
                                               '()
                                               _L18523_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L18766_ '()))
                                                  (cons (cons _L18710_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L18766_ '()))
                            (cons _L18766_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1889818921_
                                                    _g1889918924_)
                                             (cons _g1889818921_
                                                   _g1889918924_))
                                           '()
                                           _L18523_)))))
                (cons _L18850_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L18682_
                                          (cons _L18626_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1890018927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1890118930_)
                   (cons _g1890018927_ _g1890118930_))
                 '()
                 _L18594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1886418875_))))
                                            (_g1886218933_
                                             (_generate117490_
                                              _L18738_
                                              _hd18394_
                                              _L18822_
                                              _L18850_))))))
                                    _g1883618847_))))
                            (_g1883418937_
                             (cons _L18654_
                                   (cons _L18766_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1894018943_
                                                           _g1894118946_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1894018943_ '()))
                  _g1894118946_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L18523_)))))))))
                    _g1880818819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1880618949_
                                                     (cons _L18682_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L18766_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L18523_ _L18453_)
                           (foldr (lambda (_g1895218956_
                                           _g1895318959_
                                           _g1895418961_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1895318959_
                                                      (cons _g1895218956_
                                                            '())))
                                          _g1895418961_))
                                  '()
                                  _L18523_
                                  _L18453_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1878018791_))))
                                    (_g1877818964_
                                     (_generate117490_
                                      _L18766_
                                      _rest18395_
                                      _K18396_
                                      _E18397_))))))
                            _g1875218763_))))
                    (_g1875018968_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1872418735_))))
                                            (_g1872218972_
                                             (gx#genident 'hd))))))
                                    _g1869618707_))))
                            (_g1869418976_ (gx#genident 'splice-try))))))
                    _g1866818679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1866618980_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1864018651_))))
                                    (_g1863818984_
                                     (gx#genident 'splice-rest))))))
                            _g1861218623_))))
                    (_g1861018988_ _tgt18392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1855118590_))))))
                                   (_loop1854618570_ _target1854318564_ '()))
                                 (_g1854018557_ _g1854118561_)))))
                       (_g1854018557_ _g1854118561_))
                   (_g1854018557_ _g1854118561_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1853918992_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1899518998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1899619001_)
                      (cons _g1899518998_ _g1899619001_))
                    '()
                    _L18453_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1848018519_))))))
                       (_loop1847518499_ _target1847218493_ '()))
                     (_g1846918486_ _g1847018490_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1846918486_
                                                    _g1847018490_))
                                               (_g1846918486_
                                                _g1847018490_)))))
                                    (_g1846819004_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1900719010_
                                                        _g1900819013_)
                                                 (cons _g1900719010_
                                                       _g1900819013_))
                                               '()
                                               _L18453_))))))))
                            _var1841018449_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1840518429_
                                                    _target1840218423_
                                                    '()))
                                                 (_g1839918416_
                                                  _g1840018420_)))))
                                       (_g1839918416_ _g1840018420_))
                                   (_g1839918416_ _g1840018420_)))))
                        (_g1839819016_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd18394_))))))
                 (_generate-simple-vector17493_
                  (lambda (_tgt18234_
                           _body18236_
                           _start18237_
                           _K18238_
                           _E18239_)
                    ((letrec ((_recur18241_
                               (lambda (_rest18244_ _off18246_)
                                 (let ((_g1824918261_
                                        (lambda (_g1825018257_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1825018257_))))
                                   (let ((_g1824818272_
                                          (lambda (_g1825018265_)
                                            ((lambda () _K18238_)))))
                                     (let ((_g1824718388_
                                            (lambda (_g1825018276_)
                                              (if (gx#stx-pair? _g1825018276_)
                                                  (let ((_e1825318279_
                                                         (gx#syntax-e
                                                          _g1825018276_)))
                                                    (let ((_hd1825418283_
                                                           (##car _e1825318279_))
                                                          (_tl1825518286_
                                                           (##cdr _e1825318279_)))
                                                      ((lambda (_L18289_
                                                                _L18291_)
                                                         (let ((_g1830618325_
                                                                (lambda (_g1830718321_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1830718321_))))
                   (let ((_g1830518384_
                          (lambda (_g1830718329_)
                            (if (gx#stx-pair? _g1830718329_)
                                (let ((_e1831118332_
                                       (gx#syntax-e _g1830718329_)))
                                  (let ((_hd1831218336_ (##car _e1831118332_))
                                        (_tl1831318339_ (##cdr _e1831118332_)))
                                    (if (gx#stx-pair? _tl1831318339_)
                                        (let ((_e1831418342_
                                               (gx#syntax-e _tl1831318339_)))
                                          (let ((_hd1831518346_
                                                 (##car _e1831418342_))
                                                (_tl1831618349_
                                                 (##cdr _e1831418342_)))
                                            (if (gx#stx-pair? _tl1831618349_)
                                                (let ((_e1831718352_
                                                       (gx#syntax-e
                                                        _tl1831618349_)))
                                                  (let ((_hd1831818356_
                                                         (##car _e1831718352_))
                                                        (_tl1831918359_
                                                         (##cdr _e1831718352_)))
                                                    (if (gx#stx-null?
                                                         _tl1831918359_)
                                                        ((lambda (_L18362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18364_
                          _L18365_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L18365_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L18364_
                                                               (cons _L18362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate117490_
                                        _L18365_
                                        _L18291_
                                        (_recur18241_
                                         _L18289_
                                         (fx1+ _off18246_))
                                        _E18239_)
                                       '())))))
                 _hd1831818356_
                 _hd1831518346_
                 _hd1831218336_)
                (_g1830618325_ _g1830718329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1830618325_
                                                 _g1830718329_))))
                                        (_g1830618325_ _g1830718329_))))
                                (_g1830618325_ _g1830718329_)))))
                     (_g1830518384_
                      (list (gx#genident 'e) _tgt18234_ _off18246_)))))
               _tl1825518286_
               _hd1825418283_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1824818272_
                                                   _g1825018276_)))))
                                       (_g1824718388_ _rest18244_)))))))
                       _recur18241_)
                     _body18236_
                     _start18237_)))
                 (_generate-list-vector17494_
                  (lambda (_tgt18144_
                           _body18146_
                           _tgt->list18147_
                           _start18148_
                           _K18149_
                           _E18150_)
                    (let ((_g1815218171_
                           (lambda (_g1815318167_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1815318167_))))
                      (let ((_g1815118230_
                             (lambda (_g1815318175_)
                               (if (gx#stx-pair? _g1815318175_)
                                   (let ((_e1815718178_
                                          (gx#syntax-e _g1815318175_)))
                                     (let ((_hd1815818182_
                                            (##car _e1815718178_))
                                           (_tl1815918185_
                                            (##cdr _e1815718178_)))
                                       (if (gx#stx-pair? _tl1815918185_)
                                           (let ((_e1816018188_
                                                  (gx#syntax-e
                                                   _tl1815918185_)))
                                             (let ((_hd1816118192_
                                                    (##car _e1816018188_))
                                                   (_tl1816218195_
                                                    (##cdr _e1816018188_)))
                                               (if (gx#stx-pair?
                                                    _tl1816218195_)
                                                   (let ((_e1816318198_
                                                          (gx#syntax-e
                                                           _tl1816218195_)))
                                                     (let ((_hd1816418202_
                                                            (##car _e1816318198_))
                                                           (_tl1816518205_
                                                            (##cdr _e1816318198_)))
                                                       (if (gx#stx-null?
                                                            _tl1816518205_)
                                                           ((lambda (_L18208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18210_
                             _L18211_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L18211_
                                                (cons (cons _L18208_
                                                            (cons _L18210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate117490_
                                           _L18211_
                                           _body18146_
                                           _K18149_
                                           _E18150_)
                                          '())))))
                    _hd1816418202_
                    _hd1816118192_
                    _hd1815818182_)
                   (_g1815218171_ _g1815318175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1815218171_
                                                    _g1815318175_))))
                                           (_g1815218171_ _g1815318175_))))
                                   (_g1815218171_ _g1815318175_)))))
                        (_g1815118230_
                         (list (gx#genident 'e)
                               _tgt18144_
                               _tgt->list18147_))))))
                 (_generate-struct17495_
                  (lambda (_info17877_
                           _tgt17879_
                           _body17880_
                           _K17881_
                           _E17882_)
                    (let ((_rtd17884_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info17877_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17877_)
                               '#f)))
                      (let ((_fields17894_
                             ((letrec ((_lp17887_
                                        (lambda (_rtd17890_ _k17892_)
                                          (if _rtd17890_
                                              (_lp17887_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd17890_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd17890_))
                                                    _k17892_))
                                              _k17892_))))
                                _lp17887_)
                              _rtd17884_
                              '0)))
                        (let ((_final?17897_
                               (if _rtd17884_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd17884_))
                                   '#f)))
                          (let ((_g1790017908_
                                 (lambda (_g1790117904_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1790117904_))))
                            (let ((_g1789918140_
                                   (lambda (_g1790117912_)
                                     ((lambda (_L17915_)
                                        (let ()
                                          (let ((_g1793017938_
                                                 (lambda (_g1793117934_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1793117934_))))
                                            (let ((_g1792918136_
                                                   (lambda (_g1793117942_)
                                                     ((lambda (_L17945_)
                                                        (let ()
                                                          (let ((_g1795817966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1795917962_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1795917962_))))
                    (let ((_g1795718132_
                           (lambda (_g1795917970_)
                             ((lambda (_L17973_)
                                (let ()
                                  (let ()
                                    (let ((_g1798918010_
                                           (lambda (_g1799018006_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1799018006_))))
                                      (let ((_g1798818053_
                                             (lambda (_g1799018014_)
                                               (if (gx#stx-pair? _g1799018014_)
                                                   (let ((_e1799918017_
                                                          (gx#syntax-e
                                                           _g1799018014_)))
                                                     (let ((_hd1800018021_
                                                            (##car _e1799918017_))
                                                           (_tl1800118024_
                                                            (##cdr _e1799918017_)))
                                                       (if (gx#stx-datum?
                                                            _hd1800018021_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1800018021_)
                               'list:)
                       (if (gx#stx-pair? _tl1800118024_)
                           (let ((_e1800218027_ (gx#syntax-e _tl1800118024_)))
                             (let ((_hd1800318031_ (##car _e1800218027_))
                                   (_tl1800418034_ (##cdr _e1800218027_)))
                               (if (gx#stx-null? _tl1800418034_)
                                   ((lambda (_L18037_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L17973_
                                                        (cons _L17945_
                                                              (cons _L17915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector17494_
                                                         _tgt17879_
                                                         _L18037_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K17881_
                                                         _E17882_)
                                                        (cons _E17882_ '())))))
                                    _hd1800318031_)
                                   (_g1798918010_ _g1799018014_))))
                           (_g1798918010_ _g1799018014_))
                       (_g1798918010_ _g1799018014_))
                   (_g1798918010_ _g1799018014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1798918010_
                                                    _g1799018014_)))))
                                        (let ((_g1798718128_
                                               (lambda (_g1799018057_)
                                                 (if (gx#stx-pair?
                                                      _g1799018057_)
                                                     (let ((_e1799218060_
                                                            (gx#syntax-e
                                                             _g1799018057_)))
                                                       (let ((_hd1799318064_
                                                              (##car _e1799218060_))
                                                             (_tl1799418067_
                                                              (##cdr _e1799218060_)))
                                                         (if (gx#stx-datum?
                                                              _hd1799318064_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1799318064_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1799418067_)
                             (let ((_e1799518070_
                                    (gx#syntax-e _tl1799418067_)))
                               (let ((_hd1799618074_ (##car _e1799518070_))
                                     (_tl1799718077_ (##cdr _e1799518070_)))
                                 (if (gx#stx-null? _tl1799718077_)
                                     ((lambda (_L18080_)
                                        (let ((_K18093_
                                               (_generate-simple-vector17493_
                                                _tgt17879_
                                                _L18080_
                                                '1
                                                _K17881_
                                                _E17882_)))
                                          (if (if _rtd17884_
                                                  (fx<= (gx#stx-length
                                                         _L18080_)
                                                        _fields17894_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L17973_
                                                                (cons _L17945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L17915_ '())))
                  (cons _K18093_ (cons _E17882_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1809618104_
                                                     (lambda (_g1809718100_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1809718100_))))
                                                (let ((_g1809518124_
                                                       (lambda (_g1809718108_)
                                                         ((lambda (_L18111_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L17973_
                                                    (cons _L17945_
                                                          (cons _L17915_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18111_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L17915_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18093_ (cons _E17882_ '()))))))
                  _g1809718108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1809518124_
                                                   (gx#stx-length
                                                    _L18080_)))))))
                                      _hd1799618074_)
                                     (_g1798818053_ _g1799018057_))))
                             (_g1798818053_ _g1799018057_))
                         (_g1798818053_ _g1799018057_))
                     (_g1798818053_ _g1799018057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1798818053_
                                                      _g1799018057_)))))
                                          (_g1798718128_ _body17880_)))))))
                              _g1795917970_))))
                      (_g1795718132_
                       (if _final?17897_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1793117942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1792918136_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info17877_))))))
                                      _g1790117912_))))
                              (_g1789918140_ _tgt17879_))))))))
                 (_generate-class17496_
                  (lambda (_info17498_
                           _tgt17500_
                           _body17501_
                           _K17502_
                           _E17503_)
                    (let ((_rtd17505_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info17498_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17498_)
                               '#f)))
                      (let ((_known-slot?17507_ #!void))
                        (letrec ((_rtd-known-slot?17509_
                                  (lambda (_rtd17858_ _slot17860_)
                                    (if _rtd17858_
                                        (let ((_$e17862_
                                               (memq _slot17860_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd17858_))))
                                          (if _$e17862_
                                              _$e17862_
                                              (ormap (lambda (_g1786517867_)
                                                       (_rtd-known-slot?17509_
                                                        _g1786517867_
                                                        _slot17860_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd17858_)))))
                                        '#f)))
                                 (_recur17510_
                                  (lambda (_klass17644_ _rest17646_)
                                    (let ((_g1764917665_
                                           (lambda (_g1765017661_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1765017661_))))
                                      (let ((_g1764817676_
                                             (lambda (_g1765017669_)
                                               ((lambda () _K17502_)))))
                                        (let ((_g1764717854_
                                               (lambda (_g1765017680_)
                                                 (if (gx#stx-pair?
                                                      _g1765017680_)
                                                     (let ((_e1765417683_
                                                            (gx#syntax-e
                                                             _g1765017680_)))
                                                       (let ((_hd1765517687_
                                                              (##car _e1765417683_))
                                                             (_tl1765617690_
                                                              (##cdr _e1765417683_)))
                                                         (if (gx#stx-pair?
                                                              _tl1765617690_)
                                                             (let ((_e1765717693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1765617690_)))
                       (let ((_hd1765817697_ (##car _e1765717693_))
                             (_tl1765917700_ (##cdr _e1765717693_)))
                         ((lambda (_L17703_ _L17705_ _L17706_)
                            (let ((_g1772217730_
                                   (lambda (_g1772317726_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1772317726_))))
                              (let ((_g1772117850_
                                     (lambda (_g1772317734_)
                                       ((lambda (_L17737_)
                                          (let ()
                                            (let ((_g1774917757_
                                                   (lambda (_g1775017753_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1775017753_))))
                                              (let ((_g1774817846_
                                                     (lambda (_g1775017761_)
                                                       ((lambda (_L17764_)
                                                          (let ()
                                                            (let ((_g1777717785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1777817781_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1777817781_))))
                      (let ((_g1777617842_
                             (lambda (_g1777817789_)
                               ((lambda (_L17792_)
                                  (let ()
                                    (let ((_g1780517813_
                                           (lambda (_g1780617809_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1780617809_))))
                                      (let ((_g1780417838_
                                             (lambda (_g1780617817_)
                                               ((lambda (_L17820_)
                                                  (let ()
                                                    (let ((_K17833_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L17820_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L17737_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L17792_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate117490_
                                      _L17820_
                                      _L17705_
                                      (_recur17510_ _klass17644_ _L17703_)
                                      _E17503_)
                                     '())))))
              (let ()
                (if (_known-slot?17507_ _L17706_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L17792_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17764_
                                                              (cons _L17706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K17833_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L17792_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17764_
                                                              (cons _L17706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L17792_
                                                  (cons _K17833_
                                                        (cons _E17503_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1780617817_))))
                                        (_g1780417838_ (gx#genident 'e))))))
                                _g1777817789_))))
                        (_g1777617842_ (gx#genident 'slot))))))
                _g1775017761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1774817846_
                                                 _klass17644_)))))
                                        _g1772317734_))))
                                (_g1772117850_ _tgt17500_))))
                          _tl1765917700_
                          _hd1765817697_
                          _hd1765517687_)))
                     (_g1764817676_ _g1765017680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1764817676_
                                                      _g1765017680_)))))
                                          (_g1764717854_ _rest17646_)))))))
                          (begin
                            (set! _known-slot?17507_
                                  (if _rtd17505_
                                      (lambda (_key17871_)
                                        (let ((_slot17874_
                                               (keyword->symbol
                                                (gx#stx-e _key17871_))))
                                          (_rtd-known-slot?17509_
                                           _rtd17505_
                                           _slot17874_)))
                                      false))
                            (let ((_final?17508_
                                   (if _rtd17505_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd17505_))
                                       '#f)))
                              (let ((_g1751217520_
                                     (lambda (_g1751317516_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1751317516_))))
                                (let ((_g1751117640_
                                       (lambda (_g1751317524_)
                                         ((lambda (_L17527_)
                                            (let ()
                                              (let ((_g1754217550_
                                                     (lambda (_g1754317546_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1754317546_))))
                                                (let ((_g1754117636_
                                                       (lambda (_g1754317554_)
                                                         ((lambda (_L17557_)
                                                            (let ()
                                                              (let ((_g1757017578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1757117574_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1757117574_))))
                        (let ((_g1756917632_
                               (lambda (_g1757117582_)
                                 ((lambda (_L17585_)
                                    (let ()
                                      (let ((_g1759817606_
                                             (lambda (_g1759917602_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1759917602_))))
                                        (let ((_g1759717628_
                                               (lambda (_g1759917610_)
                                                 ((lambda (_L17613_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L17613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17585_ (cons _L17557_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L17527_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L17557_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur17510_
                                                     _L17527_
                                                     _body17501_)
                                                    '())))
                                  (cons _E17503_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1759917610_))))
                                          (_g1759717628_
                                           (if _final?17508_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1757117582_))))
                          (_g1756917632_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info17498_))))))
                  _g1754317554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1754117636_
                                                   _tgt17500_)))))
                                          _g1751317524_))))
                                  (_g1751117640_
                                   (gx#genident 'class))))))))))))
          (_generate117490_ _tgt17485_ _ptree17486_ _K17487_ _E17488_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx16482_ _tgt-lst16484_ _clauses16485_)
        (let ((_parse-body16487_
               (lambda (_hd-len17305_)
                 ((letrec ((_lp17308_
                            (lambda (_rest17311_ _r17313_)
                              (let ((_g1731617328_
                                     (lambda (_g1731717324_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1731717324_))))
                                (let ((_g1731517339_
                                       (lambda (_g1731717332_)
                                         ((lambda () _r17313_)))))
                                  (let ((_g1731417479_
                                         (lambda (_g1731717343_)
                                           (if (gx#stx-pair? _g1731717343_)
                                               (let ((_e1732017346_
                                                      (gx#syntax-e
                                                       _g1731717343_)))
                                                 (let ((_hd1732117350_
                                                        (##car _e1732017346_))
                                                       (_tl1732217353_
                                                        (##cdr _e1732017346_)))
                                                   ((lambda (_L17356_ _L17358_)
                                                      (let ((_g1737517391_
                                                             (lambda (_g1737617387_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1737617387_))))
                                                        (let ((_g1737417402_
                                                               (lambda (_g1737617395_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx16482_
                             _L17358_))))))
                  (let ((_g1737317443_
                         (lambda (_g1737617406_)
                           (if (gx#stx-pair? _g1737617406_)
                               (let ((_e1738317409_
                                      (gx#syntax-e _g1737617406_)))
                                 (let ((_hd1738417413_ (##car _e1738317409_))
                                       (_tl1738517416_ (##cdr _e1738317409_)))
                                   ((lambda (_L17419_ _L17421_)
                                      (if (if (gx#stx-list? _L17421_)
                                              (if (fx= (gx#stx-length _L17421_)
                                                       _hd-len17305_)
                                                  (if (gx#stx-list? _L17419_)
                                                      (not (gx#stx-null?
                                                            _L17419_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp17308_
                                           _L17356_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1743317435_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1743317435_
                         _stx16482_))
                      _L17421_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L17419_)
                            (let ((_$e17439_ (gx#stx-source _L17358_)))
                              (if _$e17439_
                                  _$e17439_
                                  (gx#stx-source _stx16482_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r17313_))
                                          (_g1737417402_ _g1737617406_)))
                                    _tl1738517416_
                                    _hd1738417413_)))
                               (_g1737417402_ _g1737617406_)))))
                    (let ((_g1737217475_
                           (lambda (_g1737617447_)
                             (if (gx#stx-pair? _g1737617447_)
                                 (let ((_e1737817450_
                                        (gx#syntax-e _g1737617447_)))
                                   (let ((_hd1737917454_ (##car _e1737817450_))
                                         (_tl1738017457_
                                          (##cdr _e1737817450_)))
                                     (if (gx#identifier? _hd1737917454_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g28411_|
                                              _hd1737917454_)
                                             ((lambda (_L17460_)
                                                (if (if (gx#stx-list? _L17460_)
                                                        (not (gx#stx-null?
                                                              _L17460_))
                                                        '#f)
                                                    (if (gx#stx-null? _L17356_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L17460_)
                                         (let ((_$e17471_
                                                (gx#stx-source _L17358_)))
                                           (if _$e17471_
                                               _$e17471_
                                               (gx#stx-source _stx16482_))))
                                        '())))
                      _r17313_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx16482_
                 _L17358_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1737317443_
                                                     _g1737617447_)))
                                              _tl1738017457_)
                                             (_g1737317443_ _g1737617447_))
                                         (_g1737317443_ _g1737617447_))))
                                 (_g1737317443_ _g1737617447_)))))
                      (_g1737217475_ _L17358_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1732217353_
                                                    _hd1732117350_)))
                                               (_g1731517339_
                                                _g1731717343_)))))
                                    (_g1731417479_ _rest17311_)))))))
                    _lp17308_)
                  _clauses16485_
                  '()))))
          (let ((_generate116491_
                 (lambda (_clause16493_ _body16495_ _E16496_)
                   ((letrec ((_recur16498_
                              (lambda (_rest16501_ _rest-targets16503_)
                                (let ((_g1650616518_
                                       (lambda (_g1650716514_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1650716514_))))
                                  (let ((_g1650516529_
                                         (lambda (_g1650716522_)
                                           ((lambda () _body16495_)))))
                                    (let ((_g1650416800_
                                           (lambda (_g1650716533_)
                                             (if (gx#stx-pair? _g1650716533_)
                                                 (let ((_e1651016536_
                                                        (gx#syntax-e
                                                         _g1650716533_)))
                                                   (let ((_hd1651116540_
                                                          (##car _e1651016536_))
                                                         (_tl1651216543_
                                                          (##cdr _e1651016536_)))
                                                     ((lambda (_L16546_
                                                               _L16548_)
                                                        (let ((_g1656516577_
                                                               (lambda (_g1656616573_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1656616573_))))
                  (let ((_g1656416796_
                         (lambda (_g1656616581_)
                           (if (gx#stx-pair? _g1656616581_)
                               (let ((_e1656916584_
                                      (gx#syntax-e _g1656616581_)))
                                 (let ((_hd1657016588_ (##car _e1656916584_))
                                       (_tl1657116591_ (##cdr _e1656916584_)))
                                   ((lambda (_L16594_ _L16596_)
                                      (let ((_g1660816616_
                                             (lambda (_g1660916612_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1660916612_))))
                                        (let ((_g1660716792_
                                               (lambda (_g1660916620_)
                                                 ((lambda (_L16623_)
                                                    (let ()
                                                      (let ((_g1663516652_
                                                             (lambda (_g1663616648_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1663616648_))))
                                                        (let ((_g1663416788_
                                                               (lambda (_g1663616656_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1663616656_)
                             (if (fx>= (gx#stx-length _g1663616656_) '0)
                                 (let ((_g28409_
                                        (gx#syntax-split-splice
                                         _g1663616656_
                                         '0)))
                                   (begin
                                     (let ((_g28410_ (values-count _g28409_)))
                                       (if (not (fx= _g28410_ 2))
                                           (error "Context expects 2 values"
                                                  _g28410_)))
                                     (let ((_target1663816659_
                                            (values-ref _g28409_ 0))
                                           (_tl1664016662_
                                            (values-ref _g28409_ 1)))
                                       (if (gx#stx-null? _tl1664016662_)
                                           (letrec ((_loop1664116665_
                                                     (lambda (_hd1663916669_
                                                              _var1664516672_)
                                                       (if (gx#stx-pair?
                                                            _hd1663916669_)
                                                           (let ((_e1664216675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1663916669_)))
                     (let ((_lp-hd1664316679_ (##car _e1664216675_))
                           (_lp-tl1664416682_ (##cdr _e1664216675_)))
                       (_loop1664116665_
                        _lp-tl1664416682_
                        (cons _lp-hd1664316679_ _var1664516672_))))
                   (let ((_var1664616685_ (reverse _var1664516672_)))
                     ((lambda (_L16689_)
                        (let ()
                          (let ((_g1670616714_
                                 (lambda (_g1670716710_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1670716710_))))
                            (let ((_g1670516784_
                                   (lambda (_g1670716718_)
                                     ((lambda (_L16721_)
                                        (let ()
                                          (let ((_g1673416742_
                                                 (lambda (_g1673516738_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1673516738_))))
                                            (let ((_g1673316772_
                                                   (lambda (_g1673516746_)
                                                     ((lambda (_L16749_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L16623_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1676316766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1676416769_)
                                 (cons _g1676316766_ _g1676416769_))
                               '()
                               _L16689_))
                      (cons _L16721_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L16749_ '()))))))
              _g1673516746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1673316772_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx16482_
                                                _L16596_
                                                _L16548_
                                                (cons _L16623_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1677516778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1677616781_)
                         (cons _g1677516778_ _g1677616781_))
                       '()
                       _L16689_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E16496_))))))
                                      _g1670716718_))))
                              (_g1670516784_
                               (_recur16498_ _L16546_ _L16594_))))))
                      _var1664616685_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1664116665_
                                              _target1663816659_
                                              '()))
                                           (_g1663516652_ _g1663616656_)))))
                                 (_g1663516652_ _g1663616656_))
                             (_g1663516652_ _g1663616656_)))))
                  (_g1663416788_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L16548_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1660916620_))))
                                          (_g1660716792_ (gx#genident 'K)))))
                                    _tl1657116591_
                                    _hd1657016588_)))
                               (_g1656516577_ _g1656616581_)))))
                    (_g1656416796_ _rest-targets16503_))))
              _tl1651216543_
              _hd1651116540_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1650516529_
                                                  _g1650716533_)))))
                                      (_g1650416800_ _rest16501_)))))))
                      _recur16498_)
                    _clause16493_
                    _tgt-lst16484_))))
            (letrec ((_generate-clauses16490_
                      (lambda (_rest16804_ _E16806_)
                        (let ((_g1681016826_
                               (lambda (_g1681116822_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1681116822_))))
                          (let ((_g1680916837_
                                 (lambda (_g1681116830_)
                                   ((lambda () _E16806_)))))
                            (let ((_g1680817013_
                                   (lambda (_g1681116841_)
                                     (if (gx#stx-pair? _g1681116841_)
                                         (let ((_e1681816844_
                                                (gx#syntax-e _g1681116841_)))
                                           (let ((_hd1681916848_
                                                  (##car _e1681816844_))
                                                 (_tl1682016851_
                                                  (##cdr _e1681816844_)))
                                             ((lambda (_L16854_ _L16856_)
                                                (let ((_g1686916888_
                                                       (lambda (_g1687016884_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1687016884_))))
                                                  (let ((_g1686817009_
                                                         (lambda (_g1687016892_)
                                                           (if (gx#stx-pair?
                                                                _g1687016892_)
                                                               (let ((_e1687416895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1687016892_)))
                         (let ((_hd1687516899_ (##car _e1687416895_))
                               (_tl1687616902_ (##cdr _e1687416895_)))
                           (if (gx#stx-pair? _tl1687616902_)
                               (let ((_e1687716905_
                                      (gx#syntax-e _tl1687616902_)))
                                 (let ((_hd1687816909_ (##car _e1687716905_))
                                       (_tl1687916912_ (##cdr _e1687716905_)))
                                   (if (gx#stx-pair? _tl1687916912_)
                                       (let ((_e1688016915_
                                              (gx#syntax-e _tl1687916912_)))
                                         (let ((_hd1688116919_
                                                (##car _e1688016915_))
                                               (_tl1688216922_
                                                (##cdr _e1688016915_)))
                                           (if (gx#stx-null? _tl1688216922_)
                                               ((lambda (_L16925_
                                                         _L16927_
                                                         _L16928_)
                                                  (let ((_g1694516960_
                                                         (lambda (_g1694616956_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1694616956_))))
                                                    (let ((_g1694417005_
                                                           (lambda (_g1694616964_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1694616964_)
                         (let ((_e1694916967_ (gx#syntax-e _g1694616964_)))
                           (let ((_hd1695016971_ (##car _e1694916967_))
                                 (_tl1695116974_ (##cdr _e1694916967_)))
                             (if (gx#stx-pair? _tl1695116974_)
                                 (let ((_e1695216977_
                                        (gx#syntax-e _tl1695116974_)))
                                   (let ((_hd1695316981_ (##car _e1695216977_))
                                         (_tl1695416984_
                                          (##cdr _e1695216977_)))
                                     (if (gx#stx-null? _tl1695416984_)
                                         ((lambda (_L16987_ _L16989_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L16928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L16989_ '())))
                                    '()))
                        '())
                  (cons _L16987_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1695316981_
                                          _hd1695016971_)
                                         (_g1694516960_ _g1694616964_))))
                                 (_g1694516960_ _g1694616964_))))
                         (_g1694516960_ _g1694616964_)))))
              (_g1694417005_
               (list (if (gx#stx-e _L16927_)
                         (_generate116491_ _L16927_ _L16925_ _E16806_)
                         _L16925_)
                     (_generate-clauses16490_
                      _L16854_
                      (cons _L16928_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1688116919_
                                                _hd1687816909_
                                                _hd1687516899_)
                                               (_g1686916888_ _g1687016892_))))
                                       (_g1686916888_ _g1687016892_))))
                               (_g1686916888_ _g1687016892_))))
                       (_g1686916888_ _g1687016892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1686817009_ _L16856_))))
                                              _tl1682016851_
                                              _hd1681916848_)))
                                         (_g1680916837_ _g1681116841_)))))
                              (let ((_g1680717118_
                                     (lambda (_g1681117017_)
                                       (if (gx#stx-pair? _g1681117017_)
                                           (let ((_e1681317020_
                                                  (gx#syntax-e _g1681117017_)))
                                             (let ((_hd1681417024_
                                                    (##car _e1681317020_))
                                                   (_tl1681517027_
                                                    (##cdr _e1681317020_)))
                                               (if (gx#stx-null?
                                                    _tl1681517027_)
                                                   ((lambda (_L17030_)
                                                      (let ((_g1704117059_
                                                             (lambda (_g1704217055_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1704217055_))))
                                                        (let ((_g1704017114_
                                                               (lambda (_g1704217063_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1704217063_)
                             (let ((_e1704517066_ (gx#syntax-e _g1704217063_)))
                               (let ((_hd1704617070_ (##car _e1704517066_))
                                     (_tl1704717073_ (##cdr _e1704517066_)))
                                 (if (gx#stx-pair? _tl1704717073_)
                                     (let ((_e1704817076_
                                            (gx#syntax-e _tl1704717073_)))
                                       (let ((_hd1704917080_
                                              (##car _e1704817076_))
                                             (_tl1705017083_
                                              (##cdr _e1704817076_)))
                                         (if (gx#stx-pair? _tl1705017083_)
                                             (let ((_e1705117086_
                                                    (gx#syntax-e
                                                     _tl1705017083_)))
                                               (let ((_hd1705217090_
                                                      (##car _e1705117086_))
                                                     (_tl1705317093_
                                                      (##cdr _e1705117086_)))
                                                 (if (gx#stx-null?
                                                      _tl1705317093_)
                                                     ((lambda (_L17096_
                                                               _L17098_)
                                                        (if (gx#stx-e _L17098_)
                                                            (_generate116491_
                                                             _L17098_
                                                             _L17096_
                                                             _E16806_)
                                                            _L17096_))
                                                      _hd1705217090_
                                                      _hd1704917080_)
                                                     (_g1704117059_
                                                      _g1704217063_))))
                                             (_g1704117059_ _g1704217063_))))
                                     (_g1704117059_ _g1704217063_))))
                             (_g1704117059_ _g1704217063_)))))
                  (_g1704017114_ _L17030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1681417024_)
                                                   (_g1680817013_
                                                    _g1681117017_))))
                                           (_g1680817013_ _g1681117017_)))))
                                (_g1680717118_ _rest16804_))))))))
              (let ((_generate-body16489_
                     (lambda (_body17122_)
                       (let ((_g1712517133_
                              (lambda (_g1712617129_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1712617129_))))
                         (let ((_g1712417301_
                                (lambda (_g1712617137_)
                                  ((lambda (_L17140_)
                                     (let ()
                                       (let ((_g1715217169_
                                              (lambda (_g1715317165_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1715317165_))))
                                         (let ((_g1715117297_
                                                (lambda (_g1715317173_)
                                                  (if (gx#stx-pair/null?
                                                       _g1715317173_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1715317173_)
                        '0)
                  (let ((_g28407_ (gx#syntax-split-splice _g1715317173_ '0)))
                    (begin
                      (let ((_g28408_ (values-count _g28407_)))
                        (if (not (fx= _g28408_ 2))
                            (error "Context expects 2 values" _g28408_)))
                      (let ((_target1715517176_ (values-ref _g28407_ 0))
                            (_tl1715717179_ (values-ref _g28407_ 1)))
                        (if (gx#stx-null? _tl1715717179_)
                            (letrec ((_loop1715817182_
                                      (lambda (_hd1715617186_
                                               _target1716217189_)
                                        (if (gx#stx-pair? _hd1715617186_)
                                            (let ((_e1715917192_
                                                   (gx#syntax-e
                                                    _hd1715617186_)))
                                              (let ((_lp-hd1716017196_
                                                     (##car _e1715917192_))
                                                    (_lp-tl1716117199_
                                                     (##cdr _e1715917192_)))
                                                (_loop1715817182_
                                                 _lp-tl1716117199_
                                                 (cons _lp-hd1716017196_
                                                       _target1716217189_))))
                                            (let ((_target1716317202_
                                                   (reverse _target1716217189_)))
                                              ((lambda (_L17206_)
                                                 (let ()
                                                   (let ((_g1722317231_
                                                          (lambda (_g1722417227_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1722417227_))))
                                                     (let ((_g1722217285_
                                                            (lambda (_g1722417235_)
                                                              ((lambda (_L17238_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1725117259_
                                  (lambda (_g1725217255_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1725217255_))))
                             (let ((_g1725017281_
                                    (lambda (_g1725217263_)
                                      ((lambda (_L17266_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L17140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L17238_ '()))
                       '())
                 (cons _L17266_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1725217263_))))
                               (_g1725017281_
                                (_generate-clauses16490_
                                 _body17122_
                                 (cons _L17140_ '())))))))
                       _g1722417235_))))
               (_g1722217285_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1728817291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1728917294_)
                  (cons _g1728817291_ _g1728917294_))
                '()
                _L17206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx16482_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1716317202_))))))
                              (_loop1715817182_ _target1715517176_ '()))
                            (_g1715217169_ _g1715317173_)))))
                  (_g1715217169_ _g1715317173_))
              (_g1715217169_ _g1715317173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1715117297_ _tgt-lst16484_)))))
                                   _g1712617137_))))
                           (_g1712417301_ (gx#genident 'E)))))))
                (_generate-body16489_
                 (_parse-body16487_ (gx#stx-length _tgt-lst16484_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx16384_ _tgt16386_ _clauses16387_)
        (let ((_reclause16389_
               (lambda (_clause16392_)
                 (let ((_g1639716412_
                        (lambda (_g1639816408_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1639816408_))))
                   (let ((_g1639616423_
                          (lambda (_g1639816416_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx16384_
                                _clause16392_))))))
                     (let ((_g1639516457_
                            (lambda (_g1639816427_)
                              (if (gx#stx-pair? _g1639816427_)
                                  (let ((_e1640416430_
                                         (gx#syntax-e _g1639816427_)))
                                    (let ((_hd1640516434_
                                           (##car _e1640416430_))
                                          (_tl1640616437_
                                           (##cdr _e1640416430_)))
                                      ((lambda (_L16440_ _L16442_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L16442_ '()) _L16440_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1640616437_
                                       _hd1640516434_)))
                                  (_g1639616423_ _g1639816427_)))))
                       (let ((_g1639416478_
                              (lambda (_g1639816461_)
                                (if (gx#stx-pair? _g1639816461_)
                                    (let ((_e1639916464_
                                           (gx#syntax-e _g1639816461_)))
                                      (let ((_hd1640016468_
                                             (##car _e1639916464_))
                                            (_tl1640116471_
                                             (##cdr _e1639916464_)))
                                        (if (gx#identifier? _hd1640016468_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g28412_|
                                                 _hd1640016468_)
                                                ((lambda () _clause16392_))
                                                (_g1639516457_ _g1639816461_))
                                            (_g1639516457_ _g1639816461_))))
                                    (_g1639516457_ _g1639816461_)))))
                         (_g1639416478_ _clause16392_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx16384_
           (cons _tgt16386_ '())
           (gx#stx-map _reclause16389_ _clauses16387_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx23362_)
        (let ((_g2336723396_
               (lambda (_g2336823392_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2336823392_))))
          (let ((_g2336623504_
                 (lambda (_g2336823400_)
                   (if (gx#stx-pair? _g2336823400_)
                       (let ((_e2338523403_ (gx#syntax-e _g2336823400_)))
                         (let ((_hd2338623407_ (##car _e2338523403_))
                               (_tl2338723410_ (##cdr _e2338523403_)))
                           (if (gx#stx-pair? _tl2338723410_)
                               (let ((_e2338823413_
                                      (gx#syntax-e _tl2338723410_)))
                                 (let ((_hd2338923417_ (##car _e2338823413_))
                                       (_tl2339023420_ (##cdr _e2338823413_)))
                                   ((lambda (_L23423_ _L23425_)
                                      (if (gx#stx-list? _L23423_)
                                          (let ((_g2343923447_
                                                 (lambda (_g2344023443_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2344023443_))))
                                            (let ((_g2343823500_
                                                   (lambda (_g2344023451_)
                                                     ((lambda (_L23454_)
                                                        (let ()
                                                          (let ((_g2346623474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2346723470_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2346723470_))))
                    (let ((_g2346523496_
                           (lambda (_g2346723478_)
                             ((lambda (_L23481_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23454_
                                                            (cons _L23425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23481_ '()))))))
                              _g2346723478_))))
                      (_g2346523496_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx23362_
                        _L23454_
                        _L23423_))))))
              _g2344023451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2343823500_
                                               (gx#genident _L23425_))))
                                          (_g2336723396_ _g2336823400_)))
                                    _tl2339023420_
                                    _hd2338923417_)))
                               (_g2336723396_ _g2336823400_))))
                       (_g2336723396_ _g2336823400_)))))
            (let ((_g2336523609_
                   (lambda (_g2336823508_)
                     (if (gx#stx-pair? _g2336823508_)
                         (let ((_e2337723511_ (gx#syntax-e _g2336823508_)))
                           (let ((_hd2337823515_ (##car _e2337723511_))
                                 (_tl2337923518_ (##cdr _e2337723511_)))
                             (if (gx#stx-pair? _tl2337923518_)
                                 (let ((_e2338023521_
                                        (gx#syntax-e _tl2337923518_)))
                                   (let ((_hd2338123525_ (##car _e2338023521_))
                                         (_tl2338223528_
                                          (##cdr _e2338023521_)))
                                     (if (gx#identifier? _hd2338123525_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g28413_|
                                              _hd2338123525_)
                                             ((lambda (_L23531_)
                                                (if (gx#stx-list? _L23531_)
                                                    (let ((_g2354423552_
                                                           (lambda (_g2354523548_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2354523548_))))
                                                      (let ((_g2354323605_
                                                             (lambda (_g2354523556_)
                                                               ((lambda (_L23559_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2357123579_
                                   (lambda (_g2357223575_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2357223575_))))
                              (let ((_g2357023601_
                                     (lambda (_g2357223583_)
                                       ((lambda (_L23586_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L23559_
                                                          (cons _L23586_
                                                                '()))))))
                                        _g2357223583_))))
                                (_g2357023601_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L23559_ _L23531_))
                                  (gx#stx-source _stx23362_)))))))
                        _g2354523556_))))
                (_g2354323605_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2336623504_
                                                     _g2336823508_)))
                                              _tl2338223528_)
                                             (_g2336623504_ _g2336823508_))
                                         (_g2336623504_ _g2336823508_))))
                                 (_g2336623504_ _g2336823508_))))
                         (_g2336623504_ _g2336823508_)))))
              (let ((_g2336423714_
                     (lambda (_g2336823613_)
                       (if (gx#stx-pair? _g2336823613_)
                           (let ((_e2337023616_ (gx#syntax-e _g2336823613_)))
                             (let ((_hd2337123620_ (##car _e2337023616_))
                                   (_tl2337223623_ (##cdr _e2337023616_)))
                               (if (gx#stx-pair? _tl2337223623_)
                                   (let ((_e2337323626_
                                          (gx#syntax-e _tl2337223623_)))
                                     (let ((_hd2337423630_
                                            (##car _e2337323626_))
                                           (_tl2337523633_
                                            (##cdr _e2337323626_)))
                                       (if (gx#identifier? _hd2337423630_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g28414_|
                                                _hd2337423630_)
                                               ((lambda (_L23636_)
                                                  (if (gx#stx-list? _L23636_)
                                                      (let ((_g2364923657_
                                                             (lambda (_g2365023653_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2365023653_))))
                                                        (let ((_g2364823710_
                                                               (lambda (_g2365023661_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L23664_)
                            (let ()
                              (let ((_g2367623684_
                                     (lambda (_g2367723680_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2367723680_))))
                                (let ((_g2367523706_
                                       (lambda (_g2367723688_)
                                         ((lambda (_L23691_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L23664_ '())
                                                            (cons _L23691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2367723688_))))
                                  (_g2367523706_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L23664_ _L23636_))
                                    (gx#stx-source _stx23362_)))))))
                          _g2365023661_))))
                  (_g2364823710_ (gx#genident 'e))))
              (_g2336523609_ _g2336823613_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2337523633_)
                                               (_g2336523609_ _g2336823613_))
                                           (_g2336523609_ _g2336823613_))))
                                   (_g2336523609_ _g2336823613_))))
                           (_g2336523609_ _g2336823613_)))))
                (_g2336423714_ _stx23362_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx23718_)
        (let ((_g2372123745_
               (lambda (_g2372223741_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2372223741_))))
          (let ((_g2372023957_
                 (lambda (_g2372223749_)
                   (if (gx#stx-pair? _g2372223749_)
                       (let ((_e2372523752_ (gx#syntax-e _g2372223749_)))
                         (let ((_hd2372623756_ (##car _e2372523752_))
                               (_tl2372723759_ (##cdr _e2372523752_)))
                           (if (gx#stx-pair? _tl2372723759_)
                               (let ((_e2372823762_
                                      (gx#syntax-e _tl2372723759_)))
                                 (let ((_hd2372923766_ (##car _e2372823762_))
                                       (_tl2373023769_ (##cdr _e2372823762_)))
                                   (if (gx#stx-pair/null? _hd2372923766_)
                                       (if (fx>= (gx#stx-length _hd2372923766_)
                                                 '0)
                                           (let ((_g28415_
                                                  (gx#syntax-split-splice
                                                   _hd2372923766_
                                                   '0)))
                                             (begin
                                               (let ((_g28416_
                                                      (values-count _g28415_)))
                                                 (if (not (fx= _g28416_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28416_)))
                                               (let ((_target2373123772_
                                                      (values-ref _g28415_ 0))
                                                     (_tl2373323775_
                                                      (values-ref _g28415_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2373323775_)
                                                     (letrec ((_loop2373423778_
                                                               (lambda (_hd2373223782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2373823785_)
                         (if (gx#stx-pair? _hd2373223782_)
                             (let ((_e2373523788_
                                    (gx#syntax-e _hd2373223782_)))
                               (let ((_lp-hd2373623792_ (##car _e2373523788_))
                                     (_lp-tl2373723795_ (##cdr _e2373523788_)))
                                 (_loop2373423778_
                                  _lp-tl2373723795_
                                  (cons _lp-hd2373623792_ _e2373823785_))))
                             (let ((_e2373923798_ (reverse _e2373823785_)))
                               ((lambda (_L23802_ _L23804_)
                                  (if (gx#stx-list? _L23802_)
                                      (let ((_g2382223839_
                                             (lambda (_g2382323835_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2382323835_))))
                                        (let ((_g2382123945_
                                               (lambda (_g2382323843_)
                                                 (if (gx#stx-pair/null?
                                                      _g2382323843_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2382323843_)
                                                               '0)
                                                         (let ((_g28417_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2382323843_
                         '0)))
                   (begin
                     (let ((_g28418_ (values-count _g28417_)))
                       (if (not (fx= _g28418_ 2))
                           (error "Context expects 2 values" _g28418_)))
                     (let ((_target2382523846_ (values-ref _g28417_ 0))
                           (_tl2382723849_ (values-ref _g28417_ 1)))
                       (if (gx#stx-null? _tl2382723849_)
                           (letrec ((_loop2382823852_
                                     (lambda (_hd2382623856_ _$e2383223859_)
                                       (if (gx#stx-pair? _hd2382623856_)
                                           (let ((_e2382923862_
                                                  (gx#syntax-e
                                                   _hd2382623856_)))
                                             (let ((_lp-hd2383023866_
                                                    (##car _e2382923862_))
                                                   (_lp-tl2383123869_
                                                    (##cdr _e2382923862_)))
                                               (_loop2382823852_
                                                _lp-tl2383123869_
                                                (cons _lp-hd2383023866_
                                                      _$e2383223859_))))
                                           (let ((_$e2383323872_
                                                  (reverse _$e2383223859_)))
                                             ((lambda (_L23876_)
                                                (let ()
                                                  (let ((_g2389223900_
                                                         (lambda (_g2389323896_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2389323896_))))
                                                    (let ((_g2389123933_
                                                           (lambda (_g2389323904_)
                                                             ((lambda (_L23907_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L23804_
                                           _L23876_)
                                          (foldr (lambda (_g2392123925_
                                                          _g2392223928_
                                                          _g2392323930_)
                                                   (cons (cons _g2392223928_
                                                               (cons _g2392123925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2392323930_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L23804_
                                                 _L23876_))
                                        (cons _L23907_ '()))))))
                      _g2389323904_))))
              (_g2389123933_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx23718_
                (begin
                  '#!void
                  (foldr (lambda (_g2393623939_ _g2393723942_)
                           (cons _g2393623939_ _g2393723942_))
                         '()
                         _L23876_))
                _L23802_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2383323872_))))))
                             (_loop2382823852_ _target2382523846_ '()))
                           (_g2382223839_ _g2382323843_)))))
                 (_g2382223839_ _g2382323843_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2382223839_
                                                      _g2382323843_)))))
                                          (_g2382123945_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2394823951_
                                                              _g2394923954_)
                                                       (cons _g2394823951_
                                                             _g2394923954_))
                                                     '()
                                                     _L23804_))))))
                                      (_g2372123745_ _g2372223749_)))
                                _tl2373023769_
                                _e2373923798_))))))
               (_loop2373423778_ _target2373123772_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2372123745_
                                                      _g2372223749_)))))
                                           (_g2372123745_ _g2372223749_))
                                       (_g2372123745_ _g2372223749_))))
                               (_g2372123745_ _g2372223749_))))
                       (_g2372123745_ _g2372223749_)))))
            (_g2372023957_ _stx23718_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx23963_)
        (let ((_g2396924052_
               (lambda (_g2397024048_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2397024048_))))
          (let ((_g2396824213_
                 (lambda (_g2397024056_)
                   (if (gx#stx-pair? _g2397024056_)
                       (let ((_e2401524059_ (gx#syntax-e _g2397024056_)))
                         (let ((_hd2401624063_ (##car _e2401524059_))
                               (_tl2401724066_ (##cdr _e2401524059_)))
                           (if (gx#stx-pair? _tl2401724066_)
                               (let ((_e2401824069_
                                      (gx#syntax-e _tl2401724066_)))
                                 (let ((_hd2401924073_ (##car _e2401824069_))
                                       (_tl2402024076_ (##cdr _e2401824069_)))
                                   (if (gx#stx-pair/null? _hd2401924073_)
                                       (if (fx>= (gx#stx-length _hd2401924073_)
                                                 '0)
                                           (let ((_g28419_
                                                  (gx#syntax-split-splice
                                                   _hd2401924073_
                                                   '0)))
                                             (begin
                                               (let ((_g28420_
                                                      (values-count _g28419_)))
                                                 (if (not (fx= _g28420_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28420_)))
                                               (let ((_target2402124079_
                                                      (values-ref _g28419_ 0))
                                                     (_tl2402324082_
                                                      (values-ref _g28419_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2402324082_)
                                                     (letrec ((_loop2402424085_
                                                               (lambda (_hd2402224089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2402824092_
                                _hd2402924094_)
                         (if (gx#stx-pair? _hd2402224089_)
                             (let ((_e2402524097_
                                    (gx#syntax-e _hd2402224089_)))
                               (let ((_lp-hd2402624101_ (##car _e2402524097_))
                                     (_lp-tl2402724104_ (##cdr _e2402524097_)))
                                 (if (gx#stx-pair? _lp-hd2402624101_)
                                     (let ((_e2403224107_
                                            (gx#syntax-e _lp-hd2402624101_)))
                                       (let ((_hd2403324111_
                                              (##car _e2403224107_))
                                             (_tl2403424114_
                                              (##cdr _e2403224107_)))
                                         (if (gx#stx-pair? _tl2403424114_)
                                             (let ((_e2403524117_
                                                    (gx#syntax-e
                                                     _tl2403424114_)))
                                               (let ((_hd2403624121_
                                                      (##car _e2403524117_))
                                                     (_tl2403724124_
                                                      (##cdr _e2403524117_)))
                                                 (if (gx#stx-null?
                                                      _tl2403724124_)
                                                     (_loop2402424085_
                                                      _lp-tl2402724104_
                                                      (cons _hd2403624121_
                                                            _expr2402824092_)
                                                      (cons _hd2403324111_
                                                            _hd2402924094_))
                                                     (_g2396924052_
                                                      _g2397024056_))))
                                             (_g2396924052_ _g2397024056_))))
                                     (_g2396924052_ _g2397024056_))))
                             (let ((_expr2403024127_
                                    (reverse _expr2402824092_))
                                   (_hd2403124130_ (reverse _hd2402924094_)))
                               (if (gx#stx-pair/null? _tl2402024076_)
                                   (if (fx>= (gx#stx-length _tl2402024076_) '0)
                                       (let ((_g28421_
                                              (gx#syntax-split-splice
                                               _tl2402024076_
                                               '0)))
                                         (begin
                                           (let ((_g28422_
                                                  (values-count _g28421_)))
                                             (if (not (fx= _g28422_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28422_)))
                                           (let ((_target2403824133_
                                                  (values-ref _g28421_ 0))
                                                 (_tl2404024136_
                                                  (values-ref _g28421_ 1)))
                                             (if (gx#stx-null? _tl2404024136_)
                                                 (letrec ((_loop2404124139_
                                                           (lambda (_hd2403924143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2404524146_)
                     (if (gx#stx-pair? _hd2403924143_)
                         (let ((_e2404224149_ (gx#syntax-e _hd2403924143_)))
                           (let ((_lp-hd2404324153_ (##car _e2404224149_))
                                 (_lp-tl2404424156_ (##cdr _e2404224149_)))
                             (_loop2404124139_
                              _lp-tl2404424156_
                              (cons _lp-hd2404324153_ _body2404524146_))))
                         (let ((_body2404624159_ (reverse _body2404524146_)))
                           ((lambda (_L24163_ _L24165_ _L24166_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2418824195_
                                                            _g2418924198_)
                                                     (cons _g2418824195_
                                                           _g2418924198_))
                                                   '()
                                                   _L24165_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2419024201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2419124204_)
                         (cons _g2419024201_ _g2419124204_))
                       '()
                       _L24166_))
              (begin
                '#!void
                (foldr (lambda (_g2419224207_ _g2419324210_)
                         (cons _g2419224207_ _g2419324210_))
                       '()
                       _L24163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2404624159_
                            _expr2403024127_
                            _hd2403124130_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2404124139_
                                                    _target2403824133_
                                                    '()))
                                                 (_g2396924052_
                                                  _g2397024056_)))))
                                       (_g2396924052_ _g2397024056_))
                                   (_g2396924052_ _g2397024056_)))))))
               (_loop2402424085_ _target2402124079_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2396924052_
                                                      _g2397024056_)))))
                                           (_g2396924052_ _g2397024056_))
                                       (_g2396924052_ _g2397024056_))))
                               (_g2396924052_ _g2397024056_))))
                       (_g2396924052_ _g2397024056_)))))
            (let ((_g2396724325_
                   (lambda (_g2397024217_)
                     (if (gx#stx-pair? _g2397024217_)
                         (let ((_e2399124220_ (gx#syntax-e _g2397024217_)))
                           (let ((_hd2399224224_ (##car _e2399124220_))
                                 (_tl2399324227_ (##cdr _e2399124220_)))
                             (if (gx#stx-pair? _tl2399324227_)
                                 (let ((_e2399424230_
                                        (gx#syntax-e _tl2399324227_)))
                                   (let ((_hd2399524234_ (##car _e2399424230_))
                                         (_tl2399624237_
                                          (##cdr _e2399424230_)))
                                     (if (gx#stx-pair? _hd2399524234_)
                                         (let ((_e2399724240_
                                                (gx#syntax-e _hd2399524234_)))
                                           (let ((_hd2399824244_
                                                  (##car _e2399724240_))
                                                 (_tl2399924247_
                                                  (##cdr _e2399724240_)))
                                             (if (gx#stx-pair? _tl2399924247_)
                                                 (let ((_e2400024250_
                                                        (gx#syntax-e
                                                         _tl2399924247_)))
                                                   (let ((_hd2400124254_
                                                          (##car _e2400024250_))
                                                         (_tl2400224257_
                                                          (##cdr _e2400024250_)))
                                                     (if (gx#stx-null?
                                                          _tl2400224257_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2399624237_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2399624237_)
                               '0)
                         (let ((_g28423_
                                (gx#syntax-split-splice _tl2399624237_ '0)))
                           (begin
                             (let ((_g28424_ (values-count _g28423_)))
                               (if (not (fx= _g28424_ 2))
                                   (error "Context expects 2 values"
                                          _g28424_)))
                             (let ((_target2400324260_ (values-ref _g28423_ 0))
                                   (_tl2400524263_ (values-ref _g28423_ 1)))
                               (if (gx#stx-null? _tl2400524263_)
                                   (letrec ((_loop2400624266_
                                             (lambda (_hd2400424270_
                                                      _body2401024273_)
                                               (if (gx#stx-pair?
                                                    _hd2400424270_)
                                                   (let ((_e2400724276_
                                                          (gx#syntax-e
                                                           _hd2400424270_)))
                                                     (let ((_lp-hd2400824280_
                                                            (##car _e2400724276_))
                                                           (_lp-tl2400924283_
                                                            (##cdr _e2400724276_)))
                                                       (_loop2400624266_
                                                        _lp-tl2400924283_
                                                        (cons _lp-hd2400824280_
                                                              _body2401024273_))))
                                                   (let ((_body2401124286_
                                                          (reverse _body2401024273_)))
                                                     ((lambda (_L24290_
                                                               _L24292_
                                                               _L24293_
                                                               _L24294_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L24293_)
                                                            (cons _L24294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L24293_ (cons _L24292_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2431624319_ _g2431724322_)
                                           (cons _g2431624319_ _g2431724322_))
                                         '()
                                         _L24290_))))
                    (_g2396824213_ _g2397024217_)))
              _body2401124286_
              _hd2400124254_
              _hd2399824244_
              _hd2399224224_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2400624266_ _target2400324260_ '()))
                                   (_g2396824213_ _g2397024217_)))))
                         (_g2396824213_ _g2397024217_))
                     (_g2396824213_ _g2397024217_))
                 (_g2396824213_ _g2397024217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2396824213_
                                                  _g2397024217_))))
                                         (_g2396824213_ _g2397024217_))))
                                 (_g2396824213_ _g2397024217_))))
                         (_g2396824213_ _g2397024217_)))))
              (let ((_g2396624407_
                     (lambda (_g2397024329_)
                       (if (gx#stx-pair? _g2397024329_)
                           (let ((_e2397224332_ (gx#syntax-e _g2397024329_)))
                             (let ((_hd2397324336_ (##car _e2397224332_))
                                   (_tl2397424339_ (##cdr _e2397224332_)))
                               (if (gx#stx-pair? _tl2397424339_)
                                   (let ((_e2397524342_
                                          (gx#syntax-e _tl2397424339_)))
                                     (let ((_hd2397624346_
                                            (##car _e2397524342_))
                                           (_tl2397724349_
                                            (##cdr _e2397524342_)))
                                       (if (gx#stx-null? _hd2397624346_)
                                           (if (gx#stx-pair/null?
                                                _tl2397724349_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2397724349_)
                                                         '0)
                                                   (let ((_g28425_
                                                          (gx#syntax-split-splice
                                                           _tl2397724349_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28426_
                                                              (values-count
                                                               _g28425_)))
                                                         (if (not (fx= _g28426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28426_)))
               (let ((_target2397824352_ (values-ref _g28425_ 0))
                     (_tl2398024355_ (values-ref _g28425_ 1)))
                 (if (gx#stx-null? _tl2398024355_)
                     (letrec ((_loop2398124358_
                               (lambda (_hd2397924362_ _body2398524365_)
                                 (if (gx#stx-pair? _hd2397924362_)
                                     (let ((_e2398224368_
                                            (gx#syntax-e _hd2397924362_)))
                                       (let ((_lp-hd2398324372_
                                              (##car _e2398224368_))
                                             (_lp-tl2398424375_
                                              (##cdr _e2398224368_)))
                                         (_loop2398124358_
                                          _lp-tl2398424375_
                                          (cons _lp-hd2398324372_
                                                _body2398524365_))))
                                     (let ((_body2398624378_
                                            (reverse _body2398524365_)))
                                       ((lambda (_L24382_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2439824401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2439924404_)
                         (cons _g2439824401_ _g2439924404_))
                       '()
                       _L24382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2398624378_))))))
                       (_loop2398124358_ _target2397824352_ '()))
                     (_g2396724325_ _g2397024329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2396724325_
                                                    _g2397024329_))
                                               (_g2396724325_ _g2397024329_))
                                           (_g2396724325_ _g2397024329_))))
                                   (_g2396724325_ _g2397024329_))))
                           (_g2396724325_ _g2397024329_)))))
                (_g2396624407_ _$stx23963_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx24415_)
        (let ((_g2442024472_
               (lambda (_g2442124468_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2442124468_))))
          (let ((_g2441924555_
                 (lambda (_g2442124476_)
                   (if (gx#stx-pair? _g2442124476_)
                       (let ((_e2445224479_ (gx#syntax-e _g2442124476_)))
                         (let ((_hd2445324483_ (##car _e2445224479_))
                               (_tl2445424486_ (##cdr _e2445224479_)))
                           (if (gx#stx-pair? _tl2445424486_)
                               (let ((_e2445524489_
                                      (gx#syntax-e _tl2445424486_)))
                                 (let ((_hd2445624493_ (##car _e2445524489_))
                                       (_tl2445724496_ (##cdr _e2445524489_)))
                                   (if (gx#stx-null? _hd2445624493_)
                                       (if (gx#stx-pair/null? _tl2445724496_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2445724496_)
                                                     '0)
                                               (let ((_g28427_
                                                      (gx#syntax-split-splice
                                                       _tl2445724496_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28428_
                                                          (values-count
                                                           _g28427_)))
                                                     (if (not (fx= _g28428_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28428_)))
                                                   (let ((_target2445824499_
                                                          (values-ref
                                                           _g28427_
                                                           0))
                                                         (_tl2446024502_
                                                          (values-ref
                                                           _g28427_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2446024502_)
                                                         (letrec ((_loop2446124505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2445924509_ _body2446524512_)
                             (if (gx#stx-pair? _hd2445924509_)
                                 (let ((_e2446224515_
                                        (gx#syntax-e _hd2445924509_)))
                                   (let ((_lp-hd2446324519_
                                          (##car _e2446224515_))
                                         (_lp-tl2446424522_
                                          (##cdr _e2446224515_)))
                                     (_loop2446124505_
                                      _lp-tl2446424522_
                                      (cons _lp-hd2446324519_
                                            _body2446524512_))))
                                 (let ((_body2446624525_
                                        (reverse _body2446524512_)))
                                   ((lambda (_L24529_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2454624549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2454724552_)
                     (cons _g2454624549_ _g2454724552_))
                   '()
                   _L24529_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2446624525_))))))
                   (_loop2446124505_ _target2445824499_ '()))
                 (_g2442024472_ _g2442124476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2442024472_ _g2442124476_))
                                           (_g2442024472_ _g2442124476_))
                                       (_g2442024472_ _g2442124476_))))
                               (_g2442024472_ _g2442124476_))))
                       (_g2442024472_ _g2442124476_)))))
            (let ((_g2441824681_
                   (lambda (_g2442124559_)
                     (if (gx#stx-pair? _g2442124559_)
                         (let ((_e2442724562_ (gx#syntax-e _g2442124559_)))
                           (let ((_hd2442824566_ (##car _e2442724562_))
                                 (_tl2442924569_ (##cdr _e2442724562_)))
                             (if (gx#stx-pair? _tl2442924569_)
                                 (let ((_e2443024572_
                                        (gx#syntax-e _tl2442924569_)))
                                   (let ((_hd2443124576_ (##car _e2443024572_))
                                         (_tl2443224579_
                                          (##cdr _e2443024572_)))
                                     (if (gx#stx-pair? _hd2443124576_)
                                         (let ((_e2443324582_
                                                (gx#syntax-e _hd2443124576_)))
                                           (let ((_hd2443424586_
                                                  (##car _e2443324582_))
                                                 (_tl2443524589_
                                                  (##cdr _e2443324582_)))
                                             (if (gx#stx-pair? _hd2443424586_)
                                                 (let ((_e2443624592_
                                                        (gx#syntax-e
                                                         _hd2443424586_)))
                                                   (let ((_hd2443724596_
                                                          (##car _e2443624592_))
                                                         (_tl2443824599_
                                                          (##cdr _e2443624592_)))
                                                     (if (gx#stx-pair?
                                                          _tl2443824599_)
                                                         (let ((_e2443924602_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2443824599_)))
                   (let ((_hd2444024606_ (##car _e2443924602_))
                         (_tl2444124609_ (##cdr _e2443924602_)))
                     (if (gx#stx-null? _tl2444124609_)
                         (if (gx#stx-pair/null? _tl2443224579_)
                             (if (fx>= (gx#stx-length _tl2443224579_) '0)
                                 (let ((_g28429_
                                        (gx#syntax-split-splice
                                         _tl2443224579_
                                         '0)))
                                   (begin
                                     (let ((_g28430_ (values-count _g28429_)))
                                       (if (not (fx= _g28430_ 2))
                                           (error "Context expects 2 values"
                                                  _g28430_)))
                                     (let ((_target2444224612_
                                            (values-ref _g28429_ 0))
                                           (_tl2444424615_
                                            (values-ref _g28429_ 1)))
                                       (if (gx#stx-null? _tl2444424615_)
                                           (letrec ((_loop2444524618_
                                                     (lambda (_hd2444324622_
                                                              _body2444924625_)
                                                       (if (gx#stx-pair?
                                                            _hd2444324622_)
                                                           (let ((_e2444624628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2444324622_)))
                     (let ((_lp-hd2444724632_ (##car _e2444624628_))
                           (_lp-tl2444824635_ (##cdr _e2444624628_)))
                       (_loop2444524618_
                        _lp-tl2444824635_
                        (cons _lp-hd2444724632_ _body2444924625_))))
                   (let ((_body2445024638_ (reverse _body2444924625_)))
                     ((lambda (_L24642_ _L24644_ _L24645_ _L24646_ _L24647_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L24646_ (cons _L24645_ '()))
                                          '())
                                    (cons (cons _L24647_
                                                (cons _L24644_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2467224675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2467324678_)
                         (cons _g2467224675_ _g2467324678_))
                       '()
                       _L24642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2445024638_
                      _tl2443524589_
                      _hd2444024606_
                      _hd2443724596_
                      _hd2442824566_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2444524618_
                                              _target2444224612_
                                              '()))
                                           (_g2441924555_ _g2442124559_)))))
                                 (_g2441924555_ _g2442124559_))
                             (_g2441924555_ _g2442124559_))
                         (_g2441924555_ _g2442124559_))))
                 (_g2441924555_ _g2442124559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2441924555_
                                                  _g2442124559_))))
                                         (_g2441924555_ _g2442124559_))))
                                 (_g2441924555_ _g2442124559_))))
                         (_g2441924555_ _g2442124559_)))))
              (_g2441824681_ _$stx24415_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx24687_)
        (let ((_g2469824842_
               (lambda (_g2469924838_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2469924838_))))
          (let ((_g2469724937_
                 (lambda (_g2469924846_)
                   (if (gx#stx-pair? _g2469924846_)
                       (let ((_e2481924849_ (gx#syntax-e _g2469924846_)))
                         (let ((_hd2482024853_ (##car _e2481924849_))
                               (_tl2482124856_ (##cdr _e2481924849_)))
                           (if (gx#stx-pair? _tl2482124856_)
                               (let ((_e2482224859_
                                      (gx#syntax-e _tl2482124856_)))
                                 (let ((_hd2482324863_ (##car _e2482224859_))
                                       (_tl2482424866_ (##cdr _e2482224859_)))
                                   (if (gx#stx-pair? _tl2482424866_)
                                       (let ((_e2482524869_
                                              (gx#syntax-e _tl2482424866_)))
                                         (let ((_hd2482624873_
                                                (##car _e2482524869_))
                                               (_tl2482724876_
                                                (##cdr _e2482524869_)))
                                           (if (gx#stx-datum? _hd2482624873_)
                                               (if (equal? (gx#stx-e
                                                            _hd2482624873_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2482724876_)
                                                       (let ((_e2482824879_
                                                              (gx#syntax-e
                                                               _tl2482724876_)))
                                                         (let ((_hd2482924883_
                                                                (##car _e2482824879_))
                                                               (_tl2483024886_
                                                                (##cdr _e2482824879_)))
                                                           (if (gx#stx-pair?
                                                                _tl2483024886_)
                                                               (let ((_e2483124889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2483024886_)))
                         (let ((_hd2483224893_ (##car _e2483124889_))
                               (_tl2483324896_ (##cdr _e2483124889_)))
                           (if (gx#identifier? _hd2483224893_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g28431_|
                                    _hd2483224893_)
                                   (if (gx#stx-pair? _tl2483324896_)
                                       (let ((_e2483424899_
                                              (gx#syntax-e _tl2483324896_)))
                                         (let ((_hd2483524903_
                                                (##car _e2483424899_))
                                               (_tl2483624906_
                                                (##cdr _e2483424899_)))
                                           (if (gx#stx-null? _tl2483624906_)
                                               ((lambda (_L24909_
                                                         _L24911_
                                                         _L24912_
                                                         _L24913_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L24913_
                                              (cons _L24912_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L24909_
                                                    (cons (cons _L24911_
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
                                                _hd2483524903_
                                                _hd2482924883_
                                                _hd2482324863_
                                                _hd2482024853_)
                                               (_g2469824842_ _g2469924846_))))
                                       (_g2469824842_ _g2469924846_))
                                   (_g2469824842_ _g2469924846_))
                               (_g2469824842_ _g2469924846_))))
                       (_g2469824842_ _g2469924846_))))
               (_g2469824842_ _g2469924846_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2469824842_
                                                    _g2469924846_))
                                               (_g2469824842_ _g2469924846_))))
                                       (_g2469824842_ _g2469924846_))))
                               (_g2469824842_ _g2469924846_))))
                       (_g2469824842_ _g2469924846_)))))
            (let ((_g2469625005_
                   (lambda (_g2469924941_)
                     (if (gx#stx-pair? _g2469924941_)
                         (let ((_e2480324944_ (gx#syntax-e _g2469924941_)))
                           (let ((_hd2480424948_ (##car _e2480324944_))
                                 (_tl2480524951_ (##cdr _e2480324944_)))
                             (if (gx#stx-pair? _tl2480524951_)
                                 (let ((_e2480624954_
                                        (gx#syntax-e _tl2480524951_)))
                                   (let ((_hd2480724958_ (##car _e2480624954_))
                                         (_tl2480824961_
                                          (##cdr _e2480624954_)))
                                     (if (gx#stx-pair? _tl2480824961_)
                                         (let ((_e2480924964_
                                                (gx#syntax-e _tl2480824961_)))
                                           (let ((_hd2481024968_
                                                  (##car _e2480924964_))
                                                 (_tl2481124971_
                                                  (##cdr _e2480924964_)))
                                             (if (gx#stx-datum? _hd2481024968_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2481024968_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2481124971_)
                                                         (let ((_e2481224974_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2481124971_)))
                   (let ((_hd2481324978_ (##car _e2481224974_))
                         (_tl2481424981_ (##cdr _e2481224974_)))
                     (if (gx#stx-null? _tl2481424981_)
                         ((lambda (_L24984_ _L24986_ _L24987_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L24987_
                                    (cons _L24986_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L24984_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2481324978_
                          _hd2480724958_
                          _hd2480424948_)
                         (_g2469724937_ _g2469924941_))))
                 (_g2469724937_ _g2469924941_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2469724937_
                                                      _g2469924941_))
                                                 (_g2469724937_
                                                  _g2469924941_))))
                                         (_g2469724937_ _g2469924941_))))
                                 (_g2469724937_ _g2469924941_))))
                         (_g2469724937_ _g2469924941_)))))
              (let ((_g2469525073_
                     (lambda (_g2469925009_)
                       (if (gx#stx-pair? _g2469925009_)
                           (let ((_e2478825012_ (gx#syntax-e _g2469925009_)))
                             (let ((_hd2478925016_ (##car _e2478825012_))
                                   (_tl2479025019_ (##cdr _e2478825012_)))
                               (if (gx#stx-pair? _tl2479025019_)
                                   (let ((_e2479125022_
                                          (gx#syntax-e _tl2479025019_)))
                                     (let ((_hd2479225026_
                                            (##car _e2479125022_))
                                           (_tl2479325029_
                                            (##cdr _e2479125022_)))
                                       (if (gx#stx-pair? _tl2479325029_)
                                           (let ((_e2479425032_
                                                  (gx#syntax-e
                                                   _tl2479325029_)))
                                             (let ((_hd2479525036_
                                                    (##car _e2479425032_))
                                                   (_tl2479625039_
                                                    (##cdr _e2479425032_)))
                                               (if (gx#identifier?
                                                    _hd2479525036_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g28432_|
                                                        _hd2479525036_)
                                                       (if (gx#stx-pair?
                                                            _tl2479625039_)
                                                           (let ((_e2479725042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2479625039_)))
                     (let ((_hd2479825046_ (##car _e2479725042_))
                           (_tl2479925049_ (##cdr _e2479725042_)))
                       (if (gx#stx-null? _tl2479925049_)
                           ((lambda (_L25052_ _L25054_ _L25055_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25054_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25052_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2479825046_
                            _hd2479225026_
                            _hd2478925016_)
                           (_g2469625005_ _g2469925009_))))
                   (_g2469625005_ _g2469925009_))
               (_g2469625005_ _g2469925009_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2469625005_
                                                    _g2469925009_))))
                                           (_g2469625005_ _g2469925009_))))
                                   (_g2469625005_ _g2469925009_))))
                           (_g2469625005_ _g2469925009_)))))
                (let ((_g2469425115_
                       (lambda (_g2469925077_)
                         (if (gx#stx-pair? _g2469925077_)
                             (let ((_e2477925080_ (gx#syntax-e _g2469925077_)))
                               (let ((_hd2478025084_ (##car _e2477925080_))
                                     (_tl2478125087_ (##cdr _e2477925080_)))
                                 (if (gx#stx-pair? _tl2478125087_)
                                     (let ((_e2478225090_
                                            (gx#syntax-e _tl2478125087_)))
                                       (let ((_hd2478325094_
                                              (##car _e2478225090_))
                                             (_tl2478425097_
                                              (##cdr _e2478225090_)))
                                         (if (gx#stx-null? _tl2478425097_)
                                             ((lambda (_L25100_ _L25102_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25102_
                                (cons _L25100_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2478325094_
                                              _hd2478025084_)
                                             (_g2469525073_ _g2469925077_))))
                                     (_g2469525073_ _g2469925077_))))
                             (_g2469525073_ _g2469925077_)))))
                  (let ((_g2469325169_
                         (lambda (_g2469925119_)
                           (if (gx#stx-pair? _g2469925119_)
                               (let ((_e2476825122_
                                      (gx#syntax-e _g2469925119_)))
                                 (let ((_hd2476925126_ (##car _e2476825122_))
                                       (_tl2477025129_ (##cdr _e2476825122_)))
                                   (if (gx#stx-pair? _tl2477025129_)
                                       (let ((_e2477125132_
                                              (gx#syntax-e _tl2477025129_)))
                                         (let ((_hd2477225136_
                                                (##car _e2477125132_))
                                               (_tl2477325139_
                                                (##cdr _e2477125132_)))
                                           (if (gx#stx-pair? _tl2477325139_)
                                               (let ((_e2477425142_
                                                      (gx#syntax-e
                                                       _tl2477325139_)))
                                                 (let ((_hd2477525146_
                                                        (##car _e2477425142_))
                                                       (_tl2477625149_
                                                        (##cdr _e2477425142_)))
                                                   (if (gx#stx-null?
                                                        _tl2477625149_)
                                                       ((lambda (_L25152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25154_)
                  (cons _L25154_ (cons _L25152_ '())))
                _hd2477525146_
                _hd2477225136_)
               (_g2469425115_ _g2469925119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2469425115_ _g2469925119_))))
                                       (_g2469425115_ _g2469925119_))))
                               (_g2469425115_ _g2469925119_)))))
                    (let ((_g2469225249_
                           (lambda (_g2469925173_)
                             (if (gx#stx-pair? _g2469925173_)
                                 (let ((_e2475125176_
                                        (gx#syntax-e _g2469925173_)))
                                   (let ((_hd2475225180_ (##car _e2475125176_))
                                         (_tl2475325183_
                                          (##cdr _e2475125176_)))
                                     (if (gx#stx-pair? _tl2475325183_)
                                         (let ((_e2475425186_
                                                (gx#syntax-e _tl2475325183_)))
                                           (let ((_hd2475525190_
                                                  (##car _e2475425186_))
                                                 (_tl2475625193_
                                                  (##cdr _e2475425186_)))
                                             (if (gx#stx-pair? _hd2475525190_)
                                                 (let ((_e2475725196_
                                                        (gx#syntax-e
                                                         _hd2475525190_)))
                                                   (let ((_hd2475825200_
                                                          (##car _e2475725196_))
                                                         (_tl2475925203_
                                                          (##cdr _e2475725196_)))
                                                     (if (gx#identifier?
                                                          _hd2475825200_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g28433_|
                                                              _hd2475825200_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2475925203_)
                         (let ((_e2476025206_ (gx#syntax-e _tl2475925203_)))
                           (let ((_hd2476125210_ (##car _e2476025206_))
                                 (_tl2476225213_ (##cdr _e2476025206_)))
                             (if (gx#stx-null? _tl2476225213_)
                                 (if (gx#stx-pair? _tl2475625193_)
                                     (let ((_e2476325216_
                                            (gx#syntax-e _tl2475625193_)))
                                       (let ((_hd2476425220_
                                              (##car _e2476325216_))
                                             (_tl2476525223_
                                              (##cdr _e2476325216_)))
                                         (if (gx#stx-null? _tl2476525223_)
                                             ((lambda (_L25226_
                                                       _L25228_
                                                       _L25229_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25228_ (cons _L25226_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2476425220_
                                              _hd2476125210_
                                              _hd2475225180_)
                                             (_g2469325169_ _g2469925173_))))
                                     (_g2469325169_ _g2469925173_))
                                 (_g2469325169_ _g2469925173_))))
                         (_g2469325169_ _g2469925173_))
                     (_g2469325169_ _g2469925173_))
                 (_g2469325169_ _g2469925173_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2469325169_
                                                  _g2469925173_))))
                                         (_g2469325169_ _g2469925173_))))
                                 (_g2469325169_ _g2469925173_)))))
                      (let ((_g2469125359_
                             (lambda (_g2469925253_)
                               (if (gx#stx-pair? _g2469925253_)
                                   (let ((_e2472725256_
                                          (gx#syntax-e _g2469925253_)))
                                     (let ((_hd2472825260_
                                            (##car _e2472725256_))
                                           (_tl2472925263_
                                            (##cdr _e2472725256_)))
                                       (if (gx#stx-pair? _tl2472925263_)
                                           (let ((_e2473025266_
                                                  (gx#syntax-e
                                                   _tl2472925263_)))
                                             (let ((_hd2473125270_
                                                    (##car _e2473025266_))
                                                   (_tl2473225273_
                                                    (##cdr _e2473025266_)))
                                               (if (gx#stx-pair?
                                                    _hd2473125270_)
                                                   (let ((_e2473325276_
                                                          (gx#syntax-e
                                                           _hd2473125270_)))
                                                     (let ((_hd2473425280_
                                                            (##car _e2473325276_))
                                                           (_tl2473525283_
                                                            (##cdr _e2473325276_)))
                                                       (if (gx#identifier?
                                                            _hd2473425280_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g28434_|
                                                                _hd2473425280_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2473525283_)
                           (if (fx>= (gx#stx-length _tl2473525283_) '0)
                               (let ((_g28435_
                                      (gx#syntax-split-splice
                                       _tl2473525283_
                                       '0)))
                                 (begin
                                   (let ((_g28436_ (values-count _g28435_)))
                                     (if (not (fx= _g28436_ 2))
                                         (error "Context expects 2 values"
                                                _g28436_)))
                                   (let ((_target2473625286_
                                          (values-ref _g28435_ 0))
                                         (_tl2473825289_
                                          (values-ref _g28435_ 1)))
                                     (if (gx#stx-null? _tl2473825289_)
                                         (letrec ((_loop2473925292_
                                                   (lambda (_hd2473725296_
                                                            _pred2474325299_)
                                                     (if (gx#stx-pair?
                                                          _hd2473725296_)
                                                         (let ((_e2474025302_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2473725296_)))
                   (let ((_lp-hd2474125306_ (##car _e2474025302_))
                         (_lp-tl2474225309_ (##cdr _e2474025302_)))
                     (_loop2473925292_
                      _lp-tl2474225309_
                      (cons _lp-hd2474125306_ _pred2474325299_))))
                 (let ((_pred2474425312_ (reverse _pred2474325299_)))
                   (if (gx#stx-pair? _tl2473225273_)
                       (let ((_e2474525316_ (gx#syntax-e _tl2473225273_)))
                         (let ((_hd2474625320_ (##car _e2474525316_))
                               (_tl2474725323_ (##cdr _e2474525316_)))
                           (if (gx#stx-null? _tl2474725323_)
                               ((lambda (_L25326_ _L25328_ _L25329_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2535025353_
                                                          _g2535125356_)
                                                   (cons (cons _L25329_
                                                               (cons _g2535025353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25326_ '())))
                 _g2535125356_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L25328_))))
                                _hd2474625320_
                                _pred2474425312_
                                _hd2472825260_)
                               (_g2469225249_ _g2469925253_))))
                       (_g2469225249_ _g2469925253_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2473925292_
                                            _target2473625286_
                                            '()))
                                         (_g2469225249_ _g2469925253_)))))
                               (_g2469225249_ _g2469925253_))
                           (_g2469225249_ _g2469925253_))
                       (_g2469225249_ _g2469925253_))
                   (_g2469225249_ _g2469925253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2469225249_
                                                    _g2469925253_))))
                                           (_g2469225249_ _g2469925253_))))
                                   (_g2469225249_ _g2469925253_)))))
                        (let ((_g2469025469_
                               (lambda (_g2469925363_)
                                 (if (gx#stx-pair? _g2469925363_)
                                     (let ((_e2470325366_
                                            (gx#syntax-e _g2469925363_)))
                                       (let ((_hd2470425370_
                                              (##car _e2470325366_))
                                             (_tl2470525373_
                                              (##cdr _e2470325366_)))
                                         (if (gx#stx-pair? _tl2470525373_)
                                             (let ((_e2470625376_
                                                    (gx#syntax-e
                                                     _tl2470525373_)))
                                               (let ((_hd2470725380_
                                                      (##car _e2470625376_))
                                                     (_tl2470825383_
                                                      (##cdr _e2470625376_)))
                                                 (if (gx#stx-pair?
                                                      _hd2470725380_)
                                                     (let ((_e2470925386_
                                                            (gx#syntax-e
                                                             _hd2470725380_)))
                                                       (let ((_hd2471025390_
                                                              (##car _e2470925386_))
                                                             (_tl2471125393_
                                                              (##cdr _e2470925386_)))
                                                         (if (gx#identifier?
                                                              _hd2471025390_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g28437_|
                          _hd2471025390_)
                         (if (gx#stx-pair/null? _tl2471125393_)
                             (if (fx>= (gx#stx-length _tl2471125393_) '0)
                                 (let ((_g28438_
                                        (gx#syntax-split-splice
                                         _tl2471125393_
                                         '0)))
                                   (begin
                                     (let ((_g28439_ (values-count _g28438_)))
                                       (if (not (fx= _g28439_ 2))
                                           (error "Context expects 2 values"
                                                  _g28439_)))
                                     (let ((_target2471225396_
                                            (values-ref _g28438_ 0))
                                           (_tl2471425399_
                                            (values-ref _g28438_ 1)))
                                       (if (gx#stx-null? _tl2471425399_)
                                           (letrec ((_loop2471525402_
                                                     (lambda (_hd2471325406_
                                                              _pred2471925409_)
                                                       (if (gx#stx-pair?
                                                            _hd2471325406_)
                                                           (let ((_e2471625412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2471325406_)))
                     (let ((_lp-hd2471725416_ (##car _e2471625412_))
                           (_lp-tl2471825419_ (##cdr _e2471625412_)))
                       (_loop2471525402_
                        _lp-tl2471825419_
                        (cons _lp-hd2471725416_ _pred2471925409_))))
                   (let ((_pred2472025422_ (reverse _pred2471925409_)))
                     (if (gx#stx-pair? _tl2470825383_)
                         (let ((_e2472125426_ (gx#syntax-e _tl2470825383_)))
                           (let ((_hd2472225430_ (##car _e2472125426_))
                                 (_tl2472325433_ (##cdr _e2472125426_)))
                             (if (gx#stx-null? _tl2472325433_)
                                 ((lambda (_L25436_ _L25438_ _L25439_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2546025463_
                                                            _g2546125466_)
                                                     (cons (cons _L25439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2546025463_ (cons _L25436_ '())))
                   _g2546125466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L25438_))))
                                  _hd2472225430_
                                  _pred2472025422_
                                  _hd2470425370_)
                                 (_g2469125359_ _g2469925363_))))
                         (_g2469125359_ _g2469925363_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2471525402_
                                              _target2471225396_
                                              '()))
                                           (_g2469125359_ _g2469925363_)))))
                                 (_g2469125359_ _g2469925363_))
                             (_g2469125359_ _g2469925363_))
                         (_g2469125359_ _g2469925363_))
                     (_g2469125359_ _g2469925363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2469125359_
                                                      _g2469925363_))))
                                             (_g2469125359_ _g2469925363_))))
                                     (_g2469125359_ _g2469925363_)))))
                          (_g2469025469_ _$stx24687_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx25475_)
        (let ((_g2548025514_
               (lambda (_g2548125510_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2548125510_))))
          (let ((_g2547925571_
                 (lambda (_g2548125518_)
                   (if (gx#stx-pair? _g2548125518_)
                       (let ((_e2550025521_ (gx#syntax-e _g2548125518_)))
                         (let ((_hd2550125525_ (##car _e2550025521_))
                               (_tl2550225528_ (##cdr _e2550025521_)))
                           (if (gx#stx-pair? _tl2550225528_)
                               (let ((_e2550325531_
                                      (gx#syntax-e _tl2550225528_)))
                                 (let ((_hd2550425535_ (##car _e2550325531_))
                                       (_tl2550525538_ (##cdr _e2550325531_)))
                                   (if (gx#stx-pair? _tl2550525538_)
                                       (let ((_e2550625541_
                                              (gx#syntax-e _tl2550525538_)))
                                         (let ((_hd2550725545_
                                                (##car _e2550625541_))
                                               (_tl2550825548_
                                                (##cdr _e2550625541_)))
                                           (if (gx#stx-null? _tl2550825548_)
                                               ((lambda (_L25551_
                                                         _L25553_
                                                         _L25554_)
                                                  (cons _L25554_
                                                        (cons _L25553_
                                                              (cons _L25551_
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
                                                _hd2550725545_
                                                _hd2550425535_
                                                _hd2550125525_)
                                               (_g2548025514_ _g2548125518_))))
                                       (_g2548025514_ _g2548125518_))))
                               (_g2548025514_ _g2548125518_))))
                       (_g2548025514_ _g2548125518_)))))
            (let ((_g2547825639_
                   (lambda (_g2548125575_)
                     (if (gx#stx-pair? _g2548125575_)
                         (let ((_e2548525578_ (gx#syntax-e _g2548125575_)))
                           (let ((_hd2548625582_ (##car _e2548525578_))
                                 (_tl2548725585_ (##cdr _e2548525578_)))
                             (if (gx#stx-pair? _tl2548725585_)
                                 (let ((_e2548825588_
                                        (gx#syntax-e _tl2548725585_)))
                                   (let ((_hd2548925592_ (##car _e2548825588_))
                                         (_tl2549025595_
                                          (##cdr _e2548825588_)))
                                     (if (gx#stx-pair? _tl2549025595_)
                                         (let ((_e2549125598_
                                                (gx#syntax-e _tl2549025595_)))
                                           (let ((_hd2549225602_
                                                  (##car _e2549125598_))
                                                 (_tl2549325605_
                                                  (##cdr _e2549125598_)))
                                             (if (gx#stx-pair? _tl2549325605_)
                                                 (let ((_e2549425608_
                                                        (gx#syntax-e
                                                         _tl2549325605_)))
                                                   (let ((_hd2549525612_
                                                          (##car _e2549425608_))
                                                         (_tl2549625615_
                                                          (##cdr _e2549425608_)))
                                                     (if (gx#stx-null?
                                                          _tl2549625615_)
                                                         ((lambda (_L25618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L25620_
                           _L25621_)
                    (if (gx#identifier? _L25621_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L25621_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L25620_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L25618_ '()))
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
                        (_g2547925571_ _g2548125575_)))
                  _hd2549525612_
                  _hd2549225602_
                  _hd2548925592_)
                 (_g2547925571_ _g2548125575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2547925571_
                                                  _g2548125575_))))
                                         (_g2547925571_ _g2548125575_))))
                                 (_g2547925571_ _g2548125575_))))
                         (_g2547925571_ _g2548125575_)))))
              (_g2547825639_ _$stx25475_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx25643_)
        (let ((_g2564725662_
               (lambda (_g2564825658_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2564825658_))))
          (let ((_g2564625705_
                 (lambda (_g2564825666_)
                   (if (gx#stx-pair? _g2564825666_)
                       (let ((_e2565125669_ (gx#syntax-e _g2564825666_)))
                         (let ((_hd2565225673_ (##car _e2565125669_))
                               (_tl2565325676_ (##cdr _e2565125669_)))
                           (if (gx#stx-pair? _tl2565325676_)
                               (let ((_e2565425679_
                                      (gx#syntax-e _tl2565325676_)))
                                 (let ((_hd2565525683_ (##car _e2565425679_))
                                       (_tl2565625686_ (##cdr _e2565425679_)))
                                   ((lambda (_L25689_ _L25691_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L25691_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L25689_)
                                                        '()))))
                                    _tl2565625686_
                                    _hd2565525683_)))
                               (_g2564725662_ _g2564825666_))))
                       (_g2564725662_ _g2564825666_)))))
            (_g2564625705_ _$stx25643_)))))))
